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
-- Table structure for table `dacontacts`
--

DROP TABLE IF EXISTS `dacontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dacontacts` (
  `Connectid` int NOT NULL AUTO_INCREMENT,
  `qstatus` int NOT NULL,
  `did` int NOT NULL,
  `AID` int NOT NULL,
  PRIMARY KEY (`Connectid`),
  KEY `did` (`did`),
  KEY `AID` (`AID`),
  CONSTRAINT `dacontacts_ibfk_1` FOREIGN KEY (`did`) REFERENCES `deliverydept` (`ID`),
  CONSTRAINT `dacontacts_ibfk_2` FOREIGN KEY (`AID`) REFERENCES `areadept` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dacontacts`
--

LOCK TABLES `dacontacts` WRITE;
/*!40000 ALTER TABLE `dacontacts` DISABLE KEYS */;
INSERT INTO `dacontacts` VALUES (5,0,5,5),(6,1,6,6),(7,1,7,7),(8,0,8,8),(9,0,9,9),(10,0,10,10),(11,0,11,11),(12,0,12,12),(13,0,13,13),(14,1,14,14),(15,1,15,15),(16,0,16,16),(17,0,17,17),(18,0,18,18),(19,1,19,19),(20,1,20,20),(21,1,21,21),(22,0,22,22),(23,0,23,23),(24,1,24,24),(25,0,25,25),(26,1,26,26),(27,0,27,27),(28,0,28,28),(29,1,29,29),(30,1,30,30),(31,0,31,31),(32,1,32,32),(33,1,33,33),(34,1,34,34),(35,1,35,35),(40,0,5,5),(41,1,6,6),(42,1,7,7),(43,0,8,8),(44,1,9,9),(45,0,10,10),(46,1,11,11),(47,1,12,12),(48,1,13,13),(49,0,14,14),(50,1,15,15);
/*!40000 ALTER TABLE `dacontacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 13:47:20
