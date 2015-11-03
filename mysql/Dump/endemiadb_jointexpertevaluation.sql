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
-- Table structure for table `jointexpertevaluation`
--

DROP TABLE IF EXISTS `jointexpertevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointexpertevaluation` (
  `idJointExpertEvaluation` int(11) NOT NULL AUTO_INCREMENT,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `Expert_idExpert` varchar(10) NOT NULL,
  `RoleExpert` enum('Assessor','Contributor','Facilitator','Reviewer') NOT NULL DEFAULT 'Contributor',
  `OrdreExpert` int(11) NOT NULL,
  PRIMARY KEY (`idJointExpertEvaluation`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointexpertevaluation`
--

LOCK TABLES `jointexpertevaluation` WRITE;
/*!40000 ALTER TABLE `jointexpertevaluation` DISABLE KEYS */;
INSERT INTO `jointexpertevaluation` VALUES (1,1,'RlaNC1','Assessor',2),(2,1,'RlaNC2','Assessor',3),(3,1,'RlaNC3','Assessor',4),(4,1,'RlaNC4','Assessor',5),(5,1,'RlaNC5','Assessor',6),(6,1,'RlaNC6','Assessor',7),(7,1,'RlaNC7','Assessor',8),(8,1,'RlaNC8','Facilitator',1),(9,1,'RlaNC9','Assessor',1),(10,1,'RlaNC10','Reviewer',1),(11,2,'RlaNC1','Assessor',2),(12,2,'RlaNC2','Assessor',3),(13,2,'RlaNC3','Assessor',4),(14,2,'RlaNC4','Assessor',5),(15,2,'RlaNC5','Assessor',6),(16,2,'RlaNC6','Assessor',7),(17,2,'RlaNC7','Assessor',8),(18,2,'RlaNC8','Facilitator',1),(19,2,'RlaNC9','Assessor',1),(20,2,'RlaNC10','Reviewer',1),(21,24,'RlaNC1','Assessor',2),(22,24,'RlaNC2','Assessor',3),(23,24,'RlaNC3','Assessor',4),(24,24,'RlaNC4','Assessor',5),(25,24,'RlaNC5','Assessor',6),(26,24,'RlaNC6','Assessor',7),(27,24,'RlaNC7','Assessor',8),(28,24,'RlaNC8','Facilitator',1),(29,24,'RlaNC9','Assessor',1),(30,24,'RlaNC10','Reviewer',1),(31,3,'RlaNC1','Assessor',2),(32,3,'RlaNC2','Assessor',3),(33,3,'RlaNC3','Assessor',4),(34,3,'RlaNC4','Assessor',5),(35,3,'RlaNC5','Assessor',6),(36,3,'RlaNC6','Assessor',7),(37,3,'RlaNC7','Assessor',8),(38,3,'RlaNC8','Facilitator',1),(39,3,'RlaNC9','Assessor',1),(40,3,'RlaNC10','Reviewer',1),(41,3,'RlaNC11','Contributor',1),(42,4,'RlaNC1','Assessor',2),(43,4,'RlaNC2','Assessor',3),(44,4,'RlaNC3','Assessor',4),(45,4,'RlaNC4','Assessor',5),(46,4,'RlaNC5','Assessor',6),(47,4,'RlaNC6','Assessor',7),(48,4,'RlaNC7','Assessor',8),(49,4,'RlaNC8','Facilitator',1),(50,4,'RlaNC9','Assessor',1),(51,4,'RlaNC10','Reviewer',1),(52,5,'RlaNC1','Assessor',2),(53,5,'RlaNC2','Assessor',3),(54,5,'RlaNC3','Assessor',4),(55,5,'RlaNC4','Assessor',5),(56,5,'RlaNC5','Assessor',6),(57,5,'RlaNC6','Assessor',7),(58,5,'RlaNC7','Assessor',8),(59,5,'RlaNC8','Facilitator',1),(60,5,'RlaNC9','Assessor',1),(61,5,'RlaNC10','Reviewer',1),(62,6,'RlaNC1','Assessor',2),(63,6,'RlaNC2','Assessor',3),(64,6,'RlaNC3','Assessor',4),(65,6,'RlaNC4','Assessor',5),(66,6,'RlaNC5','Assessor',6),(67,6,'RlaNC6','Assessor',7),(68,6,'RlaNC7','Assessor',8),(69,6,'RlaNC8','Facilitator',1),(70,6,'RlaNC9','Assessor',1),(71,6,'RlaNC10','Reviewer',1),(72,7,'RlaNC1','Assessor',2),(73,7,'RlaNC2','Assessor',3),(74,7,'RlaNC3','Assessor',4),(75,7,'RlaNC4','Assessor',5),(76,7,'RlaNC5','Assessor',6),(77,7,'RlaNC6','Assessor',7),(78,7,'RlaNC7','Assessor',8),(79,7,'RlaNC8','Facilitator',1),(80,7,'RlaNC9','Assessor',1),(81,7,'RlaNC10','Reviewer',1),(82,8,'RlaNC1','Assessor',2),(83,8,'RlaNC2','Assessor',3),(84,8,'RlaNC3','Assessor',4),(85,8,'RlaNC4','Assessor',5),(86,8,'RlaNC5','Assessor',6),(87,8,'RlaNC6','Assessor',7),(88,8,'RlaNC7','Assessor',8),(89,8,'RlaNC8','Facilitator',1),(90,8,'RlaNC9','Assessor',1),(91,8,'RlaNC10','Reviewer',1),(92,8,'RlaNC11','Contributor',1),(93,9,'RlaNC1','Assessor',2),(94,9,'RlaNC2','Assessor',3),(95,9,'RlaNC3','Assessor',4),(96,9,'RlaNC4','Assessor',5),(97,9,'RlaNC5','Assessor',6),(98,9,'RlaNC6','Assessor',7),(99,9,'RlaNC7','Assessor',8),(100,9,'RlaNC8','Facilitator',1),(101,9,'RlaNC9','Assessor',1),(102,9,'RlaNC10','Reviewer',1),(103,10,'RlaNC1','Assessor',2),(104,10,'RlaNC2','Assessor',3),(105,10,'RlaNC3','Assessor',4),(106,10,'RlaNC4','Assessor',5),(107,10,'RlaNC5','Assessor',6),(108,10,'RlaNC6','Assessor',7),(109,10,'RlaNC7','Assessor',8),(110,10,'RlaNC8','Facilitator',1),(111,10,'RlaNC9','Assessor',1),(112,10,'RlaNC10','Reviewer',1),(113,11,'RlaNC1','Assessor',2),(114,11,'RlaNC2','Assessor',3),(115,11,'RlaNC3','Assessor',4),(116,11,'RlaNC4','Assessor',5),(117,11,'RlaNC5','Assessor',6),(118,11,'RlaNC6','Assessor',7),(119,11,'RlaNC7','Assessor',8),(120,11,'RlaNC8','Facilitator',1),(121,11,'RlaNC9','Assessor',1),(122,11,'RlaNC10','Reviewer',1),(123,12,'RlaNC1','Assessor',2),(124,12,'RlaNC2','Assessor',3),(125,12,'RlaNC3','Assessor',4),(126,12,'RlaNC4','Assessor',5),(127,12,'RlaNC5','Assessor',6),(128,12,'RlaNC6','Assessor',7),(129,12,'RlaNC7','Assessor',8),(130,12,'RlaNC8','Facilitator',1),(131,12,'RlaNC9','Assessor',1),(132,12,'RlaNC10','Reviewer',1),(133,12,'RlaNC12','Contributor',1),(134,13,'RlaNC1','Assessor',2),(135,13,'RlaNC2','Assessor',3),(136,13,'RlaNC3','Assessor',4),(137,13,'RlaNC4','Assessor',5),(138,13,'RlaNC5','Assessor',6),(139,13,'RlaNC6','Assessor',7),(140,13,'RlaNC7','Assessor',8),(141,13,'RlaNC8','Facilitator',1),(142,13,'RlaNC9','Assessor',1),(143,13,'RlaNC10','Reviewer',1),(144,14,'RlaNC1','Assessor',2),(145,14,'RlaNC2','Assessor',3),(146,14,'RlaNC3','Assessor',4),(147,14,'RlaNC4','Assessor',5),(148,14,'RlaNC5','Assessor',6),(149,14,'RlaNC6','Assessor',7),(150,14,'RlaNC7','Assessor',8),(151,14,'RlaNC8','Facilitator',1),(152,14,'RlaNC9','Assessor',1),(153,14,'RlaNC10','Reviewer',1),(154,15,'RlaNC1','Assessor',2),(155,15,'RlaNC2','Assessor',3),(156,15,'RlaNC3','Assessor',4),(157,15,'RlaNC4','Assessor',5),(158,15,'RlaNC5','Assessor',6),(159,15,'RlaNC6','Assessor',7),(160,15,'RlaNC7','Assessor',8),(161,15,'RlaNC8','Facilitator',1),(162,15,'RlaNC9','Assessor',1),(163,15,'RlaNC10','Reviewer',1),(164,16,'RlaNC1','Assessor',2),(165,16,'RlaNC2','Assessor',3),(166,16,'RlaNC3','Assessor',4),(167,16,'RlaNC4','Assessor',5),(168,16,'RlaNC5','Assessor',6),(169,16,'RlaNC6','Assessor',7),(170,16,'RlaNC7','Assessor',8),(171,16,'RlaNC8','Facilitator',1),(172,16,'RlaNC9','Assessor',1),(173,16,'RlaNC10','Reviewer',1),(174,17,'RlaNC1','Assessor',2),(175,17,'RlaNC2','Assessor',3),(176,17,'RlaNC3','Assessor',4),(177,17,'RlaNC4','Assessor',5),(178,17,'RlaNC5','Assessor',6),(179,17,'RlaNC6','Assessor',7),(180,17,'RlaNC7','Assessor',8),(181,17,'RlaNC8','Facilitator',1),(182,17,'RlaNC9','Assessor',1),(183,17,'RlaNC10','Reviewer',1),(184,18,'RlaNC1','Assessor',2),(185,18,'RlaNC2','Assessor',3),(186,18,'RlaNC3','Assessor',4),(187,18,'RlaNC4','Assessor',5),(188,18,'RlaNC5','Assessor',6),(189,18,'RlaNC6','Assessor',7),(190,18,'RlaNC7','Assessor',8),(191,18,'RlaNC8','Facilitator',1),(192,18,'RlaNC9','Assessor',1),(193,18,'RlaNC10','Reviewer',1),(194,19,'RlaNC1','Assessor',2),(195,19,'RlaNC2','Assessor',3),(196,19,'RlaNC3','Assessor',4),(197,19,'RlaNC4','Assessor',5),(198,19,'RlaNC5','Assessor',6),(199,19,'RlaNC6','Assessor',7),(200,19,'RlaNC7','Assessor',8),(201,19,'RlaNC8','Facilitator',1),(202,19,'RlaNC9','Assessor',1),(203,19,'RlaNC10','Reviewer',1),(204,20,'RlaNC1','Assessor',2),(205,20,'RlaNC2','Assessor',3),(206,20,'RlaNC3','Assessor',4),(207,20,'RlaNC4','Assessor',5),(208,20,'RlaNC5','Assessor',6),(209,20,'RlaNC6','Assessor',7),(210,20,'RlaNC7','Assessor',8),(211,20,'RlaNC8','Facilitator',1),(212,20,'RlaNC9','Assessor',1),(213,20,'RlaNC10','Reviewer',1),(214,20,'RlaNC11','Contributor',1),(215,21,'RlaNC1','Assessor',2),(216,21,'RlaNC2','Assessor',3),(217,21,'RlaNC3','Assessor',4),(218,21,'RlaNC4','Assessor',5),(219,21,'RlaNC5','Assessor',6),(220,21,'RlaNC6','Assessor',7),(221,21,'RlaNC7','Assessor',8),(222,21,'RlaNC8','Facilitator',1),(223,21,'RlaNC9','Assessor',1),(224,21,'RlaNC10','Reviewer',1),(225,22,'RlaNC1','Assessor',2),(226,22,'RlaNC2','Assessor',3),(227,22,'RlaNC3','Assessor',4),(228,22,'RlaNC4','Assessor',5),(229,22,'RlaNC5','Assessor',6),(230,22,'RlaNC6','Assessor',7),(231,22,'RlaNC7','Assessor',8),(232,22,'RlaNC8','Facilitator',1),(233,22,'RlaNC9','Assessor',1),(234,22,'RlaNC10','Reviewer',1),(235,23,'RlaNC1','Assessor',2),(236,23,'RlaNC2','Assessor',3),(237,23,'RlaNC3','Assessor',4),(238,23,'RlaNC4','Assessor',5),(239,23,'RlaNC5','Assessor',6),(240,23,'RlaNC6','Assessor',7),(241,23,'RlaNC7','Assessor',8),(242,23,'RlaNC8','Facilitator',1),(243,23,'RlaNC9','Assessor',1),(244,23,'RlaNC10','Reviewer',1),(245,25,'RlaNC1','Assessor',2),(246,25,'RlaNC2','Assessor',3),(247,25,'RlaNC3','Assessor',4),(248,25,'RlaNC4','Assessor',5),(249,25,'RlaNC5','Assessor',6),(250,25,'RlaNC6','Assessor',7),(251,25,'RlaNC7','Assessor',8),(252,25,'RlaNC8','Facilitator',1),(253,25,'RlaNC9','Assessor',1),(254,25,'RlaNC10','Reviewer',1);
/*!40000 ALTER TABLE `jointexpertevaluation` ENABLE KEYS */;
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
