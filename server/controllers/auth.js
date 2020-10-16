const { response } = require('express');
const bcrypt = require('bcryptjs');
const Usuario = require('./../models/usuario.model');
const { generarJWT, verificarJWT } = require('../helpers/jwt');
const { googleVerify } = require('../helpers/google-verify');
const { ROL_ESTUDIANTE } = require('../models/rol.model');

const login = async(req, res) => {

    const { email, password } = req.body;

    try {
        // user
        const usuario = await Usuario.findOne({ email });
        if(!usuario) {
            return res.status(404).json({
                ok: false,
                msg: 'No existe ningún usuario con dichas credenciales.',
            });
        }

        // pass
        const passwordOk = bcrypt.compareSync( password, usuario.password );
        if(!passwordOk) {
            return res.status(404).json({
                ok: false,
                msg: 'No existe ningún usuario con dichas credenciales.',
            });
        }

        // comprobar origen de registro
        if(usuario.origin_login !== 'Portal ApS') {
            res.status(401).json({
                ok: false,
                msg: 'Este usuario está registrado utilizando el acceso "' + usuario.origin_login + '". Por favor, utilice dicho sistema de entrada.',
            });
        }

        // generar token
        const token = await generarJWT(usuario);

        return res.status(200).json({
            ok: true,
            token,
            usuario,
        });
    } catch (error) {
        console.error(error);

        res.status(500).json({
            ok: false,
            msg: 'Error inesperado',
        });
    }


}

const loginUNED = async(req, res) => {

    const { email, password } = req.body;

    try {
        // user
        const usuario = await Usuario.findOne({ email });
        if(!usuario) {
            return res.status(404).json({
                ok: false,
                msg: 'No existe ningún usuario con dichas credenciales.',
            });
        }

        // pass
        const passwordOk = bcrypt.compareSync( password, usuario.password );
        if(!passwordOk) {
            return res.status(404).json({
                ok: false,
                msg: 'No existe ningún usuario con dichas credenciales.',
            });
        }

        // comprobar origen de registro
        if(usuario.origin_login !== 'UNED') {
            res.status(401).json({
                ok: false,
                msg: 'Este usuario está registrado utilizando el acceso "' + usuario.origin_login + '". Por favor, utilice dicho sistema de entrada.',
            });
        }

        // generar token
        const token = await generarJWT(usuario);

        return res.status(200).json({
            ok: true,
            token,
            usuario,
        });
    } catch (error) {
        console.error(error);

        res.status(500).json({
            ok: false,
            msg: 'Error inesperado',
        });
    }


}

const loginGoogle = async(req, res) => {

    const tokenGoogle = req.body.token;

    try {

        const { given_name, family_name, email, picture } = await googleVerify(tokenGoogle);

        // comprobar si existe user, y si no lo creamos
        const usuarioExistente = await Usuario.findOne({ email });

        let usuario = usuarioExistente;

        if(!usuarioExistente) {
            usuario = new Usuario({
                rol: ROL_ESTUDIANTE,
                email,
                nombre: given_name,
                apellidos: family_name,
                password: '<disabled>',
                origin_login: 'google',
                origin_img: picture,
                // universidad: '',
                titulacion: '',
                sector: '',
                terminos_aceptados: true
            });
        }

        // comprobar origen de registro
        if(usuario.origin_login !== 'google') {
            res.status(401).json({
                ok: false,
                msg: 'Este usuario ya está registrado en el sistema con un método de acceso distinto al SSO de Google.',
            });
        }

        // actualizo datos que pueden haber sido modificados el el servicio de google original
        usuario.nombre = given_name;
        usuario.apellidos = family_name;

        // la imagen solo si el usuario no la ha cambiado ya él mismo
        if(!usuario.origin_img || usuario.origin_img.includes('https')) {
            usuario.origin_img = picture;
        }

        await usuario.save();

        // generar token
        const token = await generarJWT(usuario);

        return res.status(200).json({
            ok: true,
            token,
            usuario,
        });

    } catch (error) {
        console.log(error);
        res.status(401).json({
            ok: false,
            msg: 'El token no es correcto',
        });
    }


}

const renewToken = async(req, res = response) => {

    const tokenPrevio =  req.headers['x-token'];

    const verificacionToken = verificarJWT(tokenPrevio);
    const { ok, usuario } = verificacionToken;

    if(!ok) {
        res.status(401).json({
            ok: false,
            msg: 'El token no es correcto',
        });
    }

    const usuario_bd = await Usuario.findById(usuario.uid);
    const token = await generarJWT(usuario_bd);

    return res.status(200).json({
        ok: true,
        token,
        usuario: usuario_bd,
    });
}

module.exports = {
    login,
    loginUNED,
    loginGoogle,
    renewToken,
}