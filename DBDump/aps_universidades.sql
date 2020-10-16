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
-- Table structure for table `universidades`
--

DROP TABLE IF EXISTS `universidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `imagen_corporativa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidades`
--

LOCK TABLES `universidades` WRITE;
/*!40000 ALTER TABLE `universidades` DISABLE KEYS */;
INSERT INTO `universidades` VALUES (3,'Universidad de Sevilla',NULL,NULL),(4,'Universidad de Granada',NULL,NULL),(5,'Universidad de Córdoba',NULL,NULL),(6,'Universidad de Málaga',NULL,NULL),(7,'Universidad de Cádiz',NULL,NULL),(8,'Universidad de Almería',NULL,NULL),(9,'Universidad de Huelva',NULL,NULL),(10,'Universidad de Jaén',NULL,NULL),(11,'Universidad Internacional de Andalucía',NULL,NULL),(12,'Universidad Pablo de Olavide',NULL,NULL),(13,'Universidad Loyola Andalucía',NULL,NULL),(14,'Universidad de Zaragoza',NULL,NULL),(15,'Universidad San Jorge',NULL,NULL),(16,'Universidad de Oviedo',NULL,NULL),(17,'Universidad de las Islas Baleares',NULL,NULL),(18,'Universidad de La Laguna',NULL,NULL),(19,'Universidad de Las Palmas de Gran Canaria',NULL,NULL),(20,'Universidad Europea de Canarias',NULL,NULL),(21,'Universidad Fernando Pessoa-Canarias',NULL,NULL),(22,'Universidad de Cantabria',NULL,NULL),(23,'Universidad Europea del Atlántico',NULL,NULL),(24,'Universidad de Castilla-La Mancha',NULL,NULL),(25,'Universidad de Salamanca',NULL,NULL),(26,'Universidad de Valladolid',NULL,NULL),(27,'Universidad Pontificia de Salamanca',NULL,NULL),(28,'Universidad de León',NULL,NULL),(29,'Universidad de Burgos',NULL,NULL),(30,'Universidad Católica Santa Teresa de Jesús de Ávila',NULL,NULL),(31,'Universidad Europea Miguel de Cervantes',NULL,NULL),(32,'Universidad IE',NULL,NULL),(33,'Universidad Internacional Isabel I de Castilla',NULL,NULL),(34,'Universidad de Barcelona',NULL,NULL),(35,'Universidad Autónoma de Barcelona',NULL,NULL),(36,'Universidad Politécnica de Cataluña',NULL,NULL),(37,'Universidad Pompeu Fabra',NULL,NULL),(38,'Universidad Ramon Llull',NULL,NULL),(39,'Universidad de Gerona',NULL,NULL),(40,'Universidad de Lérida',NULL,NULL),(41,'Universidad Rovira i Virgili',NULL,NULL),(42,'Universidad Abierta de Cataluña',NULL,NULL),(43,'Universidad Internacional de Cataluña',NULL,NULL),(44,'Universidad de Vich',NULL,NULL),(45,'Universidad Abad Oliva CEU',NULL,NULL),(46,'Universidad de Valencia',NULL,NULL),(47,'Universidad Politécnica de Valencia',NULL,NULL),(48,'Universidad de Alicante',NULL,NULL),(49,'Universidad Jaime I',NULL,NULL),(50,'Universidad Miguel Hernández de Elche',NULL,NULL),(51,'Universidad CEU Cardenal Herrera',NULL,NULL),(52,'Universidad Católica de Valencia San Vicente Mártir',NULL,NULL),(53,'Universidad Internacional de Valencia',NULL,NULL),(54,'Universidad Europea de Valencia',NULL,NULL),(55,'Universidad de Extremadura',NULL,NULL),(56,'Universidad de Santiago de Compostela',NULL,NULL),(57,'Universidad de La Coruña',NULL,NULL),(58,'Universidad de Vigo',NULL,NULL),(59,'Universidad de La Rioja',NULL,NULL),(60,'Universidad Internacional de La Rioja',NULL,NULL),(61,'Universidad Complutense de Madrid',NULL,NULL),(62,'Universidad Pontificia Comillas',NULL,NULL),(63,'Universidad Internacional Menéndez Pelayo',NULL,NULL),(64,'Universidad Autónoma de Madrid',NULL,NULL),(65,'Universidad Politécnica de Madrid',NULL,NULL),(66,'Universidad Nacional de Educación a Distancia',NULL,NULL),(67,'Universidad de Alcalá',NULL,NULL),(68,'Universidad Carlos III de Madrid',NULL,NULL),(69,'Universidad Alfonso X el Sabio',NULL,NULL),(70,'Universidad CEU San Pablo',NULL,NULL),(71,'Universidad Francisco de Vitoria',NULL,NULL),(72,'Universidad Antonio de Nebrija',NULL,NULL),(73,'Universidad Europea de Madrid',NULL,NULL),(74,'Universidad Rey Juan Carlos',NULL,NULL),(75,'Universidad Camilo José Cela',NULL,NULL),(76,'Universidad a Distancia de Madrid','Universidad a Distancia de Madrid',NULL),(77,'Universidad Eclesiástica San Dámaso',NULL,NULL),(78,'Universidad de Murcia',NULL,NULL),(79,'Universidad Católica San Antonio',NULL,NULL),(80,'Universidad Politécnica de Cartagena',NULL,NULL),(81,'Universidad de Navarra',NULL,NULL),(82,'Universidad Pública de Navarra',NULL,NULL),(83,'Universidad de Deusto',NULL,NULL),(84,'Universidad del País Vasco',NULL,NULL),(85,'Universidad de Mondragón',NULL,NULL);
/*!40000 ALTER TABLE `universidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 19:50:46
