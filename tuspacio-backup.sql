-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tuspacio
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(80) NOT NULL,
  `apellido_pat_cliente` varchar(80) DEFAULT NULL,
  `apellido_mat_cliente` varchar(80) DEFAULT NULL,
  `email_cliente` varchar(255) DEFAULT NULL,
  `telefono_cliente` varchar(50) DEFAULT NULL,
  `id_negocio` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `FK_1` (`id_negocio`),
  CONSTRAINT `FK_9` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores` (
  `id_colab` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_colab` varchar(80) NOT NULL,
  `apellido_pat_colab` varchar(80) NOT NULL,
  `apellido_mat_colab` varchar(80) DEFAULT NULL,
  `email_colab` varchar(255) NOT NULL,
  `telefono_colab` varchar(50) DEFAULT NULL,
  `id_negocio` int(11) DEFAULT 1,
  `pwd_colab` varchar(100) NOT NULL,
  PRIMARY KEY (`id_colab`),
  KEY `FK_1` (`id_negocio`),
  CONSTRAINT `FK_8` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (1,'Ricardo','Carreño','Balderas','rick178@hotmail.com','5512388987',1,''),(5,'Juan','Mendez',NULL,'juan@hotmail.com',NULL,1,'123'),(13,'Alma','Ramirez',NULL,'alma@gmail.com',NULL,1,'1234');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negocios`
--

DROP TABLE IF EXISTS `negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negocios` (
  `id_negocio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_negocio` varchar(100) NOT NULL,
  `desc_negocio` varchar(200) DEFAULT NULL,
  `email_negocio` varchar(255) DEFAULT NULL,
  `telefono_negocio` varchar(45) DEFAULT NULL,
  `direccion_negocio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negocios`
--

LOCK TABLES `negocios` WRITE;
/*!40000 ALTER TABLE `negocios` DISABLE KEYS */;
INSERT INTO `negocios` VALUES (1,'tuspacio cafe','internet, cafetería y reparaciones','tuspaciocafe@gmail.com','5589756357','Avena 29');
/*!40000 ALTER TABLE `negocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(80) NOT NULL,
  `descripcion_producto` varchar(200) DEFAULT NULL,
  `precio_producto` float NOT NULL,
  `inventario_producto` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `FK_1` (`id_negocio`),
  CONSTRAINT `FK_10` FOREIGN KEY (`id_negocio`) REFERENCES `negocios` (`id_negocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 19:33:06
