CREATE DATABASE  IF NOT EXISTS `gimmepic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gimmepic`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: gimmepic
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `app_queries`
--

DROP TABLE IF EXISTS `app_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_queries`
--

LOCK TABLES `app_queries` WRITE;
/*!40000 ALTER TABLE `app_queries` DISABLE KEYS */;
INSERT INTO `app_queries` VALUES (1,'word','game','{\"total_pages\":1072,\"total\":16077,\"0\":{\"image_id\":\"Yc409-8V2pU\",\"image_description\":\"green, red, and yellow dartboard\",\"user_id\":\"OvQxVC3Gzdc\",\"user_name\":\"Marc\",\"user_last_name\":\"A\",\"user_location\":\"Pennsylvania\",\"instagram_username\":null},\"1\":{\"image_id\":\"TL5Vy1IM-uA\",\"image_description\":\"blue building block lot\",\"user_id\":\"9SWqqMsaZJ4\",\"user_name\":\"Iker\",\"user_last_name\":\"Urteaga\",\"user_location\":\"Donostia\",\"instagram_username\":\"iurte\"},\"2\":{\"image_id\":\"n25oD0d4oiI\",\"image_description\":\"grayscale photography of chess board game\",\"user_id\":\"ScGfk-8lW0M\",\"user_name\":\"rawpixel\",\"user_last_name\":null,\"user_location\":null,\"instagram_username\":\"byrawpixel\"},\"3\":{\"image_id\":\"FihBUk245ys\",\"image_description\":\"brown and black chess board on brown wooden table\",\"user_id\":\"buplzvuG2JU\",\"user_name\":\"Alex\",\"user_last_name\":\"Holyoake\",\"user_location\":\"Wolverhampton, England\",\"instagram_username\":\"_therealalex_\"},\"4\":{\"image_id\":\"gUpbcU58B70\",\"image_description\":\"person shaking hands on top of chessboard\",\"user_id\":\"ScGfk-8lW0M\",\"user_name\":\"rawpixel\",\"user_last_name\":null,\"user_location\":null,\"instagram_username\":\"byrawpixel\"},\"5\":{\"image_id\":\"43LcbfI-tok\",\"image_description\":\"person holding fan of playing cards\",\"user_id\":\"SZrU113UcpY\",\"user_name\":\"Alessandro\",\"user_last_name\":\"Bogliari\",\"user_location\":null,\"instagram_username\":\"alexeidos\"},\"6\":{\"image_id\":\"9pUKzChp0wQ\",\"image_description\":\"person playing chess\",\"user_id\":\"ScGfk-8lW0M\",\"user_name\":\"rawpixel\",\"user_last_name\":null,\"user_location\":null,\"instagram_username\":\"byrawpixel\"},\"7\":{\"image_id\":\"4UZBd5Zw56U\",\"image_description\":\"white and black area rug\",\"user_id\":\"-dPh7PQ6zcM\",\"user_name\":\"Denise\",\"user_last_name\":\"Jans\",\"user_location\":\"Auckland\",\"instagram_username\":\"dmjdenise\"},\"8\":{\"image_id\":\"vBpd607jLXs\",\"image_description\":\"person sitting near poker chips\",\"user_id\":\"vm7k_1iG2Jw\",\"user_name\":\"Chris\",\"user_last_name\":\"Liverani\",\"user_location\":\"Montreal, QC\",\"instagram_username\":null},\"9\":{\"image_id\":\"T35fIhhUK1c\",\"image_description\":null,\"user_id\":\"u6wK3fKo1ek\",\"user_name\":\"Sheldon\",\"user_last_name\":\"Nunes\",\"user_location\":\"Auckland, New Zealand\",\"instagram_username\":\"sheldon.nunes.photography\"},\"10\":{\"image_id\":\"EvGwPnK6apM\",\"image_description\":\"queen and king chess pieces on board\",\"user_id\":\"EqNzOOw_bKQ\",\"user_name\":\"Shirly\",\"user_last_name\":\"Niv Marton\",\"user_location\":null,\"instagram_username\":\"shirlymarton\"},\"11\":{\"image_id\":\"jD6eRgBpE0c\",\"image_description\":\"two person playing chess on park\",\"user_id\":\"xRQG0dqFf2E\",\"user_name\":\"AP x 90\",\"user_last_name\":null,\"user_location\":\"Toronto, Canada\",\"instagram_username\":null},\"12\":{\"image_id\":\"A7uCrrk5FG0\",\"image_description\":\"dart on dartboard\",\"user_id\":\"oj1g69gCyF8\",\"user_name\":\"Imke\",\"user_last_name\":\"van Loon-Martens\",\"user_location\":null,\"instagram_username\":\"imkemar\"},\"13\":{\"image_id\":\"sXN_iWRc214\",\"image_description\":\"person writing on music score sheet\",\"user_id\":\"ScGfk-8lW0M\",\"user_name\":\"rawpixel\",\"user_last_name\":null,\"user_location\":null,\"instagram_username\":\"byrawpixel\"},\"14\":{\"image_id\":\"oT-XbATcoTQ\",\"image_description\":\"person playing poker\",\"user_id\":\"4HraACy4gPg\",\"user_name\":\"Micha\\u0142\",\"user_last_name\":\"Parzuchowski\",\"user_location\":\"Gda\\u0144sk, Poland\",\"instagram_username\":\"m.parzuchowski\"}}','2019-03-04 11:34:10','2019-03-04 11:34:10'),(2,'id','43LcbfI-tok','[{\"id\":\"43LcbfI-tok\",\"description\":\"person holding fan of playing cards\",\"user_id\":\"SZrU113UcpY\",\"user_first_name\":\"Alessandro\",\"user_last_name\":\"Bogliari\",\"user_location\":null,\"instagram_username\":\"alexeidos\",\"twitter_username\":\"alexeidos\"}]','2019-03-04 11:34:12','2019-03-04 11:34:12');
/*!40000 ALTER TABLE `app_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credentials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `credentials_client_id_unique` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (1,'rocketApi','a2ebc1ed536e0ed8dbaf55853b951485cf7f18dfa309e96a4fa429e6e9406d40','1',NULL,NULL);
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (17,'2019_03_02_152917_create_app_queries_table',1),(18,'2019_03_03_064236_create_credentials_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-04 17:46:13
