var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

require('dotenv').config();

var indexRouter = require("./routes/index");
//var usersRouter = require("./routes/users");
var nosotrosRouter = require("./routes/nosotros");
var serviciosRouter = require("./routes/servicios");
var centerRouter = require("./routes/center");
var newsRouter = require("./routes/news");
var contactosRouter = require("./routes/contactos");

var app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "hbs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
//app.use("/users", usersRouter);
app.use('/nosotros', nosotrosRouter);
app.use('/servicios', serviciosRouter);
app.use('/center', centerRouter);
app.use('/news', newsRouter);
app.use('/contactos', contactosRouter);

app.get("/prueba", function(req, res) {
    res.send("Hola soy la página de prueba");
});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
    next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get("env") === "development" ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render("error");
});

module.exports = app;