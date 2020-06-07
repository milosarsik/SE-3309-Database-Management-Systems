-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: soccersocialmediadb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `meetuplocation`
--

DROP TABLE IF EXISTS `meetuplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetuplocation` (
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  `meetupName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`street`,`city`,`postalCode`),
  KEY `meetupName` (`meetupName`),
  CONSTRAINT `meetuplocation_ibfk_1` FOREIGN KEY (`meetupName`) REFERENCES `meetup` (`meetupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetuplocation`
--

LOCK TABLES `meetuplocation` WRITE;
/*!40000 ALTER TABLE `meetuplocation` DISABLE KEYS */;
INSERT INTO `meetuplocation` VALUES ('28119 Orin Street','Pocohuanca','45543','Arsenal Fan Party'),('9017 Loomis Alley','Catac','854352','Barcelona Fan Party'),('9 Kensington Center','Bologna','40141','Bayern Munich Fan Party'),('796 Golden Leaf Terrace','Cahabón','16012','Chelsea Beer Garden'),('4 Maple Trail','San Benito','8423','Juventus Fan Party'),('3 Eagan Road','Loma Bonita','47450','Liverpool Beer Garden'),('92639 Kropf Circle','Poço Verde','49490-000','Manchester United Pub Crawl'),('73 Forest Dale Alley','Chifeng','34535','Napoli Pizza Party'),('0 Scofield Court','Pétange','L-8381','PSG Fan Party'),('34 Steensland Hill','Himeji','680-0301','Real Madrid Fan Party'),('379 Daystar Terrace','Apucarana','86800-000','Tottenham Pub Crawl');
/*!40000 ALTER TABLE `meetuplocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25  2:37:30
