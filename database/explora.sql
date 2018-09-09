-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-09-2018 a las 22:40:13
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
-- Base de datos: `explora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audioguia`
--

DROP TABLE IF EXISTS `audioguia`;
CREATE TABLE IF NOT EXISTS `audioguia` (
  `idGuia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `nombreSitio` varchar(100) NOT NULL,
  `longitud` float(10,6) NOT NULL,
  `latitud` float(10,6) NOT NULL,
  `fecha` date NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idGuia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audioguia_imagen`
--

DROP TABLE IF EXISTS `audioguia_imagen`;
CREATE TABLE IF NOT EXISTS `audioguia_imagen` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `idAudioguia` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`idImagen`),
  KEY `idAudioguia` (`idAudioguia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

DROP TABLE IF EXISTS `resena`;
CREATE TABLE IF NOT EXISTS `resena` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(400) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idAudioguia` int(11) NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idAudioguia` (`idAudioguia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(20) NOT NULL,
  `apellidoMaterno` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `imagenPerfil` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `idUsuario` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  KEY `idUsuario` (`idUsuario`),
  KEY `idRol` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
