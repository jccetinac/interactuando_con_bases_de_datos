-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-10-2018 a las 23:50:36
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mipropiaagenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `fec_inicio` date NOT NULL,
  `hora_inicio` varchar(11) DEFAULT NULL,
  `fec_fin` date DEFAULT NULL,
  `hora_fin` varchar(20) DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  `duracion` varchar(5) NOT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `fk_usuario` (`fk_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `fec_inicio`, `hora_inicio`, `fec_fin`, `hora_fin`, `fk_usuario`, `duracion`) VALUES
(66, 'eventocamilo', '2018-07-04', '07:00', '2018-07-05', '09:30', 22, 'false'),
(67, 'eventocamilo3', '2018-07-11', '07:00', '2018-07-18', '09:30', 22, 'false'),
(68, 'eventocami2', '2018-07-03', '09:30', '2018-07-05', '07:00', 23, 'false'),
(69, 'eventocami342', '2018-07-10', '09:30', '2018-07-11', '07:00', 23, 'false'),
(70, 'cam3', '2018-07-01', '07:00', '2018-07-02', '11:00', 24, 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `fec_nacimiento` varchar(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `usuario`, `clave`, `fec_nacimiento`) VALUES
(22, 'camilo1', 'camilo1@mail.com', '$2y$10$dr8iXbc97SfwTjtXFUEymOmp0vYrjGgxpTlbrTIyrJD0/GLM3Y5sK', '1999-12-31'),
(23, 'camilo2', 'camilo2@mail.com', '$2y$10$Q3C.rGY3zMR/4japVimaL.jCmMlNjp0yDQXYu/ZJeifnJ8Ptzls1K', '1999-12-31'),
(24, 'camilo3', 'camilo3@mail.com', '$2y$10$AupwfFqg39WasINkjgxelejXTNnzADt7Q5rgsNv1jGtz7NE4Da.WK', '1999-12-31');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
