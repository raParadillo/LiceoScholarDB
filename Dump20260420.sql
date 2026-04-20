-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: liceo_scholar
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `ApplicationID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `ScholarshipID` int NOT NULL,
  `SchoolYear` varchar(45) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  `Scholarship_Status` enum('Pending','Approved','Rejected','Finished') NOT NULL DEFAULT 'Pending',
  `Submitted_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ApplicationID`),
  KEY `fk_applications_user_idx` (`UserID`),
  KEY `fk_applications_scholarship_idx` (`ScholarshipID`),
  CONSTRAINT `fk_applications_scholarship` FOREIGN KEY (`ScholarshipID`) REFERENCES `scholarships` (`ScholarshipID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_applications_user` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (12,23,1,'2025-2026','1','Finished','2026-04-18 23:20:09'),(13,23,1,'2025-2026','2','Finished','2026-04-18 23:59:22'),(107,1,1,'2024-2025','1','Finished','2026-04-15 10:30:00'),(108,1,2,'2025-2026','1','Finished','2026-04-18 14:22:15'),(109,23,3,'2024-2025','2','Finished','2026-03-20 09:15:30'),(110,23,1,'2025-2026','1','Finished','2026-04-17 11:45:20'),(111,124,4,'2024-2025','1','Rejected','2026-02-10 16:30:45'),(112,124,2,'2024-2025','2','Finished','2026-03-05 13:20:10'),(113,124,3,'2025-2026','1','Finished','2026-04-18 09:00:00'),(114,125,1,'2024-2025','1','Finished','2026-01-25 15:40:30'),(115,125,4,'2024-2025','2','Rejected','2026-02-28 10:10:50'),(116,125,2,'2025-2026','1','Finished','2026-04-16 12:35:22'),(117,126,3,'2024-2025','1','Finished','2026-03-10 14:15:00'),(118,126,1,'2025-2026','1','Finished','2026-04-19 08:45:30'),(119,127,2,'2024-2025','2','Finished','2026-02-15 11:20:45'),(120,127,4,'2025-2026','1','Finished','2026-04-17 16:50:10'),(121,128,1,'2024-2025','1','Rejected','2026-01-30 09:30:00'),(122,128,3,'2024-2025','2','Finished','2026-03-22 13:45:15'),(123,128,2,'2025-2026','1','Finished','2026-04-18 10:25:40'),(124,129,4,'2024-2025','1','Finished','2026-02-08 15:10:20'),(125,129,1,'2024-2025','2','Rejected','2026-03-15 12:30:50'),(126,129,3,'2025-2026','1','Finished','2026-04-16 14:20:35'),(127,130,2,'2024-2025','1','Finished','2026-01-20 10:45:00'),(128,130,4,'2025-2026','1','Finished','2026-04-19 09:15:30'),(129,131,3,'2024-2025','2','Finished','2026-03-08 16:35:25'),(130,131,1,'2025-2026','1','Finished','2026-04-17 13:50:15'),(131,132,2,'2024-2025','1','Rejected','2026-02-01 11:00:40'),(132,132,4,'2024-2025','2','Finished','2026-03-25 14:15:50'),(133,132,3,'2025-2026','1','Finished','2026-04-18 15:30:20'),(134,133,1,'2024-2025','1','Finished','2026-01-15 09:20:10'),(135,133,2,'2024-2025','2','Rejected','2026-02-20 12:45:35'),(136,133,4,'2025-2026','1','Finished','2026-04-16 11:10:45'),(137,134,3,'2024-2025','1','Finished','2026-03-12 13:30:00'),(138,134,1,'2025-2026','1','Finished','2026-04-19 10:50:30'),(139,135,2,'2024-2025','2','Finished','2026-02-05 15:20:50'),(140,135,4,'2025-2026','1','Finished','2026-04-17 14:35:15'),(141,136,3,'2024-2025','1','Rejected','2026-01-28 10:15:20'),(142,136,1,'2024-2025','2','Finished','2026-03-18 12:40:45'),(143,136,2,'2025-2026','1','Finished','2026-04-18 09:25:30'),(144,137,4,'2024-2025','1','Finished','2026-02-12 16:10:00'),(145,137,3,'2024-2025','2','Rejected','2026-03-20 13:50:35'),(146,137,1,'2025-2026','1','Finished','2026-04-16 15:45:20'),(147,138,2,'2024-2025','1','Finished','2026-01-22 11:30:10'),(148,138,4,'2025-2026','1','Finished','2026-04-19 08:20:45'),(149,139,1,'2024-2025','2','Finished','2026-02-28 14:15:50'),(150,139,3,'2025-2026','1','Finished','2026-04-17 12:35:30'),(151,140,2,'2024-2025','1','Rejected','2026-03-01 09:45:00'),(152,140,4,'2024-2025','2','Finished','2026-03-30 16:20:40'),(153,140,3,'2025-2026','1','Finished','2026-04-18 10:15:25'),(154,141,1,'2024-2025','1','Finished','2026-01-10 13:00:20'),(155,141,2,'2024-2025','2','Rejected','2026-02-15 10:30:50'),(156,141,4,'2025-2026','1','Finished','2026-04-16 14:50:15'),(157,142,3,'2024-2025','1','Finished','2026-03-05 15:40:30'),(158,142,1,'2025-2026','1','Finished','2026-04-19 09:30:45'),(159,143,4,'2024-2025','2','Finished','2026-02-20 12:10:00'),(160,143,2,'2025-2026','1','Finished','2026-04-17 13:25:35'),(161,144,3,'2024-2025','1','Rejected','2026-01-18 11:50:20'),(162,144,1,'2024-2025','2','Finished','2026-03-12 14:35:50'),(163,144,4,'2025-2026','1','Finished','2026-04-18 08:45:10'),(164,145,2,'2024-2025','1','Finished','2026-02-08 16:15:40'),(165,145,3,'2024-2025','2','Rejected','2026-03-22 13:40:25'),(166,145,1,'2025-2026','1','Finished','2026-04-16 11:55:30'),(167,146,4,'2024-2025','1','Finished','2026-01-30 10:20:00'),(168,146,2,'2025-2026','1','Finished','2026-04-19 14:10:45'),(169,147,1,'2024-2025','2','Finished','2026-03-08 12:45:15'),(170,147,3,'2025-2026','1','Finished','2026-04-17 15:30:50'),(171,148,4,'2024-2025','1','Rejected','2026-02-03 09:35:20'),(172,148,2,'2024-2025','2','Finished','2026-03-25 16:50:40'),(173,148,1,'2025-2026','1','Finished','2026-04-18 11:20:30'),(174,149,3,'2024-2025','1','Finished','2026-01-25 14:10:50'),(175,149,4,'2024-2025','2','Rejected','2026-02-18 11:40:15'),(176,149,2,'2025-2026','1','Finished','2026-04-16 13:15:20'),(177,150,1,'2024-2025','1','Finished','2026-03-10 15:30:00'),(178,150,3,'2025-2026','1','Finished','2026-04-19 10:05:45'),(179,151,2,'2024-2025','2','Finished','2026-02-22 12:20:30'),(180,151,4,'2025-2026','1','Finished','2026-04-17 14:40:10'),(181,152,1,'2024-2025','1','Rejected','2026-01-20 10:45:50'),(182,152,3,'2024-2025','2','Finished','2026-03-15 13:55:20'),(183,152,2,'2025-2026','1','Finished','2026-04-18 09:30:35'),(184,153,4,'2024-2025','1','Finished','2026-02-05 16:25:40'),(185,153,1,'2024-2025','2','Rejected','2026-03-02 14:10:15'),(186,153,3,'2025-2026','1','Finished','2026-04-16 12:50:50'),(187,154,2,'2024-2025','1','Finished','2026-01-15 11:35:00'),(188,154,4,'2025-2026','1','Finished','2026-04-19 15:20:30'),(189,155,3,'2024-2025','2','Finished','2026-03-08 13:45:20'),(190,155,1,'2025-2026','1','Finished','2026-04-17 11:30:45'),(191,156,2,'2024-2025','1','Rejected','2026-02-01 09:50:10'),(192,156,4,'2024-2025','2','Finished','2026-03-20 15:15:35'),(193,156,3,'2025-2026','1','Finished','2026-04-18 10:40:20'),(194,157,1,'2024-2025','1','Finished','2026-01-28 14:20:50'),(195,157,2,'2024-2025','2','Rejected','2026-02-25 12:35:15'),(196,157,4,'2025-2026','1','Finished','2026-04-16 13:55:40'),(197,158,3,'2024-2025','1','Finished','2026-03-12 16:10:30'),(198,158,1,'2025-2026','1','Finished','2026-04-19 09:45:50'),(199,159,2,'2024-2025','2','Finished','2026-02-10 11:25:00'),(200,159,4,'2025-2026','1','Finished','2026-04-17 10:15:30'),(201,160,3,'2024-2025','1','Rejected','2026-01-05 14:50:20'),(202,160,1,'2024-2025','2','Finished','2026-03-18 15:40:45'),(203,160,2,'2025-2026','1','Finished','2026-04-18 12:30:10'),(204,161,4,'2024-2025','1','Finished','2026-02-14 13:15:00'),(205,161,3,'2024-2025','2','Rejected','2026-03-25 10:45:35'),(206,161,1,'2025-2026','1','Finished','2026-04-16 16:20:50'),(207,162,2,'2024-2025','1','Finished','2026-01-12 11:30:20'),(208,162,4,'2025-2026','1','Finished','2026-04-19 13:10:45'),(209,163,3,'2024-2025','2','Finished','2026-03-09 14:25:30'),(210,163,1,'2025-2026','1','Finished','2026-04-17 12:50:10'),(211,164,2,'2024-2025','1','Rejected','2026-02-07 09:40:15'),(212,164,4,'2024-2025','2','Finished','2026-03-28 16:35:40'),(213,164,3,'2025-2026','1','Finished','2026-04-18 11:15:25'),(214,165,1,'2024-2025','1','Finished','2026-01-22 15:50:00'),(215,165,2,'2024-2025','2','Rejected','2026-02-18 12:20:50'),(216,165,4,'2025-2026','1','Finished','2026-04-16 14:40:35'),(217,166,3,'2024-2025','1','Finished','2026-03-14 13:45:20'),(218,166,1,'2025-2026','1','Finished','2026-04-19 10:30:45'),(219,167,2,'2024-2025','2','Finished','2026-02-24 11:10:30'),(220,167,4,'2025-2026','1','Finished','2026-04-17 15:55:15'),(221,168,3,'2024-2025','1','Rejected','2026-01-08 10:25:40'),(222,168,1,'2024-2025','2','Finished','2026-03-19 14:50:10'),(223,168,2,'2025-2026','1','Finished','2026-04-18 13:20:50'),(224,169,4,'2024-2025','1','Finished','2026-02-16 16:30:20'),(225,169,3,'2024-2025','2','Rejected','2026-03-23 12:15:45'),(226,169,1,'2025-2026','1','Finished','2026-04-16 10:45:30'),(227,170,2,'2024-2025','1','Finished','2026-01-28 13:50:00'),(228,170,4,'2025-2026','1','Finished','2026-04-19 14:35:45'),(229,23,1,'2026-2027','1','Rejected','2026-04-19 00:58:25'),(230,23,1,'2026-2027','2','Rejected','2026-04-19 22:16:31'),(231,224,1,'2026-2027','2','Finished','2026-04-20 05:17:06');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `CollegeID` int NOT NULL AUTO_INCREMENT,
  `CollegeName` varchar(255) NOT NULL,
  PRIMARY KEY (`CollegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'College of Arts and Science'),(2,'School of Business, Management and Accountancy'),(3,'College of Criminal Justice'),(4,'College of Engineering'),(5,'College of Information Technology'),(6,'College of Medical Laboratory Science'),(7,'Conservatory of Music, Theater and Dance'),(8,'College of Nursing'),(9,'College of Dentistry'),(10,'College of Pharmacy'),(11,'College of Rehabilitation Sciences'),(12,'College of Radiologic Technology'),(13,'School of Teacher Education');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(20) NOT NULL,
  `CourseName` varchar(150) NOT NULL,
  `CollegeID` int NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `fk_courses_colleges_idx` (`CollegeID`),
  CONSTRAINT `fk_courses_college` FOREIGN KEY (`CollegeID`) REFERENCES `colleges` (`CollegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'BA-COMM','Bachelor of Arts in Communication',1),(2,'BA-IS','Bachelor of Arts in International Studies',1),(3,'BA-PS','Bachelor of Arts in Political Science',1),(4,'BS-BIO','Bachelor of Science in Biology',1),(5,'BS-PSYCH','Bachelor of Science in Psychology',1),(6,'BSA','Bachelor of Science in Accountancy',2),(7,'BSBA','Bachelor of Science in Business Administration',2),(8,'BSMA','Bachelor of Science in Management Accounting',2),(9,'BS-CRIM','Bachelor of Science in Criminology',3),(10,'BS-CE','Bachelor of Science in Civil Engineering',4),(11,'BS-CPE','Bachelor of Science in Computer Engineering',4),(12,'BS-ECE','Bachelor of Science in Electronics and Communications Engineering',4),(13,'BS-EE','Bachelor of Science in Electrical Engineering',4),(14,'BS-ME','Bachelor of Science in Mechanical Engineering',4),(15,'BS-IT','Bachelor of Science in Information Technology',5),(16,'BS-CS','Bachelor of Science in Computer Science',5),(17,'BS-MLS','Bachelor of Science in Medical Laboratory Science',6),(18,'BS-MUSIC','Bachelor of Music',7),(19,'BS-NURS','Bachelor of Science in Nursing',8),(20,'DMD','Doctor of Dental Medicine',9),(21,'BS-PHARM','Bachelor of Science in Pharmacy',10),(22,'BS-PT','Bachelor of Science in Physical Therapy',11),(23,'BS-OT','Bachelor of Science in Occupational Therapy',11),(24,'BS-RADTECH','Bachelor of Science in Radiologic Technology',12),(25,'BSED','Bachelor of Secondary Education',13),(26,'BEED','Bachelor of Elementary Education',13);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `OTPID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `OTP_Code` varchar(6) NOT NULL,
  `OTP_Type` varchar(100) DEFAULT 'password_reset',
  `Created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Is_Used` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`OTPID`),
  KEY `fk_otp_user_idx` (`UserID`),
  CONSTRAINT `fk_otp_user` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirements` (
  `requirementID` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `requirementName` varchar(100) NOT NULL,
  `dateSubmitted` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Missing',
  `requirementDoc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`,`requirementID`),
  CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `requirements_chk_1` CHECK ((`status` in (_utf8mb4'Missing',_utf8mb4'Submitted')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirements`
--

LOCK TABLES `requirements` WRITE;
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
INSERT INTO `requirements` VALUES ('1',23,'Form138','2026-04-18 22:42:54','Submitted','/uploads/requirement-documents/requirement-23-1-1776633610884.jpg'),('2',23,'GoodMoral','2026-04-18 22:42:55','Submitted',NULL),('3',23,'BirthCert','2026-04-18 22:42:56','Submitted',NULL),('1',224,'Form138','2026-04-20 01:05:54','Submitted',NULL),('2',224,'GoodMoral','2026-04-20 01:05:55','Submitted',NULL),('3',224,'BirthCert','2026-04-20 01:05:56','Submitted',NULL),('1',225,'Form138','2026-04-20 12:48:12','Submitted',NULL),('2',225,'GoodMoral',NULL,'Missing',NULL),('3',225,'BirthCert',NULL,'Missing',NULL);
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `requirements_BEFORE_UPDATE` BEFORE UPDATE ON `requirements` FOR EACH ROW BEGIN
IF NEW.status = 'Submitted' AND OLD.status = 'Missing' THEN
    SET NEW.dateSubmitted = NOW();
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(100) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Student');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarships`
--

DROP TABLE IF EXISTS `scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarships` (
  `ScholarshipID` int NOT NULL AUTO_INCREMENT,
  `Scholarship_Name` varchar(100) NOT NULL,
  `Scholarship_Type` varchar(100) NOT NULL,
  PRIMARY KEY (`ScholarshipID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarships`
--

LOCK TABLES `scholarships` WRITE;
/*!40000 ALTER TABLE `scholarships` DISABLE KEYS */;
INSERT INTO `scholarships` VALUES (1,'Full Scholarship','Academic'),(2,'Half  Scholarship','Academic'),(3,'Special  Scholarship','Academic'),(4,'Athlete  Scholarship','Non-Academic');
/*!40000 ALTER TABLE `scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sy_sem`
--

DROP TABLE IF EXISTS `sy_sem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sy_sem` (
  `sy_semID` int NOT NULL,
  `Year_start` int NOT NULL,
  `Year_end` int NOT NULL,
  `Semester` int NOT NULL,
  PRIMARY KEY (`sy_semID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sy_sem`
--

LOCK TABLES `sy_sem` WRITE;
/*!40000 ALTER TABLE `sy_sem` DISABLE KEYS */;
INSERT INTO `sy_sem` VALUES (1,2027,2028,1);
/*!40000 ALTER TABLE `sy_sem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `RoleID` int NOT NULL,
  `SchoolID` varchar(45) NOT NULL,
  `CourseID` int DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `ProfilePhoto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `fk_users_role_idx` (`RoleID`),
  KEY `fk_users_course_idx` (`CourseID`),
  CONSTRAINT `fk_users_course` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_users_roles` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Liceo','admin@liceo.edu.ph','$2b$10$xZ9BdgHpW1UOFhX4.2NZtOOrcfkDz/8LSsq9fC6DBqAoUybZrr2Q.',1,'',NULL,'1999','/uploads/profile-photos/user-1-1776527930154.jpg'),(23,'Samantha','Oliveros','SamG@liceo.edu.ph','$2b$10$noOi.BElVKhQxra2bbz1/O3ffT//Qa0JaHYyH9wcM7Hr88VqDTgH6',2,'202400623567',15,'0963471694','/uploads/profile-photos/user-23-1776633936009.png'),(124,'John','Smith','john.smith@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',5,'09123456789','uploads/profile-photos/user-1.jpg'),(125,'Maria','Santos','maria.santos@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',23,'09234567890','uploads/profile-photos/user-2.jpg'),(126,'Pedro','Cruz','pedro.cruz@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09345678901','uploads/profile-photos/user-3.jpg'),(127,'Ana','Reyes','ana.reyes@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09456789012','uploads/profile-photos/user-4.jpg'),(128,'Carlos','Lopez','carlos.lopez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',9,'09567890123','uploads/profile-photos/user-5.jpg'),(129,'Rosa','Fernandez','rosa.fernandez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',8,'09678901234','uploads/profile-photos/user-6.jpg'),(130,'Miguel','Garcia','miguel.garcia@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',12,'09789012345','uploads/profile-photos/user-7.jpg'),(131,'Isabella','Martinez','isabella.martinez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',9,'09890123456','uploads/profile-photos/user-8.jpg'),(132,'Diego','Rodriguez','diego.rodriguez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',7,'09901234567','uploads/profile-photos/user-9.jpg'),(133,'Lucia','Hernandez','lucia.hernandez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',11,'09012345678','uploads/profile-photos/user-10.jpg'),(134,'Antonio','Gonzalez','antonio.gonzalez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09123456780','uploads/profile-photos/user-11.jpg'),(135,'Sophia','Perez','sophia.perez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',16,'09234567891','uploads/profile-photos/user-12.jpg'),(136,'Francisco','Torres','francisco.torres@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',12,'09345678902','uploads/profile-photos/user-13.jpg'),(137,'Elena','Rivera','elena.rivera@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09456789013','uploads/profile-photos/user-14.jpg'),(138,'Manuel','Flores','manuel.flores@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09567890124','uploads/profile-photos/user-15.jpg'),(139,'Gabriela','Silva','gabriela.silva@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',26,'09678901235','uploads/profile-photos/user-16.jpg'),(140,'Vicente','Diaz','vicente.diaz@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',18,'09789012346','uploads/profile-photos/user-17.jpg'),(141,'Camila','Morales','camila.morales@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09890123457','uploads/profile-photos/user-18.jpg'),(142,'Roberto','Gutierrez','roberto.gutierrez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',10,'09901234568','uploads/profile-photos/user-19.jpg'),(143,'Valentina','Castillo','valentina.castillo@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',8,'09012345679','uploads/profile-photos/user-20.jpg'),(144,'Javier','Vargas','javier.vargas@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',10,'09123456781','uploads/profile-photos/user-21.jpg'),(145,'Adriana','Romero','adriana.romero@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',1,'09234567892','uploads/profile-photos/user-22.jpg'),(146,'Leonardo','Soto','leonardo.soto@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',25,'09345678903','uploads/profile-photos/user-23.jpg'),(147,'Martina','Ramos','martina.ramos@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',19,'09456789014','uploads/profile-photos/user-24.jpg'),(148,'Andrés','Espinoza','andres.espinoza@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09567890125','uploads/profile-photos/user-25.jpg'),(149,'Valentina','Navarro','valentina.navarro@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',17,'09678901236','uploads/profile-photos/user-26.jpg'),(150,'Sergio','Salazar','sergio.salazar@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',23,'09789012347','uploads/profile-photos/user-27.jpg'),(151,'Paloma','Mendoza','paloma.mendoza@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09890123458','uploads/profile-photos/user-28.jpg'),(152,'Esteban','Herrera','esteban.herrera@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09901234569','uploads/profile-photos/user-29.jpg'),(153,'Rocio','Guerrero','rocio.guerrero@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',11,'09012345680','uploads/profile-photos/user-30.jpg'),(154,'Mateo','Jimenez','mateo.jimenez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',19,'09123456782','uploads/profile-photos/user-31.jpg'),(155,'Daniela','Castro','daniela.castro@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',8,'09234567893','uploads/profile-photos/user-32.jpg'),(156,'Ignacio','Acosta','ignacio.acosta@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',11,'09345678904','uploads/profile-photos/user-33.jpg'),(157,'Mariana','Molina','mariana.molina@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09456789015','uploads/profile-photos/user-34.jpg'),(158,'Cristobal','Delgado','cristobal.delgado@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',8,'09567890126','uploads/profile-photos/user-35.jpg'),(159,'Isadora','Fuentes','isadora.fuentes@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09678901237','uploads/profile-photos/user-36.jpg'),(160,'Tobias','Ramirez','tobias.ramirez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09789012348','uploads/profile-photos/user-37.jpg'),(161,'Octavia','Pino','octavia.pino@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',12,'09890123459','uploads/profile-photos/user-38.jpg'),(162,'Leandro','Vega','leandro.vega@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',25,'09901234570','uploads/profile-photos/user-39.jpg'),(163,'Juliana','Carrera','juliana.carrera@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',11,'09012345681','uploads/profile-photos/user-40.jpg'),(164,'Horacio','Becerra','horacio.becerra@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',6,'09123456783','uploads/profile-photos/user-41.jpg'),(165,'Giséle','Parra','gisele.parra@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09234567894','uploads/profile-photos/user-42.jpg'),(166,'Bartolo','Salgado','bartolo.salgado@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',6,'09345678905','uploads/profile-photos/user-43.jpg'),(167,'Federica','Cerda','federica.cerda@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09456789016','uploads/profile-photos/user-44.jpg'),(168,'Arnoldo','Araya','arnoldo.araya@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',2,'09567890127','uploads/profile-photos/user-45.jpg'),(169,'Fiona','Vidal','fiona.vidal@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09678901238','uploads/profile-photos/user-46.jpg'),(170,'Arturo','Bravo','arturo.bravo@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',7,'09789012349','uploads/profile-photos/user-47.jpg'),(171,'Evangeline','Ibáñez','evangeline.ibanez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',26,'09890123460','uploads/profile-photos/user-48.jpg'),(172,'Aurelio','Tapia','aurelio.tapia@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09901234571','uploads/profile-photos/user-49.jpg'),(173,'Estela','Moya','estela.moya@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',21,'09012345682','uploads/profile-photos/user-50.jpg'),(174,'Danilo','Rojas','danilo.rojas@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',15,'09123456784','uploads/profile-photos/user-51.jpg'),(175,'Gisela','Gatica','gisela.gatica@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',9,'09234567895','uploads/profile-photos/user-52.jpg'),(176,'Camilo','Palacios','camilo.palacios@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',25,'09345678906','uploads/profile-photos/user-53.jpg'),(177,'Fernanda','Urbina','fernanda.urbina@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09456789017','uploads/profile-photos/user-54.jpg'),(178,'Emilio','Carrillo','emilio.carrillo@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',24,'09567890128','uploads/profile-photos/user-55.jpg'),(179,'Margarita','Paredes','margarita.paredes@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',10,'09678901239','uploads/profile-photos/user-56.jpg'),(180,'Aníbal','Quezada','anibal.quezada@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',2,'09789012350','uploads/profile-photos/user-57.jpg'),(181,'Herminia','Ahumada','herminia.ahumada@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',5,'09890123461','uploads/profile-photos/user-58.jpg'),(182,'Fabio','Miranda','fabio.miranda@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',20,'09901234572','uploads/profile-photos/user-59.jpg'),(183,'Filomena','Portales','filomena.portales@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',6,'09012345683','uploads/profile-photos/user-60.jpg'),(184,'Gregorio','Valencia','gregorio.valencia@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',23,'09123456785','uploads/profile-photos/user-61.jpg'),(185,'Florencia','Sandoval','florencia.sandoval@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',16,'09234567896','uploads/profile-photos/user-62.jpg'),(186,'Humberto','Córdoba','humberto.cordoba@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09345678907','uploads/profile-photos/user-63.jpg'),(187,'Irene','Arcos','irene.arcos@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',14,'09456789018','uploads/profile-photos/user-64.jpg'),(188,'Isidoro','Núñez','isidoro.nunez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09567890129','uploads/profile-photos/user-65.jpg'),(189,'Julieta','Fuerte','julieta.fuerte@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09678901240','uploads/profile-photos/user-66.jpg'),(190,'Kamil','Saez','kamil.saez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',9,'09789012351','uploads/profile-photos/user-67.jpg'),(191,'Karla','Baeza','karla.baeza@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',4,'09890123462','uploads/profile-photos/user-68.jpg'),(192,'Lizandro','Lara','lizandro.lara@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',18,'09901234573','uploads/profile-photos/user-69.jpg'),(193,'Lorena','Gómez','lorena.gomez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09012345684','uploads/profile-photos/user-70.jpg'),(194,'Mauricio','Olivos','mauricio.olivos@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',10,'09123456786','uploads/profile-photos/user-71.jpg'),(195,'Matilde','Núñez','matilde.nunez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',14,'09234567897','uploads/profile-photos/user-72.jpg'),(196,'Nestor','Cáceres','nestor.caceres@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',16,'09345678908','uploads/profile-photos/user-73.jpg'),(197,'Narcisa','Zavala','narcisa.zavala@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',12,'09456789019','uploads/profile-photos/user-74.jpg'),(198,'Otilio','Orellana','otilio.orellana@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',10,'09567890130','uploads/profile-photos/user-75.jpg'),(199,'Olimpia','Valenzuela','olimpia.valenzuela@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09678901241','uploads/profile-photos/user-76.jpg'),(200,'Pascual','Prieto','pascual.prieto@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',7,'09789012352','uploads/profile-photos/user-77.jpg'),(201,'Paquita','Cordero','paquita.cordero@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',23,'09890123463','uploads/profile-photos/user-78.jpg'),(202,'Quintiliano','Cáceres','quintiliano.caceres@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',14,'09901234574','uploads/profile-photos/user-79.jpg'),(203,'Quirina','Mérida','quirina.merida@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',26,'09012345685','uploads/profile-photos/user-80.jpg'),(204,'Ramón','Pizarro','ramon.pizarro@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',9,'09123456787','uploads/profile-photos/user-81.jpg'),(205,'Rufina','Ríos','rufina.rios@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',19,'09234567898','uploads/profile-photos/user-82.jpg'),(206,'Santiago','Mansilla','santiago.mansilla@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',17,'09345678909','uploads/profile-photos/user-83.jpg'),(207,'Sonia','Gaete','sonia.gaete@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09456789020','uploads/profile-photos/user-84.jpg'),(208,'Teodoro','Inostroza','teodoro.inostroza@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',13,'09567890131','uploads/profile-photos/user-85.jpg'),(209,'Teresa','Larrea','teresa.larrea@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09678901242','uploads/profile-photos/user-86.jpg'),(210,'Ubaldo','Figueroa','ubaldo.figueroa@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',1,'09789012353','uploads/profile-photos/user-87.jpg'),(211,'Úrsula','Rojas','ursula.rojas@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',21,'09890123464','uploads/profile-photos/user-88.jpg'),(212,'Valdemar','Duran','valdemar.duran@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',24,'09901234575','uploads/profile-photos/user-89.jpg'),(213,'Violeta','Covarrubias','violeta.covarrubias@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',5,'09012345686','uploads/profile-photos/user-90.jpg'),(214,'Waldo','Soto','waldo.soto@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',6,'09123456788','uploads/profile-photos/user-91.jpg'),(215,'Waldina','Estay','waldina.estay@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',14,'09234567899','uploads/profile-photos/user-92.jpg'),(216,'Xandro','Neves','xandro.neves@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',25,'09345678910','uploads/profile-photos/user-93.jpg'),(217,'Ximena','Fonseca','ximena.fonseca@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09456789021','uploads/profile-photos/user-94.jpg'),(218,'Yareli','Sánchez','yareli.sanchez@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',17,'09567890132','uploads/profile-photos/user-95.jpg'),(219,'Yeison','Mañalich','yeison.manalich@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',25,'09678901243','uploads/profile-photos/user-96.jpg'),(220,'Zeferino','Montoya','zeferino.montoya@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',21,'09789012354','uploads/profile-photos/user-97.jpg'),(221,'Zoila','Neira','zoila.neira@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09890123465','uploads/profile-photos/user-98.jpg'),(222,'Anibal','Burgos','anibal.burgos@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',3,'09901234576','uploads/profile-photos/user-99.jpg'),(223,'Araceli','Peña','araceli.pena@liceo.edu.ph','$2b$10$xZ8dGhpW1UQFhYi..',2,'2024000623567',8,'09012345687','uploads/profile-photos/user-100.jpg'),(224,'67','67','67@liceo.edu.ph','$2b$10$YYh8hWpnycmRU9Oh32yz6em.rltmdXmMgxkrYUhx/Xuu3ogNuqAka',2,'6767',16,'09676767676','/uploads/profile-photos/user-224-1776618332568.jpg'),(225,'121','121','test@liceo.edu.ph','$2b$10$nxrrHtyJJK64TY0CdLWdcee9MSGbqGcofUrIuAcjXXsYOaOice.Je',2,'20240006235',18,'09634716946',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'liceo_scholar'
--

--
-- Dumping routines for database 'liceo_scholar'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-20 12:49:48
