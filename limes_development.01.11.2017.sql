-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: limes_development
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-10-27 13:18:58','2017-10-27 13:18:58');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliographies`
--

DROP TABLE IF EXISTS `bibliographies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliographies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abbreviation` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliographies`
--

LOCK TABLES `bibliographies` WRITE;
/*!40000 ALTER TABLE `bibliographies` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliographies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinates`
--

DROP TABLE IF EXISTS `coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `x` decimal(15,10) DEFAULT NULL,
  `y` decimal(15,10) DEFAULT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinates`
--

LOCK TABLES `coordinates` WRITE;
/*!40000 ALTER TABLE `coordinates` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES (1,'ALBA','2017-10-27 16:23:57','2017-10-27 16:23:57'),(2,'ARAD','2017-10-27 16:23:57','2017-10-27 16:23:57'),(3,'BIHOR','2017-10-27 16:23:57','2017-10-27 16:23:57'),(4,'BISTRITA-NASAUD','2017-10-27 16:23:57','2017-10-27 16:23:57'),(5,'BRASOV','2017-10-27 16:23:57','2017-10-27 16:23:57'),(6,'CARAS-SEVERIN','2017-10-27 16:23:57','2017-10-27 16:23:57'),(7,'CLUJ','2017-10-27 16:23:57','2017-10-27 16:23:57'),(8,'COVASNA','2017-10-27 16:23:57','2017-10-27 16:23:57'),(9,'HARGHITA','2017-10-27 16:23:57','2017-10-27 16:23:57'),(10,'HUNEDOARA','2017-10-27 16:23:57','2017-10-27 16:23:57'),(11,'MARAMURES','2017-10-27 16:23:57','2017-10-27 16:23:57'),(12,'MURES','2017-10-27 16:23:57','2017-10-27 16:23:57'),(13,'SALAJ','2017-10-27 16:23:57','2017-10-27 16:23:57'),(14,'SATU MARE','2017-10-27 16:23:57','2017-10-27 16:23:57'),(15,'SIBIU','2017-10-27 16:23:57','2017-10-27 16:23:57'),(16,'TIMIS','2017-10-27 16:23:57','2017-10-27 16:23:57');
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20171027131822'),('20171031131324'),('20171031131600'),('20171031131847'),('20171031132051'),('20171031132447');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector_bibliographies`
--

DROP TABLE IF EXISTS `sector_bibliographies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector_bibliographies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sector_id` bigint(20) DEFAULT NULL,
  `bibliography_id` bigint(20) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sector_bibliographies_on_sector_id` (`sector_id`),
  KEY `index_sector_bibliographies_on_bibliography_id` (`bibliography_id`),
  CONSTRAINT `fk_rails_22a50a3ed3` FOREIGN KEY (`bibliography_id`) REFERENCES `bibliographies` (`id`),
  CONSTRAINT `fk_rails_28195d1158` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector_bibliographies`
--

LOCK TABLES `sector_bibliographies` WRITE;
/*!40000 ALTER TABLE `sector_bibliographies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sector_bibliographies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locality` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `county_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `tower` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `lmi` varchar(255) DEFAULT NULL,
  `map_code` varchar(255) DEFAULT NULL,
  `coordinate_id` bigint(20) DEFAULT NULL,
  `d_length` varchar(255) DEFAULT NULL,
  `d_width` varchar(255) DEFAULT NULL,
  `d_height` varchar(255) DEFAULT NULL,
  `d_o` varchar(255) DEFAULT NULL,
  `d_type` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `description` text,
  `soil_type` varchar(255) DEFAULT NULL,
  `chronology` varchar(255) DEFAULT NULL,
  `preservation` varchar(255) DEFAULT NULL,
  `component_id` bigint(20) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `access` varchar(255) DEFAULT NULL,
  `risk` varchar(255) DEFAULT NULL,
  `archaeology` text,
  `pat_value` varchar(255) DEFAULT NULL,
  `remark` text,
  `polygon` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sectors_on_county_id` (`county_id`),
  KEY `index_sectors_on_coordinate_id` (`coordinate_id`),
  KEY `index_sectors_on_component_id` (`component_id`),
  CONSTRAINT `fk_rails_5da22a0d17` FOREIGN KEY (`component_id`) REFERENCES `components` (`id`),
  CONSTRAINT `fk_rails_8d962c1d4b` FOREIGN KEY (`coordinate_id`) REFERENCES `coordinates` (`id`),
  CONSTRAINT `fk_rails_8dff2353fe` FOREIGN KEY (`county_id`) REFERENCES `counties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-01 14:51:49
