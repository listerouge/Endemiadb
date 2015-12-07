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
-- Table structure for table `habitat`
--

DROP TABLE IF EXISTS `habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat` (
  `idHabitat` int(11) NOT NULL AUTO_INCREMENT,
  `Systeme` enum('Terrestrial','Freshwater','Marine') NOT NULL DEFAULT 'Terrestrial',
  `CodeHabitat` varchar(8) NOT NULL,
  `DescriptionHabitat` varchar(255) NOT NULL,
  `Substrat` varchar(255) DEFAULT NULL,
  `DateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idHabitat`),
  KEY `fk_codeiucn_CodeHabitat` (`CodeHabitat`),
  CONSTRAINT `fk_codeiucn_CodeHabitat` FOREIGN KEY (`CodeHabitat`) REFERENCES `codeiucn` (`CodeIUCN`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
INSERT INTO `habitat` VALUES (1,'Terrestrial','3.5','Maquis dense sur pente','\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(2,'Terrestrial','3.5','Maquis de basse altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(3,'Terrestrial','1.6','Forêt dense humide','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(4,'Terrestrial','3.7','Maquis d\'altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(5,'Terrestrial','3.5','Maquis ligno-herbacé','cuirasse ferralitique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(6,'Terrestrial','3.5','Maquis ','micaschiste\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(7,'Terrestrial','1.6','Lisière de forêt','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(8,'Terrestrial','3.5','Maquis sclérophylle ligno-herbacé','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(9,'Terrestrial','1.6','Formation paraforestière','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(10,'Terrestrial','1.6','Forêt dense humide','volcano-sédimentaire\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(11,'Terrestrial','3.5','Maquis ligno-herbacé de basse altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(12,'Terrestrial','1.9','Forêt dense humide d\'altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(13,'Terrestrial','3.5','Maquis ligno-herbacé','affleurements de péridotite\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(14,'Terrestrial','1.9','Forêt dense humide d\'altitude','schisteux\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(15,'Terrestrial','1.6','Forêt dense humide','schisteux\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(16,'Terrestrial','1.6','Forêt ripisylve','\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(17,'Terrestrial','3.7','Maquis sclérophylle ligno-herbacé d\'altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(18,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','ultramafique\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(19,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','affleurements de péridotite\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(20,'Terrestrial','3.5','Maquis de basse altitude','péridotite altérée\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(21,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','volcano-sédimentaire\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(22,'Terrestrial','3.5','Maquis de basse altitude','volcano-sédimentaire\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(23,'Terrestrial','1.9','Forêt dense humide d\'altitude','volcano-sédimentaire\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(24,'Terrestrial','1.6','Lisière de forêt','volcano-sédimentaire\r','2015-11-19 01:27:07','2015-11-19 01:27:07'),(25,'Terrestrial','3.5','Maquis','ultramafique','2015-12-02 04:27:02','2015-12-02 04:27:02'),(26,'Terrestrial','1.6','Forêt dense humide','grauwackes','2015-12-02 04:28:39','2015-12-02 04:28:39'),(27,'Terrestrial','1.5','Forêt sclérophylle de basse altitude',NULL,'2015-12-02 04:34:07','2015-12-02 04:34:07'),(28,'Terrestrial','1.5','Fourrés littoraux','calcaire','2015-12-02 04:40:04','2015-12-02 04:40:04'),(29,'Terrestrial','1.5','Fourrés littoraux','basalte','2015-12-02 04:40:04','2015-12-02 04:40:04'),(30,'Terrestrial','1.5','Fourrés littoraux','schistes','2015-12-02 04:40:04','2015-12-02 04:40:04'),(31,'Terrestrial','1.5','Forêt sclérophylle','calcaire','2015-12-02 04:40:44','2015-12-02 04:40:44'),(32,'Terrestrial','1.5','Forêt sclérophylle','schistes','2015-12-02 04:40:44','2015-12-02 04:40:44'),(33,'Terrestrial','1.5','Forêt sclérophylle','basalte','2015-12-02 04:40:45','2015-12-02 04:40:45'),(34,'Terrestrial','3.5','Maquis','terrains serpentinisés érodés','2015-12-02 04:45:56','2015-12-02 04:45:56'),(35,'Terrestrial','3.5','Maquis','volcano-sédimentaire','2015-12-02 04:51:24','2015-12-02 04:51:24'),(36,'Terrestrial','1.5','Formation sclérophylle relique','calcaire','2015-12-02 05:04:41','2015-12-02 05:04:41'),(37,'Terrestrial','1.5','Formation sclérophylle relique','argiles noires tropicales','2015-12-02 05:04:41','2015-12-02 05:04:41'),(38,'Terrestrial','1.6','Forêt basse','ultramafique','2015-12-02 05:18:47','2015-12-02 05:18:47'),(39,'Terrestrial','1.6','Sous-bois de forêt dense humide','calcaire madréporique','2015-12-02 05:21:24','2015-12-02 05:21:24'),(40,'Terrestrial','1.6','Forêt dense humide','calcaire','2015-12-02 05:51:27','2015-12-02 05:51:27'),(41,'Terrestrial','1.6','Forêt-gallerie','schisteux','2015-12-02 05:52:48','2015-12-02 05:52:48'),(42,'Terrestrial','14.6','Reliquats de forêt humide','ultramafique','2015-12-02 06:01:08','2015-12-02 06:01:08'),(43,'Terrestrial','3.6','Fourré ouvert issus de forêt humide secondarisé','terrasse coralliennes émérgées','2015-12-02 06:05:57','2015-12-02 06:05:57'),(44,'Terrestrial','1.6','Formation paraforestière','schistes','2015-12-02 06:09:20','2015-12-02 06:09:20'),(45,'Terrestrial','1.9','Forêt dense humide d\'altitude','micaschiste','2015-12-02 06:10:26','2015-12-02 06:10:26'),(46,'Terrestrial','3.5','Maquis','Alluvions serpentineux','2015-12-02 06:13:21','2015-12-02 06:13:21'),(47,'Terrestrial','1.5','Forêt sclérophylle de basse altitude','calcaire','2015-12-02 06:19:31','2015-12-02 06:19:31');
/*!40000 ALTER TABLE `habitat` ENABLE KEYS */;
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
