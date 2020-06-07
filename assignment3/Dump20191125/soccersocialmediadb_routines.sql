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
-- Temporary view structure for view `usersatmeetup`
--

DROP TABLE IF EXISTS `usersatmeetup`;
/*!50001 DROP VIEW IF EXISTS `usersatmeetup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usersatmeetup` AS SELECT 
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `popularteams`
--

DROP TABLE IF EXISTS `popularteams`;
/*!50001 DROP VIEW IF EXISTS `popularteams`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popularteams` AS SELECT 
 1 AS `team`,
 1 AS `fans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `teaminfoallianzarena`
--

DROP TABLE IF EXISTS `teaminfoallianzarena`;
/*!50001 DROP VIEW IF EXISTS `teaminfoallianzarena`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teaminfoallianzarena` AS SELECT 
 1 AS `teamName`,
 1 AS `country`,
 1 AS `stadiumName`,
 1 AS `rivalName`,
 1 AS `rivalLevel`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `usersatmeetup`
--

/*!50001 DROP VIEW IF EXISTS `usersatmeetup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usersatmeetup` AS select `user`.`username` AS `username` from `user` where (`user`.`favoriteTeam` = 'Liverpool') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popularteams`
--

/*!50001 DROP VIEW IF EXISTS `popularteams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popularteams` AS select `user`.`favoriteTeam` AS `team`,count(`user`.`favoriteTeam`) AS `fans` from `user` group by `user`.`favoriteTeam` order by count(`user`.`favoriteTeam`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teaminfoallianzarena`
--

/*!50001 DROP VIEW IF EXISTS `teaminfoallianzarena`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teaminfoallianzarena` AS select `teamandstadium`.`teamName` AS `teamName`,`teamandstadium`.`country` AS `country`,`teamandstadium`.`stadiumName` AS `stadiumName`,`teamandstadium`.`rivalName` AS `rivalName`,`teamandstadium`.`rivalLevel` AS `rivalLevel` from `teamandstadium` where (`teamandstadium`.`teamName` = (select `teamandstadium`.`teamName` from `teamandstadium` where (`teamandstadium`.`stadiumName` = (select `stadium`.`stadiumName` from `stadium` where (`stadium`.`stadiumName` = 'Allianz Arena'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25  2:37:30
