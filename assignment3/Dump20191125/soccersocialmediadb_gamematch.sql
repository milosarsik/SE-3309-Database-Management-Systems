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
-- Table structure for table `gamematch`
--

DROP TABLE IF EXISTS `gamematch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamematch` (
  `homeTeam` varchar(50) NOT NULL,
  `awayTeam` varchar(50) NOT NULL,
  `gameDate` varchar(50) NOT NULL,
  `importanceLevel` int(11) DEFAULT NULL,
  `stadiumName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`homeTeam`,`awayTeam`,`gameDate`),
  KEY `awayTeam` (`awayTeam`),
  KEY `stadiumName` (`stadiumName`),
  CONSTRAINT `gamematch_ibfk_1` FOREIGN KEY (`homeTeam`) REFERENCES `teamandstadium` (`teamName`),
  CONSTRAINT `gamematch_ibfk_2` FOREIGN KEY (`awayTeam`) REFERENCES `teamandstadium` (`teamName`),
  CONSTRAINT `gamematch_ibfk_3` FOREIGN KEY (`stadiumName`) REFERENCES `stadium` (`stadiumName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamematch`
--

LOCK TABLES `gamematch` WRITE;
/*!40000 ALTER TABLE `gamematch` DISABLE KEYS */;
INSERT INTO `gamematch` VALUES ('Arsenal','Tottenham','2019-11-14',8,'Emirates Stadium'),('Barcelona','Real Madrid','2019-12-15',10,'Camp Nou'),('Chelsea','Manchested United','2019-11-27',10,'Stamford Bridge'),('Juventus','Torino','2019-11-24',10,'Allianz Stadium'),('Liverpool','Everton','2019-07-21',6,'Anfield'),('Napoli','Roma','2020-03-10',7,'Stadio San Paolo'),('PSG','Marseille','2020-01-07',5,'Parc de Princes');
/*!40000 ALTER TABLE `gamematch` ENABLE KEYS */;
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
