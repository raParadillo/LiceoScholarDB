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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (12,23,1,'2025-2026','1','Finished','2026-04-18 23:20:09'),(13,23,1,'2025-2026','2','Pending','2026-04-18 23:59:22');
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
INSERT INTO `otp` VALUES (22,1,'698038','password_reset','2026-04-15 03:39:12',1),(23,23,'125284','password_reset','2026-04-18 00:13:21',0),(24,23,'133785','password_reset','2026-04-18 00:26:02',0),(25,23,'153165','password_reset','2026-04-18 00:26:26',0),(26,23,'692065','password_reset','2026-04-18 00:28:23',1);
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
INSERT INTO `requirements` VALUES ('1',23,'Form138','2026-04-18 22:42:54','Submitted'),('2',23,'GoodMoral','2026-04-18 22:42:55','Submitted'),('3',23,'BirthCert','2026-04-18 22:42:56','Submitted');
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `sy_sem` VALUES (1,2025,2026,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Liceo','admin@liceo.edu.ph','$2b$10$xZ9BdgHpW1UOFhX4.2NZtOOrcfkDz/8LSsq9fC6DBqAoUybZrr2Q.',1,'',NULL,'1999','/uploads/profile-photos/user-1-1776527930154.jpg'),(23,'Raque Alexy','Paradillo','raparadillo06235@liceo.edu.ph','$2b$10$noOi.BElVKhQxra2bbz1/O3ffT//Qa0JaHYyH9wcM7Hr88VqDTgH6',2,'202400623567',15,'09634716946','/uploads/profile-photos/user-23-1776526871940.jpg');
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

-- Dump completed on 2026-04-19  0:37:53
