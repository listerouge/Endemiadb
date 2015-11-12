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
-- Table structure for table `jointsourcebibliographiqueevaluation`
--

DROP TABLE IF EXISTS `jointsourcebibliographiqueevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointsourcebibliographiqueevaluation` (
  `idSourceBibliographiqueEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `SourceBibliographique_idSourceBibliographique` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  PRIMARY KEY (`idSourceBibliographiqueEvaluation`),
  KEY `fk_evaluationsrcebiblio_evaluationlisterouge` (`EvaluationListeRouge_idEvaluationListeRouge`),
  CONSTRAINT `fk_evaluationsrcebiblio_evaluationlisterouge` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointsourcebibliographiqueevaluation`
--

LOCK TABLES `jointsourcebibliographiqueevaluation` WRITE;
/*!40000 ALTER TABLE `jointsourcebibliographiqueevaluation` DISABLE KEYS */;
INSERT INTO `jointsourcebibliographiqueevaluation` VALUES (1,2,1),(2,5,1),(3,1,1),(4,6,1),(5,2,2),(6,1,2),(7,6,2),(8,1,3),(9,2,3),(10,3,3),(11,4,3),(12,5,3),(13,6,3),(14,1,4),(15,2,4),(16,6,4),(17,1,5),(18,2,5),(19,3,5),(20,4,5),(21,5,5),(22,6,5),(23,1,6),(24,2,6),(25,3,6),(26,4,6),(27,5,6),(28,6,6),(29,1,7),(30,2,7),(31,3,7),(32,4,7),(33,5,7),(34,6,7),(35,1,8),(36,2,8),(37,3,8),(38,4,8),(39,5,8),(40,6,8),(41,1,9),(42,2,9),(43,3,9),(44,5,9),(45,6,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,6,10),(52,1,11),(53,2,11),(54,6,11),(55,1,12),(56,2,12),(57,3,12),(58,4,12),(59,6,12),(60,1,13),(61,2,13),(62,4,13),(63,5,13),(64,6,13),(65,1,14),(66,2,14),(67,4,14),(68,5,14),(69,6,14),(70,1,15),(71,2,15),(72,3,15),(73,6,15),(74,1,16),(75,2,16),(76,3,16),(77,4,16),(78,6,16),(79,1,17),(80,2,17),(81,6,17),(82,1,18),(83,2,18),(84,6,18),(85,1,19),(86,2,19),(87,3,19),(88,4,19),(89,6,19),(90,1,25),(91,2,25),(92,1,20),(93,2,20),(94,3,20),(95,4,20),(96,5,20),(97,6,20),(98,1,21),(99,2,21),(100,5,21),(101,6,21),(102,1,22),(103,2,22),(104,3,22),(105,4,22),(106,5,22),(107,6,22),(108,1,23),(109,2,23),(110,3,23),(111,6,23),(112,1,24),(113,2,24),(114,6,24);
/*!40000 ALTER TABLE `jointsourcebibliographiqueevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 18:20:30
