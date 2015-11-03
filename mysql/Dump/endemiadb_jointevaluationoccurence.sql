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
-- Table structure for table `jointevaluationoccurence`
--

DROP TABLE IF EXISTS `jointevaluationoccurence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointevaluationoccurence` (
  `idJointEvaluationOccurence` int(11) NOT NULL AUTO_INCREMENT,
  `Occurence_idOccurence` int(11) NOT NULL,
  `EvaluationListeRouge_idEvaluationListeRouge` int(11) NOT NULL,
  `EvaluationListeRouge_Taxon_idTaxEndemia` int(11) NOT NULL,
  PRIMARY KEY (`idJointEvaluationOccurence`)
) ENGINE=InnoDB AUTO_INCREMENT=2012 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointevaluationoccurence`
--

LOCK TABLES `jointevaluationoccurence` WRITE;
/*!40000 ALTER TABLE `jointevaluationoccurence` DISABLE KEYS */;
INSERT INTO `jointevaluationoccurence` VALUES (1,1,1,1315),(2,2,1,1315),(3,3,1,1315),(4,4,1,1315),(5,5,1,1315),(6,6,1,1315),(7,7,1,1315),(8,8,1,1315),(9,9,1,1315),(10,10,1,1315),(11,11,1,1315),(12,12,1,1315),(13,13,1,1315),(14,14,1,1315),(15,15,1,1315),(16,16,1,1315),(17,17,1,1315),(18,18,1,1315),(19,19,1,1315),(20,20,1,1315),(21,21,1,1315),(22,22,1,1315),(23,23,1,1315),(24,24,1,1315),(25,25,1,1315),(26,26,1,1315),(27,27,1,1315),(28,28,1,1315),(29,29,1,1315),(30,30,1,1315),(31,31,1,1315),(32,32,1,1315),(33,33,1,1315),(34,34,1,1315),(35,35,1,1315),(36,36,1,1315),(37,37,1,1315),(38,38,1,1315),(39,39,1,1315),(40,40,1,1315),(41,41,1,1315),(42,42,1,1315),(43,43,1,1315),(44,44,1,1315),(45,45,1,1315),(46,46,1,1315),(47,47,1,1315),(48,48,1,1315),(49,49,1,1315),(50,50,1,1315),(51,51,1,1315),(52,52,1,1315),(53,53,1,1315),(54,54,1,1315),(55,55,1,1315),(56,56,1,1315),(57,57,1,1315),(58,58,1,1315),(59,59,1,1315),(60,60,1,1315),(61,61,1,1315),(62,62,1,1315),(63,63,1,1315),(64,64,1,1315),(65,65,1,1315),(66,66,1,1315),(67,67,1,1315),(68,68,1,1315),(69,69,1,1315),(70,70,1,1315),(71,71,1,1315),(72,72,1,1315),(73,73,1,1315),(74,74,1,1315),(75,75,1,1315),(76,76,1,1315),(77,77,1,1315),(78,78,1,1315),(79,79,1,1315),(80,80,1,1315),(81,81,1,1315),(82,82,1,1315),(83,83,1,1315),(84,84,1,1315),(85,85,1,1315),(86,86,1,1315),(87,87,1,1315),(88,88,1,1315),(89,89,1,1315),(90,90,1,1315),(91,91,1,1315),(92,92,1,1315),(93,93,1,1315),(94,94,1,1315),(95,95,1,1315),(96,96,1,1315),(97,97,1,1315),(98,98,1,1315),(99,99,1,1315),(100,100,1,1315),(101,101,1,1315),(102,102,1,1315),(103,103,1,1315),(104,104,1,1315),(105,105,1,1315),(106,106,1,1315),(107,107,1,1315),(108,108,1,1315),(109,109,1,1315),(110,110,1,1315),(111,111,1,1315),(112,112,1,1315),(113,113,1,1315),(114,114,1,1315),(115,115,1,1315),(116,116,1,1315),(117,117,1,1315),(118,118,1,1315),(119,119,1,1315),(120,120,1,1315),(121,121,1,1315),(122,122,1,1315),(123,123,1,1315),(124,124,1,1315),(125,125,1,1315),(126,126,1,1315),(127,127,1,1315),(128,128,1,1315),(129,129,1,1315),(130,130,1,1315),(131,131,1,1315),(132,132,1,1315),(133,133,1,1315),(134,134,1,1315),(135,135,1,1315),(136,136,1,1315),(137,137,1,1315),(138,138,1,1315),(139,139,1,1315),(140,140,1,1315),(141,141,1,1315),(142,142,1,1315),(143,143,1,1315),(144,144,1,1315),(145,145,1,1315),(146,146,1,1315),(147,147,1,1315),(148,148,1,1315),(149,149,1,1315),(150,150,1,1315),(151,151,1,1315),(152,152,1,1315),(153,153,1,1315),(154,154,1,1315),(155,155,1,1315),(156,156,1,1315),(157,157,1,1315),(158,158,1,1315),(159,159,1,1315),(160,160,1,1315),(161,161,1,1315),(162,162,1,1315),(163,163,1,1315),(164,164,1,1315),(165,165,1,1315),(166,166,1,1315),(167,167,1,1315),(168,168,1,1315),(169,169,1,1315),(170,170,1,1315),(171,171,1,1315),(172,172,1,1315),(173,173,1,1315),(174,174,1,1315),(175,175,1,1315),(176,176,1,1315),(177,177,1,1315),(178,178,1,1315),(179,179,1,1315),(180,180,1,1315),(181,181,1,1315),(182,182,1,1315),(183,183,1,1315),(184,184,1,1315),(185,185,1,1315),(186,186,1,1315),(187,187,1,1315),(188,188,1,1315),(189,189,1,1315),(190,190,1,1315),(191,191,1,1315),(192,192,1,1315),(193,193,1,1315),(194,194,1,1315),(195,195,1,1315),(196,196,1,1315),(197,197,1,1315),(198,198,1,1315),(199,199,1,1315),(200,200,1,1315),(201,201,1,1315),(202,202,1,1315),(203,203,1,1315),(204,204,1,1315),(205,205,1,1315),(206,206,1,1315),(207,207,1,1315),(208,208,1,1315),(209,209,1,1315),(210,210,1,1315),(211,211,1,1315),(212,212,1,1315),(213,213,1,1315),(214,214,1,1315),(215,215,1,1315),(216,216,1,1315),(217,217,1,1315),(218,218,1,1315),(219,219,1,1315),(220,220,1,1315),(221,221,1,1315),(222,222,1,1315),(223,223,1,1315),(224,224,1,1315),(225,225,1,1315),(226,226,1,1315),(227,227,1,1315),(228,228,1,1315),(229,229,1,1315),(230,230,1,1315),(231,231,1,1315),(232,232,1,1315),(233,233,1,1315),(234,234,1,1315),(235,235,1,1315),(236,236,1,1315),(237,237,1,1315),(238,238,1,1315),(239,239,1,1315),(240,240,1,1315),(241,241,1,1315),(242,242,1,1315),(243,243,1,1315),(244,244,1,1315),(245,245,1,1315),(246,246,1,1315),(247,247,1,1315),(248,248,1,1315),(249,249,1,1315),(250,250,2,319),(251,251,2,319),(252,252,2,319),(253,253,2,319),(254,254,2,319),(255,255,2,319),(256,256,2,319),(257,257,2,319),(258,258,2,319),(259,259,2,319),(260,260,2,319),(261,261,2,319),(262,262,2,319),(263,263,2,319),(264,264,2,319),(265,265,2,319),(266,266,2,319),(267,267,2,319),(268,268,2,319),(269,269,2,319),(270,270,2,319),(271,271,2,319),(272,272,2,319),(273,273,2,319),(274,274,2,319),(275,275,2,319),(276,276,2,319),(277,277,2,319),(278,278,2,319),(279,279,3,3602),(280,280,3,3602),(281,281,3,3602),(282,282,3,3602),(283,283,3,3602),(284,284,3,3602),(285,285,3,3602),(286,286,3,3602),(287,287,3,3602),(288,288,3,3602),(289,289,3,3602),(290,290,3,3602),(291,291,3,3602),(292,292,3,3602),(293,293,3,3602),(294,294,3,3602),(295,295,3,3602),(296,296,4,320),(297,297,4,320),(298,298,4,320),(299,299,4,320),(300,300,4,320),(301,301,4,320),(302,302,4,320),(303,303,4,320),(304,304,4,320),(305,305,4,320),(306,306,5,2443),(307,307,5,2443),(308,308,5,2443),(309,309,5,2443),(310,310,5,2443),(311,311,5,2443),(312,312,5,2443),(313,313,5,2443),(314,314,5,2443),(315,315,5,2443),(316,316,5,2443),(317,317,5,2443),(318,318,5,2443),(319,319,5,2443),(320,320,5,2443),(321,321,5,2443),(322,322,5,2443),(323,323,5,2443),(324,324,5,2443),(325,325,5,2443),(326,326,5,2443),(327,327,5,2443),(328,328,5,2443),(329,329,5,2443),(330,330,5,2443),(331,331,5,2443),(332,332,5,2443),(333,333,5,2443),(334,334,5,2443),(335,335,5,2443),(336,336,5,2443),(337,337,5,2443),(338,338,5,2443),(339,339,5,2443),(340,340,5,2443),(341,341,5,2443),(342,342,5,2443),(343,343,5,2443),(344,344,5,2443),(345,345,5,2443),(346,346,5,2443),(347,347,5,2443),(348,348,5,2443),(349,349,5,2443),(350,350,5,2443),(351,351,5,2443),(352,352,5,2443),(353,353,5,2443),(354,354,5,2443),(355,355,5,2443),(356,356,5,2443),(357,357,5,2443),(358,358,5,2443),(359,359,5,2443),(360,360,5,2443),(361,361,5,2443),(362,362,5,2443),(363,363,5,2443),(364,364,5,2443),(365,365,5,2443),(366,366,5,2443),(367,367,5,2443),(368,368,5,2443),(369,369,5,2443),(370,370,5,2443),(371,371,5,2443),(372,372,5,2443),(373,373,5,2443),(374,374,5,2443),(375,375,5,2443),(376,376,5,2443),(377,377,5,2443),(378,378,6,3603),(379,379,6,3603),(380,380,6,3603),(381,381,6,3603),(382,382,6,3603),(383,383,6,3603),(384,384,6,3603),(385,385,6,3603),(386,386,6,3603),(387,387,6,3603),(388,388,6,3603),(389,389,6,3603),(390,390,6,3603),(391,391,6,3603),(392,392,6,3603),(393,393,6,3603),(394,394,6,3603),(395,395,6,3603),(396,396,6,3603),(397,397,6,3603),(398,398,6,3603),(399,399,6,3603),(400,400,7,3604),(401,401,7,3604),(402,402,7,3604),(403,403,7,3604),(404,404,7,3604),(405,405,7,3604),(406,406,7,3604),(407,407,7,3604),(408,408,7,3604),(409,409,7,3604),(410,410,7,3604),(411,411,7,3604),(412,412,7,3604),(413,413,7,3604),(414,414,7,3604),(415,415,7,3604),(416,416,7,3604),(417,417,7,3604),(418,418,7,3604),(419,419,7,3604),(420,420,7,3604),(421,421,7,3604),(422,422,7,3604),(423,423,7,3604),(424,424,7,3604),(425,425,7,3604),(426,426,7,3604),(427,427,7,3604),(428,428,7,3604),(429,429,7,3604),(430,430,7,3604),(431,431,7,3604),(432,432,7,3604),(433,433,7,3604),(434,434,7,3604),(435,435,7,3604),(436,436,7,3604),(437,437,8,3605),(438,438,8,3605),(439,439,8,3605),(440,440,8,3605),(441,441,8,3605),(442,442,8,3605),(443,443,8,3605),(444,444,8,3605),(445,445,9,3606),(446,446,9,3606),(447,447,9,3606),(448,448,9,3606),(449,449,9,3606),(450,450,9,3606),(451,451,9,3606),(452,452,9,3606),(453,453,9,3606),(454,454,9,3606),(455,455,9,3606),(456,456,9,3606),(457,457,9,3606),(458,458,9,3606),(459,459,9,3606),(460,460,9,3606),(461,461,9,3606),(462,462,9,3606),(463,463,9,3606),(464,464,9,3606),(465,465,9,3606),(466,466,9,3606),(467,467,9,3606),(468,468,9,3606),(469,469,9,3606),(470,470,9,3606),(471,471,9,3606),(472,472,9,3606),(473,473,9,3606),(474,474,9,3606),(475,475,9,3606),(476,476,9,3606),(477,477,9,3606),(478,478,9,3606),(479,479,9,3606),(480,480,9,3606),(481,481,9,3606),(482,482,9,3606),(483,483,9,3606),(484,484,9,3606),(485,485,9,3606),(486,486,9,3606),(487,487,9,3606),(488,488,9,3606),(489,489,9,3606),(490,490,9,3606),(491,491,9,3606),(492,492,9,3606),(493,493,9,3606),(494,494,9,3606),(495,495,9,3606),(496,496,9,3606),(497,497,9,3606),(498,498,9,3606),(499,499,9,3606),(500,500,9,3606),(501,501,9,3606),(502,502,9,3606),(503,503,9,3606),(504,504,9,3606),(505,505,9,3606),(506,506,9,3606),(507,507,9,3606),(508,508,9,3606),(509,509,9,3606),(510,510,9,3606),(511,511,9,3606),(512,512,9,3606),(513,513,9,3606),(514,514,9,3606),(515,515,9,3606),(516,516,9,3606),(517,517,9,3606),(518,518,9,3606),(519,519,9,3606),(520,520,9,3606),(521,521,10,3607),(522,522,10,3607),(523,523,10,3607),(524,524,10,3607),(525,525,10,3607),(526,526,10,3607),(527,527,10,3607),(528,528,10,3607),(529,529,10,3607),(530,530,10,3607),(531,531,10,3607),(532,532,10,3607),(533,533,10,3607),(534,534,10,3607),(535,535,10,3607),(536,536,10,3607),(537,537,10,3607),(538,538,10,3607),(539,539,10,3607),(540,540,11,809),(541,541,11,809),(542,542,11,809),(543,543,11,809),(544,544,11,809),(545,545,11,809),(546,546,11,809),(547,547,11,809),(548,548,11,809),(549,549,11,809),(550,550,11,809),(551,551,11,809),(552,552,11,809),(553,553,11,809),(554,554,11,809),(555,555,11,809),(556,556,11,809),(557,557,11,809),(558,558,11,809),(559,559,11,809),(560,560,11,809),(561,561,11,809),(562,562,11,809),(563,563,11,809),(564,564,11,809),(565,565,11,809),(566,566,11,809),(567,567,11,809),(568,568,11,809),(569,569,11,809),(570,570,11,809),(571,571,11,809),(572,572,11,809),(573,573,11,809),(574,574,11,809),(575,575,11,809),(576,576,11,809),(577,577,11,809),(578,578,11,809),(579,579,11,809),(580,580,11,809),(581,581,11,809),(582,582,11,809),(583,583,11,809),(584,584,11,809),(585,585,11,809),(586,586,11,809),(587,587,11,809),(588,588,11,809),(589,589,11,809),(590,590,11,809),(591,591,11,809),(592,592,11,809),(593,593,11,809),(594,594,11,809),(595,595,11,809),(596,596,11,809),(597,597,11,809),(598,598,11,809),(599,599,11,809),(600,600,11,809),(601,601,11,809),(602,602,11,809),(603,603,11,809),(604,604,11,809),(605,605,11,809),(606,606,11,809),(607,607,11,809),(608,608,11,809),(609,609,11,809),(610,610,11,809),(611,611,11,809),(612,612,11,809),(613,613,11,809),(614,614,11,809),(615,615,11,809),(616,616,11,809),(617,617,11,809),(618,618,11,809),(619,619,11,809),(620,620,11,809),(621,621,11,809),(622,622,11,809),(623,623,11,809),(624,624,11,809),(625,625,11,809),(626,626,11,809),(627,627,11,809),(628,628,11,809),(629,629,11,809),(630,630,11,809),(631,631,11,809),(632,632,11,809),(633,633,11,809),(634,634,11,809),(635,635,11,809),(636,636,11,809),(637,637,11,809),(638,638,11,809),(639,639,11,809),(640,640,11,809),(641,641,11,809),(642,642,11,809),(643,643,11,809),(644,644,11,809),(645,645,11,809),(646,646,11,809),(647,647,11,809),(648,648,11,809),(649,649,11,809),(650,650,11,809),(651,651,11,809),(652,652,11,809),(653,653,11,809),(654,654,11,809),(655,655,11,809),(656,656,11,809),(657,657,11,809),(658,658,11,809),(659,659,11,809),(660,660,11,809),(661,661,11,809),(662,662,11,809),(663,663,11,809),(664,664,11,809),(665,665,11,809),(666,666,11,809),(667,667,11,809),(668,668,11,809),(669,669,11,809),(670,670,11,809),(671,671,11,809),(672,672,11,809),(673,673,11,809),(674,674,11,809),(675,675,11,809),(676,676,11,809),(677,677,11,809),(678,678,11,809),(679,679,11,809),(680,680,11,809),(681,681,11,809),(682,682,11,809),(683,683,11,809),(684,684,11,809),(685,685,11,809),(686,686,11,809),(687,687,11,809),(688,688,11,809),(689,689,11,809),(690,690,11,809),(691,691,11,809),(692,692,11,809),(693,693,11,809),(694,694,11,809),(695,695,11,809),(696,696,11,809),(697,697,11,809),(698,698,11,809),(699,699,11,809),(700,700,11,809),(701,701,11,809),(702,702,11,809),(703,703,11,809),(704,704,11,809),(705,705,11,809),(706,706,11,809),(707,707,11,809),(708,708,11,809),(709,709,11,809),(710,710,11,809),(711,711,11,809),(712,712,11,809),(713,713,11,809),(714,714,11,809),(715,715,11,809),(716,716,11,809),(717,717,11,809),(718,718,11,809),(719,719,11,809),(720,720,11,809),(721,721,11,809),(722,722,11,809),(723,723,11,809),(724,724,11,809),(725,725,11,809),(726,726,11,809),(727,727,11,809),(728,728,11,809),(729,729,11,809),(730,730,11,809),(731,731,11,809),(732,732,11,809),(733,733,11,809),(734,734,11,809),(735,735,11,809),(736,736,11,809),(737,737,11,809),(738,738,11,809),(739,739,11,809),(740,740,11,809),(741,741,11,809),(742,742,11,809),(743,743,11,809),(744,744,11,809),(745,745,11,809),(746,746,11,809),(747,747,11,809),(748,748,11,809),(749,749,11,809),(750,750,11,809),(751,751,11,809),(752,752,11,809),(753,753,11,809),(754,754,11,809),(755,755,11,809),(756,756,11,809),(757,757,11,809),(758,758,11,809),(759,759,11,809),(760,760,11,809),(761,761,11,809),(762,762,11,809),(763,763,11,809),(764,764,11,809),(765,765,11,809),(766,766,11,809),(767,767,11,809),(768,768,11,809),(769,769,11,809),(770,770,11,809),(771,771,11,809),(772,772,11,809),(773,773,11,809),(774,774,11,809),(775,775,11,809),(776,776,11,809),(777,777,11,809),(778,778,11,809),(779,779,11,809),(780,780,11,809),(781,781,11,809),(782,782,11,809),(783,783,11,809),(784,784,11,809),(785,785,11,809),(786,786,11,809),(787,787,11,809),(788,788,11,809),(789,789,11,809),(790,790,11,809),(791,791,11,809),(792,792,11,809),(793,793,11,809),(794,794,11,809),(795,795,11,809),(796,796,11,809),(797,797,11,809),(798,798,11,809),(799,799,11,809),(800,800,11,809),(801,801,11,809),(802,802,11,809),(803,803,11,809),(804,804,11,809),(805,805,11,809),(806,806,11,809),(807,807,11,809),(808,808,11,809),(809,809,11,809),(810,810,11,809),(811,811,11,809),(812,812,11,809),(813,813,11,809),(814,814,11,809),(815,815,11,809),(816,816,11,809),(817,817,11,809),(818,818,11,809),(819,819,11,809),(820,820,11,809),(821,821,11,809),(822,822,11,809),(823,823,11,809),(824,824,11,809),(825,825,11,809),(826,826,11,809),(827,827,11,809),(828,828,11,809),(829,829,11,809),(830,830,11,809),(831,831,11,809),(832,832,11,809),(833,833,11,809),(834,834,11,809),(835,835,11,809),(836,836,11,809),(837,837,11,809),(838,838,11,809),(839,839,11,809),(840,840,11,809),(841,841,11,809),(842,842,11,809),(843,843,11,809),(844,844,11,809),(845,845,11,809),(846,846,11,809),(847,847,11,809),(848,848,11,809),(849,849,11,809),(850,850,11,809),(851,851,11,809),(852,852,11,809),(853,853,11,809),(854,854,11,809),(855,855,11,809),(856,856,11,809),(857,857,11,809),(858,858,11,809),(859,859,11,809),(860,860,11,809),(861,861,11,809),(862,862,11,809),(863,863,11,809),(864,864,11,809),(865,865,11,809),(866,866,11,809),(867,867,11,809),(868,868,11,809),(869,869,11,809),(870,870,11,809),(871,871,11,809),(872,872,11,809),(873,873,11,809),(874,874,11,809),(875,875,11,809),(876,876,11,809),(877,877,11,809),(878,878,11,809),(879,879,11,809),(880,880,11,809),(881,881,11,809),(882,882,11,809),(883,883,11,809),(884,884,11,809),(885,885,11,809),(886,886,12,3608),(887,887,12,3608),(888,888,12,3608),(889,889,13,3609),(890,890,13,3609),(891,891,13,3609),(892,892,13,3609),(893,893,13,3609),(894,894,13,3609),(895,895,13,3609),(896,896,13,3609),(897,897,13,3609),(898,898,14,2477),(899,899,14,2477),(900,900,14,2477),(901,901,14,2477),(902,902,14,2477),(903,903,14,2477),(904,904,14,2477),(905,905,14,2477),(906,906,14,2477),(907,907,14,2477),(908,908,14,2477),(909,909,14,2477),(910,910,14,2477),(911,911,14,2477),(912,912,14,2477),(913,913,14,2477),(914,914,14,2477),(915,915,14,2477),(916,916,14,2477),(917,917,14,2477),(918,918,14,2477),(919,919,14,2477),(920,920,14,2477),(921,921,15,2401),(922,922,15,2401),(923,923,15,2401),(924,924,15,2401),(925,925,15,2401),(926,926,15,2401),(927,927,15,2401),(928,928,15,2401),(929,929,15,2401),(930,930,15,2401),(931,931,15,2401),(932,932,15,2401),(933,933,15,2401),(934,934,15,2401),(935,935,15,2401),(936,936,15,2401),(937,937,15,2401),(938,938,15,2401),(939,939,15,2401),(940,940,15,2401),(941,941,15,2401),(942,942,15,2401),(943,943,15,2401),(944,944,15,2401),(945,945,15,2401),(946,946,15,2401),(947,947,15,2401),(948,948,15,2401),(949,949,15,2401),(950,950,15,2401),(951,951,15,2401),(952,952,15,2401),(953,953,15,2401),(954,954,15,2401),(955,955,15,2401),(956,956,15,2401),(957,957,15,2401),(958,958,15,2401),(959,959,15,2401),(960,960,15,2401),(961,961,15,2401),(962,962,15,2401),(963,963,15,2401),(964,964,15,2401),(965,965,15,2401),(966,966,15,2401),(967,967,15,2401),(968,968,15,2401),(969,969,15,2401),(970,970,15,2401),(971,971,15,2401),(972,972,15,2401),(973,973,15,2401),(974,974,15,2401),(975,975,15,2401),(976,976,15,2401),(977,977,15,2401),(978,978,15,2401),(979,979,15,2401),(980,980,15,2401),(981,981,15,2401),(982,982,15,2401),(983,983,15,2401),(984,984,15,2401),(985,985,15,2401),(986,986,15,2401),(987,987,15,2401),(988,988,15,2401),(989,989,15,2401),(990,990,15,2401),(991,991,15,2401),(992,992,15,2401),(993,993,15,2401),(994,994,15,2401),(995,995,15,2401),(996,996,15,2401),(997,997,15,2401),(998,998,15,2401),(999,999,15,2401),(1000,1000,15,2401),(1001,1001,15,2401),(1002,1002,15,2401),(1003,1003,15,2401),(1004,1004,15,2401),(1005,1005,15,2401),(1006,1006,15,2401),(1007,1007,15,2401),(1008,1008,15,2401),(1009,1009,15,2401),(1010,1010,15,2401),(1011,1011,15,2401),(1012,1012,15,2401),(1013,1013,15,2401),(1014,1014,15,2401),(1015,1015,15,2401),(1016,1016,15,2401),(1017,1017,15,2401),(1018,1018,15,2401),(1019,1019,15,2401),(1020,1020,15,2401),(1021,1021,15,2401),(1022,1022,15,2401),(1023,1023,15,2401),(1024,1024,15,2401),(1025,1025,15,2401),(1026,1026,15,2401),(1027,1027,15,2401),(1028,1028,15,2401),(1029,1029,15,2401),(1030,1030,15,2401),(1031,1031,15,2401),(1032,1032,15,2401),(1033,1033,15,2401),(1034,1034,15,2401),(1035,1035,15,2401),(1036,1036,15,2401),(1037,1037,15,2401),(1038,1038,15,2401),(1039,1039,15,2401),(1040,1040,15,2401),(1041,1041,15,2401),(1042,1042,15,2401),(1043,1043,15,2401),(1044,1044,15,2401),(1045,1045,15,2401),(1046,1046,15,2401),(1047,1047,15,2401),(1048,1048,15,2401),(1049,1049,15,2401),(1050,1050,15,2401),(1051,1051,15,2401),(1052,1052,15,2401),(1053,1053,15,2401),(1054,1054,15,2401),(1055,1055,15,2401),(1056,1056,15,2401),(1057,1057,15,2401),(1058,1058,15,2401),(1059,1059,15,2401),(1060,1060,15,2401),(1061,1061,15,2401),(1062,1062,15,2401),(1063,1063,15,2401),(1064,1064,15,2401),(1065,1065,15,2401),(1066,1066,15,2401),(1067,1067,15,2401),(1068,1068,15,2401),(1069,1069,15,2401),(1070,1070,15,2401),(1071,1071,15,2401),(1072,1072,15,2401),(1073,1073,15,2401),(1074,1074,15,2401),(1075,1075,15,2401),(1076,1076,15,2401),(1077,1077,15,2401),(1078,1078,15,2401),(1079,1079,15,2401),(1080,1080,15,2401),(1081,1081,15,2401),(1082,1082,15,2401),(1083,1083,15,2401),(1084,1084,15,2401),(1085,1085,15,2401),(1086,1086,15,2401),(1087,1087,15,2401),(1088,1088,15,2401),(1089,1089,15,2401),(1090,1090,15,2401),(1091,1091,15,2401),(1092,1092,15,2401),(1093,1093,15,2401),(1094,1094,15,2401),(1095,1095,15,2401),(1096,1096,15,2401),(1097,1097,15,2401),(1098,1098,15,2401),(1099,1099,15,2401),(1100,1100,15,2401),(1101,1101,15,2401),(1102,1102,15,2401),(1103,1103,15,2401),(1104,1104,15,2401),(1105,1105,15,2401),(1106,1106,15,2401),(1107,1107,15,2401),(1108,1108,15,2401),(1109,1109,15,2401),(1110,1110,15,2401),(1111,1111,15,2401),(1112,1112,15,2401),(1113,1113,15,2401),(1114,1114,15,2401),(1115,1115,15,2401),(1116,1116,15,2401),(1117,1117,15,2401),(1118,1118,15,2401),(1119,1119,15,2401),(1120,1120,15,2401),(1121,1121,15,2401),(1122,1122,15,2401),(1123,1123,15,2401),(1124,1124,15,2401),(1125,1125,15,2401),(1126,1126,15,2401),(1127,1127,15,2401),(1128,1128,15,2401),(1129,1129,15,2401),(1130,1130,15,2401),(1131,1131,15,2401),(1132,1132,15,2401),(1133,1133,15,2401),(1134,1134,15,2401),(1135,1135,15,2401),(1136,1136,15,2401),(1137,1137,15,2401),(1138,1138,15,2401),(1139,1139,15,2401),(1140,1140,15,2401),(1141,1141,15,2401),(1142,1142,15,2401),(1143,1143,15,2401),(1144,1144,15,2401),(1145,1145,15,2401),(1146,1146,15,2401),(1147,1147,15,2401),(1148,1148,15,2401),(1149,1149,15,2401),(1150,1150,15,2401),(1151,1151,15,2401),(1152,1152,15,2401),(1153,1153,15,2401),(1154,1154,15,2401),(1155,1155,15,2401),(1156,1156,15,2401),(1157,1157,15,2401),(1158,1158,15,2401),(1159,1159,15,2401),(1160,1160,15,2401),(1161,1161,15,2401),(1162,1162,15,2401),(1163,1163,15,2401),(1164,1164,15,2401),(1165,1165,15,2401),(1166,1166,15,2401),(1167,1167,15,2401),(1168,1168,15,2401),(1169,1169,15,2401),(1170,1170,15,2401),(1171,1171,15,2401),(1172,1172,15,2401),(1173,1173,15,2401),(1174,1174,15,2401),(1175,1175,15,2401),(1176,1176,15,2401),(1177,1177,15,2401),(1178,1178,15,2401),(1179,1179,15,2401),(1180,1180,15,2401),(1181,1181,15,2401),(1182,1182,15,2401),(1183,1183,15,2401),(1184,1184,15,2401),(1185,1185,15,2401),(1186,1186,15,2401),(1187,1187,15,2401),(1188,1188,15,2401),(1189,1189,15,2401),(1190,1190,15,2401),(1191,1191,15,2401),(1192,1192,15,2401),(1193,1193,15,2401),(1194,1194,15,2401),(1195,1195,15,2401),(1196,1196,15,2401),(1197,1197,15,2401),(1198,1198,15,2401),(1199,1199,15,2401),(1200,1200,15,2401),(1201,1201,15,2401),(1202,1202,15,2401),(1203,1203,15,2401),(1204,1204,15,2401),(1205,1205,15,2401),(1206,1206,15,2401),(1207,1207,15,2401),(1208,1208,15,2401),(1209,1209,15,2401),(1210,1210,15,2401),(1211,1211,15,2401),(1212,1212,15,2401),(1213,1213,15,2401),(1214,1214,15,2401),(1215,1215,15,2401),(1216,1216,15,2401),(1217,1217,15,2401),(1218,1218,15,2401),(1219,1219,15,2401),(1220,1220,15,2401),(1221,1221,15,2401),(1222,1222,15,2401),(1223,1223,15,2401),(1224,1224,15,2401),(1225,1225,15,2401),(1226,1226,15,2401),(1227,1227,15,2401),(1228,1228,15,2401),(1229,1229,15,2401),(1230,1230,15,2401),(1231,1231,15,2401),(1232,1232,15,2401),(1233,1233,15,2401),(1234,1234,15,2401),(1235,1235,15,2401),(1236,1236,15,2401),(1237,1237,15,2401),(1238,1238,15,2401),(1239,1239,15,2401),(1240,1240,15,2401),(1241,1241,15,2401),(1242,1242,15,2401),(1243,1243,15,2401),(1244,1244,15,2401),(1245,1245,15,2401),(1246,1246,15,2401),(1247,1247,15,2401),(1248,1248,15,2401),(1249,1249,15,2401),(1250,1250,15,2401),(1251,1251,15,2401),(1252,1252,15,2401),(1253,1253,15,2401),(1254,1254,15,2401),(1255,1255,15,2401),(1256,1256,15,2401),(1257,1257,15,2401),(1258,1258,15,2401),(1259,1259,15,2401),(1260,1260,15,2401),(1261,1261,15,2401),(1262,1262,15,2401),(1263,1263,15,2401),(1264,1264,15,2401),(1265,1265,15,2401),(1266,1266,15,2401),(1267,1267,15,2401),(1268,1268,15,2401),(1269,1269,15,2401),(1270,1270,15,2401),(1271,1271,15,2401),(1272,1272,15,2401),(1273,1273,15,2401),(1274,1274,15,2401),(1275,1275,15,2401),(1276,1276,15,2401),(1277,1277,15,2401),(1278,1278,15,2401),(1279,1279,15,2401),(1280,1280,15,2401),(1281,1281,15,2401),(1282,1282,15,2401),(1283,1283,15,2401),(1284,1284,15,2401),(1285,1285,15,2401),(1286,1286,15,2401),(1287,1287,15,2401),(1288,1288,15,2401),(1289,1289,15,2401),(1290,1290,15,2401),(1291,1291,15,2401),(1292,1292,15,2401),(1293,1293,15,2401),(1294,1294,15,2401),(1295,1295,15,2401),(1296,1296,15,2401),(1297,1297,15,2401),(1298,1298,15,2401),(1299,1299,15,2401),(1300,1300,15,2401),(1301,1301,15,2401),(1302,1302,15,2401),(1303,1303,15,2401),(1304,1304,15,2401),(1305,1305,15,2401),(1306,1306,15,2401),(1307,1307,15,2401),(1308,1308,15,2401),(1309,1309,15,2401),(1310,1310,15,2401),(1311,1311,15,2401),(1312,1312,16,3610),(1313,1313,16,3610),(1314,1314,16,3610),(1315,1315,16,3610),(1316,1316,16,3610),(1317,1317,16,3610),(1318,1318,16,3610),(1319,1319,16,3610),(1320,1320,16,3610),(1321,1321,16,3610),(1322,1322,16,3610),(1323,1323,16,3610),(1324,1324,16,3610),(1325,1325,16,3610),(1326,1326,16,3610),(1327,1327,16,3610),(1328,1328,16,3610),(1329,1329,16,3610),(1330,1330,16,3610),(1331,1331,16,3610),(1332,1332,16,3610),(1333,1333,16,3610),(1334,1334,16,3610),(1335,1335,16,3610),(1336,1336,16,3610),(1337,1337,16,3610),(1338,1338,16,3610),(1339,1339,16,3610),(1340,1340,16,3610),(1341,1341,16,3610),(1342,1342,16,3610),(1343,1343,16,3610),(1344,1344,16,3610),(1345,1345,16,3610),(1346,1346,17,2444),(1347,1347,17,2444),(1348,1348,17,2444),(1349,1349,17,2444),(1350,1350,17,2444),(1351,1351,17,2444),(1352,1352,17,2444),(1353,1353,17,2444),(1354,1354,17,2444),(1355,1355,17,2444),(1356,1356,17,2444),(1357,1357,17,2444),(1358,1358,17,2444),(1359,1359,17,2444),(1360,1360,17,2444),(1361,1361,17,2444),(1362,1362,17,2444),(1363,1363,17,2444),(1364,1364,17,2444),(1365,1365,17,2444),(1366,1366,17,2444),(1367,1367,17,2444),(1368,1368,17,2444),(1369,1369,17,2444),(1370,1370,17,2444),(1371,1371,17,2444),(1372,1372,17,2444),(1373,1373,17,2444),(1374,1374,17,2444),(1375,1375,17,2444),(1376,1376,17,2444),(1377,1377,17,2444),(1378,1378,17,2444),(1379,1379,17,2444),(1380,1380,17,2444),(1381,1381,17,2444),(1382,1382,17,2444),(1383,1383,17,2444),(1384,1384,17,2444),(1385,1385,17,2444),(1386,1386,17,2444),(1387,1387,17,2444),(1388,1388,17,2444),(1389,1389,17,2444),(1390,1390,17,2444),(1391,1391,17,2444),(1392,1392,17,2444),(1393,1393,17,2444),(1394,1394,17,2444),(1395,1395,17,2444),(1396,1396,17,2444),(1397,1397,17,2444),(1398,1398,17,2444),(1399,1399,17,2444),(1400,1400,17,2444),(1401,1401,17,2444),(1402,1402,17,2444),(1403,1403,17,2444),(1404,1404,17,2444),(1405,1405,17,2444),(1406,1406,17,2444),(1407,1407,17,2444),(1408,1408,17,2444),(1409,1409,17,2444),(1410,1410,17,2444),(1411,1411,17,2444),(1412,1412,17,2444),(1413,1413,17,2444),(1414,1414,17,2444),(1415,1415,17,2444),(1416,1416,17,2444),(1417,1417,17,2444),(1418,1418,17,2444),(1419,1419,17,2444),(1420,1420,17,2444),(1421,1421,17,2444),(1422,1422,17,2444),(1423,1423,17,2444),(1424,1424,17,2444),(1425,1425,17,2444),(1426,1426,17,2444),(1427,1427,17,2444),(1428,1428,17,2444),(1429,1429,17,2444),(1430,1430,17,2444),(1431,1431,17,2444),(1432,1432,17,2444),(1433,1433,17,2444),(1434,1434,17,2444),(1435,1435,17,2444),(1436,1436,17,2444),(1437,1437,17,2444),(1438,1438,17,2444),(1439,1439,17,2444),(1440,1440,17,2444),(1441,1441,17,2444),(1442,1442,17,2444),(1443,1443,17,2444),(1444,1444,17,2444),(1445,1445,17,2444),(1446,1446,17,2444),(1447,1447,17,2444),(1448,1448,17,2444),(1449,1449,17,2444),(1450,1450,17,2444),(1451,1451,18,1317),(1452,1452,18,1317),(1453,1453,18,1317),(1454,1454,18,1317),(1455,1455,18,1317),(1456,1456,18,1317),(1457,1457,18,1317),(1458,1458,18,1317),(1459,1459,18,1317),(1460,1460,18,1317),(1461,1461,18,1317),(1462,1462,18,1317),(1463,1463,18,1317),(1464,1464,18,1317),(1465,1465,18,1317),(1466,1466,18,1317),(1467,1467,18,1317),(1468,1468,18,1317),(1469,1469,18,1317),(1470,1470,18,1317),(1471,1471,18,1317),(1472,1472,18,1317),(1473,1473,18,1317),(1474,1474,18,1317),(1475,1475,18,1317),(1476,1476,18,1317),(1477,1477,18,1317),(1478,1478,18,1317),(1479,1479,18,1317),(1480,1480,18,1317),(1481,1481,18,1317),(1482,1482,18,1317),(1483,1483,18,1317),(1484,1484,18,1317),(1485,1485,18,1317),(1486,1486,18,1317),(1487,1487,18,1317),(1488,1488,18,1317),(1489,1489,18,1317),(1490,1490,18,1317),(1491,1491,18,1317),(1492,1492,18,1317),(1493,1493,18,1317),(1494,1494,18,1317),(1495,1495,18,1317),(1496,1496,18,1317),(1497,1497,18,1317),(1498,1498,18,1317),(1499,1499,18,1317),(1500,1500,18,1317),(1501,1501,18,1317),(1502,1502,18,1317),(1503,1503,18,1317),(1504,1504,18,1317),(1505,1505,18,1317),(1506,1506,18,1317),(1507,1507,18,1317),(1508,1508,18,1317),(1509,1509,18,1317),(1510,1510,18,1317),(1511,1511,18,1317),(1512,1512,18,1317),(1513,1513,18,1317),(1514,1514,18,1317),(1515,1515,18,1317),(1516,1516,18,1317),(1517,1517,18,1317),(1518,1518,18,1317),(1519,1519,18,1317),(1520,1520,18,1317),(1521,1521,18,1317),(1522,1522,18,1317),(1523,1523,18,1317),(1524,1524,18,1317),(1525,1525,18,1317),(1526,1526,18,1317),(1527,1527,18,1317),(1528,1528,18,1317),(1529,1529,18,1317),(1530,1530,18,1317),(1531,1531,18,1317),(1532,1532,18,1317),(1533,1533,18,1317),(1534,1534,18,1317),(1535,1535,18,1317),(1536,1536,18,1317),(1537,1537,18,1317),(1538,1538,18,1317),(1539,1539,18,1317),(1540,1540,18,1317),(1541,1541,18,1317),(1542,1542,18,1317),(1543,1543,18,1317),(1544,1544,18,1317),(1545,1545,18,1317),(1546,1546,18,1317),(1547,1547,18,1317),(1548,1548,18,1317),(1549,1549,18,1317),(1550,1550,18,1317),(1551,1551,18,1317),(1552,1552,18,1317),(1553,1553,18,1317),(1554,1554,18,1317),(1555,1555,18,1317),(1556,1556,18,1317),(1557,1557,18,1317),(1558,1558,18,1317),(1559,1559,18,1317),(1560,1560,18,1317),(1561,1561,18,1317),(1562,1562,18,1317),(1563,1563,18,1317),(1564,1564,18,1317),(1565,1565,18,1317),(1566,1566,18,1317),(1567,1567,18,1317),(1568,1568,18,1317),(1569,1569,18,1317),(1570,1570,18,1317),(1571,1571,18,1317),(1572,1572,18,1317),(1573,1573,18,1317),(1574,1574,18,1317),(1575,1575,18,1317),(1576,1576,18,1317),(1577,1577,18,1317),(1578,1578,18,1317),(1579,1579,18,1317),(1580,1580,18,1317),(1581,1581,18,1317),(1582,1582,18,1317),(1583,1583,18,1317),(1584,1584,18,1317),(1585,1585,18,1317),(1586,1586,18,1317),(1587,1587,18,1317),(1588,1588,18,1317),(1589,1589,18,1317),(1590,1590,18,1317),(1591,1591,18,1317),(1592,1592,18,1317),(1593,1593,18,1317),(1594,1594,18,1317),(1595,1595,18,1317),(1596,1596,18,1317),(1597,1597,18,1317),(1598,1598,18,1317),(1599,1599,18,1317),(1600,1600,18,1317),(1601,1601,18,1317),(1602,1602,18,1317),(1603,1603,18,1317),(1604,1604,19,3611),(1605,1605,19,3611),(1606,1606,19,3611),(1607,1607,19,3611),(1608,1608,19,3611),(1609,1609,19,3611),(1610,1610,19,3611),(1611,1615,25,321),(1612,1616,25,321),(1613,1617,20,2445),(1614,1618,20,2445),(1615,1619,20,2445),(1616,1620,20,2445),(1617,1621,20,2445),(1618,1622,20,2445),(1619,1623,20,2445),(1620,1624,20,2445),(1621,1625,20,2445),(1622,1626,20,2445),(1623,1627,20,2445),(1624,1628,20,2445),(1625,1629,20,2445),(1626,1630,20,2445),(1627,1631,20,2445),(1628,1632,20,2445),(1629,1633,20,2445),(1630,1634,20,2445),(1631,1635,20,2445),(1632,1636,20,2445),(1633,1637,21,2446),(1634,1638,21,2446),(1635,1639,21,2446),(1636,1640,21,2446),(1637,1641,21,2446),(1638,1642,21,2446),(1639,1643,21,2446),(1640,1644,21,2446),(1641,1645,21,2446),(1642,1646,21,2446),(1643,1647,21,2446),(1644,1648,21,2446),(1645,1649,21,2446),(1646,1650,21,2446),(1647,1651,21,2446),(1648,1652,21,2446),(1649,1653,21,2446),(1650,1654,21,2446),(1651,1655,21,2446),(1652,1656,21,2446),(1653,1657,21,2446),(1654,1658,21,2446),(1655,1659,21,2446),(1656,1660,21,2446),(1657,1661,21,2446),(1658,1662,21,2446),(1659,1663,21,2446),(1660,1664,21,2446),(1661,1665,21,2446),(1662,1666,21,2446),(1663,1667,21,2446),(1664,1668,21,2446),(1665,1669,21,2446),(1666,1670,21,2446),(1667,1671,21,2446),(1668,1672,21,2446),(1669,1673,21,2446),(1670,1674,21,2446),(1671,1675,21,2446),(1672,1676,21,2446),(1673,1677,21,2446),(1674,1678,21,2446),(1675,1679,21,2446),(1676,1680,21,2446),(1677,1681,21,2446),(1678,1682,21,2446),(1679,1683,21,2446),(1680,1684,21,2446),(1681,1685,21,2446),(1682,1686,21,2446),(1683,1687,21,2446),(1684,1688,21,2446),(1685,1689,21,2446),(1686,1690,21,2446),(1687,1691,21,2446),(1688,1692,21,2446),(1689,1693,21,2446),(1690,1694,21,2446),(1691,1695,21,2446),(1692,1696,21,2446),(1693,1697,21,2446),(1694,1698,21,2446),(1695,1699,21,2446),(1696,1700,21,2446),(1697,1701,21,2446),(1698,1702,21,2446),(1699,1703,21,2446),(1700,1704,21,2446),(1701,1705,21,2446),(1702,1706,21,2446),(1703,1707,21,2446),(1704,1708,21,2446),(1705,1709,21,2446),(1706,1710,21,2446),(1707,1711,21,2446),(1708,1712,21,2446),(1709,1713,21,2446),(1710,1714,21,2446),(1711,1715,21,2446),(1712,1716,21,2446),(1713,1717,21,2446),(1714,1718,21,2446),(1715,1719,21,2446),(1716,1720,21,2446),(1717,1721,21,2446),(1718,1722,21,2446),(1719,1723,21,2446),(1720,1724,21,2446),(1721,1725,21,2446),(1722,1726,21,2446),(1723,1727,21,2446),(1724,1728,21,2446),(1725,1729,21,2446),(1726,1730,21,2446),(1727,1731,21,2446),(1728,1732,21,2446),(1729,1733,21,2446),(1730,1734,21,2446),(1731,1735,21,2446),(1732,1736,21,2446),(1733,1737,21,2446),(1734,1738,21,2446),(1735,1739,21,2446),(1736,1740,21,2446),(1737,1741,21,2446),(1738,1742,21,2446),(1739,1743,21,2446),(1740,1744,21,2446),(1741,1745,21,2446),(1742,1746,21,2446),(1743,1747,21,2446),(1744,1748,21,2446),(1745,1749,21,2446),(1746,1750,21,2446),(1747,1751,21,2446),(1748,1752,21,2446),(1749,1753,21,2446),(1750,1754,21,2446),(1751,1755,21,2446),(1752,1756,21,2446),(1753,1757,21,2446),(1754,1758,21,2446),(1755,1759,21,2446),(1756,1760,21,2446),(1757,1761,21,2446),(1758,1762,21,2446),(1759,1763,21,2446),(1760,1764,21,2446),(1761,1765,21,2446),(1762,1766,21,2446),(1763,1767,21,2446),(1764,1768,21,2446),(1765,1769,21,2446),(1766,1770,21,2446),(1767,1771,21,2446),(1768,1772,21,2446),(1769,1773,21,2446),(1770,1774,21,2446),(1771,1775,21,2446),(1772,1776,21,2446),(1773,1777,21,2446),(1774,1778,21,2446),(1775,1779,21,2446),(1776,1780,21,2446),(1777,1781,21,2446),(1778,1782,21,2446),(1779,1783,21,2446),(1780,1784,21,2446),(1781,1785,21,2446),(1782,1786,21,2446),(1783,1787,21,2446),(1784,1788,21,2446),(1785,1789,21,2446),(1786,1790,21,2446),(1787,1791,21,2446),(1788,1792,21,2446),(1789,1793,21,2446),(1790,1794,21,2446),(1791,1795,21,2446),(1792,1796,21,2446),(1793,1797,21,2446),(1794,1798,21,2446),(1795,1799,21,2446),(1796,1800,21,2446),(1797,1801,21,2446),(1798,1802,21,2446),(1799,1803,21,2446),(1800,1804,21,2446),(1801,1805,21,2446),(1802,1806,21,2446),(1803,1807,21,2446),(1804,1808,21,2446),(1805,1809,21,2446),(1806,1810,21,2446),(1807,1811,21,2446),(1808,1812,21,2446),(1809,1813,21,2446),(1810,1814,22,3612),(1811,1815,22,3612),(1812,1816,22,3612),(1813,1817,22,3612),(1814,1818,22,3612),(1815,1819,22,3612),(1816,1820,22,3612),(1817,1821,22,3612),(1818,1822,22,3612),(1819,1823,22,3612),(1820,1824,22,3612),(1821,1825,22,3612),(1822,1826,22,3612),(1823,1827,22,3612),(1824,1828,22,3612),(1825,1829,22,3612),(1826,1830,22,3612),(1827,1831,22,3612),(1828,1832,22,3612),(1829,1833,22,3612),(1830,1834,22,3612),(1831,1835,22,3612),(1832,1836,22,3612),(1833,1837,22,3612),(1834,1838,22,3612),(1835,1839,22,3612),(1836,1840,22,3612),(1837,1841,22,3612),(1838,1842,22,3612),(1839,1843,22,3612),(1840,1844,22,3612),(1841,1845,22,3612),(1842,1846,22,3612),(1843,1847,22,3612),(1844,1848,22,3612),(1845,1849,22,3612),(1846,1850,23,3613),(1847,1851,23,3613),(1848,1852,23,3613),(1849,1853,23,3613),(1850,1854,23,3613),(1851,1855,23,3613),(1852,1856,23,3613),(1853,1857,23,3613),(1854,1858,23,3613),(1855,1859,23,3613),(1856,1860,23,3613),(1857,1861,23,3613),(1858,1862,23,3613),(1859,1863,23,3613),(1860,1864,23,3613),(1861,1865,23,3613),(1862,1866,23,3613),(1863,1867,23,3613),(1864,1868,23,3613),(1865,1869,23,3613),(1866,1870,23,3613),(1867,1871,23,3613),(1868,1872,23,3613),(1869,1873,23,3613),(1870,1874,23,3613),(1871,1875,23,3613),(1872,1876,23,3613),(1873,1877,23,3613),(1874,1878,23,3613),(1875,1879,23,3613),(1876,1880,23,3613),(1877,1881,23,3613),(1878,1882,23,3613),(1879,1883,23,3613),(1880,1884,23,3613),(1881,1885,23,3613),(1882,1886,23,3613),(1883,1887,23,3613),(1884,1888,23,3613),(1885,1889,23,3613),(1886,1890,23,3613),(1887,1891,23,3613),(1888,1892,23,3613),(1889,1893,23,3613),(1890,1894,23,3613),(1891,1895,23,3613),(1892,1896,23,3613),(1893,1897,23,3613),(1894,1898,23,3613),(1895,1899,23,3613),(1896,1900,23,3613),(1897,1901,23,3613),(1898,1902,23,3613),(1899,1903,23,3613),(1900,1904,23,3613),(1901,1905,23,3613),(1902,1906,23,3613),(1903,1907,23,3613),(1904,1908,23,3613),(1905,1909,23,3613),(1906,1910,23,3613),(1907,1911,23,3613),(1908,1912,23,3613),(1909,1913,23,3613),(1910,1914,23,3613),(1911,1915,23,3613),(1912,1916,23,3613),(1913,1917,23,3613),(1914,1918,23,3613),(1915,1919,23,3613),(1916,1920,23,3613),(1917,1921,23,3613),(1918,1922,23,3613),(1919,1923,23,3613),(1920,1924,23,3613),(1921,1925,23,3613),(1922,1926,23,3613),(1923,1927,23,3613),(1924,1928,23,3613),(1925,1929,23,3613),(1926,1930,23,3613),(1927,1931,23,3613),(1928,1932,23,3613),(1929,1933,23,3613),(1930,1934,23,3613),(1931,1935,23,3613),(1932,1936,23,3613),(1933,1937,23,3613),(1934,1938,23,3613),(1935,1939,23,3613),(1936,1940,23,3613),(1937,1941,23,3613),(1938,1942,23,3613),(1939,1943,23,3613),(1940,1944,23,3613),(1941,1945,23,3613),(1942,1946,23,3613),(1943,1947,23,3613),(1944,1948,23,3613),(1945,1949,23,3613),(1946,1950,23,3613),(1947,1951,23,3613),(1948,1952,23,3613),(1949,1953,23,3613),(1950,1954,23,3613),(1951,1955,23,3613),(1952,1956,23,3613),(1953,1957,23,3613),(1954,1958,23,3613),(1955,1959,23,3613),(1956,1960,23,3613),(1957,1961,23,3613),(1958,1962,23,3613),(1959,1963,23,3613),(1960,1964,23,3613),(1961,1965,23,3613),(1962,1966,23,3613),(1963,1967,23,3613),(1964,1968,23,3613),(1965,1969,23,3613),(1966,1970,23,3613),(1967,1971,23,3613),(1968,1972,23,3613),(1969,1973,23,3613),(1970,1974,23,3613),(1971,1975,23,3613),(1972,1976,23,3613),(1973,1977,23,3613),(1974,1978,23,3613),(1975,1979,23,3613),(1976,1980,23,3613),(1977,1981,24,1934),(1978,1982,24,1934),(1979,1983,24,1934),(1980,1984,24,1934),(1981,1985,24,1934),(1982,1986,24,1934),(1983,1987,24,1934),(1984,1988,24,1934),(1985,1989,24,1934),(1986,1990,24,1934),(1987,1991,24,1934),(1988,1992,24,1934),(1989,1993,24,1934),(1990,1994,24,1934),(1991,1995,24,1934),(1992,1996,24,1934),(1993,1997,24,1934),(1994,1998,24,1934),(1995,1999,24,1934),(1996,2000,24,1934),(1997,2001,24,1934),(1998,2002,24,1934),(1999,2003,24,1934),(2000,2004,24,1934),(2001,2005,24,1934),(2002,2006,24,1934),(2003,2007,24,1934),(2004,2008,24,1934),(2005,2009,24,1934),(2006,2010,24,1934),(2007,2011,24,1934),(2008,2012,24,1934),(2009,2013,24,1934),(2010,2014,24,1934),(2011,2015,24,1934);
/*!40000 ALTER TABLE `jointevaluationoccurence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-03 15:41:10
