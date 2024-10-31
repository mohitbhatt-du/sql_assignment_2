-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_bank
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donation_id` int NOT NULL,
  `donator_email` varchar(50) DEFAULT NULL,
  `donation_amount` decimal(10,2) DEFAULT NULL,
  `donation_date` date DEFAULT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,'john.doe@example.com',500.00,'2024-10-01'),(2,'emily.davis@example.com',750.00,'2024-10-02'),(3,'jessica.wilson@example.com',1000.00,'2024-10-03'),(4,'nonexistent@example.com',1250.00,'2024-10-04');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `donor_name` varchar(50) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `donor_age` int DEFAULT NULL,
  `receiver_age` int DEFAULT NULL,
  `donator_mobile_number` varchar(15) DEFAULT NULL,
  `receiver_mobile_number` varchar(15) DEFAULT NULL,
  `donor_email` varchar(50) DEFAULT NULL,
  `receiver_email` varchar(50) DEFAULT NULL,
  `donator_address` varchar(100) DEFAULT NULL,
  `receiver_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('John Doe','Alice Smith',35,29,'9998887776','9123456789','john.doe@example.com','alice.smith@example.com','123 Donor St, City A','456 Receiver St, City B'),('Emily Davis','Robert Johnson',42,36,'9988776655','9776655443','emily.davis@example.com','robert.johnson@example.com','789 Donor Ave, City C','101 Receiver Ave, City D'),('Michael Brown','Sarah Miller',27,32,'9665544332','9554433221','michael.brown@example.com','sarah.miller@example.com','202 Donor Lane, City E','303 Receiver Lane, City F'),('Jessica Wilson','James Taylor',30,40,'9443322110','9332211009','jessica.wilson@example.com','james.taylor@example.com','404 Donor Blvd, City G','505 Receiver Blvd, City H'),('Daniel Moore','Linda Harris',50,45,'9112233445','9009988776','daniel.moore@example.com','linda.harris@example.com','606 Donor Rd, City I','707 Receiver Rd, City J');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31 12:44:40
