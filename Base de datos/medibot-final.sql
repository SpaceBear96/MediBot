-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.31-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.5.0.5284
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para medibot
CREATE DATABASE IF NOT EXISTS `medibot` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `medibot`;

-- Volcando estructura para tabla medibot.datos
CREATE TABLE IF NOT EXISTS `datos` (
  `c_usuario` int(6) DEFAULT NULL,
  `edad` int(2) DEFAULT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  KEY `FK_datos_usuario` (`c_usuario`),
  CONSTRAINT `FK_datos_usuario` FOREIGN KEY (`c_usuario`) REFERENCES `usuario` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla medibot.enfermedades
CREATE TABLE IF NOT EXISTS `enfermedades` (
  `codigo` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla medibot.hospital
CREATE TABLE IF NOT EXISTS `hospital` (
  `codigo` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla medibot.h_medico
CREATE TABLE IF NOT EXISTS `h_medico` (
  `codigo` int(6) NOT NULL AUTO_INCREMENT,
  `c_usuario` int(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `c_enferm` int(6) DEFAULT NULL,
  `c_hospital` int(6) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tratamiento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_h_medico_usuario` (`c_usuario`),
  KEY `FK_h_medico_enfermedades` (`c_enferm`),
  KEY `FK_h_medico_hospital` (`c_hospital`),
  CONSTRAINT `FK_h_medico_enfermedades` FOREIGN KEY (`c_enferm`) REFERENCES `enfermedades` (`codigo`),
  CONSTRAINT `FK_h_medico_hospital` FOREIGN KEY (`c_hospital`) REFERENCES `hospital` (`codigo`),
  CONSTRAINT `FK_h_medico_usuario` FOREIGN KEY (`c_usuario`) REFERENCES `usuario` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla medibot.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `codigo` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
