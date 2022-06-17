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
-- Table structure for table `areadept`
--

DROP TABLE IF EXISTS `areadept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areadept` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `deptname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `scono` varchar(20) NOT NULL,
  `CityorVillage` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `PinCode` int NOT NULL,
  `Area` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areadept`
--

LOCK TABLES `areadept` WRITE;
/*!40000 ALTER TABLE `areadept` DISABLE KEYS */;
INSERT INTO `areadept` VALUES (1,'Photolist','kmackowle0@stanford.edu','y827','Albuquerque','California',101501,'Albany'),(2,'Yata','nstott1@delicious.com','a292','Greensboro','New York',101502,'Albuquerque'),(5,'Yodo','bbelz4@issuu.com','j854','Buffalo','Georgia',101505,'Amarill'),(6,'Mydo','pgoreisr5@ehow.com','s787','Indianapolis','Oklahoma',102501,'Albuquerque'),(7,'Blognation','cmckall6@cocolog-nifty.com','n344','Katy','Maryland',102502,'Lincoln'),(8,'Tagfeed','apentony7@surveymonkey.com','j289','Loretto','California',102503,'Newark'),(9,'Youopia','dkharchinski8@typepad.com','r439','Hialeah','New York',102504,'Lexington'),(10,'Leexo','mnesbitt9@lycos.com','y933','Santa Rosa','Florida',102505,'Buffalo'),(11,'Centimia','wsortona@unc.edu','p711','Washington','Massachusetts',103501,'Columbia'),(12,'Katz','vtyceb@shutterfly.com','a335','Spring','Georgia',103502,'Newark'),(13,'Skippad','gveartc@unicef.org','y832','Lexington','Oklahoma',103503,'Lincoln'),(14,'Tanoodle','hlambdeand@state.gov','w189','Detroit','Maryland',103504,'Hialeah'),(15,'Cogibox','nbonye@alibaba.com','u166','Delray Beach','California',103505,'Jefferson City'),(16,'Vidoo','kanthamf@newsvine.com','p985','Cleveland','New York',104501,'Fort Worth'),(17,'Vimbo','cbrantzeng@epa.gov','o554','Columbia','Florida',104502,'Albuquerque'),(18,'Gevee','htregonah@virginia.edu','r019','jamaica','Massachusetts',104503,'Cincinnati'),(19,'Zoovu','bslayfordi@angelfire.com','l090','Glendale','Georgia',104504,'Fort Worth'),(20,'Browsetype','rbrimhamj@flavors.me','w845','Tucson','Oklahoma',104505,'Delray Beach'),(21,'Jaxbean','gimesenk@apache.org','z828','Jefferson City','Maryland',105501,'Indianapolis'),(22,'Fivebridge','mpressdeel@techcrunch.com','b761','Cincinnati','California',105502,'Amarill'),(23,'Eamia','evanderhovenm@twitter.com','t599','Bronx','New York',105503,'jamaica'),(24,'Topiclounge','rlindblomn@soundcloud.com','y726','Albany','Florida',105504,'rietta'),(25,'Youbridge','kmantono@cisco.com','f898','Lincoln','Massachusetts',105505,'Cleveland'),(26,'Quimm','sgawnep@deviantart.com','p244','Newark','Georgia',106501,'Cincinnati'),(27,'Eayo','hharvieq@washingtonpost.com','z584','Augusta','Oklahoma',106502,'Indianapolis'),(28,'Tagpad','caeryr@ovh.net','f822','Montgomery','Maryland',106503,'Albuquerque'),(29,'Geba','cepslys@ucla.edu','l359','Independence','California',106504,'Albany'),(30,'Realblab','kbainet@businessinsider.com','x061','maha','New York',106505,'Washington'),(31,'Tazzy','rallottu@hatena.ne.jp','q390','Memphis','Florida',107501,'Cleveland'),(32,'Edgeify','lbenechv@hibu.com','h522','Fort Worth','Massachusetts',107502,'Katy'),(33,'Gabvine','dfitzsimonw@phoca.cz','a655','Billings','Georgia',107503,'Greensboro'),(34,'Bubblemix','rgarviex@myspace.com','v105','Amarill','Oklahoma',107504,'Memphis'),(35,'Pixonyx','adilworthy@bandcamp.com','w577','rietta','Maryland',107505,'Memphis');
/*!40000 ALTER TABLE `areadept` ENABLE KEYS */;
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
