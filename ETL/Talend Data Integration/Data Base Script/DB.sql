-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for casos_covid_19
CREATE DATABASE IF NOT EXISTS `casos_covid_19` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `casos_covid_19`;

-- Dumping structure for table casos_covid_19.registro_covid
CREATE TABLE IF NOT EXISTS `registro_covid` (
  `id_caso` int NOT NULL,
  `fecha_diagnostico` varchar(10) DEFAULT NULL,
  `ciudad_ubicacion` varchar(30) DEFAULT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `atencion` varchar(25) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `pais_procedencia` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_caso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
