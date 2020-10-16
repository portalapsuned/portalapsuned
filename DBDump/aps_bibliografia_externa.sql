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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 19:50:46
