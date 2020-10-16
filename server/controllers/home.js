const Proyecto = require("../models/proyecto.model");
const Partenariado = require("../models/partenariado.model");
const Iniciativa = require("../models/iniciativa.model");

const getDatosHome = async(req, res) => {
    try {
        const [ count_proyectos, count_partenariados, count_iniciativas] = await Promise.all([
            Proyecto.countDocuments(),
            Partenariado.countDocuments(),
            Iniciativa.countDocuments(),
        ]);

        return res.status(200).json({
            ok: true,
            count_proyectos,
            count_partenariados,
            count_iniciativas,
        });

    } catch (error) {
        console.error(error);

        return res.status(500).json({
            ok: false,
            msg: 'Error inesperado',
        });
    }
}

module.exports = {
    getDatosHome,
}