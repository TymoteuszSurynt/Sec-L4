-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bankapp
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receiver_address` varchar(200) DEFAULT NULL,
  `receiver_account_number` varchar(26) NOT NULL,
  `receiver_name` varchar(150) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(250) DEFAULT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transfers_users_id_fk` (`user_id`),
  CONSTRAINT `transfers_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
INSERT INTO `transfers` VALUES (1,1,'asdasdas asdsadasd','34901300858496698285702464','admin','2017-11-18 00:28:02','wwwww',21),(2,1,'asdasdas asdsadasd','34901300858496698285702464','admin','2017-11-18 00:30:32','aaaaa',21),(3,1,'','34901300858496698285702464','admin','2017-11-18 10:09:51','',21),(4,1,'','34901300858496698285702464','admin','2017-11-18 10:10:11','',21),(5,1,'','34901300858496698285702464','Adam Black','2017-11-18 10:11:49','',21.32),(6,1,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 10:12:22','Nowy przelew',13.45),(7,2,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 10:14:22','',34.5),(8,2,'asdasdas asdsadasd','34901300858496698285702464','admin','2017-11-18 10:27:52','',31),(9,2,'','34901300858496698285702464','Adam Kowalski','2017-11-18 10:31:05','',21.37),(10,2,'','11111111111111111111111111','admin','2017-11-18 10:41:03','',31),(11,2,'','11111111111111111111111111','Adam Kowalski','2017-11-18 10:46:48','',21),(12,2,'','11111111111111111111111111','admin','2017-11-18 10:47:49','',21),(13,2,'asdasdas asdsadasd','34901300858496698285702464','admin','2017-11-18 10:49:43','',21),(14,2,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 10:51:39','',21),(15,2,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 10:53:51','',21),(16,2,'','11111111111111111111111111','Janusz Kowalski','2017-11-18 10:54:36','',21),(17,2,'','11111111111111111111111111','Janusz Kowalski','2017-11-18 10:55:56','',21),(18,2,'','11111111111111111111111111','Janusz Kowalski','2017-11-18 10:58:28','',21),(19,2,'asdasdas asdsadasd','34901300858496698285702464','Janusz Kowalski','2017-11-18 11:20:47','',21),(20,2,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 14:31:31','',21),(21,1,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 19:07:58','',21),(22,1,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 19:08:54','',21),(23,1,'','34901300858496698285702464','Janusz Kowalski','2017-11-18 19:27:03','',21),(24,1,'asdasdas asdsadasd','34901300858496698285702464','admin','2017-11-18 19:27:50','',21),(25,1,'asdasdas asdsadasd','11111111111111111111111111','admin','2017-11-18 19:30:03','',21);
UNLOCK TABLES;

--
-- Temporary table structure for view `user_transfer_view`
--

DROP TABLE IF EXISTS `user_transfer_view`;
/*!50001 DROP VIEW IF EXISTS `user_transfer_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_transfer_view` AS SELECT 
 1 AS `id`,
 1 AS `tid`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `account_number`,
 1 AS `username`,
 1 AS `receiver_account_number`,
 1 AS `receiver_name`,
 1 AS `timestamp`,
 1 AS `amount`,
 1 AS `receiver_address`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `account_number` varchar(26) NOT NULL,
  `salt` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'admin','7405a39d3839dd5c7dfc33e2940e18568e04db95e5e8e88c6d0a93b761e13aca','Admin','Admin','Admin@wp.pl','00000000000000000000000000','aBf24fGt'),(2,'0002131416','9aea003e114be4d4d659f1ade47fea5977a722bff06565450391771f1d700a60','Anna','Kowalska','a.kowalska@gmail.com','42328898090467567546501259','ujVYGapI'),(3,'1827939159','0cb17ca2750db522eda6e2482e4065c9dbf064e90b437a051df14143676ca4ea','Billy','Herrington','billy.herrington@gmail.com','42098567053461389635839734','kUJ2gHPQ'),(4,'6501208667','a004974059d607ea1ce4144d07aafacc502c4a761bd99f5ba09d96ee0763e2b2','Emilia','Zielińska','e.zielinska@onet.pl','90355214472309222134498350','GjcERcLi'),(5,'3160552592','f0402ca7e657696a075ba75da4ef4b013cb2e9855dea73ddf1fcb0a8ba3fd86c','Julian','Król','krol.julian@o2.pl','42264415651742156740284168','e04nn5pf');
UNLOCK TABLES;

--
-- Dumping routines for database 'bankapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_transaction`(`id1`  INT, `name` VARCHAR(150), `address` VARCHAR(200), `account_number` VARCHAR(26),
                                    `amount1` DOUBLE, `title1` VARCHAR(250))
BEGIN
  START TRANSACTION;
    INSERT INTO transfers(user_id, receiver_address, receiver_account_number, receiver_name, title, amount) VALUES (id1,address,account_number,name,title1,amount1);
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `user_transfer_view`
--

/*!50001 DROP VIEW IF EXISTS `user_transfer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_transfer_view` AS select `users`.`id` AS `id`,`transfers`.`id` AS `tid`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`users`.`account_number` AS `account_number`,`users`.`username` AS `username`,`transfers`.`receiver_account_number` AS `receiver_account_number`,`transfers`.`receiver_name` AS `receiver_name`,`transfers`.`timestamp` AS `timestamp`,`transfers`.`amount` AS `amount`,`transfers`.`receiver_address` AS `receiver_address`,`transfers`.`title` AS `title` from (`users` join `transfers` on((`users`.`id` = `transfers`.`user_id`))) */;
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

-- Dump completed on 2017-11-18 20:34:50
