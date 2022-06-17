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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) NOT NULL,
  `GSTNO` varchar(15) NOT NULL,
  `Scono` varchar(4) NOT NULL,
  `CityorVillage` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `PinCode` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Lazz','axr3080402058nf','hk30','Albuquerque','California',101501),(2,'Wordify','nbm4901931387yx','ml40','Greensboro','New York',101502),(3,'Vipe','sge8004402980wk','ow66','Houston','Florida',101503),(4,'Photofeed','fqz9375635500qw','fo36','Saint Petersburg','Massachusetts',101504),(5,'Yozio','vov9227362342hn','jl41','Buffalo','Georgia',101505),(6,'Feedfish','tpk4659145528cg','mh90','Indianapolis','Oklahoma',102501),(7,'Skinder','ssg4937584344hj','qk95','Katy','Maryland',102502),(8,'Skyble','xlp1044417984jl','td01','Loretto','California',102503),(9,'Aivee','ias1088986575ba','zp52','Hialeah','New York',102504),(10,'Mynte','aen5251330026vn','dh91','Santa Rosa','Florida',102505),(11,'Skyndu','rci9370475625uq','ct97','Washington','Massachusetts',103501),(12,'Devpoint','wot1206743924mw','oq39','Spring','Georgia',103502),(13,'Oyoloo','ton5761219674lc','hy24','Lexington','Oklahoma',103503),(14,'Voolia','xqj1739664127px','vq71','Detroit','Maryland',103504),(15,'Tekfly','fuq5167009775na','ae61','Delray Beach','California',103505),(16,'Bluejam','kcg4938607227op','rj13','Cleveland','New York',104501),(17,'Meeveo','soq4680723095vu','qp91','Columbia','Florida',104502),(18,'Realcube','npn7766800149qz','la63','jamaica','Massachusetts',104503),(19,'Muxo','dfr6131326662sc','yj75','Glendale','Georgia',104504),(20,'Lazzy','skw9999277422yu','on48','Tucson','Oklahoma',104505);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
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
