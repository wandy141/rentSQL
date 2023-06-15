-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: renta
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquiler` (
  `idalquiler` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idcliente` int NOT NULL,
  `nombrecliente` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `idvehiculo` int DEFAULT NULL,
  `seguro` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `fechaini` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `dias` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `entregado` int DEFAULT '0',
  `recibido` int DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idalquiler`),
  KEY `fk_vehiculo` (`idvehiculo`),
  CONSTRAINT `fk_vehiculo` FOREIGN KEY (`idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler`
--

LOCK TABLES `alquiler` WRITE;
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
INSERT INTO `alquiler` VALUES (12,'wandy',2,'Aqfa','2023-05-19 00:00:00',64,'0',88,'2023-05-19 00:00:00','2023-05-22 00:00:00',4,352,1,NULL,1),(13,'wandy',1,'Hola','2023-05-19 00:00:00',47,'0',55,'2023-05-19 00:00:00','2023-05-22 00:00:00',4,220,1,NULL,1),(14,'wandy',1,'Hola','2023-05-19 00:00:00',47,'0',55,'2023-05-23 00:00:00','2023-05-24 00:00:00',2,110,0,NULL,1),(18,'wandy',2,'Aqfa','2023-06-01 00:00:00',48,'0',44,'2023-06-01 00:00:00','2023-06-23 00:00:00',23,1012,1,1,2),(19,'wandy',1,'Hola','2023-06-02 13:47:00',65,'si',85,'2023-06-02 13:47:00','2023-06-03 13:47:00',2,190,0,NULL,1),(20,'wandy',3,'Zd','2023-06-02 13:47:00',62,'no',56,'2023-06-02 13:47:00','2023-06-10 13:47:00',9,504,0,NULL,1),(21,'wandy',2,'Aqfa','2023-06-02 13:47:00',63,'si',50,'2023-06-02 13:47:00','2023-06-10 13:47:00',9,470,0,NULL,1),(22,'wandy',1,'Hola','2023-06-02 14:22:00',64,'normal',88,'2023-06-02 14:22:00','2023-06-03 14:22:00',2,201,0,NULL,1),(23,'wandy',1,'Hola','2023-06-14 08:01:00',47,'normal',55,'2023-06-14 08:01:00','2023-06-15 08:01:00',1,55,0,NULL,1),(24,'wandy',1,'Hola','2023-06-14 08:01:00',48,'normal',44,'2023-06-14 08:01:00','2023-06-15 08:01:00',1,44,0,NULL,1),(25,'wandy',1,'Hola','2023-06-15 08:33:00',62,'normal',56,'2023-06-15 08:33:00','2023-06-16 08:33:00',1,56,0,NULL,1);
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cedula` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direccion` varchar(455) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Hola','eoo','123321',NULL,NULL),(2,'Aqfa','asdfas','sdsad',NULL,NULL),(3,'Zd','sfcs','szcffs',NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `identrega` int NOT NULL AUTO_INCREMENT,
  `idalquiler` int NOT NULL,
  `fechahora` datetime NOT NULL,
  `persona_recibe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cedula_persona` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kilometraje` int NOT NULL,
  `nota` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado` int DEFAULT '1',
  PRIMARY KEY (`identrega`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (7,18,'2023-06-16 17:24:00','wandy','234',23,'jart',1),(8,13,'2023-06-16 09:01:00','hola papa','77688',876,'el carro tiene todo completo',1);
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `idmantenimiento` int NOT NULL AUTO_INCREMENT,
  `id_recibir` int DEFAULT NULL,
  `id_vehiculo` int DEFAULT NULL,
  `costo_extra` double DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `estado` int DEFAULT '1',
  PRIMARY KEY (`idmantenimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,2,3,1999.65,'adios',1),(2,1,1,NULL,'kjuehjuytfghj',1),(3,NULL,1,999,'kjuehjuytfghj',1),(4,1,1,999,'kjuehjuytfghj',1),(5,1,1,999,'kjuehjuytfghj',1),(6,1,1,999,'kjuehjuytfghj',1),(7,NULL,NULL,1,'kjuehjuytfghj',1),(8,NULL,NULL,1,'kjuehjuytfghj',1);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibir`
--

DROP TABLE IF EXISTS `recibir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibir` (
  `idrecibir` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_alquiler` int DEFAULT NULL,
  `NombreCli` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechHoraDev` datetime DEFAULT NULL,
  `Comentarios` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`idrecibir`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibir`
--

LOCK TABLES `recibir` WRITE;
/*!40000 ALTER TABLE `recibir` DISABLE KEYS */;
INSERT INTO `recibir` VALUES (1,18,7,'wandy','2023-06-14 08:28:00','waaw'),(2,18,7,'wandy','2023-06-15 18:38:00','se le daño la puerta'),(3,1,18,'lala','2023-06-16 10:38:00','bienn');
/*!40000 ALTER TABLE `recibir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentas`
--

DROP TABLE IF EXISTS `rentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentas`
--

LOCK TABLES `rentas` WRITE;
/*!40000 ALTER TABLE `rentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seccion` (
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usuarioid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechavalida` datetime DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES ('brian2123','brian2','2023-04-14 16:44:47'),('wandy123','wandy','2023-06-30 17:34:05');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vehiculos`
--

DROP TABLE IF EXISTS `tipo_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_vehiculos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vehiculos`
--

LOCK TABLES `tipo_vehiculos` WRITE;
/*!40000 ALTER TABLE `tipo_vehiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipovehiculo`
--

DROP TABLE IF EXISTS `tipovehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipovehiculo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipovehiculo`
--

LOCK TABLES `tipovehiculo` WRITE;
/*!40000 ALTER TABLE `tipovehiculo` DISABLE KEYS */;
INSERT INTO `tipovehiculo` VALUES (1,'Economico',1),(2,'Compacto',1),(3,'Deportivo',1),(4,'Premium',1),(5,'Lujo',1),(6,'camion',1);
/*!40000 ALTER TABLE `tipovehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usuarioid` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`usuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('wa','wa','wa',2),('wandy','123','wandy',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `idvehiculo` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `asiento` int DEFAULT NULL,
  `combustible` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `placa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `imagen` varchar(555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mantenimiento` int DEFAULT '0',
  `estado` int DEFAULT '1',
  PRIMARY KEY (`idvehiculo`),
  KEY `tipo_idx_2` (`tipo`),
  CONSTRAINT `fk_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipovehiculo` (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (47,'Toyota','Banglades','Gris',5,'Gasolina',1,2022,'H28888',55,'211529-carro-deportivo.png',0,1),(48,'Honda','logo','blanco',4,'Gasolina',1,2022,'A656530',44,'212111-carro-deportivo.png',0,2),(61,'Tesla','xr33','blanco',4,'Electrico',5,2022,'xvxffxggfcff',76,'212220-carro-deportivo.png',0,1),(62,'toyota','asdf78','rojo',5,'Gas',2,2006,'a382',56,'182020-sonata_2022.jpg',0,1),(63,'Toyota','Camry','Rojo',4,'Gasolina',2,2018,'VHGVhsw2',50,'crv.jpg',0,1),(64,'Casd','Fsdf','Aerg',4,'Gasolina',6,2010,'Ergre',88,'crv.jpg',0,1),(65,'Th','Fghf','Tfdth',4,'Gasoil',3,2008,'Fhfd',85,'crv.jpg',0,1),(66,'Fdg','Df','G',2,'Gasolina',4,2005,'Fg',85,'crv2.jpg',0,1),(67,'Ww','Ww','Ww',2,'Gasolina',3,2008,'Ww',7,'crv2.jpg',0,1),(68,'Dfv','Sdv','Dasfv',2,'Gasoil',3,2008,'Dsfv',78.9,'crv.jpg',0,0),(77,'Toyota','XX','Rojo',4,'Gasolina',3,2021,'A142415',14250,'173221-sonata_2022.jpg',0,1);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 12:48:32
