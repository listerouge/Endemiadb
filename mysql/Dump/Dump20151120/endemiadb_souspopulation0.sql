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
-- Table structure for table `souspopulation`
--

DROP TABLE IF EXISTS `souspopulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `souspopulation` (
  `idSousPopulation` int(11) NOT NULL AUTO_INCREMENT,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `IndividusMatureSousPopulation` int(11) DEFAULT NULL,
  `IndividusMatureSousPopulationEstimation` enum('<50','<250','<1000','<2500','<10000','>10000') DEFAULT NULL,
  `LocalisationSousPopulation` varchar(255) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idSousPopulation`),
  KEY `fk_evaluation_souspopulation_idx` (`EvaluationListeRouge_idEvaluationListeRouge`),
  CONSTRAINT `fk_evaluation_souspopulation` FOREIGN KEY (`EvaluationListeRouge_idEvaluationListeRouge`) REFERENCES `evaluationlisterouge` (`idEvaluationListeRouge`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `souspopulation`
--

LOCK TABLES `souspopulation` WRITE;
/*!40000 ALTER TABLE `souspopulation` DISABLE KEYS */;
INSERT INTO `souspopulation` VALUES (1,3,0,'<50','berge Nord du lac de Yaté\r','2015-11-19 01:03:01','2015-11-19 01:03:10'),(2,3,0,'<50','Confluence entre la rivière des lacs et le creek Pernod\r','2015-11-19 01:03:01','2015-11-19 01:03:10'),(3,8,0,'<50','berge Nord du lac de Yaté\r','2015-11-19 01:03:01','2015-11-19 01:03:10'),(4,8,0,'<50','Confluence entre la rivière des lacs et le creek Pernod\r','2015-11-19 01:03:01','2015-11-19 01:03:10'),(5,19,0,'<2500','Mont Taom\r','2015-11-19 01:03:01','2015-11-19 01:03:10');
/*!40000 ALTER TABLE `souspopulation` ENABLE KEYS */;
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
