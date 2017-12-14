-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: symfony
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
-- Current Database: `symfony`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `symfony` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `symfony`;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'andreea.olaru@zitec.com','Andreea','0720653762'),(2,'andreea.olaru@zitec.com','Andreea','0720653762'),(3,'andreea.olaru@zitec.com','Andreea','0720653762'),(4,'andreea.olaru@zitec.com','Andreea','0720653762'),(5,'andreea.olaru@zitec.com','Andreea','0720653762'),(6,'andreea.olaru@zitec.com','Andreea','0720653762'),(7,'andreea.olaru@zitec.com','Andreea','0720653762'),(8,'s@s.com','a','0'),(9,'s@s.com','a','0');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Fashion'),(2,'Calculatoare si electrocasnice'),(3,'Frumusete'),(4,'Produse pentru copii'),(5,'Pentru casa');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subindustry`
--

DROP TABLE IF EXISTS `subindustry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subindustry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `traffic_sm` int(11) NOT NULL,
  `traffic_google` int(11) NOT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `cos_mediu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C66AD1292B19A734` (`industry_id`),
  CONSTRAINT `FK_C66AD1292B19A734` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subindustry`
--

LOCK TABLES `subindustry` WRITE;
/*!40000 ALTER TABLE `subindustry` DISABLE KEYS */;
INSERT INTO `subindustry` VALUES (1,'haine copii',370000,48250,1,161),(2,'Imbracaminte',5400000,658840,1,161),(3,'Incaltaminte',4300000,464020,1,161),(4,'Bijuterii',1100000,276580,1,161),(5,'Laptopuri si accesorii',690000,263394,2,670),(6,'Make-up',3800000,311980,3,161),(7,'Jucarii',1600000,128350,4,203),(8,'Mobilier casa',2100000,751790,5,475),(100,'ceasuri',900000,196740,2,161),(101,'genti',1100000,137880,1,161),(102,'accesorii',2250000,113790,1,161),(103,'telefoane mobile si accesorii',2100000,489830,2,670),(104,'tablete si accesorii',315000,70500,2,670),(105,'wearables & gadgeturi',220000,105540,2,670),(106,'pc & periferice',2100000,70320,2,670),(107,'electrocasnice',500000,736460,2,670),(108,'tv,audio & video,foto',2450000,454300,2,670),(109,'ingrijire',950000,281320,3,161),(110,'parfumuri',650000,36920,3,161),(111,'ingrijire bebelusi',275000,15840,4,203),(112,'hrana bebelusi',265000,11770,4,203),(113,'accesorii bebelusi',140000,10530,4,203),(114,'draperii',100000,95820,5,475),(115,'corpuri de iluminat',350000,60300,5,475),(116,'textile pentru casa',800000,111570,5,475);
/*!40000 ALTER TABLE `subindustry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic`
--

DROP TABLE IF EXISTS `traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traffic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic`
--

LOCK TABLES `traffic` WRITE;
/*!40000 ALTER TABLE `traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'www.test.com'),(2,'www.zitec.com'),(3,'Site.com'),(4,'wtw7g'),(5,'Test.ro'),(6,'Www.'),(7,'Www.'),(8,'Www.'),(9,'Www.vlada.ro'),(10,'cata.com'),(11,'Cchb'),(12,'site.com'),(13,'Emag.ro'),(14,'emag.ro'),(15,'emag.ro'),(16,'emag.ro'),(17,'emag.ro'),(18,'www.ceasuri.com'),(19,'alina.ro'),(20,'alina.ro'),(21,'site.ro'),(22,'Www.noriel.com'),(23,'www.pantofi.ro'),(24,'alina.ro');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 12:28:18
