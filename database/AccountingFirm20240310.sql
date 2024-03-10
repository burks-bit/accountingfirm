-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: accountingfirm
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'3438','Prof. Valerie Wolf II','2024-03-10','2024-04-09',623.40,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(2,'5903','Dewayne Douglas','2024-03-10','2024-04-09',213.79,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(3,'1804','Daphney Hammes','2024-03-10','2024-04-09',805.25,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(4,'3412','Dr. Deion Hudson','2024-03-10','2024-04-09',327.89,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(5,'9417','Janie Gaylord','2024-03-10','2024-04-09',729.42,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(6,'6227','Jarret Schmitt','2024-03-10','2024-04-09',786.72,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(7,'5333','Dr. Linnea Runolfsson DVM','2024-03-10','2024-04-09',462.51,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(8,'4540','Travis Huels','2024-03-10','2024-04-09',639.01,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(9,'7938','Nicolas Schroeder','2024-03-10','2024-04-09',990.68,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(10,'7002','Prof. Alvena Luettgen','2024-03-10','2024-04-09',500.10,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(11,'8832','Porter Hoeger','2024-03-10','2024-04-09',958.07,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(12,'8292','Shanel Lubowitz','2024-03-10','2024-04-09',637.28,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(13,'6510','Raquel Jast MD','2024-03-10','2024-04-09',656.47,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(14,'1820','Scotty Herman','2024-03-10','2024-04-09',397.95,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(15,'6865','Dr. Deshaun Lakin Jr.','2024-03-10','2024-04-09',879.28,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(16,'7135','Andre Franecki MD','2024-03-10','2024-04-09',791.25,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(17,'5532','Ms. Sydnie Kuvalis','2024-03-10','2024-04-09',658.57,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(18,'2284','Deven Mraz','2024-03-10','2024-04-09',21.52,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(19,'7885','Ashlynn Heidenreich III','2024-03-10','2024-04-09',51.27,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(20,'5668','Naomie Rempel','2024-03-10','2024-04-09',133.78,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(21,'9980','Prof. Ali Wyman DDS','2024-03-10','2024-04-09',552.56,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(22,'3066','Loraine Klein MD','2024-03-10','2024-04-09',148.33,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(23,'8687','Eleazar O\'Kon','2024-03-10','2024-04-09',842.57,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(24,'8946','Prof. Krystina Schimmel IV','2024-03-10','2024-04-09',204.92,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(25,'9112','Prof. Giovanna Kuvalis Sr.','2024-03-10','2024-04-09',519.41,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(26,'7538','Beaulah Jaskolski','2024-03-10','2024-04-09',697.91,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(27,'1497','Makenna Brekke PhD','2024-03-10','2024-04-09',451.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(28,'8005','Dangelo Kuhic','2024-03-10','2024-04-09',849.29,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(29,'5322','Reina Davis','2024-03-10','2024-04-09',98.46,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(30,'9643','Prof. Ivory Nikolaus V','2024-03-10','2024-04-09',173.21,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(31,'1023','Ulices Dooley','2024-03-10','2024-04-09',72.21,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(32,'4521','Miss Ariane Schaefer','2024-03-10','2024-04-09',472.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(33,'3145','Mozell Hettinger','2024-03-10','2024-04-09',773.02,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(34,'9563','Mrs. Jeanne Ziemann','2024-03-10','2024-04-09',194.73,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(35,'6136','Scotty Braun Jr.','2024-03-10','2024-04-09',703.29,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(36,'1473','Tristian Kozey','2024-03-10','2024-04-09',848.42,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(37,'1768','Sabrina Spinka','2024-03-10','2024-04-09',96.14,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(38,'8109','Loy Farrell','2024-03-10','2024-04-09',402.00,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(39,'2896','Laisha Stiedemann','2024-03-10','2024-04-09',943.34,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(40,'8302','Nicklaus Fadel','2024-03-10','2024-04-09',816.99,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(41,'3134','Corrine Kessler','2024-03-10','2024-04-09',560.46,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(42,'1500','Dr. Else Boyle DVM','2024-03-10','2024-04-09',339.98,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(43,'6910','Delphia Kuhic','2024-03-10','2024-04-09',190.14,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(44,'7172','Leif Fadel','2024-03-10','2024-04-09',181.66,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(45,'6435','Boyd Reilly','2024-03-10','2024-04-09',129.48,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(46,'1475','Chadrick Schmeler','2024-03-10','2024-04-09',810.42,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(47,'3043','Nella O\'Kon','2024-03-10','2024-04-09',782.88,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(48,'7018','Dr. Wyman Roberts','2024-03-10','2024-04-09',250.67,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(49,'2218','Yasmeen Durgan','2024-03-10','2024-04-09',193.65,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(50,'3584','Tommie Littel','2024-03-10','2024-04-09',683.84,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(51,'5758','Kaylie Senger','2024-03-10','2024-04-09',471.14,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(52,'7425','Sarah D\'Amore','2024-03-10','2024-04-09',120.09,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(53,'4015','Angie Schoen','2024-03-10','2024-04-09',933.66,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(54,'9418','Cindy Gaylord Jr.','2024-03-10','2024-04-09',521.19,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(55,'6530','Ardith Raynor III','2024-03-10','2024-04-09',387.63,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(56,'3078','Dr. Sigrid Moore','2024-03-10','2024-04-09',681.90,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(57,'8154','Price Kassulke','2024-03-10','2024-04-09',611.39,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(58,'4242','Vincenzo Wunsch','2024-03-10','2024-04-09',987.76,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(59,'6147','Tianna Doyle','2024-03-10','2024-04-09',140.66,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(60,'3951','Paris Schamberger','2024-03-10','2024-04-09',868.39,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(61,'3664','Louisa Ruecker','2024-03-10','2024-04-09',780.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(62,'4324','Dr. Kirk Lang','2024-03-10','2024-04-09',685.87,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(63,'5660','Eulalia Gleichner','2024-03-10','2024-04-09',172.64,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(64,'5629','Deonte Schumm','2024-03-10','2024-04-09',508.67,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(65,'1926','Addison Zieme','2024-03-10','2024-04-09',412.18,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(66,'2966','Alessia Berge','2024-03-10','2024-04-09',339.76,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(67,'2538','Mr. Barrett Schmitt II','2024-03-10','2024-04-09',104.57,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(68,'9245','Bernardo Lowe','2024-03-10','2024-04-09',434.76,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(69,'7057','Ms. Verda Goodwin','2024-03-10','2024-04-09',335.92,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(70,'9441','Vergie Kub IV','2024-03-10','2024-04-09',831.15,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(71,'1514','Liza Wehner II','2024-03-10','2024-04-09',773.17,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(72,'9375','Conrad Kris','2024-03-10','2024-04-09',301.29,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(73,'6596','Ms. Kiarra Dibbert IV','2024-03-10','2024-04-09',312.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(74,'1870','Tracy Roob','2024-03-10','2024-04-09',132.16,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(75,'1603','Davion Harber IV','2024-03-10','2024-04-09',647.10,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(76,'1427','Garret Tillman','2024-03-10','2024-04-09',703.83,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(77,'3426','Brody Lindgren','2024-03-10','2024-04-09',386.32,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(78,'9253','Marlee Herzog IV','2024-03-10','2024-04-09',947.54,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(79,'1151','Ms. Dayana Beahan MD','2024-03-10','2024-04-09',317.14,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(80,'4232','Wyman Adams','2024-03-10','2024-04-09',990.91,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(81,'4545','Carmelo Kuhn Jr.','2024-03-10','2024-04-09',632.73,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(82,'6356','Arthur Deckow V','2024-03-10','2024-04-09',124.38,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(83,'5955','Terry Howell','2024-03-10','2024-04-09',304.62,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(84,'4664','Lorenz Friesen','2024-03-10','2024-04-09',612.21,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(85,'4663','Dr. Tanner Buckridge Jr.','2024-03-10','2024-04-09',878.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(86,'6562','Aurelio Schinner','2024-03-10','2024-04-09',183.70,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(87,'7888','Nadia Little','2024-03-10','2024-04-09',554.72,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(88,'8638','Damion Lemke','2024-03-10','2024-04-09',806.81,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(89,'7940','Sarina Brekke','2024-03-10','2024-04-09',105.50,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(90,'5719','Mittie Gibson Sr.','2024-03-10','2024-04-09',726.98,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(91,'5167','Mr. Benton Reilly','2024-03-10','2024-04-09',273.21,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(92,'7135','Maida Kling','2024-03-10','2024-04-09',563.82,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(93,'3011','Dorothy Anderson','2024-03-10','2024-04-09',845.61,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(94,'3250','Wade Stoltenberg','2024-03-10','2024-04-09',93.24,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(95,'9661','Prof. Omer Breitenberg','2024-03-10','2024-04-09',175.89,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(96,'2284','Dr. Leonor Rodriguez','2024-03-10','2024-04-09',520.28,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(97,'2045','Maryse Breitenberg','2024-03-10','2024-04-09',601.09,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(98,'7361','Charley Kirlin','2024-03-10','2024-04-09',779.70,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(99,'9389','Miss Augusta Moen Jr.','2024-03-10','2024-04-09',388.11,'2024-03-09 17:45:40','2024-03-09 17:45:40'),(100,'5203','Mr. Charles Klocko','2024-03-10','2024-04-09',424.07,'2024-03-09 17:45:40','2024-03-09 17:45:40');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_09_050240_create_invoices_table',1),(6,'2024_03_09_051031_create_vendors_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'AppName','051b5667df54dcc28b0f75362c989f4bf0f2074a803a27c28b20b059586a14ee','[\"*\"]',NULL,NULL,'2024-03-08 22:56:49','2024-03-08 22:56:49'),(2,'App\\Models\\User',1,'AppName','b0ba61163fcded55c3eb440aea649664227265694d8ab3aaced54a78504a2e8d','[\"*\"]',NULL,NULL,'2024-03-08 22:57:02','2024-03-08 22:57:02'),(3,'App\\Models\\User',1,'AppName','dbd40e3a2eb558bc3a266455b8cfaabff94ed0513a6c44e8fa5943381a735f9d','[\"*\"]',NULL,NULL,'2024-03-08 23:00:58','2024-03-08 23:00:58'),(4,'App\\Models\\User',1,'AppName','0c80ac51a7a5ce9790d378bccf30f6d02320fc8e85aa00bd371b4992c70be482','[\"*\"]',NULL,NULL,'2024-03-08 23:05:45','2024-03-08 23:05:45'),(5,'App\\Models\\User',1,'AppName','015dab3562c0b24b22e2053237ed59caeb84f93fc74fd588db35885ef1dec539','[\"*\"]',NULL,NULL,'2024-03-08 23:06:18','2024-03-08 23:06:18'),(6,'App\\Models\\User',1,'AppName','e6876f11d5003f01f0a1368b0be02940130de54fedc1de90b79e8b971b1c0bf7','[\"*\"]',NULL,NULL,'2024-03-08 23:06:43','2024-03-08 23:06:43'),(7,'App\\Models\\User',1,'AppName','71623a2e1a63268a249122975c74725be92b51294fe70c66b2657d4627907a84','[\"*\"]',NULL,NULL,'2024-03-08 23:44:18','2024-03-08 23:44:18'),(8,'App\\Models\\User',1,'AppName','6aa23baf89252380a1bd76f50de3ce2fd616bb0c0b020626331b15275eb46709','[\"*\"]',NULL,NULL,'2024-03-08 23:46:00','2024-03-08 23:46:00'),(9,'App\\Models\\User',2,'AppName','7eea3dee48ad7471d63e011bad99318a51f7e940f18cf2e94ae0d48fc476b7a6','[\"*\"]',NULL,NULL,'2024-03-08 23:47:10','2024-03-08 23:47:10'),(10,'App\\Models\\User',2,'AppName','24f540b49849df9f6f12be29b1ebc1cf76281386be916737e664932a143c613c','[\"*\"]',NULL,NULL,'2024-03-08 23:48:34','2024-03-08 23:48:34'),(11,'App\\Models\\User',2,'AppName','1c72b4b90ac924a393bea7267a7345b66d52470f176f98451908549ae76d4b65','[\"*\"]',NULL,NULL,'2024-03-08 23:48:54','2024-03-08 23:48:54'),(12,'App\\Models\\User',2,'AppName','43e374518fb6e0bccb1f497f661a09ecdea230e8bec4e0500d0da2937055fb33','[\"*\"]',NULL,NULL,'2024-03-08 23:55:34','2024-03-08 23:55:34'),(13,'App\\Models\\User',1,'AppName','8bcf5aa08527241e6dce0b115920d936cef77c53d4bb0a6de6851c6404863a5e','[\"*\"]',NULL,NULL,'2024-03-08 23:56:04','2024-03-08 23:56:04');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(11) DEFAULT NULL COMMENT '1=Admin; 2=Staff;',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bert Serrano Garcia','bert@app.com','2024-03-08 22:55:10','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',1,'MaUr7wumbj','2024-03-08 22:55:11','2024-03-08 22:55:11'),(2,'Staff Staff','staff@app.com','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'SwKaZ0jSJf','2024-03-08 22:55:11','2024-03-08 22:55:11'),(3,'Dr. Julia Padberg III','arvilla.wyman@example.org','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'CF4plSKV05','2024-03-08 22:55:11','2024-03-08 22:55:11'),(4,'Jacky Hill','djacobs@example.org','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'Kdjf1cPuMg','2024-03-08 22:55:11','2024-03-08 22:55:11'),(5,'Amanda Gislason','norma.batz@example.com','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'eaZRUXkYEV','2024-03-08 22:55:11','2024-03-08 22:55:11'),(6,'Don Keeling','erna.barton@example.net','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'Kl6dCuvxVg','2024-03-08 22:55:11','2024-03-08 22:55:11'),(7,'Tracy Bailey','jgislason@example.com','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',2,'2xUwDzhfIl','2024-03-08 22:55:11','2024-03-08 22:55:11'),(8,'Jesus Kshlerin Jr.','maybell76@example.net','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',NULL,'7AVUeGSsi1','2024-03-08 22:55:11','2024-03-08 22:55:11'),(9,'Jevon Haley','mariane.mckenzie@example.net','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',NULL,'hLBCqgAY5k','2024-03-08 22:55:11','2024-03-08 22:55:11'),(10,'Miss Melody Jaskolski','luz.kreiger@example.org','2024-03-08 22:55:11','$2y$12$ngI22DnvlrPTv/4i3kTL1O8yWbF46F5OZJGGG2ACdAveZuKA4gJG6',NULL,'Y4YnMNpsl0','2024-03-08 22:55:11','2024-03-08 22:55:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 18:14:20
