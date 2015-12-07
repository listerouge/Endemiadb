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
-- Table structure for table `critereevaluation`
--

DROP TABLE IF EXISTS `critereevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `critereevaluation` (
  `idCritereEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `CritereEvaluation` varchar(255) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCritereEvaluation`),
  UNIQUE KEY `CritereEvaluation_UNIQUE` (`CritereEvaluation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critereevaluation`
--

LOCK TABLES `critereevaluation` WRITE;
/*!40000 ALTER TABLE `critereevaluation` DISABLE KEYS */;
INSERT INTO `critereevaluation` VALUES (1,'B2ab(iii)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(2,'B1ab(v)+2ab(v); C2a(ii)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(3,'D1','2015-11-19 01:28:22','2015-11-19 01:28:22'),(4,'C2a(i)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(5,'B1ab(v)+2ab(v); C2a(i)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(6,'B1ab(iii)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(7,'B1ab(iii,v)+2ab(iii,v); C2a(i)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(8,'B1ab(v)+2ab(v); C2a(ii); D','2015-11-19 01:28:22','2015-11-19 01:28:22'),(9,'D','2015-11-19 01:28:22','2015-11-19 01:28:22'),(10,'D2','2015-11-19 01:28:22','2015-11-19 01:28:22'),(11,'NULL','2015-11-19 01:28:22','2015-11-19 01:28:22'),(12,'(VU) B1ab(iii)+2ab(iii)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(13,'(VU) D2','2015-11-19 01:28:22','2015-11-19 01:28:22'),(14,'B1ab(iii,v)+2ab(iii,v)','2015-11-19 01:28:22','2015-11-19 01:28:22'),(15,'B1ab(iii,v); C2a(ii); D','2015-11-19 01:28:22','2015-11-19 01:28:22');
/*!40000 ALTER TABLE `critereevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08  8:56:12
