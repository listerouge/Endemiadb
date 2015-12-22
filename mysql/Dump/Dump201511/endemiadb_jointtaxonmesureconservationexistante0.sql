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
-- Table structure for table `jointtaxonmesureconservationexistante`
--

DROP TABLE IF EXISTS `jointtaxonmesureconservationexistante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointtaxonmesureconservationexistante` (
  `idJointTaxonMesureConservationExistante` int(11) NOT NULL AUTO_INCREMENT,
  `MesureConservationExistante_idMesureConservationExistante` int(11) NOT NULL,
  `Taxon_idTaxEndemia` int(11) NOT NULL,
  PRIMARY KEY (`idJointTaxonMesureConservationExistante`),
  KEY `fk_taxonmesurconserv_taxon` (`Taxon_idTaxEndemia`),
  CONSTRAINT `fk_taxonmesurconserv_taxon` FOREIGN KEY (`Taxon_idTaxEndemia`) REFERENCES `taxon` (`idTaxEndemia`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointtaxonmesureconservationexistante`
--

LOCK TABLES `jointtaxonmesureconservationexistante` WRITE;
/*!40000 ALTER TABLE `jointtaxonmesureconservationexistante` DISABLE KEYS */;
INSERT INTO `jointtaxonmesureconservationexistante` VALUES (1,1,1315),(2,2,1315),(3,3,1315),(4,4,1315),(5,5,1315),(6,6,1315),(7,7,1315),(8,8,1315),(9,1,319),(10,2,319),(11,3,319),(12,4,319),(13,5,319),(14,7,319),(15,8,319),(16,9,319),(17,10,3602),(18,11,320),(19,12,3603),(20,13,3603),(21,1,3603),(22,2,3603),(23,4,3603),(24,5,3603),(25,3,3604),(26,2,3604),(27,5,3604),(28,7,3604),(29,8,3604),(30,14,3605),(31,15,3606),(32,2,3606),(33,4,3606),(34,5,3606),(35,15,809),(36,16,809),(37,17,809),(38,18,809),(39,19,809),(40,20,809),(41,21,809),(42,1,809),(43,3,809),(44,4,809),(45,7,809),(46,2,3608),(47,22,3609),(48,2,2477),(49,3,2477),(50,5,2477),(51,23,2401),(52,16,2401),(53,17,2401),(54,1,2401),(55,18,2401),(56,19,2401),(57,20,2401),(58,22,2401),(59,3,2401),(60,7,2401),(61,11,2401),(62,13,2401),(63,2,2401),(64,2,3610),(65,3,3610),(66,4,3610),(67,5,3610),(68,19,3610),(69,12,3610),(70,9,3610),(71,1,3610),(72,8,3610),(73,1,2444),(74,15,2444),(75,7,2444),(76,4,2444),(77,24,2444),(78,3,1317),(79,6,1317),(80,17,1317),(81,25,1317),(82,19,1317),(83,12,1317),(84,9,1317),(85,13,1317),(86,1,1317),(87,22,3611),(88,18,2445),(89,19,2445),(90,12,2445),(91,26,2446),(92,27,2446),(93,15,2446),(94,4,2446),(95,6,2446),(96,21,2446),(97,5,2446),(98,9,2446),(99,13,2446),(100,1,2446),(101,8,2446),(102,3,2446),(103,1,3612),(104,6,3612),(105,5,3612),(106,2,3612),(107,7,3612),(108,6,3613),(109,4,3613),(110,28,1934),(111,29,1934),(112,6,1934),(113,18,1934),(114,16,1934),(115,20,1934),(116,21,1934),(117,4,1934);
/*!40000 ALTER TABLE `jointtaxonmesureconservationexistante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 18:20:11
