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
  `CodeHabitat` varchar(5) NOT NULL,
  `DescriptionHabitat` varchar(255) NOT NULL,
  `Substrat` varchar(255) NOT NULL,
  PRIMARY KEY (`idHabitat`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
INSERT INTO `habitat` VALUES (1,'Terrestrial','3.5','Maquis dense sur pente','\r'),(2,'Terrestrial','3.5','Maquis de basse altitude','ultramafique\r'),(3,'Terrestrial','1.6','Forêt dense humide','ultramafique\r'),(4,'Terrestrial','3.7','Maquis d\'altitude','ultramafique\r'),(5,'Terrestrial','3.5','Maquis ligno-herbacé','cuirasse ferralitique\r'),(6,'Terrestrial','3.5','Maquis ','micaschiste\r'),(7,'Terrestrial','1.6','Lisière de forêt','ultramafique\r'),(8,'Terrestrial','3.5','Maquis sclérophylle ligno-herbacé','ultramafique\r'),(9,'Terrestrial','1.6','Formation paraforestière','ultramafique\r'),(10,'Terrestrial','1.6','Forêt dense humide','volcano-sédimentaire\r'),(11,'Terrestrial','3.5','Maquis ligno-herbacé de basse altitude','ultramafique\r'),(12,'Terrestrial','1.9','Forêt dense humide d\'altitude','ultramafique\r'),(13,'Terrestrial','3.5','Maquis ligno-herbacé','affleurements de péridotite\r'),(14,'Terrestrial','1.9','Forêt dense humide d\'altitude','schisteux\r'),(15,'Terrestrial','1.6','Forêt dense humide','schisteux\r'),(16,'Terrestrial','1.6','Forêt ripisylve','\r'),(17,'Terrestrial','3.7','Maquis sclérophylle ligno-herbacé d\'altitude','ultramafique\r'),(18,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','ultramafique\r'),(19,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','affleurements de péridotite\r'),(20,'Terrestrial','3.5','Maquis de basse altitude','péridotite altérée\r'),(21,'Terrestrial','3.7','Maquis ligno-herbacé d\'altitude','volcano-sédimentaire\r'),(22,'Terrestrial','3.5','Maquis de basse altitude','volcano-sédimentaire\r'),(23,'Terrestrial','1.9','Forêt dense humide d\'altitude','volcano-sédimentaire\r'),(24,'Terrestrial','1.6','Lisière de forêt','volcano-sédimentaire\r');
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

-- Dump completed on 2015-11-03 15:41:09
