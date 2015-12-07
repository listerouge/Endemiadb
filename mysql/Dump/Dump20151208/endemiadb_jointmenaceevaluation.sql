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
-- Table structure for table `jointmenaceevaluation`
--

DROP TABLE IF EXISTS `jointmenaceevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointmenaceevaluation` (
  `idJointMenaceEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `Menace_idMenace` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idJointMenaceEvaluation`),
  KEY `fk_evaluationlisterougeidevaluation_evaluationlisterouge` (`EvaluationListeRouge_idEvaluationListeRouge`),
  KEY `fk_menaceidmenace_menace` (`Menace_idMenace`),
  CONSTRAINT `fk_evaluationlisterougeidevaluation_evaluationlisterouge` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE,
  CONSTRAINT `fk_menaceidmenace_menace` FOREIGN KEY (`Menace_idMenace`) REFERENCES `menace` (`idMenace`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointmenaceevaluation`
--

LOCK TABLES `jointmenaceevaluation` WRITE;
/*!40000 ALTER TABLE `jointmenaceevaluation` DISABLE KEYS */;
INSERT INTO `jointmenaceevaluation` VALUES (1,1,1,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(2,2,3,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(3,3,3,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(4,4,3,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(5,5,4,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(6,6,5,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(7,1,5,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(8,3,5,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(9,1,6,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(10,3,6,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(11,1,7,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(12,3,7,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(13,1,8,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(14,3,8,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(15,7,8,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(16,1,9,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(17,8,9,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(18,3,12,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(19,3,13,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(20,9,14,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(21,10,19,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(22,11,19,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(23,1,20,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(24,3,20,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(25,1,22,'2015-11-19 01:24:14','2015-11-19 01:24:14'),(26,3,22,'2015-11-19 01:24:14','2015-11-19 01:24:14');
/*!40000 ALTER TABLE `jointmenaceevaluation` ENABLE KEYS */;
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
