-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aps
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `experiencia_coordinador`
--

DROP TABLE IF EXISTS `experiencia_coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencia_coordinador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experiencia_id` int(11) NOT NULL,
  `coordinador_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `experiencia_fk_idx` (`experiencia_id`),
  KEY `coordinador_fk_idx` (`coordinador_id`),
  KEY `FK_coordinador_idx` (`coordinador_id`),
  CONSTRAINT `FK_coordinador` FOREIGN KEY (`coordinador_id`) REFERENCES `coordinadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_experiencia` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1 COMMENT='Tabla intermedia para la relación MM entre experiencias y coordinadores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_coordinador`
--

LOCK TABLES `experiencia_coordinador` WRITE;
/*!40000 ALTER TABLE `experiencia_coordinador` DISABLE KEYS */;
INSERT INTO `experiencia_coordinador` VALUES (37,92,19),(38,93,20),(39,94,21),(118,123,24),(119,123,2),(129,125,17),(159,126,2),(166,124,17),(167,91,18);
/*!40000 ALTER TABLE `experiencia_coordinador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 19:50:47
