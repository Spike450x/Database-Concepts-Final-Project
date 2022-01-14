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
-- Temporary view structure for view `customeremail`
--

DROP TABLE IF EXISTS `customeremail`;
/*!50001 DROP VIEW IF EXISTS `customeremail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customeremail` AS SELECT 
 1 AS `Customer`,
 1 AS `Email Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bookingview`
--

DROP TABLE IF EXISTS `bookingview`;
/*!50001 DROP VIEW IF EXISTS `bookingview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookingview` AS SELECT 
 1 AS `Customer`,
 1 AS `Room Number`,
 1 AS `Check In Date`,
 1 AS `Check Out Date`,
 1 AS `Reservation Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customermail`
--

DROP TABLE IF EXISTS `customermail`;
/*!50001 DROP VIEW IF EXISTS `customermail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customermail` AS SELECT 
 1 AS `Customer`,
 1 AS `Address`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Zip`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeeemail`
--

DROP TABLE IF EXISTS `employeeemail`;
/*!50001 DROP VIEW IF EXISTS `employeeemail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeemail` AS SELECT 
 1 AS `Employee`,
 1 AS `Email Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeelist`
--

DROP TABLE IF EXISTS `employeelist`;
/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeelist` AS SELECT 
 1 AS `Employee`,
 1 AS `Department`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `roomview`
--

DROP TABLE IF EXISTS `roomview`;
/*!50001 DROP VIEW IF EXISTS `roomview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `roomview` AS SELECT 
 1 AS `Room Number`,
 1 AS `Room Description`,
 1 AS `Daily Rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `customeremail`
--

/*!50001 DROP VIEW IF EXISTS `customeremail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customeremail` AS select concat(`c`.`firstName`,'',`c`.`lastName`) AS `Customer`,concat(`c`.`email`) AS `Email Address` from `customer` `c` order by `c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookingview`
--

/*!50001 DROP VIEW IF EXISTS `bookingview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookingview` AS select concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Customer`,`r`.`roomNumber` AS `Room Number`,`b`.`checkIn` AS `Check In Date`,`b`.`checkOut` AS `Check Out Date`,`s`.`status` AS `Reservation Status` from (((`customer` `c` join `room` `r`) join `booking` `b`) join `status` `s`) where ((`b`.`roomId` = `r`.`ID`) and (`b`.`customerId` = `c`.`ID`) and (`b`.`status` = `s`.`ID`)) order by `c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customermail`
--

/*!50001 DROP VIEW IF EXISTS `customermail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customermail` AS select concat(`c`.`firstName`,'',`c`.`lastName`) AS `Customer`,concat(`c`.`address`) AS `Address`,concat(`cs`.`city`) AS `City`,concat(`cs`.`state`) AS `State`,concat(`c`.`zipCode`) AS `Zip` from (`customer` `c` join `citystate` `cs`) where (`c`.`zipCode` = `cs`.`zipCode`) order by `c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeeemail`
--

/*!50001 DROP VIEW IF EXISTS `employeeemail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeemail` AS select concat(`e`.`firstName`,'',`e`.`lastName`) AS `Employee`,concat(`e`.`email`) AS `Email Address` from `employee` `e` order by `e`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeelist`
--

/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeelist` AS select concat(`e`.`firstName`,'',`e`.`lastName`) AS `Employee`,concat(`et`.`type`) AS `Department` from (`employee` `e` join `employeetype` `et`) where (`e`.`empType` = `et`.`ID`) order by `e`.`empType`,`e`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `roomview`
--

/*!50001 DROP VIEW IF EXISTS `roomview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `roomview` AS select concat(`r`.`roomNumber`) AS `Room Number`,concat(`rt`.`roomType`,'',`r`.`description`,'',`rt`.`description`) AS `Room Description`,concat(`rt`.`cost`) AS `Daily Rate` from (`room` `r` join `roomtype` `rt`) where (`r`.`roomTypeId` = `rt`.`ID`) order by `r`.`roomNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 22:35:29
