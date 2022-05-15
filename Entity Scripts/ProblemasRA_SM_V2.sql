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
-- Table structure for table `ProblemasRA`
--

DROP TABLE IF EXISTS `ProblemasRA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProblemasRA` (
  `idProblemaRA` int NOT NULL,
  `idExamen` int DEFAULT NULL,
  `idCoordinador` int NOT NULL,
  `Premisa` text NOT NULL,
  `Contestación` text NOT NULL,
  PRIMARY KEY (`idProblemaRA`),
  KEY `idCoordinador` (`idCoordinador`),
  KEY `idExamen` (`idExamen`),
  CONSTRAINT `contiene` FOREIGN KEY (`idExamen`) REFERENCES `Examen` (`idExamen`),
  CONSTRAINT `propone` FOREIGN KEY (`idCoordinador`) REFERENCES `Coordinador` (`idCoordinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProblemasRA`
--

LOCK TABLES `ProblemasRA` WRITE;
/*!40000 ALTER TABLE `ProblemasRA` DISABLE KEYS */;
INSERT INTO `ProblemasRA` VALUES (1,1,1,'A car traveled 281 miles in 4 hours 41 minutes. What was the average speed of the car in miles per hour?','60mph'),(2,1,2,'In a group of 120 people, 90 have an age of more 30 years, and the others have an age of less than 20 years. If a person is selected at random from this group, what is the probability the person\'s age is less than 20?','.25, 25%'),(3,1,6,'The length of a rectangle is four times its width. If the area is 100 m2 what is the length of the rectangle?','20m'),(4,2,9,'A six-sided die is rolled once. What is the probability that the number rolled is an even number greater than 2?','(1/3)'),(5,2,9,'Point A has the coordinates (2,2). What are the coordinates of its image point if it is translated 2 units up and 5 units to the left, and reflected in the x axis?','(-3,4)'),(6,2,7,'The length of a rectangle is increased to 2 times its original size and its width is increased to 3 times its original size. If the area of the new rectangle is equal to 1800 square meters, what is the area of the original rectangle?','300 square m'),(7,1,10,'Each dimension of a cube has been increased to twice its original size. If the new cube has a volume of 64,000 cubic centimeters, what is the area of one face of the original cube?','400 square cm'),(8,2,11,'Pump A can fill a tank of water in 5 hours. Pump B can fill the same tank in 8 hours. How long does it take the two pumps working together to fill the tank?(round your answer to the nearest minute).','3 hours - 5 minutes');
/*!40000 ALTER TABLE `ProblemasRA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProblemasSM`
--

DROP TABLE IF EXISTS `ProblemasSM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProblemasSM` (
  `idProblemaSM` int NOT NULL,
  `idExamen` int DEFAULT NULL,
  `idCoordinador` int NOT NULL,
  `Premisa` text NOT NULL,
  `OpcionIncorrecta1` text NOT NULL,
  `OpcionIncorrecta2` text NOT NULL,
  `OpcionIncorrecta3` text NOT NULL,
  `Contestación` text NOT NULL,
  PRIMARY KEY (`idProblemaSM`),
  KEY `idCoordinador` (`idCoordinador`),
  KEY `idExamen` (`idExamen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProblemasSM`
--

LOCK TABLES `ProblemasSM` WRITE;
/*!40000 ALTER TABLE `ProblemasSM` DISABLE KEYS */;
INSERT INTO `ProblemasSM` VALUES (1,1,1,'2+2','3','1','0','4'),(2,1,2,'3*3*3','1','3','9','27'),(3,1,2,'2+ (2*2)','2','4','8','6'),(4,2,9,'1- (9*2)','-16','0','16','-17'),(5,2,9,'2^(2^(2))','4','8','12','16'),(6,2,9,'100-1-100+1','99','-99','1','0'),(7,1,10,'3x + 5 = 23','3','10','5','6'),(8,1,11,'98m - 3 = 3623','30','38','36','37'),(9,1,3,'400 = 29y + 81','-11','21','7','11'),(10,1,4,'27=1371−24x','-56','46','57','56'),(11,1,4,'52m−6=98m−880','10','9','38','19'),(12,2,5,'32d+25=80d+169','20','1','-2','-3'),(13,2,7,'2n+38=26n+2198','-91','10','-9','-90'),(14,1,7,'19d+20=9d+60','1','8','16','4'),(15,2,8,'4(12x+59)=−3652','81','9','-9','-81'),(16,1,6,'40(23a−88)=−25600','22','16','-48','-24'),(17,2,5,'19(99x+3)=90345','8','6','72','48'),(18,2,3,'(366b+1282)/646=−83','-145','150','50','-150'),(19,2,3,'−3002=(824a+396)/262','957','-1000','-954','-955'),(20,2,4,'(190y+1380)/870=−79','-123','346','-246','-369');
/*!40000 ALTER TABLE `ProblemasSM` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 21:22:18
