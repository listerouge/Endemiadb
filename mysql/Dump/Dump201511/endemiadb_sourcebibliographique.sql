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
-- Table structure for table `sourcebibliographique`
--

DROP TABLE IF EXISTS `sourcebibliographique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sourcebibliographique` (
  `idSourceBibliographique` int(11) NOT NULL AUTO_INCREMENT,
  `TypeSource` enum('Journal article','Book','Conference paper','Conference proceedings','Newspaper Article','Manuscript','Report','Thesis','Electronic source') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TitreSource` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Auteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AnneePublication` year(4) DEFAULT NULL,
  `AnneeConsultation` year(4) DEFAULT NULL,
  `LieuMaisonEdition` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaisonEdition` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Journal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Volume` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pages` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Edition` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ISSNISBN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `TypeSoumission` enum('Published','In press','Submitted','In prep') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Published',
  `TypeBibliographie` enum('Taxonomy','Assessment','Taxonomy, Assessment') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Assessment',
  PRIMARY KEY (`idSourceBibliographique`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sourcebibliographique`
--

LOCK TABLES `sourcebibliographique` WRITE;
/*!40000 ALTER TABLE `sourcebibliographique` DISABLE KEYS */;
INSERT INTO `sourcebibliographique` VALUES (1,'Book','Flore de la Nouvelle-Calédonie et dépendances. Volume 16 : Dilléniacées, Goodéniacées, Iridacées, Campynématacées','Veillon J.-M., Müller I.H., Goldblatt P.',1990,0000,'Paris','Museum d\'Histoire Naturelle','','16','137','','2856541887','','Published','Taxonomy, Assessment'),(2,'Electronic source','Faune et Flore de Nouvelle-Calédonie','Endemia.nc',0000,2015,'','','','','','','','http://www.endemia.nc/','Published','Assessment'),(3,'Report','INC : Incendies et biodiversité des éco-systèmes en Nouvelle-Calédonie','Hély-Alleaume',2012,0000,'','','','','','','','','Published','Assessment'),(4,'Journal article','Wildfire risk for main vegetation units in a biodiversity hotspot: modeling approach in New Caledonia, South Pacific','Gomez C., Mangeas M., Curt T., Ibanez T., Munzinger J., Dumas P., Jérémy A., Despinoy M. and Hély C.',0000,0000,'','','Ecology and Evolution','5(2)','377-390','','','','Published','Assessment'),(5,'Book','Mines et Environnement en Nouvelle-Calédonie : les milieux sur substrats ultramafiques et leur restauration','L\'Huillier L., Jaffré T. et Wulff A.',2010,0000,'Nouméa','IAC','','','412','','','','Published','Assessment'),(6,'Journal article','The taxonomic database « FLORICAL » and characteristics of the indigenous flora of New Caledonia. ','Morat, P., Jaffré, T., Tronchet, F., Munzinger, J., Pillon, Y., Veillon, J.-M. and Chalopin, M. ',2012,0000,'','','Adansonia','334(2) ','177-219','','','','Published','Taxonomy'),(7,'Book','Flore de la Nouvelle-Calédonie, tome 24. Pittosporaceae','Tirel Ch., Veillon J.-M.',2002,NULL,'Paris','Museum d\'Histoire Naturelle',NULL,'24','178',NULL,NULL,NULL,'Published','Taxonomy, Assessment'),(8,'Journal article','Three new species of Pittosporum in New-Caledonia','Gemmill C.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'In prep','Taxonomy, Assessment');
/*!40000 ALTER TABLE `sourcebibliographique` ENABLE KEYS */;
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
