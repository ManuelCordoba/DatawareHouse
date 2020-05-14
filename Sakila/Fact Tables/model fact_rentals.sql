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


-- Dumping database structure for fact_rentals
CREATE DATABASE IF NOT EXISTS `fact_rentals` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fact_rentals`;

-- Dumping structure for table fact_rentals.dim_customer
CREATE TABLE IF NOT EXISTS `dim_customer` (
  `id_customer` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `addres_customer` varchar(45) DEFAULT NULL,
  `city_customer` varchar(45) DEFAULT NULL,
  `country_customer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table fact_rentals.dim_date
CREATE TABLE IF NOT EXISTS `dim_date` (
  `fecha` varchar(45) NOT NULL,
  `año` varchar(45) DEFAULT NULL,
  `trimestre` varchar(45) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `mesNombre` varchar(45) DEFAULT NULL,
  `dia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table fact_rentals.dim_film
CREATE TABLE IF NOT EXISTS `dim_film` (
  `id_film` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table fact_rentals.dim_staff
CREATE TABLE IF NOT EXISTS `dim_staff` (
  `id_staff` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `store` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table fact_rentals.dim_store
CREATE TABLE IF NOT EXISTS `dim_store` (
  `id_store` int NOT NULL,
  `address_store` varchar(45) DEFAULT NULL,
  `city_store` varchar(45) DEFAULT NULL,
  `country_store` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table fact_rentals.fact_rentals
CREATE TABLE IF NOT EXISTS `fact_rentals` (
  `count_returns` int DEFAULT NULL,
  `count_rentals` int DEFAULT NULL,
  `dim_film_id_film` int NOT NULL,
  `dim_customer_id_customer` int NOT NULL,
  `dim_staff_id_staff` int NOT NULL,
  `dim_store_id_store` int NOT NULL,
  `dim_date_fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`dim_film_id_film`,`dim_customer_id_customer`,`dim_staff_id_staff`,`dim_store_id_store`,`dim_date_fecha`),
  KEY `fk_dim_customer_idx` (`dim_customer_id_customer`),
  KEY `fk_dim_date_idx` (`dim_date_fecha`),
  KEY `fk_dim_staff_idx` (`dim_staff_id_staff`),
  KEY `fk_dim_store_idx` (`dim_store_id_store`),
  CONSTRAINT `fk_dim_customer` FOREIGN KEY (`dim_customer_id_customer`) REFERENCES `dim_customer` (`id_customer`),
  CONSTRAINT `fk_dim_date` FOREIGN KEY (`dim_date_fecha`) REFERENCES `dim_date` (`fecha`),
  CONSTRAINT `fk_dim_film` FOREIGN KEY (`dim_film_id_film`) REFERENCES `dim_film` (`id_film`),
  CONSTRAINT `fk_dim_staff` FOREIGN KEY (`dim_staff_id_staff`) REFERENCES `dim_staff` (`id_staff`),
  CONSTRAINT `fk_dim_store` FOREIGN KEY (`dim_store_id_store`) REFERENCES `dim_store` (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
