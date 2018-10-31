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


-- Volcando estructura de base de datos para medi_bot
CREATE DATABASE IF NOT EXISTS `medi_bot` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `medi_bot`;

-- Volcando estructura para tabla medi_bot.distrito
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE IF NOT EXISTS `distrito` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla medi_bot.distrito: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
REPLACE INTO `distrito` (`id`, `nombre`) VALUES
	(1, 'LIMA'),
	(2, 'ANCON'),
	(3, 'ATE'),
	(4, 'BARRANCO'),
	(5, 'BREÑA'),
	(6, 'CARABAYLLO'),
	(7, 'CHACLACAYO'),
	(8, 'CHORRILLOS'),
	(9, 'CIENEGUILLA'),
	(10, 'COMAS'),
	(11, 'EL AGUSTINO'),
	(12, 'INDEPENDENCIA'),
	(13, 'JESUS MARIA'),
	(14, 'LA MOLINA'),
	(15, 'LA VICTORIA'),
	(16, 'LINCE'),
	(17, 'LOS OLIVOS'),
	(18, 'LURIGANCHO'),
	(19, 'LURIN'),
	(20, 'MAGDALENA DEL MAR'),
	(21, 'MAGDALENA VIEJA'),
	(22, 'MIRAFLORES'),
	(23, 'PACHACAMAC'),
	(24, 'PUCUSANA'),
	(25, 'PUENTE PIEDRA'),
	(26, 'PUNTA HERMOSA'),
	(27, 'PUNTA NEGRA'),
	(28, 'RIMAC'),
	(29, 'SAN BARTOLO'),
	(30, 'SAN BORJA'),
	(31, 'SAN ISIDRO'),
	(32, 'SAN JUAN DE LURIGANCHO'),
	(33, 'SAN JUAN DE MIRAFLORES'),
	(34, 'SAN LUIS'),
	(35, 'SAN MARTIN DE PORRES'),
	(36, 'SAN MIGUEL'),
	(37, 'SANTA ANITA'),
	(38, 'SANTA MARIA DEL MAR'),
	(39, 'SANTA ROSA'),
	(40, 'SANTIAGO DE SURCO'),
	(41, 'SURQUILLO'),
	(42, 'VILLA EL SALVADOR'),
	(43, 'VILLA MARIA DEL TRIUNFO');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;

-- Volcando estructura para tabla medi_bot.enfermedades
DROP TABLE IF EXISTS `enfermedades`;
CREATE TABLE IF NOT EXISTS `enfermedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla medi_bot.enfermedades: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
REPLACE INTO `enfermedades` (`id`, `nombre`, `descripcion`) VALUES
	(1, 'Eczema', 'Inflamacion a la piel'),
	(2, 'Acne', 'Irritacion en el rostro'),
	(3, 'Psoriasis', 'Hongos en la piel'),
	(4, 'Alopecia', 'Hongos en el cuero cabelludo'),
	(5, 'Urticaria', 'Afeccion de la piel');
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;

-- Volcando estructura para tabla medi_bot.hospital
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `c_distrito` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hospital_distrito` (`c_distrito`),
  CONSTRAINT `FK_hospital_distrito` FOREIGN KEY (`c_distrito`) REFERENCES `distrito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla medi_bot.hospital: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
REPLACE INTO `hospital` (`id`, `nombre`, `direccion`, `c_distrito`) VALUES
	(1, 'LIMA', NULL, NULL),
	(2, 'ANCON', NULL, NULL),
	(3, 'ATE', NULL, NULL),
	(4, 'BARRANCO', NULL, NULL),
	(5, 'BREÑA', NULL, NULL),
	(6, 'CARABAYLLO', NULL, NULL),
	(7, 'CHACLACAYO', NULL, NULL),
	(8, 'CHORRILLOS', NULL, NULL),
	(9, 'CIENEGUILLA', NULL, NULL),
	(10, 'COMAS', NULL, NULL),
	(11, 'EL AGUSTINO', NULL, NULL),
	(12, 'INDEPENDENCIA', NULL, NULL),
	(13, 'JESUS MARIA', NULL, NULL),
	(14, 'LA MOLINA', NULL, NULL),
	(15, 'LA VICTORIA', NULL, NULL),
	(16, 'LINCE', NULL, NULL),
	(17, 'LOS OLIVOS', NULL, NULL),
	(18, 'LURIGANCHO', NULL, NULL),
	(19, 'LURIN', NULL, NULL),
	(20, 'MAGDALENA DEL MAR', NULL, NULL),
	(21, 'MAGDALENA VIEJA', NULL, NULL),
	(22, 'MIRAFLORES', NULL, NULL),
	(23, 'PACHACAMAC', NULL, NULL),
	(24, 'PUCUSANA', NULL, NULL),
	(25, 'PUENTE PIEDRA', NULL, NULL),
	(26, 'PUNTA HERMOSA', NULL, NULL),
	(27, 'PUNTA NEGRA', NULL, NULL),
	(28, 'RIMAC', NULL, NULL),
	(29, 'SAN BARTOLO', NULL, NULL),
	(30, 'SAN BORJA', NULL, NULL),
	(31, 'SAN ISIDRO', NULL, NULL),
	(32, 'SAN JUAN DE LURIGANCHO', NULL, NULL),
	(33, 'SAN JUAN DE MIRAFLORES', NULL, NULL),
	(34, 'SAN LUIS', NULL, NULL),
	(35, 'SAN MARTIN DE PORRES', NULL, NULL),
	(36, 'SAN MIGUEL', NULL, NULL),
	(37, 'SANTA ANITA', NULL, NULL),
	(38, 'SANTA MARIA DEL MAR', NULL, NULL),
	(39, 'SANTA ROSA', NULL, NULL),
	(40, 'SANTIAGO DE SURCO', NULL, NULL),
	(41, 'SURQUILLO', NULL, NULL),
	(42, 'VILLA EL SALVADOR', NULL, NULL),
	(43, 'VILLA MARIA DEL TRIUNFO', NULL, NULL);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;

-- Volcando estructura para tabla medi_bot.h_medico
DROP TABLE IF EXISTS `h_medico`;
CREATE TABLE IF NOT EXISTS `h_medico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_usuario` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `c_enfermedad` int(11) DEFAULT NULL,
  `c_hospital` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h_medico_usuarios` (`c_usuario`),
  KEY `FK_h_medico_enfermedades` (`c_enfermedad`),
  KEY `FK_h_medico_hospital` (`c_hospital`),
  CONSTRAINT `FK_h_medico_enfermedades` FOREIGN KEY (`c_enfermedad`) REFERENCES `enfermedades` (`id`),
  CONSTRAINT `FK_h_medico_hospital` FOREIGN KEY (`c_hospital`) REFERENCES `hospital` (`id`),
  CONSTRAINT `FK_h_medico_usuarios` FOREIGN KEY (`c_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla medi_bot.h_medico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `h_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `h_medico` ENABLE KEYS */;

-- Volcando estructura para tabla medi_bot.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '0',
  `correo` varchar(200) NOT NULL DEFAULT '0',
  `telefono` int(9) NOT NULL DEFAULT '0',
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla medi_bot.usuarios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`Id`, `nombre`, `correo`, `telefono`, `password`) VALUES
	(1, 'Baldeon', 'junior@gmail.com', 949087275, NULL),
	(2, 'Aguilar', 'aguilar@gmail.com', 865677323, NULL),
	(5, 'John Fabian', 'john.fabian@tecsup.edu.pe', 932323244, NULL),
	(8, 'Cafu', 'junior968711@gmail.com', 949087275, NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
