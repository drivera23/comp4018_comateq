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
-- Table structure for table `respondera`
--

DROP TABLE IF EXISTS `respondera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respondera` (
  `idEquipo` varchar(13) NOT NULL,
  `idProblemaRA` int NOT NULL,
  `Respuesta` varchar(20) DEFAULT NULL,
  KEY `idEquipo` (`idEquipo`),
  KEY `idProblemaRA` (`idProblemaRA`),
  CONSTRAINT `responde1RA` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`),
  CONSTRAINT `responde2RA` FOREIGN KEY (`idProblemaRA`) REFERENCES `problemasra` (`idProblemaRA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondera`
--

LOCK TABLES `respondera` WRITE;
/*!40000 ALTER TABLE `respondera` DISABLE KEYS */;
INSERT INTO `respondera` VALUES ('UPRM1001_2020',1,'60mph'),('UDA1011_2020',1,'60mph'),('UDV1111_2020',1,'70mph'),('UPRM1001_2020',2,'0.25'),('UDA1011_2020',2,'0.35'),('UDV1111_2020',2,'0.25'),('UPRM1001_2020',3,'30m'),('UDA1011_2020',3,'20m'),('UDV1111_2020',3,'20m'),('UPRM1001_2022',4,'(1/3)'),('UDA1111_2022',4,'(1/3)'),('UDV1001_2022',4,'(1/2)'),('UPRM1001_2022',5,'(-3,4)'),('UDA1111_2022',5,'(-3,4)'),('UDV1001_2022',5,'(-2,4)'),('UPRM1001_2022',6,'500 square m'),('UDA1111_2022',6,'300 square m'),('UDV1001_2022',6,'300 square m'),('UPRM1001_2020',7,'400 square cm'),('UDA1011_2020',7,'200 square cm'),('UDV1111_2020',7,'200 square cm'),('UPRM1001_2022',8,'3 hours - 15 minutes'),('UDA1111_2022',8,'3 hours - 25 minutes'),('UDV1001_2022',8,'3 hours - 5 minutes');
/*!40000 ALTER TABLE `respondera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respondesm`
--

DROP TABLE IF EXISTS `respondesm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respondesm` (
  `idEquipo` varchar(13) NOT NULL,
  `idProblemaSM` int NOT NULL,
  `Respuesta` int DEFAULT NULL,
  KEY `idEquipo` (`idEquipo`),
  KEY `idProblemaSM` (`idProblemaSM`),
  CONSTRAINT `responde1SM` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`),
  CONSTRAINT `responde2SM` FOREIGN KEY (`idProblemaSM`) REFERENCES `problemassm` (`idProblemaSM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondesm`
--

LOCK TABLES `respondesm` WRITE;
/*!40000 ALTER TABLE `respondesm` DISABLE KEYS */;
INSERT INTO `respondesm` VALUES ('UPRM1001_2020',1,4),('UDA1011_2020',1,4),('UDV1111_2020',1,4),('UPRM1001_2020',3,4),('UDA1011_2020',3,3),('UDV1111_2020',3,4),('UPRM1001_2020',7,4),('UDA1011_2020',7,4),('UDV1111_2020',7,2),('UPRM1001_2022',4,4),('UDA1111_2022',4,4),('UDV1001_2022',4,4),('UPRM1001_2022',9,4),('UDA1111_2022',9,4),('UDV1001_2022',9,4),('UPRM1001_2022',19,4),('UDA1111_2022',19,4),('UDV1001_2022',19,1),('UPRM1001_2020',12,4),('UDA1011_2020',12,1),('UDV1111_2020',12,3),('UPRM1001_2022',8,4),('UDA1111_2022',8,4),('UDV1001_2022',8,4),('UPRM1001_2020',2,4),('UDA1011_2020',2,4),('UDV1111_2020',2,4),('UPRM1001_2020',5,4),('UDA1011_2020',5,3),('UDV1111_2020',5,4),('UPRM1001_2020',6,4),('UDA1011_2020',6,4),('UDV1111_2020',6,2),('UPRM1001_2022',11,4),('UDA1111_2022',11,4),('UDV1001_2022',11,4),('UPRM1001_2022',13,4),('UDA1111_2022',13,4),('UDV1001_2022',13,4),('UPRM1001_2022',18,4),('UDA1111_2022',18,4),('UDV1001_2022',18,1),('UPRM1001_2020',15,4),('UDA1011_2020',15,1),('UDV1111_2020',15,3),('UPRM1001_2022',14,4),('UDA1111_2022',14,4),('UDV1001_2022',14,4);
/*!40000 ALTER TABLE `respondesm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 21:44:20
