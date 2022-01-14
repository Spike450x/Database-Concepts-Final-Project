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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `empType` int NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `empType` (`empType`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`empType`) REFERENCES `employeetype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Yvonne','Prince','yprince','Parrots12!@',1,'yprince@ucfhotel.com'),(2,'Dante','Rennie','drennie','Birbs12!@',2,'drennie@ucfhotel.com'),(3,'Alysha','Waters','awaters','Doggo12!@',3,'awaters@ucfhotel.com'),(4,'Avaya','Clarke','aclarke','MurderMittens12!@',3,'aclarke@ucfhotel.com'),(5,'Haniya','Kaiser','hkaiser','BlazingCruise12!@',4,'hkaiser@ucfhotel.com'),(6,'Nathalie','Newman','nnewman','CruisingBlaze12!@',4,'nnewman@ucfhotel.com'),(7,'Dante','Guthrie','dguthrie','Smokey12!@',4,'dguthrie@ucfhotel.com'),(8,'Beverley','Roberts','broberts','Ocho8*',4,'broberts@ucfhotel.com'),(9,'Paris','Solis','psolis','Samster12!@',5,'psolis@ucfhotel.com'),(10,'Umaiza','Heath','uheath','NattyPants12!@',5,'uheath@ucfhotel.com'),(11,'Jonathan','Kumar','jkumar','Keystonia12!@',6,'jkumar@ucfhotel.com'),(12,'Angus','Neville','aneville','StormyCat12!@',6,'aneville@ucfhotel.com'),(13,'Uzair','Sparrow','usparrow','OrangeMuffin12!@',7,'usparrow@ucfhotel.com'),(14,'Amari','Currie','acurrie','TessaDog12!@',8,'acurrie@ucfhotel.com'),(15,'Imaani','Wallace','iwallace','IvyBug12!@',9,'iwallace@ucfhotel.com'),(16,'Efe','House','ehouse','AussieBird12!@',10,'ehouse@ucfhotel.com'),(17,'Atticus','Atkinson','aatkinson','Eclectus12!@',11,'aatkinson@ucfhotel.com'),(18,'Michelle','Ramirez','mramirez','Horse12!@',11,'mramirez@ucfhotel.com'),(19,'Remy','Hassan','rhassan','Equines12!@',11,'rhassan@ucfhotel.com'),(20,'Jordana','Beck','jbeck','AllAnimals12!@',11,'jbeck@ucfhotel.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
