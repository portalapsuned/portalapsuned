import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { ROL_GESTOR, ROL_ENTIDAD, ROL_PROFESOR, ROL_ESTUDIANTE } from './../../../../server/models/rol.model';
import { UsuarioService } from '../../services/usuario.service';
import { FileUploadService } from '../../services/file-upload.service';
import Swal from 'sweetalert2'
import { Router, ActivatedRoute } from '@angular/router';
import { Usuario } from '../../models/usuario.model';
import { take, tap, first } from 'rxjs/operators';
import { AuthService } from 'src/app/services/auth.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent {

  public editUserTitle: string = 'Edición de perfil de usuario';
  public successMessage: string = 'El perfil ha sido actualizado correctamente';
  public usuario: Usuario;

  public profileForm: FormGroup;
  public imagenSubir: File;
  public imagenPreview: any = null;

  public roles = this.getRoles();

  constructor( public fb: FormBuilder, public authService: AuthService, public usuarioService: UsuarioService, public fileUploadService: FileUploadService, public router: Router, public activatedRoute: ActivatedRoute) {
  }

  async ngOnInit() {

    await this.actualizarInformacionOrigenDeUsuario();

    this.profileForm = this.fb.group({
        rol: [this.usuario.rol, Validators.required],
        email: [this.usuario.email, [Validators.required, Validators.email] ],
        password: [''],
        password_2: [''],
        nombre: [this.usuario.nombre, Validators.required],
        apellidos: [this.usuario.apellidos, Validators.required],
        universidad: [this.usuario.universidad],
        titulacion: [this.usuario.titulacion],
        sector: [this.usuario.sector],
        terminos_aceptados: [this.usuario.terminos_aceptados, Validators.requiredTrue],
      }, {
        validators: [
          this.validacionPasswordsNoCoinciden(),
          this.validarUniversidad(),
          this.validarTitulacion(),
          this.validarSector(),
        ]
    });
  }

  // reload usuario
  async actualizarInformacionOrigenDeUsuario() {
    await this.authService.solicitarToken().pipe(first()).toPromise().then( () => { this.usuario = this.usuarioService.usuario; });
  }

  observableActualizar() {
    return this.usuarioService.actualizarPerfil( this.profileForm.value );
  }

  async updateProfile() {

    if(this.profileForm.invalid) {
      Swal.fire('Error', 'Los datos enviados contienen errores', 'error');
    }

    await this.observableActualizar().pipe(first()).toPromise().then( () => {
        this.actualizarInformacionOrigenDeUsuario();
        Swal.fire('Ok', this.successMessage, 'success');
    })
    .catch( (err) => {
        let msg = [];
        if(err.error.errors) {
          Object.values(err.error.errors).forEach(error_entry => {
              msg.push(error_entry['msg']);
          });
        } else {
          msg.push(err.error.msg);
        }

        Swal.fire('Error', msg.join('<br>'), 'error');
    });
  }

  cambiarImagen( file: File ) {

    if( !file ) { return; }

    this.imagenSubir = file;

    const reader = new FileReader();
    reader.readAsDataURL(file);

    reader.onloadend = () => {
      this.imagenPreview = reader.result;
    }
  }

  actualizarImagen() {
    this.fileUploadService
        .subirFichero(this.imagenSubir, 'avatar', 'usuarios', this.usuario.uid)
        .then( resp => {
          const {ok, msg, upload_id} = resp;
          if(ok) {
            this.actualizarInformacionOrigenDeUsuario();
            Swal.fire('Ok', 'Imagen de usuario actualizada correctamente', 'success');
          } else {
            Swal.fire('Error', msg, 'error');
          }

          this.imagenSubir = null;
          this.imagenPreview = null;
        });
  }

  borrarImagen() {

    if(this.usuario.origin_img.includes('https')) {
        Swal.fire('Error', 'No se puede borrar la imagen proporcionada por el SSO. Si desea, puede actualizarla con una imagen personalizada.', 'error');
        return;
    }

    if(this.usuario.origin_img == '') {
        Swal.fire('Error', 'No hay ninguna imagen definida para el usuario.', 'error');
        return;
    }

    this.fileUploadService
        .borrarFichero(this.usuario.origin_img)
        .then( resp => {
          const {ok, msg } = resp;
          if(ok) {
            this.actualizarInformacionOrigenDeUsuario();
            Swal.fire('Ok', 'Imagen de usuario borrada correctamente', 'success');
          } else {
            Swal.fire('Error', msg, 'error');
          }
        });
  }



  getRoles() {
    return [
      { id: ROL_ENTIDAD, name: 'Entidad' },
      { id: ROL_PROFESOR, name: 'Profesor' },
      { id: ROL_ESTUDIANTE, name: 'Estudiante' },
    ];
  }


  passwordsNoCoinciden(): Boolean {
    return this.profileForm && (this.profileForm.get('password').value !== this.profileForm.get('password_2').value);
  }

  validacionPasswordsNoCoinciden() {
    return ( formGroup: FormGroup ) => {
      if(this.passwordsNoCoinciden()) {
        formGroup.get('password').setErrors({ required: true});
      } else {
        formGroup.get('password').setErrors(null);
      }
    }
  }


  campoNoValido(campo): String {

    // para mostrar diferentes nombres en el mensaje de error
    let campo_real = campo === 'facultad' ? 'titulacion' : campo;

    let invalido = this.profileForm.get(campo_real) && this.profileForm.get(campo_real).invalid;

    if(invalido) {
      switch (campo) {
        case 'rol':
          return 'Debe elegir un tipo de perfil con el que será registrado en la aplicación: Estudiante, Profesor o Entidad';
          break;

        case 'email':
          return 'El campo correo electrónico es obligatorio y debe ser un correo válido';
          break;

        case 'titulacion':
          return `El campo titulación es obligatorio`;
          break;

        case 'facultad':
          return `El campo facultad/escuela es obligatorio`;
          break;

        case 'terminos_aceptados':
          return 'Es obligatorio aceptar las condiciones de uso';
          break;

        default:
          return `El campo ${ campo } es obligatorio`;
          break;
      }
    }

    return '';
  }

  validarCampoSegunPerfil(campo, roles) {
    return ( formGroup: FormGroup ) => {
      const control_rol = this.usuario.rol;
      const campo_bajo_validacion = formGroup.get(campo);

      if(campo_bajo_validacion.value === '' && roles.includes(control_rol)) {
        campo_bajo_validacion.setErrors({ required: true});
      } else {
        campo_bajo_validacion.setErrors(null);
      }
    }
  }

  validarUniversidad() {
    return this.validarCampoSegunPerfil('universidad', [ROL_ESTUDIANTE, ROL_PROFESOR]);
  }

  validarTitulacion() {
    return this.validarCampoSegunPerfil('titulacion', [ROL_ESTUDIANTE, ROL_PROFESOR]);
  }

  validarSector() {
    return this.validarCampoSegunPerfil('sector', [ROL_ENTIDAD]);
  }

}
