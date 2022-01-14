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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `itemType` int NOT NULL,
  `itemName` text NOT NULL,
  `itemCost` float(10,2) NOT NULL,
  `itemDetails` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `itemType` (`itemType`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`itemType`) REFERENCES `itemtype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,'Bar soap',1.99,'Novo Essentials 0.4 oz. Wrapped Facial Soap Bar'),(2,1,'Bar soap',2.99,'Novo Essentials 0.8 oz. Wrapped Bath Soap Bar'),(3,1,'Body loation',3.99,'Novo Essentials 0.75 oz. Body Lotion'),(4,1,'Body lotion',3.99,'Basic Earth Botanicals Refreshing Body Lotion 1 oz.'),(5,1,'Body wash',2.99,'Basic Earth Botanicals Reviving Body Wash 1 oz.'),(6,1,'Body wash',2.99,'Ecossential Naturals Body Wash 0.5 oz.'),(7,1,'Conditioner',3.99,'Novo Essentials 0.75 oz. Conditioner'),(8,1,'Conditioner',3.99,'Basic Earth Botanicals Restoring Conditioner 1 oz.'),(9,1,'Shampoo',3.99,'Novo Essentials 0.75 oz. Shampoo'),(10,1,'Shampoo',3.99,'Eco Novo Natura 0.5 oz. Shampoo'),(11,1,'Toothbrush',1.99,'Novo Essentials 6\" Travel Toothbrush'),(12,1,'Toothpaste',2.99,'Colgate Total Clean Mint Toothpaste 0.88 oz.'),(13,1,'Mouth wash',3.99,'Judith Jackson Spa Alcohol Free Mint Mouthwash 1 oz.'),(14,1,'Comb',0.99,'Novo Essentials 4 5/8\" Black Comb'),(15,1,'Razor',1.59,'Novo Essentials Blue Twin Blade Disposable Razor'),(16,1,'Vanity Kit',4.59,'Novo Essentials Personal Vanity Kit'),(17,1,'Deoderant',4.99,'Arm & Hammer Essentials 1 oz. Rosemary and Lavender Scent Deodorant'),(18,4,'Candy',1.59,'Hersheys Chocolate Bar'),(19,4,'Candy',1.59,'Kit Kat'),(20,4,'Candy',1.59,'Reeses Peanut Butter Cups'),(21,4,'Snacks',1.89,'Doritos 1.75 oz. Bag of Nacho Cheese Flavored Tortilla Chips'),(22,4,'Snacks',1.89,'Route 11 Chips 2 oz. Lightly Salted Potato Chips'),(23,4,'Snacks',1.89,'Fresh Gourmet Tri-Color Tortilla Strips 2 oz. Bag'),(24,4,'Snacks',2.89,'General Mills 3 oz. Traditional Chex Mix'),(25,4,'Snacks',3.29,'Fiesta Sunshine Snack Mix 4 oz. Bag'),(26,5,'Energy drink',2.99,'5-Hour Energy Regular Strength 1.93 fl. oz. Grape Energy Drink'),(27,5,'Energy drink',2.99,'Red Bull 8.4 fl. oz. Can Original Energy Drink'),(28,5,'Soda',1.39,'Coca-cola'),(29,5,'Soda',1.39,'Sprite'),(30,5,'Soda',1.39,'Dr. Pepper'),(31,5,'Soda',1.39,'Diet Coca-cola'),(32,5,'Soda',1.39,'Mountain Dew'),(33,5,'Soda',2.39,'Pepsi'),(34,5,'Soda',2.39,'Canada Dry Ginger Ale'),(35,6,'Laundry bag',9.99,'25\" x 36\" Mesh Laundry Bag with Drawstring'),(36,6,'Dryer sheets',4.99,'2 Count Snuggle Blue Sparkle Dryer Sheet Fabric Softener'),(37,6,'Laundry detergent',4.99,'2 oz. ALL Stainlifter Powder Laundry Detergent'),(38,6,'Laundry detergent',4.99,'1.5 oz. Snuggle Blue Sparkle Liquid Fabric Softener');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 22:35:29
