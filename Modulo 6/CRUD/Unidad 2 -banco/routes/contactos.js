var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var contactoModel = require('../models/contactoModel');

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('contactos');
});

router.post('/', async function(req, res, next) {

    var nombre = req.body.nombre;
    var email = req.body.email;
    var telefono = req.body.telefono;
    var pregunta = req.body.pregunta;

    var obj = {
        to: 'mariusmiglia@gmail.com',
        subject: 'Contacto desde la Web del Banco',
        html: nombre + " se contactó a través de la página y quiere más info a este correo: " + email + ". <br> Además hizo el siguiente comentario: " + pregunta + "<br> Su telefono es " + telefono
    }

    var transport = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth: {
            user: process.env.SMTP_USER,
            pass: process.env.SMTP_PASS
        }
    })

    var info = await transport.sendMail(obj);
    var contacto = await contactoModel.insertContacto(req.body);

    res.render('contactos', {
        message: 'Mensaje enviado correctamente',
    });

})


module.exports = router;