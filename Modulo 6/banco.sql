-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-10-2021 a las 20:21:04
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(2, 'Poderoso exchange será el sponsor principal de uno de los equipos más importantes del fútbol italiano', 'La asociación entre Binance y la Lazio como patrocinador principal de la camiseta tiene una duración de dos años', 'Binance, uno de los más grandes exchanges del mundo, informó que han firmado un acuerdo de patrocinio con el popular club de fútbol S.S. Lazio, de Italia. De esta manera, el exchange se convierte en el principal sponsor de la camiseta del equipo de la capital italiana.\r\nSegún informaron las partes, la asociación entre Binance y la Lazio como patrocinador principal de la camiseta tiene una duración de dos años con opción a un tercero, por un valor total, en el periodo de tres años, de más de 30 millones de euros. La marca Binance debutará en la camiseta de la Lazio y en todas las actividades de comunicación a partir del próximo partido de la Lazio, que será frente a otro equipo grande del fútbol italiano, el Inter de Milán.\r\n\r\n\r\nClaudio Lotito, presidente de la Societá Sportiva Lazio, expresó que el acuerdo con Binance permitirá al club ampliar su presencia digital y conectar con los fans y seguidores de todo el mundo como nunca antes. \r\n\r\n\r\nJunto con el acuerdo, Binance reveló el lanzamiento de su plataforma de tokens de fans, siendo la Lazio su socio oficial de lanzamiento y el primer equipo deportivo en lanzar un token en la plataforma. El token de la Lazio (LAZIO), una moneda de utilidad que ofrece a los aficionados una forma de relacionarse con su equipo de fútbol favorito, se emitirá a través de Binance Launchpad.\r\n\r\n\r\nLa iniciativa ayudará a llevar la marca del club al campo global y a crear una experiencia de compromiso más emocionante para los seguidores de la Lazio a través de varias recompensas únicas y basadas en el compromiso, la interactividad, la gamificación y muchas más funcionalidades y experiencias.\r\n\r\n'),
(6, 'Hola ', 'Prueba', 'Prueba'),
(4, 'Poderoso exchange será el sponsor principal de uno de los equipos más importantes del fútbol italiano', 'La asociación entre Binance y la Lazio como patrocinador principal de la camiseta tiene una duración de dos años', 'Binance, uno de los más grandes exchanges del mundo, informó que han firmado un acuerdo de patrocinio con el popular club de fútbol S.S. Lazio, de Italia. De esta manera, el exchange se convierte en el principal sponsor de la camiseta del equipo de la capital italiana.\r\nSegún informaron las partes, la asociación entre Binance y la Lazio como patrocinador principal de la camiseta tiene una duración de dos años con opción a un tercero, por un valor total, en el periodo de tres años, de más de 30 millones de euros. La marca Binance debutará en la camiseta de la Lazio y en todas las actividades de comunicación a partir del próximo partido de la Lazio, que será frente a otro equipo grande del fútbol italiano, el Inter de Milán.\r\n\r\n\r\nClaudio Lotito, presidente de la Societá Sportiva Lazio, expresó que el acuerdo con Binance permitirá al club ampliar su presencia digital y conectar con los fans y seguidores de todo el mundo como nunca antes. \r\n\r\n\r\nJunto con el acuerdo, Binance reveló el lanzamiento de su plataforma de tokens de fans, siendo la Lazio su socio oficial de lanzamiento y el primer equipo deportivo en lanzar un token en la plataforma. El token de la Lazio (LAZIO), una moneda de utilidad que ofrece a los aficionados una forma de relacionarse con su equipo de fútbol favorito, se emitirá a través de Binance Launchpad.\r\n\r\n\r\nLa iniciativa ayudará a llevar la marca del club al campo global y a crear una experiencia de compromiso más emocionante para los seguidores de la Lazio a través de varias recompensas únicas y basadas en el compromiso, la interactividad, la gamificación y muchas más funcionalidades y experiencias.\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'mario', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
