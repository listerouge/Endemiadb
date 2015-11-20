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
-- Table structure for table `preconisationrecherche`
--

DROP TABLE IF EXISTS `preconisationrecherche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preconisationrecherche` (
  `idRecherche` int(11) NOT NULL,
  `CodeRecherche` varchar(5) NOT NULL,
  `DescriptionRecherche` varchar(255) NOT NULL,
  `NoteRechercheFR` longtext,
  `NoteRechercheEN` longtext,
  `DureeRecherche` decimal(10,1) DEFAULT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idRecherche`),
  KEY `fk_codeiucn_CodeRecherche` (`CodeRecherche`),
  CONSTRAINT `fk_codeiucn_CodeRecherche` FOREIGN KEY (`CodeRecherche`) REFERENCES `codeiucn` (`CodeIUCN`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preconisationrecherche`
--

LOCK TABLES `preconisationrecherche` WRITE;
/*!40000 ALTER TABLE `preconisationrecherche` DISABLE KEYS */;
INSERT INTO `preconisationrecherche` VALUES (1,'1.2','Prospection ','en aval confluence entre creek Pernod et lac Yaté\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(2,'1.2','Prospection ','berges hautes de la rivière Yaté\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(3,'1.2','Prospection ','zone sur le fond du creek Pernod qui à moyen terme devrait être exploitée (à faire selon emprise des ruissellements)\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(4,'1.5','Identifier les menaces en cause par rapport au manque de régénération observée','\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(5,'3.1','Avoir des données sur le manque de régénération','\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(6,'3.4','Suivi de la qualité de l\'habitat','\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(7,'1.2','Prospection ','les zones intermédiaires entre les stations connues\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(8,'1.2','Prospection ','sur les pentes et les zones à éboulis\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(9,'1.2','Prospection ','à mener en cas de réouverture de mine \r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(10,'1.2','Prospection ','Kouakoué\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(11,'3.1','Suivi du nombre d\'individus','\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(12,'1.2','Prospection ','Berges de la rivière Kalouehola où l\'espèce H. favieri est déjà présente\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30'),(13,'1.2','Prospection ','Chutes de la Madeleine\r',NULL,NULL,'2015-11-19 01:07:21','2015-11-19 01:07:30');
/*!40000 ALTER TABLE `preconisationrecherche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 16:45:12
