-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: paralyzed_can_do
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `activator`
--

DROP TABLE IF EXISTS `activator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activator` (
  `activatorId` int(11) NOT NULL AUTO_INCREMENT,
  `volume` int(11) NOT NULL,
  `frequency` decimal(5,2) NOT NULL,
  `flag` varchar(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`activatorId`)
) ENGINE=InnoDB AUTO_INCREMENT=869 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activator`
--

LOCK TABLES `activator` WRITE;
/*!40000 ALTER TABLE `activator` DISABLE KEYS */;
INSERT INTO `activator` VALUES (845,250,8.13,'N','2016-04-01 08:14:12'),(846,258,8.23,'N','2016-04-01 08:14:14'),(847,264,8.29,'N','2016-04-01 08:14:16'),(848,267,8.35,'N','2016-04-01 08:14:18'),(849,270,8.40,'N','2016-04-01 08:14:20'),(850,273,8.44,'N','2016-04-01 08:14:22'),(851,277,8.66,'N','2016-04-01 08:14:24'),(852,283,8.34,'N','2016-04-01 08:14:26'),(853,288,8.38,'N','2016-04-01 08:14:28'),(854,295,8.44,'N','2016-04-01 08:14:30'),(855,301,8.41,'Y','2016-04-01 08:14:32'),(856,307,8.56,'Y','2016-04-01 08:14:34'),(857,314,8.67,'Y','2016-04-01 08:14:36'),(858,319,8.88,'Y','2016-04-01 08:14:38'),(859,324,8.89,'Y','2016-04-01 08:14:40'),(860,327,8.62,'Y','2016-04-01 08:14:42'),(861,333,8.78,'Y','2016-04-01 08:14:44'),(862,338,8.92,'Y','2016-04-01 08:14:46'),(863,344,9.34,'Y','2016-04-01 08:14:48'),(864,350,9.45,'Y','2016-04-01 08:14:50'),(865,353,9.66,'Y','2016-04-01 08:14:52'),(866,359,9.56,'Y','2016-04-01 08:14:54'),(867,363,9.77,'Y','2016-04-01 08:14:56'),(868,369,9.89,'Y','2016-04-01 08:14:58');
/*!40000 ALTER TABLE `activator` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paralyzed_can_do`.`trg_activator_AFTER_INSERT` AFTER INSERT ON `activator` FOR EACH ROW
BEGIN

call pr_insert_into_transmitter();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `activator_backup`
--

DROP TABLE IF EXISTS `activator_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activator_backup` (
  `activatorId` int(11) NOT NULL DEFAULT '0',
  `volume` int(11) NOT NULL,
  `frequency` decimal(5,2) NOT NULL,
  `flag` varchar(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activator_backup`
--

LOCK TABLES `activator_backup` WRITE;
/*!40000 ALTER TABLE `activator_backup` DISABLE KEYS */;
INSERT INTO `activator_backup` VALUES (524,250,8.13,'N','2016-04-01 07:14:12'),(525,258,8.23,'N','2016-04-01 07:14:14'),(526,264,8.29,'N','2016-04-01 07:14:16'),(527,267,8.35,'N','2016-04-01 07:14:18'),(528,270,8.40,'N','2016-04-01 07:14:20'),(529,273,8.44,'N','2016-04-01 07:14:22'),(530,277,8.66,'N','2016-04-01 07:14:24'),(531,283,8.34,'N','2016-04-01 07:14:26'),(532,288,8.38,'N','2016-04-01 07:14:28'),(533,295,8.44,'N','2016-04-01 07:14:30'),(534,301,8.41,'Y','2016-04-01 07:14:32'),(535,307,8.56,'Y','2016-04-01 07:14:34'),(536,314,8.67,'Y','2016-04-01 07:14:36'),(537,319,8.88,'Y','2016-04-01 07:14:38'),(538,324,8.89,'Y','2016-04-01 07:14:40'),(539,327,8.62,'Y','2016-04-01 07:14:42'),(540,333,8.78,'Y','2016-04-01 07:14:44'),(541,338,8.92,'Y','2016-04-01 07:14:46'),(542,344,9.34,'Y','2016-04-01 07:14:48'),(543,350,9.45,'Y','2016-04-01 07:14:50'),(544,353,9.66,'Y','2016-04-01 07:14:52'),(545,359,9.56,'Y','2016-04-01 07:14:54'),(546,363,9.77,'Y','2016-04-01 07:14:56'),(547,369,9.89,'Y','2016-04-01 07:14:58'),(524,250,8.13,'N','2016-04-01 07:14:12'),(525,258,8.23,'N','2016-04-01 07:14:14'),(526,264,8.29,'N','2016-04-01 07:14:16'),(527,267,8.35,'N','2016-04-01 07:14:18'),(528,270,8.40,'N','2016-04-01 07:14:20'),(529,273,8.44,'N','2016-04-01 07:14:22'),(530,277,8.66,'N','2016-04-01 07:14:24'),(531,283,8.34,'N','2016-04-01 07:14:26'),(532,288,8.38,'N','2016-04-01 07:14:28'),(533,295,8.44,'N','2016-04-01 07:14:30'),(534,301,8.41,'Y','2016-04-01 07:14:32'),(535,307,8.56,'Y','2016-04-01 07:14:34'),(536,314,8.67,'Y','2016-04-01 07:14:36'),(537,319,8.88,'Y','2016-04-01 07:14:38'),(538,324,8.89,'Y','2016-04-01 07:14:40'),(539,327,8.62,'Y','2016-04-01 07:14:42'),(540,333,8.78,'Y','2016-04-01 07:14:44'),(541,338,8.92,'Y','2016-04-01 07:14:46'),(542,344,9.34,'Y','2016-04-01 07:14:48'),(543,350,9.45,'Y','2016-04-01 07:14:50'),(544,353,9.66,'Y','2016-04-01 07:14:52'),(545,359,9.56,'Y','2016-04-01 07:14:54'),(546,363,9.77,'Y','2016-04-01 07:14:56'),(547,369,9.89,'Y','2016-04-01 07:14:58'),(524,250,8.13,'N','2016-04-01 07:14:12'),(525,258,8.23,'N','2016-04-01 07:14:14'),(526,264,8.29,'N','2016-04-01 07:14:16'),(527,267,8.35,'N','2016-04-01 07:14:18'),(528,270,8.40,'N','2016-04-01 07:14:20'),(529,273,8.44,'N','2016-04-01 07:14:22'),(530,277,8.66,'N','2016-04-01 07:14:24'),(531,283,8.34,'N','2016-04-01 07:14:26'),(532,288,8.38,'N','2016-04-01 07:14:28'),(533,295,8.44,'N','2016-04-01 07:14:30'),(534,301,8.41,'Y','2016-04-01 07:14:32'),(535,307,8.56,'Y','2016-04-01 07:14:34'),(536,314,8.67,'Y','2016-04-01 07:14:36'),(537,319,8.88,'Y','2016-04-01 07:14:38'),(538,324,8.89,'Y','2016-04-01 07:14:40'),(539,327,8.62,'Y','2016-04-01 07:14:42'),(540,333,8.78,'Y','2016-04-01 07:14:44'),(541,338,8.92,'Y','2016-04-01 07:14:46'),(542,344,9.34,'Y','2016-04-01 07:14:48'),(543,350,9.45,'Y','2016-04-01 07:14:50'),(544,353,9.66,'Y','2016-04-01 07:14:52'),(545,359,9.56,'Y','2016-04-01 07:14:54'),(546,363,9.77,'Y','2016-04-01 07:14:56'),(547,369,9.89,'Y','2016-04-01 07:14:58'),(572,250,1.23,'N','2016-04-01 07:14:12'),(573,258,1.45,'N','2016-04-01 07:14:14'),(574,264,1.49,'N','2016-04-01 07:14:16'),(575,267,1.44,'N','2016-04-01 07:14:18'),(576,270,1.47,'N','2016-04-01 07:14:20'),(577,273,1.67,'N','2016-04-01 07:14:22'),(578,277,1.76,'N','2016-04-01 07:14:24'),(579,283,1.88,'N','2016-04-01 07:14:26'),(580,288,1.99,'N','2016-04-01 07:14:28'),(581,295,2.04,'N','2016-04-01 07:14:30'),(582,301,2.15,'Y','2016-04-01 07:14:32'),(583,307,2.23,'Y','2016-04-01 07:14:34'),(584,314,2.11,'Y','2016-04-01 07:14:36'),(585,319,2.09,'Y','2016-04-01 07:14:38'),(586,324,2.09,'Y','2016-04-01 07:14:40'),(587,327,2.09,'Y','2016-04-01 07:14:42'),(588,333,2.09,'Y','2016-04-01 07:14:44'),(589,338,2.09,'Y','2016-04-01 07:14:46'),(590,344,2.09,'Y','2016-04-01 07:14:48'),(591,350,2.09,'Y','2016-04-01 07:14:50'),(592,353,2.09,'Y','2016-04-01 07:14:52'),(593,359,2.09,'Y','2016-04-01 08:14:54'),(594,363,2.09,'Y','2016-04-01 07:14:56'),(595,369,2.09,'Y','2016-04-01 07:14:58'),(668,250,8.13,'N','2016-04-01 08:14:12'),(669,258,8.23,'N','2016-04-01 08:14:14'),(670,264,8.29,'N','2016-04-01 08:14:16'),(671,267,8.35,'N','2016-04-01 08:14:18'),(672,270,8.40,'N','2016-04-01 08:14:20'),(673,273,8.44,'N','2016-04-01 08:14:22'),(674,277,8.66,'N','2016-04-01 08:14:24'),(675,283,8.34,'N','2016-04-01 08:14:26'),(676,288,8.38,'N','2016-04-01 08:14:28'),(677,295,8.44,'N','2016-04-01 08:14:30'),(678,301,8.41,'Y','2016-04-01 08:14:32'),(679,307,8.56,'Y','2016-04-01 08:14:34'),(680,314,8.67,'Y','2016-04-01 08:14:36'),(681,319,8.88,'Y','2016-04-01 08:14:38'),(682,324,8.89,'Y','2016-04-01 08:14:40'),(683,327,8.62,'Y','2016-04-01 08:14:42'),(684,333,8.78,'Y','2016-04-01 08:14:44'),(685,338,8.92,'Y','2016-04-01 08:14:46'),(686,344,9.34,'Y','2016-04-01 08:14:48'),(687,350,9.45,'Y','2016-04-01 08:14:50'),(688,353,9.66,'Y','2016-04-01 08:14:52'),(689,359,9.56,'Y','2016-04-01 08:14:54'),(690,363,9.77,'Y','2016-04-01 08:14:56'),(691,369,9.89,'Y','2016-04-01 08:14:58'),(714,250,8.13,'N','2016-04-01 08:14:12'),(715,258,8.23,'N','2016-04-01 08:14:14'),(716,264,8.29,'N','2016-04-01 08:14:16'),(717,267,8.35,'N','2016-04-01 08:14:18'),(718,270,8.40,'N','2016-04-01 08:14:20'),(719,273,8.44,'N','2016-04-01 08:14:22'),(720,277,8.66,'N','2016-04-01 08:14:24'),(721,283,8.34,'N','2016-04-01 08:14:26'),(722,288,8.38,'N','2016-04-01 08:14:28'),(723,295,8.44,'N','2016-04-01 08:14:30'),(724,301,8.41,'Y','2016-04-01 08:14:32'),(725,307,8.56,'Y','2016-04-01 08:14:34'),(726,314,8.67,'Y','2016-04-01 08:14:36'),(727,319,8.88,'Y','2016-04-01 08:14:38'),(728,324,8.89,'Y','2016-04-01 08:14:40'),(729,327,8.62,'Y','2016-04-01 08:14:42'),(730,333,8.78,'Y','2016-04-01 08:14:44'),(731,338,8.92,'Y','2016-04-01 08:14:46'),(732,344,9.34,'Y','2016-04-01 08:14:48'),(733,350,9.45,'Y','2016-04-01 08:14:50'),(734,353,9.66,'Y','2016-04-01 08:14:52'),(735,359,9.56,'Y','2016-04-01 08:14:54'),(736,363,9.77,'Y','2016-04-01 08:14:56'),(737,369,9.89,'Y','2016-04-01 08:14:58'),(749,250,8.13,'N','2016-04-01 08:14:12'),(750,258,8.23,'N','2016-04-01 08:14:14'),(751,264,8.29,'N','2016-04-01 08:14:16'),(752,267,8.35,'N','2016-04-01 08:14:18'),(753,270,8.40,'N','2016-04-01 08:14:20'),(754,273,8.44,'N','2016-04-01 08:14:22'),(755,277,8.66,'N','2016-04-01 08:14:24'),(756,283,8.34,'N','2016-04-01 08:14:26'),(757,288,8.38,'N','2016-04-01 08:14:28'),(758,295,8.44,'N','2016-04-01 08:14:30'),(759,301,8.41,'Y','2016-04-01 08:14:32'),(760,307,8.56,'Y','2016-04-01 08:14:34'),(761,314,8.67,'Y','2016-04-01 08:14:36'),(762,319,8.88,'Y','2016-04-01 08:14:38'),(763,324,8.89,'Y','2016-04-01 08:14:40'),(764,327,8.62,'Y','2016-04-01 08:14:42'),(765,333,8.78,'Y','2016-04-01 08:14:44'),(766,338,8.92,'Y','2016-04-01 08:14:46'),(767,344,9.34,'Y','2016-04-01 08:14:48'),(768,350,9.45,'Y','2016-04-01 08:14:50'),(769,353,9.66,'Y','2016-04-01 08:14:52'),(770,359,9.56,'Y','2016-04-01 08:14:54'),(771,363,9.77,'Y','2016-04-01 08:14:56'),(772,369,9.89,'Y','2016-04-01 08:14:58'),(797,250,8.13,'N','2016-04-01 08:14:12'),(798,258,8.23,'N','2016-04-01 08:14:14'),(799,264,8.29,'N','2016-04-01 08:14:16'),(800,267,8.35,'N','2016-04-01 08:14:18'),(801,270,8.40,'N','2016-04-01 08:14:20'),(802,273,8.44,'N','2016-04-01 08:14:22'),(803,277,8.66,'N','2016-04-01 08:14:24'),(804,283,8.34,'N','2016-04-01 08:14:26'),(805,288,8.38,'N','2016-04-01 08:14:28'),(806,295,8.44,'N','2016-04-01 08:14:30'),(807,301,8.41,'Y','2016-04-01 08:14:32'),(808,307,8.56,'Y','2016-04-01 08:14:34'),(809,314,8.67,'Y','2016-04-01 08:14:36'),(810,319,8.88,'Y','2016-04-01 08:14:38'),(811,324,8.89,'Y','2016-04-01 08:14:40'),(812,327,8.62,'Y','2016-04-01 08:14:42'),(813,333,8.78,'Y','2016-04-01 08:14:44'),(814,338,8.92,'Y','2016-04-01 08:14:46'),(815,344,9.34,'Y','2016-04-01 08:14:48'),(816,350,9.45,'Y','2016-04-01 08:14:50'),(817,353,9.66,'Y','2016-04-01 08:14:52'),(818,359,9.56,'Y','2016-04-01 08:14:54'),(819,363,9.77,'Y','2016-04-01 08:14:56'),(820,369,9.89,'Y','2016-04-01 08:14:58');
/*!40000 ALTER TABLE `activator_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chip`
--

DROP TABLE IF EXISTS `chip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chip` (
  `chipId` int(11) NOT NULL AUTO_INCREMENT,
  `thresholdVolume` int(11) NOT NULL,
  `peakVolume` int(11) NOT NULL,
  PRIMARY KEY (`chipId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip`
--

LOCK TABLES `chip` WRITE;
/*!40000 ALTER TABLE `chip` DISABLE KEYS */;
INSERT INTO `chip` VALUES (17,300,350);
/*!40000 ALTER TABLE `chip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chip_bkup`
--

DROP TABLE IF EXISTS `chip_bkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chip_bkup` (
  `chipId` int(11) NOT NULL DEFAULT '0',
  `thresholdVolume` int(11) NOT NULL,
  `peakVolume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip_bkup`
--

LOCK TABLES `chip_bkup` WRITE;
/*!40000 ALTER TABLE `chip_bkup` DISABLE KEYS */;
INSERT INTO `chip_bkup` VALUES (1,300,350),(1,300,350),(1,300,350),(1,300,350),(4,300,350),(8,300,350),(11,300,350),(13,300,350),(15,300,350);
/*!40000 ALTER TABLE `chip_bkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller`
--

DROP TABLE IF EXISTS `controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller` (
  `controllerId` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` decimal(5,2) NOT NULL,
  `action` varchar(45) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `decoder_id` int(11) NOT NULL,
  PRIMARY KEY (`controllerId`),
  UNIQUE KEY `decoder_id_UNIQUE` (`decoder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller`
--

LOCK TABLES `controller` WRITE;
/*!40000 ALTER TABLE `controller` DISABLE KEYS */;
INSERT INTO `controller` VALUES (18,12.30,'N','2016-04-15 21:44:58',20),(19,9.40,'Y','2016-04-15 21:49:01',21);
/*!40000 ALTER TABLE `controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_backup`
--

DROP TABLE IF EXISTS `controller_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_backup` (
  `controllerId` int(11) NOT NULL DEFAULT '0',
  `frequency` decimal(5,2) NOT NULL,
  `action` varchar(45) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `decoder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_backup`
--

LOCK TABLES `controller_backup` WRITE;
/*!40000 ALTER TABLE `controller_backup` DISABLE KEYS */;
INSERT INTO `controller_backup` VALUES (12,12.30,'N','2016-04-15 20:13:27',14),(13,12.30,'N','2016-04-15 20:13:39',15),(14,9.40,'Y','2016-04-15 20:13:48',16);
/*!40000 ALTER TABLE `controller_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decoder`
--

DROP TABLE IF EXISTS `decoder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decoder` (
  `decoderId` int(11) NOT NULL AUTO_INCREMENT,
  `decFrequency` decimal(5,2) NOT NULL,
  `action` varchar(20) NOT NULL,
  `interpreter_Id` int(11) NOT NULL,
  PRIMARY KEY (`decoderId`),
  UNIQUE KEY `interpreterId_UNIQUE` (`interpreter_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decoder`
--

LOCK TABLES `decoder` WRITE;
/*!40000 ALTER TABLE `decoder` DISABLE KEYS */;
INSERT INTO `decoder` VALUES (20,12.30,'N',28),(21,9.40,'Y',29);
/*!40000 ALTER TABLE `decoder` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paralyzed_can_do`.`decoder_AFTER_INSERT` AFTER INSERT ON `decoder` FOR EACH ROW
BEGIN

call pr_insert_into_controller();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `decoder_backup`
--

DROP TABLE IF EXISTS `decoder_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decoder_backup` (
  `decoderId` int(11) NOT NULL DEFAULT '0',
  `decFrequency` decimal(5,2) NOT NULL,
  `action` varchar(20) NOT NULL,
  `interpreter_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decoder_backup`
--

LOCK TABLES `decoder_backup` WRITE;
/*!40000 ALTER TABLE `decoder_backup` DISABLE KEYS */;
INSERT INTO `decoder_backup` VALUES (14,12.30,'N',22),(15,12.30,'N',23),(16,9.40,'Y',24);
/*!40000 ALTER TABLE `decoder_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `deviceId` int(11) NOT NULL AUTO_INCREMENT,
  `personAge` int(11) NOT NULL,
  `personBloodType` varchar(10) NOT NULL,
  `currentStage` int(11) NOT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `fk_currentStage_idx` (`currentStage`),
  CONSTRAINT `fk_currentStage` FOREIGN KEY (`currentStage`) REFERENCES `standard_stages` (`stagesId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (17,24,'O+',2);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_backup`
--

DROP TABLE IF EXISTS `device_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_backup` (
  `deviceId` int(11) NOT NULL DEFAULT '0',
  `personAge` int(11) NOT NULL,
  `personBloodType` varchar(10) NOT NULL,
  `currentStage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_backup`
--

LOCK TABLES `device_backup` WRITE;
/*!40000 ALTER TABLE `device_backup` DISABLE KEYS */;
INSERT INTO `device_backup` VALUES (1,24,'O+',2),(1,24,'O+',2),(1,24,'O+',2),(1,24,'O+',2),(4,24,'O+',4),(8,24,'O+',2),(11,24,'O+',2),(13,24,'O+',2),(15,24,'O+',2);
/*!40000 ALTER TABLE `device_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encoder`
--

DROP TABLE IF EXISTS `encoder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encoder` (
  `encoderId` int(11) NOT NULL AUTO_INCREMENT,
  `encFrequency` decimal(5,2) NOT NULL,
  `present_stage` int(11) NOT NULL,
  `hashcode` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver_id` int(11) NOT NULL,
  PRIMARY KEY (`encoderId`),
  UNIQUE KEY `receiver_id_UNIQUE` (`receiver_id`),
  KEY `fk_hashcode_idx` (`hashcode`),
  KEY `fk_stage_idx` (`present_stage`),
  CONSTRAINT `fk_hashcode` FOREIGN KEY (`hashcode`) REFERENCES `standard_hashcode` (`stdHashId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stage` FOREIGN KEY (`present_stage`) REFERENCES `standard_stages` (`stagesId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encoder`
--

LOCK TABLES `encoder` WRITE;
/*!40000 ALTER TABLE `encoder` DISABLE KEYS */;
INSERT INTO `encoder` VALUES (338,8.00,2,15,'2016-04-15 21:42:31',341),(339,9.00,2,17,'2016-04-15 21:42:31',342),(340,9.00,2,17,'2016-04-15 21:42:31',343),(341,9.00,2,17,'2016-04-15 21:42:31',344),(342,9.00,2,17,'2016-04-15 21:42:31',345),(343,9.00,2,17,'2016-04-15 21:42:31',346),(344,9.00,2,17,'2016-04-15 21:42:31',347),(345,9.00,2,17,'2016-04-15 21:42:31',348),(346,9.00,2,17,'2016-04-15 21:42:31',349),(347,9.00,2,17,'2016-04-15 21:42:31',350),(348,10.00,2,19,'2016-04-15 21:42:31',351),(349,10.00,2,19,'2016-04-15 21:42:31',352),(350,10.00,2,19,'2016-04-15 21:42:31',353),(351,10.00,2,19,'2016-04-15 21:42:31',354);
/*!40000 ALTER TABLE `encoder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encoder_backup`
--

DROP TABLE IF EXISTS `encoder_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encoder_backup` (
  `encoderId` int(11) NOT NULL DEFAULT '0',
  `encFrequency` decimal(5,2) NOT NULL,
  `present_stage` int(11) NOT NULL,
  `hashcode` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encoder_backup`
--

LOCK TABLES `encoder_backup` WRITE;
/*!40000 ALTER TABLE `encoder_backup` DISABLE KEYS */;
INSERT INTO `encoder_backup` VALUES (170,8.00,2,15,'2016-04-15 04:39:23',170),(171,9.00,2,17,'2016-04-15 04:39:23',171),(172,9.00,2,17,'2016-04-15 04:39:23',172),(173,9.00,2,17,'2016-04-15 04:39:23',173),(174,9.00,2,17,'2016-04-15 04:39:23',174),(175,9.00,2,17,'2016-04-15 04:39:23',175),(176,9.00,2,17,'2016-04-15 04:39:23',176),(177,9.00,2,17,'2016-04-15 04:39:23',177),(178,9.00,2,17,'2016-04-15 04:39:23',178),(179,9.00,2,17,'2016-04-15 04:39:23',179),(180,10.00,2,19,'2016-04-15 04:39:23',180),(181,10.00,2,19,'2016-04-15 04:39:23',181),(182,10.00,2,19,'2016-04-15 04:39:23',182),(183,10.00,2,19,'2016-04-15 04:39:23',183),(170,8.00,2,15,'2016-04-15 04:39:23',170),(171,9.00,2,17,'2016-04-15 04:39:23',171),(172,9.00,2,17,'2016-04-15 04:39:23',172),(173,9.00,2,17,'2016-04-15 04:39:23',173),(174,9.00,2,17,'2016-04-15 04:39:23',174),(175,9.00,2,17,'2016-04-15 04:39:23',175),(176,9.00,2,17,'2016-04-15 04:39:23',176),(177,9.00,2,17,'2016-04-15 04:39:23',177),(178,9.00,2,17,'2016-04-15 04:39:23',178),(179,9.00,2,17,'2016-04-15 04:39:23',179),(180,10.00,2,19,'2016-04-15 04:39:23',180),(181,10.00,2,19,'2016-04-15 04:39:23',181),(182,10.00,2,19,'2016-04-15 04:39:23',182),(183,10.00,2,19,'2016-04-15 04:39:23',183),(170,8.00,2,15,'2016-04-15 04:39:23',170),(171,9.00,2,17,'2016-04-15 04:39:23',171),(172,9.00,2,17,'2016-04-15 04:39:23',172),(173,9.00,2,17,'2016-04-15 04:39:23',173),(174,9.00,2,17,'2016-04-15 04:39:23',174),(175,9.00,2,17,'2016-04-15 04:39:23',175),(176,9.00,2,17,'2016-04-15 04:39:23',176),(177,9.00,2,17,'2016-04-15 04:39:23',177),(178,9.00,2,17,'2016-04-15 04:39:23',178),(179,9.00,2,17,'2016-04-15 04:39:23',179),(180,10.00,2,19,'2016-04-15 04:39:23',180),(181,10.00,2,19,'2016-04-15 04:39:23',181),(182,10.00,2,19,'2016-04-15 04:39:23',182),(183,10.00,2,19,'2016-04-15 04:39:23',183),(198,2.00,4,3,'2016-04-15 04:46:47',198),(199,2.00,4,3,'2016-04-15 04:46:47',199),(200,2.00,4,3,'2016-04-15 04:46:47',200),(201,2.00,4,3,'2016-04-15 04:46:47',201),(202,2.00,4,3,'2016-04-15 04:46:47',202),(203,2.00,4,3,'2016-04-15 04:46:47',203),(204,2.00,4,3,'2016-04-15 04:46:47',204),(205,2.00,4,3,'2016-04-15 04:46:47',205),(206,2.00,4,3,'2016-04-15 04:46:47',206),(207,2.00,4,3,'2016-04-15 04:46:47',207),(208,2.00,4,3,'2016-04-15 04:46:47',208),(209,2.00,4,3,'2016-04-15 04:46:47',209),(210,2.00,4,3,'2016-04-15 04:46:47',210),(211,2.00,4,3,'2016-04-15 04:46:47',211),(254,8.00,2,15,'2016-04-15 19:55:19',254),(255,9.00,2,17,'2016-04-15 19:55:19',255),(256,9.00,2,17,'2016-04-15 19:55:19',256),(257,9.00,2,17,'2016-04-15 19:55:19',257),(258,9.00,2,17,'2016-04-15 19:55:19',258),(259,9.00,2,17,'2016-04-15 19:55:19',259),(260,9.00,2,17,'2016-04-15 19:55:19',260),(261,9.00,2,17,'2016-04-15 19:55:19',261),(262,9.00,2,17,'2016-04-15 19:55:19',262),(263,9.00,2,17,'2016-04-15 19:55:19',263),(264,10.00,2,19,'2016-04-15 19:55:19',264),(265,10.00,2,19,'2016-04-15 19:55:19',265),(266,10.00,2,19,'2016-04-15 19:55:19',266),(267,10.00,2,19,'2016-04-15 19:55:19',267),(268,8.00,2,15,'2016-04-15 20:04:54',270),(269,9.00,2,17,'2016-04-15 20:04:54',271),(270,9.00,2,17,'2016-04-15 20:04:54',272),(271,9.00,2,17,'2016-04-15 20:04:54',273),(272,9.00,2,17,'2016-04-15 20:04:54',274),(273,9.00,2,17,'2016-04-15 20:04:54',275),(274,9.00,2,17,'2016-04-15 20:04:54',276),(275,9.00,2,17,'2016-04-15 20:04:54',277),(276,9.00,2,17,'2016-04-15 20:04:54',278),(277,9.00,2,17,'2016-04-15 20:04:54',279),(278,10.00,2,19,'2016-04-15 20:04:54',280),(279,10.00,2,19,'2016-04-15 20:04:55',281),(280,10.00,2,19,'2016-04-15 20:04:55',282),(281,10.00,2,19,'2016-04-15 20:04:55',283),(282,8.00,2,15,'2016-04-15 20:10:00',285),(283,9.00,2,17,'2016-04-15 20:10:00',286),(284,9.00,2,17,'2016-04-15 20:10:00',287),(285,9.00,2,17,'2016-04-15 20:10:00',288),(286,9.00,2,17,'2016-04-15 20:10:00',289),(287,9.00,2,17,'2016-04-15 20:10:00',290),(288,9.00,2,17,'2016-04-15 20:10:00',291),(289,9.00,2,17,'2016-04-15 20:10:00',292),(290,9.00,2,17,'2016-04-15 20:10:00',293),(291,9.00,2,17,'2016-04-15 20:10:00',294),(292,10.00,2,19,'2016-04-15 20:10:00',295),(293,10.00,2,19,'2016-04-15 20:10:00',296),(294,10.00,2,19,'2016-04-15 20:10:00',297),(295,10.00,2,19,'2016-04-15 20:10:00',298),(310,8.00,2,15,'2016-04-15 20:12:09',313),(311,9.00,2,17,'2016-04-15 20:12:09',314),(312,9.00,2,17,'2016-04-15 20:12:09',315),(313,9.00,2,17,'2016-04-15 20:12:09',316),(314,9.00,2,17,'2016-04-15 20:12:09',317),(315,9.00,2,17,'2016-04-15 20:12:09',318),(316,9.00,2,17,'2016-04-15 20:12:09',319),(317,9.00,2,17,'2016-04-15 20:12:09',320),(318,9.00,2,17,'2016-04-15 20:12:09',321),(319,9.00,2,17,'2016-04-15 20:12:09',322),(320,10.00,2,19,'2016-04-15 20:12:09',323),(321,10.00,2,19,'2016-04-15 20:12:09',324),(322,10.00,2,19,'2016-04-15 20:12:09',325),(323,10.00,2,19,'2016-04-15 20:12:09',326);
/*!40000 ALTER TABLE `encoder_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interpreter`
--

DROP TABLE IF EXISTS `interpreter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interpreter` (
  `interpreterId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vitalSign_id` int(11) NOT NULL,
  `encoderHashcode` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT 'D',
  `impulseHashcode` varchar(6) NOT NULL,
  PRIMARY KEY (`interpreterId`),
  UNIQUE KEY `vitalSign_id_UNIQUE` (`vitalSign_id`),
  KEY `fk_encHashcode_idx` (`encoderHashcode`),
  CONSTRAINT `fk_encHashcode` FOREIGN KEY (`encoderHashcode`) REFERENCES `standard_hashcode` (`stdHashId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interpreter`
--

LOCK TABLES `interpreter` WRITE;
/*!40000 ALTER TABLE `interpreter` DISABLE KEYS */;
INSERT INTO `interpreter` VALUES (28,'2016-04-15 21:44:58',464,19,'N','000100'),(29,'2016-04-15 21:49:01',466,19,'Y','000011');
/*!40000 ALTER TABLE `interpreter` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paralyzed_can_do`.`interpreter_AFTER_INSERT` AFTER INSERT ON `interpreter` FOR EACH ROW
BEGIN

call pr_insert_into_decoder();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `interpreter_backup`
--

DROP TABLE IF EXISTS `interpreter_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interpreter_backup` (
  `interpreterId` int(11) NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vitalSign_id` int(11) NOT NULL,
  `encoderHashcode` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT 'D',
  `impulseHashcode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interpreter_backup`
--

LOCK TABLES `interpreter_backup` WRITE;
/*!40000 ALTER TABLE `interpreter_backup` DISABLE KEYS */;
INSERT INTO `interpreter_backup` VALUES (22,'2016-04-15 20:13:27',435,19,'N','000100'),(23,'2016-04-15 20:13:39',438,19,'N','000100'),(24,'2016-04-15 20:13:48',439,19,'Y','000011');
/*!40000 ALTER TABLE `interpreter_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiver`
--

DROP TABLE IF EXISTS `receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiver` (
  `receiverId` int(11) NOT NULL AUTO_INCREMENT,
  `d1` bit(1) NOT NULL,
  `d2` bit(1) NOT NULL,
  `d3` bit(1) NOT NULL,
  `d4` bit(1) NOT NULL,
  `d5` bit(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transmitter_Id` int(11) NOT NULL,
  PRIMARY KEY (`receiverId`),
  UNIQUE KEY `transmitter_Id_UNIQUE` (`transmitter_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver`
--

LOCK TABLES `receiver` WRITE;
/*!40000 ALTER TABLE `receiver` DISABLE KEYS */;
INSERT INTO `receiver` VALUES (341,'\0','','\0','\0','\0','2016-04-15 21:42:31',341),(342,'\0','','\0','\0','','2016-04-15 21:42:31',342),(343,'\0','','\0','\0','','2016-04-15 21:42:31',343),(344,'\0','','\0','\0','','2016-04-15 21:42:31',344),(345,'\0','','\0','\0','','2016-04-15 21:42:31',345),(346,'\0','','\0','\0','','2016-04-15 21:42:31',346),(347,'\0','','\0','\0','','2016-04-15 21:42:31',347),(348,'\0','','\0','\0','','2016-04-15 21:42:31',348),(349,'\0','','\0','\0','','2016-04-15 21:42:31',349),(350,'\0','','\0','\0','','2016-04-15 21:42:31',350),(351,'\0','','\0','','\0','2016-04-15 21:42:31',351),(352,'\0','','\0','','\0','2016-04-15 21:42:31',352),(353,'\0','','\0','','\0','2016-04-15 21:42:31',353),(354,'\0','','\0','','\0','2016-04-15 21:42:31',354);
/*!40000 ALTER TABLE `receiver` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paralyzed_can_do`.`receiver_AFTER_INSERT` AFTER INSERT ON `receiver` FOR EACH ROW
BEGIN

call pr_calculate_average();

call pr_insert_into_vitalSign_simulator();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receiver_backup`
--

DROP TABLE IF EXISTS `receiver_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiver_backup` (
  `receiverId` int(11) NOT NULL DEFAULT '0',
  `d1` bit(1) NOT NULL,
  `d2` bit(1) NOT NULL,
  `d3` bit(1) NOT NULL,
  `d4` bit(1) NOT NULL,
  `d5` bit(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transmitter_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver_backup`
--

LOCK TABLES `receiver_backup` WRITE;
/*!40000 ALTER TABLE `receiver_backup` DISABLE KEYS */;
INSERT INTO `receiver_backup` VALUES (170,'\0','','\0','\0','\0','2016-04-15 04:39:23',170),(171,'\0','','\0','\0','','2016-04-15 04:39:23',171),(172,'\0','','\0','\0','','2016-04-15 04:39:23',172),(173,'\0','','\0','\0','','2016-04-15 04:39:23',173),(174,'\0','','\0','\0','','2016-04-15 04:39:23',174),(175,'\0','','\0','\0','','2016-04-15 04:39:23',175),(176,'\0','','\0','\0','','2016-04-15 04:39:23',176),(177,'\0','','\0','\0','','2016-04-15 04:39:23',177),(178,'\0','','\0','\0','','2016-04-15 04:39:23',178),(179,'\0','','\0','\0','','2016-04-15 04:39:23',179),(180,'\0','','\0','','\0','2016-04-15 04:39:23',180),(181,'\0','','\0','','\0','2016-04-15 04:39:23',181),(182,'\0','','\0','','\0','2016-04-15 04:39:23',182),(183,'\0','','\0','','\0','2016-04-15 04:39:23',183),(170,'\0','','\0','\0','\0','2016-04-15 04:39:23',170),(171,'\0','','\0','\0','','2016-04-15 04:39:23',171),(172,'\0','','\0','\0','','2016-04-15 04:39:23',172),(173,'\0','','\0','\0','','2016-04-15 04:39:23',173),(174,'\0','','\0','\0','','2016-04-15 04:39:23',174),(175,'\0','','\0','\0','','2016-04-15 04:39:23',175),(176,'\0','','\0','\0','','2016-04-15 04:39:23',176),(177,'\0','','\0','\0','','2016-04-15 04:39:23',177),(178,'\0','','\0','\0','','2016-04-15 04:39:23',178),(179,'\0','','\0','\0','','2016-04-15 04:39:23',179),(180,'\0','','\0','','\0','2016-04-15 04:39:23',180),(181,'\0','','\0','','\0','2016-04-15 04:39:23',181),(182,'\0','','\0','','\0','2016-04-15 04:39:23',182),(183,'\0','','\0','','\0','2016-04-15 04:39:23',183),(170,'\0','','\0','\0','\0','2016-04-15 04:39:23',170),(171,'\0','','\0','\0','','2016-04-15 04:39:23',171),(172,'\0','','\0','\0','','2016-04-15 04:39:23',172),(173,'\0','','\0','\0','','2016-04-15 04:39:23',173),(174,'\0','','\0','\0','','2016-04-15 04:39:23',174),(175,'\0','','\0','\0','','2016-04-15 04:39:23',175),(176,'\0','','\0','\0','','2016-04-15 04:39:23',176),(177,'\0','','\0','\0','','2016-04-15 04:39:23',177),(178,'\0','','\0','\0','','2016-04-15 04:39:23',178),(179,'\0','','\0','\0','','2016-04-15 04:39:23',179),(180,'\0','','\0','','\0','2016-04-15 04:39:23',180),(181,'\0','','\0','','\0','2016-04-15 04:39:23',181),(182,'\0','','\0','','\0','2016-04-15 04:39:23',182),(183,'\0','','\0','','\0','2016-04-15 04:39:23',183),(198,'\0','\0','\0','','\0','2016-04-15 04:46:47',198),(199,'\0','\0','\0','','\0','2016-04-15 04:46:47',199),(200,'\0','\0','\0','','\0','2016-04-15 04:46:47',200),(201,'\0','\0','\0','','\0','2016-04-15 04:46:47',201),(202,'\0','\0','\0','','\0','2016-04-15 04:46:47',202),(203,'\0','\0','\0','','\0','2016-04-15 04:46:47',203),(204,'\0','\0','\0','','\0','2016-04-15 04:46:47',204),(205,'\0','\0','\0','','\0','2016-04-15 04:46:47',205),(206,'\0','\0','\0','','\0','2016-04-15 04:46:47',206),(207,'\0','\0','\0','','\0','2016-04-15 04:46:47',207),(208,'\0','\0','\0','','\0','2016-04-15 04:46:47',208),(209,'\0','\0','\0','','\0','2016-04-15 04:46:47',209),(210,'\0','\0','\0','','\0','2016-04-15 04:46:47',210),(211,'\0','\0','\0','','\0','2016-04-15 04:46:47',211),(254,'\0','','\0','\0','\0','2016-04-15 19:55:19',254),(255,'\0','','\0','\0','','2016-04-15 19:55:19',255),(256,'\0','','\0','\0','','2016-04-15 19:55:19',256),(257,'\0','','\0','\0','','2016-04-15 19:55:19',257),(258,'\0','','\0','\0','','2016-04-15 19:55:19',258),(259,'\0','','\0','\0','','2016-04-15 19:55:19',259),(260,'\0','','\0','\0','','2016-04-15 19:55:19',260),(261,'\0','','\0','\0','','2016-04-15 19:55:19',261),(262,'\0','','\0','\0','','2016-04-15 19:55:19',262),(263,'\0','','\0','\0','','2016-04-15 19:55:19',263),(264,'\0','','\0','','\0','2016-04-15 19:55:19',264),(265,'\0','','\0','','\0','2016-04-15 19:55:19',265),(266,'\0','','\0','','\0','2016-04-15 19:55:19',266),(267,'\0','','\0','','\0','2016-04-15 19:55:19',267),(270,'\0','','\0','\0','\0','2016-04-15 20:04:54',270),(271,'\0','','\0','\0','','2016-04-15 20:04:54',271),(272,'\0','','\0','\0','','2016-04-15 20:04:54',272),(273,'\0','','\0','\0','','2016-04-15 20:04:54',273),(274,'\0','','\0','\0','','2016-04-15 20:04:54',274),(275,'\0','','\0','\0','','2016-04-15 20:04:54',275),(276,'\0','','\0','\0','','2016-04-15 20:04:54',276),(277,'\0','','\0','\0','','2016-04-15 20:04:54',277),(278,'\0','','\0','\0','','2016-04-15 20:04:54',278),(279,'\0','','\0','\0','','2016-04-15 20:04:54',279),(280,'\0','','\0','','\0','2016-04-15 20:04:54',280),(281,'\0','','\0','','\0','2016-04-15 20:04:55',281),(282,'\0','','\0','','\0','2016-04-15 20:04:55',282),(283,'\0','','\0','','\0','2016-04-15 20:04:55',283),(285,'\0','','\0','\0','\0','2016-04-15 20:10:00',285),(286,'\0','','\0','\0','','2016-04-15 20:10:00',286),(287,'\0','','\0','\0','','2016-04-15 20:10:00',287),(288,'\0','','\0','\0','','2016-04-15 20:10:00',288),(289,'\0','','\0','\0','','2016-04-15 20:10:00',289),(290,'\0','','\0','\0','','2016-04-15 20:10:00',290),(291,'\0','','\0','\0','','2016-04-15 20:10:00',291),(292,'\0','','\0','\0','','2016-04-15 20:10:00',292),(293,'\0','','\0','\0','','2016-04-15 20:10:00',293),(294,'\0','','\0','\0','','2016-04-15 20:10:00',294),(295,'\0','','\0','','\0','2016-04-15 20:10:00',295),(296,'\0','','\0','','\0','2016-04-15 20:10:00',296),(297,'\0','','\0','','\0','2016-04-15 20:10:00',297),(298,'\0','','\0','','\0','2016-04-15 20:10:00',298),(313,'\0','','\0','\0','\0','2016-04-15 20:12:09',313),(314,'\0','','\0','\0','','2016-04-15 20:12:09',314),(315,'\0','','\0','\0','','2016-04-15 20:12:09',315),(316,'\0','','\0','\0','','2016-04-15 20:12:09',316),(317,'\0','','\0','\0','','2016-04-15 20:12:09',317),(318,'\0','','\0','\0','','2016-04-15 20:12:09',318),(319,'\0','','\0','\0','','2016-04-15 20:12:09',319),(320,'\0','','\0','\0','','2016-04-15 20:12:09',320),(321,'\0','','\0','\0','','2016-04-15 20:12:09',321),(322,'\0','','\0','\0','','2016-04-15 20:12:09',322),(323,'\0','','\0','','\0','2016-04-15 20:12:09',323),(324,'\0','','\0','','\0','2016-04-15 20:12:09',324),(325,'\0','','\0','','\0','2016-04-15 20:12:09',325),(326,'\0','','\0','','\0','2016-04-15 20:12:09',326);
/*!40000 ALTER TABLE `receiver_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_hashcode`
--

DROP TABLE IF EXISTS `standard_hashcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_hashcode` (
  `stdHashId` int(11) NOT NULL AUTO_INCREMENT,
  `hc1` bit(1) NOT NULL,
  `hc2` bit(1) NOT NULL,
  `hc3` bit(1) NOT NULL,
  `hc4` bit(1) NOT NULL,
  `hc5` bit(1) NOT NULL,
  `hc6` bit(1) NOT NULL,
  `hc7` bit(1) NOT NULL,
  `hc8` bit(1) NOT NULL,
  `hc9` bit(1) DEFAULT NULL,
  PRIMARY KEY (`stdHashId`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_hashcode`
--

LOCK TABLES `standard_hashcode` WRITE;
/*!40000 ALTER TABLE `standard_hashcode` DISABLE KEYS */;
INSERT INTO `standard_hashcode` VALUES (1,'\0','\0','\0','\0','\0','\0','\0','\0',''),(2,'\0','\0','\0','\0','\0','\0','\0','','\0'),(3,'\0','\0','\0','\0','\0','\0','\0','',''),(4,'\0','\0','\0','\0','\0','\0','','\0','\0'),(5,'\0','\0','\0','\0','\0','\0','','\0',''),(6,'\0','\0','\0','\0','\0','\0','','','\0'),(7,'\0','\0','\0','\0','\0','\0','','',''),(8,'\0','\0','\0','\0','\0','','\0','\0','\0'),(9,'\0','\0','\0','\0','\0','','\0','\0',''),(10,'\0','\0','\0','\0','\0','','\0','','\0'),(11,'\0','\0','\0','\0','\0','','\0','',''),(12,'\0','\0','\0','\0','\0','','','\0','\0'),(13,'\0','\0','\0','\0','\0','','','\0',''),(14,'\0','\0','\0','\0','\0','','','','\0'),(15,'\0','\0','\0','\0','\0','','','',''),(16,'\0','\0','\0','\0','','\0','\0','\0','\0'),(17,'\0','\0','\0','\0','','\0','\0','\0',''),(18,'\0','\0','\0','\0','','\0','\0','','\0'),(19,'\0','\0','\0','\0','','\0','\0','',''),(20,'\0','\0','\0','\0','','\0','','\0','\0'),(21,'\0','\0','\0','\0','','\0','','\0',''),(22,'\0','\0','\0','\0','','\0','','','\0'),(23,'\0','\0','\0','\0','','\0','','',''),(24,'\0','\0','\0','\0','','','\0','\0','\0'),(25,'\0','\0','\0','\0','','','\0','\0',''),(26,'\0','\0','\0','\0','','','\0','','\0'),(27,'\0','\0','\0','\0','','','\0','',''),(28,'\0','\0','\0','\0','','','','\0','\0'),(29,'\0','\0','\0','\0','','','','\0',''),(30,'\0','\0','\0','\0','','','','','\0'),(31,'\0','\0','\0','\0','','','','',''),(32,'\0','\0','\0','','\0','\0','\0','\0','\0'),(33,'\0','\0','\0','','\0','\0','\0','\0',''),(34,'\0','\0','\0','','\0','\0','\0','','\0'),(35,'\0','\0','\0','','\0','\0','\0','',''),(36,'\0','\0','\0','','\0','\0','','\0','\0'),(37,'\0','\0','\0','','\0','\0','','\0',''),(38,'\0','\0','\0','','\0','\0','','','\0'),(39,'\0','\0','\0','','\0','\0','','',''),(40,'\0','\0','\0','','\0','','\0','\0','\0'),(41,'\0','\0','\0','','\0','','\0','\0',''),(42,'\0','\0','\0','','\0','','\0','','\0'),(43,'\0','\0','\0','','\0','','\0','',''),(44,'\0','\0','\0','','\0','','','\0','\0'),(45,'\0','\0','\0','','\0','','','\0',''),(46,'\0','\0','\0','','\0','','','','\0'),(47,'\0','\0','\0','','\0','','','',''),(48,'\0','\0','\0','','','\0','\0','\0','\0'),(49,'\0','\0','\0','','','\0','\0','\0',''),(50,'\0','\0','\0','','','\0','\0','','\0'),(51,'\0','\0','\0','','','\0','\0','',''),(52,'\0','\0','\0','','','\0','','\0','\0'),(53,'\0','\0','\0','','','\0','','\0',''),(54,'\0','\0','\0','','','\0','','','\0'),(55,'\0','\0','\0','','','\0','','',''),(56,'\0','\0','\0','','','','\0','\0','\0'),(57,'\0','\0','\0','','','','\0','\0',''),(58,'\0','\0','\0','','','','\0','','\0'),(59,'\0','\0','\0','','','','\0','',''),(60,'\0','\0','\0','','','','','\0','\0'),(61,'\0','\0','\0','','','','','\0',''),(62,'\0','\0','\0','','','','','','\0'),(63,'\0','\0','\0','','','','','',''),(64,'\0','\0','','\0','\0','\0','\0','\0','\0'),(65,'\0','\0','','\0','\0','\0','\0','\0',''),(66,'\0','\0','','\0','\0','\0','\0','','\0'),(67,'\0','\0','','\0','\0','\0','\0','',''),(68,'\0','\0','','\0','\0','\0','','\0','\0'),(69,'\0','\0','','\0','\0','\0','','\0',''),(70,'\0','\0','','\0','\0','\0','','','\0'),(71,'\0','\0','','\0','\0','\0','','',''),(72,'\0','\0','','\0','\0','','\0','\0','\0'),(73,'\0','\0','','\0','\0','','\0','\0',''),(74,'\0','\0','','\0','\0','','\0','','\0'),(75,'\0','\0','','\0','\0','','\0','',''),(76,'\0','\0','','\0','\0','','','\0','\0'),(77,'\0','\0','','\0','\0','','','\0',''),(78,'\0','\0','','\0','\0','','','','\0'),(79,'\0','\0','','\0','\0','','','',''),(80,'\0','\0','','\0','','\0','\0','\0','\0'),(81,'\0','\0','','\0','','\0','\0','\0',''),(82,'\0','\0','','\0','','\0','\0','','\0'),(83,'\0','\0','','\0','','\0','\0','',''),(84,'\0','\0','','\0','','\0','','\0','\0'),(85,'\0','\0','','\0','','\0','','\0',''),(86,'\0','\0','','\0','','\0','','','\0'),(87,'\0','\0','','\0','','\0','','',''),(88,'\0','\0','','\0','','','\0','\0','\0'),(89,'\0','\0','','\0','','','\0','\0',''),(90,'\0','\0','','\0','','','\0','','\0'),(91,'\0','\0','','\0','','','\0','',''),(92,'\0','\0','','\0','','','','\0','\0'),(93,'\0','\0','','\0','','','','\0',''),(94,'\0','\0','','\0','','','','','\0'),(95,'\0','\0','','\0','','','','',''),(96,'\0','\0','','','\0','\0','\0','\0','\0'),(97,'\0','\0','','','\0','\0','\0','\0',''),(98,'\0','\0','','','\0','\0','\0','','\0'),(99,'\0','\0','','','\0','\0','\0','',''),(100,'\0','\0','','','\0','\0','','\0','\0'),(101,'\0','\0','','','\0','\0','','\0',''),(102,'\0','\0','','','\0','\0','','','\0'),(103,'\0','\0','','','\0','\0','','',''),(104,'\0','\0','','','\0','','\0','\0','\0'),(105,'\0','\0','','','\0','','\0','\0',''),(106,'\0','\0','','','\0','','\0','','\0'),(107,'\0','\0','','','\0','','\0','',''),(108,'\0','\0','','','\0','','','\0','\0'),(109,'\0','\0','','','\0','','','\0',''),(110,'\0','\0','','','\0','','','','\0'),(111,'\0','\0','','','\0','','','',''),(112,'\0','\0','','','','\0','\0','\0','\0'),(113,'\0','\0','','','','\0','\0','\0',''),(114,'\0','\0','','','','\0','\0','','\0'),(115,'\0','\0','','','','\0','\0','',''),(116,'\0','\0','','','','\0','','\0','\0'),(117,'\0','\0','','','','\0','','\0',''),(118,'\0','\0','','','','\0','','','\0'),(119,'\0','\0','','','','\0','','',''),(120,'\0','\0','','','','','\0','\0','\0'),(121,'\0','\0','','','','','\0','\0',''),(122,'\0','\0','','','','','\0','','\0'),(123,'\0','\0','','','','','\0','',''),(124,'\0','\0','','','','','','\0','\0'),(125,'\0','\0','','','','','','\0',''),(126,'\0','\0','','','','','','','\0'),(127,'\0','\0','','','','','','',''),(128,'\0','','\0','\0','\0','\0','\0','\0','\0'),(129,'\0','','\0','\0','\0','\0','\0','\0',''),(130,'\0','','\0','\0','\0','\0','\0','','\0'),(131,'\0','','\0','\0','\0','\0','\0','',''),(132,'\0','','\0','\0','\0','\0','','\0','\0'),(133,'\0','','\0','\0','\0','\0','','\0',''),(134,'\0','','\0','\0','\0','\0','','','\0'),(135,'\0','','\0','\0','\0','\0','','',''),(136,'\0','','\0','\0','\0','','\0','\0','\0'),(137,'\0','','\0','\0','\0','','\0','\0',''),(138,'\0','','\0','\0','\0','','\0','','\0'),(139,'\0','','\0','\0','\0','','\0','',''),(140,'\0','','\0','\0','\0','','','\0','\0'),(141,'\0','','\0','\0','\0','','','\0',''),(142,'\0','','\0','\0','\0','','','','\0'),(143,'\0','','\0','\0','\0','','','',''),(144,'\0','','\0','\0','','\0','\0','\0','\0'),(145,'\0','','\0','\0','','\0','\0','\0',''),(146,'\0','','\0','\0','','\0','\0','','\0'),(147,'\0','','\0','\0','','\0','\0','',''),(148,'\0','','\0','\0','','\0','','\0','\0'),(149,'\0','','\0','\0','','\0','','\0',''),(150,'\0','','\0','\0','','\0','','','\0'),(151,'\0','','\0','\0','','\0','','',''),(152,'\0','','\0','\0','','','\0','\0','\0'),(153,'\0','','\0','\0','','','\0','\0',''),(154,'\0','','\0','\0','','','\0','','\0'),(155,'\0','','\0','\0','','','\0','',''),(156,'\0','','\0','\0','','','','\0','\0'),(157,'\0','','\0','\0','','','','\0',''),(158,'\0','','\0','\0','','','','','\0'),(159,'\0','','\0','\0','','','','',''),(160,'\0','','\0','','\0','\0','\0','\0','\0'),(161,'\0','','\0','','\0','\0','\0','\0',''),(162,'\0','','\0','','\0','\0','\0','','\0'),(163,'\0','','\0','','\0','\0','\0','',''),(164,'\0','','\0','','\0','\0','','\0','\0'),(165,'\0','','\0','','\0','\0','','\0',''),(166,'\0','','\0','','\0','\0','','','\0'),(167,'\0','','\0','','\0','\0','','',''),(168,'\0','','\0','','\0','','\0','\0','\0'),(169,'\0','','\0','','\0','','\0','\0',''),(170,'\0','','\0','','\0','','\0','','\0'),(171,'\0','','\0','','\0','','\0','',''),(172,'\0','','\0','','\0','','','\0','\0'),(173,'\0','','\0','','\0','','','\0',''),(174,'\0','','\0','','\0','','','','\0'),(175,'\0','','\0','','\0','','','',''),(176,'\0','','\0','','','\0','\0','\0','\0'),(177,'\0','','\0','','','\0','\0','\0',''),(178,'\0','','\0','','','\0','\0','','\0'),(179,'\0','','\0','','','\0','\0','',''),(180,'\0','','\0','','','\0','','\0','\0'),(181,'\0','','\0','','','\0','','\0',''),(182,'\0','','\0','','','\0','','','\0'),(183,'\0','','\0','','','\0','','',''),(184,'\0','','\0','','','','\0','\0','\0'),(185,'\0','','\0','','','','\0','\0',''),(186,'\0','','\0','','','','\0','','\0'),(187,'\0','','\0','','','','\0','',''),(188,'\0','','\0','','','','','\0','\0'),(189,'\0','','\0','','','','','\0',''),(190,'\0','','\0','','','','','','\0'),(191,'\0','','\0','','','','','',''),(192,'\0','','','\0','\0','\0','\0','\0','\0'),(193,'\0','','','\0','\0','\0','\0','\0',''),(194,'\0','','','\0','\0','\0','\0','','\0'),(195,'\0','','','\0','\0','\0','\0','',''),(196,'\0','','','\0','\0','\0','','\0','\0'),(197,'\0','','','\0','\0','\0','','\0',''),(198,'\0','','','\0','\0','\0','','','\0'),(199,'\0','','','\0','\0','\0','','',''),(200,'\0','','','\0','\0','','\0','\0','\0'),(201,'\0','','','\0','\0','','\0','\0',''),(202,'\0','','','\0','\0','','\0','','\0'),(203,'\0','','','\0','\0','','\0','',''),(204,'\0','','','\0','\0','','','\0','\0'),(205,'\0','','','\0','\0','','','\0',''),(206,'\0','','','\0','\0','','','','\0'),(207,'\0','','','\0','\0','','','',''),(208,'\0','','','\0','','\0','\0','\0','\0'),(209,'\0','','','\0','','\0','\0','\0',''),(210,'\0','','','\0','','\0','\0','','\0'),(211,'\0','','','\0','','\0','\0','',''),(212,'\0','','','\0','','\0','','\0','\0'),(213,'\0','','','\0','','\0','','\0',''),(214,'\0','','','\0','','\0','','','\0'),(215,'\0','','','\0','','\0','','',''),(216,'\0','','','\0','','','\0','\0','\0'),(217,'\0','','','\0','','','\0','\0',''),(218,'\0','','','\0','','','\0','','\0'),(219,'\0','','','\0','','','\0','',''),(220,'\0','','','\0','','','','\0','\0'),(221,'\0','','','\0','','','','\0',''),(222,'\0','','','\0','','','','','\0'),(223,'\0','','','\0','','','','',''),(224,'\0','','','','\0','\0','\0','\0','\0'),(225,'\0','','','','\0','\0','\0','\0',''),(226,'\0','','','','\0','\0','\0','','\0'),(227,'\0','','','','\0','\0','\0','',''),(228,'\0','','','','\0','\0','','\0','\0'),(229,'\0','','','','\0','\0','','\0',''),(230,'\0','','','','\0','\0','','','\0'),(231,'\0','','','','\0','\0','','',''),(232,'\0','','','','\0','','\0','\0','\0'),(233,'\0','','','','\0','','\0','\0',''),(234,'\0','','','','\0','','\0','','\0'),(235,'\0','','','','\0','','\0','',''),(236,'\0','','','','\0','','','\0','\0'),(237,'\0','','','','\0','','','\0',''),(238,'\0','','','','\0','','','','\0'),(239,'\0','','','','\0','','','',''),(240,'\0','','','','','\0','\0','\0','\0'),(241,'\0','','','','','\0','\0','\0',''),(242,'\0','','','','','\0','\0','','\0'),(243,'\0','','','','','\0','\0','',''),(244,'\0','','','','','\0','','\0','\0'),(245,'\0','','','','','\0','','\0',''),(246,'\0','','','','','\0','','','\0'),(247,'\0','','','','','\0','','',''),(248,'\0','','','','','','\0','\0','\0'),(249,'\0','','','','','','\0','\0',''),(250,'\0','','','','','','\0','','\0'),(251,'\0','','','','','','\0','',''),(252,'\0','','','','','','','\0','\0'),(253,'\0','','','','','','','\0',''),(254,'\0','','','','','','','','\0'),(255,'\0','','','','','','','',''),(256,'','\0','\0','\0','\0','\0','\0','\0','\0'),(257,'','\0','\0','\0','\0','\0','\0','\0',''),(258,'','\0','\0','\0','\0','\0','\0','','\0'),(259,'','\0','\0','\0','\0','\0','\0','',''),(260,'','\0','\0','\0','\0','\0','','\0','\0'),(261,'','\0','\0','\0','\0','\0','','\0',''),(262,'','\0','\0','\0','\0','\0','','','\0'),(263,'','\0','\0','\0','\0','\0','','',''),(264,'','\0','\0','\0','\0','','\0','\0','\0'),(265,'','\0','\0','\0','\0','','\0','\0',''),(266,'','\0','\0','\0','\0','','\0','','\0'),(267,'','\0','\0','\0','\0','','\0','',''),(268,'','\0','\0','\0','\0','','','\0','\0'),(269,'','\0','\0','\0','\0','','','\0',''),(270,'','\0','\0','\0','\0','','','','\0'),(271,'','\0','\0','\0','\0','','','',''),(272,'','\0','\0','\0','','\0','\0','\0','\0'),(273,'','\0','\0','\0','','\0','\0','\0',''),(274,'','\0','\0','\0','','\0','\0','','\0'),(275,'','\0','\0','\0','','\0','\0','',''),(276,'','\0','\0','\0','','\0','','\0','\0'),(277,'','\0','\0','\0','','\0','','\0',''),(278,'','\0','\0','\0','','\0','','','\0'),(279,'','\0','\0','\0','','\0','','',''),(280,'','\0','\0','\0','','','\0','\0','\0'),(281,'','\0','\0','\0','','','\0','\0',''),(282,'','\0','\0','\0','','','\0','','\0'),(283,'','\0','\0','\0','','','\0','',''),(284,'','\0','\0','\0','','','','\0','\0'),(285,'','\0','\0','\0','','','','\0',''),(286,'','\0','\0','\0','','','','','\0'),(287,'','\0','\0','\0','','','','',''),(288,'','\0','\0','','\0','\0','\0','\0','\0'),(289,'','\0','\0','','\0','\0','\0','\0',''),(290,'','\0','\0','','\0','\0','\0','','\0'),(291,'','\0','\0','','\0','\0','\0','',''),(292,'','\0','\0','','\0','\0','','\0','\0'),(293,'','\0','\0','','\0','\0','','\0',''),(294,'','\0','\0','','\0','\0','','','\0'),(295,'','\0','\0','','\0','\0','','',''),(296,'','\0','\0','','\0','','\0','\0','\0'),(297,'','\0','\0','','\0','','\0','\0',''),(298,'','\0','\0','','\0','','\0','','\0'),(299,'','\0','\0','','\0','','\0','',''),(300,'','\0','\0','','\0','','','\0','\0'),(301,'','\0','\0','','\0','','','\0',''),(302,'','\0','\0','','\0','','','','\0'),(303,'','\0','\0','','\0','','','',''),(304,'','\0','\0','','','\0','\0','\0','\0'),(305,'','\0','\0','','','\0','\0','\0',''),(306,'','\0','\0','','','\0','\0','','\0'),(307,'','\0','\0','','','\0','\0','',''),(308,'','\0','\0','','','\0','','\0','\0'),(309,'','\0','\0','','','\0','','\0',''),(310,'','\0','\0','','','\0','','','\0'),(311,'','\0','\0','','','\0','','',''),(312,'','\0','\0','','','','\0','\0','\0'),(313,'','\0','\0','','','','\0','\0',''),(314,'','\0','\0','','','','\0','','\0'),(315,'','\0','\0','','','','\0','',''),(316,'','\0','\0','','','','','\0','\0'),(317,'','\0','\0','','','','','\0',''),(318,'','\0','\0','','','','','','\0'),(319,'','\0','\0','','','','','',''),(320,'','\0','','\0','\0','\0','\0','\0','\0'),(321,'','\0','','\0','\0','\0','\0','\0',''),(322,'','\0','','\0','\0','\0','\0','','\0'),(323,'','\0','','\0','\0','\0','\0','',''),(324,'','\0','','\0','\0','\0','','\0','\0'),(325,'','\0','','\0','\0','\0','','\0',''),(326,'','\0','','\0','\0','\0','','','\0'),(327,'','\0','','\0','\0','\0','','',''),(328,'','\0','','\0','\0','','\0','\0','\0'),(329,'','\0','','\0','\0','','\0','\0',''),(330,'','\0','','\0','\0','','\0','','\0'),(331,'','\0','','\0','\0','','\0','',''),(332,'','\0','','\0','\0','','','\0','\0'),(333,'','\0','','\0','\0','','','\0',''),(334,'','\0','','\0','\0','','','','\0'),(335,'','\0','','\0','\0','','','',''),(336,'','\0','','\0','','\0','\0','\0','\0'),(337,'','\0','','\0','','\0','\0','\0',''),(338,'','\0','','\0','','\0','\0','','\0'),(339,'','\0','','\0','','\0','\0','',''),(340,'','\0','','\0','','\0','','\0','\0'),(341,'','\0','','\0','','\0','','\0',''),(342,'','\0','','\0','','\0','','','\0'),(343,'','\0','','\0','','\0','','',''),(344,'','\0','','\0','','','\0','\0','\0'),(345,'','\0','','\0','','','\0','\0',''),(346,'','\0','','\0','','','\0','','\0'),(347,'','\0','','\0','','','\0','',''),(348,'','\0','','\0','','','','\0','\0'),(349,'','\0','','\0','','','','\0',''),(350,'','\0','','\0','','','','','\0'),(351,'','\0','','\0','','','','',''),(352,'','\0','','','\0','\0','\0','\0','\0'),(353,'','\0','','','\0','\0','\0','\0',''),(354,'','\0','','','\0','\0','\0','','\0'),(355,'','\0','','','\0','\0','\0','',''),(356,'','\0','','','\0','\0','','\0','\0'),(357,'','\0','','','\0','\0','','\0',''),(358,'','\0','','','\0','\0','','','\0'),(359,'','\0','','','\0','\0','','',''),(360,'','\0','','','\0','','\0','\0','\0'),(361,'','\0','','','\0','','\0','\0',''),(362,'','\0','','','\0','','\0','','\0'),(363,'','\0','','','\0','','\0','',''),(364,'','\0','','','\0','','','\0','\0'),(365,'','\0','','','\0','','','\0',''),(366,'','\0','','','\0','','','','\0'),(367,'','\0','','','\0','','','',''),(368,'','\0','','','','\0','\0','\0','\0'),(369,'','\0','','','','\0','\0','\0',''),(370,'','\0','','','','\0','\0','','\0'),(371,'','\0','','','','\0','\0','',''),(372,'','\0','','','','\0','','\0','\0'),(373,'','\0','','','','\0','','\0',''),(374,'','\0','','','','\0','','','\0'),(375,'','\0','','','','\0','','',''),(376,'','\0','','','','','\0','\0','\0'),(377,'','\0','','','','','\0','\0',''),(378,'','\0','','','','','\0','','\0'),(379,'','\0','','','','','\0','',''),(380,'','\0','','','','','','\0','\0'),(381,'','\0','','','','','','\0',''),(382,'','\0','','','','','','','\0'),(383,'','\0','','','','','','',''),(384,'','','\0','\0','\0','\0','\0','\0','\0'),(385,'','','\0','\0','\0','\0','\0','\0',''),(386,'','','\0','\0','\0','\0','\0','','\0'),(387,'','','\0','\0','\0','\0','\0','',''),(388,'','','\0','\0','\0','\0','','\0','\0'),(389,'','','\0','\0','\0','\0','','\0',''),(390,'','','\0','\0','\0','\0','','','\0'),(391,'','','\0','\0','\0','\0','','',''),(392,'','','\0','\0','\0','','\0','\0','\0'),(393,'','','\0','\0','\0','','\0','\0',''),(394,'','','\0','\0','\0','','\0','','\0'),(395,'','','\0','\0','\0','','\0','',''),(396,'','','\0','\0','\0','','','\0','\0'),(397,'','','\0','\0','\0','','','\0',''),(398,'','','\0','\0','\0','','','','\0'),(399,'','','\0','\0','\0','','','',''),(400,'','','\0','\0','','\0','\0','\0','\0'),(401,'','','\0','\0','','\0','\0','\0',''),(402,'','','\0','\0','','\0','\0','','\0'),(403,'','','\0','\0','','\0','\0','',''),(404,'','','\0','\0','','\0','','\0','\0'),(405,'','','\0','\0','','\0','','\0',''),(406,'','','\0','\0','','\0','','','\0'),(407,'','','\0','\0','','\0','','',''),(408,'','','\0','\0','','','\0','\0','\0'),(409,'','','\0','\0','','','\0','\0',''),(410,'','','\0','\0','','','\0','','\0'),(411,'','','\0','\0','','','\0','',''),(412,'','','\0','\0','','','','\0','\0'),(413,'','','\0','\0','','','','\0',''),(414,'','','\0','\0','','','','','\0'),(415,'','','\0','\0','','','','',''),(416,'','','\0','','\0','\0','\0','\0','\0'),(417,'','','\0','','\0','\0','\0','\0',''),(418,'','','\0','','\0','\0','\0','','\0'),(419,'','','\0','','\0','\0','\0','',''),(420,'','','\0','','\0','\0','','\0','\0'),(421,'','','\0','','\0','\0','','\0',''),(422,'','','\0','','\0','\0','','','\0'),(423,'','','\0','','\0','\0','','',''),(424,'','','\0','','\0','','\0','\0','\0'),(425,'','','\0','','\0','','\0','\0',''),(426,'','','\0','','\0','','\0','','\0'),(427,'','','\0','','\0','','\0','',''),(428,'','','\0','','\0','','','\0','\0'),(429,'','','\0','','\0','','','\0',''),(430,'','','\0','','\0','','','','\0'),(431,'','','\0','','\0','','','',''),(432,'','','\0','','','\0','\0','\0','\0'),(433,'','','\0','','','\0','\0','\0',''),(434,'','','\0','','','\0','\0','','\0'),(435,'','','\0','','','\0','\0','',''),(436,'','','\0','','','\0','','\0','\0'),(437,'','','\0','','','\0','','\0',''),(438,'','','\0','','','\0','','','\0'),(439,'','','\0','','','\0','','',''),(440,'','','\0','','','','\0','\0','\0'),(441,'','','\0','','','','\0','\0',''),(442,'','','\0','','','','\0','','\0'),(443,'','','\0','','','','\0','',''),(444,'','','\0','','','','','\0','\0'),(445,'','','\0','','','','','\0',''),(446,'','','\0','','','','','','\0'),(447,'','','\0','','','','','',''),(448,'','','','\0','\0','\0','\0','\0','\0'),(449,'','','','\0','\0','\0','\0','\0',''),(450,'','','','\0','\0','\0','\0','','\0'),(451,'','','','\0','\0','\0','\0','',''),(452,'','','','\0','\0','\0','','\0','\0'),(453,'','','','\0','\0','\0','','\0',''),(454,'','','','\0','\0','\0','','','\0'),(455,'','','','\0','\0','\0','','',''),(456,'','','','\0','\0','','\0','\0','\0'),(457,'','','','\0','\0','','\0','\0',''),(458,'','','','\0','\0','','\0','','\0'),(459,'','','','\0','\0','','\0','',''),(460,'','','','\0','\0','','','\0','\0'),(461,'','','','\0','\0','','','\0',''),(462,'','','','\0','\0','','','','\0'),(463,'','','','\0','\0','','','',''),(464,'','','','\0','','\0','\0','\0','\0'),(465,'','','','\0','','\0','\0','\0',''),(466,'','','','\0','','\0','\0','','\0'),(467,'','','','\0','','\0','\0','',''),(468,'','','','\0','','\0','','\0','\0'),(469,'','','','\0','','\0','','\0',''),(470,'','','','\0','','\0','','','\0'),(471,'','','','\0','','\0','','',''),(472,'','','','\0','','','\0','\0','\0'),(473,'','','','\0','','','\0','\0',''),(474,'','','','\0','','','\0','','\0'),(475,'','','','\0','','','\0','',''),(476,'','','','\0','','','','\0','\0'),(477,'','','','\0','','','','\0',''),(478,'','','','\0','','','','','\0'),(479,'','','','\0','','','','',''),(480,'','','','','\0','\0','\0','\0','\0'),(481,'','','','','\0','\0','\0','\0',''),(482,'','','','','\0','\0','\0','','\0'),(483,'','','','','\0','\0','\0','',''),(484,'','','','','\0','\0','','\0','\0'),(485,'','','','','\0','\0','','\0',''),(486,'','','','','\0','\0','','','\0'),(487,'','','','','\0','\0','','',''),(488,'','','','','\0','','\0','\0','\0'),(489,'','','','','\0','','\0','\0',''),(490,'','','','','\0','','\0','','\0'),(491,'','','','','\0','','\0','',''),(492,'','','','','\0','','','\0','\0'),(493,'','','','','\0','','','\0',''),(494,'','','','','\0','','','','\0'),(495,'','','','','\0','','','',''),(496,'','','','','','\0','\0','\0','\0');
/*!40000 ALTER TABLE `standard_hashcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_impulses`
--

DROP TABLE IF EXISTS `standard_impulses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_impulses` (
  `stdImpulseId` int(11) NOT NULL AUTO_INCREMENT,
  `bloodType` varchar(3) NOT NULL,
  `stage` int(11) NOT NULL,
  `releaseImpulseFrequency` decimal(5,2) NOT NULL,
  `restrainImpulseFrequency` decimal(5,2) NOT NULL,
  `releaseImpulseHashCode` varchar(6) NOT NULL,
  `restrainImpulseHashCode` varchar(6) NOT NULL,
  PRIMARY KEY (`stdImpulseId`),
  KEY `fk_impluseStage_idx` (`stage`),
  CONSTRAINT `fk_impluseStage` FOREIGN KEY (`stage`) REFERENCES `standard_stages` (`stagesId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_impulses`
--

LOCK TABLES `standard_impulses` WRITE;
/*!40000 ALTER TABLE `standard_impulses` DISABLE KEYS */;
INSERT INTO `standard_impulses` VALUES (1,'O+',1,15.20,18.10,'000001','000010'),(2,'O+',2,9.40,12.30,'000011','000100'),(3,'O+',3,5.50,7.10,'000101','000110'),(4,'O+',4,2.20,3.31,'000111','001000'),(5,'O-',1,16.11,19.23,'001001','001010'),(6,'O-',2,8.10,9.67,'001011','001100'),(7,'O-',3,6.66,5.32,'001101','001110'),(8,'O-',4,1.23,2.45,'001111','010000'),(9,'A+',1,22.21,25.40,'010001','010010'),(10,'A+',2,9.11,10.60,'010011','010100'),(11,'A+',3,4.61,6.78,'010101','010110'),(12,'A+',4,0.89,3.49,'010111','011000'),(13,'A-',1,14.32,28.00,'011001','011010'),(14,'A-',2,10.13,12.56,'011011','011100'),(15,'A-',3,5.90,6.12,'011101','011110'),(16,'A-',4,2.11,3.33,'011111','100000'),(17,'B+',1,17.90,27.35,'100001','100010'),(18,'B+',2,9.48,11.77,'100011','100100'),(19,'B+',3,4.90,5.00,'100101','100110'),(20,'B+',4,1.39,2.36,'100111','101000'),(21,'B-',1,24.25,30.00,'101001','101010'),(22,'B-',2,9.10,10.77,'101011','101100'),(23,'B-',3,4.05,6.06,'101101','101110'),(24,'B-',4,1.00,3.00,'101111','110000'),(25,'AB+',1,19.00,23.00,'110001','110010'),(26,'AB+',2,8.00,12.00,'110011','110100'),(27,'AB+',3,4.00,7.00,'110101','110110'),(28,'AB+',4,0.98,2.98,'110111','111000'),(29,'AB-',1,17.00,21.00,'111001','111010'),(30,'AB-',2,10.00,13.00,'111011','111100'),(31,'AB-',3,5.16,6.43,'111101','111110'),(32,'AB-',4,2.98,3.50,'111111','000000');
/*!40000 ALTER TABLE `standard_impulses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_signals`
--

DROP TABLE IF EXISTS `standard_signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_signals` (
  `signalId` int(11) NOT NULL AUTO_INCREMENT,
  `signalName` varchar(45) NOT NULL,
  `lowFrequency` decimal(5,2) NOT NULL,
  `highFrequency` decimal(5,2) NOT NULL,
  `stage` int(11) NOT NULL,
  PRIMARY KEY (`signalId`),
  KEY `fk_stage2_idx` (`stage`),
  CONSTRAINT `fk_stage2` FOREIGN KEY (`stage`) REFERENCES `standard_stages` (`stagesId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_signals`
--

LOCK TABLES `standard_signals` WRITE;
/*!40000 ALTER TABLE `standard_signals` DISABLE KEYS */;
INSERT INTO `standard_signals` VALUES (1,'BETA',14.00,30.00,1),(2,'ALPHA',8.00,14.00,2),(3,'THETA',4.00,8.00,3),(4,'DELTA',0.00,4.00,4);
/*!40000 ALTER TABLE `standard_signals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_stages`
--

DROP TABLE IF EXISTS `standard_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_stages` (
  `stagesId` int(11) NOT NULL AUTO_INCREMENT,
  `stageName` varchar(45) NOT NULL,
  PRIMARY KEY (`stagesId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_stages`
--

LOCK TABLES `standard_stages` WRITE;
/*!40000 ALTER TABLE `standard_stages` DISABLE KEYS */;
INSERT INTO `standard_stages` VALUES (1,'Awake with Mental Activity'),(2,'Awake and Resting'),(3,'Sleeping'),(4,'Deep Sleep');
/*!40000 ALTER TABLE `standard_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_vitalsign`
--

DROP TABLE IF EXISTS `standard_vitalsign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_vitalsign` (
  `stdId` int(11) NOT NULL AUTO_INCREMENT,
  `BP_Systolic_lowerlimit` int(11) NOT NULL,
  `BP_Systolic_upperlimit` int(11) NOT NULL,
  `BP_Diastolic_lowerlimit` int(11) NOT NULL,
  `BP_Diastolic_upperlimit` int(11) NOT NULL,
  `HR_lowerlimit` int(11) NOT NULL,
  `HR_upperlimit` int(11) NOT NULL,
  `RR_lowerlimit` int(11) NOT NULL,
  `RR_upperlimit` int(11) NOT NULL,
  `Age_upperlimit` int(11) NOT NULL,
  `Age_lowerlimit` int(11) NOT NULL,
  PRIMARY KEY (`stdId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_vitalsign`
--

LOCK TABLES `standard_vitalsign` WRITE;
/*!40000 ALTER TABLE `standard_vitalsign` DISABLE KEYS */;
INSERT INTO `standard_vitalsign` VALUES (1,75,100,50,70,90,150,25,40,5,0),(2,75,100,50,70,80,140,20,30,12,6),(3,80,110,50,80,80,130,20,30,36,13),(4,80,110,50,80,80,120,20,30,60,37),(5,85,120,55,80,70,110,15,30,120,61),(6,85,120,55,80,60,105,12,20,168,121),(7,95,140,60,90,60,100,12,30,240,169),(8,95,140,60,90,50,80,16,20,1200,241);
/*!40000 ALTER TABLE `standard_vitalsign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standardsignal_standardhashcode`
--

DROP TABLE IF EXISTS `standardsignal_standardhashcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standardsignal_standardhashcode` (
  `stdSigHashId` int(11) NOT NULL AUTO_INCREMENT,
  `ssFrequency` decimal(5,2) NOT NULL,
  `ssStage` int(11) NOT NULL,
  `urge` varchar(1) NOT NULL,
  `hashCode` int(11) NOT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`stdSigHashId`),
  KEY `fk_hashcode_idx` (`hashCode`),
  KEY `fk_stage1_idx` (`ssStage`),
  CONSTRAINT `fk_hashcode_ss` FOREIGN KEY (`hashCode`) REFERENCES `standard_hashcode` (`stdHashId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stage_ss` FOREIGN KEY (`ssStage`) REFERENCES `standard_stages` (`stagesId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standardsignal_standardhashcode`
--

LOCK TABLES `standardsignal_standardhashcode` WRITE;
/*!40000 ALTER TABLE `standardsignal_standardhashcode` DISABLE KEYS */;
INSERT INTO `standardsignal_standardhashcode` VALUES (121,1.00,4,'Y',1,'O+'),(122,1.00,4,'N',2,'O+'),(123,2.00,4,'Y',3,'O+'),(124,2.00,4,'N',4,'O+'),(125,3.00,4,'Y',5,'O+'),(126,3.00,4,'N',6,'O+'),(127,4.00,3,'Y',7,'O+'),(128,4.00,3,'N',8,'O+'),(129,5.00,3,'Y',9,'O+'),(130,5.00,3,'N',10,'O+'),(131,6.00,3,'Y',11,'O+'),(132,6.00,3,'N',12,'O+'),(133,7.00,3,'Y',13,'O+'),(134,7.00,3,'N',14,'O+'),(135,8.00,2,'Y',15,'O+'),(136,8.00,2,'N',16,'O+'),(137,9.00,2,'Y',17,'O+'),(138,9.00,2,'N',18,'O+'),(139,10.00,2,'Y',19,'O+'),(140,10.00,2,'N',20,'O+'),(141,11.00,2,'Y',21,'O+'),(142,11.00,2,'N',22,'O+'),(143,12.00,2,'Y',23,'O+'),(144,12.00,2,'N',24,'O+'),(145,13.00,2,'Y',25,'O+'),(146,13.00,2,'N',26,'O+'),(147,14.00,1,'Y',27,'O+'),(148,14.00,1,'N',28,'O+'),(149,15.00,1,'Y',29,'O+'),(150,15.00,1,'N',30,'O+'),(151,16.00,1,'Y',31,'O+'),(152,16.00,1,'N',32,'O+'),(153,17.00,1,'Y',33,'O+'),(154,17.00,1,'N',34,'O+'),(155,18.00,1,'Y',35,'O+'),(156,18.00,1,'N',36,'O+'),(157,19.00,1,'Y',37,'O+'),(158,19.00,1,'N',38,'O+'),(159,20.00,1,'Y',39,'O+'),(160,20.00,1,'N',40,'O+'),(161,21.00,1,'Y',41,'O+'),(162,21.00,1,'N',42,'O+'),(163,22.00,1,'Y',43,'O+'),(164,22.00,1,'N',44,'O+'),(165,23.00,1,'Y',45,'O+'),(166,23.00,1,'N',46,'O+'),(167,24.00,1,'Y',47,'O+'),(168,24.00,1,'N',48,'O+'),(169,25.00,1,'Y',49,'O+'),(170,25.00,1,'N',50,'O+'),(171,26.00,1,'Y',51,'O+'),(172,26.00,1,'N',52,'O+'),(173,27.00,1,'Y',53,'O+'),(174,27.00,1,'N',54,'O+'),(175,28.00,1,'Y',55,'O+'),(176,28.00,1,'N',56,'O+'),(177,29.00,1,'Y',57,'O+'),(178,29.00,1,'N',58,'O+'),(179,30.00,1,'Y',59,'O+'),(180,30.00,1,'N',60,'O+'),(181,1.00,4,'Y',61,'O-'),(182,1.00,4,'N',62,'O-'),(183,2.00,4,'Y',63,'O-'),(184,2.00,4,'N',64,'O-'),(185,3.00,4,'Y',65,'O-'),(186,3.00,4,'N',66,'O-'),(187,4.00,3,'Y',67,'O-'),(188,4.00,3,'N',68,'O-'),(189,5.00,3,'Y',69,'O-'),(190,5.00,3,'N',70,'O-'),(191,6.00,3,'Y',71,'O-'),(192,6.00,3,'N',72,'O-'),(193,7.00,3,'Y',73,'O-'),(194,7.00,3,'N',74,'O-'),(195,8.00,2,'Y',75,'O-'),(196,8.00,2,'N',76,'O-'),(197,9.00,2,'Y',77,'O-'),(198,9.00,2,'N',78,'O-'),(199,10.00,2,'Y',79,'O-'),(200,10.00,2,'N',80,'O-'),(201,11.00,2,'Y',81,'O-'),(202,11.00,2,'N',82,'O-'),(203,12.00,2,'Y',83,'O-'),(204,12.00,2,'N',84,'O-'),(205,13.00,2,'Y',85,'O-'),(206,13.00,2,'N',86,'O-'),(207,14.00,1,'Y',87,'O-'),(208,14.00,1,'N',88,'O-'),(209,15.00,1,'Y',89,'O-'),(210,15.00,1,'N',90,'O-'),(211,16.00,1,'Y',91,'O-'),(212,16.00,1,'N',92,'O-'),(213,17.00,1,'Y',93,'O-'),(214,17.00,1,'N',94,'O-'),(215,18.00,1,'Y',95,'O-'),(216,18.00,1,'N',96,'O-'),(217,19.00,1,'Y',97,'O-'),(218,19.00,1,'N',98,'O-'),(219,20.00,1,'Y',99,'O-'),(220,20.00,1,'N',100,'O-'),(221,21.00,1,'Y',101,'O-'),(222,21.00,1,'N',102,'O-'),(223,22.00,1,'Y',103,'O-'),(224,22.00,1,'N',104,'O-'),(225,23.00,1,'Y',105,'O-'),(226,23.00,1,'N',106,'O-'),(227,24.00,1,'Y',107,'O-'),(228,24.00,1,'N',108,'O-'),(229,25.00,1,'Y',109,'O-'),(230,25.00,1,'N',110,'O-'),(231,26.00,1,'Y',111,'O-'),(232,26.00,1,'N',112,'O-'),(233,27.00,1,'Y',113,'O-'),(234,27.00,1,'N',114,'O-'),(235,28.00,1,'Y',115,'O-'),(236,28.00,1,'N',116,'O-'),(237,29.00,1,'Y',117,'O-'),(238,29.00,1,'N',118,'O-'),(239,30.00,1,'Y',119,'O-'),(240,30.00,1,'N',120,'O-'),(241,1.00,4,'Y',121,'A+'),(242,1.00,4,'N',122,'A+'),(243,2.00,4,'Y',123,'A+'),(244,2.00,4,'N',124,'A+'),(245,3.00,4,'Y',125,'A+'),(246,3.00,4,'N',126,'A+'),(247,4.00,3,'Y',127,'A+'),(248,4.00,3,'N',128,'A+'),(249,5.00,3,'Y',129,'A+'),(250,5.00,3,'N',130,'A+'),(251,6.00,3,'Y',131,'A+'),(252,6.00,3,'N',132,'A+'),(253,7.00,3,'Y',133,'A+'),(254,7.00,3,'N',134,'A+'),(255,8.00,2,'Y',135,'A+'),(256,8.00,2,'N',136,'A+'),(257,9.00,2,'Y',137,'A+'),(258,9.00,2,'N',138,'A+'),(259,10.00,2,'Y',139,'A+'),(260,10.00,2,'N',140,'A+'),(261,11.00,2,'Y',141,'A+'),(262,11.00,2,'N',142,'A+'),(263,12.00,2,'Y',143,'A+'),(264,12.00,2,'N',144,'A+'),(265,13.00,2,'Y',145,'A+'),(266,13.00,2,'N',146,'A+'),(267,14.00,1,'Y',147,'A+'),(268,14.00,1,'N',148,'A+'),(269,15.00,1,'Y',149,'A+'),(270,15.00,1,'N',150,'A+'),(271,16.00,1,'Y',151,'A+'),(272,16.00,1,'N',152,'A+'),(273,17.00,1,'Y',153,'A+'),(274,17.00,1,'N',154,'A+'),(275,18.00,1,'Y',155,'A+'),(276,18.00,1,'N',156,'A+'),(277,19.00,1,'Y',157,'A+'),(278,19.00,1,'N',158,'A+'),(279,20.00,1,'Y',159,'A+'),(280,20.00,1,'N',160,'A+'),(281,21.00,1,'Y',161,'A+'),(282,21.00,1,'N',162,'A+'),(283,22.00,1,'Y',163,'A+'),(284,22.00,1,'N',164,'A+'),(285,23.00,1,'Y',165,'A+'),(286,23.00,1,'N',166,'A+'),(287,24.00,1,'Y',167,'A+'),(288,24.00,1,'N',168,'A+'),(289,25.00,1,'Y',169,'A+'),(290,25.00,1,'N',170,'A+'),(291,26.00,1,'Y',171,'A+'),(292,26.00,1,'N',172,'A+'),(293,27.00,1,'Y',173,'A+'),(294,27.00,1,'N',174,'A+'),(295,28.00,1,'Y',175,'A+'),(296,28.00,1,'N',176,'A+'),(297,29.00,1,'Y',177,'A+'),(298,29.00,1,'N',178,'A+'),(299,30.00,1,'Y',179,'A+'),(300,30.00,1,'N',180,'A+'),(301,1.00,4,'Y',181,'A-'),(302,1.00,4,'N',182,'A-'),(303,2.00,4,'Y',183,'A-'),(304,2.00,4,'N',184,'A-'),(305,3.00,4,'Y',185,'A-'),(306,3.00,4,'N',186,'A-'),(307,4.00,3,'Y',187,'A-'),(308,4.00,3,'N',188,'A-'),(309,5.00,3,'Y',189,'A-'),(310,5.00,3,'N',190,'A-'),(311,6.00,3,'Y',191,'A-'),(312,6.00,3,'N',192,'A-'),(313,7.00,3,'Y',193,'A-'),(314,7.00,3,'N',194,'A-'),(315,8.00,2,'Y',195,'A-'),(316,8.00,2,'N',196,'A-'),(317,9.00,2,'Y',197,'A-'),(318,9.00,2,'N',198,'A-'),(319,10.00,2,'Y',199,'A-'),(320,10.00,2,'N',200,'A-'),(321,11.00,2,'Y',201,'A-'),(322,11.00,2,'N',202,'A-'),(323,12.00,2,'Y',203,'A-'),(324,12.00,2,'N',204,'A-'),(325,13.00,2,'Y',205,'A-'),(326,13.00,2,'N',206,'A-'),(327,14.00,1,'Y',207,'A-'),(328,14.00,1,'N',208,'A-'),(329,15.00,1,'Y',209,'A-'),(330,15.00,1,'N',210,'A-'),(331,16.00,1,'Y',211,'A-'),(332,16.00,1,'N',212,'A-'),(333,17.00,1,'Y',213,'A-'),(334,17.00,1,'N',214,'A-'),(335,18.00,1,'Y',215,'A-'),(336,18.00,1,'N',216,'A-'),(337,19.00,1,'Y',217,'A-'),(338,19.00,1,'N',218,'A-'),(339,20.00,1,'Y',219,'A-'),(340,20.00,1,'N',220,'A-'),(341,21.00,1,'Y',221,'A-'),(342,21.00,1,'N',222,'A-'),(343,22.00,1,'Y',223,'A-'),(344,22.00,1,'N',224,'A-'),(345,23.00,1,'Y',225,'A-'),(346,23.00,1,'N',226,'A-'),(347,24.00,1,'Y',227,'A-'),(348,24.00,1,'N',228,'A-'),(349,25.00,1,'Y',229,'A-'),(350,25.00,1,'N',230,'A-'),(351,26.00,1,'Y',231,'A-'),(352,26.00,1,'N',232,'A-'),(353,27.00,1,'Y',233,'A-'),(354,27.00,1,'N',234,'A-'),(355,28.00,1,'Y',235,'A-'),(356,28.00,1,'N',236,'A-'),(357,29.00,1,'Y',237,'A-'),(358,29.00,1,'N',238,'A-'),(359,30.00,1,'Y',239,'A-'),(360,30.00,1,'N',240,'A-'),(361,1.00,4,'Y',361,'AB+'),(362,1.00,4,'N',362,'AB+'),(363,2.00,4,'Y',363,'AB+'),(364,2.00,4,'N',364,'AB+'),(365,3.00,4,'Y',365,'AB+'),(366,3.00,4,'N',366,'AB+'),(367,4.00,3,'Y',367,'AB+'),(368,4.00,3,'N',368,'AB+'),(369,5.00,3,'Y',369,'AB+'),(370,5.00,3,'N',370,'AB+'),(371,6.00,3,'Y',371,'AB+'),(372,6.00,3,'N',372,'AB+'),(373,7.00,3,'Y',373,'AB+'),(374,7.00,3,'N',374,'AB+'),(375,8.00,2,'Y',375,'AB+'),(376,8.00,2,'N',376,'AB+'),(377,9.00,2,'Y',377,'AB+'),(378,9.00,2,'N',378,'AB+'),(379,10.00,2,'Y',379,'AB+'),(380,10.00,2,'N',380,'AB+'),(381,11.00,2,'Y',381,'AB+'),(382,11.00,2,'N',382,'AB+'),(383,12.00,2,'Y',383,'AB+'),(384,12.00,2,'N',384,'AB+'),(385,13.00,2,'Y',385,'AB+'),(386,13.00,2,'N',386,'AB+'),(387,14.00,1,'Y',387,'AB+'),(388,14.00,1,'N',388,'AB+'),(389,15.00,1,'Y',389,'AB+'),(390,15.00,1,'N',390,'AB+'),(391,16.00,1,'Y',391,'AB+'),(392,16.00,1,'N',392,'AB+'),(393,17.00,1,'Y',393,'AB+'),(394,17.00,1,'N',394,'AB+'),(395,18.00,1,'Y',395,'AB+'),(396,18.00,1,'N',396,'AB+'),(397,19.00,1,'Y',397,'AB+'),(398,19.00,1,'N',398,'AB+'),(399,20.00,1,'Y',399,'AB+'),(400,20.00,1,'N',400,'AB+'),(401,21.00,1,'Y',401,'AB+'),(402,21.00,1,'N',402,'AB+'),(403,22.00,1,'Y',403,'AB+'),(404,22.00,1,'N',404,'AB+'),(405,23.00,1,'Y',405,'AB+'),(406,23.00,1,'N',406,'AB+'),(407,24.00,1,'Y',407,'AB+'),(408,24.00,1,'N',408,'AB+'),(409,25.00,1,'Y',409,'AB+'),(410,25.00,1,'N',410,'AB+'),(411,26.00,1,'Y',411,'AB+'),(412,26.00,1,'N',412,'AB+'),(413,27.00,1,'Y',413,'AB+'),(414,27.00,1,'N',414,'AB+'),(415,28.00,1,'Y',415,'AB+'),(416,28.00,1,'N',416,'AB+'),(417,29.00,1,'Y',417,'AB+'),(418,29.00,1,'N',418,'AB+'),(419,30.00,1,'Y',419,'AB+'),(420,30.00,1,'N',420,'AB+'),(421,1.00,4,'Y',421,'AB-'),(422,1.00,4,'N',422,'AB-'),(423,2.00,4,'Y',423,'AB-'),(424,2.00,4,'N',424,'AB-'),(425,3.00,4,'Y',425,'AB-'),(426,3.00,4,'N',426,'AB-'),(427,4.00,3,'Y',427,'AB-'),(428,4.00,3,'N',428,'AB-'),(429,5.00,3,'Y',429,'AB-'),(430,5.00,3,'N',430,'AB-'),(431,6.00,3,'Y',431,'AB-'),(432,6.00,3,'N',432,'AB-'),(433,7.00,3,'Y',433,'AB-'),(434,7.00,3,'N',434,'AB-'),(435,8.00,2,'Y',435,'AB-'),(436,8.00,2,'N',436,'AB-'),(437,9.00,2,'Y',437,'AB-'),(438,9.00,2,'N',438,'AB-'),(439,10.00,2,'Y',439,'AB-'),(440,10.00,2,'N',440,'AB-'),(441,11.00,2,'Y',441,'AB-'),(442,11.00,2,'N',442,'AB-'),(443,12.00,2,'Y',443,'AB-'),(444,12.00,2,'N',444,'AB-'),(445,13.00,2,'Y',445,'AB-'),(446,13.00,2,'N',446,'AB-'),(447,14.00,1,'Y',447,'AB-'),(448,14.00,1,'N',448,'AB-'),(449,15.00,1,'Y',449,'AB-'),(450,15.00,1,'N',450,'AB-'),(451,16.00,1,'Y',451,'AB-'),(452,16.00,1,'N',452,'AB-'),(453,17.00,1,'Y',453,'AB-'),(454,17.00,1,'N',454,'AB-'),(455,18.00,1,'Y',455,'AB-'),(456,18.00,1,'N',456,'AB-'),(457,19.00,1,'Y',457,'AB-'),(458,19.00,1,'N',458,'AB-'),(459,20.00,1,'Y',459,'AB-'),(460,20.00,1,'N',460,'AB-'),(461,21.00,1,'Y',461,'AB-'),(462,21.00,1,'N',462,'AB-'),(463,22.00,1,'Y',463,'AB-'),(464,22.00,1,'N',464,'AB-'),(465,23.00,1,'Y',465,'AB-'),(466,23.00,1,'N',466,'AB-'),(467,24.00,1,'Y',467,'AB-'),(468,24.00,1,'N',468,'AB-'),(469,25.00,1,'Y',469,'AB-'),(470,25.00,1,'N',470,'AB-'),(471,26.00,1,'Y',471,'AB-'),(472,26.00,1,'N',472,'AB-'),(473,27.00,1,'Y',473,'AB-'),(474,27.00,1,'N',474,'AB-'),(475,28.00,1,'Y',475,'AB-'),(476,28.00,1,'N',476,'AB-'),(477,29.00,1,'Y',477,'AB-'),(478,29.00,1,'N',478,'AB-'),(479,30.00,1,'Y',479,'AB-'),(480,30.00,1,'N',480,'AB-'),(481,1.00,4,'Y',241,'B-'),(482,1.00,4,'N',242,'B-'),(483,2.00,4,'Y',243,'B-'),(484,2.00,4,'N',244,'B-'),(485,3.00,4,'Y',245,'B-'),(486,3.00,4,'N',246,'B-'),(487,4.00,3,'Y',247,'B-'),(488,4.00,3,'N',248,'B-'),(489,5.00,3,'Y',249,'B-'),(490,5.00,3,'N',250,'B-'),(491,6.00,3,'Y',251,'B-'),(492,6.00,3,'N',252,'B-'),(493,7.00,3,'Y',253,'B-'),(494,7.00,3,'N',254,'B-'),(495,8.00,2,'Y',255,'B-'),(496,8.00,2,'N',256,'B-'),(497,9.00,2,'Y',257,'B-'),(498,9.00,2,'N',258,'B-'),(499,10.00,2,'Y',259,'B-'),(500,10.00,2,'N',260,'B-'),(501,11.00,2,'Y',261,'B-'),(502,11.00,2,'N',262,'B-'),(503,12.00,2,'Y',263,'B-'),(504,12.00,2,'N',264,'B-'),(505,13.00,2,'Y',265,'B-'),(506,13.00,2,'N',266,'B-'),(507,14.00,1,'Y',267,'B-'),(508,14.00,1,'N',268,'B-'),(509,15.00,1,'Y',269,'B-'),(510,15.00,1,'N',270,'B-'),(511,16.00,1,'Y',271,'B-'),(512,16.00,1,'N',272,'B-'),(513,17.00,1,'Y',273,'B-'),(514,17.00,1,'N',274,'B-'),(515,18.00,1,'Y',275,'B-'),(516,18.00,1,'N',276,'B-'),(517,19.00,1,'Y',277,'B-'),(518,19.00,1,'N',278,'B-'),(519,20.00,1,'Y',279,'B-'),(520,20.00,1,'N',280,'B-'),(521,21.00,1,'Y',281,'B-'),(522,21.00,1,'N',282,'B-'),(523,22.00,1,'Y',283,'B-'),(524,22.00,1,'N',284,'B-'),(525,23.00,1,'Y',285,'B-'),(526,23.00,1,'N',286,'B-'),(527,24.00,1,'Y',287,'B-'),(528,24.00,1,'N',288,'B-'),(529,25.00,1,'Y',289,'B-'),(530,25.00,1,'N',290,'B-'),(531,26.00,1,'Y',291,'B-'),(532,26.00,1,'N',292,'B-'),(533,27.00,1,'Y',293,'B-'),(534,27.00,1,'N',294,'B-'),(535,28.00,1,'Y',295,'B-'),(536,28.00,1,'N',296,'B-'),(537,29.00,1,'Y',297,'B-'),(538,29.00,1,'N',298,'B-'),(539,30.00,1,'Y',299,'B-'),(540,30.00,1,'N',300,'B-'),(541,1.00,4,'Y',301,'B+'),(542,1.00,4,'N',302,'B+'),(543,2.00,4,'Y',303,'B+'),(544,2.00,4,'N',304,'B+'),(545,3.00,4,'Y',305,'B+'),(546,3.00,4,'N',306,'B+'),(547,4.00,3,'Y',307,'B+'),(548,4.00,3,'N',308,'B+'),(549,5.00,3,'Y',309,'B+'),(550,5.00,3,'N',310,'B+'),(551,6.00,3,'Y',311,'B+'),(552,6.00,3,'N',312,'B+'),(553,7.00,3,'Y',313,'B+'),(554,7.00,3,'N',314,'B+'),(555,8.00,2,'Y',315,'B+'),(556,8.00,2,'N',316,'B+'),(557,9.00,2,'Y',317,'B+'),(558,9.00,2,'N',318,'B+'),(559,10.00,2,'Y',319,'B+'),(560,10.00,2,'N',320,'B+'),(561,11.00,2,'Y',321,'B+'),(562,11.00,2,'N',322,'B+'),(563,12.00,2,'Y',323,'B+'),(564,12.00,2,'N',324,'B+'),(565,13.00,2,'Y',325,'B+'),(566,13.00,2,'N',326,'B+'),(567,14.00,1,'Y',327,'B+'),(568,14.00,1,'N',328,'B+'),(569,15.00,1,'Y',329,'B+'),(570,15.00,1,'N',330,'B+'),(571,16.00,1,'Y',331,'B+'),(572,16.00,1,'N',332,'B+'),(573,17.00,1,'Y',333,'B+'),(574,17.00,1,'N',334,'B+'),(575,18.00,1,'Y',335,'B+'),(576,18.00,1,'N',336,'B+'),(577,19.00,1,'Y',337,'B+'),(578,19.00,1,'N',338,'B+'),(579,20.00,1,'Y',339,'B+'),(580,20.00,1,'N',340,'B+'),(581,21.00,1,'Y',341,'B+'),(582,21.00,1,'N',342,'B+'),(583,22.00,1,'Y',343,'B+'),(584,22.00,1,'N',344,'B+'),(585,23.00,1,'Y',345,'B+'),(586,23.00,1,'N',346,'B+'),(587,24.00,1,'Y',347,'B+'),(588,24.00,1,'N',348,'B+'),(589,25.00,1,'Y',349,'B+'),(590,25.00,1,'N',350,'B+'),(591,26.00,1,'Y',351,'B+'),(592,26.00,1,'N',352,'B+'),(593,27.00,1,'Y',353,'B+'),(594,27.00,1,'N',354,'B+'),(595,28.00,1,'Y',355,'B+'),(596,28.00,1,'N',356,'B+'),(597,29.00,1,'Y',357,'B+'),(598,29.00,1,'N',358,'B+'),(599,30.00,1,'Y',359,'B+'),(600,30.00,1,'N',360,'B+');
/*!40000 ALTER TABLE `standardsignal_standardhashcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmitter`
--

DROP TABLE IF EXISTS `transmitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transmitter` (
  `transmitterId` int(11) NOT NULL AUTO_INCREMENT,
  `d1` bit(1) NOT NULL,
  `d2` bit(1) NOT NULL,
  `d3` bit(1) NOT NULL,
  `d4` bit(1) NOT NULL,
  `d5` bit(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activator_id` int(11) NOT NULL,
  PRIMARY KEY (`transmitterId`),
  KEY `fk_activator_id_idx` (`activator_id`),
  CONSTRAINT `fk_activator_id` FOREIGN KEY (`activator_id`) REFERENCES `activator` (`activatorId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmitter`
--

LOCK TABLES `transmitter` WRITE;
/*!40000 ALTER TABLE `transmitter` DISABLE KEYS */;
INSERT INTO `transmitter` VALUES (341,'\0','','\0','\0','\0','2016-04-15 21:42:31',855),(342,'\0','','\0','\0','','2016-04-15 21:42:31',856),(343,'\0','','\0','\0','','2016-04-15 21:42:31',857),(344,'\0','','\0','\0','','2016-04-15 21:42:31',858),(345,'\0','','\0','\0','','2016-04-15 21:42:31',859),(346,'\0','','\0','\0','','2016-04-15 21:42:31',860),(347,'\0','','\0','\0','','2016-04-15 21:42:31',861),(348,'\0','','\0','\0','','2016-04-15 21:42:31',862),(349,'\0','','\0','\0','','2016-04-15 21:42:31',863),(350,'\0','','\0','\0','','2016-04-15 21:42:31',864),(351,'\0','','\0','','\0','2016-04-15 21:42:31',865),(352,'\0','','\0','','\0','2016-04-15 21:42:31',866),(353,'\0','','\0','','\0','2016-04-15 21:42:31',867),(354,'\0','','\0','','\0','2016-04-15 21:42:31',868);
/*!40000 ALTER TABLE `transmitter` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paralyzed_can_do`.`transmitter_AFTER_INSERT` AFTER INSERT ON `transmitter` FOR EACH ROW
BEGIN

call pr_insert_into_receiver();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transmitter_backup`
--

DROP TABLE IF EXISTS `transmitter_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transmitter_backup` (
  `transmitterId` int(11) NOT NULL DEFAULT '0',
  `d1` bit(1) NOT NULL,
  `d2` bit(1) NOT NULL,
  `d3` bit(1) NOT NULL,
  `d4` bit(1) NOT NULL,
  `d5` bit(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmitter_backup`
--

LOCK TABLES `transmitter_backup` WRITE;
/*!40000 ALTER TABLE `transmitter_backup` DISABLE KEYS */;
INSERT INTO `transmitter_backup` VALUES (170,'\0','','\0','\0','\0','2016-04-15 04:39:23',534),(171,'\0','','\0','\0','','2016-04-15 04:39:23',535),(172,'\0','','\0','\0','','2016-04-15 04:39:23',536),(173,'\0','','\0','\0','','2016-04-15 04:39:23',537),(174,'\0','','\0','\0','','2016-04-15 04:39:23',538),(175,'\0','','\0','\0','','2016-04-15 04:39:23',539),(176,'\0','','\0','\0','','2016-04-15 04:39:23',540),(177,'\0','','\0','\0','','2016-04-15 04:39:23',541),(178,'\0','','\0','\0','','2016-04-15 04:39:23',542),(179,'\0','','\0','\0','','2016-04-15 04:39:23',543),(180,'\0','','\0','','\0','2016-04-15 04:39:23',544),(181,'\0','','\0','','\0','2016-04-15 04:39:23',545),(182,'\0','','\0','','\0','2016-04-15 04:39:23',546),(183,'\0','','\0','','\0','2016-04-15 04:39:23',547),(170,'\0','','\0','\0','\0','2016-04-15 04:39:23',534),(171,'\0','','\0','\0','','2016-04-15 04:39:23',535),(172,'\0','','\0','\0','','2016-04-15 04:39:23',536),(173,'\0','','\0','\0','','2016-04-15 04:39:23',537),(174,'\0','','\0','\0','','2016-04-15 04:39:23',538),(175,'\0','','\0','\0','','2016-04-15 04:39:23',539),(176,'\0','','\0','\0','','2016-04-15 04:39:23',540),(177,'\0','','\0','\0','','2016-04-15 04:39:23',541),(178,'\0','','\0','\0','','2016-04-15 04:39:23',542),(179,'\0','','\0','\0','','2016-04-15 04:39:23',543),(180,'\0','','\0','','\0','2016-04-15 04:39:23',544),(181,'\0','','\0','','\0','2016-04-15 04:39:23',545),(182,'\0','','\0','','\0','2016-04-15 04:39:23',546),(183,'\0','','\0','','\0','2016-04-15 04:39:23',547),(170,'\0','','\0','\0','\0','2016-04-15 04:39:23',534),(171,'\0','','\0','\0','','2016-04-15 04:39:23',535),(172,'\0','','\0','\0','','2016-04-15 04:39:23',536),(173,'\0','','\0','\0','','2016-04-15 04:39:23',537),(174,'\0','','\0','\0','','2016-04-15 04:39:23',538),(175,'\0','','\0','\0','','2016-04-15 04:39:23',539),(176,'\0','','\0','\0','','2016-04-15 04:39:23',540),(177,'\0','','\0','\0','','2016-04-15 04:39:23',541),(178,'\0','','\0','\0','','2016-04-15 04:39:23',542),(179,'\0','','\0','\0','','2016-04-15 04:39:23',543),(180,'\0','','\0','','\0','2016-04-15 04:39:23',544),(181,'\0','','\0','','\0','2016-04-15 04:39:23',545),(182,'\0','','\0','','\0','2016-04-15 04:39:23',546),(183,'\0','','\0','','\0','2016-04-15 04:39:23',547),(198,'\0','\0','\0','','\0','2016-04-15 04:46:47',582),(199,'\0','\0','\0','','\0','2016-04-15 04:46:47',583),(200,'\0','\0','\0','','\0','2016-04-15 04:46:47',584),(201,'\0','\0','\0','','\0','2016-04-15 04:46:47',585),(202,'\0','\0','\0','','\0','2016-04-15 04:46:47',586),(203,'\0','\0','\0','','\0','2016-04-15 04:46:47',587),(204,'\0','\0','\0','','\0','2016-04-15 04:46:47',588),(205,'\0','\0','\0','','\0','2016-04-15 04:46:47',589),(206,'\0','\0','\0','','\0','2016-04-15 04:46:47',590),(207,'\0','\0','\0','','\0','2016-04-15 04:46:47',591),(208,'\0','\0','\0','','\0','2016-04-15 04:46:47',592),(209,'\0','\0','\0','','\0','2016-04-15 04:46:47',593),(210,'\0','\0','\0','','\0','2016-04-15 04:46:47',594),(211,'\0','\0','\0','','\0','2016-04-15 04:46:47',595),(254,'\0','','\0','\0','\0','2016-04-15 19:55:19',678),(255,'\0','','\0','\0','','2016-04-15 19:55:19',679),(256,'\0','','\0','\0','','2016-04-15 19:55:19',680),(257,'\0','','\0','\0','','2016-04-15 19:55:19',681),(258,'\0','','\0','\0','','2016-04-15 19:55:19',682),(259,'\0','','\0','\0','','2016-04-15 19:55:19',683),(260,'\0','','\0','\0','','2016-04-15 19:55:19',684),(261,'\0','','\0','\0','','2016-04-15 19:55:19',685),(262,'\0','','\0','\0','','2016-04-15 19:55:19',686),(263,'\0','','\0','\0','','2016-04-15 19:55:19',687),(264,'\0','','\0','','\0','2016-04-15 19:55:19',688),(265,'\0','','\0','','\0','2016-04-15 19:55:19',689),(266,'\0','','\0','','\0','2016-04-15 19:55:19',690),(267,'\0','','\0','','\0','2016-04-15 19:55:19',691),(270,'\0','','\0','\0','\0','2016-04-15 20:04:54',724),(271,'\0','','\0','\0','','2016-04-15 20:04:54',725),(272,'\0','','\0','\0','','2016-04-15 20:04:54',726),(273,'\0','','\0','\0','','2016-04-15 20:04:54',727),(274,'\0','','\0','\0','','2016-04-15 20:04:54',728),(275,'\0','','\0','\0','','2016-04-15 20:04:54',729),(276,'\0','','\0','\0','','2016-04-15 20:04:54',730),(277,'\0','','\0','\0','','2016-04-15 20:04:54',731),(278,'\0','','\0','\0','','2016-04-15 20:04:54',732),(279,'\0','','\0','\0','','2016-04-15 20:04:54',733),(280,'\0','','\0','','\0','2016-04-15 20:04:54',734),(281,'\0','','\0','','\0','2016-04-15 20:04:55',735),(282,'\0','','\0','','\0','2016-04-15 20:04:55',736),(283,'\0','','\0','','\0','2016-04-15 20:04:55',737),(285,'\0','','\0','\0','\0','2016-04-15 20:10:00',759),(286,'\0','','\0','\0','','2016-04-15 20:10:00',760),(287,'\0','','\0','\0','','2016-04-15 20:10:00',761),(288,'\0','','\0','\0','','2016-04-15 20:10:00',762),(289,'\0','','\0','\0','','2016-04-15 20:10:00',763),(290,'\0','','\0','\0','','2016-04-15 20:10:00',764),(291,'\0','','\0','\0','','2016-04-15 20:10:00',765),(292,'\0','','\0','\0','','2016-04-15 20:10:00',766),(293,'\0','','\0','\0','','2016-04-15 20:10:00',767),(294,'\0','','\0','\0','','2016-04-15 20:10:00',768),(295,'\0','','\0','','\0','2016-04-15 20:10:00',769),(296,'\0','','\0','','\0','2016-04-15 20:10:00',770),(297,'\0','','\0','','\0','2016-04-15 20:10:00',771),(298,'\0','','\0','','\0','2016-04-15 20:10:00',772),(313,'\0','','\0','\0','\0','2016-04-15 20:12:09',807),(314,'\0','','\0','\0','','2016-04-15 20:12:09',808),(315,'\0','','\0','\0','','2016-04-15 20:12:09',809),(316,'\0','','\0','\0','','2016-04-15 20:12:09',810),(317,'\0','','\0','\0','','2016-04-15 20:12:09',811),(318,'\0','','\0','\0','','2016-04-15 20:12:09',812),(319,'\0','','\0','\0','','2016-04-15 20:12:09',813),(320,'\0','','\0','\0','','2016-04-15 20:12:09',814),(321,'\0','','\0','\0','','2016-04-15 20:12:09',815),(322,'\0','','\0','\0','','2016-04-15 20:12:09',816),(323,'\0','','\0','','\0','2016-04-15 20:12:09',817),(324,'\0','','\0','','\0','2016-04-15 20:12:09',818),(325,'\0','','\0','','\0','2016-04-15 20:12:09',819),(326,'\0','','\0','','\0','2016-04-15 20:12:09',820);
/*!40000 ALTER TABLE `transmitter_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_activator_transmitter`
--

DROP TABLE IF EXISTS `view_activator_transmitter`;
/*!50001 DROP VIEW IF EXISTS `view_activator_transmitter`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_activator_transmitter` AS SELECT 
 1 AS `activatorId`,
 1 AS `volume`,
 1 AS `frequency`,
 1 AS `d1`,
 1 AS `d2`,
 1 AS `d3`,
 1 AS `d4`,
 1 AS `d5`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_encoder_stdhashcode`
--

DROP TABLE IF EXISTS `view_encoder_stdhashcode`;
/*!50001 DROP VIEW IF EXISTS `view_encoder_stdhashcode`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_encoder_stdhashcode` AS SELECT 
 1 AS `encFrequency`,
 1 AS `present_stage`,
 1 AS `hashcode`,
 1 AS `hc1`,
 1 AS `hc2`,
 1 AS `hc3`,
 1 AS `hc4`,
 1 AS `hc5`,
 1 AS `hc6`,
 1 AS `hc7`,
 1 AS `hc8`,
 1 AS `hc9`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_interpreter_decoder_controller`
--

DROP TABLE IF EXISTS `view_interpreter_decoder_controller`;
/*!50001 DROP VIEW IF EXISTS `view_interpreter_decoder_controller`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_interpreter_decoder_controller` AS SELECT 
 1 AS `interpreter_timestamp`,
 1 AS `interpreter_action`,
 1 AS `impulseHashcode`,
 1 AS `decoder_frequency`,
 1 AS `controller_action`,
 1 AS `controller_frequency`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vitalsign`
--

DROP TABLE IF EXISTS `vitalsign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitalsign` (
  `vitalSignId` int(11) NOT NULL AUTO_INCREMENT,
  `systolic_bpRate` int(11) NOT NULL,
  `diastolic_bpRate` int(11) NOT NULL,
  `heartRate` int(11) NOT NULL,
  `respiratoryRate` int(11) NOT NULL,
  `status` varchar(2) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vitalSignId`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitalsign`
--

LOCK TABLES `vitalsign` WRITE;
/*!40000 ALTER TABLE `vitalsign` DISABLE KEYS */;
INSERT INTO `vitalsign` VALUES (463,91,60,116,27,'N','2016-04-15 21:42:31'),(464,115,53,92,29,'AB','2016-04-15 21:42:31'),(465,97,67,95,28,'N','2016-04-15 21:42:31'),(466,116,77,130,23,'AB','2016-04-15 21:42:31'),(467,98,61,91,30,'N','2016-04-15 21:42:31'),(468,116,61,99,28,'AB','2016-04-15 21:42:31'),(469,110,74,92,28,'N','2016-04-15 21:42:31'),(470,117,50,109,28,'AB','2016-04-15 21:42:31'),(471,93,50,127,26,'N','2016-04-15 21:42:31'),(472,120,52,104,22,'AB','2016-04-15 21:42:31'),(473,96,62,106,25,'N','2016-04-15 21:42:31'),(474,102,68,129,21,'N','2016-04-15 21:42:31'),(475,97,73,95,23,'N','2016-04-15 21:42:31'),(476,92,65,105,20,'N','2016-04-15 21:42:31');
/*!40000 ALTER TABLE `vitalsign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitalsign_backup`
--

DROP TABLE IF EXISTS `vitalsign_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitalsign_backup` (
  `vitalSignId` int(11) NOT NULL DEFAULT '0',
  `systolic_bpRate` int(11) NOT NULL,
  `diastolic_bpRate` int(11) NOT NULL,
  `heartRate` int(11) NOT NULL,
  `respiratoryRate` int(11) NOT NULL,
  `status` varchar(2) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitalsign_backup`
--

LOCK TABLES `vitalsign_backup` WRITE;
/*!40000 ALTER TABLE `vitalsign_backup` DISABLE KEYS */;
INSERT INTO `vitalsign_backup` VALUES (295,91,50,139,29,'AB','2016-04-15 04:39:23'),(296,100,54,126,21,'N','2016-04-15 04:39:23'),(297,105,53,137,25,'AB','2016-04-15 04:39:23'),(298,106,58,125,27,'N','2016-04-15 04:39:23'),(299,101,71,116,24,'N','2016-04-15 04:39:23'),(300,107,69,111,22,'N','2016-04-15 04:39:23'),(301,115,64,136,22,'AB','2016-04-15 04:39:23'),(302,91,70,103,23,'N','2016-04-15 04:39:23'),(303,106,78,95,27,'N','2016-04-15 04:39:23'),(304,90,51,96,26,'N','2016-04-15 04:39:23'),(305,102,58,98,20,'N','2016-04-15 04:39:23'),(306,111,62,135,23,'AB','2016-04-15 04:39:23'),(307,108,58,114,26,'N','2016-04-15 04:39:23'),(308,105,73,108,25,'N','2016-04-15 04:39:23'),(295,91,50,139,29,'AB','2016-04-15 04:39:23'),(296,100,54,126,21,'N','2016-04-15 04:39:23'),(297,105,53,137,25,'AB','2016-04-15 04:39:23'),(298,106,58,125,27,'N','2016-04-15 04:39:23'),(299,101,71,116,24,'N','2016-04-15 04:39:23'),(300,107,69,111,22,'N','2016-04-15 04:39:23'),(301,115,64,136,22,'AB','2016-04-15 04:39:23'),(302,91,70,103,23,'N','2016-04-15 04:39:23'),(303,106,78,95,27,'N','2016-04-15 04:39:23'),(304,90,51,96,26,'N','2016-04-15 04:39:23'),(305,102,58,98,20,'N','2016-04-15 04:39:23'),(306,111,62,135,23,'AB','2016-04-15 04:39:23'),(307,108,58,114,26,'N','2016-04-15 04:39:23'),(308,105,73,108,25,'N','2016-04-15 04:39:23'),(295,91,50,139,29,'AB','2016-04-15 04:39:23'),(296,100,54,126,21,'N','2016-04-15 04:39:23'),(297,105,53,137,25,'AB','2016-04-15 04:39:23'),(298,106,58,125,27,'N','2016-04-15 04:39:23'),(299,101,71,116,24,'N','2016-04-15 04:39:23'),(300,107,69,111,22,'N','2016-04-15 04:39:23'),(301,115,64,136,22,'AB','2016-04-15 04:39:23'),(302,91,70,103,23,'N','2016-04-15 04:39:23'),(303,106,78,95,27,'N','2016-04-15 04:39:23'),(304,90,51,96,26,'N','2016-04-15 04:39:23'),(305,102,58,98,20,'N','2016-04-15 04:39:23'),(306,111,62,135,23,'AB','2016-04-15 04:39:23'),(307,108,58,114,26,'N','2016-04-15 04:39:23'),(308,105,73,108,25,'N','2016-04-15 04:39:23'),(323,120,62,90,28,'AB','2016-04-15 04:46:47'),(324,96,63,118,25,'N','2016-04-15 04:46:47'),(325,116,75,116,21,'AB','2016-04-15 04:46:47'),(326,117,55,103,27,'AB','2016-04-15 04:46:47'),(327,113,73,116,22,'AB','2016-04-15 04:46:47'),(328,111,73,125,22,'AB','2016-04-15 04:46:47'),(329,92,71,100,30,'N','2016-04-15 04:46:47'),(330,94,76,134,28,'AB','2016-04-15 04:46:47'),(331,101,61,129,28,'N','2016-04-15 04:46:47'),(332,111,52,103,21,'AB','2016-04-15 04:46:47'),(333,109,77,120,23,'N','2016-04-15 04:46:47'),(334,111,67,127,21,'AB','2016-04-15 04:46:47'),(335,90,78,118,20,'N','2016-04-15 04:46:47'),(336,100,72,123,21,'N','2016-04-15 04:46:47'),(379,93,58,137,29,'AB','2016-04-15 19:55:19'),(380,116,64,128,24,'AB','2016-04-15 19:55:19'),(381,108,75,114,28,'N','2016-04-15 19:55:19'),(382,110,75,103,28,'N','2016-04-15 19:55:19'),(383,91,76,102,26,'N','2016-04-15 19:55:19'),(384,95,53,137,25,'AB','2016-04-15 19:55:19'),(385,103,75,136,20,'AB','2016-04-15 19:55:19'),(386,101,72,121,29,'N','2016-04-15 19:55:19'),(387,103,67,121,23,'N','2016-04-15 19:55:19'),(388,113,78,106,28,'AB','2016-04-15 19:55:19'),(389,92,76,100,24,'N','2016-04-15 19:55:19'),(390,102,74,132,28,'AB','2016-04-15 19:55:19'),(391,102,70,95,25,'N','2016-04-15 19:55:19'),(392,99,78,131,22,'AB','2016-04-15 19:55:19'),(393,111,74,134,30,'AB','2016-04-15 20:04:54'),(394,99,68,96,28,'N','2016-04-15 20:04:54'),(395,107,65,129,24,'N','2016-04-15 20:04:54'),(396,114,72,99,28,'AB','2016-04-15 20:04:54'),(397,101,62,90,28,'N','2016-04-15 20:04:54'),(398,117,56,103,27,'AB','2016-04-15 20:04:54'),(399,117,59,128,29,'AB','2016-04-15 20:04:54'),(400,97,64,125,20,'N','2016-04-15 20:04:54'),(401,120,77,120,22,'AB','2016-04-15 20:04:54'),(402,99,78,123,25,'N','2016-04-15 20:04:54'),(403,112,79,127,27,'AB','2016-04-15 20:04:54'),(404,103,78,112,24,'N','2016-04-15 20:04:55'),(405,112,62,130,28,'AB','2016-04-15 20:04:55'),(406,113,59,104,25,'AB','2016-04-15 20:04:55'),(407,103,72,114,21,'N','2016-04-15 20:10:00'),(408,97,72,90,28,'N','2016-04-15 20:10:00'),(409,119,66,122,27,'AB','2016-04-15 20:10:00'),(410,102,50,130,20,'N','2016-04-15 20:10:00'),(411,113,70,94,24,'AB','2016-04-15 20:10:00'),(412,112,64,98,24,'AB','2016-04-15 20:10:00'),(413,105,57,127,20,'N','2016-04-15 20:10:00'),(414,115,52,131,29,'AB','2016-04-15 20:10:00'),(415,94,77,95,28,'N','2016-04-15 20:10:00'),(416,112,59,102,24,'AB','2016-04-15 20:10:00'),(417,91,53,109,26,'N','2016-04-15 20:10:00'),(418,117,71,128,27,'AB','2016-04-15 20:10:00'),(419,102,72,116,23,'N','2016-04-15 20:10:00'),(420,96,78,97,29,'N','2016-04-15 20:10:00'),(435,117,57,114,27,'AB','2016-04-15 20:12:09'),(436,93,61,119,28,'N','2016-04-15 20:12:09'),(437,92,51,92,20,'N','2016-04-15 20:12:09'),(438,120,77,115,28,'AB','2016-04-15 20:12:09'),(439,112,52,97,25,'AB','2016-04-15 20:12:09'),(440,95,57,126,29,'N','2016-04-15 20:12:09'),(441,96,63,114,21,'N','2016-04-15 20:12:09'),(442,96,70,122,23,'N','2016-04-15 20:12:09'),(443,103,61,113,22,'N','2016-04-15 20:12:09'),(444,110,72,123,21,'N','2016-04-15 20:12:09'),(445,111,51,95,24,'AB','2016-04-15 20:12:09'),(446,109,80,95,25,'N','2016-04-15 20:12:09'),(447,98,72,137,25,'AB','2016-04-15 20:12:09'),(448,106,56,111,25,'N','2016-04-15 20:12:09');
/*!40000 ALTER TABLE `vitalsign_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'paralyzed_can_do'
--

--
-- Dumping routines for database 'paralyzed_can_do'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_decimal_to_binary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_decimal_to_binary`(IncomingNumber integer) RETURNS varchar(20) CHARSET utf8
BEGIN

DECLARE BinNumber	VARCHAR(200);
SET BinNumber = conv(IncomingNumber,10, 2) ;


RETURN BinNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_eval_Status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_eval_Status`( sys_bp int,dy_bp int ,hr int,resp int) RETURNS varchar(2) CHARSET utf8
BEGIN

DECLARE stat varchar(2) DEFAULT 'N';

if sys_bp <80 || sys_bp>110
then set stat ="AB";
end if; 

if dy_bp <50 || dy_bp>80
then set stat ="AB";
end if; 

if hr <80 || hr>130
then set stat ="AB";
end if; 

if resp <20 || resp>30
then set stat ="AB";
end if; 



RETURN stat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_calculate_average` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_calculate_average`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE v_val int;
  DECLARE v_avgFrequency int;
  DECLARE v_decimalVal int;
  DECLARE b1,b2,b3,b4,b5 int;
  DECLARE v_stage int(11);
  DECLARE v_hashCode int;
  DECLARE v_encFrequency int;
  DECLARE v_bloodType varchar(3);
  DECLARE v_id int;
  
  DECLARE cur_avgCur CURSOR FOR 
  SELECT  d1,d2,d3,d4,d5, receiverId FROM paralyzed_can_do.receiver 
  where receiverId NOT IN (SELECT receiver_id from encoder);
  
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur_avgCur;

	set v_avgFrequency=0;
    set v_val=0;
    
  read_loop: LOOP
    FETCH cur_avgCur INTO b1,b2,b3,b4,b5,v_id;
	
     IF done THEN
      LEAVE read_loop;
    ELSE
	
	set v_decimalVal = CONV(BINARY(CONCAT(b1, b2,b3,b4,b5)), 2, 10);
	set v_avgFrequency = v_avgFrequency+v_decimalVal;
    set v_val=v_val+1;
    
    END IF;
   -- select v_decimalVal;

  END LOOP;
  
 
 
  
  CLOSE cur_avgCur;
  
   
	set v_encFrequency = truncate (v_avgFrequency/v_val,0);
	-- select v_encFrequency;

	select  currentStage into v_stage from paralyzed_can_do.device;	
  
	select   personBloodType into v_bloodType  from paralyzed_can_do.device;

	select hashCode into v_hashCode from paralyzed_can_do.standardsignal_standardhashcode 
    where ssFrequency = v_encFrequency
    and ssStage = v_stage
    and bloodType = v_bloodType 
    and urge ="Y";
    
    
    call pr_insert_into_encoder(v_encFrequency,v_stage,v_hashCode,v_id);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_fetch_vital_sign` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_fetch_vital_sign`()
BEGIN

select * from paralyzed_can_do.vitalsign where status="AB" AND 
vitalSignId NOT IN (SELECT vitalSign_id from interpreter);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_flush` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_flush`()
BEGIN

insert into chip_bkup select * from chip;
insert into device_backup select * from device;
insert into transmitter_backup select * from transmitter;
insert into activator_backup select *  from activator;

insert into receiver_backup select * from receiver;
insert into encoder_backup select * from encoder;
insert into vitalsign_backup select * from vitalsign;
insert into interpreter_backup select * from interpreter;

insert into decoder_backup select * from decoder;
insert into controller_backup select * from controller;

delete from device;
delete from chip;
delete from transmitter;
delete from activator;
delete from receiver;
delete from encoder;
delete from vitalsign;
delete from interpreter;
delete from decoder;
delete from controller;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_activator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_activator`()
BEGIN

-- awake and resting

insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(250,8.13,"N","2016-04-01 03:14:12");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(258,8.23,"N","2016-04-01 03:14:14");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(264,8.29,"N","2016-04-01 03:14:16");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(267,8.35,"N","2016-04-01 03:14:18");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(270,8.40,"N","2016-04-01 03:14:20");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(273,8.44,"N","2016-04-01 03:14:22");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(277,8.66,"N","2016-04-01 03:14:24");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(283,8.34,"N","2016-04-01 03:14:26");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(288,8.38,"N","2016-04-01 03:14:28");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(295,8.44,"N","2016-04-01 03:14:30");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(301,8.41,"Y","2016-04-01 03:14:32");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(307,8.56,"Y","2016-04-01 03:14:34");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(314,8.67,"Y","2016-04-01 03:14:36");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(319,8.88,"Y","2016-04-01 03:14:38");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(324,8.89,"Y","2016-04-01 03:14:40");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(327,8.62,"Y","2016-04-01 03:14:42");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(333,8.78,"Y","2016-04-01 03:14:44");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(338,8.92,"Y","2016-04-01 03:14:46");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(344,9.34,"Y","2016-04-01 03:14:48");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(350,9.45,"Y","2016-04-01 03:14:50");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(353,9.66,"Y","2016-04-01 03:14:52");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(359,9.56,"Y","2016-04-01 03:14:54");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(363,9.77,"Y","2016-04-01 03:14:56");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(369,9.89,"Y","2016-04-01 03:14:58");



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_activator_deep_sleep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_activator_deep_sleep`()
BEGIN

insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(250,1.23,"N","2016-04-01 03:14:12");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(258,1.45,"N","2016-04-01 03:14:14");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(264,1.49,"N","2016-04-01 03:14:16");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(267,1.44,"N","2016-04-01 03:14:18");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(270,1.47,"N","2016-04-01 03:14:20");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(273,1.67,"N","2016-04-01 03:14:22");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(277,1.76,"N","2016-04-01 03:14:24");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(283,1.88,"N","2016-04-01 03:14:26");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(288,1.99,"N","2016-04-01 03:14:28");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(295,2.04,"N","2016-04-01 03:14:30");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(301,2.15,"Y","2016-04-01 03:14:32");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(307,2.23,"Y","2016-04-01 03:14:34");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(314,2.11,"Y","2016-04-01 03:14:36");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(319,2.09,"Y","2016-04-01 03:14:38");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(324,2.09,"Y","2016-04-01 03:14:40");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(327,2.09,"Y","2016-04-01 03:14:42");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(333,2.09,"Y","2016-04-01 03:14:44");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(338,2.09,"Y","2016-04-01 03:14:46");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(344,2.09,"Y","2016-04-01 03:14:48");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(350,2.09,"Y","2016-04-01 03:14:50");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(353,2.09,"Y","2016-04-01 03:14:52");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(359,2.09,"Y","2016-04-01 04:14:54");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(363,2.09,"Y","2016-04-01 03:14:56");
insert into Activator(Volume,Frequency,Flag,`Timestamp`) values(369,2.09,"Y","2016-04-01 03:14:58");


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_controller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_controller`()
BEGIN
DECLARE v_frequency DECIMAL(5,2);
DECLARE v_action VARCHAR(1);
DECLARE v_decoder_id INT;


select decFrequency, decoderId into v_frequency, v_decoder_id from decoder
where decoderId NOT IN (select decoder_id from controller);

select `action` into v_action from decoder
where decoderId NOT IN (select decoder_id from controller);
 
insert into controller(frequency, `action`, decoder_id) values(v_frequency, v_action, v_decoder_id);
 



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_decoder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_decoder`()
BEGIN

DECLARE v_impulseHashcode VARCHAR(6);
DECLARE v_response VARCHAR(1);
DECLARE v_retainOrRelease INT DEFAULT 0;
DECLARE v_finalFrequency DECIMAL(5,2);
DECLARE v_action varchar(1);
DECLARE v_interpreter_Id INT;

 
 #select impulseHashcode as v_releaseImpulseHashcode from interpreter where action='Y';
select LPAD(impulseHashcode,6,'0'), interpreterId into v_impulseHashcode , v_interpreter_Id from interpreter
where interpreterId NOT IN (select interpreter_Id from decoder);
 
 select `action` into v_action from interpreter
 where interpreterId NOT IN (select interpreter_Id from decoder);
  
  if v_action='Y' then
  select releaseImpulseFrequency into v_finalFrequency from standard_impulses where releaseImpulseHashCode=v_impulseHashcode;
    elseif v_action='N' then
    select restrainImpulseFrequency into v_finalFrequency from standard_impulses where restrainImpulseHashCode=v_impulseHashcode;
    end if;
       

insert into decoder(decFrequency, `action`, interpreter_Id) values(v_finalFrequency, v_action, v_interpreter_Id);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_encoder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_encoder`(In v_encFrequency int, in v_stage int, in v_hashCode int, in v_id int)
BEGIN

insert into encoder(encFrequency,present_stage,hashCode,`timestamp`, receiver_id) values(v_encFrequency,v_stage,v_hashCode,now(), v_id);
  

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_interpretor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_interpretor`(v_userAction varchar(1), v_vitalSign_id int)
BEGIN
DECLARE v_currentTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
DECLARE v_encHashCode INT;
DECLARE v_impulseHashCode VARCHAR(6);

set v_encHashCode=(select MAX(hashCode) from paralyzed_can_do.encoder);


if v_userAction='Y' THEN 

set v_impulseHashCode=(SELECT LPAD(i.releaseImpulseHashCode,6,'0')
FROM paralyzed_can_do.standard_impulses as i
INNER JOIN paralyzed_can_do.device as d
ON i.bloodType=d.personBloodType
where i.stage=d.currentStage);

else

set v_impulseHashCode=(SELECT LPAD(i.restrainImpulseHashCode,6,'0')
FROM paralyzed_can_do.standard_impulses as i
INNER JOIN paralyzed_can_do.device as d
ON i.bloodType=d.personBloodType
where i.stage=d.currentStage);

end if;

insert into paralyzed_can_do.interpreter  (`timestamp`,vitalSign_id,encoderHashCode,`action`,impulseHashCode) 
values (v_currentTime,v_vitalSign_id,v_encHashCode,v_userAction,v_impulseHashCode);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_receiver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_receiver`()
BEGIN

-- author Manasi Laddha
INSERT INTO RECEIVER (d1,d2,d3,d4,d5,transmitter_id) 
SELECT d1,d2,d3,d4,d5, transmitterId FROM TRANSMITTER where transmitterId NOT IN
(SELECT transmitter_id from receiver);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_transmitter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_transmitter`()
BEGIN

Declare v_empty integer default 0;
Declare v_frequency decimal(5,2);
declare v_frequency_round integer default 0;
declare v_binary varchar(20);
declare v_id int;
-- Declaring the cursor for all the frequency from the activator whose status is "Y".

Declare cur_activator_frequency cursor for
Select frequency, activatorId from activator where flag="Y" and  activatorId NOT IN 
(SELECT distinct activator_id from transmitter);

-- Declaring the not found handler to restrict the corrupt data.
declare continue handler
for not found set v_empty = 1;

Open cur_activator_frequency;

loop_activator_value : loop

Fetch cur_activator_frequency into v_frequency, v_id;
-- if any null value comes then we will continue the loop


If v_empty = 1  Then

  Leave loop_activator_value;

else 

-- rounding the frequency to make a discrete value.
set v_frequency_round = round(v_frequency);

-- select v_frequency_round;

set v_binary = fn_decimal_to_binary(v_frequency_round);

call paralyzed_can_do.pr_split_binary_string(v_binary, v_id );


End if;

end loop loop_activator_value;

close cur_activator_frequency;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_vitalSign_simulator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_vitalSign_simulator`()
BEGIN

DECLARE sys_bp,dy_bp,hr,resp int;
DECLARE stat varchar(2);

set sys_bp = ROUND((RAND() * (110-80))+90);
set dy_bp = ROUND((RAND() * (80-50))+50);
set hr = ROUND((RAND() * (130-80))+90);
set resp = ROUND((RAND() * (30-20))+20);

 set stat = fn_eval_Status(sys_bp,dy_bp,hr,resp);

insert into vitalsign(systolic_bpRate,diastolic_bpRate,heartRate,respiratoryRate,`status`,`timestamp`) values(sys_bp,dy_bp,hr,resp,stat,NOW());


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_patient_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_patient_registration`(in cursstage int)
BEGIN
call pr_flush();

insert into paralyzed_can_do.device (personAge, personBloodType, currentStage) values (24,"O+",cursstage);

insert into paralyzed_can_do.chip (thresholdVolume, peakVolume) values (300,350);

if cursstage = 2 then
call pr_insert_into_activator();
else
call pr_insert_into_activator_deep_sleep();
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_split_binary_string` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_split_binary_string`(IN strBinary varchar(20), IN v_id INT)
BEGIN
	
    -- author Manasi Laddha
    
    DECLARE v_d1, v_d2, v_d3, v_d4, v_d5 BIT(1) DEFAULT 0;
    DECLARE strLength INT;
    SET strLength = length(strBinary);
    
    IF strLength = 1 THEN	
	   SET v_d5 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED); 
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`, activator_id) values(v_d1,v_d2,v_d3,v_d4,v_d5,now(), v_id);
	END IF;
    
    IF strLength = 2 THEN
       SET v_d4 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);	
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`, activator_id) values(v_d1,v_d2,v_d3,v_d4,v_d5,now(), v_id);
    END IF;
    
    IF strLength = 3 THEN
       SET v_d3 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
	   SET v_d4 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`, activator_id) values(v_d1,v_d2,v_d3,v_d4,v_d5,now(), v_id);
	END IF;
    
    IF strLength = 4 THEN
	   SET v_d2 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
	   SET v_d3 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
	   SET v_d4 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
	   SET v_d5 = CAST(SUBSTRING(strBinary,4,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`, activator_id) values(v_d1,v_d2,v_d3,v_d4,v_d5,now(), v_id);
	END IF;

	IF strLength = 5 THEN
       SET v_d1 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);    
	   SET v_d2 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
	   SET v_d3 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
       SET v_d4 = CAST(SUBSTRING(strBinary,4,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,5,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now(), v_id);
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_TestCase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_TestCase`()
BEGIN

delete from transmitter;


delete from activator;


delete from receiver;

delete from encoder;

delete from vitalsign;

delete from interpreter;

delete from decoder;

delete from controller;
delete from device;
delete from chip;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_activator_transmitter`
--

/*!50001 DROP VIEW IF EXISTS `view_activator_transmitter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activator_transmitter` AS select `a`.`activatorId` AS `activatorId`,`a`.`volume` AS `volume`,`a`.`frequency` AS `frequency`,`t`.`d1` AS `d1`,`t`.`d2` AS `d2`,`t`.`d3` AS `d3`,`t`.`d4` AS `d4`,`t`.`d5` AS `d5` from (`activator` `a` join `transmitter` `t` on((`a`.`activatorId` = `t`.`activator_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_encoder_stdhashcode`
--

/*!50001 DROP VIEW IF EXISTS `view_encoder_stdhashcode`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_encoder_stdhashcode` AS select `e`.`encFrequency` AS `encFrequency`,`e`.`present_stage` AS `present_stage`,`e`.`hashcode` AS `hashcode`,`s`.`hc1` AS `hc1`,`s`.`hc2` AS `hc2`,`s`.`hc3` AS `hc3`,`s`.`hc4` AS `hc4`,`s`.`hc5` AS `hc5`,`s`.`hc6` AS `hc6`,`s`.`hc7` AS `hc7`,`s`.`hc8` AS `hc8`,`s`.`hc9` AS `hc9` from (`encoder` `e` join `standard_hashcode` `s` on((`e`.`hashcode` = `s`.`stdHashId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_interpreter_decoder_controller`
--

/*!50001 DROP VIEW IF EXISTS `view_interpreter_decoder_controller`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_interpreter_decoder_controller` AS select `i`.`timestamp` AS `interpreter_timestamp`,`i`.`action` AS `interpreter_action`,`i`.`impulseHashcode` AS `impulseHashcode`,`d`.`decFrequency` AS `decoder_frequency`,`c`.`action` AS `controller_action`,`c`.`frequency` AS `controller_frequency` from ((`interpreter` `i` join `decoder` `d` on((`i`.`interpreterId` = `d`.`interpreter_Id`))) join `controller` `c` on((`d`.`decoderId` = `c`.`decoder_id`))) */;
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

-- Dump completed on 2016-04-15 22:42:54
