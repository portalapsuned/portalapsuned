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
-- Table structure for table `adjuntos_experiencias`
--

DROP TABLE IF EXISTS `adjuntos_experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjuntos_experiencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_fichero` varchar(127) NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `experiencia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjuntos_experiencias`
--

LOCK TABLES `adjuntos_experiencias` WRITE;
/*!40000 ALTER TABLE `adjuntos_experiencias` DISABLE KEYS */;
INSERT INTO `adjuntos_experiencias` VALUES (124,'file-1519648947519.JPG',NULL,126),(134,'file-1519667494382.JPG',NULL,124),(135,'file-1520242249538.JPG',NULL,124),(136,'file-1520186954391.JPG',NULL,91),(137,'file-1520248813195.JPG',NULL,91);
/*!40000 ALTER TABLE `adjuntos_experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjuntos_proyectos`
--

DROP TABLE IF EXISTS `adjuntos_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjuntos_proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_fichero` varchar(256) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_adjuntos_proyectos_idx` (`proyecto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COMMENT='Tabla con referencias a los ficheros adjuntos de los proyectos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjuntos_proyectos`
--

LOCK TABLES `adjuntos_proyectos` WRITE;
/*!40000 ALTER TABLE `adjuntos_proyectos` DISABLE KEYS */;
INSERT INTO `adjuntos_proyectos` VALUES (4,'file-1519897650454.JPG',NULL,14),(5,'file-1519897650454.JPG',NULL,15),(6,'file-1519897650454.JPG',NULL,16),(27,'file-1519996702477.JPG','',37),(28,'file-1519996702477.JPG','',38),(30,NULL,'',39),(56,'file-1520245573521.JPG','',17),(57,'file-1520249224552.JPG','',40);
/*!40000 ALTER TABLE `adjuntos_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `universidad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de alumos involucrados en proyectos de ApS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ambitos`
--

DROP TABLE IF EXISTS `ambitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ambitos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambitos`
--

LOCK TABLES `ambitos` WRITE;
/*!40000 ALTER TABLE `ambitos` DISABLE KEYS */;
INSERT INTO `ambitos` VALUES (1,'Artes y Humanidades','Artes y Humanidades'),(2,'Ciencias','Ciencias'),(3,'Ciencias de la Salud','Ciencias de la Salud'),(4,'Ciencias Sociales y Juridicas','ciencias Sociales y Juridicas'),(5,'Ingenieria y Arquitectura','Ingenieria y Arquitectura');
/*!40000 ALTER TABLE `ambitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografia_externa`
--

DROP TABLE IF EXISTS `bibliografia_externa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografia_externa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia_externa`
--

LOCK TABLES `bibliografia_externa` WRITE;
/*!40000 ALTER TABLE `bibliografia_externa` DISABLE KEYS */;
INSERT INTO `bibliografia_externa` VALUES (1,'11 Ideas Clave. ¿Cómo realizar un proyecto de aprendizaje Servicio?','Josep M. Puig (coord.) 11 Ideas Clave. ¿Cómo realizar un proyecto de aprendizaje Servicio? Barcelona, Graó, 2015'),(2,'Aprendizaje Servicio','AAVV.: \'Aprendizaje Servicio\' en Yeso, Elementos de acción Educativa, julio / agosto 2011, 376-377, p. 14-68.'),(3,'Aprendizaje Servicio','AAVV .: \'Aprendizaje servicio\' a Aula de Innovación Educativa , julio / agosto 2011, 203-204, p. 10-65.'),(4,'Prácticas de ciudadanía','MARTÍN, X. y RUBIO, L. (coord): Prácticas de ciudadanía. Diez experiencias de aprendizaje Servicio. Barcelona, Ministerio de Educación Ciencia y Octaedro, 2010.'),(5,'Aprendizaje Servicio (ApS). Educación y compromiso cívico','Josep M. Puig (coord.) Aprendizaje Servicio (ApS). Educación y compromiso cívico. Barcelona, Graó, 2009.'),(6,'Aprendizaje Servicio y responsabilidad social de las universidades','VVAA. : Aprendizaje Servicio y responsabilidad social de las universidades .Barcelona, ICE UB y Octaedro, 2008.'),(7,'Aprendizaje servicio y responsabilidad social de las universidades','MARTÍNEZ, M. (coord): Aprendizaje servicio y responsabilidad social de las universidades. Barcelona, Octaedro y Fundación Jaume Bofill, 2008.'),(8,'Experiencias de aprendizaje servicio','AAVV. : \'Experiencias de aprendizaje servicio\' en Perspectiva Escolar, mayo 2007, 315, p. 4-60.'),(9,'Aprendizaje Servicio. Educar para la ciudadanía','PUIG, JM; BATLLE, R.; BOSCH, C. y PALOS, J.: Aprendizaje Servicio. Educar para la ciudadanía. Barcelona, Ministerio de Educación y Ciencia y Octaedro, 2007.'),(10,'Experiencias de aprendizaje servicio','MARTÍN, X. y RUBIO, L. (coord.): Experiencias de aprendizaje servicio .Barcelona, Octaedro y Fundación Jaume Bofill, 2006.'),(11,'Aprendizaje y Servicio','AAVV: Monográfico \'Aprendizaje y servicio\' en Cuadernos de Pedagogía, mayo de 2006, 357, p. 56-87.'),(12,'Aprendizaje servicio. Educar para la ciudadanía','PUIG, JM; BATLLE, R.; BOSCH, C. y PALOS, J .: Aprendizaje servicio. Educar para la ciudadanía. Barcelona, Octaedro y Fundación Jaume Bofill, 2006.'),(13,'Educar con sentido. Aprendizaje Servicio en la Escuela Solc Nou','Anna Carmona, Brenda Bär y Josep M. Puig: Educar con sentido. Aprendizaje Servicio en la Escuela Solc Nou . Barcelona, Edebé, 2016.'),(14,'Por una pedagogía de Ayuda entre iguales','de la CERDA, M. Por una pedagogía de Ayuda entre iguales Barcelona, Graó, 2013'),(15,'Como construir una cultura del Emprendimiento, la Innovación y la Excelencia. Una pedagogía de la innovación social','MARINA, JA: Como construir una cultura del Emprendimiento, la Innovación y la Excelencia, Barcelona, 2012.'),(16,'Para una pedagogía del servicio. Taller para proyectos y ApS','MARTÍN, X. (coord.): Por una pedagogía del servicio. Taller para proyectos y ApS , Minyons Scouts y Guías de Cataluña, Barcelona, 2012.'),(17,'Aprendizaje servicio','AAVV .: \'Aprendizaje Servicio\' en Útiles, Fundación Pere Tarrés noviembre / as 2008, 164, p. 6-15.'),(18,'Aprendizaje servicio y salud','AAVV.: \'Aprendizaje servicio y salud\' en Compartir, julio / agosto / sep 2011, 83, p. 30-45.'),(19,'Formación y cooperación. Una experiencia de prácticas de educación en Centroamérica','CARBONELL, J. y CARRILLO, Y.: Formación y cooperación. Una experiencia de prácticas de educación en Centroamérica. Barcelona, Octaedro, 2007.'),(20,'Vamos que venimos. Guía para la Organización de grupos juveniles de trabajo comunitario','Minz, V.: Vamos que venimos. Guía para la Organización de grupos juveniles de trabajo comunitario. Buenos Aires, Ediciones La Crujía 1999.'),(21,'Desenvolvimiento humano. Un programa escolar de investigación y reflexiones de valores y aprendizaje-Servicio','BARON, Z.: Desenvolvimiento humano. Un programa escolar de investigación y reflexiones de valores y aprendizaje-Servicio. Buenos Aires, Lugar Editorial, 2001.'),(22,'Hacia una pedagogía de la reciprocidad','INVIERNO, A.: Hacia una pedagogía de la reciprocidad. Buenos Aires, Ciudad Nueva, 2004.'),(23,'Desde la esquina. Aprendiendo junto a los adolescentes con menos oportunidades','CROCE, A.: Desde la esquina. Aprendiendo junto a los adolescentes con menos oportunidades. Buenos Aires, Ediciones CICCUS, 2001.'),(24,'Desarrollo de la inteligencia emocional y social desde los valores y actitudes pro en la escuela','ROCHE, R.: Desarrollo de la inteligencia emocional y social desde los valores y actitudes pro en la escuela. Buenos Aires, Ciudad Nueva, 2004.'),(25,'Aprendizaje y Servicio solidario. En el sistema educativo y las organizaciones juveniles','TAPIA, MARÍA NIEVES: Aprendizaje y Servicio solidario. En el sistema educativo y las organizaciones juveniles. Buenos Aires, Ciudad Nueva, 2006.'),(26,'The complete guide to Service-Learning','Kaye, CB: The complete guide to Service-Learning. Minneapolis, Free Spirit, 2004.'),(27,'Building Partnership for Service-Learning','JACOBY, B. (comp.): Building Partnership for Service-Learning. San Francisco, Jossey-Bass, 2003.'),(28,'Service-Learning. The essence of the pedagogy','Furca A. y Billing SH. (eds.): Service-Learning. The essence of The pedagogy. Greenwich, Information Age Publishing, 2002.'),(29,'Where \'s the Learning in Service-Learning?','EYLER, J. y Giler, DE: Where \'s the Learning in Service-Learning? San Francisco, Jossey-Bass, 1999.'),(30,'Psicología y educación para la prosocialidad','ROCHE, R.: Psicología y educación para la prosocialidad. Bellaterra, Servicio de Publicaciones de la UAB, 1995.'),(31,'La solidaridad como pedagogía. El aprendizaje-Servicio en la escuela','TAPIA, MN: La solidaridad como pedagogía. El aprendizaje-Servicio en la escuela. Buenos Aires, Ciudad Nueva, 2001.'),(32,'Service-Learning o Aprendizaje-Servicio: Una Propuesta de Incorporación curricular del voluntariado.','MARTÍNEZ Odría, A.: Service-Learning o Aprendizaje-Servicio: Una Propuesta de Incorporación curricular del voluntariado. Tesis doctoral. Pamplona, 2005.'),(33,'La práctica solidaria como pedagogía de la ciudadanía activa','TAPIA, MN: La práctica solidaria como pedagogía de la ciudadanía activa. Barcelona, Fundación Jaume Bofill y UOC, 2005.'),(34,'La ayuda entre iguales. Análisis de una modalidad de prácticas de aprendizaje servicio','de la Cerda Toledo, MI: La ayuda entre iguales. Análisis de una modalidad de prácticas de aprendizaje servicio. Tesis doctoral, Barcelona, 2011.'),(35,'1111','Nuevo recurso bibliográfico');
/*!40000 ALTER TABLE `bibliografia_externa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinadores`
--

DROP TABLE IF EXISTS `coordinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `universidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinadores`
--

LOCK TABLES `coordinadores` WRITE;
/*!40000 ALTER TABLE `coordinadores` DISABLE KEYS */;
INSERT INTO `coordinadores` VALUES (1,'Ted Kacynski','tedkacynski@gmail.com',1),(2,'Alonso Meana','hectoram@gmail.com',0),(17,'Clara','clara@gmail.com',76),(18,'Carles Barberà Escoí','carlos.barbera@urv.cat',41),(19,'Agustí Costa Javier','agusti.costa@urv.cat',41),(20,' Sergi Saladié Gil','sergi.saladie@urv.cat',41),(21,'Jordi Sardà Ferran','jordi.sardaf@urv.cat',41),(23,'Héctor','otro@gmail.com',76),(24,'clara','1@gmail.com',76),(25,'otro','2@gmail.com',76),(26,'Otro coordinador','uno@gmail.com',0),(27,'','',0);
/*!40000 ALTER TABLE `coordinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidades`
--

DROP TABLE IF EXISTS `entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `tfno` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='Tabla con las entidades demandantes de proyectos ApS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidades`
--

LOCK TABLES `entidades` WRITE;
/*!40000 ALTER TABLE `entidades` DISABLE KEYS */;
INSERT INTO `entidades` VALUES (11,'UNED',33,'Gijón',NULL,'hectoram@gmail.com',NULL);
/*!40000 ALTER TABLE `entidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `ambito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ambito_idx` (`ambito_id`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (2,'Grado en Animación','Grado en Animación',1),(3,'Grado en Animación y Desarrollo de Videojuegos','Grado en Animación y Desarrollo de Videojuegos',1),(4,'Grado en Antropología Social y Cultural','Grado en Antropología Social y Cultural',1),(5,'Grado en Antropología y Evolución Humana','Grado en Antropología y Evolución Humana',1),(6,'Grado en Arqueología','Grado en Arqueología',1),(7,'Grado en Arte','Grado en Arte',1),(8,'Grado en Arte Electrónico y Digital','Grado en Arte Electrónico y Digital',1),(9,'Grado en Artes Escénicas','Grado en Artes Escénicas',1),(10,'Grado en Artes Escénicas y Mediáticas','Grado en Artes Escénicas y Mediáticas',1),(11,'Grado en Artes Escénicas-Interpretación','Grado en Artes Escénicas-Interpretación',1),(12,'Grado en Artes Visuales y Danza','Grado en Artes Visuales y Danza',1),(13,'Grado en Artes y Diseño','Grado en Artes y Diseño',1),(14,'Grado en Bellas Artes','Grado en Bellas Artes',1),(15,'Grado en Ciencias de la Cultura y Difusión Cultural','Grado en Ciencias de la Cultura y Difusión Cultural',1),(16,'Grado en Ciencias de la Danza','Grado en Ciencias de la Danza',1),(17,'Grado en Ciencias del Lenguaje y Estudios Literarios','Grado en Ciencias del Lenguaje y Estudios Literarios',1),(18,'Grado en Ciencias y Lenguas de la Antigüedad','Grado en Ciencias y Lenguas de la Antigüedad',1),(19,'Grado en Cine','Grado en Cine',1),(20,'Grado en Cine y Medios Audiovisuales','Grado en Cine y Medios Audiovisuales',1),(21,'Grado en Cinematografía y Artes Audiovisuales','Grado en Cinematografía y Artes Audiovisuales',1),(22,'Grado en Composición de Músicas Contemporáneas','Grado en Composición de Músicas Contemporáneas',1),(23,'Grado en Composición Musical','Grado en Composición Musical',1),(24,'Grado en Comunicación Cultural','Grado en Comunicación Cultural',1),(25,'Grado en Comunicación y Periodismo Audiovisual','Grado en Comunicación y Periodismo Audiovisual',1),(26,'Grado en Conservación y Restauración de Bienes Culturales','Grado en Conservación y Restauración de Bienes Culturales',1),(27,'Grado en Conservación y Restauración del Patrimonio Cultural','Grado en Conservación y Restauración del Patrimonio Cultural',1),(28,'Grado en Conservación-Restauración de Bienes Culturales','Grado en Conservación-Restauración de Bienes Culturales',1),(29,'Grado en Creación Artística para Videojuegos y Juegos Aplicados','Grado en Creación Artística para Videojuegos y Juegos Aplicados',1),(30,'Grado en Creación Musical','Grado en Creación Musical',1),(31,'Grado en Creación y Desarrollo de Videojuegos','Grado en Creación y Desarrollo de Videojuegos',1),(32,'Grado en Creación y Diseño','Grado en Creación y Diseño',1),(33,'Grado en Diseño','Grado en Diseño',1),(34,'Grado en Diseño de Espacios y Arquitectura de Interiores/spatial And Interior Design','Grado en Diseño de Espacios y Arquitectura de Interiores/spatial And Interior Design',1),(35,'Grado en Diseño de Interiores','Grado en Diseño de Interiores',1),(36,'Grado en Diseño de Moda','Grado en Diseño de Moda',1),(37,'Grado en Diseño de Productos Interactivos','Grado en Diseño de Productos Interactivos',1),(38,'Grado en Diseño Digital','Grado en Diseño Digital',1),(39,'Grado en Diseño Integral y Gestión de la Imagen','Grado en Diseño Integral y Gestión de la Imagen',1),(40,'Grado en Diseño Multimedia y Gráfico','Grado en Diseño Multimedia y Gráfico',1),(41,'Grado en Diseño Visual de Contenidos Digitales','Grado en Diseño Visual de Contenidos Digitales',1),(42,'Grado en Diseño y Creación Digitales','Grado en Diseño y Creación Digitales',1),(43,'Grado en Diseño y Desarrollo de Videojuegos','Grado en Diseño y Desarrollo de Videojuegos',1),(44,'Grado en Diseño y Tecnologías Creativas','Grado en Diseño y Tecnologías Creativas',1),(45,'Grado en Español: Estudios Lingüísticos y Literarios','Grado en Español: Estudios Lingüísticos y Literarios',1),(46,'Grado en Español: Lengua y Literatura','Grado en Español: Lengua y Literatura',1),(47,'Grado en Español: Lengua y Literaturas','Grado en Español: Lengua y Literaturas',1),(48,'Grado en Estudios Alemanes','Grado en Estudios Alemanes',1),(49,'Grado en Estudios Árabes e Islámicos','Grado en Estudios Árabes e Islámicos',1),(50,'Grado en Estudios Árabes y Hebreos','Grado en Estudios Árabes y Hebreos',1),(51,'Grado en Estudios Catalanes y Occitanos','Grado en Estudios Catalanes y Occitanos',1),(52,'Grado en Estudios Clásicos','Grado en Estudios Clásicos',1),(53,'Grado en Estudios Clásicos y Románicos','Grado en Estudios Clásicos y Románicos',1),(54,'Grado en Estudios de Asia Oriental','Grado en Estudios de Asia Oriental',1),(55,'Grado en Estudios de Asia y África Árabe, Chino y Japonés','Grado en Estudios de Asia y África Árabe, Chino y Japonés',1),(56,'Grado en Estudios de Catalán y de Clásicas','Grado en Estudios de Catalán y de Clásicas',1),(57,'Grado en Estudios de Catalán y Español','Grado en Estudios de Catalán y Español',1),(58,'Grado en Estudios de Español y de Clásicas','Grado en Estudios de Español y de Clásicas',1),(59,'Grado en Estudios de Francés y Catalán','Grado en Estudios de Francés y Catalán',1),(60,'Grado en Estudios de Francés y de Clásicas','Grado en Estudios de Francés y de Clásicas',1),(61,'Grado en Estudios de Francés y Español','Grado en Estudios de Francés y Español',1),(62,'Grado en Estudios de Gallego y Español','Grado en Estudios de Gallego y Español',1),(63,'Grado en Estudios de Inglés y Catalán','Grado en Estudios de Inglés y Catalán',1),(64,'Grado en Estudios de Inglés y de Clásicas','Grado en Estudios de Inglés y de Clásicas',1),(65,'Grado en Estudios de Inglés y Español','Grado en Estudios de Inglés y Español',1),(66,'Grado en Estudios de Inglés y Francés','Grado en Estudios de Inglés y Francés',1),(67,'Grado en Estudios Franceses','Grado en Estudios Franceses',1),(68,'Grado en Estudios Francófonos Aplicados','Grado en Estudios Francófonos Aplicados',1),(69,'Grado en Estudios Hebreos y Arameos','Grado en Estudios Hebreos y Arameos',1),(70,'Grado en Estudios Hispánicos','Grado en Estudios Hispánicos',1),(71,'Grado en Estudios Hispánicos, Lengua Española y sus Literaturas','Grado en Estudios Hispánicos, Lengua Española y sus Literaturas',1),(72,'Grado en Estudios Hispánicos: Lengua y Literatura','Grado en Estudios Hispánicos: Lengua y Literatura',1),(73,'Grado en Estudios Hispano-Alemanes','Grado en Estudios Hispano-Alemanes',1),(74,'Grado en Estudios Ingleses','Grado en Estudios Ingleses',1),(75,'Grado en Estudios Ingleses. Lengua, Literatura y Cultura','Grado en Estudios Ingleses. Lengua, Literatura y Cultura',1),(76,'Universidad a Distancia de Madrid','Universidad a Distancia de Madrid',1),(77,'Grado en Estudios Italianos','Grado en Estudios Italianos',1),(78,'Grado en Estudios Literarios','Grado en Estudios Literarios',1),(79,'Grado en Estudios Portugueses y Brasileños','Grado en Estudios Portugueses y Brasileños',1),(80,'Grado en Estudios Semíticos e Islámicos','Grado en Estudios Semíticos e Islámicos',1),(81,'Grado en Estudios Vascos','Grado en Estudios Vascos',1),(82,'Grado en Filología','Grado en Filología',1),(83,'Grado en Filología Bíblica Trilingüe','Grado en Filología Bíblica Trilingüe',1),(84,'Grado en Filología Catalana','Grado en Filología Catalana',1),(85,'Grado en Filología Catalana y Estudios Occitanos','Grado en Filología Catalana y Estudios Occitanos',1),(86,'Grado en Filología Clásica','Grado en Filología Clásica',1),(87,'Grado en Filología Hispánica','Grado en Filología Hispánica',1),(88,'Grado en Filología Moderna. Inglés','Grado en Filología Moderna. Inglés',1),(89,'Grado en Filología Vasca-Euskal Filologia','Grado en Filología Vasca-Euskal Filologia',1),(90,'Grado en Filosofía','Grado en Filosofía',1),(91,'Grado en Filosofía, Política y Economía','Grado en Filosofía, Política y Economía',1),(92,'Grado en Fotografía','Grado en Fotografía',1),(93,'Grado en Gallego y Portugués: Estudios Lingüísticos y Literarios','Grado en Gallego y Portugués: Estudios Lingüísticos y Literarios',1),(94,'Grado en Geografía','Grado en Geografía',1),(95,'Grado en Geografía e Historia','Grado en Geografía e Historia',1),(96,'Grado en Geografía y Ordenación del Territorio','Grado en Geografía y Ordenación del Territorio',1),(97,'Grado en Geografía y Ordenación Territorial','Grado en Geografía y Ordenación Territorial',1),(98,'Grado en Gestión Cultural','Grado en Gestión Cultural',1),(99,'Grado en Historia','Grado en Historia',1),(100,'Grado en Historia del Arte','Grado en Historia del Arte',1),(101,'Grado en Historia del Arte y Patrimonio Histórico-Artístico','Grado en Historia del Arte y Patrimonio Histórico-Artístico',1),(102,'Grado en Historia y Ciencias de la Música','Grado en Historia y Ciencias de la Música',1),(103,'Grado en Historia y Patrimonio','Grado en Historia y Patrimonio',1),(104,'Grado en Historia y Patrimonio Histórico','Grado en Historia y Patrimonio Histórico',1),(105,'Grado en Historia, Geografía e Historia del Arte','Grado en Historia, Geografía e Historia del Arte',1),(106,'Grado en Humanidades','Grado en Humanidades',1),(107,'Grado en Humanidades y Antropología Social','Grado en Humanidades y Antropología Social',1),(108,'Grado en Humanidades y Estudios Culturales','Grado en Humanidades y Estudios Culturales',1),(109,'Grado en Humanidades y Estudios Sociales','Grado en Humanidades y Estudios Sociales',1),(110,'Grado en Humanidades y Patrimonio','Grado en Humanidades y Patrimonio',1),(111,'Grado en Humanidades: Estudios Interculturales','Grado en Humanidades: Estudios Interculturales',1),(112,'Grado en Humanidades: Historia Cultural','Grado en Humanidades: Historia Cultural',1),(113,'Grado en Información y Documentación','Grado en Información y Documentación',1),(114,'Grado en Inglés','Grado en Inglés',1),(115,'Grado en Inglés: Estudios Lingüísticos y Literarios','Grado en Inglés: Estudios Lingüísticos y Literarios',1),(116,'Grado en Interpretación de Música Moderna','Grado en Interpretación de Música Moderna',1),(117,'Grado en Interpretación Musical','Grado en Interpretación Musical',1),(118,'Grado en Lengua Española y Literaturas Hispánicas','Grado en Lengua Española y Literaturas Hispánicas',1),(119,'Grado en Lengua Española y su Literatura','Grado en Lengua Española y su Literatura',1),(120,'Grado en Lengua Española y sus Literaturas','Grado en Lengua Española y sus Literaturas',1),(121,'Grado en Lengua y Cultura Vasca / Euskal Hizkuntza Eta Kultura','Grado en Lengua y Cultura Vasca / Euskal Hizkuntza Eta Kultura',1),(122,'Grado en Lengua y Literatura Alemanas','Grado en Lengua y Literatura Alemanas',1),(123,'Grado en Lengua y Literatura Catalanas','Grado en Lengua y Literatura Catalanas',1),(124,'Grado en Lengua y Literatura Española','Grado en Lengua y Literatura Española',1),(125,'Grado en Lengua y Literatura Españolas','Grado en Lengua y Literatura Españolas',1),(126,'Grado en Lengua y Literatura Gallegas','Grado en Lengua y Literatura Gallegas',1),(127,'Grado en Lengua y Literatura Hispánica','Grado en Lengua y Literatura Hispánica',1),(128,'Grado en Lengua y Literatura Hispánicas','Grado en Lengua y Literatura Hispánicas',1),(129,'Grado en Lengua y Literatura Inglesas','Grado en Lengua y Literatura Inglesas',1),(130,'Grado en Lenguas Aplicadas','Grado en Lenguas Aplicadas',1),(131,'Grado en Lenguas Aplicadas y Comunicación Intercultural','Grado en Lenguas Aplicadas y Comunicación Intercultural',1),(132,'Grado en Lenguas Aplicadas a la Comunicación y al Marketing','Grado en Lenguas Aplicadas a la Comunicación y al Marketing',1),(133,'Grado en Lenguas Aplicadas y Traducción','Grado en Lenguas Aplicadas y Traducción',1),(134,'Grado en Lenguas Aplicadas y Traducción (inglés)','Grado en Lenguas Aplicadas y Traducción (inglés)',1),(135,'Grado en Lenguas Extranjeras','Grado en Lenguas Extranjeras',1),(136,'Grado en Lenguas Modernas','Grado en Lenguas Modernas',1),(137,'Grado en Lenguas Modernas y Gestión','Grado en Lenguas Modernas y Gestión',1),(138,'Grado en Lenguas Modernas y su Literatura','Grado en Lenguas Modernas y su Literatura',1),(139,'Grado en Lenguas Modernas y sus Literaturas','Grado en Lenguas Modernas y sus Literaturas',1),(140,'Grado en Lenguas Modernas y Traducción','Grado en Lenguas Modernas y Traducción',1),(141,'Grado en Lenguas Modernas, Cultura y Comunicación','Grado en Lenguas Modernas, Cultura y Comunicación',1),(142,'Grado en Lenguas Románicas y sus Literaturas','Grado en Lenguas Románicas y sus Literaturas',1),(143,'Grado en Lenguas y Literaturas Modernas','Grado en Lenguas y Literaturas Modernas',1),(144,'Grado en Lenguas y Literaturas Modernas, Francés - Inglés','Grado en Lenguas y Literaturas Modernas, Francés - Inglés',1),(145,'Grado en Lenguas y Literaturas Modernas-Francés','Grado en Lenguas y Literaturas Modernas-Francés',1),(146,'Grado en Lenguas y Literaturas Modernas-Portugués','Grado en Lenguas y Literaturas Modernas-Portugués',1),(147,'Grado en Lenguas, Literaturas y Culturas Románicas','Grado en Lenguas, Literaturas y Culturas Románicas',1),(148,'Grado en Lingüística','Grado en Lingüística',1),(149,'Grado en Lingüística y Lenguas Aplicadas','Grado en Lingüística y Lenguas Aplicadas',1),(150,'Grado en Literatura General y Comparada','Grado en Literatura General y Comparada',1),(151,'Grado en Literaturas Comparadas','Grado en Literaturas Comparadas',1),(152,'Grado en Música','Grado en Música',1),(153,'Grado en Musicología','Grado en Musicología',1),(154,'Grado en Paisajismo','Grado en Paisajismo',1),(155,'Grado en Pedagogía de las Artes Visuales y la Danza','Grado en Pedagogía de las Artes Visuales y la Danza',1),(156,'Grado en Proyectos de Interiorismo','Grado en Proyectos de Interiorismo',1),(157,'Grado en Traducción','Grado en Traducción',1),(158,'Grado en Traducción e Interpretación','Grado en Traducción e Interpretación',1),(159,'Grado en Traducción e Interpretación de Lengua de Signos Española','Grado en Traducción e Interpretación de Lengua de Signos Española',1),(160,'Grado en Traducción e Interpretación: Inglés - Alemán','Grado en Traducción e Interpretación: Inglés - Alemán',1),(161,'Grado en Traducción e Interpretación: Inglés - Francés','Grado en Traducción e Interpretación: Inglés - Francés',1),(162,'Grado en Traducción y Comunicación Intercultural','Grado en Traducción y Comunicación Intercultural',1),(163,'Grado en Traducción y Mediación Interlingüística','Grado en Traducción y Mediación Interlingüística',1),(164,'Grado en Traducción, Interpretación y Lenguas Aplicadas','Grado en Traducción, Interpretación y Lenguas Aplicadas',1),(165,'Grado en Biología','Grado en Biología',2),(166,'Grado en Biología Ambiental','Grado en Biología Ambiental',2),(167,'Grado en Bioquímica','Grado en Bioquímica',2),(168,'Grado en Bioquímica y Biología Molecular','Grado en Bioquímica y Biología Molecular',2),(169,'Grado en Bioquímica y Ciencias Biomédicas','Grado en Bioquímica y Ciencias Biomédicas',2),(170,'Grado en Biotecnología','Grado en Biotecnología',2),(171,'Grado en Ciencia y Tecnología de los Alimentos','Grado en Ciencia y Tecnología de los Alimentos',2),(172,'Grado en Ciencias Agrarias y Bioeconomía','Grado en Ciencias Agrarias y Bioeconomía',2),(173,'Grado en Ciencias Ambientales','Grado en Ciencias Ambientales',2),(174,'Grado en Ciencias Biomédicas','Grado en Ciencias Biomédicas',2),(175,'Grado en Ciencias de la Alimentación','Grado en Ciencias de la Alimentación',2),(176,'Grado en Ciencias del Mar','Grado en Ciencias del Mar',2),(177,'Grado en Ciencias Experimentales','Grado en Ciencias Experimentales',2),(178,'Grado en Ciencias Gastronómicas','Grado en Ciencias Gastronómicas',2),(179,'Grado en Enología','Grado en Enología',2),(180,'Grado en Estadística','Grado en Estadística',2),(181,'Grado en Estadística Aplicada','Grado en Estadística Aplicada',2),(182,'Grado en Física','Grado en Física',2),(183,'Grado en Genética','Grado en Genética',2),(184,'Grado en Geología','Grado en Geología',2),(185,'Grado en Matemáticas','Grado en Matemáticas',2),(186,'Grado en Matemáticas y Estadística','Grado en Matemáticas y Estadística',2),(187,'Grado en Microbiología','Grado en Microbiología',2),(188,'Grado en Nanociencia y Nanotecnología','Grado en Nanociencia y Nanotecnología',2),(189,'Grado en Óptica y Optometría','Grado en Óptica y Optometría',2),(190,'Grado en Química','Grado en Química',2),(191,'Grado en Tecnología y Gestión Alimentaria','Grado en Tecnología y Gestión Alimentaria',2),(192,'Grado en Bioinformática','Grado en Bioinformática',3),(193,'Grado en Biología Humana','Grado en Biología Humana',3),(194,'Grado en Biología Sanitaria','Grado en Biología Sanitaria',3),(195,'Grado en Biomedicina','Grado en Biomedicina',3),(196,'Grado en Biomedicina Básica y Experimental','Grado en Biomedicina Básica y Experimental',3),(197,'Grado en Biotecnología','Grado en Biotecnología',3),(198,'Grado en Ciencia y Producción Animal','Grado en Ciencia y Producción Animal',3),(199,'Grado en Ciencia y Tecnología de los Alimentos','Grado en Ciencia y Tecnología de los Alimentos',3),(200,'Grado en Ciencias Biomédicas','Grado en Ciencias Biomédicas',3),(201,'Grado en Ciencias de la Actividad Física y del Deporte','Grado en Ciencias de la Actividad Física y del Deporte',3),(202,'Grado en Ciencias de la Actividad Física y el Deporte','Grado en Ciencias de la Actividad Física y el Deporte',3),(203,'Grado en Enfermería','Grado en Enfermería',3),(204,'Grado en Farmacia','Grado en Farmacia',3),(205,'Grado en Fisioterapia','Grado en Fisioterapia',3),(206,'Grado en Logopedia','Grado en Logopedia',3),(207,'Grado en Medicina','Grado en Medicina',3),(208,'Grado en Nutrición Humana y Dietética','Grado en Nutrición Humana y Dietética',3),(209,'Grado en Odontología','Grado en Odontología',3),(210,'Grado en Óptica y Optometría','Grado en Óptica y Optometría',3),(211,'Grado en Óptica, Optometría y Audiología','Grado en Óptica, Optometría y Audiología',3),(212,'Grado en Podología','Grado en Podología',3),(213,'Grado en Psicología','Grado en Psicología',3),(214,'Grado en Terapia Ocupacional','Grado en Terapia Ocupacional',3),(215,'Grado en Veterinaria','Grado en Veterinaria',3),(216,'Grado en Administración de Empresas','Grado en Administración de Empresas',4),(217,'Grado en Administración de Empresas y Gestión de la Innovación','Grado en Administración de Empresas y Gestión de la Innovación',4),(218,'Grado en Administración y Dirección de Empresas','Grado en Administración y Dirección de Empresas',4),(219,'Grado en Administración y Dirección de Empresas Tecnológicas','Grado en Administración y Dirección de Empresas Tecnológicas',4),(220,'Grado en Administración y Gestión Pública','Grado en Administración y Gestión Pública',4),(221,'Grado en Administración, Dirección de Empresas','Grado en Administración, Dirección de Empresas',4),(222,'Grado en Análisis de Negocios/ Business Analytics','Grado en Análisis de Negocios/ Business Analytics',4),(223,'Grado en Análisis Económico','Grado en Análisis Económico',4),(224,'Grado en Antropología Social','Grado en Antropología Social',4),(225,'Grado en Antropología Social y Cultural','Grado en Antropología Social y Cultural',4),(226,'Grado en Asistencia de Dirección - Management Assistance','Grado en Asistencia de Dirección - Management Assistance',4),(227,'Grado en Audiovisual y Multimedia','Grado en Audiovisual y Multimedia',4),(228,'Grado en Ciencia Política y Administración Pública','Grado en Ciencia Política y Administración Pública',4),(229,'Grado en Ciencia Política y de la Administración','Grado en Ciencia Política y de la Administración',4),(230,'Grado en Ciencia Política y Gestión Pública','Grado en Ciencia Política y Gestión Pública',4),(231,'Grado en Ciencia, Gestión e Ingeniería de Servicio','Grado en Ciencia, Gestión e Ingeniería de Servicio',4),(232,'Grado en Ciencias Culinarias y Gastronómicas','Grado en Ciencias Culinarias y Gastronómicas',4),(233,'Grado en Ciencias de la Actividad Física y del Deporte','Grado en Ciencias de la Actividad Física y del Deporte',4),(234,'Grado en Ciencias de la Seguridad','Grado en Ciencias de la Seguridad',4),(235,'Grado en Ciencias del Deporte','Grado en Ciencias del Deporte',4),(236,'Grado en Ciencias del Trabajo','Grado en Ciencias del Trabajo',4),(237,'Grado en Ciencias del Trabajo y Recursos Humanos','Grado en Ciencias del Trabajo y Recursos Humanos',4),(238,'Grado en Ciencias del Trabajo, Relaciones Laborales y Recursos Humanos','Grado en Ciencias del Trabajo, Relaciones Laborales y Recursos Humanos',4),(239,'Grado en Ciencias del Transporte y la Logística','Grado en Ciencias del Transporte y la Logística',4),(240,'Grado en Ciencias Económicas','Grado en Ciencias Económicas',4),(241,'Grado en Ciencias Empresariales','Grado en Ciencias Empresariales',4),(242,'Grado en Ciencias Empresariales - Management','Grado en Ciencias Empresariales - Management',4),(243,'Grado en Ciencias Jurídicas de las Administraciones Públicas','Grado en Ciencias Jurídicas de las Administraciones Públicas',4),(244,'Grado en Ciencias Políticas','Grado en Ciencias Políticas',4),(245,'Grado en Ciencias Políticas y de la Administración','Grado en Ciencias Políticas y de la Administración',4),(246,'Grado en Ciencias Políticas y de la Administración Pública','Grado en Ciencias Políticas y de la Administración Pública',4),(247,'Grado en Ciencias Políticas y Gestión Pública','Grado en Ciencias Políticas y Gestión Pública',4),(248,'Grado en Ciencias Políticas y Sociología','Grado en Ciencias Políticas y Sociología',4),(249,'Grado en Ciencias Sociales','Grado en Ciencias Sociales',4),(250,'Grado en Cine y Televisión','Grado en Cine y Televisión',4),(251,'Grado en Comercio','Grado en Comercio',4),(252,'Grado en Comercio Internacional','Grado en Comercio Internacional',4),(253,'Grado en Comercio y Marketing','Grado en Comercio y Marketing',4),(254,'Grado en Comunicación','Grado en Comunicación',4),(255,'Grado en Comunicación Audiovisual','Grado en Comunicación Audiovisual',4),(256,'Grado en Comunicación Audiovisual y Multimedia','Grado en Comunicación Audiovisual y Multimedia',4),(257,'Grado en Comunicación Corporativa, Protocolo y Organización de Eventos','Grado en Comunicación Corporativa, Protocolo y Organización de Eventos',4),(258,'Grado en Comunicación Digital','Grado en Comunicación Digital',4),(259,'Grado en Comunicación e Industrias Culturales','Grado en Comunicación e Industrias Culturales',4),(260,'Grado en Comunicación Internacional - Bachelor In Global Communication','Grado en Comunicación Internacional - Bachelor In Global Communication',4),(261,'Grado en Comunicación y Relaciones Públicas','Grado en Comunicación y Relaciones Públicas',4),(262,'Grado en Comunicación Publicitaria','Grado en Comunicación Publicitaria',4),(263,'Grado en Consultoría y Gestión de la Información','Grado en Consultoría y Gestión de la Información',4),(264,'Grado en Contabilidad y Finanzas','Grado en Contabilidad y Finanzas',4),(265,'Grado en Creación y Narración de Videojuegos','Grado en Creación y Narración de Videojuegos',4),(266,'Grado en Criminología','Grado en Criminología',4),(267,'Grado en Criminología y Políticas Públicas de Prevención','Grado en Criminología y Políticas Públicas de Prevención',4),(268,'Grado en Criminología y Seguridad','Grado en Criminología y Seguridad',4),(269,'Grado en Derecho','Grado en Derecho',4),(270,'Grado en Derecho / Bachelor of Laws','Grado en Derecho / Bachelor of Laws',4),(271,'Grado en Desarrollo, Gestión comercial y Estrategias de Mercado','Grado en Desarrollo, Gestión comercial y Estrategias de Mercado',4),(272,'Grado en Dirección Comercial y Marketing','Grado en Dirección Comercial y Marketing',4),(273,'Grado en Dirección de Empresas','Grado en Dirección de Empresas',4),(274,'Grado en Dirección de Empresas (BBA)','Grado en Dirección de Empresas (BBA)',4),(275,'Grado en Dirección de Empresas Tecnológicas','Grado en Dirección de Empresas Tecnológicas',4),(276,'Grado en Dirección de Operaciones Aéreas y Piloto Comercial','Grado en Dirección de Operaciones Aéreas y Piloto Comercial',4),(277,'Grado en Dirección Financiera y Contabilidad','Grado en Dirección Financiera y Contabilidad',4),(278,'Grado en Dirección Internacional de Empresas','Grado en Dirección Internacional de Empresas',4),(279,'Grado en Dirección Internacional de Empresas de Turismo y Ocio','Grado en Dirección Internacional de Empresas de Turismo y Ocio',4),(280,'Grado en Dirección y Administración de Empresas','Grado en Dirección y Administración de Empresas',4),(281,'Grado en Dirección y Creación de Empresas','Grado en Dirección y Creación de Empresas',4),(282,'Grado en Dirección y Gestión de Empresas en el ámbito Digital','Grado en Dirección y Gestión de Empresas en el ámbito Digital',4),(283,'Grado en Dirección y Gestión Pública','Grado en Dirección y Gestión Pública',4),(284,'Grado en Diseño de Producto','Grado en Diseño de Producto',4),(285,'Grado en Diseño y Producción de Videojuegos','Grado en Diseño y Producción de Videojuegos',4),(286,'Grado en Economía','Grado en Economía',4),(287,'Grado en Economía Financiera y Actuarial','Grado en Economía Financiera y Actuarial',4),(288,'Grado en Economía y Finanzas','Grado en Economía y Finanzas',4),(289,'Grado en Economía y Gestión','Grado en Economía y Gestión',4),(290,'Grado en Economía y Negocios Internacionales','Grado en Economía y Negocios Internacionales',4),(291,'Grado en Educación Infantil','Grado en Educación Infantil',4),(292,'Grado en Educación Infantil - Infant Education','Grado en Educación Infantil - Infant Education',4),(293,'Grado en Educación Primaria','Grado en Educación Primaria',4),(294,'Grado en Educación Primaria - Primary Education','Grado en Educación Primaria - Primary Education',4),(295,'Grado en Educación Social','Grado en Educación Social',4),(296,'Grado en Empresa y Tecnología','Grado en Empresa y Tecnología',4),(297,'Grado en Empresa Internacional','Grado en Empresa Internacional',4),(298,'Grado en Empresas y Actividades Turísticas','Grado en Empresas y Actividades Turísticas',4),(299,'Grado en Estadística','Grado en Estadística',4),(300,'Grado en Estadística Aplicada','Grado en Estadística Aplicada',4),(301,'Grado en Estadística Empresarial','Grado en Estadística Empresarial',4),(302,'Grado en Estadística y Empresa','Grado en Estadística y Empresa',4),(303,'Grado en Estudios Globales / Global Studies','Grado en Estudios Globales / Global Studies',4),(304,'Grado en Estudios Internacionales','Grado en Estudios Internacionales',4),(305,'Grado en Estudios Internacionales de Economía y Empresa / International Business Economics','Grado en Estudios Internacionales de Economía y Empresa / International Business Economics',4),(306,'Grado en Filosofía, Política y Economía','Grado en Filosofía, Política y Economía',4),(307,'Grado en Finanzas','Grado en Finanzas',4),(308,'Grado en Finanzas y Contabilidad','Grado en Finanzas y Contabilidad',4),(309,'Grado en Finanzas y Seguros','Grado en Finanzas y Seguros',4),(310,'Grado en Finanzas, Banca y Seguros','Grado en Finanzas, Banca y Seguros',4),(311,'Grado en Fiscalidad y Administración Pública','Grado en Fiscalidad y Administración Pública',4),(312,'Grado en Gastronomía','Grado en Gastronomía',4),(313,'Grado en Gastronomía / Gastronomy','Grado en Gastronomía / Gastronomy',4),(314,'Grado en Gastronomía y Artes Culinarias','Grado en Gastronomía y Artes Culinarias',4),(315,'Grado en Geografía','Grado en Geografía',4),(316,'Grado en Geografía y Gestión del Territorio','Grado en Geografía y Gestión del Territorio',4),(317,'Grado en Geografía y Medio Ambiente','Grado en Geografía y Medio Ambiente',4),(318,'Grado en Geografía y Ordenación del Territorio','Grado en Geografía y Ordenación del Territorio',4),(319,'Grado en Geografía, Ordenación del Territorio y Gestión del Medio Ambiente','Grado en Geografía, Ordenación del Territorio y Gestión del Medio Ambiente',4),(320,'Grado en Gestión Aeronáutica','Grado en Gestión Aeronáutica',4),(321,'Grado en Gestión Comercial','Grado en Gestión Comercial',4),(322,'Grado en Gestión Comercial y Marketing','Grado en Gestión Comercial y Marketing',4),(323,'Grado en Gestión de Empresas','Grado en Gestión de Empresas',4),(324,'Grado en Gestión de Empresas de Comercio y Distribución','Grado en Gestión de Empresas de Comercio y Distribución',4),(325,'Grado en Gestión de Negocios','Grado en Gestión de Negocios',4),(326,'Grado en Gestión de Pequeñas y Medianas Empresas','Grado en Gestión de Pequeñas y Medianas Empresas',4),(327,'Grado en Gestión de Seguridad Pública','Grado en Gestión de Seguridad Pública',4),(328,'Grado en Gestión de Sistemas de Información / Bachelor In Management Information Systems','Grado en Gestión de Sistemas de Información / Bachelor In Management Information Systems',4),(329,'Grado en Gestión Económico Financiera','Grado en Gestión Económico Financiera',4),(330,'Grado en Gestión Hotelera y Turística','Grado en Gestión Hotelera y Turística',4),(331,'Grado en Gestión Informática Empresarial','Grado en Gestión Informática Empresarial',4),(332,'Grado en Gestión Mercantil y Financiera','Grado en Gestión Mercantil y Financiera',4),(333,'Grado en Gestión Turística','Grado en Gestión Turística',4),(334,'Grado en Gestión Turística y Hotelera','Grado en Gestión Turística y Hotelera',4),(335,'Grado en Gestión y Administración Pública','Grado en Gestión y Administración Pública',4),(336,'Grado en Gestión y Marketing Empresarial','Grado en Gestión y Marketing Empresarial',4),(337,'Grado en Historia y Geografía','Grado en Historia y Geografía',4),(338,'Grado en Información y Documentación','Grado en Información y Documentación',4),(339,'Grado en Lengua de Signos Española y Comunidad Sorda','Grado en Lengua de Signos Española y Comunidad Sorda',4),(340,'Grado en Liderazgo Emprendedor e Innovación','Grado en Liderazgo Emprendedor e Innovación',4),(341,'Grado en Logística y Negocios Marítimos','Grado en Logística y Negocios Marítimos',4),(342,'Grado en Maestro Educación Primaria','Grado en Maestro Educación Primaria',4),(343,'Grado en Maestro de Educación Infantil','Grado en Maestro de Educación Infantil',4),(344,'Grado en Maestro/a de Educación Infantil','Grado en Maestro/a de Educación Infantil',4),(345,'Grado en Maestro de Educación Primaria','Grado en Maestro de Educación Primaria',4),(346,'Grado en Maestro/a de Educación Primaria','Grado en Maestro/a de Educación Primaria',4),(347,'Grado en Maestro en Educación Infantil','Grado en Maestro en Educación Infantil',4),(348,'Grado en Maestro en Educación Primaria','Grado en Maestro en Educación Primaria',4),(349,'Grado en Maestro/a en Educación Infantil','Grado en Maestro/a en Educación Infantil',4),(350,'Grado en Maestro/a en Educación Primaria','Grado en Maestro/a en Educación Primaria',4),(351,'Grado en Maestro o Maestra de Educación Infantil','Grado en Maestro o Maestra de Educación Infantil',4),(352,'Grado en Maestro o Maestra de Educación Primaria','Grado en Maestro o Maestra de Educación Primaria',4),(353,'Grado en Magisterio de Educación Infantil','Grado en Magisterio de Educación Infantil',4),(354,'Grado en Magisterio de Educación Primaria','Grado en Magisterio de Educación Primaria',4),(355,'Grado en Magisterio en Educación Infantil','Grado en Magisterio en Educación Infantil',4),(356,'Grado en Magisterio en Educación Primaria','Grado en Magisterio en Educación Primaria',4),(357,'Grado en Marketing','Grado en Marketing',4),(358,'Grado en Marketing e Investigación de Mercados','Grado en Marketing e Investigación de Mercados',4),(359,'Grado en Marketing e Investigación de Mercados (MIM)','Grado en Marketing e Investigación de Mercados (MIM)',4),(360,'Grado en Marketing y Comercialización Internacional','Grado en Marketing y Comercialización Internacional',4),(361,'Grado en Marketing y Comunicación','Grado en Marketing y Comunicación',4),(362,'Grado en Marketing y Comunicación Comercial','Grado en Marketing y Comunicación Comercial',4),(363,'Grado en Marketing y Comunicación Digital','Grado en Marketing y Comunicación Digital',4),(364,'Grado en Marketing y Comunicación Empresarial','Grado en Marketing y Comunicación Empresarial',4),(365,'Grado en Marketing y Comunidades Digitales','Grado en Marketing y Comunidades Digitales',4),(366,'Grado en Marketing y Dirección Comercial','Grado en Marketing y Dirección Comercial',4),(367,'Grado en Marketing y Gestión Comercial','Grado en Marketing y Gestión Comercial',4),(368,'Grado en Medios Audiovisuales','Grado en Medios Audiovisuales',4),(369,'Grado en Multimedia','Grado en Multimedia',4),(370,'Grado en Multimedia y Artes Digitales','Grado en Multimedia y Artes Digitales',4),(371,'Grado en Negocios Internacionales/ International Business','Grado en Negocios Internacionales/ International Business',4),(372,'Grado en Negocios y Marketing Internacionales','Grado en Negocios y Marketing Internacionales',4),(373,'Grado en Organización de Eventos, Protocolo y Relaciones Institucionales','Grado en Organización de Eventos, Protocolo y Relaciones Institucionales',4),(374,'Grado en Pedagogía','Grado en Pedagogía',4),(375,'Grado en Periodismo','Grado en Periodismo',4),(376,'Grado en Periodismo y Comunicación Corporativa','Grado en Periodismo y Comunicación Corporativa',4),(377,'Grado en Protocolo y Organización de Eventos','Grado en Protocolo y Organización de Eventos',4),(378,'Grado en Protocolo, Organización de Eventos y Comunicación Corporativa','Grado en Protocolo, Organización de Eventos y Comunicación Corporativa',4),(379,'Grado en Psicología','Grado en Psicología',4),(380,'Grado en Publicidad','Grado en Publicidad',4),(381,'Grado en Publicidad y Relaciones Públicas','Grado en Publicidad y Relaciones Públicas',4),(382,'Grado en Publicidad, Marketing y Relaciones Públicas','Grado en Publicidad, Marketing y Relaciones Públicas',4),(383,'Grado en Publicidad, Relaciones Públicas y Marketing','Grado en Publicidad, Relaciones Públicas y Marketing',4),(384,'Grado en Relaciones Internacionales','Grado en Relaciones Internacionales',4),(385,'Grado en Relaciones Internacionales / Bachelor in International Relations','Grado en Relaciones Internacionales / Bachelor in International Relations',4),(386,'Grado en Relaciones Laborales','Grado en Relaciones Laborales',4),(387,'Grado en Relaciones Laborales y Desarrollo de Recursos Humanos','Grado en Relaciones Laborales y Desarrollo de Recursos Humanos',4),(388,'Grado en Relaciones Laborales y Empleo','Grado en Relaciones Laborales y Empleo',4),(389,'Grado en Relaciones Laborales y Ocupación','Grado en Relaciones Laborales y Ocupación',4),(390,'Grado en Relaciones Laborales y Recursos Humanos','Grado en Relaciones Laborales y Recursos Humanos',4),(391,'Grado en Seguridad','Grado en Seguridad',4),(392,'Grado en Seguridad Integral','Grado en Seguridad Integral',4),(393,'Grado en Seguridad y Control de Riesgos','Grado en Seguridad y Control de Riesgos',4),(394,'Grado en Sociología','Grado en Sociología',4),(395,'Grado en Sociología Aplicada','Grado en Sociología Aplicada',4),(396,'Grado en Técnicas Cuantitativas para la Economía y la Empresa','Grado en Técnicas Cuantitativas para la Economía y la Empresa',4),(397,'Grado en Trabajo Social','Grado en Trabajo Social',4),(398,'Grado en Traducción y Comunicación Intercultural','Grado en Traducción y Comunicación Intercultural',4),(399,'Grado en Turismo','Grado en Turismo',4),(400,'Grado en Turismo, Administración de Organizaciones y Recursos Turísticos','Grado en Turismo, Administración de Organizaciones y Recursos Turísticos',4),(401,'Grado en Turismo y Gestión del Ocio','Grado en Turismo y Gestión del Ocio',4),(402,'Grado en Turismo y Ocio','Grado en Turismo y Ocio',4),(403,'Grado en Urbanismo, Ordenación del Territorio y Sostenibilidad','Grado en Urbanismo, Ordenación del Territorio y Sostenibilidad',4),(404,'Grado en Arquitectura','Grado en Arquitectura',5),(405,'Grado en Arquitectura Naval','Grado en Arquitectura Naval',5),(406,'Grado en Arquitectura Naval e Ingeniería de Sistemas Marinos','Grado en Arquitectura Naval e Ingeniería de Sistemas Marinos',5),(407,'Grado en Arquitectura Naval e Ingeniería Marítima','Grado en Arquitectura Naval e Ingeniería Marítima',5),(408,'Grado en Arquitectura Técnica','Grado en Arquitectura Técnica',5),(409,'Grado en Arquitectura Técnica y Edificación','Grado en Arquitectura Técnica y Edificación',5),(410,'Grado en Biotecnología','Grado en Biotecnología',5),(411,'Grado en Ciencia y Tecnología de los Alimentos','Grado en Ciencia y Tecnología de los Alimentos',5),(412,'Grado en Ciencias y Tecnologías de Telecomunicación','Grado en Ciencias y Tecnologías de Telecomunicación',5),(413,'Grado en Contenidos Digitales Interactivos','Grado en Contenidos Digitales Interactivos',5),(414,'Grado en Desarrollo de Videojuegos','Grado en Desarrollo de Videojuegos',5),(415,'Grado en Diseño','Grado en Diseño',5),(416,'Grado en Diseño / Design','Grado en Diseño / Design',5),(417,'Grado en Edificación','Grado en Edificación',5),(418,'Grado en Diseño y Desarrollo de Videojuegos','Grado en Diseño y Desarrollo de Videojuegos',5),(419,'Grado en Estudios de Arquitectura','Grado en Estudios de Arquitectura',5),(420,'Grado en Estudios de Arquitectura / Bachelor In Architectural Sutdies','Grado en Estudios de Arquitectura / Bachelor In Architectural Sutdies',5),(421,'Grado en Estudios de la Arquitectura','Grado en Estudios de la Arquitectura',5),(422,'Grado en Estudios en Arquitectura','Grado en Estudios en Arquitectura',5),(423,'Grado en Fotografía','Grado en Fotografía',5),(424,'Grado en Fotografía y Creación Digital','Grado en Fotografía y Creación Digital',5),(425,'Grado en Fundamentos de Arquitectura','Grado en Fundamentos de Arquitectura',5),(426,'Grado en Fundamentos de Arquitectura y Urbanismo','Grado en Fundamentos de Arquitectura y Urbanismo',5),(427,'Grado en Informática de Servicios','Grado en Informática de Servicios',5),(428,'Grado en Ingeniería Aeroespacial','Grado en Ingeniería Aeroespacial',5),(429,'Grado en Ingeniería Aeroespacial en Aeronavegación','Grado en Ingeniería Aeroespacial en Aeronavegación',5),(430,'Grado en Ingeniería Aeroespacial en Aeronaves','Grado en Ingeniería Aeroespacial en Aeronaves',5),(431,'Grado en Ingeniería Aeroespacial en Transporte y Aeropuertos','Grado en Ingeniería Aeroespacial en Transporte y Aeropuertos',5),(432,'Grado en Ingeniería Agraria','Grado en Ingeniería Agraria',5),(433,'Grado en Ingeniería Agraria y Alimentaria','Grado en Ingeniería Agraria y Alimentaria',5),(434,'Grado en Ingeniería Agraria y del Medio Rural','Grado en Ingeniería Agraria y del Medio Rural',5),(435,'Grado en Ingeniería Agraria y Energética','Grado en Ingeniería Agraria y Energética',5),(436,'Grado en Ingeniería Agrícola','Grado en Ingeniería Agrícola',5),(437,'Grado en Ingeniería Agrícola y Agroalimentaria','Grado en Ingeniería Agrícola y Agroalimentaria',5),(438,'Grado en Ingeniería Agrícola y del Medio Rural','Grado en Ingeniería Agrícola y del Medio Rural',5),(439,'Grado en Ingeniería Agroalimentaria','Grado en Ingeniería Agroalimentaria',5),(440,'Grado en Ingeniería Agroalimentaria y Agroambiental','Grado en Ingeniería Agroalimentaria y Agroambiental',5),(441,'Grado en Ingeniería Agroalimentaria y de Sistemas Biológicos','Grado en Ingeniería Agroalimentaria y de Sistemas Biológicos',5),(442,'Grado en Ingeniería Agroalimentaria y del Medio Rural','Grado en Ingeniería Agroalimentaria y del Medio Rural',5),(443,'Grado en Ingeniería Agroambiental','Grado en Ingeniería Agroambiental',5),(444,'Grado en Ingeniería Agroambiental y del Paisaje','Grado en Ingeniería Agroambiental y del Paisaje',5),(445,'Grado en Ingeniería Agropecuaria y del Medio Rural','Grado en Ingeniería Agropecuaria y del Medio Rural',5),(446,'Grado en Ingeniería Alimentaria','Grado en Ingeniería Alimentaria',5),(447,'Grado en Ingeniería Ambiental','Grado en Ingeniería Ambiental',5),(448,'Grado en Ingeniería Biomédica','Grado en Ingeniería Biomédica',5),(449,'Grado en Ingeniería Civil','Grado en Ingeniería Civil',5),(450,'Grado en Ingeniería Civil - Construcciones Civiles','Grado en Ingeniería Civil - Construcciones Civiles',5),(451,'Grado en Ingeniería Civil - Hidrología','Grado en Ingeniería Civil - Hidrología',5),(452,'Grado en Ingeniería Civil -Transportes y Servicios Urbanos','Grado en Ingeniería Civil -Transportes y Servicios Urbanos',5),(453,'Grado en Ingeniería Civil y Territorial','Grado en Ingeniería Civil y Territorial',5),(454,'Grado en Ingeniería de Aeronavegación','Grado en Ingeniería de Aeronavegación',5),(455,'Grado en Ingeniería de Aeropuertos','Grado en Ingeniería de Aeropuertos',5),(456,'Grado en Ingeniería de Computadores','Grado en Ingeniería de Computadores',5),(457,'Grado en Ingeniería de Diseño Industrial y Desarrollo del Producto','Grado en Ingeniería de Diseño Industrial y Desarrollo del Producto',5),(458,'Grado en Ingeniería de Diseño Industrial y Desarrollo de Productos','Grado en Ingeniería de Diseño Industrial y Desarrollo de Productos',5),(459,'Grado en Ingeniería de Diseño y Tecnología Textil','Grado en Ingeniería de Diseño y Tecnología Textil',5),(460,'Grado en Ingeniería de Edificación','Grado en Ingeniería de Edificación',5),(461,'Grado en Ingeniería de Energía','Grado en Ingeniería de Energía',5),(462,'Grado en Ingeniería de Energía y Medio Ambiente','Grado en Ingeniería de Energía y Medio Ambiente',5),(463,'Grado en Ingeniería de Energías Renovables','Grado en Ingeniería de Energías Renovables',5),(464,'Grado en Ingeniería de la Ciberseguridad','Grado en Ingeniería de la Ciberseguridad',5),(465,'Grado en Ingeniería de la Construcción','Grado en Ingeniería de la Construcción',5),(466,'Grado en Ingeniería de la Edificación','Grado en Ingeniería de la Edificación',5),(467,'Grado en Ingeniería de la Energía','Grado en Ingeniería de la Energía',5),(468,'Grado en Ingeniería de la Hortofruticultura y Jardinería','Grado en Ingeniería de la Hortofruticultura y Jardinería',5),(469,'Grado en Ingeniería de la Salud','Grado en Ingeniería de la Salud',5),(470,'Grado en Ingeniería de la Seguridad','Grado en Ingeniería de la Seguridad',5),(471,'Grado en Ingeniería de la Tecnología de Minas y Energía','Grado en Ingeniería de la Tecnología de Minas y Energía',5),(472,'Grado en Ingeniería de la Tecnología Minera','Grado en Ingeniería de la Tecnología Minera',5),(473,'Grado en Ingeniería de las Explotaciones Agropecuarias','Grado en Ingeniería de las Explotaciones Agropecuarias',5),(474,'Grado en Ingeniería de las Industrias Agrarias y Alimentarias','Grado en Ingeniería de las Industrias Agrarias y Alimentarias',5),(475,'Grado en Ingeniería de las Industrias Agroalimentarias','Grado en Ingeniería de las Industrias Agroalimentarias',5),(476,'Grado en Ingeniería de las Tecnologías de la Información','Grado en Ingeniería de las Tecnologías de la Información',5),(477,'Grado en Ingeniería de la Información Geoespacial','Grado en Ingeniería de la Información Geoespacial',5),(478,'Grado en Ingeniería de las Tecnologías de Telecomunicación','Grado en Ingeniería de las Tecnologías de Telecomunicación',5),(479,'Grado en Ingeniería de los Recursos Energéticos','Grado en Ingeniería de los Recursos Energéticos',5),(480,'Grado en Ingeniería de los Recursos Minerales','Grado en Ingeniería de los Recursos Minerales',5),(481,'Grado en Ingeniería de los Recursos Energéticos','Grado en Ingeniería de los Recursos Energéticos',5),(482,'Grado en Ingeniería de los Recursos Energéticos, Combustibles y Explosivos','Grado en Ingeniería de los Recursos Energéticos, Combustibles y Explosivos',5),(483,'Grado en Ingeniería de los Recursos Mineros','Grado en Ingeniería de los Recursos Mineros',5),(484,'Grado en Ingeniería de los Recursos Mineros y Energéticos','Grado en Ingeniería de los Recursos Mineros y Energéticos',5),(485,'Grado en Ingeniería de Materiales','Grado en Ingeniería de Materiales',5),(486,'Grado en Ingeniería de Obras Públicas','Grado en Ingeniería de Obras Públicas',5),(487,'Grado en Ingeniería de Obras Públicas en Construcciones Civiles','Grado en Ingeniería de Obras Públicas en Construcciones Civiles',5),(488,'Grado en Ingeniería de Obras Públicas en Hidrología','Grado en Ingeniería de Obras Públicas en Hidrología',5),(489,'Grado en Ingeniería de Obras Públicas en Transportes y Servicios Urbanos','Grado en Ingeniería de Obras Públicas en Transportes y Servicios Urbanos',5),(490,'Grado en Ingeniería de Organización','Grado en Ingeniería de Organización',5),(491,'Grado en Ingeniería de Organización Industrial','Grado en Ingeniería de Organización Industrial',5),(492,'Grado en Ingeniería de Procesos Químicos Industriales','Grado en Ingeniería de Procesos Químicos Industriales',5),(493,'Grado en Ingeniería de Recursos Energéticos y Mineros','Grado en Ingeniería de Recursos Energéticos y Mineros',5),(494,'Grado en Ingeniería de Recursos Minerales','Grado en Ingeniería de Recursos Minerales',5),(495,'Grado en Ingeniería de Recursos Minerales y Energía','Grado en Ingeniería de Recursos Minerales y Energía',5),(496,'Grado en Ingeniería de Recursos Mineros y Energéticos','Grado en Ingeniería de Recursos Mineros y Energéticos',5),(497,'Grado en Ingeniería de Redes de Telecomunicación','Grado en Ingeniería de Redes de Telecomunicación',5),(498,'Grado en Ingeniería de Sistemas Aeroespaciales','Grado en Ingeniería de Sistemas Aeroespaciales',5),(499,'Grado en Ingeniería de Sistemas Audiovisuales','Grado en Ingeniería de Sistemas Audiovisuales',5),(500,'Grado en Ingeniería de Sistemas Audiovisuales de Telecomunicación','Grado en Ingeniería de Sistemas Audiovisuales de Telecomunicación',5),(501,'Grado en Ingeniería de Sistemas Biológicos','Grado en Ingeniería de Sistemas Biológicos',5),(502,'Grado en Ingeniería de Sistemas de Comunicaciones','Grado en Ingeniería de Sistemas de Comunicaciones',5),(503,'Grado en Ingeniería de Sistemas de Información','Grado en Ingeniería de Sistemas de Información',5),(504,'Grado en Ingeniería de Sistemas de Telecomunicación','Grado en Ingeniería de Sistemas de Telecomunicación',5),(505,'Grado en Ingeniería de Sistemas de Telecomunicación, Sonido e Imagen','Grado en Ingeniería de Sistemas de Telecomunicación, Sonido e Imagen',5),(506,'Grado en Ingeniería de Sistemas Electrónicos','Grado en Ingeniería de Sistemas Electrónicos',5),(507,'Grado en Ingeniería de Sistemas y Servicios de Telecomunicaciones','Grado en Ingeniería de Sistemas y Servicios de Telecomunicaciones',5),(508,'Grado en Ingeniería de Sistemas TIC','Grado en Ingeniería de Sistemas TIC',5),(509,'Grado en Ingeniería de Sonido e Imagen','Grado en Ingeniería de Sonido e Imagen',5),(510,'Grado en Ingeniería de Tecnología de Minas y Energía','Grado en Ingeniería de Tecnología de Minas y Energía',5),(511,'Grado en Ingeniería de Tecnología y Diseño Textil','Grado en Ingeniería de Tecnología y Diseño Textil',5),(512,'Grado en Ingeniería de Tecnologías de Caminos','Grado en Ingeniería de Tecnologías de Caminos',5),(513,'Grado en Ingeniería de Tecnologías de Telecomunicación','Grado en Ingeniería de Tecnologías de Telecomunicación',5),(514,'Grado en Ingeniería de Tecnologías Específicas de Telecomunicación','Grado en Ingeniería de Tecnologías Específicas de Telecomunicación',5),(515,'Grado en Ingeniería de Tecnologías Industriales','Grado en Ingeniería de Tecnologías Industriales',5),(516,'Grado en Ingeniería de Tecnologías Mineras','Grado en Ingeniería de Tecnologías Mineras',5),(517,'Grado en Ingeniería de Tecnologías y Servicios de Telecomunicación','Grado en Ingeniería de Tecnologías y Servicios de Telecomunicación',5),(518,'Grado en Ingeniería del Automóvil','Grado en Ingeniería del Automóvil',5),(519,'Grado en Ingeniería del Medio Natural','Grado en Ingeniería del Medio Natural',5),(520,'Grado en Ingeniería del Software','Grado en Ingeniería del Software',5),(521,'Grado en Ingeniería Eléctrica','Grado en Ingeniería Eléctrica',5),(522,'Grado en Ingeniería Eléctrica y Electrónica','Grado en Ingeniería Eléctrica y Electrónica',5),(523,'Grado en Ingeniería Electromecánica','Grado en Ingeniería Electromecánica',5),(524,'Grado en Ingeniería Electrónica','Grado en Ingeniería Electrónica',5),(525,'Grado en Ingeniería Electrónica de Comunicaciones','Grado en Ingeniería Electrónica de Comunicaciones',5),(526,'Grado en Ingeniería Electrónica de Telecomunicación','Grado en Ingeniería Electrónica de Telecomunicación',5),(527,'Grado en Ingeniería Electrónica Industrial','Grado en Ingeniería Electrónica Industrial',5),(528,'Grado en Ingeniería Electrónica Industrial y Automática','Grado en Ingeniería Electrónica Industrial y Automática',5),(529,'Grado en Ingeniería Electrónica y Automática','Grado en Ingeniería Electrónica y Automática',5),(530,'Grado en Ingeniería Electrónica y Automática Industrial','Grado en Ingeniería Electrónica y Automática Industrial',5),(531,'Grado en Ingeniería Electrónica, Robótica y Mecatrónica','Grado en Ingeniería Electrónica, Robótica y Mecatrónica',5),(532,'Grado en Ingeniería en Desarrollo de Contenidos Digitales','Grado en Ingeniería en Desarrollo de Contenidos Digitales',5),(533,'Grado en Ingeniería en Diseño Industrial','Grado en Ingeniería en Diseño Industrial',5),(534,'Grado en Ingeniería en Diseño Industrial y Desarrollo de Producto','Grado en Ingeniería en Diseño Industrial y Desarrollo de Producto',5),(535,'Grado en Ingeniería en Diseño Industrial y Desarrollo de Productos','Grado en Ingeniería en Diseño Industrial y Desarrollo de Productos',5),(536,'Grado en Ingeniería en Diseño Industrial y Desarrollo del Producto','Grado en Ingeniería en Diseño Industrial y Desarrollo del Producto',5),(537,'Grado en Ingeniería en Diseño Mecánico','Grado en Ingeniería en Diseño Mecánico',5),(538,'Grado en Ingeniería en Ecotecnologías en Procesos Industriales','Grado en Ingeniería en Ecotecnologías en Procesos Industriales',5),(539,'Grado en Ingeniería en Edificación','Grado en Ingeniería en Edificación',5),(540,'Grado en Ingeniería en Electrónica de Comunicaciones','Grado en Ingeniería en Electrónica de Comunicaciones',5),(541,'Grado en Ingeniería en Electrónica Industrial','Grado en Ingeniería en Electrónica Industrial',5),(542,'Grado en Ingeniería en Electrónica Industrial y Automática','Grado en Ingeniería en Electrónica Industrial y Automática',5),(543,'Grado en Ingeniería en Electrónica y Automática Industrial','Grado en Ingeniería en Electrónica y Automática Industrial',5),(544,'Grado en Ingeniería en Explotación de Minas y Recursos Energéticos','Grado en Ingeniería en Explotación de Minas y Recursos Energéticos',5),(545,'Grado en Ingeniería en Geoinformación y Geomática','Grado en Ingeniería en Geoinformación y Geomática',5),(546,'Grado en Ingeniería en Geomática y Topografía','Grado en Ingeniería en Geomática y Topografía',5),(547,'Grado en Ingeniería en Informática','Grado en Ingeniería en Informática',5),(548,'Grado en Ingeniería en Informática en Tecnologías de la Información','Grado en Ingeniería en Informática en Tecnologías de la Información',5),(549,'Grado en Ingeniería en Informática de Sistemas','Grado en Ingeniería en Informática de Sistemas',5),(550,'Grado en Ingeniería en Innovación de Procesos y Productos','Grado en Ingeniería en Innovación de Procesos y Productos',5),(551,'Grado en Ingeniería en Organización Industrial','Grado en Ingeniería en Organización Industrial',5),(552,'Grado en Ingeniería en Propulsión y Servicios del Buque','Grado en Ingeniería en Propulsión y Servicios del Buque',5),(553,'Grado en Ingeniería en Química Industrial','Grado en Ingeniería en Química Industrial',5),(554,'Grado en Ingeniería en Recursos Energéticos','Grado en Ingeniería en Recursos Energéticos',5),(555,'Grado en Ingeniería en Recursos Energéticos y Mineros','Grado en Ingeniería en Recursos Energéticos y Mineros',5),(556,'Grado en Ingeniería en Sistemas Audiovisuales','Grado en Ingeniería en Sistemas Audiovisuales',5),(557,'Grado en Ingeniería en Sistemas Audiovisuales y Multimedia','Grado en Ingeniería en Sistemas Audiovisuales y Multimedia',5),(558,'Grado en Ingeniería en Sistemas de Comunicación','Grado en Ingeniería en Sistemas de Comunicación',5),(559,'Grado en Ingeniería en Sistemas de Telecomunicación','Grado en Ingeniería en Sistemas de Telecomunicación',5),(560,'Grado en Ingeniería en Sistemas de Telecomunicaciones','Grado en Ingeniería en Sistemas de Telecomunicaciones',5),(561,'Grado en Ingeniería en Sistemas Electrónicos','Grado en Ingeniería en Sistemas Electrónicos',5),(562,'Grado en Ingeniería en Sistemas y Tecnología Naval','Grado en Ingeniería en Sistemas y Tecnología Naval',5),(563,'Grado en Ingeniería en Sonido e Imagen','Grado en Ingeniería en Sonido e Imagen',5),(564,'Grado en Ingeniería en Tecnología Industrial','Grado en Ingeniería en Tecnología Industrial',5),(565,'Grado en Ingeniería en Tecnología Minera','Grado en Ingeniería en Tecnología Minera',5),(566,'Grado en Ingeniería en Tecnología Naval','Grado en Ingeniería en Tecnología Naval',5),(567,'Grado en Ingeniería en Tecnologías Aeroespaciales','Grado en Ingeniería en Tecnologías Aeroespaciales',5),(568,'Grado en Ingeniería en Tecnologías Ambientales','Grado en Ingeniería en Tecnologías Ambientales',5),(569,'Grado en Ingeniería en Tecnología de Telecomunicación','Grado en Ingeniería en Tecnología de Telecomunicación',5),(570,'Grado en Ingeniería en Tecnologías de la Telecomunicación','Grado en Ingeniería en Tecnologías de la Telecomunicación',5),(571,'Grado en Ingeniería en Tecnologías Industriales','Grado en Ingeniería en Tecnologías Industriales',5),(572,'Grado en Ingeniería en Vehículos Aeroespaciales','Grado en Ingeniería en Vehículos Aeroespaciales',5),(573,'Grado en Ingeniería Energética','Grado en Ingeniería Energética',5),(574,'Grado en Ingeniería Física','Grado en Ingeniería Física',5),(575,'Grado en Ingeniería Forestal','Grado en Ingeniería Forestal',5),(576,'Grado en Ingeniería Forestal y del Medio Natural - Explotaciones Forestales','Grado en Ingeniería Forestal y del Medio Natural - Explotaciones Forestales',5),(577,'Grado en Ingeniería Forestal y Medio Natural','Grado en Ingeniería Forestal y Medio Natural',5),(578,'Grado en Ingeniería Forestal: Industrias Forestales','Grado en Ingeniería Forestal: Industrias Forestales',5),(579,'Grado en Ingeniería Geológica','Grado en Ingeniería Geológica',5),(580,'Grado en Ingeniería Geomática','Grado en Ingeniería Geomática',5),(581,'Grado en Ingeniería Geomática y Topografía','Grado en Ingeniería Geomática y Topografía',5),(582,'Grado en Ingeniería Geomática y Topográfica','Grado en Ingeniería Geomática y Topográfica',5),(583,'Grado en Ingeniería Hortofrutícola y Jardinería','Grado en Ingeniería Hortofrutícola y Jardinería',5),(584,'Grado en Ingeniería Informática','Grado en Ingeniería Informática',5),(585,'Grado en Ingeniería Informática de Gestión y Sistemas de Información','Grado en Ingeniería Informática de Gestión y Sistemas de Información',5),(586,'Grado en Ingeniería Informática de Servicios y Aplicaciones','Grado en Ingeniería Informática de Servicios y Aplicaciones',5),(587,'Grado en Ingeniería Informática de Sistemas','Grado en Ingeniería Informática de Sistemas',5),(588,'Grado en Ingeniería Informática del Software','Grado en Ingeniería Informática del Software',5),(589,'Grado en Ingeniería Informática en Computación','Grado en Ingeniería Informática en Computación',5),(590,'Grado en Ingeniería Informática en Ingeniería de Computadores','Grado en Ingeniería Informática en Ingeniería de Computadores',5),(591,'Grado en Ingeniería Informática en Ingeniería del Software','Grado en Ingeniería Informática en Ingeniería del Software',5),(592,'Grado en Ingeniería Informática en Sistemas de Información','Grado en Ingeniería Informática en Sistemas de Información',5),(593,'Grado en Ingeniería Informática en Tecnologías de la Información','Grado en Ingeniería Informática en Tecnologías de la Información',5),(594,'Grado en Ingeniería Informática-Ingeniería de Computadores','Grado en Ingeniería Informática-Ingeniería de Computadores',5),(595,'Grado en Ingeniería Informática-Ingeniería del Software','Grado en Ingeniería Informática-Ingeniería del Software',5),(596,'Grado en Ingeniería Informática-Tecnologías Informáticas','Grado en Ingeniería Informática-Tecnologías Informáticas',5),(597,'Grado en Ingeniería Informática y Tecnologías Virtuales','Grado en Ingeniería Informática y Tecnologías Virtuales',5),(598,'Grado en Ingeniería Marina','Grado en Ingeniería Marina',5),(599,'Grado en Ingeniería Marítima','Grado en Ingeniería Marítima',5),(600,'Grado en Ingeniería Matemática','Grado en Ingeniería Matemática',5),(601,'Grado en Ingeniería Matemática en Ciencia de Datos / Mathematical Engineering On Data Science','Grado en Ingeniería Matemática en Ciencia de Datos / Mathematical Engineering On Data Science',5),(602,'Grado en Ingeniería Mecánica','Grado en Ingeniería Mecánica',5),(603,'Grado en Ingeniería Mecatrónica','Grado en Ingeniería Mecatrónica',5),(604,'Grado en Ingeniería Mecatrónica y Robótica','Grado en Ingeniería Mecatrónica y Robótica',5),(605,'Grado en Ingeniería Minera','Grado en Ingeniería Minera',5),(606,'Grado en Ingeniería Minera y Energética','Grado en Ingeniería Minera y Energética',5),(607,'Grado en Ingeniería Multimedia','Grado en Ingeniería Multimedia',5),(608,'Grado en Ingeniería Náutica y Transporte Marítimo','Grado en Ingeniería Náutica y Transporte Marítimo',5),(609,'Grado en Ingeniería Naval y Oceánica','Grado en Ingeniería Naval y Oceánica',5),(610,'Grado en Ingeniería Química','Grado en Ingeniería Química',5),(611,'Grado en Ingeniería Química Industrial','Grado en Ingeniería Química Industrial',5),(612,'Grado en Ingeniería Radioelectrónica Naval','Grado en Ingeniería Radioelectrónica Naval',5),(613,'Grado en Ingeniería Técnica de Telecomunicación','Grado en Ingeniería Técnica de Telecomunicación',5),(614,'Grado en Ingeniería Técnica Industrial','Grado en Ingeniería Técnica Industrial',5),(615,'Grado en Ingeniería Telemática','Grado en Ingeniería Telemática',5),(616,'Grado en Ingeniería y Ciencia Agronómica','Grado en Ingeniería y Ciencia Agronómica',5),(617,'Grado en Ingeniería y Gestión Empresarial','Grado en Ingeniería y Gestión Empresarial',5),(618,'Grado en Innovación en Procesos y Productos Alimentarios','Grado en Innovación en Procesos y Productos Alimentarios',5),(619,'Grado en Innovación y Seguridad Alimentaria','Grado en Innovación y Seguridad Alimentaria',5),(620,'Grado en Marina Civil, Ingeniería Marina','Grado en Marina Civil, Ingeniería Marina',5),(621,'Grado en Marina Civil, Ingeniería Náutica y Transporte Marítimo','Grado en Marina Civil, Ingeniería Náutica y Transporte Marítimo',5),(622,'Grado en Marina Civil, Ingeniería Radioelectrónica','Grado en Marina Civil, Ingeniería Radioelectrónica',5),(623,'Grado en Matemática Computacional','Grado en Matemática Computacional',5),(624,'Grado en Matemáticas','Grado en Matemáticas',5),(625,'Grado en Matemáticas e Informática','Grado en Matemáticas e Informática',5),(626,'Grado en Multimedia','Grado en Multimedia',5),(627,'Grado en Piloto de Aviación Comercial y Operaciones Aéreas','Grado en Piloto de Aviación Comercial y Operaciones Aéreas',5),(628,'Grado en Sistemas de Información','Grado en Sistemas de Información',5),(629,'Grado en Tecnología de la Ingeniería Civil','Grado en Tecnología de la Ingeniería Civil',5),(630,'Grado en Tecnología de las Industrias Agrarias y Alimentarias','Grado en Tecnología de las Industrias Agrarias y Alimentarias',5),(631,'Grado en Tecnología e Innovación Alimentaria','Grado en Tecnología e Innovación Alimentaria',5),(632,'Grado en Tecnologías de la Información para Empresas','Grado en Tecnologías de la Información para Empresas',5),(633,'Grado en Tecnologías de la Información para la Salud','Grado en Tecnologías de la Información para la Salud',5),(634,'Grado en Tecnologías de Telecomunicación','Grado en Tecnologías de Telecomunicación',5),(635,'Grado en Tecnologías Interactivas','Grado en Tecnologías Interactivas',5),(636,'Grado en Tecnologías para la Sociedad de la Información','Grado en Tecnologías para la Sociedad de la Información',5);
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_proyectos`
--

DROP TABLE IF EXISTS `estados_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_proyectos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con los estados por los que puede pasar un proyecto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_proyectos`
--

LOCK TABLES `estados_proyectos` WRITE;
/*!40000 ALTER TABLE `estados_proyectos` DISABLE KEYS */;
INSERT INTO `estados_proyectos` VALUES (1,'solicitado','solicitado por una entidad externa'),(2,'apadrinado','Apadrinado por algún docente'),(3,'aceptando candidatos','Aceptando alumnos postulantes a desarrollar el proyecto'),(4,'en curso','Proyecto en proceso de desarrollo'),(5,'finalizado','Proyecto finalizado');
/*!40000 ALTER TABLE `estados_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `experiencias`
--

DROP TABLE IF EXISTS `experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `destinatario` varchar(300) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `ambito_id` int(11) NOT NULL,
  `especialidad_id` int(11) NOT NULL,
  `universidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_experiencia_ambito_idx` (`ambito_id`),
  KEY `FK_experiencia_especialidad_idx` (`especialidad_id`),
  KEY `FK_experiencia_universidad_idx` (`universidad_id`),
  CONSTRAINT `FK_experiencia_ambito` FOREIGN KEY (`ambito_id`) REFERENCES `ambitos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_experiencia_especialidad` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_experiencia_universidad` FOREIGN KEY (`universidad_id`) REFERENCES `universidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencias`
--

LOCK TABLES `experiencias` WRITE;
/*!40000 ALTER TABLE `experiencias` DISABLE KEYS */;
INSERT INTO `experiencias` VALUES (91,'Sostenibilidad en la ciudad contemporánea','Instituto Lluís Domènech i Montaner, Ayuntamiento de Reus','La primera se realiza con el Instituto Lluís Domènech i Montaner, el cual consta de unas instalaciones muy antiguas que se han mantenido de forma correcta, pero que evidencian carencias a nivel de eficiencia energética. El estudiantado de arquitectura hace unas prácticas reales y además experimenta en primera persona la situación actual de los equipamientos públicos. Los estudiantes toman consciencia de las necesidades de actuar para mejorar la eficiencia energética, y dado que su trabajo será cedido al centro para que pueda decidir qué medidas aplicar, el estudiantado se siente orgulloso de realizar un trabajo útil para la comunidad educativa. El centro recibirá una auditoría energética que, a pesar de sus limitaciones por no tratarse de un trabajo profesional, le servirá para identificar los principales problemas en lo que refiere a la gestión de recursos energéticos. De esta manera, podemos proponer soluciones de bajo coste económico y de alto ahorro energético.\n\nEn la segunda actividad el estudiantado debe de diagnosticar las necesidades de transporte en bicicleta de la ciudad de Reus y proponer diferentes alternativas basándose en las posibilidades de utilización de las instalaciones municipales, así como de las redes viarias y los nodos de conexión. El estudiantado experimenta la dificultad de impulsar medidas de movilidad sostenible tanto en lo que a coste como hábitos de la ciudadanía refiere. El receptor de este servicio es el Ayuntamiento de Reus, el cual recibirá unas valoraciones sobre el Plan de implementación de la bicicleta que servirán para poder mejorarlo, ofreciendo así un mejor servicio a la ciudadanía. \n\n','20-2-2014',3,195,41),(92,'Patrimonio Arquitectónico. Análisis e Intervenciones','Reus Servicios Municipales, S.A. División servicios Funerarios Reus y Baix Camp','El patrimonio cultural en la actualidad es un concepto complejo, que engloba diferentes tipos de patrimonio: inmaterial, natural, mueble e inmueble (edificado). El trabajo de curso de la asignatura plantea el análisis y propuesta de intervención en un objeto del patrimonio cultural edificado. En cada curso se propone un caso de estudio diferente, intentando en la medida de lo posible, huir de los ejemplos que podríamos considerar más convencionales. Los trabajos realizados permiten la sensibilización hacía el patrimonio arquitectónico por parte de los estudiantes, los cuales adquieren recursos específicos para entender, analizar y valorar, para finalmente proponer. Estos trabajos también cumplen con la función frente a la sociedad de poner en valor y enfatizar las características más relevantes del patrimonio construido, facilitando la apropiación como bien comunitario. Además establecen una base de conocimientos, a menudo inédita, que puede servir para otras iniciativas, como por ejemplo con finalidades educacionales o también para el propio mantenimiento del bien patrimonial.\n\n','20-2-2014',5,404,41),(93,'Territorio y Paisaje. Proyectos Territoriales','Curso 2012-13: Asociación Delterpa (Riudecols), Ayuntamiento Pinell de Brai (Tierra Alta). Curso 2013-14: Instituto de Estudios Vallencos, Plataforma Salvemos la Playa Larga y el bosque de la Marquesa, La Canonja 3. Pueblo, Paisaje, Sostenibilidad, Consorcio para la preservación del paisaje agrícola','Esta experiencia de APS se desarrolla en dos asignaturas que corresponden a titulaciones diferentes: la Licenciatura de Arquitectura (actualmente en extinción) y el Grado en Arquitectura. El estudiantado trabaja la parte práctica (3 créditos) de las asignaturas en territorios que presentan dinámicas territoriales y paisajísticas particulares. En contacto e interacción con los agentes territoriales de cada ámbito, se pretende aportar posibles soluciones a la ordenación y gestión de los correspondientes paisajes. El trabajo del estudiantado se fundamenta en el análisis del territorio, el trabajo de campo y la elaboración de propuestas para la mejora de la calidad del paisaje. El estudiantado trabaja en grupos que se centran en aspectos concretos y particulares de los municipios con los que se trabaja. Cada curso académico se trabaja en ámbitos territoriales y problemáticas diferentes, de manera que los destinatarios del servicio varían.','20-2-2014',5,404,41),(94,'Seminario interdisciplinar - Reus Oculto','Asociación Espacios Ocultos','La experiencia es muy enriquecedora, puesto que no sólo rodea el ámbito de la arquitectura y la historia, sino que también tiene mucha importancia el trato directo con las personas a lo largo de todas las fases de la actividad: gestión, difusión... Es una puesta en escena del trabajo en equipo donde participan personas de muchos ámbitos, orígenes e inquietudes diferentes. El alumno trabajará, aprenderá y obtendrá experiencias de todo tipo a la vez que se divertirá. Además, trabajará en un proyecto casi desde la fase inicial y tendrán que tomar partido de la actividad hasta el final.','20-2-2014',5,404,41),(123,'33345','UNED','probando adjuntos','15-2-2018',3,197,72),(124,'probando cambios en modelo de datos','El destiantario','La descripcion','21-2-2018',2,173,64),(125,'Otra experiencia para probar los adjuntos','Destiantario de proyecto','Descripción modificada','6-2-2018',2,183,8),(126,'Probando carga de imagenes','UNED','asdasdasd','14-2-2018',2,167,45);
/*!40000 ALTER TABLE `experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de provincias españolas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Araba/Álava'),(2,'Albacete'),(3,'Alicante/Alacant'),(4,'Almería'),(5,'Ávila'),(6,'Badajoz'),(7,'Balears, Illes'),(8,'Barcelona'),(9,'Burgos'),(10,'Cáceres'),(11,'Cádiz'),(12,'Castellón/Castelló'),(13,'Ciudad Real'),(14,'Córdoba'),(15,'Coruña, A'),(16,'Cuenca'),(17,'Girona'),(18,'Granada'),(19,'Guadalajara'),(20,'Gipuzkoa'),(21,'Huelva'),(22,'Huesca'),(23,'Jaén'),(24,'León'),(25,'Lleida'),(26,'Rioja, La'),(27,'Lugo'),(28,'Madrid'),(29,'Málaga'),(30,'Murcia'),(31,'Navarra'),(32,'Ourense'),(33,'Asturias'),(34,'Palencia'),(35,'Palmas, Las'),(36,'Pontevedra'),(37,'Salamanca'),(38,'Santa Cruz de Tenerife'),(39,'Cantabria'),(40,'Segovia'),(41,'Sevilla'),(42,'Soria'),(43,'Tarragona'),(44,'Teruel'),(45,'Toledo'),(46,'Valencia/València'),(47,'Valladolid'),(48,'Bizkaia'),(49,'Zamora'),(50,'Zaragoza'),(51,'Ceuta'),(52,'Melilla');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_alumno`
--

DROP TABLE IF EXISTS `proyecto_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto_alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyecto_alumno_idx` (`proyecto_id`),
  KEY `FK_alumno_proyecto_idx` (`alumno_id`),
  CONSTRAINT `FK_alumno_proyecto` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_alumno` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_alumno`
--

LOCK TABLES `proyecto_alumno` WRITE;
/*!40000 ALTER TABLE `proyecto_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_coordinador`
--

DROP TABLE IF EXISTS `proyecto_coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto_coordinador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) NOT NULL,
  `coordinador_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_coordinador_proyecto_idx` (`coordinador_id`),
  KEY `FK_proyecto_coordinador_idx` (`proyecto_id`),
  CONSTRAINT `FK_coordinador_proyecto` FOREIGN KEY (`coordinador_id`) REFERENCES `coordinadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_proyecto_coordinador` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para mantener la relación n:m entre proyectos y coordinadores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_coordinador`
--

LOCK TABLES `proyecto_coordinador` WRITE;
/*!40000 ALTER TABLE `proyecto_coordinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `universidad_id` int(11) DEFAULT NULL,
  `ambito_id` int(11) NOT NULL,
  `especialidad_id` int(11) DEFAULT NULL,
  `fecha_inicio` varchar(45) DEFAULT NULL,
  `fecha_fin` varchar(45) DEFAULT NULL,
  `entidad_id` int(11) DEFAULT NULL,
  `cupo_estudiantes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COMMENT='Nuevas iniciativas en Aps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (17,'Proyecto de creación de un portal para el ApS en las universidades españolas','¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n\n¿Por qué lo usamos?\nEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\n\n\n¿De dónde viene?\nAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n\nEl trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.\n\n¿Dónde puedo conseguirlo?\nHay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.',1,NULL,5,NULL,NULL,NULL,11,NULL),(39,'Héctorasdasd','asdasd',1,NULL,2,NULL,NULL,NULL,11,NULL),(40,'Pryecto  de ejemplo','aasd asd asd asdasd asd asd asd as',1,NULL,2,NULL,NULL,NULL,11,NULL);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Alumno'),(3,'Profesor'),(4,'Entidad'),(5,'Universidad');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `reset_password_expires` varchar(45) NOT NULL,
  `reset_password_token` varchar(50) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `sign_up_date` varchar(45) NOT NULL,
  `last_login` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'hectoram@gmail.com','Héctor','Alonso Meana','$2a$08$ZyMgkTzm3uy4ck.W6HRKdeq1P2iG2C4w/NHKpqp8y2bn2oJB9L1/u','','',2,'0000-00-00','2018-03-05T12:03:46+01:00'),(11,'msuarez1@gmail.com','Monica','Suarez','$2a$08$dZucMXFelSPBcMXexPsareFmn28gh55jzQbaCI4lcGTPGBe3eyxiS','0000-00-00','',2,'0000-00-00','0000-00-00'),(14,'admin@gmail.com','admin','admin','$2a$08$9bj1Hfrvwv38uXoKkw/PVuLFY6HtbLOm1CKs81kFeMUYqihq913Ji','0000-00-00','',1,'0000-00-00','0000-00-00'),(16,'clara@gmail.com','Clara','Alonso Suarez','$2a$08$U5LbPFwapI3wHPsib0yzue/.dEeT6ZALsatxh5DIpmqzwe9w8zFZG','','',1,'0000-00-00','2018-03-05T12:16:08+01:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aps'
--

--
-- Dumping routines for database 'aps'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 20:11:04
