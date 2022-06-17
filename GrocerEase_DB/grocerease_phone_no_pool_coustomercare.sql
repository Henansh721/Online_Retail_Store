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
-- Table structure for table `phone_no_pool_coustomercare`
--

DROP TABLE IF EXISTS `phone_no_pool_coustomercare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_no_pool_coustomercare` (
  `id` int NOT NULL,
  `Phone_no` bigint NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `phone_no_pool_coustomercare_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customercare` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_no_pool_coustomercare`
--

LOCK TABLES `phone_no_pool_coustomercare` WRITE;
/*!40000 ALTER TABLE `phone_no_pool_coustomercare` DISABLE KEYS */;
INSERT INTO `phone_no_pool_coustomercare` VALUES (1,3687110461),(2,3101999779),(3,3729986558),(4,2675788108),(5,9452026699),(6,1751087168),(7,3264107635),(8,1439375113),(9,3611632957),(10,1677095034),(11,9006507998),(12,6964999726),(13,5987962824),(14,5241900597),(15,8956212927),(16,1148927306),(17,8776829846),(18,4144944429),(19,5669837933),(20,2545633779),(21,2451719421),(22,5894549263),(23,2883869596),(24,1946526872),(25,1016592530),(26,8712365395),(27,4348569500),(28,9056132445),(29,4956857715),(30,5726972999),(31,8401847966),(32,8299961230),(33,4211960352),(34,2107017821),(35,9977889428),(1,6547520405),(2,5161268192),(3,4927379859),(4,6322869687),(5,5631599167),(6,2997754553),(7,3312357142),(8,2861482615),(9,2856644893),(10,9667942211),(11,5921333628),(12,6661304083),(13,9395783371),(14,2362234766),(15,9435838782),(16,6839051906),(17,3827906341),(18,3241296122),(19,2884511622),(20,5681373741),(21,6284949509),(22,3998350369),(23,2839854539),(24,6388297263),(25,9608110502);
/*!40000 ALTER TABLE `phone_no_pool_coustomercare` ENABLE KEYS */;
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