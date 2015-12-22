-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: endemiadb
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `jointhabitattaxon`
--

DROP TABLE IF EXISTS `jointhabitattaxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointhabitattaxon` (
  `idHabitatTaxon` int(11) NOT NULL AUTO_INCREMENT,
  `Habitat_idHabitat` int(11) NOT NULL,
  `Taxon_idTaxEndemia` int(11) NOT NULL,
  `HabitatAdequation` enum('Suitable','Marginal','Unknown','') NOT NULL DEFAULT 'Suitable',
  PRIMARY KEY (`idHabitatTaxon`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointhabitattaxon`
--

LOCK TABLES `jointhabitattaxon` WRITE;
/*!40000 ALTER TABLE `jointhabitattaxon` DISABLE KEYS */;
INSERT INTO `jointhabitattaxon` VALUES (1,1,321,'Suitable'),(2,2,1315,'Suitable'),(3,3,319,'Suitable'),(4,4,319,'Suitable'),(5,5,3602,'Suitable'),(6,3,320,'Suitable'),(7,2,2443,'Suitable'),(8,6,2443,'Suitable'),(9,2,3603,'Suitable'),(10,7,3603,'Suitable'),(11,4,3604,'Suitable'),(12,12,3604,'Suitable'),(13,5,3605,'Suitable'),(14,17,3606,'Suitable'),(15,5,3607,'Suitable'),(16,9,3607,'Suitable'),(17,10,809,'Suitable'),(18,2,809,'Suitable'),(19,3,809,'Suitable'),(20,4,3608,'Suitable'),(21,12,3609,'Suitable'),(22,4,3609,'Suitable'),(23,18,2477,'Suitable'),(24,19,2477,'Suitable'),(25,18,2401,'Suitable'),(26,21,2401,'Suitable'),(27,2,2401,'Suitable'),(28,22,2401,'Suitable'),(29,12,2401,'Suitable'),(30,23,2401,'Suitable'),(31,3,3610,'Suitable'),(32,11,3610,'Suitable'),(33,12,3610,'Suitable'),(34,2,2444,'Suitable'),(35,3,2444,'Suitable'),(36,12,2444,'Suitable'),(37,16,2444,'Suitable'),(38,2,1317,'Suitable'),(39,5,1317,'Suitable'),(40,20,3611,'Suitable'),(41,11,2445,'Suitable'),(42,2,2446,'Suitable'),(43,9,2446,'Suitable'),(44,2,3612,'Suitable'),(45,2,1934,'Suitable'),(46,3,1934,'Suitable'),(47,3,2401,'Suitable'),(48,7,2401,'Suitable'),(49,4,1315,'Suitable'),(50,4,3603,'Suitable'),(51,12,809,'Suitable'),(52,10,2401,'Suitable'),(53,24,2401,'Suitable'),(54,18,3610,'Suitable'),(55,18,2444,'Suitable'),(56,18,2446,'Suitable'),(57,18,3612,'Suitable'),(58,7,3613,'Suitable'),(59,2,3613,'Suitable'),(60,18,3613,'Suitable'),(61,6,3613,'Suitable');
/*!40000 ALTER TABLE `jointhabitattaxon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-03 15:41:10
