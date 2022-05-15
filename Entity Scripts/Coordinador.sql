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
-- Table structure for table `Coordinador`
--

DROP TABLE IF EXISTS `Coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Coordinador` (
  `idCoordinador` int NOT NULL,
  `idUniversidad` int NOT NULL,
  `NombreP` text NOT NULL,
  `ApellidoP` text NOT NULL,
  `ApellidoM` text NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text NOT NULL,
  `Género` enum('M','F') NOT NULL,
  PRIMARY KEY (`idCoordinador`),
  KEY `idUniversidad` (`idUniversidad`),
  CONSTRAINT `Coordinador_ibfk_1` FOREIGN KEY (`idUniversidad`) REFERENCES `Universidad` (`idUniversidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Coordinador`
--

LOCK TABLES `Coordinador` WRITE;
/*!40000 ALTER TABLE `Coordinador` DISABLE KEYS */;
INSERT INTO `Coordinador` VALUES (1,1,'Jrue','Holiday','Hernandez','1111111111','jhh1@gmail.com','M'),(2,4,'Giannis','Antetokounmpo','Alvarez','1111111111','gaa4@gmail.com','M'),(3,10,'Brook','Lopez','Lorenzo','2222222222','bll10@gmail.com','M'),(4,4,'Grayson','Allen','Alberty','2222222222','gaa11@gmail.com','M'),(5,5,'Pat','Connaughton','Cora','4444444444','pcc11@gmail.com','M'),(6,8,'Khris','Middleton','Montañez','1111111111','kmm8@gmail.com','M'),(7,9,'Bobby','Portis','Perez','88888888','bpp9@gmail.com','M'),(8,12,'Thanasis','Antetokounmpo','Torres','88888888','tat12@gmail.com','M'),(9,13,'Luka','Doncic','Deivar','77777777','ldd13@gmail.com','M'),(10,14,'Jalen','Brunson','Burgos','3333333333','jbb44@gmail.com','M'),(11,15,'Tim','Hardaway','Hernandez','1911911199','thh5@gmail.com','M');
/*!40000 ALTER TABLE `Coordinador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 20:53:15
