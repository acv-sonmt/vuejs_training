-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.3.87    Database: test_migration
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
-- Position to start replication or point-in-time recovery from
--

-- CHANGE MASTER TO MASTER_LOG_FILE='binlog.000023', MASTER_LOG_POS=155;

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
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catelory`
--

LOCK TABLES `catelory` WRITE;
/*!40000 ALTER TABLE `catelory` DISABLE KEYS */;
REPLACE INTO `catelory` VALUES (1,'Root',1,16,'https://root.com',NULL);
/*!40000 ALTER TABLE `catelory` ENABLE KEYS */;
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
REPLACE INTO `sys_languages` VALUES (1,'jp','Japanese',NULL),(2,'en','English',NULL),(3,'fr','France',NULL);
/*!40000 ALTER TABLE `sys_languages` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_modules`
--

LOCK TABLES `sys_modules` WRITE;
/*!40000 ALTER TABLE `sys_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_modules` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_map_screen`
--

LOCK TABLES `sys_role_map_screen` WRITE;
/*!40000 ALTER TABLE `sys_role_map_screen` DISABLE KEYS */;
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
REPLACE INTO `sys_roles` VALUES (1,'System Administrator',1,'Full access'),(2,'Mananger',2,NULL),(3,'User',3,NULL),(4,'Guess',0,NULL),(5,'OtherParty',10,NULL);
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
/*!40000 ALTER TABLE `sys_screens` ENABLE KEYS */;
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
REPLACE INTO `sys_translate_type` VALUES (1,'validation','type of message validation',1,1),(2,'label',NULL,NULL,2),(3,'auth',NULL,NULL,3),(4,'passwords',NULL,NULL,4),(5,'pagination',NULL,NULL,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translation`
--

LOCK TABLES `sys_translation` WRITE;
/*!40000 ALTER TABLE `sys_translation` DISABLE KEYS */;
REPLACE INTO `sys_translation` VALUES (1,'en','auth','not_active','Account mus actived','','2018-08-14 17:08:43',NULL,0),(2,'en','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-08-14 17:08:43',NULL,0),(3,'en','pagination','next','Next &raquo;','','2018-08-14 17:08:43',NULL,0),(4,'en','pagination','previous','&laquo; Previous','','2018-08-14 17:08:43',NULL,0),(5,'en','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-08-14 17:08:43',NULL,0),(6,'en','passwords','reset','Your password has been reset!','','2018-08-14 17:08:43',NULL,0),(7,'en','passwords','sent','We have e-mailed your password reset link!','','2018-08-14 17:08:43',NULL,0),(8,'en','passwords','token','This password reset token is invalid.','','2018-08-14 17:08:43',NULL,0),(9,'en','passwords','user','We can\'t find a user with that e-mail address.','','2018-08-14 17:08:43',NULL,0),(10,'en','validation','accepted','The :attribute must be accepted.','','2018-08-14 17:08:43',NULL,0),(11,'en','validation','active_url','The :attribute is not a valid URL.','','2018-08-14 17:08:43',NULL,0),(12,'en','validation','after','The :attribute must be a date after :date.','','2018-08-14 17:08:43',NULL,0),(13,'en','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-08-14 17:08:43',NULL,0),(14,'en','validation','alpha','The :attribute may only contain letters.','','2018-08-14 17:08:43',NULL,0),(15,'en','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-08-14 17:08:43',NULL,0),(16,'en','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-08-14 17:08:43',NULL,0),(17,'en','validation','array','The :attribute must be an array.','','2018-08-14 17:08:43',NULL,0),(18,'en','validation','before','The :attribute must be a date before :date.','','2018-08-14 17:08:43',NULL,0),(19,'en','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-08-14 17:08:43',NULL,0),(20,'en','validation','between','The :attribute must have between :min and :max items.','array','2018-08-14 17:08:43',NULL,0),(21,'en','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(22,'en','validation','between','The :attribute must be between :min and :max.','numeric','2018-08-14 17:08:43',NULL,0),(23,'en','validation','between','The :attribute must be between :min and :max characters.','string','2018-08-14 17:08:43',NULL,0),(24,'en','validation','boolean','The :attribute field must be true or false.','','2018-08-14 17:08:43',NULL,0),(25,'en','validation','common_error','Common error','','2018-08-14 17:08:43',NULL,0),(26,'en','validation','confirmed','The :attribute confirmation does not match.','','2018-08-14 17:08:43',NULL,0),(27,'en','validation','date','The :attribute is not a valid date.','','2018-08-14 17:08:43',NULL,0),(28,'en','validation','date_format','The :attribute does not match the format :format.','','2018-08-14 17:08:43',NULL,0),(29,'en','validation','different','The :attribute and :other must be different.','','2018-08-14 17:08:43',NULL,0),(30,'en','validation','digits','The :attribute must be :digits digits.','','2018-08-14 17:08:43',NULL,0),(31,'en','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-08-14 17:08:43',NULL,0),(32,'en','validation','dimensions','The :attribute has invalid image dimensions.','','2018-08-14 17:08:43',NULL,0),(33,'en','validation','distinct','The :attribute field has a duplicate value.','','2018-08-14 17:08:43',NULL,0),(34,'en','validation','email','The :attribute must be a valid email address.','','2018-08-14 17:08:43',NULL,0),(35,'en','validation','exists','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(36,'en','validation','f vg','red','','2018-08-14 17:08:43',NULL,0),(37,'en','validation','file','The :attribute must be a file.','','2018-08-14 17:08:43',NULL,0),(38,'en','validation','filled','The :attribute field must have a value.','','2018-08-14 17:08:43',NULL,0),(39,'en','validation','gt','The :attribute must have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(40,'en','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(41,'en','validation','gt','The :attribute must be greater than :value.','numeric','2018-08-14 17:08:43',NULL,0),(42,'en','validation','gt','The :attribute must be greater than :value characters.','string','2018-08-14 17:08:43',NULL,0),(43,'en','validation','gte','The :attribute must have :value items or more.','array','2018-08-14 17:08:43',NULL,0),(44,'en','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(45,'en','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(46,'en','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(47,'en','validation','image','The :attribute must be an image.','','2018-08-14 17:08:43',NULL,0),(48,'en','validation','in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(49,'en','validation','integer','The :attribute must be an integer.','','2018-08-14 17:08:43',NULL,0),(50,'en','validation','in_array','The :attribute field does not exist in :other.','','2018-08-14 17:08:43',NULL,0),(51,'en','validation','ip','The :attribute must be a valid IP address.','','2018-08-14 17:08:43',NULL,0),(52,'en','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-08-14 17:08:43',NULL,0),(53,'en','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-08-14 17:08:43',NULL,0),(54,'en','validation','json','The :attribute must be a valid JSON string.','','2018-08-14 17:08:43',NULL,0),(55,'en','validation','lt','The :attribute must have less than :value items.','array','2018-08-14 17:08:43',NULL,0),(56,'en','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(57,'en','validation','lt','The :attribute must be less than :value.','numeric','2018-08-14 17:08:43',NULL,0),(58,'en','validation','lt','The :attribute must be less than :value characters.','string','2018-08-14 17:08:43',NULL,0),(59,'en','validation','lte','The :attribute must not have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(60,'en','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(61,'en','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(62,'en','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(63,'en','validation','max','The :attribute may not have more than :max items.','array','2018-08-14 17:08:43',NULL,0),(64,'en','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(65,'en','validation','max','The :attribute may not be greater than :max.','numeric','2018-08-14 17:08:43',NULL,0),(66,'en','validation','max','The :attribute may not be greater than :max characters.','string','2018-08-14 17:08:43',NULL,0),(67,'en','validation','mimes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(68,'en','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(69,'en','validation','min','The :attribute must have at least :min items.','array','2018-08-14 17:08:43',NULL,0),(70,'en','validation','min','The :attribute must be at least :min kilobytes.','file','2018-08-14 17:08:43',NULL,0),(71,'en','validation','min','The :attribute must be at least :min.','numeric','2018-08-14 17:08:43',NULL,0),(72,'en','validation','min','The :attribute must be at least :min characters.','string','2018-08-14 17:08:43',NULL,0),(73,'en','validation','not_in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(74,'en','validation','not_regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(75,'en','validation','numeric','The :attribute must be a number.','','2018-08-14 17:08:43',NULL,0),(76,'en','validation','present','The :attribute field must be present.','','2018-08-14 17:08:43',NULL,0),(77,'en','validation','regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(78,'en','validation','required','The :attribute field is required.','','2018-08-14 17:08:43',NULL,0),(79,'en','validation','required_if','The :attribute field is required when :other is :value.','','2018-08-14 17:08:43',NULL,0),(80,'en','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-08-14 17:08:43',NULL,0),(81,'en','validation','required_with','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(82,'en','validation','required_without','The :attribute field is required when :values is not present.','','2018-08-14 17:08:43',NULL,0),(83,'en','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-08-14 17:08:43',NULL,0),(84,'en','validation','required_with_all','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(85,'en','validation','same','The :attribute and :other must match.','','2018-08-14 17:08:43',NULL,0),(86,'en','validation','size','The :attribute must contain :size items.','array','2018-08-14 17:08:43',NULL,0),(87,'en','validation','size','The :attribute must be :size kilobytes.','file','2018-08-14 17:08:43',NULL,0),(88,'en','validation','size','The :attribute must be :size.','numeric','2018-08-14 17:08:43',NULL,0),(89,'en','validation','size','The :attribute must be :size characters.','string','2018-08-14 17:08:43',NULL,0),(90,'en','validation','string','The :attribute must be a string.','','2018-08-14 17:08:43',NULL,0),(91,'en','validation','test8','test0','file','2018-08-14 17:08:43',NULL,0),(92,'en','validation','test8','test0','numeric','2018-08-14 17:08:43',NULL,0),(93,'en','validation','timezone','The :attribute must be a valid zone.','','2018-08-14 17:08:43',NULL,0),(94,'en','validation','unique','The :attribute has already been taken.','','2018-08-14 17:08:43',NULL,0),(95,'en','validation','uploaded','The :attribute failed to upload.','','2018-08-14 17:08:43',NULL,0),(96,'en','validation','url','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(97,'fr','auth','not_active','Account mus actived','','2018-08-14 17:08:43',NULL,0),(98,'fr','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-08-14 17:08:43',NULL,0),(99,'fr','pagination','next','Next &raquo;','','2018-08-14 17:08:43',NULL,0),(100,'fr','pagination','previous','&laquo; Previous','','2018-08-14 17:08:43',NULL,0),(101,'fr','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-08-14 17:08:43',NULL,0),(102,'fr','passwords','reset','Your password has been reset!','','2018-08-14 17:08:43',NULL,0),(103,'fr','passwords','sent','We have e-mailed your password reset link!','','2018-08-14 17:08:43',NULL,0),(104,'fr','passwords','token','This password reset token is invalid.','','2018-08-14 17:08:43',NULL,0),(105,'fr','passwords','user','We can\'t find a user with that e-mail address.','','2018-08-14 17:08:43',NULL,0),(106,'fr','validation','accepted','The :attribute must be accepted.','','2018-08-14 17:08:43',NULL,0),(107,'fr','validation','active_url','The :attribute is not a valid URL.','','2018-08-14 17:08:43',NULL,0),(108,'fr','validation','after','The :attribute must be a date after :date.','','2018-08-14 17:08:43',NULL,0),(109,'fr','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-08-14 17:08:43',NULL,0),(110,'fr','validation','alpha','The :attribute may only contain letters.','','2018-08-14 17:08:43',NULL,0),(111,'fr','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-08-14 17:08:43',NULL,0),(112,'fr','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-08-14 17:08:43',NULL,0),(113,'fr','validation','array','The :attribute must be an array.','','2018-08-14 17:08:43',NULL,0),(114,'fr','validation','before','The :attribute must be a date before :date.','','2018-08-14 17:08:43',NULL,0),(115,'fr','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-08-14 17:08:43',NULL,0),(116,'fr','validation','between','The :attribute must have between :min and :max items.','array','2018-08-14 17:08:43',NULL,0),(117,'fr','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(118,'fr','validation','between','The :attribute must be between :min and :max.','numeric','2018-08-14 17:08:43',NULL,0),(119,'fr','validation','between','The :attribute must be between :min and :max characters.','string','2018-08-14 17:08:43',NULL,0),(120,'fr','validation','boolean','The :attribute field must be true or false.','','2018-08-14 17:08:43',NULL,0),(121,'fr','validation','common_error','Common error','','2018-08-14 17:08:43',NULL,0),(122,'fr','validation','confirmed','The :attribute confirmation does not match.','','2018-08-14 17:08:43',NULL,0),(123,'fr','validation','date','The :attribute is not a valid date.','','2018-08-14 17:08:43',NULL,0),(124,'fr','validation','date_format','The :attribute does not match the format :format.','','2018-08-14 17:08:43',NULL,0),(125,'fr','validation','different','The :attribute and :other must be different.','','2018-08-14 17:08:43',NULL,0),(126,'fr','validation','digits','The :attribute must be :digits digits.','','2018-08-14 17:08:43',NULL,0),(127,'fr','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-08-14 17:08:43',NULL,0),(128,'fr','validation','dimensions','The :attribute has invalid image dimensions.','','2018-08-14 17:08:43',NULL,0),(129,'fr','validation','distinct','The :attribute field has a duplicate value.','','2018-08-14 17:08:43',NULL,0),(130,'fr','validation','email','The :attribute must be a valid email address.','','2018-08-14 17:08:43',NULL,0),(131,'fr','validation','exists','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(132,'fr','validation','f vg','red','','2018-08-14 17:08:43',NULL,0),(133,'fr','validation','file','The :attribute must be a file.','','2018-08-14 17:08:43',NULL,0),(134,'fr','validation','filled','The :attribute field must have a value.','','2018-08-14 17:08:43',NULL,0),(135,'fr','validation','gt','The :attribute must have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(136,'fr','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(137,'fr','validation','gt','The :attribute must be greater than :value.','numeric','2018-08-14 17:08:43',NULL,0),(138,'fr','validation','gt','The :attribute must be greater than :value characters.','string','2018-08-14 17:08:43',NULL,0),(139,'fr','validation','gte','The :attribute must have :value items or more.','array','2018-08-14 17:08:43',NULL,0),(140,'fr','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(141,'fr','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(142,'fr','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(143,'fr','validation','image','The :attribute must be an image.','','2018-08-14 17:08:43',NULL,0),(144,'fr','validation','in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(145,'fr','validation','integer','The :attribute must be an integer.','','2018-08-14 17:08:43',NULL,0),(146,'fr','validation','in_array','The :attribute field does not exist in :other.','','2018-08-14 17:08:43',NULL,0),(147,'fr','validation','ip','The :attribute must be a valid IP address.','','2018-08-14 17:08:43',NULL,0),(148,'fr','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-08-14 17:08:43',NULL,0),(149,'fr','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-08-14 17:08:43',NULL,0),(150,'fr','validation','json','The :attribute must be a valid JSON string.','','2018-08-14 17:08:43',NULL,0),(151,'fr','validation','lt','The :attribute must have less than :value items.','array','2018-08-14 17:08:43',NULL,0),(152,'fr','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(153,'fr','validation','lt','The :attribute must be less than :value.','numeric','2018-08-14 17:08:43',NULL,0),(154,'fr','validation','lt','The :attribute must be less than :value characters.','string','2018-08-14 17:08:43',NULL,0),(155,'fr','validation','lte','The :attribute must not have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(156,'fr','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(157,'fr','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(158,'fr','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(159,'fr','validation','max','The :attribute may not have more than :max items.','array','2018-08-14 17:08:43',NULL,0),(160,'fr','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(161,'fr','validation','max','The :attribute may not be greater than :max.','numeric','2018-08-14 17:08:43',NULL,0),(162,'fr','validation','max','The :attribute may not be greater than :max characters.','string','2018-08-14 17:08:43',NULL,0),(163,'fr','validation','mimes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(164,'fr','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(165,'fr','validation','min','The :attribute must have at least :min items.','array','2018-08-14 17:08:43',NULL,0),(166,'fr','validation','min','The :attribute must be at least :min kilobytes.','file','2018-08-14 17:08:43',NULL,0),(167,'fr','validation','min','The :attribute must be at least :min.','numeric','2018-08-14 17:08:43',NULL,0),(168,'fr','validation','min','The :attribute must be at least :min characters.','string','2018-08-14 17:08:43',NULL,0),(169,'fr','validation','not_in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(170,'fr','validation','not_regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(171,'fr','validation','numeric','The :attribute must be a number.','','2018-08-14 17:08:43',NULL,0),(172,'fr','validation','present','The :attribute field must be present.','','2018-08-14 17:08:43',NULL,0),(173,'fr','validation','regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(174,'fr','validation','required','The :attribute field is required.','','2018-08-14 17:08:43',NULL,0),(175,'fr','validation','required_if','The :attribute field is required when :other is :value.','','2018-08-14 17:08:43',NULL,0),(176,'fr','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-08-14 17:08:43',NULL,0),(177,'fr','validation','required_with','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(178,'fr','validation','required_without','The :attribute field is required when :values is not present.','','2018-08-14 17:08:43',NULL,0),(179,'fr','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-08-14 17:08:43',NULL,0),(180,'fr','validation','required_with_all','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(181,'fr','validation','same','The :attribute and :other must match.','','2018-08-14 17:08:43',NULL,0),(182,'fr','validation','size','The :attribute must contain :size items.','array','2018-08-14 17:08:43',NULL,0),(183,'fr','validation','size','The :attribute must be :size kilobytes.','file','2018-08-14 17:08:43',NULL,0),(184,'fr','validation','size','The :attribute must be :size.','numeric','2018-08-14 17:08:43',NULL,0),(185,'fr','validation','size','The :attribute must be :size characters.','string','2018-08-14 17:08:43',NULL,0),(186,'fr','validation','string','The :attribute must be a string.','','2018-08-14 17:08:43',NULL,0),(187,'fr','validation','test8','test0','file','2018-08-14 17:08:43',NULL,0),(188,'fr','validation','test8','test0','numeric','2018-08-14 17:08:43',NULL,0),(189,'fr','validation','timezone','The :attribute must be a valid zone.','','2018-08-14 17:08:43',NULL,0),(190,'fr','validation','unique','The :attribute has already been taken.','','2018-08-14 17:08:43',NULL,0),(191,'fr','validation','uploaded','The :attribute failed to upload.','','2018-08-14 17:08:43',NULL,0),(192,'fr','validation','url','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(193,'jp','auth','not_active','Account mus actived','','2018-08-14 17:08:43',NULL,0),(194,'jp','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','','2018-08-14 17:08:43',NULL,0),(195,'jp','pagination','next','Next &raquo;','','2018-08-14 17:08:43',NULL,0),(196,'jp','pagination','previous','&laquo; Previous','','2018-08-14 17:08:43',NULL,0),(197,'jp','passwords','password','Passwords must be at least six characters and match the confirmation.','','2018-08-14 17:08:43',NULL,0),(198,'jp','passwords','reset','Your password has been reset!','','2018-08-14 17:08:43',NULL,0),(199,'jp','passwords','sent','We have e-mailed your password reset link!','','2018-08-14 17:08:43',NULL,0),(200,'jp','passwords','token','This password reset token is invalid.','','2018-08-14 17:08:43',NULL,0),(201,'jp','passwords','user','We can\'t find a user with that e-mail address.','','2018-08-14 17:08:43',NULL,0),(202,'jp','validation','accepted','The :attribute must be accepted.','','2018-08-14 17:08:43',NULL,0),(203,'jp','validation','active_url','The :attribute is not a valid URL.','','2018-08-14 17:08:43',NULL,0),(204,'jp','validation','after','The :attribute must be a date after :date.','','2018-08-14 17:08:43',NULL,0),(205,'jp','validation','after_or_equal','The :attribute must be a date after or equal to :date.','','2018-08-14 17:08:43',NULL,0),(206,'jp','validation','alpha','The :attribute may only contain letters.','','2018-08-14 17:08:43',NULL,0),(207,'jp','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','','2018-08-14 17:08:43',NULL,0),(208,'jp','validation','alpha_num','The :attribute may only contain letters and numbers.','','2018-08-14 17:08:43',NULL,0),(209,'jp','validation','array','The :attribute must be an array.','','2018-08-14 17:08:43',NULL,0),(210,'jp','validation','before','The :attribute must be a date before :date.','','2018-08-14 17:08:43',NULL,0),(211,'jp','validation','before_or_equal','The :attribute must be a date before or equal to :date.','','2018-08-14 17:08:43',NULL,0),(212,'jp','validation','between','The :attribute must have between :min and :max items.','array','2018-08-14 17:08:43',NULL,0),(213,'jp','validation','between','The :attribute must be between :min and :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(214,'jp','validation','between','The :attribute must be between :min and :max.','numeric','2018-08-14 17:08:43',NULL,0),(215,'jp','validation','between','The :attribute must be between :min and :max characters.','string','2018-08-14 17:08:43',NULL,0),(216,'jp','validation','boolean','The :attribute field must be true or false.','','2018-08-14 17:08:43',NULL,0),(217,'jp','validation','common_error','Common error','','2018-08-14 17:08:43',NULL,0),(218,'jp','validation','confirmed','The :attribute confirmation does not match.','','2018-08-14 17:08:43',NULL,0),(219,'jp','validation','date','The :attribute is not a valid date.','','2018-08-14 17:08:43',NULL,0),(220,'jp','validation','date_format','The :attribute does not match the format :format.','','2018-08-14 17:08:43',NULL,0),(221,'jp','validation','different','The :attribute and :other must be different.','','2018-08-14 17:08:43',NULL,0),(222,'jp','validation','digits','The :attribute must be :digits digits.','','2018-08-14 17:08:43',NULL,0),(223,'jp','validation','digits_between','The :attribute must be between :min and :max digits.','','2018-08-14 17:08:43',NULL,0),(224,'jp','validation','dimensions','The :attribute has invalid image dimensions.','','2018-08-14 17:08:43',NULL,0),(225,'jp','validation','distinct','The :attribute field has a duplicate value.','','2018-08-14 17:08:43',NULL,0),(226,'jp','validation','email','The :attribute must be a valid email address.','','2018-08-14 17:08:43',NULL,0),(227,'jp','validation','exists','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(228,'jp','validation','f vg','red','','2018-08-14 17:08:43',NULL,0),(229,'jp','validation','file','The :attribute must be a file.','','2018-08-14 17:08:43',NULL,0),(230,'jp','validation','filled','The :attribute field must have a value.','','2018-08-14 17:08:43',NULL,0),(231,'jp','validation','gt','The :attribute must have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(232,'jp','validation','gt','The :attribute must be greater than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(233,'jp','validation','gt','The :attribute must be greater than :value.','numeric','2018-08-14 17:08:43',NULL,0),(234,'jp','validation','gt','The :attribute must be greater than :value characters.','string','2018-08-14 17:08:43',NULL,0),(235,'jp','validation','gte','The :attribute must have :value items or more.','array','2018-08-14 17:08:43',NULL,0),(236,'jp','validation','gte','The :attribute must be greater than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(237,'jp','validation','gte','The :attribute must be greater than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(238,'jp','validation','gte','The :attribute must be greater than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(239,'jp','validation','image','The :attribute must be an image.','','2018-08-14 17:08:43',NULL,0),(240,'jp','validation','in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(241,'jp','validation','integer','The :attribute must be an integer.','','2018-08-14 17:08:43',NULL,0),(242,'jp','validation','in_array','The :attribute field does not exist in :other.','','2018-08-14 17:08:43',NULL,0),(243,'jp','validation','ip','The :attribute must be a valid IP address.','','2018-08-14 17:08:43',NULL,0),(244,'jp','validation','ipv4','The :attribute must be a valid IPv4 address.','','2018-08-14 17:08:43',NULL,0),(245,'jp','validation','ipv6','The :attribute must be a valid IPv6 address.','','2018-08-14 17:08:43',NULL,0),(246,'jp','validation','json','The :attribute must be a valid JSON string.','','2018-08-14 17:08:43',NULL,0),(247,'jp','validation','lt','The :attribute must have less than :value items.','array','2018-08-14 17:08:43',NULL,0),(248,'jp','validation','lt','The :attribute must be less than :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(249,'jp','validation','lt','The :attribute must be less than :value.','numeric','2018-08-14 17:08:43',NULL,0),(250,'jp','validation','lt','The :attribute must be less than :value characters.','string','2018-08-14 17:08:43',NULL,0),(251,'jp','validation','lte','The :attribute must not have more than :value items.','array','2018-08-14 17:08:43',NULL,0),(252,'jp','validation','lte','The :attribute must be less than or equal :value kilobytes.','file','2018-08-14 17:08:43',NULL,0),(253,'jp','validation','lte','The :attribute must be less than or equal :value.','numeric','2018-08-14 17:08:43',NULL,0),(254,'jp','validation','lte','The :attribute must be less than or equal :value characters.','string','2018-08-14 17:08:43',NULL,0),(255,'jp','validation','max','The :attribute may not have more than :max items.','array','2018-08-14 17:08:43',NULL,0),(256,'jp','validation','max','The :attribute may not be greater than :max kilobytes.','file','2018-08-14 17:08:43',NULL,0),(257,'jp','validation','max','The :attribute may not be greater than :max.','numeric','2018-08-14 17:08:43',NULL,0),(258,'jp','validation','max','The :attribute may not be greater than :max characters.','string','2018-08-14 17:08:43',NULL,0),(259,'jp','validation','mimes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(260,'jp','validation','mimetypes','The :attribute must be a file of type: :values.','','2018-08-14 17:08:43',NULL,0),(261,'jp','validation','min','The :attribute must have at least :min items.','array','2018-08-14 17:08:43',NULL,0),(262,'jp','validation','min','The :attribute must be at least :min kilobytes.','file','2018-08-14 17:08:43',NULL,0),(263,'jp','validation','min','The :attribute must be at least :min.','numeric','2018-08-14 17:08:43',NULL,0),(264,'jp','validation','min','The :attribute must be at least :min characters.','string','2018-08-14 17:08:43',NULL,0),(265,'jp','validation','not_in','The selected :attribute is invalid.','','2018-08-14 17:08:43',NULL,0),(266,'jp','validation','not_regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(267,'jp','validation','numeric','The :attribute must be a number.','','2018-08-14 17:08:43',NULL,0),(268,'jp','validation','present','The :attribute field must be present.','','2018-08-14 17:08:43',NULL,0),(269,'jp','validation','regex','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0),(270,'jp','validation','required','The :attribute field is required.','','2018-08-14 17:08:43',NULL,0),(271,'jp','validation','required_if','The :attribute field is required when :other is :value.','','2018-08-14 17:08:43',NULL,0),(272,'jp','validation','required_unless','The :attribute field is required unless :other is in :values.','','2018-08-14 17:08:43',NULL,0),(273,'jp','validation','required_with','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(274,'jp','validation','required_without','The :attribute field is required when :values is not present.','','2018-08-14 17:08:43',NULL,0),(275,'jp','validation','required_without_all','The :attribute field is required when none of :values are present.','','2018-08-14 17:08:43',NULL,0),(276,'jp','validation','required_with_all','The :attribute field is required when :values is present.','','2018-08-14 17:08:43',NULL,0),(277,'jp','validation','same','The :attribute and :other must match.','','2018-08-14 17:08:43',NULL,0),(278,'jp','validation','size','The :attribute must contain :size items.','array','2018-08-14 17:08:43',NULL,0),(279,'jp','validation','size','The :attribute must be :size kilobytes.','file','2018-08-14 17:08:43',NULL,0),(280,'jp','validation','size','The :attribute must be :size.','numeric','2018-08-14 17:08:43',NULL,0),(281,'jp','validation','size','The :attribute must be :size characters.','string','2018-08-14 17:08:43',NULL,0),(282,'jp','validation','string','The :attribute must be a string.','','2018-08-14 17:08:43',NULL,0),(283,'jp','validation','test8','test0','file','2018-08-14 17:08:43',NULL,0),(284,'jp','validation','test8','test0','numeric','2018-08-14 17:08:43',NULL,0),(285,'jp','validation','timezone','The :attribute must be a valid zone.','','2018-08-14 17:08:43',NULL,0),(286,'jp','validation','unique','The :attribute has already been taken.','','2018-08-14 17:08:43',NULL,0),(287,'jp','validation','uploaded','The :attribute failed to upload.','','2018-08-14 17:08:43',NULL,0),(288,'jp','validation','url','The :attribute format is invalid.','','2018-08-14 17:08:43',NULL,0);
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
REPLACE INTO `sys_validation_input_type` VALUES (1,'numeric','numeric'),(2,'file','file'),(3,'string','string'),(4,'array','array');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` VALUES (1,'admin@mail.com','$2y$10$XQHQV4cWDV4GNjukZPSUxu.rDeRnaOG5NwFbNsOX0CIeBGJ527K06',1,'Admin Init','GJtkVEui6GPLehPg5nMzBQ8acAlB3PSkoqSayxxdYYhHkfzGQxxgqC3x21jE',NULL,NULL,1),(2,'manager@mail.com','$2y$10$XQHQV4cWDV4GNjukZPSUxu.rDeRnaOG5NwFbNsOX0CIeBGJ527K06',2,'Manager Init','GJtkVEui6GPLehPg5nMzBQ8acAlB3PSkoqSayxxdYYhHkfzGQxxgqC3x21jE',NULL,NULL,1),(3,'user@mail.com','$2y$10$75FUTiHQ1Q.tLi/UnURjTe3EO2i9oENevxZCq9Ls0uRwk9GArkbLW',3,'User init','GJtkVEui6GPLehPg5nMzBQ8acAlB3PSkoqSayxxdYYhHkfzGQxxgqC3x21jE','2018-07-11 08:18:19','2018-07-11 08:18:19',NULL),(4,'thirdparty@mail.com','$2y$10$GtztzTgtL9MGvgotjm7q5uq.5LUR3XUNV4GuwTfWTiyiR6mObe7gW',10,'virtual_2018-07-11 10:25:14',NULL,'2018-07-11 10:25:14','2018-07-11 10:25:14',NULL);
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
-- Dumping events for database 'test_migration'
--

--
-- Dumping routines for database 'test_migration'
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

CREATE  FUNCTION `get_error_code`() RETURNS int(11)
BEGIN
	RETURN -1;
END ;

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

CREATE  FUNCTION `get_error_message`(code INT, message_code VARCHAR(255)) RETURNS varchar(255) CHARSET latin1
BEGIN
	RETURN '';
END ;

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

CREATE  FUNCTION `get_success_code`() RETURNS int(11)
BEGIN
	RETURN 0;
END ;

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

CREATE  FUNCTION `SPLIT_STRING`(
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
) ;

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

CREATE  PROCEDURE `ACL_GET_MODULES_LST`()
BEGIN
	SELECT * FROM sys_modules ORDER BY order_value;

END ;

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

CREATE  PROCEDURE `ACL_GET_ROLES_LST`()
BEGIN
	SELECT * FROM sys_roles
    ORDER BY role_value;
END ;

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

CREATE  PROCEDURE `ACL_GET_ROLES_MAP_ACTION_LST`()
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

END ;

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

CREATE  PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive
	WHERE
		id = roleMapId;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `API_GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.`name`, BASE.level_value , TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;

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

CREATE  PROCEDURE `DEV_ADD_TRANSLATE_COMBO_LST`()
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
END ;

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

CREATE  PROCEDURE `DEV_BACKUP_TRANSLATE_ACT`()
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
END ;

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

CREATE  PROCEDURE `DEV_CATELORY_ADD_CHILD_IN_LEFT`(parentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
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

END ;

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

CREATE  PROCEDURE `DEV_CATELORY_ADD_SIBLING`(currentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
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
END ;

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

CREATE  PROCEDURE `DEV_CATELORY_DELETE_NODE_AND_CHILD`(nodeId INT)
BEGIN
	DECLARE myLeft INT default 0;
    DECLARE myRight INT default 0;
	DECLARE myWidth INT default 0;

	SELECT lft, rgt,(rgt - lft + 1) INTO myLeft , myRight , myWidth
	FROM catelory
	WHERE id = nodeId;
	START TRANSACTION;
    /** Delete not root node only **/
    IF myLeft >1 THEN
		DELETE FROM catelory WHERE lft BETWEEN myLeft AND myRight;
		UPDATE catelory SET rgt = rgt - myWidth WHERE rgt > myRight;
		UPDATE catelory SET lft = lft - myWidth WHERE lft > myRight;
    END IF;
    COMMIT;
END ;

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

CREATE  PROCEDURE `DEV_CATELORY_UPDATE`(nodeId INT, pName VARCHAR(100),p_url VARCHAR(100) )
BEGIN
	UPDATE catelory SET name = pName , url = p_url WHERE id = nodeId;
    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code"}'));

END ;

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

CREATE  PROCEDURE `DEV_GET_ALL_SP_LST`()
BEGIN
	SHOW PROCEDURE STATUS
	WHERE Db = DATABASE() AND Type = 'PROCEDURE';

END ;

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

CREATE  PROCEDURE `DEV_GET_ALL_TABLE_LST`()
BEGIN
	select table_name As name from information_schema.tables WHERE TABLE_SCHEMA = DATABASE();

END ;

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

CREATE  PROCEDURE `DEV_GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.name, BASE.level_value ,BASE.url, BASE.order_value, TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;

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

CREATE  PROCEDURE `DEV_GET_CATEGORY_WITH_LEVEL_LIST`()
BEGIN
	SELECT BASE.id, BASE.name, BASE.level_value, BASE.lft, BASE.rgt,BASE.url, BASE.order_value
    FROM view_category_item_level AS BASE
	ORDER BY BASE.lft;
END ;

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

CREATE  PROCEDURE `DEV_GET_LANGUAGE_CODE_LST`()
BEGIN
	SELECT
		id,
        code,
        name
	FROM sys_languages;
END ;

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

CREATE  PROCEDURE `DEV_GET_MODULES_LST`()
BEGIN
	SELECT * FROM sys_modules ORDER BY order_value;

END ;

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

CREATE  PROCEDURE `DEV_GET_PARAM_OF_SPS_LST`(p_procedureName VARCHAR(250) charset utf8)
BEGIN

	SELECT *
	FROM information_schema.parameters
	WHERE SPECIFIC_NAME = p_procedureName
    AND SPECIFIC_SCHEMA = DATABASE()
    ;

END ;

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

CREATE  PROCEDURE `DEV_GET_ROLES_LST`()
BEGIN
	SELECT * FROM sys_roles
    ORDER BY role_value;
END ;

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

CREATE  PROCEDURE `DEV_GET_ROLES_MAP_ACTION_LST`()
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

END ;

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

CREATE  PROCEDURE `DEV_GET_TRANSLATION_DATA_LST`( p_translate_type_code VARCHAR(50),p_lang VARCHAR(50) )
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
END ;

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

CREATE  PROCEDURE `DEV_GET_TRANSLATION_TYPE_LST`()
BEGIN
	SELECT id,code,comment,has_input_type FROM sys_translate_type
    ORDER BY code;
END ;

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

CREATE  PROCEDURE `DEV_GET_VALIDATION_RULES_LST`()
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

END ;

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

CREATE  PROCEDURE `DEV_IMPORT_AND_MERGER_ROLE_ACT`(p_listScreen JSON)
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
END ;

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

CREATE  PROCEDURE `DEV_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive
	WHERE
		id = roleMapId;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `DEV_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN
	UPDATE sys_role_map_screen
    SET
		is_active = isActive;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `DEV_TRANSLATE_DELETE_TEXT_ACT`(p_id INT)
BEGIN
	DELETE FROM sys_translation WHERE id= p_id;
	CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `DEV_TRANSLATE_INSERT_NEW_TEXT_ACT`(
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
END ;

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

CREATE  PROCEDURE `DEV_TRANSLATE_UPDATE_TEXT_ACT`(
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
END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_USER_ROLE_GET_LIST_USERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE  PROCEDURE `DEV_USER_ROLE_GET_LIST_USERS`()
BEGIN

	SELECT
	us.id AS user_id
	,	us.name AS user_name
    ,	us.email AS user_email
    ,	us.role_value AS user_role_value
    ,	us.is_active AS user_active
	,	sr.id AS role_id
	,	sr.name AS role_name
    ,	sr.role_value AS role_value
    ,	sr.description AS role_description
    ,   ud.birth_date AS user_birth_date
    ,   ud.gender AS user_gender

    FROM users AS us
    LEFT JOIN sys_roles AS sr ON
			us.role_value = sr.role_value
	LEFT JOIN users_detail AS ud ON
			us.id = ud.user_id;
END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEV_USER_ROLE_UPDATE_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE  PROCEDURE `DEV_USER_ROLE_UPDATE_ROLES`( current_id INT,current_role_value INT)
BEGIN
	UPDATE users
    SET
		role_value = current_role_value
	WHERE
		id = current_id;

    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');
END ;

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

CREATE  PROCEDURE `GET_CATEGORY_LST`()
BEGIN

	SELECT BASE.id, BASE.`name`, BASE.level_value , TMP.id AS parent
    FROM view_category_item_level AS BASE
	LEFT JOIN view_category_item_level AS TMP ON
			TMP.level_value = BASE.level_value -1
		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt
	ORDER BY BASE.id;

END ;

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

CREATE  PROCEDURE `GET_CATEGORY_WITH_LEVEL_LIST`()
BEGIN
	SELECT BASE.id, BASE.`name`, BASE.level_value, BASE.lft, BASE.rgt
    FROM view_category_item_level AS BASE
	ORDER BY BASE.id;
END ;

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

CREATE  PROCEDURE `sys_show_message_error`(code INT, dataError JSON)
BEGIN
	SELECT code AS code, dataError AS data_error;
END ;

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

CREATE  PROCEDURE `sys_show_message_exception`(message_code varchar(500))
BEGIN
	SELECT -9999 AS code, message_code AS message_code;
END ;

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

CREATE  PROCEDURE `sys_show_message_success`()
BEGIN
	SELECT 0 AS code, 'success_message' AS message_code;
END ;

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

CREATE  PROCEDURE `sys_show_result`(code INT, dataError JSON)
BEGIN
	SELECT code AS code, dataError AS data;
END ;

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
/*!50013  SQL SECURITY DEFINER */
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

-- Dump completed on 2018-08-14 17:28:25
