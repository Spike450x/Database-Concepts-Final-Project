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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `roomTypeId` int NOT NULL,
  `roomNumber` varchar(10) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MyOtherUniqueConstraint` (`roomNumber`),
  KEY `roomTypeId` (`roomTypeId`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeId`) REFERENCES `roomtype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'100','Standard room'),(2,2,'101','Standard room'),(3,3,'102','Standard room'),(4,4,'103','Standard room'),(5,5,'104','Standard room'),(6,1,'105','Standard room'),(7,1,'106','Accessible room'),(8,2,'107','Accessible room'),(9,3,'108','Accessible room'),(10,4,'109','Accessible room'),(11,5,'110','Accessible room'),(12,1,'111','Accessible room'),(13,2,'112','Accessible room'),(14,3,'113','Accessible room'),(15,4,'114','Accessible room'),(16,5,'115','Accessible room'),(17,1,'200','Connecting room'),(18,2,'201','Connecting room'),(19,3,'202','Connecting room'),(20,4,'203','Connecting room'),(21,5,'204','Connecting room'),(22,1,'205','Connecting room'),(23,2,'206','Deluxe room'),(24,3,'207','Deluxe room'),(25,4,'208','Deluxe room'),(26,5,'209','Deluxe room'),(27,5,'210','Deluxe room'),(28,1,'211','Suite room'),(29,2,'212','Suite room'),(30,3,'213','Suite room'),(31,4,'214','Suite room'),(32,5,'215','Suite room'),(33,1,'300','Standard room'),(34,2,'301','Standard room'),(35,3,'302','Standard room'),(36,4,'303','Connecting room'),(37,5,'304','Connecting room'),(38,1,'305','Connecting room'),(39,3,'306','Deluxe room'),(40,2,'307','Deluxe room'),(41,3,'308','Deluxe room'),(42,4,'309','Deluxe room'),(43,5,'310','Deluxe room'),(44,1,'311','Suite room'),(45,2,'312','Suite room'),(46,3,'313','Suite room'),(47,4,'314','Suite room'),(48,3,'315','Suite room');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
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
