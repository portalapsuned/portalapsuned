import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { AuthService } from '../services/auth.service';
import { UsuarioService } from '../services/usuario.service';

@Injectable({
  providedIn: 'root'
})
export class GestorGuard implements CanActivate {

  constructor( private authService: AuthService, private usuarioService: UsuarioService, private router: Router ) {}

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): boolean {

      if( !this.usuarioService.usuario ) {
        return false;
      }

      if( !this.usuarioService.usuario.esGestor ) {
        return false;
      }

      return true;
  }

}
