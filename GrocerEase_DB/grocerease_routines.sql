-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: grocerease
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Temporary view structure for view `deliverydept_view`
--

DROP TABLE IF EXISTS `deliverydept_view`;
/*!50001 DROP VIEW IF EXISTS `deliverydept_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deliverydept_view` AS SELECT 
 1 AS `ID`,
 1 AS `Dname`,
 1 AS `Email`,
 1 AS `Phone_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customercare_view`
--

DROP TABLE IF EXISTS `customercare_view`;
/*!50001 DROP VIEW IF EXISTS `customercare_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customercare_view` AS SELECT 
 1 AS `ID`,
 1 AS `Fname`,
 1 AS `Lname`,
 1 AS `Email`,
 1 AS `Phone_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `favorite_products`
--

DROP TABLE IF EXISTS `favorite_products`;
/*!50001 DROP VIEW IF EXISTS `favorite_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `favorite_products` AS SELECT 
 1 AS `id`,
 1 AS `pname`,
 1 AS `Available_Q`,
 1 AS `price`,
 1 AS `pdescription`,
 1 AS `Category`,
 1 AS `EXP`,
 1 AS `Discount`,
 1 AS `image`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `deliverydept_view`
--

/*!50001 DROP VIEW IF EXISTS `deliverydept_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deliverydept_view` AS select `deliverydept`.`ID` AS `ID`,`deliverydept`.`Dname` AS `Dname`,`deliverydept`.`Email` AS `Email`,`phone_no_pool_deliverdept`.`Phone_no` AS `Phone_no` from (`deliverydept` join `phone_no_pool_deliverdept` on((`deliverydept`.`ID` = `phone_no_pool_deliverdept`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customercare_view`
--

/*!50001 DROP VIEW IF EXISTS `customercare_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customercare_view` AS select `customercare`.`ID` AS `ID`,`customercare`.`Fname` AS `Fname`,`customercare`.`Lname` AS `Lname`,`customercare`.`Email` AS `Email`,`phone_no_pool_coustomercare`.`Phone_no` AS `Phone_no` from (`customercare` join `phone_no_pool_coustomercare` on((`customercare`.`ID` = `phone_no_pool_coustomercare`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `favorite_products`
--

/*!50001 DROP VIEW IF EXISTS `favorite_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `favorite_products` AS select `p3`.`ID` AS `id`,`p3`.`pname` AS `pname`,`p3`.`Available_Q` AS `Available_Q`,`p3`.`price` AS `price`,`p3`.`pdescription` AS `pdescription`,`p3`.`Category` AS `Category`,`p3`.`EXP` AS `EXP`,`p3`.`Discount` AS `Discount`,`p3`.`image` AS `image` from (select `p1`.`Uid` AS `Uid`,`p1`.`pid` AS `pid`,`p1`.`QTY` AS `QTY`,`p1`.`DNT` AS `DNT`,`p2`.`ID` AS `ID`,`p2`.`pname` AS `pname`,`p2`.`Available_Q` AS `Available_Q`,`p2`.`price` AS `price`,`p2`.`pdescription` AS `pdescription`,`p2`.`Category` AS `Category`,`p2`.`EXP` AS `EXP`,`p2`.`Discount` AS `Discount`,`p2`.`image` AS `image`,count(0) AS `cnt`,(count(0) * sum(`p1`.`QTY`)) AS `num` from (`previouscartpool` `p1` join `products` `p2`) where ((`p1`.`Uid` = 1) and (`p1`.`pid` = `p2`.`ID`)) group by `p1`.`pid` order by `num` desc limit 3) `p3` order by `p3`.`ID` */;
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

-- Dump completed on 2022-05-01 13:47:21
