-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sha_note
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `password`
--

DROP TABLE IF EXISTS `password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password` (
  `password` varchar(50) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `encryption_password` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password`
--

LOCK TABLES `password` WRITE;
/*!40000 ALTER TABLE `password` DISABLE KEYS */;
INSERT INTO `password` VALUES ('123213',3,'ceda1a5b5a59cba7b47c8004cd52692b9133f66dd5005d709ce9813fa31e3d71','2020-02-28 12:02:55','2020-02-28 13:56:35'),('1234',1,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2020-02-28 18:12:46','2020-02-28 18:12:46'),('12345',1,'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','2020-02-28 15:44:58','2020-02-28 15:44:58'),('123456',2,'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','2020-02-28 15:44:36','2020-02-28 15:44:40'),('12345678',1,'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f','2020-02-28 15:44:49','2020-02-28 15:44:49'),('abc123',1,'6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090','2020-02-28 15:45:21','2020-02-28 15:45:21'),('abc123!@#',1,'eaabc80d1d8991cd9d660c9f90447621494969d1d0f1d903822441e2446e6e70','2020-02-28 15:45:25','2020-02-28 15:45:25'),('apple',1,'3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b','2020-02-28 18:19:52','2020-02-28 18:19:52'),('asdfas',1,'bdb237bf8c5de6b60ba1e2dcfe364fc24f583e568d1682f851a9d0f11a45c78d','2020-02-28 18:18:49','2020-02-28 18:18:49'),('asdfasdf',2,'2413fb3709b05939f04cf2e92f7d0897fc2596f9ad0b8a9ea855c7bfebaae892','2020-02-28 18:13:01','2020-02-28 18:13:16'),('football',3,'6382deaf1f5dc6e792b76db4a4a7bf2ba468884e000b25e7928e621e27fb23cb','2020-02-28 15:45:04','2020-02-28 15:45:08'),('iloveyou',1,'e4ad93ca07acb8d908a3aa41e920ea4f4ef4f26e7f86cf8291c5db289780a5ae','2020-02-28 15:45:14','2020-02-28 15:45:14'),('password',1,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','2020-02-28 15:44:44','2020-02-28 15:44:44'),('qwerqwer',1,'70f98078fb2c7d7bfb3ae17330b91eaa018110b03896979b4c88bfaed3805906','2020-02-28 18:17:17','2020-02-28 18:17:17'),('qwerty',1,'65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5','2020-02-28 15:44:54','2020-02-28 15:44:54'),('qwerty123',1,'daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5','2020-02-28 15:09:51','2020-02-28 15:09:51'),('sha-256Test!@#',2,'433e8d67770128ae178e680e9d33d523d1aad98848fb5d38d082263321b57059','2020-02-28 18:33:26','2020-02-28 18:33:56'),('test',7,'9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','2020-02-28 15:24:56','2020-02-28 18:15:04'),('ㄴㅇㄹㄴㅇㄹㄴ',1,'7e0b9798a643dda6ff381fc47e4aef2a19fd0dffd5fb2f76a63f96c9c553f0b2','2020-02-28 14:15:31','2020-02-28 14:15:31');
/*!40000 ALTER TABLE `password` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-05 16:07:12
