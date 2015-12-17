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
-- Table structure for table `expert`
--

DROP TABLE IF EXISTS `expert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expert` (
  `idExpert` varchar(10) NOT NULL,
  `NomExpert` varchar(45) NOT NULL,
  `PrenomExpert` varchar(45) NOT NULL,
  `OrganismeExpert` varchar(45) DEFAULT NULL,
  `EmailExpert` varchar(255) NOT NULL,
  PRIMARY KEY (`idExpert`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert`
--

LOCK TABLES `expert` WRITE;
/*!40000 ALTER TABLE `expert` DISABLE KEYS */;
INSERT INTO `expert` VALUES ('RlaNC01','Amice','Rémi','','amicelr@lagoon.nc\r'),('RlaNC02','Butin','Jean-Pierre','','jp.butin16@hotmail.fr\r'),('RlaNC03','Cazé','Hélène','','helene.caze@me.com\r'),('RlaNC04','Garnier','Dominique','Province Sud _ DENV','dominique.garnier@province-sud.nc\r'),('RlaNC05','Lannuzel','Guillaume','IAC','lannuzel@iac.nc\r'),('RlaNC06','Leborgne','Thomas','Province Sud _ DENV','Thomas.Leborgne@province-sud.nc\r'),('RlaNC07','McCoy','Stéphane','VALE','Stephane.McCoy@vale.com\r'),('RlaNC08','Chanfreau','Stéphanie ','Association Endemia','schanfreau@endemia.nc\r'),('RlaNC09','Veillon','Jean-Marie','','jmveillon@mls.nc\r'),('RlaNC10','Tanguy','Vincent','Association Endemia','coordination@endemia.nc\r'),('RlaNC11','Fogliani','Bruno','IAC','fogliani@iac.nc\r'),('RlaNC12','Gâteblé','Gildas','IAC','gateble@iac.nc\r'),('RlaNC13','Gemmill','Chrissen','Université de Waikato','gemmill@waikato.ac.nz'),('RlaNC14','Maggia','Laurent','IAC','maggia@iac.nc'),('RlaNC15','Pain','Anthony','IAC','pain@iac.nc'),('RlaNC16','Letocart','Daniel',NULL,'daniel.letocart@gmail.com'),('RlaNC17','Letocart','Irène',NULL,'daniel.letocart@gmail.com'),('RlaNC18','Dumontet','Vincent','CNRS','vincent.dumontet@icsn.cnrs-gif.fr'),('RlaNC19','Butaud','Jean-François',NULL,'jfbutaud@hotmail.com'),('RlaNC20','Fleurot','Dominique','Province Nord','d.fleurot@province-nord.nc');
/*!40000 ALTER TABLE `expert` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 18:00:59