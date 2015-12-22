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
-- Table structure for table `jointairegeographiquetaxon`
--

DROP TABLE IF EXISTS `jointairegeographiquetaxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointairegeographiquetaxon` (
  `idAireGeographiqueTaxon` int(11) NOT NULL AUTO_INCREMENT,
  `AireGeographique_idAireGeographique` int(11) NOT NULL,
  `Taxon_idTaxEndemia` int(11) NOT NULL,
  PRIMARY KEY (`idAireGeographiqueTaxon`),
  KEY `fk_airegeo_idgeo_idAiregeo` (`AireGeographique_idAireGeographique`),
  KEY `fk_taxonidtaxendemia_idTaxEndemia_idx` (`Taxon_idTaxEndemia`),
  CONSTRAINT `fk_airegeo_idgeo_idAiregeo` FOREIGN KEY (`AireGeographique_idAireGeographique`) REFERENCES `airegeographique` (`idAireGeographique`),
  CONSTRAINT `fk_taxonidtaxendemia_idtaxendemia` FOREIGN KEY (`Taxon_idTaxEndemia`) REFERENCES `taxon` (`idTaxEndemia`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointairegeographiquetaxon`
--

LOCK TABLES `jointairegeographiquetaxon` WRITE;
/*!40000 ALTER TABLE `jointairegeographiquetaxon` DISABLE KEYS */;
INSERT INTO `jointairegeographiquetaxon` VALUES (1,1,1315),(2,1,319),(3,1,3602),(4,1,320),(5,1,2443),(6,1,3603),(7,1,3604),(8,1,3605),(9,1,3606),(10,1,3607),(11,1,809),(12,1,3608),(13,1,3609),(14,1,2477),(15,1,2401),(16,1,3610),(17,1,2444),(18,1,1317),(19,1,3611),(20,1,321),(21,1,2445),(22,1,2446),(23,1,3612),(24,1,3613),(25,1,1934),(26,2,809),(27,1,4429),(28,1,4430),(29,1,4431),(30,1,4432),(31,1,4433),(32,1,4434),(33,1,5194),(34,1,2169),(35,1,4435),(36,1,4436),(37,1,4437),(38,1,493),(39,1,4438),(40,1,4439),(41,1,4440),(42,1,2481),(43,1,2480),(44,1,4441),(45,1,4442),(46,1,4443),(47,1,1150),(48,1,1737),(49,1,1151),(50,1,4444),(51,1,2171),(52,1,1152),(53,1,8140),(54,1,4446),(55,1,4447),(56,1,1153),(57,1,4448),(58,1,4449),(59,1,4450),(60,1,631),(61,1,1154),(62,1,4451),(63,1,1155),(64,1,4452),(65,1,494),(66,1,2485),(67,1,5209),(68,1,4453),(69,1,4454),(70,1,1738),(71,1,8143),(72,1,8144),(73,1,4455),(74,1,4456);
/*!40000 ALTER TABLE `jointairegeographiquetaxon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 18:01:32
