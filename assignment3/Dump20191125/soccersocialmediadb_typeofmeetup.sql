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
-- Table structure for table `typeofmeetup`
--

DROP TABLE IF EXISTS `typeofmeetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeofmeetup` (
  `meetupType` varchar(50) NOT NULL,
  `ageLimit` int(11) DEFAULT NULL,
  `meetupCapacity` int(11) DEFAULT NULL,
  `homeTeam` varchar(50) DEFAULT NULL,
  `awayTeam` varchar(50) DEFAULT NULL,
  `meetupDate` varchar(50) DEFAULT NULL,
  `meetupName` varchar(50) NOT NULL,
  PRIMARY KEY (`meetupType`,`meetupName`),
  KEY `awayTeam` (`awayTeam`),
  KEY `homeTeam` (`homeTeam`,`awayTeam`,`meetupDate`),
  CONSTRAINT `typeofmeetup_ibfk_1` FOREIGN KEY (`homeTeam`) REFERENCES `gamematch` (`homeTeam`),
  CONSTRAINT `typeofmeetup_ibfk_2` FOREIGN KEY (`awayTeam`) REFERENCES `gamematch` (`awayTeam`),
  CONSTRAINT `typeofmeetup_ibfk_3` FOREIGN KEY (`homeTeam`, `awayTeam`, `meetupDate`) REFERENCES `gamematch` (`homeTeam`, `awayTeam`, `gameDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeofmeetup`
--

LOCK TABLES `typeofmeetup` WRITE;
/*!40000 ALTER TABLE `typeofmeetup` DISABLE KEYS */;
INSERT INTO `typeofmeetup` VALUES ('Beer Garden',21,450,'Chelsea','Manchested United','2019-11-27','Chelsea Beer Garden'),('Fan Party',12,300,'Arsenal','Tottenham','2019-11-14','Arsenal Fan Party'),('Fan Party',12,300,'Barcelona','Real Madrid','2019-12-15','Barcelona Fan Party'),('Fan Party',12,300,'Bayern Munich','Borussia Dortmund','2019-10-04','Bayern Munich Fan Party'),('Fan Party',12,300,'Juventus','Torino','2019-11-24','Juventus Fan Party'),('Fan Party',12,300,'Liverpool','Everton','2019-07-21','Liverpool Beer Garden'),('Fan Party',12,300,'PSG','Marseille','2020-01-07','PSG Fan Party'),('Fan Party',12,300,'Real Madrid','Atletico Madrid','2019-12-03','Real Madrid Fan Party'),('Pizza Party',8,400,'Napoli','Roma','2020-03-10','Napoli Pizza Party'),('Pub Crawl',21,150,'Manchester United','Manchester City','2020-02-02','Manchester United Pub Crawl'),('Pub Crawl',21,150,'Tottenham','Watford','2019-12-09','Tottenham Pub Crawl');
/*!40000 ALTER TABLE `typeofmeetup` ENABLE KEYS */;
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
