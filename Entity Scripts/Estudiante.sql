-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: comateq003
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Estudiante`
--

DROP TABLE IF EXISTS `Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estudiante` (
  `idEstudiante` int NOT NULL,
  `NombreP` text NOT NULL,
  `ApellidoP` text NOT NULL,
  `ApellidoM` text NOT NULL,
  `DOB` date NOT NULL,
  `Escuela` text NOT NULL,
  `Grado` int NOT NULL,
  `Género` enum('M','F') NOT NULL,
  `Edad` int DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estudiante`
--

LOCK TABLES `Estudiante` WRITE;
/*!40000 ALTER TABLE `Estudiante` DISABLE KEYS */;
INSERT INTO `Estudiante` VALUES (1,'Diego','Rivera','Correa','2009-12-26','CRB',9,'M',12),(2,'Alejandro','Proskauer','Valerio','2008-01-01','UPRM',8,'M',14),(3,'Grant','Williams','Wilson','2010-02-02','UPRM',10,'M',12),(4,'Ime','Udoka','Velez','2010-09-09','CRB',10,'F',11),(5,'Ernesto','Ramirez','Ramos','2011-02-01','UHS',9,'M',11),(6,'Jalen','Brown','Hostos','2008-11-23','CIEM',9,'F',13),(7,'Jayson','Tatum','Nunez','2009-03-30','CROEM',8,'F',13),(8,'Aaron','Nesmith','Rivera','2012-01-15','CIMATEC',9,'M',10),(9,'Al ','Horford','Martinez','2012-06-24','UPRB',8,'M',9),(10,'Robert','Williams','III','2011-07-11','UPRC',9,'M',10),(11,'Brandon','Ingram','Irizarry','2012-01-01','CROEM',8,'F',10),(12,'Chris','Joseph','McCollum','2011-10-20','CIMATEC',10,'M',10),(13,'Jonas','Valanciunas','Velez','2010-07-11','UPRB',10,'F',11),(14,'Herbert','Jones','Jaquez','2010-06-11','UPRC',9,'F',11),(15,'Johnny','Juzang','Jaime','2009-08-30','UHS',9,'M',12),(16,'Tyger','Campbell','Cancio','2008-03-01','CIEM',8,'M',14),(17,'Ja','Morant','Mendez','2008-12-26','CROEM',9,'F',13),(18,'Desmond','Bane','Benitez','2010-05-21','CIMATEC',9,'M',11),(19,'Steven','Adams','Alvarez','2010-12-03','UPRB',8,'M',11);
/*!40000 ALTER TABLE `Estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 20:53:34
