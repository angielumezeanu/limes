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
-- Table structure for table `acces_sectors`
--

DROP TABLE IF EXISTS `acces_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acces_sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saccess_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_acces_sectors_on_saccess_id` (`saccess_id`),
  KEY `index_acces_sectors_on_sector_id` (`sector_id`),
  CONSTRAINT `fk_rails_8a3c00cad9` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  CONSTRAINT `fk_rails_df29e64ccd` FOREIGN KEY (`saccess_id`) REFERENCES `saccesses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acces_sectors`
--

LOCK TABLES `acces_sectors` WRITE;
/*!40000 ALTER TABLE `acces_sectors` DISABLE KEYS */;
INSERT INTO `acces_sectors` VALUES (2,1,4);
/*!40000 ALTER TABLE `acces_sectors` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliographies`
--

LOCK TABLES `bibliographies` WRITE;
/*!40000 ALTER TABLE `bibliographies` DISABLE KEYS */;
INSERT INTO `bibliographies` VALUES (1,'Ferenczi–Petică 1982','','2017-11-15 13:37:26','2017-11-15 13:37:26'),(2,'Lazăr 1995','','2017-11-15 13:37:47','2017-11-15 13:37:47'),(3,'Roska 1942','','2017-11-15 13:38:09','2017-11-15 13:38:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (1,'Turn','2017-11-15 13:35:37','2017-11-15 13:35:37');
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
  `sector_id` bigint(20) DEFAULT NULL,
  `x` decimal(15,10) DEFAULT NULL,
  `y` decimal(15,10) DEFAULT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `xstereo` decimal(15,10) DEFAULT NULL,
  `ystereo` decimal(15,10) DEFAULT NULL,
  `perimeter` varchar(255) DEFAULT NULL,
  `xdegree` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  `xmin` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  `xsec` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  `ydegree` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  `ymin` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  `ysec` decimal(15,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`id`),
  KEY `fk_rails_c21f8410af` (`sector_id`),
  CONSTRAINT `fk_rails_c21f8410af` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinates`
--

LOCK TABLES `coordinates` WRITE;
/*!40000 ALTER TABLE `coordinates` DISABLE KEYS */;
INSERT INTO `coordinates` VALUES (1,5,46.8550000000,22.8827500000,NULL,'perimeter','2017-11-15 15:55:27','2017-12-07 14:57:14',NULL,NULL,NULL,46.0000000000,51.0000000000,18.0000000000,22.0000000000,52.0000000000,57.9000000000),(2,4,46.7666666667,26.3333333333,NULL,'centre','2017-11-24 13:53:15','2017-12-07 15:28:44',NULL,NULL,NULL,46.0000000000,46.0000000000,0.0000000000,26.0000000000,20.0000000000,0.0000000000),(3,4,46.0000000000,28.0000000000,NULL,'perimeter','2017-11-24 14:06:28','2017-12-07 14:07:34',NULL,NULL,NULL,46.0000000000,0.0000000000,0.0000000000,28.0000000000,0.0000000000,0.0000000000),(5,4,46.0000000000,25.0000000000,NULL,'limit','2017-11-29 14:02:27','2017-12-04 15:44:27',NULL,NULL,NULL,46.0000000000,0.0000000000,0.0000000000,25.0000000000,0.0000000000,0.0000000000),(6,1,47.0000000000,26.0000000000,NULL,'centre','2017-11-29 14:13:04','2017-11-29 14:13:04',NULL,NULL,NULL,47.0000000000,0.0000000000,0.0000000000,26.0000000000,0.0000000000,0.0000000000),(7,1,46.0000000000,26.0000000000,NULL,'centre','2017-11-29 14:13:24','2017-11-29 14:13:24',NULL,NULL,NULL,46.0000000000,0.0000000000,0.0000000000,26.0000000000,0.0000000000,0.0000000000),(8,4,46.0000000000,27.0000000000,NULL,'perimeter','2017-12-07 12:49:42','2017-12-07 12:49:42',NULL,NULL,NULL,46.0000000000,0.0000000000,0.0000000000,27.0000000000,0.0000000000,0.0000000000),(9,4,47.0000000000,27.0000000000,NULL,'perimeter','2017-12-07 12:50:00','2017-12-07 12:50:00',NULL,NULL,NULL,47.0000000000,0.0000000000,0.0000000000,27.0000000000,0.0000000000,0.0000000000),(10,4,47.0000000000,28.0000000000,NULL,'perimeter','2017-12-07 12:50:17','2017-12-07 12:50:17',NULL,NULL,NULL,47.0000000000,0.0000000000,0.0000000000,28.0000000000,0.0000000000,0.0000000000),(11,5,48.0000000000,28.0000000000,NULL,'limit','2017-12-07 15:19:04','2017-12-07 15:19:04',NULL,NULL,NULL,48.0000000000,0.0000000000,0.0000000000,28.0000000000,0.0000000000,0.0000000000),(12,5,47.0000000000,26.0000000000,NULL,'limit','2017-12-07 15:20:37','2017-12-07 15:20:37',NULL,NULL,NULL,47.0000000000,0.0000000000,0.0000000000,26.0000000000,0.0000000000,0.0000000000);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
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
-- Table structure for table `land_sectors`
--

DROP TABLE IF EXISTS `land_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `land_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_land_sectors_on_land_id` (`land_id`),
  KEY `index_land_sectors_on_sector_id` (`sector_id`),
  CONSTRAINT `fk_rails_636c2bb4ad` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  CONSTRAINT `fk_rails_85c5faae3e` FOREIGN KEY (`land_id`) REFERENCES `lands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_sectors`
--

LOCK TABLES `land_sectors` WRITE;
/*!40000 ALTER TABLE `land_sectors` DISABLE KEYS */;
INSERT INTO `land_sectors` VALUES (2,7,4),(3,4,4);
/*!40000 ALTER TABLE `land_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lands`
--

DROP TABLE IF EXISTS `lands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lands` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lands`
--

LOCK TABLES `lands` WRITE;
/*!40000 ALTER TABLE `lands` DISABLE KEYS */;
INSERT INTO `lands` VALUES (1,'City center','2017-11-16 15:26:43','2017-11-16 15:26:43'),(2,'Settlement','2017-11-16 15:26:51','2017-11-16 15:26:51'),(3,'Traffic area','2017-11-16 15:27:00','2017-11-16 15:27:00'),(4,'Park','2017-11-16 15:27:05','2017-11-16 15:27:05'),(5,'Agricultural land','2017-11-16 15:27:17','2017-11-16 15:27:17'),(6,'Grassland','2017-11-16 15:27:26','2017-11-16 15:27:26'),(7,'Forest','2017-11-16 15:27:34','2017-11-16 15:27:34'),(8,'Others','2017-11-16 15:27:39','2017-11-16 15:27:39');
/*!40000 ALTER TABLE `lands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monument_sectors`
--

DROP TABLE IF EXISTS `monument_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monument_sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monument_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_monument_sectors_on_monument_id` (`monument_id`),
  KEY `index_monument_sectors_on_sector_id` (`sector_id`),
  CONSTRAINT `fk_rails_9fff700271` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  CONSTRAINT `fk_rails_ee862b7ddc` FOREIGN KEY (`monument_id`) REFERENCES `monuments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monument_sectors`
--

LOCK TABLES `monument_sectors` WRITE;
/*!40000 ALTER TABLE `monument_sectors` DISABLE KEYS */;
INSERT INTO `monument_sectors` VALUES (2,1,4),(3,2,4);
/*!40000 ALTER TABLE `monument_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monuments`
--

DROP TABLE IF EXISTS `monuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monuments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monuments`
--

LOCK TABLES `monuments` WRITE;
/*!40000 ALTER TABLE `monuments` DISABLE KEYS */;
INSERT INTO `monuments` VALUES (1,'full protection','2017-11-16 15:17:28','2017-11-16 15:17:28'),(2,'partial protection','2017-11-16 15:17:38','2017-11-16 15:17:38'),(3,'no protection','2017-11-16 15:17:46','2017-11-16 15:17:46');
/*!40000 ALTER TABLE `monuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sector_id` bigint(20) DEFAULT NULL,
  `imag_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_photos_on_sector_id` (`sector_id`),
  CONSTRAINT `fk_rails_764d5da055` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'','','2017-11-16 16:04:33','2017-11-16 16:04:33','error_connection.png','image/png',36007,'2017-11-16 16:04:33');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preservation_sectors`
--

DROP TABLE IF EXISTS `preservation_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preservation_sectors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `preservation_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_preservation_sectors_on_preservation_id` (`preservation_id`),
  KEY `index_preservation_sectors_on_sector_id` (`sector_id`),
  CONSTRAINT `fk_rails_519d05cf30` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  CONSTRAINT `fk_rails_f6be04ba1b` FOREIGN KEY (`preservation_id`) REFERENCES `preservations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preservation_sectors`
--

LOCK TABLES `preservation_sectors` WRITE;
/*!40000 ALTER TABLE `preservation_sectors` DISABLE KEYS */;
INSERT INTO `preservation_sectors` VALUES (1,3,1);
/*!40000 ALTER TABLE `preservation_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preservations`
--

DROP TABLE IF EXISTS `preservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preservations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preservations`
--

LOCK TABLES `preservations` WRITE;
/*!40000 ALTER TABLE `preservations` DISABLE KEYS */;
INSERT INTO `preservations` VALUES (1,'visible','2017-11-16 15:02:42','2017-11-16 15:02:42'),(2,'invisible','2017-11-16 15:02:54','2017-11-16 15:02:54'),(3,'preserved','2017-11-16 15:03:05','2017-11-16 15:03:05'),(4,'not preserved','2017-11-16 15:03:19','2017-11-16 15:03:19'),(5,'built over, but preserved','2017-11-16 15:03:42','2017-11-16 15:03:42'),(6,'protective structure','2017-11-16 15:04:09','2017-11-16 15:04:09'),(7,'partially preserved','2017-11-16 15:04:52','2017-11-16 15:04:52');
/*!40000 ALTER TABLE `preservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saccesses`
--

DROP TABLE IF EXISTS `saccesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saccesses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saccesses`
--

LOCK TABLES `saccesses` WRITE;
/*!40000 ALTER TABLE `saccesses` DISABLE KEYS */;
INSERT INTO `saccesses` VALUES (1,'public','2017-11-16 15:31:59','2017-11-16 15:31:59'),(2,'restricted','2017-11-16 15:32:09','2017-11-16 15:32:09');
/*!40000 ALTER TABLE `saccesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scategories`
--

DROP TABLE IF EXISTS `scategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scategories`
--

LOCK TABLES `scategories` WRITE;
/*!40000 ALTER TABLE `scategories` DISABLE KEYS */;
INSERT INTO `scategories` VALUES (1,'Fortificatie militara','2017-11-15 13:35:59','2017-11-15 13:35:59');
/*!40000 ALTER TABLE `scategories` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20171027131822'),('20171031131324'),('20171031131600'),('20171031131847'),('20171031132051'),('20171031132447'),('20171110132413'),('20171114125832'),('20171115133116'),('20171115133226'),('20171115154358'),('20171116145424'),('20171116145522'),('20171116145827'),('20171116151526'),('20171116151559'),('20171116152349'),('20171116152408'),('20171116152831'),('20171116152906'),('20171116153443'),('20171116155242'),('20171116155548'),('20171127154541'),('20171129134202'),('20171204153328'),('20171204153747');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector_bibliographies`
--

LOCK TABLES `sector_bibliographies` WRITE;
/*!40000 ALTER TABLE `sector_bibliographies` DISABLE KEYS */;
INSERT INTO `sector_bibliographies` VALUES (3,4,1,NULL,'2017-11-21 14:41:49','2017-11-21 14:41:49'),(4,4,3,NULL,'2017-11-21 14:41:49','2017-11-21 14:41:49');
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
  `site_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
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
  `code` varchar(255) DEFAULT NULL,
  `ran` varchar(255) DEFAULT NULL,
  `siruta` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cadastral` varchar(255) DEFAULT NULL,
  `topo` varchar(255) DEFAULT NULL,
  `site_categ` varchar(255) DEFAULT NULL,
  `relief` varchar(255) DEFAULT NULL,
  `river` varchar(255) DEFAULT NULL,
  `stratigraphy` varchar(255) DEFAULT NULL,
  `research` varchar(255) DEFAULT NULL,
  `d_east` varchar(255) DEFAULT NULL,
  `d_west` varchar(255) DEFAULT NULL,
  `d_north` varchar(255) DEFAULT NULL,
  `d_south` varchar(255) DEFAULT NULL,
  `flood` varchar(255) DEFAULT NULL,
  `rain` varchar(255) DEFAULT NULL,
  `fire` varchar(255) DEFAULT NULL,
  `animal` varchar(255) DEFAULT NULL,
  `insect` varchar(255) DEFAULT NULL,
  `storm` varchar(255) DEFAULT NULL,
  `water` varchar(255) DEFAULT NULL,
  `earthquake` varchar(255) DEFAULT NULL,
  `landslide` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `acid` varchar(255) DEFAULT NULL,
  `demolition` varchar(255) DEFAULT NULL,
  `partial` varchar(255) DEFAULT NULL,
  `vandalism` varchar(255) DEFAULT NULL,
  `theft` varchar(255) DEFAULT NULL,
  `arson` varchar(255) DEFAULT NULL,
  `research_type` varchar(255) DEFAULT NULL,
  `geophysics` varchar(255) DEFAULT NULL,
  `restoration` varchar(255) DEFAULT NULL,
  `sect_responsible` varchar(255) DEFAULT NULL,
  `discovery` varchar(255) DEFAULT NULL,
  `scategory_id` int(11) DEFAULT NULL,
  `preservation_id` int(11) DEFAULT NULL,
  `national` varchar(255) DEFAULT NULL,
  `urbanism` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `agriculture` varchar(255) DEFAULT NULL,
  `forest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sectors_on_county_id` (`county_id`),
  KEY `index_sectors_on_coordinate_id` (`coordinate_id`),
  KEY `index_sectors_on_component_id` (`component_id`),
  CONSTRAINT `fk_rails_5da22a0d17` FOREIGN KEY (`component_id`) REFERENCES `components` (`id`),
  CONSTRAINT `fk_rails_8d962c1d4b` FOREIGN KEY (`coordinate_id`) REFERENCES `coordinates` (`id`),
  CONSTRAINT `fk_rails_8dff2353fe` FOREIGN KEY (`county_id`) REFERENCES `counties` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES (1,'Poieni','Bologa',7,'Turn','','','',NULL,'','59069','',NULL,'','','','','','196 m²','','','','conservat',NULL,NULL,'',NULL,NULL,'','','',NULL,'','2017-11-14 15:58:07','2017-11-29 13:46:33','5689i80','','','','','','','','','','','','','Henț (Valea Secuieului)','Valea Drăganului','Crișul Repede','','',NULL,'','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,'','','','',''),(4,'Poieni','Bologa',NULL,NULL,'','Citera Mare','',NULL,'','','',NULL,'','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,'','2017-11-16 16:19:50','2017-11-29 13:46:43','faegjsd','','','','','','','',NULL,'','','','','','','','','',NULL,'','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,'','','','',''),(5,'','',NULL,NULL,'','',NULL,'Romania','','','',NULL,'','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,'2017-11-20 14:42:20','2017-11-29 13:46:52','testff','test','','','','','','',NULL,'','','','','','','','','',NULL,'','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,'','','','',''),(6,'','',NULL,NULL,'','','Romania',NULL,'','','',NULL,'','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,'2017-11-20 14:43:56','2017-11-20 14:43:56',NULL,'test2','','','','','','',NULL,'','','','','','','','','',NULL,'','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,'','','','','');
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_username` (`username`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Angie Lumezeanu','angie.lumezeanu@gmail.com','$2a$11$TGOsbaKNYDx0Dy8ww/q.R.3pI0BqBj8uB6Z6Y2slffdgMqNh.9Bpe','administrator',NULL,NULL,NULL,4,'2017-12-06 12:54:09','2017-12-04 14:59:28','127.0.0.1','127.0.0.1','2017-11-29 13:01:37','2017-12-06 12:54:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-08  9:35:14
