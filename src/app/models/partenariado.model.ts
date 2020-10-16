import { environment } from '../../environments/environment';
import { Usuario } from './usuario.model';
import * as moment from 'moment';
import { Proyecto } from './proyecto.model';
import { Upload } from './upload.model';

const base_url = environment.base_url;

export class Partenariado {

    constructor(
        public _id: string,
        public estado: string,
        public titulo: string,
        public descripcion: string,
        public rama: string,
        public ciudad: string,
        public iniciativa: string,
        public proyecto: Proyecto,
        public profesores: Usuario[],
        public entidades: Usuario[],
        public mensajes: Object,
        public archivos: Upload[],
        public proponedor: Usuario,
        public creador: Usuario,
        public createdAt: string,
    ) {}

    get parsedCreatedAt() {
        return moment(this.createdAt).format('DD-MM-YYYY');
    }


    get displayCreadorRol() {

        if(!this.creador) {
            return '';
        }

        return this.displayUsuarioRol(this.creador);
    }

    get displayProponedorTableInfo() {

        if(!this.proponedor) {
            return '';
        }

        let info = [];
        if(this.proponedor.nombre) { info.push(this.proponedor.nombre); }
        if(this.proponedor.apellidos) { info.push(this.proponedor.apellidos); }

        return info.join(' ');
    }

    get displayProponedorRol() {

        if(!this.proponedor) {
            return '';
        }

        return this.displayUsuarioRol(this.proponedor);
    }


    displayUsuarioRol(user: Usuario) {

        if(!user) {
            return '';
        }

        switch (user.rol) {
            case 'ROL_ESTUDIANTE':
                return 'Estudiante';
                break;

            case 'ROL_PROFESOR':
                return 'Profesor';
                break;

            case 'ROL_ENTIDAD':
                return 'Entidad';
                break;

            case 'ROL_GESTOR':
                return 'Gestor';
                break;

            default:
                console.log('Patenariado - Rol no definido', user);
                throw "Rol no definido";
                break;
        }
    }
}
