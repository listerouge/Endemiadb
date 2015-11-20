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
-- Table structure for table `preconisationconservation`
--

DROP TABLE IF EXISTS `preconisationconservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preconisationconservation` (
  `idPreconisationConservation` int(11) NOT NULL AUTO_INCREMENT,
  `CodePreconisationConservation` varchar(8) NOT NULL,
  `DescriptionPreconisationConservation` varchar(255) NOT NULL,
  `NotePreconisationConservationFR` longtext,
  `NotePreconisationConservationEN` longtext,
  `DureePreconisationConservation` decimal(10,1) DEFAULT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPreconisationConservation`),
  KEY `fk_codeiucn_CodePreconisationConservation` (`CodePreconisationConservation`),
  CONSTRAINT `fk_codeiucn_CodePreconisationConservation` FOREIGN KEY (`CodePreconisationConservation`) REFERENCES `codeiucn` (`CodeIUCN`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preconisationconservation`
--

LOCK TABLES `preconisationconservation` WRITE;
/*!40000 ALTER TABLE `preconisationconservation` DISABLE KEYS */;
INSERT INTO `preconisationconservation` VALUES (1,'1.2','Protection de l\'habitat','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(2,'1.2','Inclusion de la zone concernée dans le périmètre Ramsar','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(3,'3.3.1','Renforcement des populations in-situ','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(4,'3.4.1','Plantation ex-situ pour multiplication active','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(5,'5.1.3','Inscription sur la liste des espèces protégées provinciale','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(6,'1.2','Préservation du milieu rivulaire (amont-aval)','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(7,'1.2','Protection de l\'habitat','population et nombre de sous-population faibles d\'où la nécessité de suivre la qualité de l\'habitat','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(8,'1.1','Protection de site spécifique','Zone à identifier parmi les massifs UM du Nord-Ouest','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(9,'2.1','Suivi de la qualité de l\'habitat','','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24'),(10,'1.1','Mise en défens d\'une partie du peuplement ','Mont Taom','',0.0,'2015-11-19 01:08:18','2015-11-19 01:08:24');
/*!40000 ALTER TABLE `preconisationconservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 16:45:10
