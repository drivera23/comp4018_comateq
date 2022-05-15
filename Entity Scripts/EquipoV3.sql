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
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `ID` int NOT NULL,
  `idEquipo` varchar(13) NOT NULL,
  `Año` int NOT NULL,
  `idEstudiante1` int NOT NULL,
  `idEstudiante2` int NOT NULL,
  `idEstudiante3` int DEFAULT NULL,
  `idCoordinador` int NOT NULL,
  PRIMARY KEY (`idEquipo`,`idCoordinador`),
  UNIQUE KEY `idEquipo` (`idEquipo`),
  KEY `ID` (`ID`),
  KEY `idEstudiante1` (`idEstudiante1`),
  KEY `idEstudiante2` (`idEstudiante2`),
  KEY `idEstudiante3` (`idEstudiante3`),
  KEY `idCoordinador` (`idCoordinador`),
  CONSTRAINT `dirige` FOREIGN KEY (`idCoordinador`) REFERENCES `coordinador` (`idCoordinador`),
  CONSTRAINT `forma1` FOREIGN KEY (`idEstudiante1`) REFERENCES `estudiante` (`idEstudiante`),
  CONSTRAINT `forma2` FOREIGN KEY (`idEstudiante2`) REFERENCES `estudiante` (`idEstudiante`),
  CONSTRAINT `forma3` FOREIGN KEY (`idEstudiante3`) REFERENCES `estudiante` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (4,'ITM1301_2021',2021,12,13,14,8),(5,'UBA1221_2021',2021,12,13,14,8),(2,'UDA1011_2020',2020,5,6,7,5),(8,'UDA1111_2022',2022,5,6,8,5),(9,'UDV1001_2022',2022,18,16,15,4),(3,'UDV1111_2020',2020,18,17,19,4),(1,'UPRM1001_2020',2020,1,2,3,1),(6,'UPRM1001_2021',2021,1,2,3,1),(7,'UPRM1001_2022',2022,1,4,3,1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 21:44:03
