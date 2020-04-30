-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.3.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para peluqueria
CREATE DATABASE IF NOT EXISTS `peluqueria3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `peluqueria3`;


CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `username` varchar(50) NOT NULL ,
  `password` longtext NOT NULL,
  `identificador` longtext DEFAULT 'null',
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `comision` int(11) DEFAULT NULL,
  `comision_unica` bit(1) NOT NULL ,
  `activo` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id_usuario`),
  KEY `FK__rol` (`id_rol`),
  CONSTRAINT `FK__rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla peluqueria.usuario: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `id_rol`, `username`, `password`, `identificador`, `nombre`, `apellido`, `telefono`, `email`, `cedula`, `comision`, `comision_unica`, `activo`) VALUES
	(500000, 3, 'null', 'null', 'null', 'N/A', 'N/A', NULL, NULL, NULL, NULL, b'0', b'1'),
	(531199, 3, 'null', '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b', 'null', 'Ingeniara', 'lp.pk,lopl', 'null', 'null', 'null', NULL, b'0', b'1'),
	(591407, 2, 'null', 'null', 'null', 'Marlady', 'Atehortua Santamaria', '3144601370', NULL, '52929219', 55, b'0', b'1'),
	(597686, 2, '', 'e67e72111b363d80c8124d28193926000980e1211c7986cacbd26aacc5528d48', 'null', 'Peluqueria ', 'Productos', '', '', '1', 100, b'1', b'1'),
	(654758, 2, 'null', 'null', 'null', 'Olga Patricia', 'Forero Rivera', '3102435412', 'patriciaforero542@gmail.com', '20450542', 60, b'1', b'1'),
	(660350, 2, '', '', NULL, 'Veronica', 'Rojas', 'null', 'null', 'null', 55, b'0', b'1'),
	(690528, 2, '', '', NULL, 'Alejandra', 'Arias', '3138668348', 'ariasalenjandra132@gmail.com', '116043507', 55, b'0', b'1'),
	(704392, 2, 'null', 'null', 'null', 'Rochy', 'Espitia', 'null', '@', 'null', 55, b'0', b'1'),
	(714425, 2, 'null', 'null', 'null', 'Claudia', 'Quintero Quintero', '3103112883', 'clau.0337@yohoo.es', '37556926', 60, b'1', b'1'),
	(738863, 2, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'null', 'Yury', 'Sanchez', '3138953866', '', '1018454247', 55, b'0', b'1'),
	(779215, 2, 'null', 'null', 'null', 'Marilyn', 'Mancipe', '', NULL, NULL, 55, b'0', b'1'),
	(822067, 2, 'null', 'null', 'null', 'Raul', 'Cordoba Salgado', '3125414325', 'raulcordobas@hotmail.com', '19337171', 60, b'1', b'1'),
	(824505, 2, 'null', 'null', 'null', 'Wendy', 'Murillo', NULL, NULL, NULL, 55, b'0', b'1'),
	(872667, 2, '', '', NULL, 'Angelica', 'Gonzalez Sarmiento', '3202890529', 'raulcordobas@hotmail.com', '51337171', 60, b'1', b'1'),
	(892869, 3, 'null', 'null', 'null', 'Angelica', 'Cardenas', NULL, NULL, NULL, NULL, b'0', b'1'),
	(899500, 2, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'null', 'Carolina', 'NN', '1', '', '1', 55, b'0', b'1'),
	(921268, 1, 'Admin', '968a777d670d180ef57439dd25f3cf7ed54b58525ccf2a544fbdd1cfacc615cf', '0A-00-27-00-00-09', 'Manuel Fernando', 'Cordoba Gonzalez', '3137485133', 'manuelogo19@gmail.com', '1018508863', NULL, b'0', b'1'),
	(945340, 2, 'null', 'null', 'null', 'Diana', 'Benites', NULL, NULL, NULL, 55, b'0', b'1'),
	(955390, 3, 'null', 'null', 'null', 'Susana', 'Sarmiento', 'null', 'null', '1212', NULL, b'0', b'1'),
	(970126, 2, 'null', 'null', 'null', 'Janneth', 'Duarte Ramirez', '3223008612', 'duarteramirezjannette02@gmail.com', '51814949', 55, b'0', b'0'),
	(971017, 2, '', '', NULL, 'Liliana', 'Benavides', 'null', 'null', 'null', 0, b'0', b'0'),
	(973351, 2, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'null', 'Ana', 'Shampu', '', '', '', 100, b'1', b'1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
