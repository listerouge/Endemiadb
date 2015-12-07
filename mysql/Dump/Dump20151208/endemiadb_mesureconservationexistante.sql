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
-- Table structure for table `mesureconservationexistante`
--

DROP TABLE IF EXISTS `mesureconservationexistante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesureconservationexistante` (
  `idMesureConservationExistante` int(11) NOT NULL AUTO_INCREMENT,
  `CodeConservation` varchar(8) CHARACTER SET utf8 NOT NULL,
  `MesureConservationExistante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OrganismeConservation` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `AireConservation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateDebut` year(4) DEFAULT NULL,
  `DateFin` year(4) DEFAULT NULL,
  `CommentaireMesureConservation` longtext COLLATE utf8_unicode_ci,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idMesureConservationExistante`),
  KEY `fk_codeiucn_CodeConservation` (`CodeConservation`),
  CONSTRAINT `fk_codeiucn_CodeConservation` FOREIGN KEY (`CodeConservation`) REFERENCES `codeiucn` (`CodeIUCN`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesureconservationexistante`
--

LOCK TABLES `mesureconservationexistante` WRITE;
/*!40000 ALTER TABLE `mesureconservationexistante` DISABLE KEYS */;
INSERT INTO `mesureconservationexistante` VALUES (1,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la forêt de Saille',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(2,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Mont Humboldt',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(3,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du massif du Kouakoué',0000,0000,'\r','2015-11-19 01:12:10','2015-12-03 22:50:34'),(4,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Mont Mou',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(5,'1.1','Présence en aire protégée','Province Sud','réserve intégrale de la Montagne des Sources',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(6,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Haute Dumbéa',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(7,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Mont Do',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(8,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Haute Pourina',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(9,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la fausse Yaté',0000,0000,'\r','2015-11-19 01:12:10','2015-11-19 01:12:17'),(10,'3.3.1','Réintroduction','Vale – Province Sud','Parc Provincial de la Rivière Bleue',2014,0000,'\"40 plants multipliés par Vale ont été plantés en deux secteurs du PPRB. Au mois de juillet 2015, seuls 10 plants étaient encore vivants.\"\r\n11,1.1,Présence en aire protégée,Province Nord,réserve de nature sauvage du Mont Panié,,,\r\n12,1.1,Présence en aire protégée,Province Sud,réserve naturelle du barrage de Yaté,,,\r\n13,1.1,Présence en aire protégée,Province Sud,réserve naturelle de la Forêt Cachée,,,\r\n14,1.1,Présence en aire protégée,Province Sud,Périmètre Ramsar,,,\r\n15,1.1,Présence en aire protégée,Province Sud,réserve naturelle du Pic Ningua,,,\r\n16,1.1,Présence en aire protégée,Province Sud,réserve naturelle du Cap N’Dua,,,\r\n17,1.1,Présence en aire protégée,Province Sud,réserve naturelle des Chutes de la Madeleine,,,\r\n18,1.1,Présence en aire protégée,Province Sud,réserve naturelle de la Vallée de la Thy,,,\r\n19,1.1,Présence en aire protégée,Province Sud,Parc provincial de la Rivière Bleue,,,\r\n20,1.1,Présence en aire protégée,Province Sud,réserve naturelle de la Forêt Nord,,,\r\n21,1.1,Présence en aire protégée,Province Sud,réserve naturelle du pic du grand Kaori,,,\r\n22,5.1.3,Inscription sur la liste des espèces protégées,Province Nord,,,,\r\n23,1.1,Présence en aire protégée,Province Nord, Réserve de nature sauvage du massif de l’Aoupinié,,,\r\n24,1.1,Présence en aire protégée,Province Sud,Parc des Grandes Fougères,,,\r\n25,1.1,Présence en aire protégée,Province Nord, aire de gestion durable des ressources de Netcha,,,\r\n26,1.1,Présence en aire protégée,Province Sud,réserve naturelle du Pic du Pin,,,\r\n27,1.1,Présence en aire protégée,Province Sud,réserve naturelle de la Haute Yaté,,,\r\n28,1.1,Présence en aire protégée,Province Sud, Parc Zoologique et Forestier,,,\r\n29,1.1,Présence en aire protégée,Province Sud,Le Parc du Ouen Toro - Albert Etuvé et Lucien Audet,,,\r\n','2015-11-19 01:12:10','2015-11-19 01:12:17'),(11,'1.1','Présence en aire protégée','Province Nord','réserve de nature sauvage du Mont Panié\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(12,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du barrage de Yaté\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(13,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Forêt Cachée\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(14,'1.1','Présence en aire protégée','Province Sud','Périmètre Ramsar\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(15,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Pic Ningua\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(16,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Cap N’Dua\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(17,'1.1','Présence en aire protégée','Province Sud','réserve naturelle des Chutes de la Madeleine\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(18,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Vallée de la Thy\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(19,'1.1','Présence en aire protégée','Province Sud','Parc provincial de la Rivière Bleue\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(20,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Forêt Nord\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(21,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du pic du grand Kaori\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(22,'5.1.3','Inscription sur la liste des espèces protégées','Province Nord','\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(23,'1.1','Présence en aire protégée','Province Nord',' Réserve de nature sauvage du massif de l’Aoupinié\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(24,'1.1','Présence en aire protégée','Province Sud','Parc des Grandes Fougères\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(25,'1.1','Présence en aire protégée','Province Nord',' aire de gestion durable des ressources de Netcha\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(26,'1.1','Présence en aire protégée','Province Sud','réserve naturelle du Pic du Pin\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(27,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Haute Yaté\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(28,'1.1','Présence en aire protégée','Province Sud',' Parc Zoologique et Forestier\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(29,'1.1','Présence en aire protégée','Province Sud','Le Parc du Ouen Toro - Albert Etuvé et Lucien Audet\r',NULL,NULL,NULL,'2015-11-19 01:12:10','2015-11-19 01:12:17'),(30,'1.1','Présence en aire protégée','Province Nord','réserve naturelle intégrale de la baie de Nékoro',NULL,NULL,NULL,'2015-12-03 00:59:55','2015-12-03 00:59:55'),(31,'1.1','Présence en aire protégée','Province Sud','réserve naturelle de la Nodéla',NULL,NULL,NULL,'2015-12-03 21:41:23','2015-12-03 21:41:23');
/*!40000 ALTER TABLE `mesureconservationexistante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08  8:56:14
