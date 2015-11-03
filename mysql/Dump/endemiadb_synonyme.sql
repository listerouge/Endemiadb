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
-- Table structure for table `synonyme`
--

DROP TABLE IF EXISTS `synonyme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonyme` (
  `idSynonyme` int(11) NOT NULL AUTO_INCREMENT,
  `Taxon_idTaxEndemia` int(11) NOT NULL,
  `Statut` enum('Nom accepte','a pour synonyme','aurait pour synonyme','est un synonyme de','inexistant') NOT NULL DEFAULT 'Nom accepte',
  `Organisme` varchar(45) NOT NULL,
  `SynonymeFamille` varchar(255) DEFAULT NULL,
  `SynonymeGenre` varchar(255) DEFAULT NULL,
  `SynonymeEspece` varchar(255) DEFAULT NULL,
  `SynonymeInfraType` enum('subsp.','var.') DEFAULT NULL,
  `SynonymeType` varchar(255) DEFAULT NULL,
  `AutoriteTaxonomiqueFamille` varchar(255) DEFAULT NULL,
  `AutoriteTaxonomiqueGenre` varchar(255) DEFAULT NULL,
  `AutoriteTaxonomiqueEspece` varchar(255) DEFAULT NULL,
  `AutoriteTaxonomiqueInfra` varchar(255) DEFAULT NULL,
  `SourceInfo` longtext,
  PRIMARY KEY (`idSynonyme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonyme`
--

LOCK TABLES `synonyme` WRITE;
/*!40000 ALTER TABLE `synonyme` DISABLE KEYS */;
/*!40000 ALTER TABLE `synonyme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-03 15:41:09
