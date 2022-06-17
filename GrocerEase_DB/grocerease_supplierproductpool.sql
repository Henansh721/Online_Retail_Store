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
-- Table structure for table `supplierproductpool`
--

DROP TABLE IF EXISTS `supplierproductpool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplierproductpool` (
  `sid` int NOT NULL,
  `pid` int NOT NULL,
  KEY `sid` (`sid`),
  KEY `pid` (`pid`),
  CONSTRAINT `supplierproductpool_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `supplier` (`ID`),
  CONSTRAINT `supplierproductpool_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplierproductpool`
--

LOCK TABLES `supplierproductpool` WRITE;
/*!40000 ALTER TABLE `supplierproductpool` DISABLE KEYS */;
INSERT INTO `supplierproductpool` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(1,21),(2,22),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29),(10,30),(11,31),(12,32),(13,33),(14,34),(15,35),(16,36),(17,37),(18,38),(19,39),(20,40),(1,41),(2,42),(3,43),(4,44),(5,45),(6,46),(7,47),(8,48),(9,49),(10,50),(11,51),(12,52),(13,53),(14,54),(15,55),(16,56),(17,57),(18,58),(19,59),(20,60),(1,61),(2,62),(3,63),(4,64),(5,65),(6,66),(7,67),(8,68),(9,69),(10,70),(11,71),(12,72),(13,73),(14,74),(15,75),(16,76),(17,77),(18,1),(19,2),(20,3),(1,4),(2,5),(3,6),(4,7),(5,8),(6,9),(7,10),(8,11),(9,12),(10,13),(11,14),(12,15),(13,16),(14,17),(15,18),(16,19),(17,20),(18,21),(19,22),(20,23),(1,24),(2,25),(3,26),(4,27),(5,28),(6,29),(7,30),(8,31),(9,32),(10,33),(11,34),(12,35),(13,36),(14,37),(15,38),(16,39),(17,40),(18,41),(19,42),(20,43),(1,44),(2,45),(3,46),(4,47),(5,48),(6,49),(7,50),(8,51),(9,52),(10,53),(11,54),(12,55),(13,56),(14,57),(15,58),(16,59),(17,60),(18,61),(19,62),(20,63),(1,64),(2,65),(3,66),(4,67),(5,68),(6,69),(7,70),(8,71),(9,72),(10,73),(11,74),(12,75),(13,76),(14,77),(15,1),(16,2),(17,3),(18,4),(19,5),(20,6),(1,7),(2,8),(3,9),(4,10),(5,11),(6,12),(7,13),(8,14),(9,15),(10,16),(11,17),(12,18),(13,19),(14,20),(15,21),(16,22),(17,23),(18,24),(19,25),(20,26),(1,27),(2,28),(3,29),(4,30),(5,31),(6,32),(7,33),(8,34),(9,35),(10,36),(11,37),(12,38),(13,39),(14,40),(15,41),(16,42),(17,43),(18,44),(19,45),(20,46);
/*!40000 ALTER TABLE `supplierproductpool` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 13:47:21
