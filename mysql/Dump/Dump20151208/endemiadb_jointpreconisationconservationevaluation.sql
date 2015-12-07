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
-- Table structure for table `jointpreconisationconservationevaluation`
--

DROP TABLE IF EXISTS `jointpreconisationconservationevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointpreconisationconservationevaluation` (
  `idJointPreconisationConservationEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `PreconisationConservation_idPreconisationConservation` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idJointPreconisationConservationEvaluation`),
  KEY `fk_evaluationprecoconserv_evaluationlisterouge` (`EvaluationListeRouge_idEvaluationListeRouge`),
  KEY `fk_preconisationconservation_PCE` (`PreconisationConservation_idPreconisationConservation`),
  CONSTRAINT `fk_evaluationprecoconserv_evaluationlisterouge` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE,
  CONSTRAINT `fk_preconisationconservation_PCE` FOREIGN KEY (`PreconisationConservation_idPreconisationConservation`) REFERENCES `preconisationconservation` (`idPreconisationConservation`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointpreconisationconservationevaluation`
--

LOCK TABLES `jointpreconisationconservationevaluation` WRITE;
/*!40000 ALTER TABLE `jointpreconisationconservationevaluation` DISABLE KEYS */;
INSERT INTO `jointpreconisationconservationevaluation` VALUES (1,1,1,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(2,2,3,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(3,3,3,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(4,4,3,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(5,5,3,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(6,6,3,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(7,7,4,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(8,8,5,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(9,9,6,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(10,2,8,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(11,3,8,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(12,4,8,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(13,5,8,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(14,6,8,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(15,5,12,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(16,10,19,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(17,5,20,'2015-11-19 01:23:10','2015-11-19 01:23:10'),(18,9,22,'2015-11-19 01:23:10','2015-11-19 01:23:10');
/*!40000 ALTER TABLE `jointpreconisationconservationevaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08  8:56:11
