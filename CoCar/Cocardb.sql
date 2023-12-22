-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cocar
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `avis`
--

DROP TABLE IF EXISTS `avis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avis` (
  `CIN1` int NOT NULL,
  `CIN2` int NOT NULL,
  PRIMARY KEY (`CIN1`,`CIN2`),
  KEY `fk_user_has_user_user2_idx` (`CIN2`),
  KEY `fk_user_has_user_user1_idx` (`CIN1`),
  CONSTRAINT `fk_user_has_user_user1` FOREIGN KEY (`CIN1`) REFERENCES `user` (`CIN`),
  CONSTRAINT `fk_user_has_user_user2` FOREIGN KEY (`CIN2`) REFERENCES `user` (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis`
--

LOCK TABLES `avis` WRITE;
/*!40000 ALTER TABLE `avis` DISABLE KEYS */;
/*!40000 ALTER TABLE `avis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmer`
--

DROP TABLE IF EXISTS `confirmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirmer` (
  `covoiturage_id` int NOT NULL,
  `proprietaireCIN` int NOT NULL,
  `covoiturage_depart` varchar(255) COLLATE tis620_bin NOT NULL,
  `covoiturage_arrivee` varchar(255) COLLATE tis620_bin NOT NULL,
  `demandeCIN` int NOT NULL,
  PRIMARY KEY (`covoiturage_id`,`proprietaireCIN`,`covoiturage_depart`,`covoiturage_arrivee`,`demandeCIN`),
  KEY `fk_confirmer_user1_idx` (`demandeCIN`),
  CONSTRAINT `fk_confirmer_covoituurage1` FOREIGN KEY (`covoiturage_id`, `proprietaireCIN`, `covoiturage_depart`, `covoiturage_arrivee`) REFERENCES `covoiturage` (`id`, `CIN`, `depart`, `arrivee`),
  CONSTRAINT `fk_confirmer_user1` FOREIGN KEY (`demandeCIN`) REFERENCES `user` (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmer`
--

LOCK TABLES `confirmer` WRITE;
/*!40000 ALTER TABLE `confirmer` DISABLE KEYS */;
/*!40000 ALTER TABLE `confirmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covoiturage`
--

DROP TABLE IF EXISTS `covoiturage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covoiturage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `nbPlaces` int NOT NULL,
  `prix` int DEFAULT '0',
  `carType` varchar(45) COLLATE tis620_bin DEFAULT NULL,
  `description` varchar(1000) COLLATE tis620_bin DEFAULT NULL,
  `CIN` int NOT NULL,
  `depart` varchar(255) COLLATE tis620_bin NOT NULL,
  `arrivee` varchar(255) COLLATE tis620_bin NOT NULL,
  `heureDepart` time DEFAULT NULL,
  PRIMARY KEY (`id`,`CIN`,`depart`,`arrivee`),
  KEY `fk_covoituurage_user_idx` (`CIN`),
  KEY `fk_covoituurage_lieu1_idx` (`depart`),
  KEY `fk_covoituurage_lieu2_idx` (`arrivee`),
  CONSTRAINT `fk_covoituurage_lieu1` FOREIGN KEY (`depart`) REFERENCES `lieu` (`nomVille`),
  CONSTRAINT `fk_covoituurage_lieu2` FOREIGN KEY (`arrivee`) REFERENCES `lieu` (`nomVille`),
  CONSTRAINT `fk_covoituurage_user` FOREIGN KEY (`CIN`) REFERENCES `user` (`CIN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covoiturage`
--

LOCK TABLES `covoiturage` WRITE;
/*!40000 ALTER TABLE `covoiturage` DISABLE KEYS */;
/*!40000 ALTER TABLE `covoiturage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lieu` (
  `nomVille` varchar(255) COLLATE tis620_bin NOT NULL,
  `gouvernorat` varchar(255) COLLATE tis620_bin DEFAULT NULL,
  PRIMARY KEY (`nomVille`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieu`
--

LOCK TABLES `lieu` WRITE;
/*!40000 ALTER TABLE `lieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postuler`
--

DROP TABLE IF EXISTS `postuler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postuler` (
  `CIN` int NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`CIN`,`id`),
  KEY `fk_user_has_covoituurage_covoituurage1_idx` (`id`),
  KEY `fk_user_has_covoituurage_user1_idx` (`CIN`),
  CONSTRAINT `fk_user_has_covoituurage_covoituurage1` FOREIGN KEY (`id`) REFERENCES `covoiturage` (`id`),
  CONSTRAINT `fk_user_has_covoituurage_user1` FOREIGN KEY (`CIN`) REFERENCES `user` (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postuler`
--

LOCK TABLES `postuler` WRITE;
/*!40000 ALTER TABLE `postuler` DISABLE KEYS */;
/*!40000 ALTER TABLE `postuler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `CIN` int NOT NULL,
  `email` varchar(255) COLLATE tis620_bin DEFAULT NULL,
  `password` varchar(32) COLLATE tis620_bin NOT NULL,
  `noms` varchar(255) COLLATE tis620_bin DEFAULT NULL,
  `prenom` varchar(255) COLLATE tis620_bin NOT NULL,
  `birthday` date NOT NULL,
  `numTel` int NOT NULL,
  `avis` float DEFAULT NULL,
  `permis` int DEFAULT NULL,
  `adresse` varchar(255) COLLATE tis620_bin DEFAULT NULL,
  `gender` enum('Homme','Femme') COLLATE tis620_bin DEFAULT NULL,
  PRIMARY KEY (`CIN`),
  CONSTRAINT `user_chk_1` CHECK (((`avis` <= 5) and (`avis` >= 0)))
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 14:17:37
