-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  `idProof` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `zipCode` (`zipCode`),
  KEY `idProof` (`idProof`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`idProof`) REFERENCES `idproof` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Yvonne','Goodman','12 Creekside St','37205','2025550109','ygoodman@isp.com',1),(2,'Dante','Mackenzie','137 Wall St','37205','2025550112','dmackenzie@isp.com',1),(3,'Alysha','Rollins','411 Shirley St','37205','2025550115','arollins@isp.com',1),(4,'Avaya','Gonzalez','7771 Border Court','37205','2025550119','agonzalez@isp.com',1),(5,'Haniya','Kelly','6 South Sulphur Springs Street','37205','2025550121','hkelly@isp.com',1),(6,'Nathalie','Chambers','942 New Saddle Drive','29710','2025550122','nchambers@isp.com',1),(7,'Dante','Rollins','9 Wrangler Ave','29710','2025550124','drollins@isp.com',2),(8,'Beverley','Mckee','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com',2),(9,'Paris','Lindsey','763 West Mulberry St','29710','2025550132','plindsey@isp.com',2),(10,'Umaiza','Melia','545 Ohio Ave','29710','2025550135','umelia@isp.com',2),(11,'Nico','Prince','20 Middle River Street','44094','2025550137','nprince@isp.com',2),(12,'Javan','Rennie','8112 North Country St','44094','2025550139','jrennie@isp.com',2),(13,'Ali','Waters','83 Rockland Lane','44094','2025550144','awaters@isp.com',2),(14,'JohnPaul','Clarke','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com',2),(15,'Dane','Kaiser','694 Wall Road','44094','2025550155','kdaiser@isp.com',2),(16,'Hammad','Newman','9970 State Court','30096','2025550157','hnewman@isp.com',3),(17,'Maha','Guthrie','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com',3),(18,'Tulisa','Roberts','7174 Studebaker Street','30096','2025550163','troberts@isp.com',3),(19,'Robin','Solis','8474 Wentworth Street','30096','2025550164','rsolis@isp.com',3),(20,'Kavita','Heath','796 Hartford St','30096','2025550165','kheath@isp.com',3),(21,'Meera','White','484 Bridge St','08854','2025550166','mwhite@isp.com',3),(22,'Bradlee','Esparza','7031 Gainsway St','08854','2025550173','besparza@isp.com',3),(23,'Leilani','Leonard','37 Monroe Street','08854','2025550175','lleonard@isp.com',4),(24,'Stefanie','Brook','7990 West Surrey St','08854','2025550179','sbrook@isp.com',4),(25,'Grover','Squires','7618 Madison Court','08854','2025550180','gsquires@isp.com',4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 22:35:28
