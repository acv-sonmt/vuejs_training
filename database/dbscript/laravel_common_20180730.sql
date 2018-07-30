-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.3.144    Database: laravel_common
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `catelory`
--

DROP TABLE IF EXISTS `catelory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catelory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catelory`
--

LOCK TABLES `catelory` WRITE;
/*!40000 ALTER TABLE `catelory` DISABLE KEYS */;
INSERT INTO `catelory` VALUES (1,'Root',1,40,'HJHJ',NULL),(215,'E',38,39,NULL,NULL),(216,'D',36,37,NULL,NULL),(217,'Products',28,35,NULL,NULL),(218,'d',31,34,NULL,NULL),(219,'Abouts',24,27,NULL,NULL),(220,'dsdsdsd',29,30,NULL,NULL),(232,'d15',32,33,NULL,NULL),(301,'hoà',25,26,NULL,NULL),(387,'a',22,23,NULL,NULL),(388,'tghgh',18,21,NULL,NULL),(450,'tt',19,20,NULL,NULL),(451,'iy',4,5,NULL,NULL),(454,'KL',2,3,'fdfd',NULL);
/*!40000 ALTER TABLE `catelory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('163869b6b947500d7ef5ff31bcf7965cc2ee3907da268a3373124a02650787627d1325a80869cce4',2,15,'By Login from user:2','[]',0,'2018-07-11 03:02:01','2018-07-11 03:02:01','2019-07-11 10:02:01'),('2e4d9bf14d445d682a9bcd8fc07ebe3c10cbd0be7b7f6b9a5c2ffd16efaf125ab6614f559f80ffb3',1,14,'1','[]',0,'2018-07-11 02:58:42','2018-07-11 02:58:42','2019-07-11 09:58:42'),('493468ac212b24602675398041a0d3d5f96f4a6b4f3dadf48997e4585943b812be54084f0c627df2',1,15,'By Login from user:1','[]',0,'2018-07-17 01:55:28','2018-07-17 01:55:28','2019-07-17 08:55:28'),('49423b0ef8c2fe738bf836c799ce8c34cccb5887d538e15a315d6f31c6241ea820357f4ef6273d92',1,15,'By Login from user:1','[]',0,'2018-07-17 02:01:56','2018-07-17 02:01:56','2019-07-17 09:01:56'),('584fdbbc6f53a9e242071a62157814f6c3436fa286845e40b3970e99004ad66ba22ad1830d401ec7',45,15,'Party specific token','[]',0,'2018-07-11 03:17:52','2018-07-11 03:17:52','2019-07-11 10:17:52'),('73fbdcefd261fe1135ba9c3f8e01b429a70c3fcdabedb5df83b8befeb18c9afcca399a335ad4162c',46,15,'Party specific token','[]',0,'2018-07-11 03:28:44','2018-07-11 03:28:44','2019-07-11 10:28:44'),('89b9afbbd7527feb7be1c1edc7e73e93f6525f7046cdc3cec9a826971e0d69bd5f71d427f43b8002',43,15,'Party specific token','[]',0,'2018-07-11 02:59:56','2018-07-11 02:59:56','2019-07-11 09:59:56'),('e2aa9b395395eb6e5e3a3300995897659cee2b18a971a51c1c12b55c515c13aa77e9bfc0cc2c69a6',42,14,'Party specific token','[]',0,'2018-07-11 02:58:21','2018-07-11 02:58:21','2019-07-11 09:58:21'),('ee2d47ba14c317b697cb94a2d766e2a4e0449ee713088da1a47512da49531f2d1ec3a636ae18e78d',2,15,'2','[]',0,'2018-07-11 03:00:27','2018-07-11 03:00:27','2019-07-11 10:00:27'),('eff97d77c5c6852da2a18f770b82d3cc427c81c3a9a05f7a0f76ccbe8ee6533e0fc44ed45109d5c8',46,15,'Party specific token','[]',0,'2018-07-11 03:25:14','2018-07-11 03:25:14','2019-07-11 10:25:14');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (9,NULL,'Laravel common Personal Access Client','mvXuqeHfIXBkHk111BH5NOUY5RoxWtr07uBYN7YY','http://localhost',1,0,0,'2018-07-09 03:03:11','2018-07-09 03:03:11'),(10,NULL,'Laravel common Password Grant Client','nPHDTSREpU4L51c5i5JMP6YNhwuqfqD5WyOSoyz8','http://localhost',0,1,0,'2018-07-09 03:03:11','2018-07-09 03:03:11'),(14,NULL,'Personal access client','FkiRhjzmGmurgL6EJiXyNTqUqHDYA30fGy8E4nd9','http://localhost',1,0,0,'2018-07-11 02:57:46','2018-07-11 02:57:46'),(15,NULL,'Personal client 2','Do9MtFI78X5kT1hfyztHlqCHpQivUXCmfRZus8iA','http://localhost',1,0,0,'2018-07-11 02:59:47','2018-07-11 02:59:47');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-07-08 21:48:17','2018-07-08 21:48:17'),(2,4,'2018-07-08 23:43:36','2018-07-08 23:43:36'),(3,7,'2018-07-09 03:00:30','2018-07-09 03:00:30'),(4,9,'2018-07-09 03:03:11','2018-07-09 03:03:11'),(5,11,'2018-07-11 01:01:48','2018-07-11 01:01:48'),(6,12,'2018-07-11 01:02:35','2018-07-11 01:02:35'),(7,13,'2018-07-11 01:04:30','2018-07-11 01:04:30'),(8,14,'2018-07-11 02:57:46','2018-07-11 02:57:46'),(9,15,'2018-07-11 02:59:47','2018-07-11 02:59:47');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_languages`
--

DROP TABLE IF EXISTS `sys_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_languages` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_languages`
--

LOCK TABLES `sys_languages` WRITE;
/*!40000 ALTER TABLE `sys_languages` DISABLE KEYS */;
INSERT INTO `sys_languages` VALUES (1,'jp','Japanese',NULL),(2,'en','English',NULL),(3,'fr','France',NULL);
/*!40000 ALTER TABLE `sys_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_login_his`
--

DROP TABLE IF EXISTS `sys_login_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_login_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loged_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_login_his`
--

LOCK TABLES `sys_login_his` WRITE;
/*!40000 ALTER TABLE `sys_login_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_login_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_modules`
--

DROP TABLE IF EXISTS `sys_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  `is_skip_acl` tinyint(4) DEFAULT NULL COMMENT 'skips show acl in form, but not affect to action check acl',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_modules`
--

LOCK TABLES `sys_modules` WRITE;
/*!40000 ALTER TABLE `sys_modules` DISABLE KEYS */;
INSERT INTO `sys_modules` VALUES (1,'dev','dev',1,1),(2,'laravel','laravel',2,0),(3,'auth','auth',3,0),(4,'acl','acl',4,0),(5,'api','api',5,0),(6,'backend','backend',6,0),(7,'frontend','frontend',7,0);
/*!40000 ALTER TABLE `sys_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions`
--

DROP TABLE IF EXISTS `sys_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `permission_value` int(11) DEFAULT NULL,
  `permission_name` varchar(45) DEFAULT NULL,
  `descriptions` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_value_UNIQUE` (`permission_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions`
--

LOCK TABLES `sys_permissions` WRITE;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_map_screen`
--

DROP TABLE IF EXISTS `sys_role_map_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_map_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_value` int(11) DEFAULT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_map_screen`
--

LOCK TABLES `sys_role_map_screen` WRITE;
/*!40000 ALTER TABLE `sys_role_map_screen` DISABLE KEYS */;
INSERT INTO `sys_role_map_screen` VALUES (1,0,1,1),(2,0,2,1),(3,0,3,1),(4,0,8,1),(5,0,4,1),(6,0,5,1),(7,0,6,1),(8,0,7,1),(9,0,3,1),(10,0,8,1),(11,0,9,1),(12,0,10,1),(13,0,11,1),(14,0,12,1),(15,0,13,1),(16,0,14,1),(17,0,15,1),(18,0,16,1),(19,0,17,1),(20,0,18,1),(21,0,19,1),(22,0,20,1),(23,0,21,1),(24,0,22,1),(25,0,23,1),(26,0,24,1),(27,0,25,1),(28,0,26,1),(29,0,27,1),(30,0,28,1),(31,0,29,1),(32,0,30,1),(33,0,31,1),(34,0,32,1),(35,0,33,1),(36,0,34,1),(37,0,35,1),(38,0,36,1),(39,0,37,1),(40,0,38,1),(41,0,39,1),(42,0,40,1),(43,0,41,1),(44,0,42,1),(45,0,43,1),(46,0,44,1),(47,0,45,1),(48,0,46,1),(49,0,47,1),(50,0,48,1),(51,0,49,1),(52,0,50,1),(53,0,51,1),(54,0,52,1),(55,0,53,1),(56,0,54,1),(57,0,55,1),(58,0,56,1),(59,0,57,1),(60,0,58,1),(61,0,59,1),(62,0,60,1),(63,0,61,1),(64,0,62,1),(65,0,63,1),(66,0,64,1),(67,0,65,1),(68,0,66,1),(69,0,67,1),(70,0,68,1),(71,0,69,1),(72,0,70,1),(73,0,71,1),(74,0,72,1),(75,0,73,1),(76,0,74,1),(77,0,75,1),(78,0,76,1),(79,0,77,1),(80,0,78,1),(81,0,79,1),(82,0,80,1),(83,0,81,1),(84,0,82,1),(85,1,1,1),(86,1,2,1),(87,1,3,1),(88,1,8,1),(89,1,4,1),(90,1,5,1),(91,1,6,1),(92,1,7,1),(93,1,3,1),(94,1,8,1),(95,1,9,1),(96,1,10,1),(97,1,11,1),(98,1,12,1),(99,1,13,1),(100,1,14,1),(101,1,15,1),(102,1,16,1),(103,1,17,1),(104,1,18,1),(105,1,19,1),(106,1,20,1),(107,1,21,1),(108,1,22,1),(109,1,23,1),(110,1,24,1),(111,1,25,1),(112,1,26,1),(113,1,27,1),(114,1,28,1),(115,1,29,1),(116,1,30,1),(117,1,31,1),(118,1,32,1),(119,1,33,1),(120,1,34,1),(121,1,35,1),(122,1,36,1),(123,1,37,1),(124,1,38,1),(125,1,39,1),(126,1,40,1),(127,1,41,1),(128,1,42,1),(129,1,43,1),(130,1,44,1),(131,1,45,1),(132,1,46,1),(133,1,47,1),(134,1,48,1),(135,1,49,1),(136,1,50,1),(137,1,51,1),(138,1,52,1),(139,1,53,1),(140,1,54,1),(141,1,55,1),(142,1,56,1),(143,1,57,1),(144,1,58,1),(145,1,59,1),(146,1,60,1),(147,1,61,1),(148,1,62,1),(149,1,63,1),(150,1,64,1),(151,1,65,1),(152,1,66,1),(153,1,67,1),(154,1,68,1),(155,1,69,1),(156,1,70,1),(157,1,71,1),(158,1,72,1),(159,1,73,1),(160,1,74,1),(161,1,75,1),(162,1,76,1),(163,1,77,1),(164,1,78,1),(165,1,79,1),(166,1,80,1),(167,1,81,1),(168,1,82,1),(169,2,1,1),(170,2,2,1),(171,2,3,1),(172,2,8,1),(173,2,4,1),(174,2,5,1),(175,2,6,1),(176,2,7,1),(177,2,3,1),(178,2,8,1),(179,2,9,1),(180,2,10,1),(181,2,11,1),(182,2,12,1),(183,2,13,1),(184,2,14,1),(185,2,15,1),(186,2,16,1),(187,2,17,1),(188,2,18,1),(189,2,19,1),(190,2,20,1),(191,2,21,1),(192,2,22,1),(193,2,23,1),(194,2,24,1),(195,2,25,1),(196,2,26,1),(197,2,27,1),(198,2,28,1),(199,2,29,1),(200,2,30,1),(201,2,31,1),(202,2,32,1),(203,2,33,1),(204,2,34,1),(205,2,35,1),(206,2,36,1),(207,2,37,1),(208,2,38,1),(209,2,39,1),(210,2,40,1),(211,2,41,1),(212,2,42,1),(213,2,43,1),(214,2,44,1),(215,2,45,1),(216,2,46,1),(217,2,47,1),(218,2,48,1),(219,2,49,1),(220,2,50,1),(221,2,51,1),(222,2,52,1),(223,2,53,1),(224,2,54,1),(225,2,55,1),(226,2,56,1),(227,2,57,1),(228,2,58,1),(229,2,59,1),(230,2,60,1),(231,2,61,1),(232,2,62,1),(233,2,63,1),(234,2,64,1),(235,2,65,1),(236,2,66,1),(237,2,67,1),(238,2,68,1),(239,2,69,1),(240,2,70,1),(241,2,71,1),(242,2,72,1),(243,2,73,1),(244,2,74,1),(245,2,75,1),(246,2,76,1),(247,2,77,1),(248,2,78,1),(249,2,79,1),(250,2,80,1),(251,2,81,1),(252,2,82,1),(253,3,1,1),(254,3,2,1),(255,3,3,1),(256,3,8,1),(257,3,4,1),(258,3,5,1),(259,3,6,1),(260,3,7,1),(261,3,3,1),(262,3,8,1),(263,3,9,1),(264,3,10,1),(265,3,11,1),(266,3,12,1),(267,3,13,1),(268,3,14,1),(269,3,15,1),(270,3,16,1),(271,3,17,1),(272,3,18,1),(273,3,19,1),(274,3,20,1),(275,3,21,1),(276,3,22,1),(277,3,23,1),(278,3,24,1),(279,3,25,1),(280,3,26,1),(281,3,27,1),(282,3,28,1),(283,3,29,1),(284,3,30,1),(285,3,31,1),(286,3,32,1),(287,3,33,1),(288,3,34,1),(289,3,35,1),(290,3,36,1),(291,3,37,1),(292,3,38,1),(293,3,39,1),(294,3,40,1),(295,3,41,1),(296,3,42,1),(297,3,43,1),(298,3,44,1),(299,3,45,1),(300,3,46,1),(301,3,47,1),(302,3,48,1),(303,3,49,1),(304,3,50,1),(305,3,51,1),(306,3,52,1),(307,3,53,1),(308,3,54,1),(309,3,55,1),(310,3,56,1),(311,3,57,1),(312,3,58,1),(313,3,59,1),(314,3,60,1),(315,3,61,1),(316,3,62,1),(317,3,63,1),(318,3,64,1),(319,3,65,1),(320,3,66,1),(321,3,67,1),(322,3,68,1),(323,3,69,1),(324,3,70,1),(325,3,71,1),(326,3,72,1),(327,3,73,1),(328,3,74,1),(329,3,75,1),(330,3,76,1),(331,3,77,1),(332,3,78,1),(333,3,79,1),(334,3,80,1),(335,3,81,1),(336,3,82,1),(337,10,1,1),(338,10,2,1),(339,10,3,1),(340,10,8,1),(341,10,4,1),(342,10,5,1),(343,10,6,1),(344,10,7,1),(345,10,3,1),(346,10,8,1),(347,10,9,1),(348,10,10,1),(349,10,11,1),(350,10,12,1),(351,10,13,1),(352,10,14,1),(353,10,15,1),(354,10,16,1),(355,10,17,1),(356,10,18,1),(357,10,19,1),(358,10,20,1),(359,10,21,1),(360,10,22,1),(361,10,23,1),(362,10,24,1),(363,10,25,1),(364,10,26,1),(365,10,27,1),(366,10,28,1),(367,10,29,1),(368,10,30,1),(369,10,31,1),(370,10,32,1),(371,10,33,1),(372,10,34,1),(373,10,35,1),(374,10,36,1),(375,10,37,1),(376,10,38,1),(377,10,39,1),(378,10,40,1),(379,10,41,1),(380,10,42,1),(381,10,43,1),(382,10,44,1),(383,10,45,1),(384,10,46,1),(385,10,47,1),(386,10,48,1),(387,10,49,1),(388,10,50,1),(389,10,51,1),(390,10,52,1),(391,10,53,1),(392,10,54,1),(393,10,55,1),(394,10,56,1),(395,10,57,1),(396,10,58,1),(397,10,59,1),(398,10,60,1),(399,10,61,1),(400,10,62,1),(401,10,63,1),(402,10,64,1),(403,10,65,1),(404,10,66,1),(405,10,67,1),(406,10,68,1),(407,10,69,1),(408,10,70,1),(409,10,71,1),(410,10,72,1),(411,10,73,1),(412,10,74,1),(413,10,75,1),(414,10,76,1),(415,10,77,1),(416,10,78,1),(417,10,79,1),(418,10,80,1),(419,10,81,1),(420,10,82,1);
/*!40000 ALTER TABLE `sys_role_map_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value_UNIQUE` (`role_value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (1,'System Administrator',1,'Full access'),(2,'Mananger',2,NULL),(3,'User',3,NULL),(4,'Guess',0,NULL),(5,'OtherParty',10,NULL);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_screens`
--

DROP TABLE IF EXISTS `sys_screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_screens` (
  `id` int(11) NOT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `screen_code` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_screens`
--

LOCK TABLES `sys_screens` WRITE;
/*!40000 ALTER TABLE `sys_screens` DISABLE KEYS */;
INSERT INTO `sys_screens` VALUES (1,'dev','devcontroller','index','App\\Dev\\Http\\Controllers\\devcontroller\\index','App\\Dev\\Http\\Controllers'),(2,'dev','devcontroller','test','App\\Dev\\Http\\Controllers\\devcontroller\\test','App\\Dev\\Http\\Controllers'),(3,'dev','devcontroller','translationmanagement','App\\Dev\\Http\\Controllers\\devcontroller\\translationmanagement','App\\Dev\\Http\\Controllers'),(4,'dev','devcontroller','readaclconfig','App\\Dev\\Http\\Controllers\\devcontroller\\readaclconfig','App\\Dev\\Http\\Controllers'),(5,'dev','devcontroller','generationaclconfigfiles','App\\Dev\\Http\\Controllers\\devcontroller\\generationaclconfigfiles','App\\Dev\\Http\\Controllers'),(6,'dev','devcontroller','importscreenslist','App\\Dev\\Http\\Controllers\\devcontroller\\importscreenslist','App\\Dev\\Http\\Controllers'),(7,'dev','devcontroller','initproject','App\\Dev\\Http\\Controllers\\devcontroller\\initproject','App\\Dev\\Http\\Controllers'),(8,'dev','devcontroller','translationmanagement','App\\Dev\\Http\\Controllers\\devcontroller\\translationmanagement','App\\Dev\\Http\\Controllers'),(9,'dev','devcontroller','aclmanangement','App\\Dev\\Http\\Controllers\\devcontroller\\aclmanangement','App\\Dev\\Http\\Controllers'),(10,'dev','menucontroller','menu','App\\Dev\\Http\\Controllers\\menucontroller\\menu','App\\Dev\\Http\\Controllers'),(11,'dev','menucontroller','createmenu','App\\Dev\\Http\\Controllers\\menucontroller\\createmenu','App\\Dev\\Http\\Controllers'),(12,'dev','menucontroller','updatemenu','App\\Dev\\Http\\Controllers\\menucontroller\\updatemenu','App\\Dev\\Http\\Controllers'),(13,'dev','menucontroller','deletemenu','App\\Dev\\Http\\Controllers\\menucontroller\\deletemenu','App\\Dev\\Http\\Controllers'),(14,'dev','devcontroller','updateaclactive','App\\Dev\\Http\\Controllers\\devcontroller\\updateaclactive','App\\Dev\\Http\\Controllers'),(15,'dev','devcontroller','updateaclactiveall','App\\Dev\\Http\\Controllers\\devcontroller\\updateaclactiveall','App\\Dev\\Http\\Controllers'),(16,'dev','devcontroller','generationaclfile','App\\Dev\\Http\\Controllers\\devcontroller\\generationaclfile','App\\Dev\\Http\\Controllers'),(17,'dev','devcontroller','refreshacldb','App\\Dev\\Http\\Controllers\\devcontroller\\refreshacldb','App\\Dev\\Http\\Controllers'),(18,'dev','devcontroller','useracl','App\\Dev\\Http\\Controllers\\devcontroller\\useracl','App\\Dev\\Http\\Controllers'),(19,'dev','devcontroller','updatetranslate','App\\Dev\\Http\\Controllers\\devcontroller\\updatetranslate','App\\Dev\\Http\\Controllers'),(20,'dev','devcontroller','generationlanguagefiles','App\\Dev\\Http\\Controllers\\devcontroller\\generationlanguagefiles','App\\Dev\\Http\\Controllers'),(21,'dev','devcontroller','importtranslatetodb','App\\Dev\\Http\\Controllers\\devcontroller\\importtranslatetodb','App\\Dev\\Http\\Controllers'),(22,'dev','devcontroller','newtexttrans','App\\Dev\\Http\\Controllers\\devcontroller\\newtexttrans','App\\Dev\\Http\\Controllers'),(23,'dev','devcontroller','createnewtranslationitem','App\\Dev\\Http\\Controllers\\devcontroller\\createnewtranslationitem','App\\Dev\\Http\\Controllers'),(24,'dev','devcontroller','testcustomvalidate','App\\Dev\\Http\\Controllers\\devcontroller\\testcustomvalidate','App\\Dev\\Http\\Controllers'),(25,'dev','devcontroller','generateentity','App\\Dev\\Http\\Controllers\\devcontroller\\generateentity','App\\Dev\\Http\\Controllers'),(26,'dev','devcontroller','entitymanagement','App\\Dev\\Http\\Controllers\\devcontroller\\entitymanagement','App\\Dev\\Http\\Controllers'),(27,'dev','devcontroller','generateoneentity','App\\Dev\\Http\\Controllers\\devcontroller\\generateoneentity','App\\Dev\\Http\\Controllers'),(28,'dev','devcontroller','log','App\\Dev\\Http\\Controllers\\devcontroller\\log','App\\Dev\\Http\\Controllers'),(29,'dev','devcontroller','doc','App\\Dev\\Http\\Controllers\\devcontroller\\doc','App\\Dev\\Http\\Controllers'),(30,'laravel','authorizationcontroller','authorize','\\Laravel\\Passport\\Http\\Controllers\\authorizationcontroller\\authorize','\\Laravel\\Passport\\Http\\Controllers'),(31,'laravel','approveauthorizationcontroller','approve','\\Laravel\\Passport\\Http\\Controllers\\approveauthorizationcontroller\\approve','\\Laravel\\Passport\\Http\\Controllers'),(32,'laravel','denyauthorizationcontroller','deny','\\Laravel\\Passport\\Http\\Controllers\\denyauthorizationcontroller\\deny','\\Laravel\\Passport\\Http\\Controllers'),(33,'laravel','accesstokencontroller','issuetoken','\\Laravel\\Passport\\Http\\Controllers\\accesstokencontroller\\issuetoken','\\Laravel\\Passport\\Http\\Controllers'),(34,'laravel','authorizedaccesstokencontroller','foruser','\\Laravel\\Passport\\Http\\Controllers\\authorizedaccesstokencontroller\\foruser','\\Laravel\\Passport\\Http\\Controllers'),(35,'laravel','authorizedaccesstokencontroller','destroy','\\Laravel\\Passport\\Http\\Controllers\\authorizedaccesstokencontroller\\destroy','\\Laravel\\Passport\\Http\\Controllers'),(36,'laravel','transienttokencontroller','refresh','\\Laravel\\Passport\\Http\\Controllers\\transienttokencontroller\\refresh','\\Laravel\\Passport\\Http\\Controllers'),(37,'laravel','clientcontroller','foruser','\\Laravel\\Passport\\Http\\Controllers\\clientcontroller\\foruser','\\Laravel\\Passport\\Http\\Controllers'),(38,'laravel','clientcontroller','store','\\Laravel\\Passport\\Http\\Controllers\\clientcontroller\\store','\\Laravel\\Passport\\Http\\Controllers'),(39,'laravel','clientcontroller','update','\\Laravel\\Passport\\Http\\Controllers\\clientcontroller\\update','\\Laravel\\Passport\\Http\\Controllers'),(40,'laravel','clientcontroller','destroy','\\Laravel\\Passport\\Http\\Controllers\\clientcontroller\\destroy','\\Laravel\\Passport\\Http\\Controllers'),(41,'laravel','scopecontroller','all','\\Laravel\\Passport\\Http\\Controllers\\scopecontroller\\all','\\Laravel\\Passport\\Http\\Controllers'),(42,'laravel','personalaccesstokencontroller','foruser','\\Laravel\\Passport\\Http\\Controllers\\personalaccesstokencontroller\\foruser','\\Laravel\\Passport\\Http\\Controllers'),(43,'laravel','personalaccesstokencontroller','store','\\Laravel\\Passport\\Http\\Controllers\\personalaccesstokencontroller\\store','\\Laravel\\Passport\\Http\\Controllers'),(44,'laravel','personalaccesstokencontroller','destroy','\\Laravel\\Passport\\Http\\Controllers\\personalaccesstokencontroller\\destroy','\\Laravel\\Passport\\Http\\Controllers'),(45,'auth','logincontroller','showloginform','App\\Auth\\Http\\Controllers\\logincontroller\\showloginform','App\\Auth\\Http\\Controllers'),(46,'auth','logincontroller','login','App\\Auth\\Http\\Controllers\\logincontroller\\login','App\\Auth\\Http\\Controllers'),(47,'auth','logincontroller','logout','App\\Auth\\Http\\Controllers\\logincontroller\\logout','App\\Auth\\Http\\Controllers'),(48,'auth','forgotpasswordcontroller','showlinkrequestform','App\\Auth\\Http\\Controllers\\forgotpasswordcontroller\\showlinkrequestform','App\\Auth\\Http\\Controllers'),(49,'auth','forgotpasswordcontroller','sendresetlinkemail','App\\Auth\\Http\\Controllers\\forgotpasswordcontroller\\sendresetlinkemail','App\\Auth\\Http\\Controllers'),(50,'auth','resetpasswordcontroller','showresetform','App\\Auth\\Http\\Controllers\\resetpasswordcontroller\\showresetform','App\\Auth\\Http\\Controllers'),(51,'auth','resetpasswordcontroller','reset','App\\Auth\\Http\\Controllers\\resetpasswordcontroller\\reset','App\\Auth\\Http\\Controllers'),(52,'auth','registercontroller','showregistrationform','App\\Auth\\Http\\Controllers\\registercontroller\\showregistrationform','App\\Auth\\Http\\Controllers'),(53,'auth','registercontroller','register','App\\Auth\\Http\\Controllers\\registercontroller\\register','App\\Auth\\Http\\Controllers'),(54,'acl','aclcontroller','index','App\\Acl\\Http\\Controllers\\aclcontroller\\index','App\\Acl\\Http\\Controllers'),(55,'acl','aclcontroller','updateaclactive','App\\Acl\\Http\\Controllers\\aclcontroller\\updateaclactive','App\\Acl\\Http\\Controllers'),(56,'acl','aclcontroller','updateaclactiveall','App\\Acl\\Http\\Controllers\\aclcontroller\\updateaclactiveall','App\\Acl\\Http\\Controllers'),(57,'api','usercontroller','login','App\\Api\\V1\\Http\\Controllers\\usercontroller\\login','App\\Api\\V1\\Http\\Controllers'),(58,'api','catelorycontroller','index','App\\Api\\V1\\Http\\Controllers\\catelorycontroller\\index','App\\Api\\V1\\Http\\Controllers'),(59,'api','usercontroller','logout','App\\Api\\V1\\Http\\Controllers\\usercontroller\\logout','App\\Api\\V1\\Http\\Controllers'),(60,'backend','homecontroller','index','App\\Backend\\Http\\Controllers\\homecontroller\\index','App\\Backend\\Http\\Controllers'),(61,'backend','somecontroller','index','App\\Backend\\Http\\Controllers\\somecontroller\\index','App\\Backend\\Http\\Controllers'),(62,'backend','blogcontroller','index','App\\Backend\\Http\\Controllers\\blogcontroller\\index','App\\Backend\\Http\\Controllers'),(63,'backend','templatecontroller','index','App\\Backend\\Http\\Controllers\\templatecontroller\\index','App\\Backend\\Http\\Controllers'),(64,'backend','templatecontroller','form','App\\Backend\\Http\\Controllers\\templatecontroller\\form','App\\Backend\\Http\\Controllers'),(65,'backend','templatecontroller','components','App\\Backend\\Http\\Controllers\\templatecontroller\\components','App\\Backend\\Http\\Controllers'),(66,'backend','templatecontroller','buttons','App\\Backend\\Http\\Controllers\\templatecontroller\\buttons','App\\Backend\\Http\\Controllers'),(67,'backend','templatecontroller','upload','App\\Backend\\Http\\Controllers\\templatecontroller\\upload','App\\Backend\\Http\\Controllers'),(68,'backend','templatecontroller','getimagefroms3','App\\Backend\\Http\\Controllers\\templatecontroller\\getimagefroms3','App\\Backend\\Http\\Controllers'),(69,'backend','templatecontroller','getimagefromlocal','App\\Backend\\Http\\Controllers\\templatecontroller\\getimagefromlocal','App\\Backend\\Http\\Controllers'),(70,'backend','templatecontroller','doupload','App\\Backend\\Http\\Controllers\\templatecontroller\\doupload','App\\Backend\\Http\\Controllers'),(71,'backend','templatecontroller','douploads3','App\\Backend\\Http\\Controllers\\templatecontroller\\douploads3','App\\Backend\\Http\\Controllers'),(72,'backend','templatecontroller','dodeletefile','App\\Backend\\Http\\Controllers\\templatecontroller\\dodeletefile','App\\Backend\\Http\\Controllers'),(73,'backend','templatecontroller','dodeletefiles3','App\\Backend\\Http\\Controllers\\templatecontroller\\dodeletefiles3','App\\Backend\\Http\\Controllers'),(74,'backend','templatecontroller','generalelement','App\\Backend\\Http\\Controllers\\templatecontroller\\generalelement','App\\Backend\\Http\\Controllers'),(75,'backend','templatecontroller','icons','App\\Backend\\Http\\Controllers\\templatecontroller\\icons','App\\Backend\\Http\\Controllers'),(76,'backend','templatecontroller','glyphicons','App\\Backend\\Http\\Controllers\\templatecontroller\\glyphicons','App\\Backend\\Http\\Controllers'),(77,'backend','templatecontroller','calendar','App\\Backend\\Http\\Controllers\\templatecontroller\\calendar','App\\Backend\\Http\\Controllers'),(78,'backend','templatecontroller','tables','App\\Backend\\Http\\Controllers\\templatecontroller\\tables','App\\Backend\\Http\\Controllers'),(79,'backend','templatecontroller','exports','App\\Backend\\Http\\Controllers\\templatecontroller\\exports','App\\Backend\\Http\\Controllers'),(80,'backend','templatecontroller','doexports','App\\Backend\\Http\\Controllers\\templatecontroller\\doexports','App\\Backend\\Http\\Controllers'),(81,'frontend','homecontroller','index','App\\Frontend\\Http\\Controllers\\homecontroller\\index','App\\Frontend\\Http\\Controllers'),(82,'frontend','homecontroller','apilogin','App\\Frontend\\Http\\Controllers\\homecontroller\\apilogin','App\\Frontend\\Http\\Controllers');
/*!40000 ALTER TABLE `sys_screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translate_backup`
--

DROP TABLE IF EXISTS `sys_translate_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translate_backup` (
  `id` int(11) DEFAULT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `translate_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `input_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translate_backup`
--

LOCK TABLES `sys_translate_backup` WRITE;
/*!40000 ALTER TABLE `sys_translate_backup` DISABLE KEYS */;
INSERT INTO `sys_translate_backup` VALUES (1,'en','auth','not_active','Account mus actived','','2018-07-15 06:23:37',NULL,0),(2,'en','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:37',NULL,0),(3,'en','label','hhhh','OK','','2018-07-15 06:23:37',NULL,0),(4,'en','label','hhhhtt','OK','','2018-07-15 06:23:37',NULL,0),(5,'en','label','OK','OK','','2018-07-15 06:23:37',NULL,0),(6,'en','label','teest','teest2','','2018-07-15 06:23:37',NULL,0),(7,'en','label','test3','teest2','','2018-07-15 06:23:37',NULL,0),(8,'en','pagination','next','Next &raquo;','','2018-07-15 06:23:37',NULL,0),(9,'en','pagination','previous','&laquo; Previous','','2018-07-15 06:23:37',NULL,0),(10,'en','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:37',NULL,0),(11,'en','passwords','reset','Your password has been reset!','','2018-07-15 06:23:37',NULL,0),(12,'en','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:37',NULL,0),(13,'en','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:37',NULL,0),(14,'en','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:37',NULL,0),(15,'en','validation','accepted','The :attribute must be accepted','','2018-07-15 06:23:37','2018-07-17 11:58:06',0),(16,'en','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:37',NULL,0),(17,'en','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:37',NULL,0),(18,'en','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:37',NULL,0),(19,'en','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:37',NULL,0),(20,'en','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:37',NULL,0),(21,'en','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:37',NULL,0),(22,'en','validation','array','The :attribute must be an array.','','2018-07-15 06:23:37',NULL,0),(23,'en','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:37',NULL,0),(24,'en','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:37',NULL,0),(25,'en','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:37',NULL,0),(26,'en','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(27,'en','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:37',NULL,0),(28,'en','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:37',NULL,0),(29,'en','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:37',NULL,0),(30,'en','validation','common_error','Common error','','2018-07-15 06:23:37',NULL,0),(31,'en','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:37',NULL,0),(32,'en','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:37',NULL,0),(33,'en','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:37',NULL,0),(34,'en','validation','dff','h','','2018-07-15 06:23:37',NULL,0),(35,'en','validation','dffuuu','h','','2018-07-15 06:23:37',NULL,0),(36,'en','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:37',NULL,0),(37,'en','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:37',NULL,0),(38,'en','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:37',NULL,0),(39,'en','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:37',NULL,0),(40,'en','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:37',NULL,0),(41,'en','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:37',NULL,0),(42,'en','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(43,'en','validation','f vg','red','','2018-07-15 06:23:37',NULL,0),(44,'en','validation','file','The :attribute must be a file.','','2018-07-15 06:23:37',NULL,0),(45,'en','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:37',NULL,0),(46,'en','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(47,'en','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(48,'en','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:37',NULL,0),(49,'en','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:37',NULL,0),(50,'en','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:37',NULL,0),(51,'en','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(52,'en','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(53,'en','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(54,'en','validation','image','The :attribute must be an image.','','2018-07-15 06:23:37',NULL,0),(55,'en','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(56,'en','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:37',NULL,0),(57,'en','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:37',NULL,0),(58,'en','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:37',NULL,0),(59,'en','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:37',NULL,0),(60,'en','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:37',NULL,0),(61,'en','validation','jkl','1','','2018-07-15 06:23:37',NULL,0),(62,'en','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:37',NULL,0),(63,'en','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:37',NULL,0),(64,'en','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(65,'en','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:37',NULL,0),(66,'en','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:37',NULL,0),(67,'en','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(68,'en','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(69,'en','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(70,'en','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(71,'en','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:37',NULL,0),(72,'en','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(73,'en','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:37',NULL,0),(74,'en','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:37',NULL,0),(75,'en','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(76,'en','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(77,'en','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:37',NULL,0),(78,'en','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:37',NULL,0),(79,'en','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:37',NULL,0),(80,'en','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:37',NULL,0),(81,'en','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(82,'en','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(83,'en','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:37',NULL,0),(84,'en','validation','present','The :attribute field must be present.','','2018-07-15 06:23:37',NULL,0),(85,'en','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(86,'en','validation','required','The :attribute field is required.','','2018-07-15 06:23:37',NULL,0),(87,'en','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:37',NULL,0),(88,'en','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:37',NULL,0),(89,'en','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(90,'en','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:37',NULL,0),(91,'en','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:37',NULL,0),(92,'en','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(93,'en','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:37',NULL,0),(94,'en','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:37',NULL,0),(95,'en','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:37',NULL,0),(96,'en','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:37',NULL,0),(97,'en','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:37',NULL,0),(98,'en','validation','string','The :attribute must be a string.','','2018-07-15 06:23:37',NULL,0),(99,'en','validation','test8','test0','file','2018-07-15 06:23:37',NULL,0),(100,'en','validation','test8','test0','numeric','2018-07-15 06:23:37',NULL,0),(101,'en','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:37',NULL,0),(102,'en','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:37',NULL,0),(103,'en','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:37',NULL,0),(104,'en','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(105,'en','validation_test','1','','','2018-07-15 06:23:37',NULL,0),(106,'en','validation_test','12','21','','2018-07-15 06:23:37',NULL,0),(107,'en','validation_test','123','123','','2018-07-15 06:23:37',NULL,0),(108,'en','validation_test','1233','1233','','2018-07-15 06:23:37',NULL,0),(109,'en','validation_test','12334','1233','','2018-07-15 06:23:37',NULL,0),(110,'en','validation_test','123346','1233','','2018-07-15 06:23:37',NULL,0),(111,'en','validation_test','134','134','','2018-07-15 06:23:37',NULL,0),(112,'en','validation_test','1345','134','','2018-07-15 06:23:37',NULL,0),(113,'en','validation_test','accepted','The :attribute must be accepted.','','2018-07-15 06:23:37',NULL,0),(114,'en','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:37',NULL,0),(115,'en','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:37',NULL,0),(116,'en','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:37',NULL,0),(117,'en','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:37',NULL,0),(118,'en','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:37',NULL,0),(119,'en','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:37',NULL,0),(120,'en','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:37',NULL,0),(121,'en','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:37',NULL,0),(122,'en','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:37',NULL,0),(123,'en','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:37',NULL,0),(124,'en','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(125,'en','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:37',NULL,0),(126,'en','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:37',NULL,0),(127,'en','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:37',NULL,0),(128,'en','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:37',NULL,0),(129,'en','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:37',NULL,0),(130,'en','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:37',NULL,0),(131,'en','validation_test','dfg','','','2018-07-15 06:23:37',NULL,0),(132,'en','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:37',NULL,0),(133,'en','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:37',NULL,0),(134,'en','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:37',NULL,0),(135,'en','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:37',NULL,0),(136,'en','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:37',NULL,0),(137,'en','validation_test','dsd','ds','','2018-07-15 06:23:37',NULL,0),(138,'en','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:37',NULL,0),(139,'en','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(140,'en','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:37',NULL,0),(141,'en','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:37',NULL,0),(142,'en','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(143,'en','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(144,'en','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:37',NULL,0),(145,'en','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:37',NULL,0),(146,'en','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:37',NULL,0),(147,'en','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(148,'en','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(149,'en','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(150,'en','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:37',NULL,0),(151,'en','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(152,'en','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:37',NULL,0),(153,'en','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:37',NULL,0),(154,'en','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:37',NULL,0),(155,'en','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:37',NULL,0),(156,'en','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:37',NULL,0),(157,'en','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:37',NULL,0),(158,'en','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:37',NULL,0),(159,'en','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(160,'en','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:37',NULL,0),(161,'en','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:37',NULL,0),(162,'en','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(163,'en','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(164,'en','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(165,'en','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(166,'en','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:37',NULL,0),(167,'en','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(168,'en','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:37',NULL,0),(169,'en','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:37',NULL,0),(170,'en','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(171,'en','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(172,'en','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:37',NULL,0),(173,'en','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:37',NULL,0),(174,'en','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:37',NULL,0),(175,'en','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:37',NULL,0),(176,'en','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(177,'en','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(178,'en','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:37',NULL,0),(179,'en','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:37',NULL,0),(180,'en','validation_test','q?','ưq','','2018-07-15 06:23:37',NULL,0),(181,'en','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(182,'en','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:37',NULL,0),(183,'en','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:37',NULL,0),(184,'en','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:37',NULL,0),(185,'en','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(186,'en','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:37',NULL,0),(187,'en','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:37',NULL,0),(188,'en','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(189,'en','validation_test','rew','rw','','2018-07-15 06:23:37',NULL,0),(190,'en','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:37',NULL,0),(191,'en','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:37',NULL,0),(192,'en','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:37',NULL,0),(193,'en','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:37',NULL,0),(194,'en','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:37',NULL,0),(195,'en','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:37',NULL,0),(196,'en','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:37',NULL,0),(197,'en','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:37',NULL,0),(198,'en','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:37',NULL,0),(199,'en','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(200,'en','validation_tmp','accepted','The :attribute must be accepted.','','2018-07-15 06:23:38',NULL,0),(201,'en','validation_tmp','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(202,'en','validation_tmp','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(203,'en','validation_tmp','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(204,'en','validation_tmp','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(205,'en','validation_tmp','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(206,'en','validation_tmp','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(207,'en','validation_tmp','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(208,'en','validation_tmp','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(209,'en','validation_tmp','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(210,'en','validation_tmp','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(211,'en','validation_tmp','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(212,'en','validation_tmp','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(213,'en','validation_tmp','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(214,'en','validation_tmp','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(215,'en','validation_tmp','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(216,'en','validation_tmp','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(217,'en','validation_tmp','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(218,'en','validation_tmp','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(219,'en','validation_tmp','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(220,'en','validation_tmp','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(221,'en','validation_tmp','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(222,'en','validation_tmp','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(223,'en','validation_tmp','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(224,'en','validation_tmp','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(225,'en','validation_tmp','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(226,'en','validation_tmp','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(227,'en','validation_tmp','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(228,'en','validation_tmp','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(229,'en','validation_tmp','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(230,'en','validation_tmp','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(231,'en','validation_tmp','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(232,'en','validation_tmp','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(233,'en','validation_tmp','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(234,'en','validation_tmp','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(235,'en','validation_tmp','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(236,'en','validation_tmp','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(237,'en','validation_tmp','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(238,'en','validation_tmp','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(239,'en','validation_tmp','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(240,'en','validation_tmp','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(241,'en','validation_tmp','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(242,'en','validation_tmp','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(243,'en','validation_tmp','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(244,'en','validation_tmp','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(245,'en','validation_tmp','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(246,'en','validation_tmp','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(247,'en','validation_tmp','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(248,'en','validation_tmp','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(249,'en','validation_tmp','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(250,'en','validation_tmp','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(251,'en','validation_tmp','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(252,'en','validation_tmp','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(253,'en','validation_tmp','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(254,'en','validation_tmp','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(255,'en','validation_tmp','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(256,'en','validation_tmp','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(257,'en','validation_tmp','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(258,'en','validation_tmp','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(259,'en','validation_tmp','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(260,'en','validation_tmp','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(261,'en','validation_tmp','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(262,'en','validation_tmp','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(263,'en','validation_tmp','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(264,'en','validation_tmp','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(265,'en','validation_tmp','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(266,'en','validation_tmp','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(267,'en','validation_tmp','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(268,'en','validation_tmp','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(269,'en','validation_tmp','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(270,'en','validation_tmp','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(271,'en','validation_tmp','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(272,'en','validation_tmp','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(273,'en','validation_tmp','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(274,'en','validation_tmp','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(275,'en','validation_tmp','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(276,'en','validation_tmp','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(277,'en','validation_tmp','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(278,'en','validation_tmp','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(279,'en','validation_tmp','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(280,'en','validation_tmp','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(281,'en','validation_tmp','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(282,'en','validation_tmp','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(283,'fr','auth','failed','These credentials do not match our records.','','2018-07-15 06:23:38',NULL,0),(284,'fr','auth','not_active','Le compte est activé','','2018-07-15 06:23:38',NULL,0),(285,'fr','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:38',NULL,0),(286,'fr','label','hhhh','OK','','2018-07-15 06:23:38',NULL,0),(287,'fr','label','hhhhtt','OK','','2018-07-15 06:23:38',NULL,0),(288,'fr','label','OK','OK','','2018-07-15 06:23:38',NULL,0),(289,'fr','label','teest','teest3','','2018-07-15 06:23:38',NULL,0),(290,'fr','label','test3','teest3','','2018-07-15 06:23:38',NULL,0),(291,'fr','pagination','next','Next &raquo;','','2018-07-15 06:23:38',NULL,0),(292,'fr','pagination','previous','&laquo; Previous','','2018-07-15 06:23:38',NULL,0),(293,'fr','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:38',NULL,0),(294,'fr','passwords','reset','Your password has been reset!','','2018-07-15 06:23:38',NULL,0),(295,'fr','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:38',NULL,0),(296,'fr','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:38',NULL,0),(297,'fr','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:38',NULL,0),(298,'fr','validation','99','32','numeric','2018-07-15 06:23:38',NULL,0),(299,'fr','validation','accepted','FR - text','','2018-07-15 06:23:38',NULL,0),(300,'fr','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(301,'fr','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(302,'fr','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(303,'fr','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(304,'fr','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(305,'fr','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(306,'fr','validation','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(307,'fr','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(308,'fr','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(309,'fr','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(310,'fr','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(311,'fr','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(312,'fr','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(313,'fr','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(314,'fr','validation','common_error','erreurs courantes','','2018-07-15 06:23:38',NULL,0),(315,'fr','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(316,'fr','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(317,'fr','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(318,'fr','validation','dff','h','','2018-07-15 06:23:38',NULL,0),(319,'fr','validation','dffuuu','h','','2018-07-15 06:23:38',NULL,0),(320,'fr','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(321,'fr','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(322,'fr','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(323,'fr','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(324,'fr','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(325,'fr','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(326,'fr','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(327,'fr','validation','f vg','gd','','2018-07-15 06:23:38',NULL,0),(328,'fr','validation','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(329,'fr','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(330,'fr','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(331,'fr','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(332,'fr','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(333,'fr','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(334,'fr','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(335,'fr','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(336,'fr','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(337,'fr','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(338,'fr','validation','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(339,'fr','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(340,'fr','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(341,'fr','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(342,'fr','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(343,'fr','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(344,'fr','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(345,'fr','validation','jkl','1','','2018-07-15 06:23:38',NULL,0),(346,'fr','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(347,'fr','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(348,'fr','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(349,'fr','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(350,'fr','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(351,'fr','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(352,'fr','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(353,'fr','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(354,'fr','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(355,'fr','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(356,'fr','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(357,'fr','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(358,'fr','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(359,'fr','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(360,'fr','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(361,'fr','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(362,'fr','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(363,'fr','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(364,'fr','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(365,'fr','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(366,'fr','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(367,'fr','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(368,'fr','validation','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(369,'fr','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(370,'fr','validation','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(371,'fr','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(372,'fr','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(373,'fr','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(374,'fr','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(375,'fr','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(376,'fr','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(377,'fr','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(378,'fr','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(379,'fr','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(380,'fr','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(381,'fr','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(382,'fr','validation','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(383,'fr','validation','test8','test0','file','2018-07-15 06:23:38',NULL,0),(384,'fr','validation','test8','test0','numeric','2018-07-15 06:23:38',NULL,0),(385,'fr','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(386,'fr','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(387,'fr','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(388,'fr','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(389,'fr','validation_test','1','','','2018-07-15 06:23:38',NULL,0),(390,'fr','validation_test','12','21','','2018-07-15 06:23:38',NULL,0),(391,'fr','validation_test','123','123','','2018-07-15 06:23:38',NULL,0),(392,'fr','validation_test','1233','1233','','2018-07-15 06:23:38',NULL,0),(393,'fr','validation_test','12334','1233','','2018-07-15 06:23:38',NULL,0),(394,'fr','validation_test','123346','1233','','2018-07-15 06:23:38',NULL,0),(395,'fr','validation_test','134','134','','2018-07-15 06:23:38',NULL,0),(396,'fr','validation_test','1345','134','','2018-07-15 06:23:38',NULL,0),(397,'fr','validation_test','accepted','FR - text','','2018-07-15 06:23:38',NULL,0),(398,'fr','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(399,'fr','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(400,'fr','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(401,'fr','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(402,'fr','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(403,'fr','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(404,'fr','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(405,'fr','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(406,'fr','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(407,'fr','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(408,'fr','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(409,'fr','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(410,'fr','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(411,'fr','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(412,'fr','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(413,'fr','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(414,'fr','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(415,'fr','validation_test','dfg','','','2018-07-15 06:23:38',NULL,0),(416,'fr','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(417,'fr','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(418,'fr','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(419,'fr','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(420,'fr','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(421,'fr','validation_test','dsd','ds','','2018-07-15 06:23:38',NULL,0),(422,'fr','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(423,'fr','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(424,'fr','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(425,'fr','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(426,'fr','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(427,'fr','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(428,'fr','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(429,'fr','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(430,'fr','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(431,'fr','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(432,'fr','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(433,'fr','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(434,'fr','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(435,'fr','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(436,'fr','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(437,'fr','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(438,'fr','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(439,'fr','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(440,'fr','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(441,'fr','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(442,'fr','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(443,'fr','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(444,'fr','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(445,'fr','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(446,'fr','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(447,'fr','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(448,'fr','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(449,'fr','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(450,'fr','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(451,'fr','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(452,'fr','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(453,'fr','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(454,'fr','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(455,'fr','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(456,'fr','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(457,'fr','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(458,'fr','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(459,'fr','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(460,'fr','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(461,'fr','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(462,'fr','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(463,'fr','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(464,'fr','validation_test','q?','ưqw','','2018-07-15 06:23:38',NULL,0),(465,'fr','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(466,'fr','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(467,'fr','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(468,'fr','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(469,'fr','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(470,'fr','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(471,'fr','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(472,'fr','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(473,'fr','validation_test','rew','','','2018-07-15 06:23:38',NULL,0),(474,'fr','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(475,'fr','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(476,'fr','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(477,'fr','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(478,'fr','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(479,'fr','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(480,'fr','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(481,'fr','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(482,'fr','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(483,'fr','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(484,'jp','auth','failed','These credentials do not match our records.','','2018-07-15 06:23:38',NULL,0),(485,'jp','auth','not_active','アカウントはアクティブではありません','','2018-07-15 06:23:38',NULL,0),(486,'jp','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:38',NULL,0),(487,'jp','label','hhhh','OK','','2018-07-15 06:23:39',NULL,0),(488,'jp','label','hhhhtt','OK','','2018-07-15 06:23:39',NULL,0),(489,'jp','label','OK','OK','','2018-07-15 06:23:39',NULL,0),(490,'jp','label','teest','teest1','','2018-07-15 06:23:39',NULL,0),(491,'jp','label','test3','teest1','','2018-07-15 06:23:39',NULL,0),(492,'jp','pagination','next','Next &raquo;','','2018-07-15 06:23:39',NULL,0),(493,'jp','pagination','previous','&laquo; Previous','','2018-07-15 06:23:39',NULL,0),(494,'jp','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:39',NULL,0),(495,'jp','passwords','reset','Your password has been reset!','','2018-07-15 06:23:39',NULL,0),(496,'jp','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:39',NULL,0),(497,'jp','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:39',NULL,0),(498,'jp','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:39',NULL,0),(499,'jp','validation','99','2','numeric','2018-07-15 06:23:39',NULL,0),(500,'jp','validation','accepted','：属性を受け入れる必要があります。','','2018-07-15 06:23:39',NULL,0),(501,'jp','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:39',NULL,0),(502,'jp','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:39',NULL,0),(503,'jp','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:39',NULL,0),(504,'jp','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:39',NULL,0),(505,'jp','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:39',NULL,0),(506,'jp','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:39',NULL,0),(507,'jp','validation','array','The :attribute must be an array.','','2018-07-15 06:23:39',NULL,0),(508,'jp','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:39',NULL,0),(509,'jp','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:39',NULL,0),(510,'jp','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:39',NULL,0),(511,'jp','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(512,'jp','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:39',NULL,0),(513,'jp','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:39',NULL,0),(514,'jp','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:39',NULL,0),(515,'jp','validation','common_error','一般的なエラー','','2018-07-15 06:23:39',NULL,0),(516,'jp','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:39',NULL,0),(517,'jp','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:39',NULL,0),(518,'jp','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:39',NULL,0),(519,'jp','validation','dff','h','','2018-07-15 06:23:39',NULL,0),(520,'jp','validation','dffuuu','h','','2018-07-15 06:23:39',NULL,0),(521,'jp','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:39',NULL,0),(522,'jp','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:39',NULL,0),(523,'jp','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:39',NULL,0),(524,'jp','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:39',NULL,0),(525,'jp','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:39',NULL,0),(526,'jp','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:39',NULL,0),(527,'jp','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(528,'jp','validation','f vg','re','','2018-07-15 06:23:39',NULL,0),(529,'jp','validation','file','The :attribute must be a file.','','2018-07-15 06:23:39',NULL,0),(530,'jp','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:39',NULL,0),(531,'jp','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(532,'jp','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(533,'jp','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:39',NULL,0),(534,'jp','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:39',NULL,0),(535,'jp','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:39',NULL,0),(536,'jp','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(537,'jp','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(538,'jp','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(539,'jp','validation','image','The :attribute must be an image.','','2018-07-15 06:23:39',NULL,0),(540,'jp','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(541,'jp','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:39',NULL,0),(542,'jp','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:39',NULL,0),(543,'jp','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:39',NULL,0),(544,'jp','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:39',NULL,0),(545,'jp','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:39',NULL,0),(546,'jp','validation','jkl','1','','2018-07-15 06:23:39',NULL,0),(547,'jp','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:39',NULL,0),(548,'jp','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:39',NULL,0),(549,'jp','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(550,'jp','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:39',NULL,0),(551,'jp','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:39',NULL,0),(552,'jp','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(553,'jp','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(554,'jp','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(555,'jp','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(556,'jp','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:39',NULL,0),(557,'jp','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(558,'jp','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:39',NULL,0),(559,'jp','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:39',NULL,0),(560,'jp','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(561,'jp','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(562,'jp','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:39',NULL,0),(563,'jp','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:39',NULL,0),(564,'jp','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:39',NULL,0),(565,'jp','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:39',NULL,0),(566,'jp','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(567,'jp','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(568,'jp','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:39',NULL,0),(569,'jp','validation','present','The :attribute field must be present.','','2018-07-15 06:23:39',NULL,0),(570,'jp','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(571,'jp','validation','required','The :attribute field is required.','','2018-07-15 06:23:39',NULL,0),(572,'jp','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:39',NULL,0),(573,'jp','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:39',NULL,0),(574,'jp','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(575,'jp','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:39',NULL,0),(576,'jp','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:39',NULL,0),(577,'jp','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(578,'jp','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:39',NULL,0),(579,'jp','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:39',NULL,0),(580,'jp','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:39',NULL,0),(581,'jp','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:39',NULL,0),(582,'jp','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:39',NULL,0),(583,'jp','validation','string','The :attribute must be a string.','','2018-07-15 06:23:39',NULL,0),(584,'jp','validation','test8','test0','file','2018-07-15 06:23:39',NULL,0),(585,'jp','validation','test8','test0','numeric','2018-07-15 06:23:39',NULL,0),(586,'jp','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:39',NULL,0),(587,'jp','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:39',NULL,0),(588,'jp','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:39',NULL,0),(589,'jp','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(590,'jp','validation_test','1','','','2018-07-15 06:23:39',NULL,0),(591,'jp','validation_test','12','12','','2018-07-15 06:23:39',NULL,0),(592,'jp','validation_test','123','123','','2018-07-15 06:23:39',NULL,0),(593,'jp','validation_test','1233','1233','','2018-07-15 06:23:39',NULL,0),(594,'jp','validation_test','12334','1233','','2018-07-15 06:23:39',NULL,0),(595,'jp','validation_test','123346','1233','','2018-07-15 06:23:39',NULL,0),(596,'jp','validation_test','134','134','','2018-07-15 06:23:39',NULL,0),(597,'jp','validation_test','1345','134','','2018-07-15 06:23:39',NULL,0),(598,'jp','validation_test','accepted','：属性','','2018-07-15 06:23:39',NULL,0),(599,'jp','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:39',NULL,0),(600,'jp','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:39',NULL,0),(601,'jp','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:39',NULL,0),(602,'jp','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:39',NULL,0),(603,'jp','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:39',NULL,0),(604,'jp','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:39',NULL,0),(605,'jp','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:39',NULL,0),(606,'jp','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:39',NULL,0),(607,'jp','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:39',NULL,0),(608,'jp','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:39',NULL,0),(609,'jp','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(610,'jp','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:39',NULL,0),(611,'jp','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:39',NULL,0),(612,'jp','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:39',NULL,0),(613,'jp','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:39',NULL,0),(614,'jp','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:39',NULL,0),(615,'jp','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:39',NULL,0),(616,'jp','validation_test','dfg','gfd','','2018-07-15 06:23:39',NULL,0),(617,'jp','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:39',NULL,0),(618,'jp','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:39',NULL,0),(619,'jp','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:39',NULL,0),(620,'jp','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:39',NULL,0),(621,'jp','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:39',NULL,0),(622,'jp','validation_test','dsd','sd','','2018-07-15 06:23:39',NULL,0),(623,'jp','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:39',NULL,0),(624,'jp','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(625,'jp','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:39',NULL,0),(626,'jp','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:39',NULL,0),(627,'jp','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(628,'jp','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(629,'jp','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:39',NULL,0),(630,'jp','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:39',NULL,0),(631,'jp','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:39',NULL,0),(632,'jp','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(633,'jp','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(634,'jp','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(635,'jp','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:39',NULL,0),(636,'jp','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(637,'jp','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:39',NULL,0),(638,'jp','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:39',NULL,0),(639,'jp','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:39',NULL,0),(640,'jp','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:39',NULL,0),(641,'jp','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:39',NULL,0),(642,'jp','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:39',NULL,0),(643,'jp','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:39',NULL,0),(644,'jp','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(645,'jp','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:39',NULL,0),(646,'jp','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:39',NULL,0),(647,'jp','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(648,'jp','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(649,'jp','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(650,'jp','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(651,'jp','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:39',NULL,0),(652,'jp','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(653,'jp','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:39',NULL,0),(654,'jp','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:39',NULL,0),(655,'jp','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(656,'jp','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(657,'jp','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:39',NULL,0),(658,'jp','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:39',NULL,0),(659,'jp','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:39',NULL,0),(660,'jp','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:39',NULL,0),(661,'jp','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(662,'jp','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(663,'jp','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:39',NULL,0),(664,'jp','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:39',NULL,0),(665,'jp','validation_test','q?','ưq','','2018-07-15 06:23:39',NULL,0),(666,'jp','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(667,'jp','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:39',NULL,0),(668,'jp','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:39',NULL,0),(669,'jp','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:39',NULL,0),(670,'jp','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(671,'jp','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:39',NULL,0),(672,'jp','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:39',NULL,0),(673,'jp','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(674,'jp','validation_test','rew','rwer','','2018-07-15 06:23:39',NULL,0),(675,'jp','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:39',NULL,0),(676,'jp','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:39',NULL,0),(677,'jp','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:39',NULL,0),(678,'jp','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:39',NULL,0),(679,'jp','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:39',NULL,0),(680,'jp','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:39',NULL,0),(681,'jp','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:39',NULL,0),(682,'jp','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:39',NULL,0),(683,'jp','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:39',NULL,0),(684,'jp','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(685,'en','','',NULL,'','2018-07-16 15:30:07',NULL,0),(686,'fr','','',NULL,'','2018-07-16 15:30:07',NULL,0),(687,'jp','','',NULL,'','2018-07-16 15:30:07',NULL,0);
/*!40000 ALTER TABLE `sys_translate_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translate_type`
--

DROP TABLE IF EXISTS `sys_translate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `has_input_type` tinyint(4) DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translate_type`
--

LOCK TABLES `sys_translate_type` WRITE;
/*!40000 ALTER TABLE `sys_translate_type` DISABLE KEYS */;
INSERT INTO `sys_translate_type` VALUES (1,'validation','type of message validation',1,1),(2,'label',NULL,NULL,2),(3,'auth',NULL,NULL,3),(4,'passwords',NULL,NULL,4),(5,'pagination',NULL,NULL,5);
/*!40000 ALTER TABLE `sys_translate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translation`
--

DROP TABLE IF EXISTS `sys_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'en',
  `translate_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `code` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `input_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translation`
--

LOCK TABLES `sys_translation` WRITE;
/*!40000 ALTER TABLE `sys_translation` DISABLE KEYS */;
INSERT INTO `sys_translation` VALUES (1,'en','auth','not_active','Account mus actived','','2018-07-15 06:23:37',NULL,0),(2,'en','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:37',NULL,0),(3,'en','label','hhhh','OK','','2018-07-15 06:23:37',NULL,0),(4,'en','label','hhhhtt','OK','','2018-07-15 06:23:37',NULL,0),(5,'en','label','OK','OK','','2018-07-15 06:23:37',NULL,0),(6,'en','label','teest','teest2','','2018-07-15 06:23:37',NULL,0),(7,'en','label','test3','teest2','','2018-07-15 06:23:37',NULL,0),(8,'en','pagination','next','Next &raquo;','','2018-07-15 06:23:37',NULL,0),(9,'en','pagination','previous','&laquo; Previous','','2018-07-15 06:23:37',NULL,0),(10,'en','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:37',NULL,0),(11,'en','passwords','reset','Your password has been reset!','','2018-07-15 06:23:37',NULL,0),(12,'en','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:37',NULL,0),(13,'en','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:37',NULL,0),(14,'en','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:37',NULL,0),(15,'en','validation','accepted','The :attribute must be accepted','','2018-07-15 06:23:37','2018-07-17 11:58:06',0),(16,'en','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:37',NULL,0),(17,'en','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:37',NULL,0),(18,'en','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:37',NULL,0),(19,'en','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:37',NULL,0),(20,'en','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:37',NULL,0),(21,'en','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:37',NULL,0),(22,'en','validation','array','The :attribute must be an array.','','2018-07-15 06:23:37',NULL,0),(23,'en','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:37',NULL,0),(24,'en','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:37',NULL,0),(25,'en','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:37',NULL,0),(26,'en','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(27,'en','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:37',NULL,0),(28,'en','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:37',NULL,0),(29,'en','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:37',NULL,0),(30,'en','validation','common_error','Common error','','2018-07-15 06:23:37',NULL,0),(31,'en','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:37',NULL,0),(32,'en','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:37',NULL,0),(33,'en','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:37',NULL,0),(34,'en','validation','dff','h','','2018-07-15 06:23:37',NULL,0),(35,'en','validation','dffuuu','h','','2018-07-15 06:23:37',NULL,0),(36,'en','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:37',NULL,0),(37,'en','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:37',NULL,0),(38,'en','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:37',NULL,0),(39,'en','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:37',NULL,0),(40,'en','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:37',NULL,0),(41,'en','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:37',NULL,0),(42,'en','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(43,'en','validation','f vg','red','','2018-07-15 06:23:37',NULL,0),(44,'en','validation','file','The :attribute must be a file.','','2018-07-15 06:23:37',NULL,0),(45,'en','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:37',NULL,0),(46,'en','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(47,'en','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(48,'en','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:37',NULL,0),(49,'en','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:37',NULL,0),(50,'en','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:37',NULL,0),(51,'en','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(52,'en','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(53,'en','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(54,'en','validation','image','The :attribute must be an image.','','2018-07-15 06:23:37',NULL,0),(55,'en','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(56,'en','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:37',NULL,0),(57,'en','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:37',NULL,0),(58,'en','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:37',NULL,0),(59,'en','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:37',NULL,0),(60,'en','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:37',NULL,0),(61,'en','validation','jkl','1','','2018-07-15 06:23:37',NULL,0),(62,'en','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:37',NULL,0),(63,'en','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:37',NULL,0),(64,'en','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(65,'en','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:37',NULL,0),(66,'en','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:37',NULL,0),(67,'en','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(68,'en','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(69,'en','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(70,'en','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(71,'en','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:37',NULL,0),(72,'en','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(73,'en','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:37',NULL,0),(74,'en','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:37',NULL,0),(75,'en','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(76,'en','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(77,'en','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:37',NULL,0),(78,'en','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:37',NULL,0),(79,'en','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:37',NULL,0),(80,'en','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:37',NULL,0),(81,'en','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(82,'en','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(83,'en','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:37',NULL,0),(84,'en','validation','present','The :attribute field must be present.','','2018-07-15 06:23:37',NULL,0),(85,'en','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(86,'en','validation','required','The :attribute field is required.','','2018-07-15 06:23:37',NULL,0),(87,'en','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:37',NULL,0),(88,'en','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:37',NULL,0),(89,'en','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(90,'en','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:37',NULL,0),(91,'en','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:37',NULL,0),(92,'en','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(93,'en','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:37',NULL,0),(94,'en','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:37',NULL,0),(95,'en','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:37',NULL,0),(96,'en','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:37',NULL,0),(97,'en','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:37',NULL,0),(98,'en','validation','string','The :attribute must be a string.','','2018-07-15 06:23:37',NULL,0),(99,'en','validation','test8','test0','file','2018-07-15 06:23:37',NULL,0),(100,'en','validation','test8','test0','numeric','2018-07-15 06:23:37',NULL,0),(101,'en','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:37',NULL,0),(102,'en','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:37',NULL,0),(103,'en','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:37',NULL,0),(104,'en','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(105,'en','validation_test','1','','','2018-07-15 06:23:37',NULL,0),(106,'en','validation_test','12','21','','2018-07-15 06:23:37',NULL,0),(107,'en','validation_test','123','123','','2018-07-15 06:23:37',NULL,0),(108,'en','validation_test','1233','1233','','2018-07-15 06:23:37',NULL,0),(109,'en','validation_test','12334','1233','','2018-07-15 06:23:37',NULL,0),(110,'en','validation_test','123346','1233','','2018-07-15 06:23:37',NULL,0),(111,'en','validation_test','134','134','','2018-07-15 06:23:37',NULL,0),(112,'en','validation_test','1345','134','','2018-07-15 06:23:37',NULL,0),(113,'en','validation_test','accepted','The :attribute must be accepted.','','2018-07-15 06:23:37',NULL,0),(114,'en','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:37',NULL,0),(115,'en','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:37',NULL,0),(116,'en','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:37',NULL,0),(117,'en','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:37',NULL,0),(118,'en','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:37',NULL,0),(119,'en','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:37',NULL,0),(120,'en','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:37',NULL,0),(121,'en','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:37',NULL,0),(122,'en','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:37',NULL,0),(123,'en','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:37',NULL,0),(124,'en','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(125,'en','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:37',NULL,0),(126,'en','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:37',NULL,0),(127,'en','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:37',NULL,0),(128,'en','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:37',NULL,0),(129,'en','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:37',NULL,0),(130,'en','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:37',NULL,0),(131,'en','validation_test','dfg','','','2018-07-15 06:23:37',NULL,0),(132,'en','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:37',NULL,0),(133,'en','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:37',NULL,0),(134,'en','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:37',NULL,0),(135,'en','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:37',NULL,0),(136,'en','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:37',NULL,0),(137,'en','validation_test','dsd','ds','','2018-07-15 06:23:37',NULL,0),(138,'en','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:37',NULL,0),(139,'en','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(140,'en','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:37',NULL,0),(141,'en','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:37',NULL,0),(142,'en','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(143,'en','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(144,'en','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:37',NULL,0),(145,'en','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:37',NULL,0),(146,'en','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:37',NULL,0),(147,'en','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(148,'en','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(149,'en','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(150,'en','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:37',NULL,0),(151,'en','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(152,'en','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:37',NULL,0),(153,'en','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:37',NULL,0),(154,'en','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:37',NULL,0),(155,'en','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:37',NULL,0),(156,'en','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:37',NULL,0),(157,'en','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:37',NULL,0),(158,'en','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:37',NULL,0),(159,'en','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(160,'en','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:37',NULL,0),(161,'en','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:37',NULL,0),(162,'en','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:37',NULL,0),(163,'en','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:37',NULL,0),(164,'en','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:37',NULL,0),(165,'en','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:37',NULL,0),(166,'en','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:37',NULL,0),(167,'en','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:37',NULL,0),(168,'en','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:37',NULL,0),(169,'en','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:37',NULL,0),(170,'en','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(171,'en','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:37',NULL,0),(172,'en','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:37',NULL,0),(173,'en','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:37',NULL,0),(174,'en','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:37',NULL,0),(175,'en','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:37',NULL,0),(176,'en','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:37',NULL,0),(177,'en','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(178,'en','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:37',NULL,0),(179,'en','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:37',NULL,0),(180,'en','validation_test','q?','ưq','','2018-07-15 06:23:37',NULL,0),(181,'en','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(182,'en','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:37',NULL,0),(183,'en','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:37',NULL,0),(184,'en','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:37',NULL,0),(185,'en','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(186,'en','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:37',NULL,0),(187,'en','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:37',NULL,0),(188,'en','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:37',NULL,0),(189,'en','validation_test','rew','rw','','2018-07-15 06:23:37',NULL,0),(190,'en','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:37',NULL,0),(191,'en','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:37',NULL,0),(192,'en','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:37',NULL,0),(193,'en','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:37',NULL,0),(194,'en','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:37',NULL,0),(195,'en','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:37',NULL,0),(196,'en','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:37',NULL,0),(197,'en','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:37',NULL,0),(198,'en','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:37',NULL,0),(199,'en','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:37',NULL,0),(200,'en','validation_tmp','accepted','The :attribute must be accepted.','','2018-07-15 06:23:38',NULL,0),(201,'en','validation_tmp','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(202,'en','validation_tmp','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(203,'en','validation_tmp','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(204,'en','validation_tmp','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(205,'en','validation_tmp','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(206,'en','validation_tmp','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(207,'en','validation_tmp','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(208,'en','validation_tmp','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(209,'en','validation_tmp','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(210,'en','validation_tmp','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(211,'en','validation_tmp','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(212,'en','validation_tmp','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(213,'en','validation_tmp','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(214,'en','validation_tmp','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(215,'en','validation_tmp','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(216,'en','validation_tmp','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(217,'en','validation_tmp','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(218,'en','validation_tmp','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(219,'en','validation_tmp','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(220,'en','validation_tmp','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(221,'en','validation_tmp','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(222,'en','validation_tmp','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(223,'en','validation_tmp','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(224,'en','validation_tmp','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(225,'en','validation_tmp','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(226,'en','validation_tmp','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(227,'en','validation_tmp','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(228,'en','validation_tmp','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(229,'en','validation_tmp','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(230,'en','validation_tmp','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(231,'en','validation_tmp','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(232,'en','validation_tmp','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(233,'en','validation_tmp','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(234,'en','validation_tmp','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(235,'en','validation_tmp','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(236,'en','validation_tmp','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(237,'en','validation_tmp','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(238,'en','validation_tmp','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(239,'en','validation_tmp','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(240,'en','validation_tmp','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(241,'en','validation_tmp','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(242,'en','validation_tmp','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(243,'en','validation_tmp','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(244,'en','validation_tmp','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(245,'en','validation_tmp','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(246,'en','validation_tmp','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(247,'en','validation_tmp','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(248,'en','validation_tmp','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(249,'en','validation_tmp','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(250,'en','validation_tmp','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(251,'en','validation_tmp','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(252,'en','validation_tmp','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(253,'en','validation_tmp','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(254,'en','validation_tmp','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(255,'en','validation_tmp','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(256,'en','validation_tmp','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(257,'en','validation_tmp','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(258,'en','validation_tmp','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(259,'en','validation_tmp','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(260,'en','validation_tmp','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(261,'en','validation_tmp','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(262,'en','validation_tmp','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(263,'en','validation_tmp','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(264,'en','validation_tmp','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(265,'en','validation_tmp','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(266,'en','validation_tmp','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(267,'en','validation_tmp','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(268,'en','validation_tmp','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(269,'en','validation_tmp','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(270,'en','validation_tmp','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(271,'en','validation_tmp','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(272,'en','validation_tmp','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(273,'en','validation_tmp','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(274,'en','validation_tmp','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(275,'en','validation_tmp','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(276,'en','validation_tmp','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(277,'en','validation_tmp','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(278,'en','validation_tmp','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(279,'en','validation_tmp','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(280,'en','validation_tmp','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(281,'en','validation_tmp','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(282,'en','validation_tmp','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(283,'fr','auth','failed','These credentials do not match our records.','','2018-07-15 06:23:38',NULL,0),(284,'fr','auth','not_active','Le compte est activé','','2018-07-15 06:23:38',NULL,0),(285,'fr','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:38',NULL,0),(286,'fr','label','hhhh','OK','','2018-07-15 06:23:38',NULL,0),(287,'fr','label','hhhhtt','OK','','2018-07-15 06:23:38',NULL,0),(288,'fr','label','OK','OK','','2018-07-15 06:23:38',NULL,0),(289,'fr','label','teest','teest3','','2018-07-15 06:23:38',NULL,0),(290,'fr','label','test3','teest3','','2018-07-15 06:23:38',NULL,0),(291,'fr','pagination','next','Next &raquo;','','2018-07-15 06:23:38',NULL,0),(292,'fr','pagination','previous','&laquo; Previous','','2018-07-15 06:23:38',NULL,0),(293,'fr','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:38',NULL,0),(294,'fr','passwords','reset','Your password has been reset!','','2018-07-15 06:23:38',NULL,0),(295,'fr','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:38',NULL,0),(296,'fr','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:38',NULL,0),(297,'fr','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:38',NULL,0),(298,'fr','validation','99','32','numeric','2018-07-15 06:23:38',NULL,0),(299,'fr','validation','accepted','FR - text','','2018-07-15 06:23:38',NULL,0),(300,'fr','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(301,'fr','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(302,'fr','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(303,'fr','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(304,'fr','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(305,'fr','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(306,'fr','validation','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(307,'fr','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(308,'fr','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(309,'fr','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(310,'fr','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(311,'fr','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(312,'fr','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(313,'fr','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(314,'fr','validation','common_error','erreurs courantes','','2018-07-15 06:23:38',NULL,0),(315,'fr','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(316,'fr','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(317,'fr','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(318,'fr','validation','dff','h','','2018-07-15 06:23:38',NULL,0),(319,'fr','validation','dffuuu','h','','2018-07-15 06:23:38',NULL,0),(320,'fr','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(321,'fr','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(322,'fr','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(323,'fr','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(324,'fr','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(325,'fr','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(326,'fr','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(327,'fr','validation','f vg','gd','','2018-07-15 06:23:38',NULL,0),(328,'fr','validation','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(329,'fr','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(330,'fr','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(331,'fr','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(332,'fr','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(333,'fr','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(334,'fr','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(335,'fr','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(336,'fr','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(337,'fr','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(338,'fr','validation','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(339,'fr','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(340,'fr','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(341,'fr','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(342,'fr','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(343,'fr','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(344,'fr','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(345,'fr','validation','jkl','1','','2018-07-15 06:23:38',NULL,0),(346,'fr','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(347,'fr','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(348,'fr','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(349,'fr','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(350,'fr','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(351,'fr','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(352,'fr','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(353,'fr','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(354,'fr','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(355,'fr','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(356,'fr','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(357,'fr','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(358,'fr','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(359,'fr','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(360,'fr','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(361,'fr','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(362,'fr','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(363,'fr','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(364,'fr','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(365,'fr','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(366,'fr','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(367,'fr','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(368,'fr','validation','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(369,'fr','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(370,'fr','validation','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(371,'fr','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(372,'fr','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(373,'fr','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(374,'fr','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(375,'fr','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(376,'fr','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(377,'fr','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(378,'fr','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(379,'fr','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(380,'fr','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(381,'fr','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(382,'fr','validation','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(383,'fr','validation','test8','test0','file','2018-07-15 06:23:38',NULL,0),(384,'fr','validation','test8','test0','numeric','2018-07-15 06:23:38',NULL,0),(385,'fr','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(386,'fr','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(387,'fr','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(388,'fr','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(389,'fr','validation_test','1','','','2018-07-15 06:23:38',NULL,0),(390,'fr','validation_test','12','21','','2018-07-15 06:23:38',NULL,0),(391,'fr','validation_test','123','123','','2018-07-15 06:23:38',NULL,0),(392,'fr','validation_test','1233','1233','','2018-07-15 06:23:38',NULL,0),(393,'fr','validation_test','12334','1233','','2018-07-15 06:23:38',NULL,0),(394,'fr','validation_test','123346','1233','','2018-07-15 06:23:38',NULL,0),(395,'fr','validation_test','134','134','','2018-07-15 06:23:38',NULL,0),(396,'fr','validation_test','1345','134','','2018-07-15 06:23:38',NULL,0),(397,'fr','validation_test','accepted','FR - text','','2018-07-15 06:23:38',NULL,0),(398,'fr','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:38',NULL,0),(399,'fr','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:38',NULL,0),(400,'fr','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:38',NULL,0),(401,'fr','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:38',NULL,0),(402,'fr','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:38',NULL,0),(403,'fr','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:38',NULL,0),(404,'fr','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:38',NULL,0),(405,'fr','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:38',NULL,0),(406,'fr','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:38',NULL,0),(407,'fr','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:38',NULL,0),(408,'fr','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(409,'fr','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:38',NULL,0),(410,'fr','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:38',NULL,0),(411,'fr','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:38',NULL,0),(412,'fr','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:38',NULL,0),(413,'fr','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:38',NULL,0),(414,'fr','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:38',NULL,0),(415,'fr','validation_test','dfg','','','2018-07-15 06:23:38',NULL,0),(416,'fr','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:38',NULL,0),(417,'fr','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:38',NULL,0),(418,'fr','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:38',NULL,0),(419,'fr','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:38',NULL,0),(420,'fr','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:38',NULL,0),(421,'fr','validation_test','dsd','ds','','2018-07-15 06:23:38',NULL,0),(422,'fr','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:38',NULL,0),(423,'fr','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(424,'fr','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:38',NULL,0),(425,'fr','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:38',NULL,0),(426,'fr','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(427,'fr','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(428,'fr','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:38',NULL,0),(429,'fr','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:38',NULL,0),(430,'fr','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:38',NULL,0),(431,'fr','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(432,'fr','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(433,'fr','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(434,'fr','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:38',NULL,0),(435,'fr','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(436,'fr','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:38',NULL,0),(437,'fr','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:38',NULL,0),(438,'fr','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:38',NULL,0),(439,'fr','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:38',NULL,0),(440,'fr','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:38',NULL,0),(441,'fr','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:38',NULL,0),(442,'fr','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:38',NULL,0),(443,'fr','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(444,'fr','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:38',NULL,0),(445,'fr','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:38',NULL,0),(446,'fr','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:38',NULL,0),(447,'fr','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:38',NULL,0),(448,'fr','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:38',NULL,0),(449,'fr','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:38',NULL,0),(450,'fr','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:38',NULL,0),(451,'fr','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:38',NULL,0),(452,'fr','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:38',NULL,0),(453,'fr','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:38',NULL,0),(454,'fr','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(455,'fr','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:38',NULL,0),(456,'fr','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:38',NULL,0),(457,'fr','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:38',NULL,0),(458,'fr','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:38',NULL,0),(459,'fr','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:38',NULL,0),(460,'fr','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:38',NULL,0),(461,'fr','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(462,'fr','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:38',NULL,0),(463,'fr','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:38',NULL,0),(464,'fr','validation_test','q?','ưqw','','2018-07-15 06:23:38',NULL,0),(465,'fr','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(466,'fr','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:38',NULL,0),(467,'fr','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:38',NULL,0),(468,'fr','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:38',NULL,0),(469,'fr','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(470,'fr','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:38',NULL,0),(471,'fr','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:38',NULL,0),(472,'fr','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:38',NULL,0),(473,'fr','validation_test','rew','','','2018-07-15 06:23:38',NULL,0),(474,'fr','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:38',NULL,0),(475,'fr','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:38',NULL,0),(476,'fr','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:38',NULL,0),(477,'fr','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:38',NULL,0),(478,'fr','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:38',NULL,0),(479,'fr','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:38',NULL,0),(480,'fr','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:38',NULL,0),(481,'fr','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:38',NULL,0),(482,'fr','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:38',NULL,0),(483,'fr','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:38',NULL,0),(484,'jp','auth','failed','These credentials do not match our records.','','2018-07-15 06:23:38',NULL,0),(485,'jp','auth','not_active','アカウントはアクティブではありません','','2018-07-15 06:23:38',NULL,0),(486,'jp','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-07-15 06:23:38',NULL,0),(487,'jp','label','hhhh','OK','','2018-07-15 06:23:39',NULL,0),(488,'jp','label','hhhhtt','OK','','2018-07-15 06:23:39',NULL,0),(489,'jp','label','OK','OK','','2018-07-15 06:23:39',NULL,0),(490,'jp','label','teest','teest1','','2018-07-15 06:23:39',NULL,0),(491,'jp','label','test3','teest1','','2018-07-15 06:23:39',NULL,0),(492,'jp','pagination','next','Next &raquo;','','2018-07-15 06:23:39',NULL,0),(493,'jp','pagination','previous','&laquo; Previous','','2018-07-15 06:23:39',NULL,0),(494,'jp','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-07-15 06:23:39',NULL,0),(495,'jp','passwords','reset','Your password has been reset!','','2018-07-15 06:23:39',NULL,0),(496,'jp','passwords','sent','We have e-mailed your password reset link!','','2018-07-15 06:23:39',NULL,0),(497,'jp','passwords','token','This password reset token is invalid.','','2018-07-15 06:23:39',NULL,0),(498,'jp','passwords','user','We can\'t find a user with that e-mail address.','','2018-07-15 06:23:39',NULL,0),(499,'jp','validation','99','2','numeric','2018-07-15 06:23:39',NULL,0),(500,'jp','validation','accepted','：属性を受け入れる必要があります。','','2018-07-15 06:23:39',NULL,0),(501,'jp','validation','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:39',NULL,0),(502,'jp','validation','after','The :attribute must be a date after :date.','','2018-07-15 06:23:39',NULL,0),(503,'jp','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:39',NULL,0),(504,'jp','validation','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:39',NULL,0),(505,'jp','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:39',NULL,0),(506,'jp','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:39',NULL,0),(507,'jp','validation','array','The :attribute must be an array.','','2018-07-15 06:23:39',NULL,0),(508,'jp','validation','before','The :attribute must be a date before :date.','','2018-07-15 06:23:39',NULL,0),(509,'jp','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:39',NULL,0),(510,'jp','validation','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:39',NULL,0),(511,'jp','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(512,'jp','validation','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:39',NULL,0),(513,'jp','validation','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:39',NULL,0),(514,'jp','validation','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:39',NULL,0),(515,'jp','validation','common_error','一般的なエラー','','2018-07-15 06:23:39',NULL,0),(516,'jp','validation','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:39',NULL,0),(517,'jp','validation','date','The :attribute is not a valid date.','','2018-07-15 06:23:39',NULL,0),(518,'jp','validation','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:39',NULL,0),(519,'jp','validation','dff','h','','2018-07-15 06:23:39',NULL,0),(520,'jp','validation','dffuuu','h','','2018-07-15 06:23:39',NULL,0),(521,'jp','validation','different','The :attribute and :other must be different.','','2018-07-15 06:23:39',NULL,0),(522,'jp','validation','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:39',NULL,0),(523,'jp','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:39',NULL,0),(524,'jp','validation','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:39',NULL,0),(525,'jp','validation','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:39',NULL,0),(526,'jp','validation','email','The :attribute must be a valid email address.','','2018-07-15 06:23:39',NULL,0),(527,'jp','validation','exists','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(528,'jp','validation','f vg','re','','2018-07-15 06:23:39',NULL,0),(529,'jp','validation','file','The :attribute must be a file.','','2018-07-15 06:23:39',NULL,0),(530,'jp','validation','filled','The :attribute field must have a value.','','2018-07-15 06:23:39',NULL,0),(531,'jp','validation','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(532,'jp','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(533,'jp','validation','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:39',NULL,0),(534,'jp','validation','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:39',NULL,0),(535,'jp','validation','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:39',NULL,0),(536,'jp','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(537,'jp','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(538,'jp','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(539,'jp','validation','image','The :attribute must be an image.','','2018-07-15 06:23:39',NULL,0),(540,'jp','validation','in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(541,'jp','validation','integer','The :attribute must be an integer.','','2018-07-15 06:23:39',NULL,0),(542,'jp','validation','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:39',NULL,0),(543,'jp','validation','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:39',NULL,0),(544,'jp','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:39',NULL,0),(545,'jp','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:39',NULL,0),(546,'jp','validation','jkl','1','','2018-07-15 06:23:39',NULL,0),(547,'jp','validation','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:39',NULL,0),(548,'jp','validation','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:39',NULL,0),(549,'jp','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(550,'jp','validation','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:39',NULL,0),(551,'jp','validation','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:39',NULL,0),(552,'jp','validation','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(553,'jp','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(554,'jp','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(555,'jp','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(556,'jp','validation','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:39',NULL,0),(557,'jp','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(558,'jp','validation','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:39',NULL,0),(559,'jp','validation','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:39',NULL,0),(560,'jp','validation','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(561,'jp','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(562,'jp','validation','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:39',NULL,0),(563,'jp','validation','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:39',NULL,0),(564,'jp','validation','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:39',NULL,0),(565,'jp','validation','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:39',NULL,0),(566,'jp','validation','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(567,'jp','validation','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(568,'jp','validation','numeric','The :attribute must be a number.','','2018-07-15 06:23:39',NULL,0),(569,'jp','validation','present','The :attribute field must be present.','','2018-07-15 06:23:39',NULL,0),(570,'jp','validation','regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(571,'jp','validation','required','The :attribute field is required.','','2018-07-15 06:23:39',NULL,0),(572,'jp','validation','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:39',NULL,0),(573,'jp','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:39',NULL,0),(574,'jp','validation','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(575,'jp','validation','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:39',NULL,0),(576,'jp','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:39',NULL,0),(577,'jp','validation','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(578,'jp','validation','same','The :attribute and :other must match.','','2018-07-15 06:23:39',NULL,0),(579,'jp','validation','size','The :attribute must contain :size items.','array','2018-07-15 06:23:39',NULL,0),(580,'jp','validation','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:39',NULL,0),(581,'jp','validation','size','The :attribute must be :size.','numeric','2018-07-15 06:23:39',NULL,0),(582,'jp','validation','size','The :attribute must be :size characters.','string','2018-07-15 06:23:39',NULL,0),(583,'jp','validation','string','The :attribute must be a string.','','2018-07-15 06:23:39',NULL,0),(584,'jp','validation','test8','test0','file','2018-07-15 06:23:39',NULL,0),(585,'jp','validation','test8','test0','numeric','2018-07-15 06:23:39',NULL,0),(586,'jp','validation','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:39',NULL,0),(587,'jp','validation','unique','The :attribute has already been taken.','','2018-07-15 06:23:39',NULL,0),(588,'jp','validation','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:39',NULL,0),(589,'jp','validation','url','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(590,'jp','validation_test','1','','','2018-07-15 06:23:39',NULL,0),(591,'jp','validation_test','12','12','','2018-07-15 06:23:39',NULL,0),(592,'jp','validation_test','123','123','','2018-07-15 06:23:39',NULL,0),(593,'jp','validation_test','1233','1233','','2018-07-15 06:23:39',NULL,0),(594,'jp','validation_test','12334','1233','','2018-07-15 06:23:39',NULL,0),(595,'jp','validation_test','123346','1233','','2018-07-15 06:23:39',NULL,0),(596,'jp','validation_test','134','134','','2018-07-15 06:23:39',NULL,0),(597,'jp','validation_test','1345','134','','2018-07-15 06:23:39',NULL,0),(598,'jp','validation_test','accepted','：属性','','2018-07-15 06:23:39',NULL,0),(599,'jp','validation_test','active_url','The :attribute is not a valid URL.','','2018-07-15 06:23:39',NULL,0),(600,'jp','validation_test','after','The :attribute must be a date after :date.','','2018-07-15 06:23:39',NULL,0),(601,'jp','validation_test','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-07-15 06:23:39',NULL,0),(602,'jp','validation_test','alpha','The :attribute may only contain letters.','','2018-07-15 06:23:39',NULL,0),(603,'jp','validation_test','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-07-15 06:23:39',NULL,0),(604,'jp','validation_test','alpha_num','The :attribute may only contain letters and numbers.','','2018-07-15 06:23:39',NULL,0),(605,'jp','validation_test','array','The :attribute must be an array.','','2018-07-15 06:23:39',NULL,0),(606,'jp','validation_test','before','The :attribute must be a date before :date.','','2018-07-15 06:23:39',NULL,0),(607,'jp','validation_test','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-07-15 06:23:39',NULL,0),(608,'jp','validation_test','between','The :attribute must have between :min and :max items.','array','2018-07-15 06:23:39',NULL,0),(609,'jp','validation_test','between','The :attribute must be between :min and :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(610,'jp','validation_test','between','The :attribute must be between :min and :max.','numeric','2018-07-15 06:23:39',NULL,0),(611,'jp','validation_test','between','The :attribute must be between :min and :max characters.','string','2018-07-15 06:23:39',NULL,0),(612,'jp','validation_test','boolean','The :attribute field must be true or false.','','2018-07-15 06:23:39',NULL,0),(613,'jp','validation_test','confirmed','The :attribute confirmation does not match.','','2018-07-15 06:23:39',NULL,0),(614,'jp','validation_test','date','The :attribute is not a valid date.','','2018-07-15 06:23:39',NULL,0),(615,'jp','validation_test','date_format','The :attribute does not match the format :format.','','2018-07-15 06:23:39',NULL,0),(616,'jp','validation_test','dfg','gfd','','2018-07-15 06:23:39',NULL,0),(617,'jp','validation_test','different','The :attribute and :other must be different.','','2018-07-15 06:23:39',NULL,0),(618,'jp','validation_test','digits','The :attribute must be :digits digits.','','2018-07-15 06:23:39',NULL,0),(619,'jp','validation_test','digits_between','The :attribute must be between :min and :max digits.','','2018-07-15 06:23:39',NULL,0),(620,'jp','validation_test','dimensions','The :attribute has invalid image dimensions.','','2018-07-15 06:23:39',NULL,0),(621,'jp','validation_test','distinct','The :attribute field has a duplicate value.','','2018-07-15 06:23:39',NULL,0),(622,'jp','validation_test','dsd','sd','','2018-07-15 06:23:39',NULL,0),(623,'jp','validation_test','email','The :attribute must be a valid email address.','','2018-07-15 06:23:39',NULL,0),(624,'jp','validation_test','exists','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(625,'jp','validation_test','file','The :attribute must be a file.','','2018-07-15 06:23:39',NULL,0),(626,'jp','validation_test','filled','The :attribute field must have a value.','','2018-07-15 06:23:39',NULL,0),(627,'jp','validation_test','gt','The :attribute must have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(628,'jp','validation_test','gt','The :attribute must be greater than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(629,'jp','validation_test','gt','The :attribute must be greater than :value.','numeric','2018-07-15 06:23:39',NULL,0),(630,'jp','validation_test','gt','The :attribute must be greater than :value characters.','string','2018-07-15 06:23:39',NULL,0),(631,'jp','validation_test','gte','The :attribute must have :value items or more.','array','2018-07-15 06:23:39',NULL,0),(632,'jp','validation_test','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(633,'jp','validation_test','gte','The :attribute must be greater than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(634,'jp','validation_test','gte','The :attribute must be greater than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(635,'jp','validation_test','image','The :attribute must be an image.','','2018-07-15 06:23:39',NULL,0),(636,'jp','validation_test','in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(637,'jp','validation_test','integer','The :attribute must be an integer.','','2018-07-15 06:23:39',NULL,0),(638,'jp','validation_test','in_array','The :attribute field does not exist in :other.','','2018-07-15 06:23:39',NULL,0),(639,'jp','validation_test','ip','The :attribute must be a valid IP address.','','2018-07-15 06:23:39',NULL,0),(640,'jp','validation_test','ipv4','The :attribute must be a valid IPv4 address.','','2018-07-15 06:23:39',NULL,0),(641,'jp','validation_test','ipv6','The :attribute must be a valid IPv6 address.','','2018-07-15 06:23:39',NULL,0),(642,'jp','validation_test','json','The :attribute must be a valid JSON string.','','2018-07-15 06:23:39',NULL,0),(643,'jp','validation_test','lt','The :attribute must have less than :value items.','array','2018-07-15 06:23:39',NULL,0),(644,'jp','validation_test','lt','The :attribute must be less than :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(645,'jp','validation_test','lt','The :attribute must be less than :value.','numeric','2018-07-15 06:23:39',NULL,0),(646,'jp','validation_test','lt','The :attribute must be less than :value characters.','string','2018-07-15 06:23:39',NULL,0),(647,'jp','validation_test','lte','The :attribute must not have more than :value items.','array','2018-07-15 06:23:39',NULL,0),(648,'jp','validation_test','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-07-15 06:23:39',NULL,0),(649,'jp','validation_test','lte','The :attribute must be less than or equal :value.','numeric','2018-07-15 06:23:39',NULL,0),(650,'jp','validation_test','lte','The :attribute must be less than or equal :value characters.','string','2018-07-15 06:23:39',NULL,0),(651,'jp','validation_test','max','The :attribute may not have more than :max items.','array','2018-07-15 06:23:39',NULL,0),(652,'jp','validation_test','max','The :attribute may not be greater than :max kilobytes.','file','2018-07-15 06:23:39',NULL,0),(653,'jp','validation_test','max','The :attribute may not be greater than :max.','numeric','2018-07-15 06:23:39',NULL,0),(654,'jp','validation_test','max','The :attribute may not be greater than :max characters.','string','2018-07-15 06:23:39',NULL,0),(655,'jp','validation_test','mimes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(656,'jp','validation_test','mimetypes','The :attribute must be a file of type: :values.','','2018-07-15 06:23:39',NULL,0),(657,'jp','validation_test','min','The :attribute must have at least :min items.','array','2018-07-15 06:23:39',NULL,0),(658,'jp','validation_test','min','The :attribute must be at least :min kilobytes.','file','2018-07-15 06:23:39',NULL,0),(659,'jp','validation_test','min','The :attribute must be at least :min.','numeric','2018-07-15 06:23:39',NULL,0),(660,'jp','validation_test','min','The :attribute must be at least :min characters.','string','2018-07-15 06:23:39',NULL,0),(661,'jp','validation_test','not_in','The selected :attribute is invalid.','','2018-07-15 06:23:39',NULL,0),(662,'jp','validation_test','not_regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(663,'jp','validation_test','numeric','The :attribute must be a number.','','2018-07-15 06:23:39',NULL,0),(664,'jp','validation_test','present','The :attribute field must be present.','','2018-07-15 06:23:39',NULL,0),(665,'jp','validation_test','q?','ưq','','2018-07-15 06:23:39',NULL,0),(666,'jp','validation_test','regex','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(667,'jp','validation_test','required','The :attribute field is required.','','2018-07-15 06:23:39',NULL,0),(668,'jp','validation_test','required_if','The :attribute field is required when :other is :value.','','2018-07-15 06:23:39',NULL,0),(669,'jp','validation_test','required_unless','The :attribute field is required unless :other is in :values.','','2018-07-15 06:23:39',NULL,0),(670,'jp','validation_test','required_with','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(671,'jp','validation_test','required_without','The :attribute field is required when :values is not present.','','2018-07-15 06:23:39',NULL,0),(672,'jp','validation_test','required_without_all','The :attribute field is required when none of :values are present.','','2018-07-15 06:23:39',NULL,0),(673,'jp','validation_test','required_with_all','The :attribute field is required when :values is present.','','2018-07-15 06:23:39',NULL,0),(674,'jp','validation_test','rew','rwer','','2018-07-15 06:23:39',NULL,0),(675,'jp','validation_test','same','The :attribute and :other must match.','','2018-07-15 06:23:39',NULL,0),(676,'jp','validation_test','size','The :attribute must contain :size items.','array','2018-07-15 06:23:39',NULL,0),(677,'jp','validation_test','size','The :attribute must be :size kilobytes.','file','2018-07-15 06:23:39',NULL,0),(678,'jp','validation_test','size','The :attribute must be :size.','numeric','2018-07-15 06:23:39',NULL,0),(679,'jp','validation_test','size','The :attribute must be :size characters.','string','2018-07-15 06:23:39',NULL,0),(680,'jp','validation_test','string','The :attribute must be a string.','','2018-07-15 06:23:39',NULL,0),(681,'jp','validation_test','timezone','The :attribute must be a valid zone.','','2018-07-15 06:23:39',NULL,0),(682,'jp','validation_test','unique','The :attribute has already been taken.','','2018-07-15 06:23:39',NULL,0),(683,'jp','validation_test','uploaded','The :attribute failed to upload.','','2018-07-15 06:23:39',NULL,0),(684,'jp','validation_test','url','The :attribute format is invalid.','','2018-07-15 06:23:39',NULL,0),(685,'en','','',NULL,'','2018-07-16 15:30:07',NULL,0),(686,'fr','','',NULL,'','2018-07-16 15:30:07',NULL,0),(687,'jp','','',NULL,'','2018-07-16 15:30:07',NULL,0);
/*!40000 ALTER TABLE `sys_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_validation_input_type`
--

DROP TABLE IF EXISTS `sys_validation_input_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_validation_input_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(45) DEFAULT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_code_UNIQUE` (`type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_validation_input_type`
--

LOCK TABLES `sys_validation_input_type` WRITE;
/*!40000 ALTER TABLE `sys_validation_input_type` DISABLE KEYS */;
INSERT INTO `sys_validation_input_type` VALUES (1,'numeric','numeric'),(2,'file','file'),(3,'string','string'),(4,'array','array');
/*!40000 ALTER TABLE `sys_validation_input_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1@mail.com','$2y$10$XQHQV4cWDV4GNjukZPSUxu.rDeRnaOG5NwFbNsOX0CIeBGJ527K06',1,'A','GJtkVEui6GPLehPg5nMzBQ8acAlB3PSkoqSayxxdYYhHkfzGQxxgqC3x21jE',NULL,NULL,1),(2,'2@mail.com','$2y$10$XQHQV4cWDV4GNjukZPSUxu.rDeRnaOG5NwFbNsOX0CIeBGJ527K06',2,'B','Kr1iNpJ26osLDK2kOyGaH6zcwpN4gZSEQU5n4Y9l4ZdjHUNmO7rbZ9aCuw3d',NULL,NULL,1),(33,'thanh02190@mail.com','$2y$10$75FUTiHQ1Q.tLi/UnURjTe3EO2i9oENevxZCq9Ls0uRwk9GArkbLW',10,'virtual_2018-07-11 08:18:19',NULL,'2018-07-11 08:18:19','2018-07-11 08:18:19',NULL),(35,'thanh02199@mail.com','$2y$10$40hu3JU1LvcMCum/3UwO8Oy1aUnr9p9EDZOuT83wu0uG43O.5O2n2',10,'virtual_2018-07-11 08:20:57',NULL,'2018-07-11 08:20:57','2018-07-11 08:20:57',NULL),(36,'thanh021992@mail.com','$2y$10$J5oHSNXtdrO.TgEgHLL/7ucnDpPcbl4Wor4fGM.QWqmc7SH6UhWDm',10,'virtual_2018-07-11 08:21:57',NULL,'2018-07-11 08:21:58','2018-07-11 08:21:58',NULL),(38,'thanh0219889@mail.com','$2y$10$Gufgvo77wi/NFPPg97D0p.NQVxX03NN8ql0BZrGGlq/5VHJGMbcJS',10,'virtual_2018-07-11 09:51:09',NULL,'2018-07-11 09:51:09','2018-07-11 09:51:09',NULL),(39,'thanh02198893@mail.com','$2y$10$xwlgLl3EDckcOC5ea/esHu1uBSg2S8nZL8dbOJLAR/MCMtv3snaRi',10,'virtual_2018-07-11 09:53:34',NULL,'2018-07-11 09:53:34','2018-07-11 09:53:34',NULL),(42,'thanh021988993@mail.com','$2y$10$onfE6NeA3F3qP8FqXzZdyOPPkcvnW48TE9ABTBcw8cGICpL2aEz.y',10,'virtual_2018-07-11 09:58:21',NULL,'2018-07-11 09:58:21','2018-07-11 09:58:21',NULL),(43,'thanh021@mail.com','$2y$10$MiJ/ZpWDxU9Qt5bJs.qNz.W.j7YHx4HAI0NNXRP35pSoU21Jt9xTa',10,'virtual_2018-07-11 09:59:56',NULL,'2018-07-11 09:59:56','2018-07-11 09:59:56',NULL),(45,'thanh04321@mail.com','$2y$10$E3.HPoBQSiEvk1VsIo9pde5vP40y40EdlS/4ckY5SmL/E3v6JhGwm',10,'virtual_2018-07-11 10:17:52',NULL,'2018-07-11 10:17:52','2018-07-11 10:17:52',NULL),(46,'part@mail.com','$2y$10$GtztzTgtL9MGvgotjm7q5uq.5LUR3XUNV4GuwTfWTiyiR6mObe7gW',10,'virtual_2018-07-11 10:25:14',NULL,'2018-07-11 10:25:14','2018-07-11 10:25:14',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_detail`
--

DROP TABLE IF EXISTS `users_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_detail` (
  `user_id` int(11) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_detail`
--

LOCK TABLES `users_detail` WRITE;
/*!40000 ALTER TABLE `users_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_category_item_level`
--

DROP TABLE IF EXISTS `view_category_item_level`;
/*!50001 DROP VIEW IF EXISTS `view_category_item_level`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_category_item_level` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `lft`,
 1 AS `rgt`,
 1 AS `url`,
 1 AS `order_value`,
 1 AS `level_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'laravel_common'
--
/*!50003 DROP FUNCTION IF EXISTS `get_error_code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_error_code`() RETURNS int(11)
BEGIN
	RETURN -1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_error_message` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_error_message`(code INT, message_code VARCHAR(255)) RETURNS varchar(255) CHARSET latin1
BEGIN
	RETURN '';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_success_code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_success_code`() RETURNS int(11)
BEGIN
	RETURN 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STRING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRING`(
	str LONGTEXT CHARSET utf8,
	delim VARCHAR(10) ,
	pos INT
) RETURNS longtext CHARSET utf8
RETURN REPLACE(
	SUBSTRING(
		SUBSTRING_INDEX(str , delim , pos) ,
		CHAR_LENGTH(
			SUBSTRING_INDEX(str , delim , pos - 1)
		) + 1
	) ,
	delim ,
	''
) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_MODULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_MODULES_LST`()
BEGIN
	SELECT * FROM sys_modules ORDER BY order_value;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_ROLES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_ROLES_LST`()
BEGIN
	SELECT * FROM sys_roles
    ORDER BY role_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_ROLES_MAP_ACTION_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_ROLES_MAP_ACTION_LST`()
BEGIN

	SELECT
		SR.id AS role_id
	,	SR.name AS role_name
    ,	SR.role_value AS role_value
    ,	SR.description AS role_description
    FROM sys_roles AS SR
    ORDER BY SR.role_value;

	SELECT
		SR.id AS role_id
	,	RMS.id AS role_map_id
	,	SR.name AS role_name
    ,	SR.role_value AS role_value
    ,	SR.description AS role_description
    ,	SS.module
    ,	SS.controller
    ,	SS.action
    ,	RMS.is_active AS is_active
    ,	SS.screen_code AS screen_code
    FROM sys_roles AS SR
    LEFT JOIN sys_role_map_screen AS RMS ON
			SR.role_value = RMS.role_value
	LEFT JOIN sys_screens AS SS ON
			RMS.screen_id = SS.id
	INNER JOIN sys_modules AS DM ON
			DM.module_code = SS.module
		AND DM.is_skip_acl <> 1
	ORDER BY
		SR.role_value
	,	RMS.screen_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_ROLE_UPDATE_ACTIVE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive
	WHERE
		id = roleMapId;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_ROLE_UPDATE_ACTIVE_ALL_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_GET_CATEGORY_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.`name`, BASE.level_value , TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_ADD_TRANSLATE_COMBO_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_ADD_TRANSLATE_COMBO_LST`()
BEGIN

    SELECT
		id
	,	type_code
    ,	type_name
	FROM sys_validation_input_type;

	SELECT
		id
	,	code
    ,	comment
    ,	has_input_type
    FROM sys_translate_type
    ORDER BY order_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_BACKUP_TRANSLATE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_BACKUP_TRANSLATE_ACT`()
BEGIN

    TRUNCATE TABLE sys_translate_backup;
	INSERT INTO sys_translate_backup(
		id
	,	lang_code
    ,	translate_type
    ,	code
    ,	text
    ,	input_type
    ,	created_At
    ,	updated_at
    ,	is_deleted

    )
    SELECT
    	id
	,	lang_code
    ,	translate_type
    ,	code
    ,	text
    ,	input_type
    ,	created_At
    ,	updated_at
    ,	is_deleted
    FROM sys_translation;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_CATELORY_ADD_CHILD_IN_LEFT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_CATELORY_ADD_CHILD_IN_LEFT`(parentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
BEGIN
	DECLARE lft_tmp INT default 0;
    DECLARE newId INT default 0;
    SET lft_tmp = (
		SELECT lft FROM catelory
		WHERE id = parentNodeId
        LIMIT 1
	);
    
    SET SQL_SAFE_UPDATES = 0;
    UPDATE catelory
	SET
		lft = lft+2
    WHERE
		lft > lft_tmp;
	
	UPDATE catelory
	SET
		rgt = rgt+2
    WHERE
		rgt > lft_tmp;
	
    INSERT INTO catelory(name, lft, rgt,url) VALUES(newNodeName, lft_tmp + 1, lft_tmp + 2,newUrl);
    SET newId = LAST_INSERT_ID();
    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code","newid":',newId,'}'));
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_CATELORY_ADD_SIBLING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_CATELORY_ADD_SIBLING`(currentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
BEGIN
	DECLARE rgt_tmp INT default 0;
    DECLARE newId INT default 0;
    SET rgt_tmp = (
		SELECT  rgt FROM catelory
		WHERE id = currentNodeId
        LIMIT 1);
    
    UPDATE catelory
	SET
		lft = lft+2
    WHERE
		lft > rgt_tmp;
	 UPDATE catelory
	SET
		rgt = rgt+2
    WHERE
		rgt > rgt_tmp;
	
    INSERT INTO catelory(name, lft, rgt,url) VALUES(newNodeName, rgt_tmp + 1, rgt_tmp + 2,newUrl);
    SET newId = LAST_INSERT_ID();
    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code","newid":',newId,'}'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_CATELORY_DELETE_NODE_AND_CHILD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_CATELORY_DELETE_NODE_AND_CHILD`(nodeId INT)
BEGIN
	DECLARE myLeft INT default 0;
    DECLARE myRight INT default 0;
	DECLARE myWidth INT default 0;
    
	SELECT lft, rgt,(rgt - lft + 1) INTO myLeft , myRight , myWidth
	FROM catelory
	WHERE id = nodeId;

	DELETE FROM catelory WHERE lft BETWEEN myLeft AND myRight;

	UPDATE catelory SET rgt = rgt - myWidth WHERE rgt > myRight;
	UPDATE catelory SET lft = lft - myWidth WHERE lft > myRight;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_CATELORY_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_CATELORY_UPDATE`(nodeId INT, pName VARCHAR(100),p_url VARCHAR(100) )
BEGIN
	UPDATE catelory SET name = pName , url = p_url WHERE id = nodeId;
    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code"}'));
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_ALL_SP_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_ALL_SP_LST`()
BEGIN
	SHOW PROCEDURE STATUS
	WHERE Db = DATABASE() AND Type = 'PROCEDURE';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_ALL_TABLE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_ALL_TABLE_LST`()
BEGIN
	select table_name As name from information_schema.tables WHERE TABLE_SCHEMA = DATABASE();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_CATEGORY_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.name, BASE.level_value ,BASE.url, BASE.order_value, TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_CATEGORY_WITH_LEVEL_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_CATEGORY_WITH_LEVEL_LIST`()
BEGIN
	SELECT BASE.id, BASE.name, BASE.level_value, BASE.lft, BASE.rgt,BASE.url, BASE.order_value
    FROM view_category_item_level AS BASE
	ORDER BY BASE.lft;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_LANGUAGE_CODE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_LANGUAGE_CODE_LST`()
BEGIN
	SELECT
		id,
        code,
        name
	FROM sys_languages;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_MODULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_MODULES_LST`()
BEGIN
	SELECT * FROM sys_modules ORDER BY order_value;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_PARAM_OF_SPS_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_PARAM_OF_SPS_LST`(p_procedureName VARCHAR(250) charset utf8)
BEGIN

	SELECT *
	FROM information_schema.parameters
	WHERE SPECIFIC_NAME = p_procedureName
    AND SPECIFIC_SCHEMA = DATABASE()
    ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_ROLES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_ROLES_LST`()
BEGIN
	SELECT * FROM sys_roles
    ORDER BY role_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_ROLES_MAP_ACTION_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_ROLES_MAP_ACTION_LST`()
BEGIN

	SELECT
		SR.id AS role_id
	,	SR.name AS role_name
    ,	SR.role_value AS role_value
    ,	SR.description AS role_description
    FROM sys_roles AS SR
    ORDER BY SR.role_value;

	SELECT
		SR.id AS role_id
	,	RMS.id AS role_map_id
	,	SR.name AS role_name
    ,	SR.role_value AS role_value
    ,	SR.description AS role_description
    ,	SS.module
    ,	SS.controller
    ,	SS.action
    ,	RMS.is_active AS is_active
    ,	SS.screen_code AS screen_code
    FROM sys_roles AS SR
    LEFT JOIN sys_role_map_screen AS RMS ON
			SR.role_value = RMS.role_value
	LEFT JOIN sys_screens AS SS ON
			RMS.screen_id = SS.id
	INNER JOIN sys_modules AS DM ON
			DM.module_code = SS.module
		AND DM.is_skip_acl <> 1
	ORDER BY
		SR.role_value
	,	RMS.screen_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_TRANSLATION_DATA_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_TRANSLATION_DATA_LST`( p_translate_type_code VARCHAR(50),p_lang VARCHAR(50) )
BEGIN
	SELECT
			V.id
		,	V.lang_code
        ,	VI.type_code
		,	V.code
		,	V.text
        ,	TT.code AS translate_type_code
		FROM sys_translation AS V
		LEFT JOIN sys_validation_input_type AS VI ON
			V.input_type = VI.type_code
		LEFT JOIN sys_translate_type TT ON
			V.translate_type= TT.code
		WHERE
				(V.is_deleted IS NULL OR  V.is_deleted<>1)
			AND (	p_translate_type_code IS NULL OR p_translate_type_code = '' OR TT.code= p_translate_type_code)
			AND (TT.code IS NOT NULL)
            AND (	p_lang IS NULL OR p_lang = '' OR V.lang_code= p_lang)
        ORDER BY
				V.lang_code
			,	V.code
			,	VI.type_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_TRANSLATION_TYPE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_TRANSLATION_TYPE_LST`()
BEGIN
	SELECT id,code,comment,has_input_type FROM sys_translate_type
    ORDER BY code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_GET_VALIDATION_RULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_GET_VALIDATION_RULES_LST`()
BEGIN
	SELECT
		V.id
	,	V.lang_code
    ,	V.code
    ,	VI.type_name
    ,	V.text
	FROM sys_translation AS V
    LEFT JOIN sys_validation_input_type AS VI ON
		V.input_type = VI.id
	LEFT JOIN sys_translate_type TT ON
		V.translate_type= TT.id
	WHERE
			V.is_deleted IS NULL
		OR  V.is_deleted<>1
		AND TT.code= 'validation'
	ORDER BY
			V.lang_code
		,	V.code
        ,	VI.type_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_IMPORT_AND_MERGER_ROLE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_IMPORT_AND_MERGER_ROLE_ACT`(p_listScreen JSON)
BEGIN

		
		DECLARE i,j INT DEFAULT 1;
		DECLARE countElement INT DEFAULT 0;
		DECLARE screen_json_arr JSON;
		DECLARE tmpRecord JSON;
		CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_INFO (
			id INT NOT NULL  AUTO_INCREMENT,
			module VARCHAR(50) NOT NULL,
			controller VARCHAR(50) NOT NULL,
			action_name VARCHAR(50) NOT NULL,
            screen_code VARCHAR(100) NOT NULL,
            description VARCHAR(100),
			PRIMARY KEY (id)
		);
		CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_MAP_ROLE (
			module VARCHAR(50) NOT NULL,
			controller VARCHAR(50) NOT NULL,
			action_name VARCHAR(50) NOT NULL,
			role_value INT,
			is_active TINYINT(4)
		);
        CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_MAP_ROLE_INSERT (
			module VARCHAR(50) NOT NULL,
			controller VARCHAR(50) NOT NULL,
			action_name VARCHAR(50) NOT NULL,
			role_value INT,
			is_active TINYINT(4)
		);
        START TRANSACTION;
		/**
		INIT INPUT DATA
		**/
		SET screen_json_arr = JSON_EXTRACT(p_listScreen,'$.*');
		SET countElement = JSON_LENGTH(screen_json_arr) ;
		WHILE i <= countElement DO
			SET j = i-1;
			SET tmpRecord = JSON_EXTRACT(screen_json_arr,CONCAT('$[',j,']'));
			INSERT INTO SCREEN_INFO(
				id
			,	module
			,	controller
			,	action_name
            ,	screen_code
            ,	description
			)
			SELECT
				i
			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.module'))
			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.controller'))
			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.action'))
            ,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.screen_code'))
            ,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.description'))
			;
			SET i = i+1;
		END WHILE;
        
		/** BUSSINESS**/
		INSERT SCREEN_MAP_ROLE(
			module ,
			controller,
			action_name,
			role_value,
			is_active
		)
		SELECT
			S.module
		,	S.controller
		,	S.action
		,	RMS.role_value
		,	RMS.is_active
		FROM sys_role_map_screen AS RMS
		INNER JOIN sys_screens AS S ON
			RMS.screen_id = S.id;
		/** Remove all not exists in screen list**/
        
		DELETE FROM SCREEN_MAP_ROLE
        WHERE
			SCREEN_MAP_ROLE.module NOT IN (SELECT module FROM SCREEN_INFO);
		DELETE FROM SCREEN_MAP_ROLE
        WHERE
			 SCREEN_MAP_ROLE.controller NOT IN (SELECT controller FROM SCREEN_INFO);
		DELETE FROM SCREEN_MAP_ROLE
        WHERE
			SCREEN_MAP_ROLE.action_name NOT IN (SELECT action_name FROM SCREEN_INFO);

		
        INSERT INTO SCREEN_MAP_ROLE_INSERT(
			module ,
			controller,
			action_name,
			role_value,
			is_active
        )
        SELECT
			module ,
			controller,
			action_name,
			role_value,
			is_active
		FROM SCREEN_MAP_ROLE;


		INSERT INTO SCREEN_MAP_ROLE_INSERT(
			module ,
			controller,
			action_name,
			role_value,
			is_active
		)
		SELECT DISTINCT
			S.module
		,	S.controller
		,	S.action_name
		,	R.role_value
		,	0
		FROM SCREEN_INFO AS S
        LEFT JOIN SCREEN_MAP_ROLE AS RMS  ON
				S.module =  RMS.module
			AND	S.controller =  RMS.controller
			AND S.action_name = RMS.action_name
        CROSS JOIN sys_roles AS R
        WHERE RMS.module IS NULL;

		TRUNCATE TABLE sys_screens;
		INSERT INTO sys_screens(
			id
		,	module
		,	controller
		,	action
        ,	screen_code
		,	description
		)
		SELECT
			id
		,	module
		,	controller
		,	action_name
        ,	screen_code
		,	description
		FROM SCREEN_INFO;

		TRUNCATE TABLE sys_role_map_screen;
		INSERT INTO sys_role_map_screen(
			role_value
		,	screen_id
		,	is_active
		)
		SELECT
			RMS.role_value
		,	S.id
		,	RMS.is_active
		FROM SCREEN_MAP_ROLE_INSERT AS RMS
		INNER JOIN sys_screens AS S ON
				RMS.module =  S.module
			AND RMS.controller = S.controller
			AND RMS.action_name = S.action;

        COMMIT;

		DROP TABLE SCREEN_INFO;
		DROP TABLE SCREEN_MAP_ROLE;
        DROP TABLE SCREEN_MAP_ROLE_INSERT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_ROLE_UPDATE_ACTIVE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive
	WHERE
		id = roleMapId;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_ROLE_UPDATE_ACTIVE_ALL_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_TRANSLATE_DELETE_TEXT_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_TRANSLATE_DELETE_TEXT_ACT`(p_id INT)
BEGIN
	DELETE FROM sys_translation WHERE id= p_id;
	CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_TRANSLATE_INSERT_NEW_TEXT_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_TRANSLATE_INSERT_NEW_TEXT_ACT`(
	p_transType VARCHAR(20)
,	p_transInputType VARCHAR(20)
,	p_transTextCode VARCHAR(100)
,	p_textTrans JSON
)
BEGIN

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	BEGIN
		call sys_show_message_error('-9999','DB_exception_code');
	END;
	CREATE  temporary TABLE IF NOT EXISTS temp(
		id INT NOT NULL AUTO_INCREMENT
    ,	lang VARCHAR(20)
    ,	trans_text VARCHAR(255) ,
    PRIMARY KEY (id)
    ) engine Memory;

    IF NOT EXISTS(SELECT id FROM sys_translation
    WHERE 	(code=p_transTextCode AND COALESCE(input_type,'') = COALESCE(p_transInputType,'') )
        OR (code=p_transTextCode
				AND (
					(	COALESCE(input_type,'') = '' AND COALESCE(p_transInputType,'')<> '')
                OR (COALESCE(input_type,'') <> '' AND COALESCE(p_transInputType,'')= '')
                )
			)
	) THEN
		INSERT INTO temp(
			lang
		,	trans_text
		)
		SELECT
			SL.code,
			JSON_UNQUOTE(JSON_EXTRACT(p_textTrans, CONCAT('$.',SL.code))) AS trans_text
		FROM  sys_languages AS SL;

		INSERT INTO sys_translation(
				lang_code
			,	translate_type
			,	code
			,	text
			,	input_type
			,	created_at
			,	updated_at
			,	is_deleted
		)
		SELECT
			TMP.lang
		,	p_transType
		,	p_transTextCode
		,	TMP.trans_text
		,	p_transInputType
		,	NOW()
		,	NULL
		,	0
		FROM temp AS TMP;
        CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
    ELSE
		call sys_show_result(get_error_code(),'{"#trans-code":"trans_exists_code"}');
    END IF;


    DROP TABLE temp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_TRANSLATE_UPDATE_TEXT_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEV_TRANSLATE_UPDATE_TEXT_ACT`(
	p_id INT
,	p_text TEXT  CHARACTER SET utf8 )
BEGIN
	UPDATE sys_translation
    SET
		text = p_text
	,	updated_at = NOW()
	WHERE
		id = p_id;

	CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_CATEGORY_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.`name`, BASE.level_value , TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_CATEGORY_WITH_LEVEL_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_CATEGORY_WITH_LEVEL_LIST`()
BEGIN
	SELECT BASE.id, BASE.`name`, BASE.level_value, BASE.lft, BASE.rgt
    FROM view_category_item_level AS BASE
	ORDER BY BASE.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_error` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_error`(code INT, dataError JSON)
BEGIN
	SELECT code AS code, dataError AS data_error;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_exception` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_exception`(message_code varchar(500))
BEGIN
	SELECT -9999 AS code, message_code AS message_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_success` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_success`()
BEGIN
	SELECT 0 AS code, 'success_message' AS message_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_result` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_result`(code INT, dataError JSON)
BEGIN
	SELECT code AS code, dataError AS data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_category_item_level`
--

/*!50001 DROP VIEW IF EXISTS `view_category_item_level`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_category_item_level` AS select `n`.`id` AS `id`,`n`.`name` AS `name`,`n`.`lft` AS `lft`,`n`.`rgt` AS `rgt`,`n`.`url` AS `url`,`n`.`order_value` AS `order_value`,(count(`p`.`id`) - 1) AS `level_value` from (`catelory` `n` left join `catelory` `p` on((`n`.`lft` between `p`.`lft` and `p`.`rgt`))) group by `n`.`id`,`n`.`name`,`n`.`lft`,`n`.`rgt` */;
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

-- Dump completed on 2018-07-30 18:32:50
