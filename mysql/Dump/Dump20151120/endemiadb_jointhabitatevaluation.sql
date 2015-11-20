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
-- Table structure for table `jointhabitatevaluation`
--

DROP TABLE IF EXISTS `jointhabitatevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointhabitatevaluation` (
  `idHabitatEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `Habitat_idHabitat` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `HabitatAdequation` enum('Suitable','Marginal','Unknown','') NOT NULL DEFAULT 'Suitable',
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idHabitatEvaluation`),
  KEY `fk_evaluation_HE` (`EvaluationListeRouge_idEvaluationListeRouge`),
  KEY `fk_habitatidhabitat_habitat` (`Habitat_idHabitat`),
  CONSTRAINT `fk_evaluation_HE` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE,
  CONSTRAINT `fk_habitatidhabitat_habitat` FOREIGN KEY (`Habitat_idHabitat`) REFERENCES `habitat` (`idHabitat`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointhabitatevaluation`
--

LOCK TABLES `jointhabitatevaluation` WRITE;
/*!40000 ALTER TABLE `jointhabitatevaluation` DISABLE KEYS */;
INSERT INTO `jointhabitatevaluation` VALUES (1,1,25,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(2,2,1,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(3,3,2,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(4,4,2,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(5,5,3,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(6,3,4,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(7,2,5,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(8,6,5,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(9,2,6,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(10,7,6,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(11,4,7,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(12,12,7,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(13,5,8,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(14,17,9,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(15,5,10,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(16,9,10,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(17,10,11,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(18,2,11,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(19,3,11,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(20,4,12,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(21,12,13,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(22,4,13,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(23,18,14,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(24,19,14,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(25,18,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(26,21,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(27,2,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(28,22,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(29,12,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(30,23,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(31,3,16,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(32,11,16,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(33,12,16,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(34,2,17,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(35,3,17,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(36,12,17,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(37,16,17,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(38,2,18,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(39,5,18,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(40,20,19,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(41,11,20,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(42,2,21,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(43,9,21,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(44,2,22,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(45,2,24,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(46,3,24,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(47,3,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(48,7,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(49,4,1,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(50,4,6,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(51,12,11,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(52,10,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(53,24,15,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(54,18,16,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(55,18,17,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(56,18,21,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(57,18,22,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(58,7,23,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(59,2,23,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(60,18,23,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56'),(61,6,23,'Suitable','2015-11-19 01:24:44','2015-11-19 04:55:56');
/*!40000 ALTER TABLE `jointhabitatevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 16:45:15
