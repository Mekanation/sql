-- MySQL dump 10.13  Distrib 8.0.21, for osx10.14 (x86_64)
--
-- Host: tekcamp01.crmocoybkprv.us-east-1.rds.amazonaws.com    Database: students
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tekcamp01`
--

DROP TABLE IF EXISTS `tekcamp01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tekcamp01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tekcamp01`
--

LOCK TABLES `tekcamp01` WRITE;
/*!40000 ALTER TABLE `tekcamp01` DISABLE KEYS */;
INSERT INTO `tekcamp01` VALUES (1,'Abigail','Swigert',NULL,'F'),(2,'Gabe','Chavez',NULL,NULL),(3,'Nancy','Golden',NULL,'F'),(4,'Jessica','Ulysse',NULL,NULL),(5,'Sabitha','Radhakrishnan',NULL,'F'),(6,'Adam','Rice',NULL,'M'),(7,'Marcelo','Barbosa',NULL,'M'),(8,'Caleb','Waters',NULL,'M'),(9,'Jake','Kremling',NULL,'M'),(10,'Norita','Sieffert',NULL,'M'),(11,'Katherine','Kim',NULL,'F'),(12,'Julian','Ladd',NULL,'M'),(13,'Vani','Muppuru',NULL,'F'),(14,'Kevin','Ibanez',NULL,'M'),(15,'George','Torres',NULL,NULL),(16,'Jose','Moreno',NULL,'M'),(17,'Phoenix','Shane',NULL,'F'),(18,'Mathew','Castiglione',NULL,'M'),(19,'Victor','Betts',NULL,'M'),(20,'Rosa','Garcia',NULL,'F'),(21,'Mathew','Choat',NULL,'M'),(22,'Michael','Kinney',NULL,NULL),(23,'Korey','Brooks',NULL,'M'),(24,'Christian','Gonzalez',NULL,NULL),(25,'Zachary','Johnson',NULL,'M'),(26,'Desaree','Myers',NULL,'F'),(27,'Sarah','Bates',NULL,'F');
/*!40000 ALTER TABLE `tekcamp01` ENABLE KEYS */;
UNLOCK TABLES;
