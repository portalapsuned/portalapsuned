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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 19:50:47
