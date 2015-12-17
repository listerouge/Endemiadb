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
-- Table structure for table `jointmenacesouspopulationpreconisation`
--

DROP TABLE IF EXISTS `jointmenacesouspopulationpreconisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointmenacesouspopulationpreconisation` (
  `idMenaceSousPopulationPreconisation` int(11) NOT NULL AUTO_INCREMENT,
  `SousPopulation_idSousPopulation` int(11) NOT NULL,
  `Menace_idMenace` int(11) NOT NULL,
  `PreconisationConservation_idPreconisationConservation` int(11) NOT NULL,
  `PreconisationRecherche_idRecherche` int(11) NOT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idMenaceSousPopulationPreconisation`),
  KEY `fk_menace_MSSPP` (`Menace_idMenace`),
  KEY `fk_souspopulation_MSSPP` (`SousPopulation_idSousPopulation`),
  KEY `fk_preconisationconservation_MSSPP` (`PreconisationConservation_idPreconisationConservation`),
  KEY `fk_preconisationrecherche_MSSPP` (`PreconisationRecherche_idRecherche`),
  CONSTRAINT `fk_menace_MSSPP` FOREIGN KEY (`Menace_idMenace`) REFERENCES `menace` (`idMenace`) ON UPDATE CASCADE,
  CONSTRAINT `fk_preconisationconservation_MSSPP` FOREIGN KEY (`PreconisationConservation_idPreconisationConservation`) REFERENCES `preconisationconservation` (`idPreconisationConservation`) ON UPDATE CASCADE,
  CONSTRAINT `fk_preconisationrecherche_MSSPP` FOREIGN KEY (`PreconisationRecherche_idRecherche`) REFERENCES `preconisationrecherche` (`idRecherche`) ON UPDATE CASCADE,
  CONSTRAINT `fk_souspopulation_MSSPP` FOREIGN KEY (`SousPopulation_idSousPopulation`) REFERENCES `souspopulation` (`idSousPopulation`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointmenacesouspopulationpreconisation`
--

LOCK TABLES `jointmenacesouspopulationpreconisation` WRITE;
/*!40000 ALTER TABLE `jointmenacesouspopulationpreconisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `jointmenacesouspopulationpreconisation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08  8:56:13