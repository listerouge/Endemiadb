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
-- Table structure for table `menace`
--

DROP TABLE IF EXISTS `menace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menace` (
  `idMenace` int(11) NOT NULL AUTO_INCREMENT,
  `CodeMenace` varchar(5) NOT NULL,
  `DescriptionMenace` longtext NOT NULL,
  `CommentaireMenace` longtext,
  `DureeMenace` enum('Past, unlikely to Return','Ongoing','Future','Unknown','Past,likely to return') NOT NULL,
  `PorteeMenace` enum('Whole(90%)','Majority (50-90%)','Minority (<50%)','Unknown') DEFAULT NULL,
  `SeveriteMenace` enum('Very Rapid Declines','Rapid Declines','Slow, Significant declines','Causing, Could cause fluctuations','Negligible declines','No Decline','Unknown') DEFAULT NULL,
  `StressMenace` varchar(20) DEFAULT NULL,
  `MenaceEspeceIdentifiee` varchar(255) DEFAULT NULL,
  `MenaceEspeceNonIdentifiee` varchar(255) DEFAULT NULL,
  `MenaceMaladie` varchar(255) DEFAULT NULL,
  `CodeIUCN_CategorieMenaceFR` varchar(255) NOT NULL,
  PRIMARY KEY (`idMenace`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menace`
--

LOCK TABLES `menace` WRITE;
/*!40000 ALTER TABLE `menace` DISABLE KEYS */;
INSERT INTO `menace` VALUES (1,'3.2','Mine','','Ongoing','','','1.1 |1.2','','','',''),(2,'3.2','Mine','','Ongoing','Minority (<50%)','Rapid Declines','1.1 |1.2','','','',''),(3,'7.1.1','Feu','Feu de brousse','Ongoing','','','1.1 |1.2','','','',''),(4,'7.2.1','Barrage de Yaté ','Ses conséquences en matière de fluctuations du niveau d\'eau','Ongoing','','','1.1 |1.2','','','',''),(5,'7.1.1','Feu ','provoqué par des orages','Unknown','Minority (<50%)','',NULL,'','','',''),(6,'1.1','Urbanisation','','Ongoing','','','1.1 |1.2','','','',''),(7,'7.3','Modification du régime hydrique ','','','','',NULL,'','','',''),(8,'7.3','Sécheresse','Effet induit de la mine, augmentation de la vulnérabilité à la sécheresse','','','',NULL,'','','',''),(9,'11.1','Changement climatique','Disparition d\'habitat ','Future','','','1.1 |1.2','','','',''),(10,'3.2','Mine','','','','','1.1 |1.2','','','',''),(11,'7.1.1','Feu de brousse','','Future','','','1.1 |1.2','','','','');
/*!40000 ALTER TABLE `menace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-03 15:41:13
