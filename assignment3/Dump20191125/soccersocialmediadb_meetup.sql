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
-- Table structure for table `meetup`
--

DROP TABLE IF EXISTS `meetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetup` (
  `meetupName` varchar(50) NOT NULL,
  `meetupDate` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`meetupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetup`
--

LOCK TABLES `meetup` WRITE;
/*!40000 ALTER TABLE `meetup` DISABLE KEYS */;
INSERT INTO `meetup` VALUES ('Arsenal Fan Party','2019-11-14','21:30'),('Barcelona Fan Party','2019-12-15','10:30'),('Bayern Munich Fan Party','2019-10-04','19:30'),('Chelsea Beer Garden','2019-11-27','07:30'),('Juventus Fan Party','2019-11-24','15:30'),('Liverpool Beer Garden','2019-07-21','4:00'),('Manchested United Pub Crawl','2020-02-02','5:30'),('Napoli Pizza Party','2020-03-10','11:30'),('PSG Fan Party','2020-01-07','13:30'),('Real Madrid Fan Party','2019-12-03','13:30'),('Tottenham Pub Crawl','2019-12-09','4:30');
/*!40000 ALTER TABLE `meetup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25  2:37:29
