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
-- Table structure for table `deliverydept`
--

DROP TABLE IF EXISTS `deliverydept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverydept` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Dname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `scono` varchar(20) NOT NULL,
  `CityorVillage` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `PinCode` bigint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverydept`
--

LOCK TABLES `deliverydept` WRITE;
/*!40000 ALTER TABLE `deliverydept` DISABLE KEYS */;
INSERT INTO `deliverydept` VALUES (1,'Moen-Schiller','rrankine0@ucoz.ru','r923','Albuquerque','California',101501),(2,'Altenwerth, Lind and Nitzsche','jblemings1@spiegel.de','q126','Greensboro','New York',101502),(3,'Crooks and Sons','noldale2@cbsnews.com','t149','Houston','Florida',101503),(4,'Lesch-Mueller','nrice3@wikia.com','q183','Saint Petersburg','Massachusetts',101504),(5,'Beahan Group','pmasham4@mlb.com','u495','Buffalo','Georgia',101505),(6,'Nikolaus and Sons','rkloster5@chron.com','h593','Indianapolis','Oklahoma',102501),(7,'Daugherty, Marvin and Kautzer','phassur6@dyndns.org','c816','Katy','Maryland',102502),(8,'Mills, Stehr and Rodriguez','hroubay7@woothemes.com','f938','Loretto','California',102503),(9,'Leannon-Ullrich','wablewhite8@tripadvisor.com','o703','Hialeah','New York',102504),(10,'Connelly and Sons','twybern9@virginia.edu','s021','Santa Rosa','Florida',102505),(11,'Price, Weissnat and Deckow','adevona@clickbank.net','i105','Washington','Massachusetts',103501),(12,'Crona-Pollich','pbartlettb@ftc.gov','l955','Spring','Georgia',103502),(13,'Greenholt, Hammes and Homenick','knergerc@de.vu','f551','Lexington','Oklahoma',103503),(14,'Lesch, Gottlieb and Gorczany','lyushind@virginia.edu','b010','Detroit','Maryland',103504),(15,'Krajcik, Konopelski and Daugherty','mantonignettie@msu.edu','b832','Delray Beach','California',103505),(16,'Kunze Inc','aelcottf@squarespace.com','c617','Cleveland','New York',104501),(17,'Gulgowski Group','mgoranovg@sbwire.com','c673','Columbia','Florida',104502),(18,'Russel, Schroeder and Ankunding','eolenichevh@google.es','h715','jamaica','Massachusetts',104503),(19,'Reichert-Kertzmann','ddurrandi@yolasite.com','z027','Glendale','Georgia',104504),(20,'Kemmer Inc','abethunej@wix.com','g447','Tucson','Oklahoma',104505),(21,'Blick, Auer and Kemmer','krichterk@meetup.com','w670','Jefferson City','Maryland',105501),(22,'Purdy-Romaguera','rgunnelll@mlb.com','m586','Cincinnati','California',105502),(23,'Fahey, Gleason and Mohr','mfoskettm@xinhuanet.com','f500','Bronx','New York',105503),(24,'Stokes-Bashirian','mbevern@cnn.com','l971','Albany','Florida',105504),(25,'McGlynn-Jenkins','fmathewso@unblog.fr','j323','Lincoln','Massachusetts',105505),(26,'Balistreri-Braun','caucoatep@seattletimes.com','r366','Newark','Georgia',106501),(27,'Beer-Mohr','rvanderkruisq@ucsd.edu','n499','Augusta','Oklahoma',106502),(28,'Tromp and Sons','gmokesr@constantcontact.com','p630','Montgomery','Maryland',106503),(29,'Rolfson Inc','npaladinis@dailymail.co.uk','i902','Independence','California',106504),(30,'Funk-Collins','wgriert@japanpost.jp','v838','maha','New York',106505),(31,'Zemlak-Gleichner','obottbyu@godaddy.com','i398','Memphis','Florida',107501),(32,'Little-Monahan','mhancillv@yahoo.com','q610','Fort Worth','Massachusetts',107502),(33,'Tillman, Beatty and Cartwright','skretschmerw@cnbc.com','z070','Billings','Georgia',107503),(34,'Parisian-Lowe','jglosterx@omniture.com','c081','Amarill','Oklahoma',107504),(35,'Ankunding-Leannon','lmcrobby@craigslist.org','q868','rietta','Maryland',107505);
/*!40000 ALTER TABLE `deliverydept` ENABLE KEYS */;
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
