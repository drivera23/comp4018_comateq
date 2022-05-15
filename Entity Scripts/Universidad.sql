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
-- Table structure for table `Universidad`
--

DROP TABLE IF EXISTS `Universidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Universidad` (
  `idUniversidad` int NOT NULL AUTO_INCREMENT,
  `idPais` int NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `PaginaWeb` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `DireccionCalle` varchar(100) NOT NULL,
  `DireccionCiudad` varchar(30) NOT NULL,
  `DireccionRegion` varchar(30) NOT NULL,
  `DireccionCodigoPostal` varchar(10) NOT NULL,
  PRIMARY KEY (`idUniversidad`),
  KEY `idPais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universidad`
--

LOCK TABLES `Universidad` WRITE;
/*!40000 ALTER TABLE `Universidad` DISABLE KEYS */;
INSERT INTO `Universidad` VALUES (1,2,'UPRM','uprm.edu','(787) 832-4040','259 Av. Alfonso Valdés Cobián','Mayaguez','Puerto Rico','00682'),(4,8,'UNIVALLE','univalle.edu.co','+60 2 3212100','Ciudad Universitaria Meléndez Calle 13','Cali','Valle del Cauca','100-00'),(5,8,'Universidad de Antioquia','udea.edu.co','[+57-604] 219 8332','Calle 67','Medellin','Antioquia','53-108'),(8,6,'Universidad Buenos Aires','uba.com','88888888','calle 91','Buenos Aires','Ciudad Autonoma de Buenos Aire','19'),(9,6,'UADE','uade.com','77777777','calle 32','Bogota','Distrito capital de Colombia','23'),(10,2,'UPRB','uprb.com','3333333333','calle 5','Bayamon','Puerto Rico','222'),(11,2,'UPRC','uprc.com','1911911199','calle 10','Cayey','Puerto Rico','888'),(12,4,'Tech Monterrey','tecmon.com','2121212121','calle 99','Monterrey','Nuevo Leon','881'),(13,4,'Universidad Veracruzana','uv.mx','01 228 8421700','Lomas del Estadio S/N, Col. Zona Universitaria','Xalapa','Veracruz','91000'),(14,3,'Universidad de Los Andes','ULA.com','101010101','calle 431','Bogota','Distrito capital de Colombia','999'),(15,3,'Universidad de Zulia','uz.com','98123456','calle 56','Maracaibo','Maracaibo','10199');
/*!40000 ALTER TABLE `Universidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 20:54:02
