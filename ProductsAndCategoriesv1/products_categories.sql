CREATE DATABASE  IF NOT EXISTS `products_categories` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `products_categories`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: products_categories
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2021-11-08 11:48:40.067000','electronics','2021-11-08 11:48:40.069000'),(2,'2021-11-08 11:48:46.611000','food','2021-11-08 11:48:46.613000'),(3,'2021-11-08 11:49:01.415000','cars','2021-11-08 11:49:01.417000'),(4,'2021-11-08 11:49:08.413000','other','2021-11-08 11:49:08.414000'),(5,'2021-11-08 11:49:15.515000','vegan','2021-11-08 11:49:15.518000'),(6,'2021-11-09 09:22:03.695000','instruments','2021-11-09 09:22:03.698000');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_products`
--

DROP TABLE IF EXISTS `categories_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2a3u5mbtmtq3d4s5abajhhksf` (`category_id`),
  KEY `FK2tnk948b1lgpg3uggwyi2kwfq` (`product_id`),
  CONSTRAINT `FK2a3u5mbtmtq3d4s5abajhhksf` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK2tnk948b1lgpg3uggwyi2kwfq` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_products`
--

LOCK TABLES `categories_products` WRITE;
/*!40000 ALTER TABLE `categories_products` DISABLE KEYS */;
INSERT INTO `categories_products` VALUES (6,'2021-11-08 12:04:23.715000','2021-11-08 12:04:23.744000',4,2),(7,'2021-11-08 12:06:35.740000','2021-11-08 12:06:35.742000',3,2),(8,'2021-11-09 09:15:34.986000','2021-11-09 09:15:35.040000',1,2),(9,'2021-11-09 09:15:59.862000','2021-11-09 09:15:59.865000',2,5),(10,'2021-11-09 09:26:16.322000','2021-11-09 09:26:16.323000',4,4),(11,'2021-11-09 09:27:08.542000','2021-11-09 09:27:08.544000',6,6),(12,'2021-11-09 09:53:28.713000','2021-11-09 09:53:28.739000',5,5);
/*!40000 ALTER TABLE `categories_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2021-11-08 11:47:11.943000','workstation','laptop',1000,'2021-11-08 11:47:11.989000'),(2,'2021-11-08 11:47:31.410000','auto','tesla',5000,'2021-11-08 11:47:31.412000'),(3,'2021-11-08 11:47:51.658000','music','ipod',100,'2021-11-08 11:47:51.660000'),(4,'2021-11-08 11:48:11.911000','cabuya','alfombra',100,'2021-11-08 11:48:11.914000'),(5,'2021-11-08 11:48:31.665000','soy milk','soy milk',10,'2021-11-08 11:48:31.667000'),(6,'2021-11-09 09:20:44.488000','stratocaster','guitar',2000,'2021-11-09 09:20:44.497000');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 10:06:52
