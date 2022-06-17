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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `Rating` int DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL,
  `pid` int NOT NULL,
  `uid` int NOT NULL,
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`ID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,'great quality',1,136),(5,'best packaging ever',2,157),(5,'tasty',3,111),(4,'healthy',4,84),(1,'expired product delivered',5,129),(2,'quality not up to the mark',6,87),(4,'great quality',7,171),(4,'best packaging ever',8,119),(5,'tasty',9,141),(4,'healthy',10,166),(1,'expired product delivered',11,27),(2,'quality not up to the mark',12,122),(5,'great quality',13,162),(4,'best packaging ever',14,4),(3,'tasty',15,67),(3,'healthy',16,174),(1,'expired product delivered',17,54),(2,'quality not up to the mark',18,150),(4,'great quality',19,94),(4,'best packaging ever',20,45),(5,'tasty',21,17),(4,'healthy',22,48),(1,'expired product delivered',23,100),(2,'quality not up to the mark',24,169),(5,'great quality',25,196),(5,'best packaging ever',26,8),(3,'tasty',27,155),(4,'healthy',28,173),(1,'expired product delivered',29,113),(1,'quality not up to the mark',30,183),(4,'great quality',31,46),(5,'best packaging ever',32,88),(5,'tasty',33,105),(4,'healthy',34,154),(1,'expired product delivered',35,164),(2,'quality not up to the mark',36,103),(4,'great quality',37,68),(4,'best packaging ever',38,42),(3,'tasty',39,30),(5,'healthy',40,85),(1,'expired product delivered',41,187),(2,'quality not up to the mark',42,101),(5,'great quality',43,90),(4,'best packaging ever',44,131),(4,'tasty',45,200),(4,'healthy',46,89),(1,'expired product delivered',47,104),(2,'quality not up to the mark',48,59),(1,'great quality',49,185),(4,'best packaging ever',50,112),(5,'tasty',51,96),(4,'healthy',52,142),(1,'expired product delivered',53,51),(2,'quality not up to the mark',54,110),(4,'great quality',55,82),(4,'best packaging ever',56,36),(5,'tasty',57,39),(4,'healthy',58,159),(2,'expired product delivered',59,77),(1,'quality not up to the mark',60,6),(5,'great quality',61,41),(4,'best packaging ever',62,76),(3,'tasty',63,180),(4,'healthy',64,179),(2,'expired product delivered',65,33),(1,'quality not up to the mark',66,181),(5,'great quality',67,102),(5,'best packaging ever',68,28),(5,'tasty',69,177),(5,'healthy',70,65),(2,'expired product delivered',71,69),(1,'quality not up to the mark',72,130),(4,'great quality',73,146),(3,'best packaging ever',74,184),(4,'tasty',75,107),(4,'healthy',76,165),(2,'expired product delivered',77,95),(1,'quality not up to the mark',1,25),(4,'great quality',2,132),(4,'best packaging ever',3,86),(3,'tasty',4,168),(4,'healthy',5,115),(1,'expired product delivered',6,78),(1,'quality not up to the mark',7,10),(4,'great quality',8,117),(3,'best packaging ever',9,53),(4,'tasty',10,188),(4,'healthy',11,24),(2,'expired product delivered',12,148),(1,'quality not up to the mark',13,3);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
