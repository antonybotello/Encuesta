-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdencuesta
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `capitulo_dos`
--

DROP TABLE IF EXISTS `capitulo_dos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_dos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `motivo_seleccionado` varchar(255) DEFAULT NULL,
  `organizacion_seleccionada` varchar(255) DEFAULT NULL,
  `otro_motivo` varchar(255) DEFAULT NULL,
  `otro_organizacion` varchar(255) DEFAULT NULL,
  `otro_servicio` varchar(255) DEFAULT NULL,
  `otro_transporte` varchar(255) DEFAULT NULL,
  `servicios_seleccionados` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_dos`
--

LOCK TABLES `capitulo_dos` WRITE;
/*!40000 ALTER TABLE `capitulo_dos` DISABLE KEYS */;
INSERT INTO `capitulo_dos` VALUES (1,'Negocios','4','','','','',''),(2,'Turismo','4','','','','','');
/*!40000 ALTER TABLE `capitulo_dos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres`
--

DROP TABLE IF EXISTS `capitulo_tres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres`
--

LOCK TABLES `capitulo_tres` WRITE;
/*!40000 ALTER TABLE `capitulo_tres` DISABLE KEYS */;
INSERT INTO `capitulo_tres` VALUES (1),(2);
/*!40000 ALTER TABLE `capitulo_tres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_cantidad_personas`
--

DROP TABLE IF EXISTS `capitulo_tres_cantidad_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_cantidad_personas` (
  `capitulo_tres_id` bigint NOT NULL,
  `cantidad_personas` int DEFAULT NULL,
  KEY `FK9lk8u46hsapqka1r18rmsblys` (`capitulo_tres_id`),
  CONSTRAINT `FK9lk8u46hsapqka1r18rmsblys` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_cantidad_personas`
--

LOCK TABLES `capitulo_tres_cantidad_personas` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_cantidad_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `capitulo_tres_cantidad_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_moneda_grupo`
--

DROP TABLE IF EXISTS `capitulo_tres_moneda_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_moneda_grupo` (
  `capitulo_tres_id` bigint NOT NULL,
  `moneda_grupo` varchar(255) DEFAULT NULL,
  KEY `FKl5ga03oxqqbnepslbkrydc61m` (`capitulo_tres_id`),
  CONSTRAINT `FKl5ga03oxqqbnepslbkrydc61m` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_moneda_grupo`
--

LOCK TABLES `capitulo_tres_moneda_grupo` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_moneda_grupo` DISABLE KEYS */;
INSERT INTO `capitulo_tres_moneda_grupo` VALUES (1,''),(1,''),(2,''),(2,'');
/*!40000 ALTER TABLE `capitulo_tres_moneda_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_moneda_no_grupo`
--

DROP TABLE IF EXISTS `capitulo_tres_moneda_no_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_moneda_no_grupo` (
  `capitulo_tres_id` bigint NOT NULL,
  `moneda_no_grupo` varchar(255) DEFAULT NULL,
  KEY `FKe37ld838b1h709r57n5jbljut` (`capitulo_tres_id`),
  CONSTRAINT `FKe37ld838b1h709r57n5jbljut` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_moneda_no_grupo`
--

LOCK TABLES `capitulo_tres_moneda_no_grupo` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_moneda_no_grupo` DISABLE KEYS */;
INSERT INTO `capitulo_tres_moneda_no_grupo` VALUES (1,'1'),(1,''),(2,''),(2,'');
/*!40000 ALTER TABLE `capitulo_tres_moneda_no_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_moneda_usted`
--

DROP TABLE IF EXISTS `capitulo_tres_moneda_usted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_moneda_usted` (
  `capitulo_tres_id` bigint NOT NULL,
  `moneda_usted` varchar(255) DEFAULT NULL,
  KEY `FKjj85un0gdekwlto4mcsi96o39` (`capitulo_tres_id`),
  CONSTRAINT `FKjj85un0gdekwlto4mcsi96o39` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_moneda_usted`
--

LOCK TABLES `capitulo_tres_moneda_usted` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_moneda_usted` DISABLE KEYS */;
INSERT INTO `capitulo_tres_moneda_usted` VALUES (1,'a'),(1,''),(2,''),(2,'');
/*!40000 ALTER TABLE `capitulo_tres_moneda_usted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_noches_familiar`
--

DROP TABLE IF EXISTS `capitulo_tres_noches_familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_noches_familiar` (
  `capitulo_tres_id` bigint NOT NULL,
  `noches_familiar` int DEFAULT NULL,
  KEY `FKf2cswiohkwotsn14ul5l45vby` (`capitulo_tres_id`),
  CONSTRAINT `FKf2cswiohkwotsn14ul5l45vby` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_noches_familiar`
--

LOCK TABLES `capitulo_tres_noches_familiar` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_noches_familiar` DISABLE KEYS */;
INSERT INTO `capitulo_tres_noches_familiar` VALUES (1,1);
/*!40000 ALTER TABLE `capitulo_tres_noches_familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_noches_hotel`
--

DROP TABLE IF EXISTS `capitulo_tres_noches_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_noches_hotel` (
  `capitulo_tres_id` bigint NOT NULL,
  `noches_hotel` int DEFAULT NULL,
  KEY `FKocguf78qvoruu1uso6es8fhwk` (`capitulo_tres_id`),
  CONSTRAINT `FKocguf78qvoruu1uso6es8fhwk` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_noches_hotel`
--

LOCK TABLES `capitulo_tres_noches_hotel` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_noches_hotel` DISABLE KEYS */;
INSERT INTO `capitulo_tres_noches_hotel` VALUES (1,1);
/*!40000 ALTER TABLE `capitulo_tres_noches_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_nombres_paises`
--

DROP TABLE IF EXISTS `capitulo_tres_nombres_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_nombres_paises` (
  `capitulo_tres_id` bigint NOT NULL,
  `nombres_paises` varchar(255) DEFAULT NULL,
  KEY `FK5k5og51kdec4cpe8k86sbgaxd` (`capitulo_tres_id`),
  CONSTRAINT `FK5k5og51kdec4cpe8k86sbgaxd` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_nombres_paises`
--

LOCK TABLES `capitulo_tres_nombres_paises` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_nombres_paises` DISABLE KEYS */;
INSERT INTO `capitulo_tres_nombres_paises` VALUES (1,'as'),(2,'');
/*!40000 ALTER TABLE `capitulo_tres_nombres_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_otro_alojamiento`
--

DROP TABLE IF EXISTS `capitulo_tres_otro_alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_otro_alojamiento` (
  `capitulo_tres_id` bigint NOT NULL,
  `otro_alojamiento` varchar(255) DEFAULT NULL,
  KEY `FKhe2umk8ps43wbqftpocpuclux` (`capitulo_tres_id`),
  CONSTRAINT `FKhe2umk8ps43wbqftpocpuclux` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_otro_alojamiento`
--

LOCK TABLES `capitulo_tres_otro_alojamiento` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_otro_alojamiento` DISABLE KEYS */;
INSERT INTO `capitulo_tres_otro_alojamiento` VALUES (1,'a'),(2,'');
/*!40000 ALTER TABLE `capitulo_tres_otro_alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_pagado_grupo`
--

DROP TABLE IF EXISTS `capitulo_tres_pagado_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_pagado_grupo` (
  `capitulo_tres_id` bigint NOT NULL,
  `pagado_grupo` double DEFAULT NULL,
  KEY `FKpvmynvbitj0bd5m1hmchx1s9x` (`capitulo_tres_id`),
  CONSTRAINT `FKpvmynvbitj0bd5m1hmchx1s9x` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_pagado_grupo`
--

LOCK TABLES `capitulo_tres_pagado_grupo` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_pagado_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `capitulo_tres_pagado_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_pagado_no_grupo`
--

DROP TABLE IF EXISTS `capitulo_tres_pagado_no_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_pagado_no_grupo` (
  `capitulo_tres_id` bigint NOT NULL,
  `pagado_no_grupo` double DEFAULT NULL,
  KEY `FKfy8cdg5onhusuorjfkim2nddm` (`capitulo_tres_id`),
  CONSTRAINT `FKfy8cdg5onhusuorjfkim2nddm` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_pagado_no_grupo`
--

LOCK TABLES `capitulo_tres_pagado_no_grupo` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_pagado_no_grupo` DISABLE KEYS */;
INSERT INTO `capitulo_tres_pagado_no_grupo` VALUES (1,1);
/*!40000 ALTER TABLE `capitulo_tres_pagado_no_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_pagado_por_usted`
--

DROP TABLE IF EXISTS `capitulo_tres_pagado_por_usted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_pagado_por_usted` (
  `capitulo_tres_id` bigint NOT NULL,
  `pagado_por_usted` double DEFAULT NULL,
  KEY `FKfagdnqe5gdgvqpke6q9hxo4s6` (`capitulo_tres_id`),
  CONSTRAINT `FKfagdnqe5gdgvqpke6q9hxo4s6` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_pagado_por_usted`
--

LOCK TABLES `capitulo_tres_pagado_por_usted` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_pagado_por_usted` DISABLE KEYS */;
INSERT INTO `capitulo_tres_pagado_por_usted` VALUES (1,1);
/*!40000 ALTER TABLE `capitulo_tres_pagado_por_usted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_tres_tipos_gasto`
--

DROP TABLE IF EXISTS `capitulo_tres_tipos_gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_tres_tipos_gasto` (
  `capitulo_tres_id` bigint NOT NULL,
  `tipos_gasto` varchar(255) DEFAULT NULL,
  KEY `FK1ppf6co9kdi5yh1lt54048vo3` (`capitulo_tres_id`),
  CONSTRAINT `FK1ppf6co9kdi5yh1lt54048vo3` FOREIGN KEY (`capitulo_tres_id`) REFERENCES `capitulo_tres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_tres_tipos_gasto`
--

LOCK TABLES `capitulo_tres_tipos_gasto` WRITE;
/*!40000 ALTER TABLE `capitulo_tres_tipos_gasto` DISABLE KEYS */;
INSERT INTO `capitulo_tres_tipos_gasto` VALUES (1,'Paquete turístico'),(1,'Transporte internacional'),(2,'Paquete turístico'),(2,'Transporte internacional');
/*!40000 ALTER TABLE `capitulo_tres_tipos_gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulo_uno`
--

DROP TABLE IF EXISTS `capitulo_uno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitulo_uno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acompanante_seleccionado` varchar(255) DEFAULT NULL,
  `cantidad_personas` int DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `otro_acompanante` varchar(255) DEFAULT NULL,
  `pais_residencia` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulo_uno`
--

LOCK TABLES `capitulo_uno` WRITE;
/*!40000 ALTER TABLE `capitulo_uno` DISABLE KEYS */;
INSERT INTO `capitulo_uno` VALUES (1,'Familia',3,'Colombiana','','Colombia','M'),(2,'Solo',NULL,'Español','','España','M'),(3,'Solo',NULL,'Venezolana','','Venezuela','M');
/*!40000 ALTER TABLE `capitulo_uno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'juan@example.com','Juan Pérez','14e1b600b1fd579f47433b88e8d85291','juanp'),(2,'an@bot','Antony Botello','1f32aa4c9a1d2ea010adcf2348166a04','antony'),(3,'t@b','Tulio puerto','dc8c284208f673504da1133cfeea1b9b','tulio');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13 10:07:48
