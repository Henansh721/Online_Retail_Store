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
-- Table structure for table `customercare`
--

DROP TABLE IF EXISTS `customercare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercare` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Houseno` varchar(20) NOT NULL,
  `CityorVillage` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `PinCode` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercare`
--

LOCK TABLES `customercare` WRITE;
/*!40000 ALTER TABLE `customercare` DISABLE KEYS */;
INSERT INTO `customercare` VALUES (1,'Gordan','McGrann','Female','gmcgrann0@google.de','j832','Albuquerque','California',101501),(2,'Adriane','Igoe','Female','aigoe1@si.edu','i301','Greensboro','New York',101502),(3,'Frans','Kleinstern','Male','fkleinstern2@soup.io','z213','Houston','Florida',101503),(4,'Vinita','Garrand','Male','vgarrand3@bloglovin.com','f761','Saint Petersburg','Massachusetts',101504),(5,'Craig','Gowman','Male','cgowman4@squarespace.com','f213','Buffalo','Georgia',101505),(6,'Cordy','Blyde','Female','cblyde5@cdbaby.com','f594','Indianapolis','Oklahoma',102501),(7,'Brandy','Durston','Male','bdurston6@sciencedaily.com','q976','Katy','Maryland',102502),(8,'Pieter','Sultan','Female','psultan7@gnu.org','h840','Loretto','California',102503),(9,'Jared','Joicey','Male','jjoicey8@redcross.org','l212','Hialeah','New York',102504),(10,'Anetta','Fulle','Bigender','afulle9@nature.com','r566','Santa Rosa','Florida',102505),(11,'Claiborn','Ealam','Female','cealama@dmoz.org','q869','Washington','Massachusetts',103501),(12,'Bethanne','Neath','Male','bneathb@blog.com','r256','Spring','Georgia',103502),(13,'Jerald','Conti','Female','jcontic@businessinsider.com','y375','Lexington','Oklahoma',103503),(14,'Johnath','Pusey','Female','jpuseyd@youtu.be','h011','Detroit','Maryland',103504),(15,'Myrtia','Putman','Female','mputmane@newyorker.com','z686','Delray Beach','California',103505),(16,'Nap','Glaisner','Male','nglaisnerf@lulu.com','w957','Cleveland','New York',104501),(17,'Gabbey','Walkden','Male','gwalkdeng@chron.com','s795','Columbia','Florida',104502),(18,'Cordelia','de Marco','Female','cdemarcoh@wordpress.com','b716','jamaica','Massachusetts',104503),(19,'Jeniffer','Mates','Male','jmatesi@miitbeian.gov.cn','m162','Glendale','Georgia',104504),(20,'Solomon','Haysham','Female','shayshamj@elegantthemes.com','l200','Tucson','Oklahoma',104505),(21,'Aaren','Meiklejohn','Male','ameiklejohnk@loc.gov','u395','Jefferson City','Maryland',105501),(22,'Inness','Belson','Male','ibelsonl@mashable.com','t425','Cincinnati','California',105502),(23,'Ada','Welfair','Male','awelfairm@smugmug.com','z780','Bronx','New York',105503),(24,'Raymund','Morey','Female','rmoreyn@loc.gov','v573','Albany','Florida',105504),(25,'Von','Mowson','Female','vmowsono@omniture.com','i065','Lincoln','Massachusetts',105505),(26,'Ramon','Scanterbury','Male','rscanterburyp@pen.io','u364','Newark','Georgia',106501),(27,'Kyle','Largen','Polygender','klargenq@samsung.com','i026','Augusta','Oklahoma',106502),(28,'Clarita','Lorraine','Female','clorrainer@woothemes.com','p713','Montgomery','Maryland',106503),(29,'Rufus','Fouldes','Female','rfouldess@dmoz.org','d232','Independence','California',106504),(30,'Silvie','Petrillo','Male','spetrillot@telegraph.co.uk','q464','maha','New York',106505),(31,'Barnabas','Demer','Male','bdemeru@telegraph.co.uk','k780','Memphis','Florida',107501),(32,'Shirley','McGonigle','Non-binary','smcgoniglev@ustream.tv','e812','Fort Worth','Massachusetts',107502),(33,'Maureene','Prys','Male','mprysw@stanford.edu','t903','Billings','Georgia',107503),(34,'Domingo','Eaddy','Male','deaddyx@ezinearticles.com','w932','Amarill','Oklahoma',107504),(35,'Roda','Charrett','Female','rcharretty@seattletimes.com','l165','rietta','Maryland',107505);
/*!40000 ALTER TABLE `customercare` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 13:47:19
