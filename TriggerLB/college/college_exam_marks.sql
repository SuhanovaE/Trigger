-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: college
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `exam_marks`
--

DROP TABLE IF EXISTS `exam_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mark` int DEFAULT NULL,
  `stydents_id` int NOT NULL,
  `subjects_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stydents_id_idx` (`stydents_id`),
  KEY `subjects_id_idx` (`subjects_id`),
  CONSTRAINT `stydents_id` FOREIGN KEY (`stydents_id`) REFERENCES `stydents` (`id`),
  CONSTRAINT `subjects_id` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_marks`
--

LOCK TABLES `exam_marks` WRITE;
/*!40000 ALTER TABLE `exam_marks` DISABLE KEYS */;
INSERT INTO `exam_marks` VALUES (1,2,1,1),(2,3,2,1),(3,4,3,1),(4,5,4,1),(5,3,5,1),(6,4,6,1),(7,5,1,2),(8,5,2,2),(9,5,3,2),(10,3,4,2),(11,2,5,2),(12,2,6,2),(13,4,1,3),(14,5,2,3),(15,5,3,3),(16,5,4,3),(17,4,5,3),(18,4,6,3),(19,3,1,4),(20,2,2,4),(21,5,3,4),(22,4,4,4),(23,3,5,4),(24,4,6,4);
/*!40000 ALTER TABLE `exam_marks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 10:09:02
