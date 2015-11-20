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
-- Table structure for table `jointserviceecosystemiqueevaluation`
--

DROP TABLE IF EXISTS `jointserviceecosystemiqueevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointserviceecosystemiqueevaluation` (
  `idJointServiceEcosystemiqueEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceEcosystemique_idServiceEcosystemique` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idJointServiceEcosystemiqueEvaluation`),
  KEY `fk_evaluationservecosyst_evaluationlisterouge` (`EvaluationListeRouge_idEvaluationListeRouge`),
  KEY `fk_serviceecosystemique_SEE` (`ServiceEcosystemique_idServiceEcosystemique`),
  CONSTRAINT `fk_evaluationservecosyst_evaluationlisterouge` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE,
  CONSTRAINT `fk_serviceecosystemique_SEE` FOREIGN KEY (`ServiceEcosystemique_idServiceEcosystemique`) REFERENCES `serviceecosystemique` (`idServiceEcosystemique`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointserviceecosystemiqueevaluation`
--

LOCK TABLES `jointserviceecosystemiqueevaluation` WRITE;
/*!40000 ALTER TABLE `jointserviceecosystemiqueevaluation` DISABLE KEYS */;
INSERT INTO `jointserviceecosystemiqueevaluation` VALUES (1,1,1,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(2,1,2,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(3,1,3,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(4,1,4,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(5,1,5,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(6,1,6,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(7,1,7,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(8,1,8,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(9,1,9,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(10,1,10,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(11,1,11,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(12,1,12,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(13,1,13,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(14,1,14,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(15,1,15,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(16,1,16,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(17,1,17,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(18,1,18,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(19,1,19,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(20,1,20,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(21,1,21,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(22,1,22,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(23,1,23,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(24,1,24,'2015-11-19 01:22:12','2015-11-19 01:22:12'),(25,1,25,'2015-11-19 01:22:12','2015-11-19 01:22:12');
/*!40000 ALTER TABLE `jointserviceecosystemiqueevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 16:45:13
