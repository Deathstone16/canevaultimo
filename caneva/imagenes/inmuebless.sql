CREATE DATABASE  IF NOT EXISTS `inmueblescrafters` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inmueblescrafters`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: inmueblescrafters
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idadministrador` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` int NOT NULL,
  PRIMARY KEY (`idadministrador`),
  KEY `idinmuebles` (`idadministrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos`
--

DROP TABLE IF EXISTS `gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastos` (
  `idgastos` int NOT NULL,
  `fecha de movimiento` date DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgastos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion`
--

DROP TABLE IF EXISTS `gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion` (
  `idgestion` int NOT NULL,
  `idadministrador` int NOT NULL,
  `idinmuebles` int NOT NULL,
  `idinquilinos` int NOT NULL,
  PRIMARY KEY (`idgestion`),
  KEY `idinquilinos_idx` (`idinquilinos`),
  KEY `idinmuebles_idx` (`idinmuebles`),
  KEY `idadmin_idx` (`idadministrador`),
  CONSTRAINT `idadmin` FOREIGN KEY (`idadministrador`) REFERENCES `administrador` (`idadministrador`),
  CONSTRAINT `idinm` FOREIGN KEY (`idinmuebles`) REFERENCES `inmuebles` (`idinmuebles`),
  CONSTRAINT `idinq` FOREIGN KEY (`idinquilinos`) REFERENCES `inquilinos` (`idinquilinos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion`
--

LOCK TABLES `gestion` WRITE;
/*!40000 ALTER TABLE `gestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresos` (
  `idingresos` int NOT NULL,
  `tipo de ingreso` varchar(45) DEFAULT NULL,
  `fecha de movimiento` date DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `procedencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idingresos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inmuebles`
--

DROP TABLE IF EXISTS `inmuebles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inmuebles` (
  `idinmuebles` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `codigo postal` int NOT NULL,
  `planta y letra` varchar(45) DEFAULT NULL,
  `ambientes` varchar(45) NOT NULL,
  `mt2` varchar(45) NOT NULL,
  PRIMARY KEY (`idinmuebles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmuebles`
--

LOCK TABLES `inmuebles` WRITE;
/*!40000 ALTER TABLE `inmuebles` DISABLE KEYS */;
/*!40000 ALTER TABLE `inmuebles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquilinos`
--

DROP TABLE IF EXISTS `inquilinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquilinos` (
  `idinquilinos` int NOT NULL,
  `metodo de pago` varchar(45) NOT NULL,
  `fecha de ingreso` date NOT NULL,
  `cuenta bancaria` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `profesion` varchar(45) NOT NULL,
  `edad` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` int NOT NULL,
  `idrequisitos` int DEFAULT NULL,
  `idmetodo` int DEFAULT NULL,
  PRIMARY KEY (`idinquilinos`),
  KEY `idrequisitos_idx` (`idrequisitos`),
  KEY `idmetodos_idx` (`idmetodo`),
  CONSTRAINT `idmetodos` FOREIGN KEY (`idmetodo`) REFERENCES `metodos de pago` (`idmetodos de pago`),
  CONSTRAINT `idrequisitos` FOREIGN KEY (`idrequisitos`) REFERENCES `requisitos` (`idrequisitos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquilinos`
--

LOCK TABLES `inquilinos` WRITE;
/*!40000 ALTER TABLE `inquilinos` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquilinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos de pago`
--

DROP TABLE IF EXISTS `metodos de pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodos de pago` (
  `idmetodos de pago` int NOT NULL,
  `interes` varchar(45) DEFAULT NULL,
  `cuenta bancaria` varchar(45) NOT NULL,
  `debito` varchar(45) NOT NULL,
  `idrecibo` int DEFAULT NULL,
  `idmovimientos` int DEFAULT NULL,
  PRIMARY KEY (`idmetodos de pago`),
  KEY `idrecibo_idx` (`idrecibo`),
  KEY `idmovimientos_idx` (`idmovimientos`),
  CONSTRAINT `idmovimientos` FOREIGN KEY (`idmovimientos`) REFERENCES `movimiento bancario` (`idmovimiento bancario`),
  CONSTRAINT `idrecibo` FOREIGN KEY (`idrecibo`) REFERENCES `recibo` (`idrecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos de pago`
--

LOCK TABLES `metodos de pago` WRITE;
/*!40000 ALTER TABLE `metodos de pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodos de pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento bancario`
--

DROP TABLE IF EXISTS `movimiento bancario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento bancario` (
  `idmovimiento bancario` int NOT NULL,
  `intereses` varchar(45) DEFAULT NULL,
  `cuentas bancarias` varchar(45) NOT NULL,
  `saldo` int NOT NULL,
  `banco` varchar(45) NOT NULL,
  `idgastos` int DEFAULT NULL,
  `idingresos` int DEFAULT NULL,
  PRIMARY KEY (`idmovimiento bancario`),
  KEY `idgastos_idx` (`idgastos`),
  KEY `idingresos_idx` (`idingresos`),
  CONSTRAINT `idgastos` FOREIGN KEY (`idgastos`) REFERENCES `gastos` (`idgastos`),
  CONSTRAINT `idingresos` FOREIGN KEY (`idingresos`) REFERENCES `ingresos` (`idingresos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento bancario`
--

LOCK TABLES `movimiento bancario` WRITE;
/*!40000 ALTER TABLE `movimiento bancario` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento bancario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo`
--

DROP TABLE IF EXISTS `recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibo` (
  `idrecibo` int NOT NULL,
  `agua` int NOT NULL,
  `luz` int NOT NULL,
  `expensas` int NOT NULL,
  `estado de pago` varchar(45) NOT NULL,
  `fecha de emision` date NOT NULL,
  `numero del recibo del piso/local` int NOT NULL,
  PRIMARY KEY (`idrecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo`
--

LOCK TABLES `recibo` WRITE;
/*!40000 ALTER TABLE `recibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos`
--

DROP TABLE IF EXISTS `requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitos` (
  `idrequisitos` int NOT NULL,
  `nomina` varchar(45) DEFAULT NULL,
  `avalado por persona` varchar(45) DEFAULT NULL,
  `contrato de trabajo` varchar(45) DEFAULT NULL,
  `aval bancario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrequisitos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo de inmueble`
--

DROP TABLE IF EXISTS `tipo de inmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo de inmueble` (
  `idtipo` int NOT NULL,
  `edificio` varchar(45) DEFAULT NULL,
  `casa` varchar(45) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`),
  KEY `idinmuebles` (`idtipo`) /*!80000 INVISIBLE */,
  CONSTRAINT `idinmuebles` FOREIGN KEY (`idtipo`) REFERENCES `inmuebles` (`idinmuebles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo de inmueble`
--

LOCK TABLES `tipo de inmueble` WRITE;
/*!40000 ALTER TABLE `tipo de inmueble` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo de inmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inmueblescrafters'
--

--
-- Dumping routines for database 'inmueblescrafters'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 21:55:36
