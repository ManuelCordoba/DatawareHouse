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


-- Dumping database structure for covid_19
CREATE DATABASE IF NOT EXISTS `covid_19` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `covid_19`;

-- Dumping structure for table covid_19.atencion
CREATE TABLE IF NOT EXISTS `atencion` (
  `id_atencion` int NOT NULL,
  `atencion` varchar(45) NOT NULL,
  `numero` int NOT NULL,
  PRIMARY KEY (`id_atencion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table covid_19.casos_positivos
CREATE TABLE IF NOT EXISTS `casos_positivos` (
  `id_casos` int NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `atencion` varchar(45) NOT NULL,
  `pais_procedencia` varchar(45) NOT NULL,
  `casos_positivoscol` varchar(45) NOT NULL,
  PRIMARY KEY (`id_casos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table covid_19.pais_procendencia
CREATE TABLE IF NOT EXISTS `pais_procendencia` (
  `id_pais` int NOT NULL,
  `pais` varchar(45) NOT NULL,
  `conteo` int NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
