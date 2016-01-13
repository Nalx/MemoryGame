CREATE DATABASE  IF NOT EXISTS `dpo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dpo`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: dpo
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ctx` (`name`),
  CONSTRAINT `ctx` FOREIGN KEY (`name`) REFERENCES `player` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'joan',100,'memo'),(2,'joan',200,'memo'),(3,'marc',300,'memo'),(4,'marc',400,'memo'),(5,'xavi',500,'memo'),(6,'xavi',600,'memo'),(7,'joan',500,'memo'),(8,'xavi',100,'memo'),(9,'xavi',200,'memo'),(10,'xavi',300,'memo'),(16,'xavi',3000,'conc'),(17,'edu',300,'memo'),(18,'edu',300,'memo'),(19,'edu',300,'memo'),(20,'edu',300,'memo'),(21,'edu',300,'memo'),(22,'edu',10700,'conc'),(23,'Gobli',11500,'memo'),(24,'Gobli',11500,'conc'),(27,'edu',300,'cpu'),(28,'edu',10900,'memo'),(29,'edu',11300,'conc'),(30,'edu',300,'cpu'),(31,'edu',10500,'memo'),(32,'edu',11300,'conc'),(33,'edu',300,'cpu'),(34,'edu',2,'cpu'),(35,'edu',200,'cpu'),(36,'edu',2,'cpu'),(37,'edu',100,'cpu'),(38,'edu',2,'cpu'),(39,'edu',200,'cpu'),(40,'edu',2,'cpu'),(41,'edu',12400,'memo'),(42,'edu',11600,'memo'),(43,'joan',11600,'memo'),(44,'joan',11800,'conc'),(45,'joan',900,'cpu'),(46,'Gobli',600,'cpu'),(47,'Gobli',600,'cpu'),(48,'Gobli',3,'cpu'),(49,'Gobli',600,'cpu'),(50,'Gobli',1200,'cpu'),(51,'Gobli',900,'cpu'),(52,'Gobli',4,'cpu'),(53,'Gobli',1200,'cpu'),(54,'markal',900,'cpu'),(55,'markal',1500,'cpu'),(56,'markal',5,'cpu'),(57,'zaq',1500,'cpu'),(58,'zaq',5,'cpu'),(59,'shimi',900,'cpu'),(60,'shimi',1200,'cpu'),(61,'alex',5,'cpu'),(62,'qaz',4,'cpu'),(63,'qaz',5,'cpu'),(64,'qaz',800,'cpu');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('a','b'),('alex','alex'),('e','e'),('edu','edu'),('Gobli','hola'),('gta','gta'),('gti','gti'),('gto','gto'),('i','i'),('jj','jj'),('joan','joan'),('marc','marc'),('markal','markal'),('qaz','qaz'),('shimi','shimi'),('xavi ','xavi'),('zaq','zaq');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-22 14:25:42
