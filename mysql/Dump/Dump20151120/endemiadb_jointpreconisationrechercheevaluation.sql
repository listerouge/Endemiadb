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
-- Table structure for table `jointpreconisationrechercheevaluation`
--

DROP TABLE IF EXISTS `jointpreconisationrechercheevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointpreconisationrechercheevaluation` (
  `idJointPreconisationRechercheEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `PreconisationRecherche_idRecherche` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idJointPreconisationRechercheEvaluation`),
  KEY `fk_evaluation_PRE` (`EvaluationListeRouge_idEvaluationListeRouge`),
  KEY `fk_preconisationrecherche_PRE` (`PreconisationRecherche_idRecherche`),
  CONSTRAINT `fk_evaluation_PRE` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE,
  CONSTRAINT `fk_preconisationrecherche_PRE` FOREIGN KEY (`PreconisationRecherche_idRecherche`) REFERENCES `preconisationrecherche` (`idRecherche`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointpreconisationrechercheevaluation`
--

LOCK TABLES `jointpreconisationrechercheevaluation` WRITE;
/*!40000 ALTER TABLE `jointpreconisationrechercheevaluation` DISABLE KEYS */;
INSERT INTO `jointpreconisationrechercheevaluation` VALUES (1,1,3,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(2,2,3,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(3,3,3,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(4,4,4,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(5,5,4,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(6,6,4,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(7,7,6,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(8,8,7,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(9,1,8,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(10,2,8,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(11,3,8,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(12,9,9,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(13,10,12,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(14,11,13,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(15,6,19,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(16,12,20,'2015-11-19 01:22:37','2015-11-19 01:22:37'),(17,13,20,'2015-11-19 01:22:37','2015-11-19 01:22:37');
/*!40000 ALTER TABLE `jointpreconisationrechercheevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 16:45:09
