-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: tukule_lunch
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

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
-- Table structure for table `Commitment`
--

DROP TABLE IF EXISTS `Commitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Commitment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(250) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `ministry` varchar(20) NOT NULL,
  `commitment_date` date NOT NULL,
  `deadline` date NOT NULL,
  `honoured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commitment`
--

LOCK TABLES `Commitment` WRITE;
/*!40000 ALTER TABLE `Commitment` DISABLE KEYS */;
INSERT INTO `Commitment` VALUES (10,'9wY9gI9rDNPYNE707VjfHtvMJO20zZRHgSvr0VTCVtmMZNyy4lpUlz7WSoaHk0Z7',450.00,'Kembo Franklyne','asininefatuity@gmail.com','0711653675','Friends of Jesus','2021-10-25','2021-11-27',1),(11,'mMvjHuzlREtkebBuAYYNBOKMgMXH4aTlj4SfvYiQyLdq26Bfx97eLPmWKCCTc6kA',1050.00,'Denis Bichanga','denisbichanga@gmail.com','0707771471','Friends of Jesus','2021-10-25','2021-11-27',0),(12,'V1XclJeqKDjJrebRuywNrS24GyAkDhjasYxWTiqHMDEX0iKDqTayPHw5qwCVqfyW',600.00,'Denis Bichanga','denisbichanga@gmail.com','0707771471','Friends of Jesus','2021-10-25','2021-11-27',0),(13,'x9EtGbBeGrt2LN4A4Y3324vZbYFy4P9bTO7h7KzifykMmeIGhMGqynKFP5IYR0cw',1200.00,'Kembo Franklyne','asininefatuity@gmail.com','0711653675','Friends of Jesus','2021-10-26','2021-11-27',0),(14,'LaFt3Ka8M9qRF6278SDYQYzfsQqXJ99PnVhkDUXLy64IKtAUAwPQVg98KevElcos',1500.00,'Caroline Nyaboke ','carolmachukin@gmail.com','0725812805','Pilgrim ','2021-11-03','2021-11-27',1),(15,'LaFt3Ka8M9qRF6278SDYQYzfsQqXJ99PnVhkDUXLy64IKtAUAwPQVg98KevElcos',0.00,'Caroline Nyaboke ','carolmachukin@gmail.com','0725812805','Pilgrim ','2021-11-03','2021-11-27',0);
/*!40000 ALTER TABLE `Commitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CommittedItem`
--

DROP TABLE IF EXISTS `CommittedItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CommittedItem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item` varchar(250) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `commitment_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CommittedItem_commitment_id_7ce02b72_fk_Commitment_id` (`commitment_id`),
  CONSTRAINT `CommittedItem_commitment_id_7ce02b72_fk_Commitment_id` FOREIGN KEY (`commitment_id`) REFERENCES `Commitment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommittedItem`
--

LOCK TABLES `CommittedItem` WRITE;
/*!40000 ALTER TABLE `CommittedItem` DISABLE KEYS */;
INSERT INTO `CommittedItem` VALUES (10,'Capsicum',3,150.00,10),(11,'Groundnuts',7,150.00,11),(12,'Green Grams',3,200.00,12),(13,'Charcoal',1,1200.00,13),(14,'Five Hundred',3,500.00,14);
/*!40000 ALTER TABLE `CommittedItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pledge`
--

DROP TABLE IF EXISTS `Pledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pledge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pledge_id` varchar(250) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pledge`
--

LOCK TABLES `Pledge` WRITE;
/*!40000 ALTER TABLE `Pledge` DISABLE KEYS */;
INSERT INTO `Pledge` VALUES (1,'d6ww90obz05j8q2efl5gmbmp2k9pbniy','2021-10-13'),(2,'f1jkp3kwx526h5ole3t9inmy7giev4oi','2021-10-14'),(3,'vqv7yua7y52kvc7l22vueofhxcl5qtl4','2021-10-20'),(4,'r55g12ddoi3133tn9cx0iafp8at4sjui','2021-10-20'),(5,'kyks3p0c8acohbkpqf66p9o8k2mnrpyk','2021-10-21'),(6,'p4wn6hm3ryfgs6845xe6ijszugktuuq5','2021-10-22'),(7,'yvytpctfl6s4c4kbpcr0tzhl3kb3ol9n','2021-10-22'),(8,'kzbowru7li4zbk2fqj5vmso1kdq4fcni','2021-10-22'),(9,'lw18958nepd5fy9vja8d9k7czui4bdr6','2021-10-24'),(10,'uxg49gcjoh9ihq1qboetwt745kf3goa6','2021-10-24'),(11,'n640xpxchfxkytba6qovnpnxhiwehpha','2021-10-25'),(12,'f1pdeiqnc7xcxycaq8c44tk8rydwfd9u','2021-10-25'),(13,'njc03vhlljzjcbdga20wcwrl2nfldrhl','2021-10-25'),(14,'uq6iu90d39ikcc16ezhw7j0qu2kx7sqh','2021-10-25'),(15,'9co8kw0l5ruj33eannhy5shqr1oi1twb','2021-10-25'),(16,'4hu8f2jdkgg1x7lhfltyee80xr9yohcr','2021-10-26'),(17,'05alpkeu7y9spq0l2gotembtc8oehxkq','2021-11-03'),(18,'b3lrqoxweow4k9bp1dt39orwzyszobsf','2021-11-03');
/*!40000 ALTER TABLE `Pledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PledgeItem`
--

DROP TABLE IF EXISTS `PledgeItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PledgeItem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `active` tinyint(1) NOT NULL,
  `item_id` bigint NOT NULL,
  `pledge_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PledgeItem_item_id_8b360698_fk_members_item_id` (`item_id`),
  KEY `PledgeItem_pledge_id_6c92fb96_fk_Pledge_id` (`pledge_id`),
  CONSTRAINT `PledgeItem_item_id_8b360698_fk_members_item_id` FOREIGN KEY (`item_id`) REFERENCES `members_item` (`id`),
  CONSTRAINT `PledgeItem_pledge_id_6c92fb96_fk_Pledge_id` FOREIGN KEY (`pledge_id`) REFERENCES `Pledge` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PledgeItem`
--

LOCK TABLES `PledgeItem` WRITE;
/*!40000 ALTER TABLE `PledgeItem` DISABLE KEYS */;
INSERT INTO `PledgeItem` VALUES (10,1,1,32,9),(14,1,1,10,12),(21,1,1,23,18);
/*!40000 ALTER TABLE `PledgeItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Pledgers');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add commitment',8,'add_commitment'),(30,'Can change commitment',8,'change_commitment'),(31,'Can delete commitment',8,'delete_commitment'),(32,'Can view commitment',8,'view_commitment'),(33,'Can add item',9,'add_item'),(34,'Can change item',9,'change_item'),(35,'Can delete item',9,'delete_item'),(36,'Can view item',9,'view_item'),(37,'Can add pledge',10,'add_pledge'),(38,'Can change pledge',10,'change_pledge'),(39,'Can delete pledge',10,'delete_pledge'),(40,'Can view pledge',10,'view_pledge'),(41,'Can add pledge item',11,'add_pledgeitem'),(42,'Can change pledge item',11,'change_pledgeitem'),(43,'Can delete pledge item',11,'delete_pledgeitem'),(44,'Can view pledge item',11,'view_pledgeitem'),(45,'Can add committed item',12,'add_committeditem'),(46,'Can change committed item',12,'change_committeditem'),(47,'Can delete committed item',12,'delete_committeditem'),(48,'Can view committed item',12,'view_committeditem'),(49,'Can add Payment',13,'add_payment'),(50,'Can change Payment',13,'change_payment'),(51,'Can delete Payment',13,'delete_payment'),(52,'Can view Payment',13,'view_payment'),(53,'Can add ghost payment',14,'add_ghostpayment'),(54,'Can change ghost payment',14,'change_ghostpayment'),(55,'Can delete ghost payment',14,'delete_ghostpayment'),(56,'Can view ghost payment',14,'view_ghostpayment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$9v0uVk6AWKA7hldfSfiFRI$ZnqsQudzZYBpFCCaxmf5gAi7MNgbNSMYqcndzoifKBw=','2022-03-21 18:14:38.285192',1,'asinine@fatuity','','','asininefatuity@gmail.com',1,1,'2021-10-13 19:09:38.606657'),(2,'pbkdf2_sha256$260000$GhgvfadzBrxCNf8Z7TcvFK$/rEDsJ14Hv+yvZuZTs3VV5oFJ6alWc7OPuzTAAbdra8=','2021-11-03 18:32:49.181861',0,'Kembo','Kembo','Franklyne','asininefatuity@gmail.com',0,1,'2021-10-20 08:30:08.531770'),(5,'pbkdf2_sha256$260000$nVZnFQjfvtZm6ahhsQDGB9$etKs/SYmAzrQ+W3uTaf0fHwkXpBMitw/zYCPK8mn8sc=','2021-10-29 10:19:08.000000',0,'eleora','Eleora','Nyareki','kembofranklyne@students.uonbi.ac.ke',1,1,'2021-10-22 07:25:58.000000'),(7,'pbkdf2_sha256$260000$iEH1goRMTLkg6YHhgerX7S$nd9a2PmUzgtZHTscX+D53e4VV6WGYCBJKfDqE/5Mk0E=','2021-10-25 15:01:32.791107',0,'bichanga','Chibu','Bichanga','denisbichanga@gmail.com',0,1,'2021-10-25 14:20:11.000000'),(8,'pbkdf2_sha256$260000$nIFAzOqZdFzvRHKkWtbeMv$9CEXtNY2Ce7jDk9dUBJXN7tpzftdNe8RxpVf5YU133w=','2021-11-03 18:37:39.000000',0,'Dollyvis','Dollyvis','Nyareki','dollyviskerubo@gmail.com',1,1,'2021-11-03 18:37:38.000000'),(9,'pbkdf2_sha256$260000$MMthqZmaWHS3loo94yT33x$AwUhl5qS9G39FHw21yTIF/j/j/Zrnw5KbgYPWYzHtUo=','2021-11-03 19:09:00.365716',0,'Nyaboke00','Caroline','Machuki','carolmachukin@gmail.com',0,1,'2021-11-03 18:38:21.394840');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(4,5,1),(6,8,1),(7,9,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (7,5,29),(8,5,30),(9,5,31),(1,5,32),(2,5,48),(3,5,49),(4,5,50),(5,5,51),(6,5,52),(19,8,29),(20,8,30),(21,8,31),(10,8,32),(11,8,33),(12,8,34),(13,8,35),(14,8,36),(15,8,49),(16,8,50),(17,8,51),(18,8,52);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-13 19:13:22.726891','1','Pledge Food Items',1,'[{\"added\": {}}]',7,1),(2,'2021-10-13 19:13:52.987770','2','Pledge Non Food Items',1,'[{\"added\": {}}]',7,1),(3,'2021-10-13 19:14:38.509781','3','Pledge Cash',1,'[{\"added\": {}}]',7,1),(4,'2021-10-13 19:14:52.969651','1','Pledgers',1,'[{\"added\": {}}]',3,1),(5,'2021-10-13 19:18:31.085308','1','Rice',1,'[{\"added\": {}}]',9,1),(6,'2021-10-13 19:23:30.992588','2','Attamark',1,'[{\"added\": {}}]',9,1),(7,'2021-10-13 19:29:03.110772','3','Yellow Beans',1,'[{\"added\": {}}]',9,1),(8,'2021-10-13 19:32:43.529058','4','Fruits',1,'[{\"added\": {}}]',9,1),(9,'2021-10-13 19:40:39.036662','5','Tomatoes',1,'[{\"added\": {}}]',9,1),(10,'2021-10-13 19:45:52.041539','6','Onions',1,'[{\"added\": {}}]',9,1),(11,'2021-10-13 19:48:03.397823','7','Carrots',1,'[{\"added\": {}}]',9,1),(12,'2021-10-13 19:51:44.641052','8','Cummin Seeds',1,'[{\"added\": {}}]',9,1),(13,'2021-10-13 19:59:46.370470','8','Cummin Seeds',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(14,'2021-10-13 20:02:46.875327','8','Cummin Seeds',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(15,'2021-10-13 20:07:38.357660','9','Ginger',1,'[{\"added\": {}}]',9,1),(16,'2021-10-13 20:09:31.090546','10','Coriander',1,'[{\"added\": {}}]',9,1),(17,'2021-10-13 20:13:09.649790','11','Garlic',1,'[{\"added\": {}}]',9,1),(18,'2021-10-13 20:17:59.254149','12','Capsicum',1,'[{\"added\": {}}]',9,1),(19,'2021-10-13 20:18:28.400618','12','Capsicum',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',9,1),(20,'2021-10-13 20:22:13.720674','13','Salt',1,'[{\"added\": {}}]',9,1),(21,'2021-10-13 20:26:48.126497','14','Cooking Oil',1,'[{\"added\": {}}]',9,1),(22,'2021-10-13 20:30:57.654068','15','Handwash',1,'[{\"added\": {}}]',9,1),(23,'2021-10-13 20:34:05.268357','16','Barsoap',1,'[{\"added\": {}}]',9,1),(24,'2021-10-13 20:36:50.143698','17','Scouring Pad',1,'[{\"added\": {}}]',9,1),(25,'2021-10-13 20:41:03.286010','18','Charcoal',1,'[{\"added\": {}}]',9,1),(26,'2021-10-13 20:44:53.388514','19','Serviettes',1,'[{\"added\": {}}]',9,1),(27,'2021-10-13 20:51:15.256336','20','Fifty',1,'[{\"added\": {}}]',9,1),(28,'2021-10-13 20:53:02.414138','21','Hundred',1,'[{\"added\": {}}]',9,1),(29,'2021-10-13 20:54:59.121889','22','Two Hundred',1,'[{\"added\": {}}]',9,1),(30,'2021-10-13 20:56:24.595817','23','Five Hundred',1,'[{\"added\": {}}]',9,1),(31,'2021-10-13 20:58:27.904486','24','One Thousand',1,'[{\"added\": {}}]',9,1),(32,'2021-10-14 03:47:43.885378','4','Test Items',1,'[{\"added\": {}}]',7,1),(33,'2021-10-14 03:49:29.145056','25','Maize Flour',1,'[{\"added\": {}}]',9,1),(34,'2021-10-14 03:52:35.515223','26','Soya Chunks',1,'[{\"added\": {}}]',9,1),(35,'2021-10-14 03:54:42.966114','27','Managuu',1,'[{\"added\": {}}]',9,1),(36,'2021-10-14 03:57:40.759018','28','Broccoli',1,'[{\"added\": {}}]',9,1),(37,'2021-10-14 03:59:53.694366','29','Jaggery',1,'[{\"added\": {}}]',9,1),(38,'2021-10-14 04:01:40.385526','30','Dates',1,'[{\"added\": {}}]',9,1),(39,'2021-10-14 04:02:56.235551','4','Test Items',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(40,'2021-10-14 04:16:37.433281','31','Groundnuts',1,'[{\"added\": {}}]',9,1),(41,'2021-10-14 04:19:16.874097','32','Green Grams',1,'[{\"added\": {}}]',9,1),(42,'2021-10-16 17:54:59.614571','1','Pledge Food Items',2,'[]',7,1),(43,'2021-10-16 17:56:24.764237','2','Pledge Non Food Items',2,'[]',7,1),(44,'2021-10-16 17:57:22.342254','3','Pledge Cash',2,'[]',7,1),(45,'2021-10-16 18:03:27.315607','2','Attamark',2,'[]',9,1),(46,'2021-10-16 18:03:35.056864','2','Attamark',2,'[]',9,1),(47,'2021-10-16 18:28:27.034947','16','Barsoap',2,'[]',9,1),(48,'2021-10-16 18:30:34.051509','28','Broccoli',2,'[]',9,1),(49,'2021-10-16 18:31:40.112346','12','Capsicum',2,'[]',9,1),(50,'2021-10-16 18:32:53.431694','7','Carrots',2,'[]',9,1),(51,'2021-10-16 18:33:50.414295','18','Charcoal',2,'[]',9,1),(52,'2021-10-16 18:35:07.128047','14','Cooking Oil',2,'[]',9,1),(53,'2021-10-16 18:36:37.825677','10','Coriander',2,'[]',9,1),(54,'2021-10-16 18:37:37.804280','8','Cummin Seeds',2,'[]',9,1),(55,'2021-10-16 18:38:41.878188','30','Dates',2,'[]',9,1),(56,'2021-10-16 18:39:55.630770','20','Fifty',2,'[]',9,1),(57,'2021-10-16 18:40:49.792522','23','Five Hundred',2,'[]',9,1),(58,'2021-10-16 18:41:52.844094','4','Fruits',2,'[]',9,1),(59,'2021-10-16 18:42:53.076463','11','Garlic',2,'[]',9,1),(60,'2021-10-16 18:44:29.383586','9','Ginger',2,'[]',9,1),(61,'2021-10-16 18:45:38.665717','32','Green Grams',2,'[]',9,1),(62,'2021-10-16 18:46:50.121329','31','Groundnuts',2,'[]',9,1),(63,'2021-10-16 18:48:01.571190','15','Handwash',2,'[]',9,1),(64,'2021-10-16 18:49:13.286537','21','Hundred',2,'[]',9,1),(65,'2021-10-16 18:50:48.404338','29','Jaggery',2,'[]',9,1),(66,'2021-10-16 18:52:09.179591','25','Maize Flour',2,'[]',9,1),(67,'2021-10-16 18:53:28.122354','27','Managuu',2,'[]',9,1),(68,'2021-10-16 18:54:37.415423','24','One Thousand',2,'[]',9,1),(69,'2021-10-16 18:55:51.992565','6','Onions',2,'[]',9,1),(70,'2021-10-16 18:59:18.017758','1','Rice',2,'[]',9,1),(71,'2021-10-16 19:00:31.443575','13','Salt',2,'[]',9,1),(72,'2021-10-16 19:01:50.125010','17','Scouring Pad',2,'[]',9,1),(73,'2021-10-16 19:02:55.356287','19','Serviettes',2,'[]',9,1),(74,'2021-10-16 19:03:58.765646','26','Soya Chunks',2,'[]',9,1),(75,'2021-10-16 19:04:55.128736','5','Tomatoes',2,'[]',9,1),(76,'2021-10-16 19:05:58.883764','22','Two Hundred',2,'[]',9,1),(77,'2021-10-16 19:06:52.804027','3','Yellow Beans',2,'[]',9,1),(78,'2021-10-20 09:33:36.849734','3','3',2,'[{\"changed\": {\"fields\": [\"KES Paid Total\"]}}]',8,1),(79,'2021-10-20 11:54:46.688825','3','3',2,'[{\"changed\": {\"fields\": [\"Total Paid So Far\"]}}]',8,1),(80,'2021-10-20 11:55:17.711530','2','2',3,'',8,1),(81,'2021-10-20 11:55:17.721784','1','1',3,'',8,1),(82,'2021-10-20 12:12:25.146762','3','3',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\", \"Total Paid So Far\"]}}]',8,1),(83,'2021-10-20 13:41:16.105925','3','3',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\"]}}]',8,1),(84,'2021-10-20 13:46:50.734135','3','3',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\"]}}]',8,1),(85,'2021-10-20 13:51:09.390883','3','3',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\"]}}]',8,1),(86,'2021-10-20 13:57:54.729582','3','3',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\"]}}]',8,1),(87,'2021-10-20 14:03:23.144816','3','3',3,'',8,1),(88,'2021-10-20 14:27:15.963254','4','4',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\", \"Date paid\"]}}]',8,1),(89,'2021-10-20 14:32:55.304868','4','4',2,'[{\"changed\": {\"fields\": [\"Amount Paid Today\", \"Date paid\"]}}]',8,1),(90,'2021-10-21 03:50:57.448257','4','4',3,'',8,1),(91,'2021-10-21 11:46:15.166653','1','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(92,'2021-10-21 11:48:10.349084','2','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(93,'2021-10-21 11:54:09.936614','2','Kembo Franklyne',2,'[{\"changed\": {\"fields\": [\"Amount Paid\"]}}]',13,1),(94,'2021-10-21 11:56:29.791362','1','Kembo Franklyne',2,'[{\"changed\": {\"fields\": [\"Amount Paid\"]}}]',13,1),(95,'2021-10-21 13:25:56.332570','1','Kembo Franklyne',3,'',13,1),(96,'2021-10-21 13:26:10.307523','2','Kembo Franklyne',3,'',13,1),(97,'2021-10-21 13:27:20.248997','3','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(98,'2021-10-21 13:28:05.168555','4','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(99,'2021-10-21 13:28:21.018335','4','Kembo Franklyne',2,'[{\"changed\": {\"fields\": [\"Date paid\"]}}]',13,1),(100,'2021-10-21 13:50:14.609344','5','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(101,'2021-10-21 13:50:46.029448','3','Kembo Franklyne',3,'',13,1),(102,'2021-10-21 13:50:46.038571','4','Kembo Franklyne',3,'',13,1),(103,'2021-10-21 13:52:35.325590','5','Kembo Franklyne',3,'',13,1),(104,'2021-10-21 14:04:05.687928','None','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(105,'2021-10-21 14:08:42.995934','6','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(106,'2021-10-21 14:10:12.011879','7','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(107,'2021-10-21 14:12:33.610083','8','Kembo Franklyne',1,'[{\"added\": {}}]',13,1),(108,'2021-10-22 07:22:43.302280','6','0711653675',3,'',8,1),(109,'2021-10-22 07:23:27.053448','4','Carsten',3,'',4,1),(110,'2021-10-22 07:23:40.016030','3','eleora',3,'',4,1),(111,'2021-10-22 08:02:18.145487','9','Eleora Nyareki',1,'[{\"added\": {}}]',13,1),(112,'2021-10-22 08:10:18.244180','9','Eleora Nyareki',3,'',13,1),(113,'2021-10-22 08:21:30.747546','10','Eleora Nyareki',1,'[{\"added\": {}}]',13,1),(114,'2021-10-22 08:22:11.374882','11','Eleora Nyareki',1,'[{\"added\": {}}]',13,1),(115,'2021-10-22 10:09:54.421332','12','Eleora Nyareki',1,'[{\"added\": {}}]',13,1),(116,'2021-10-22 10:19:58.945737','13','Eleora Nyareki',1,'[{\"added\": {}}]',13,1),(117,'2021-10-24 03:03:20.145639','6','Johnsen',3,'',4,1),(118,'2021-10-24 03:04:52.674902','5','0711653675',3,'',8,1),(119,'2021-10-25 05:12:35.044221','9','9',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(120,'2021-10-25 05:15:53.006128','9','9',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(121,'2021-10-25 05:31:11.428927','9','9',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(122,'2021-10-25 05:37:19.496109','9','9',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(123,'2021-10-25 05:38:01.657742','9','9',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(124,'2021-10-25 07:44:23.333435','8','8',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Eleora Nyareki\"}}]',8,1),(125,'2021-10-25 07:45:15.970759','8','8',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Eleora Nyareki\"}}]',8,1),(126,'2021-10-25 07:46:49.222407','8','8',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Eleora Nyareki\"}}]',8,1),(127,'2021-10-25 07:47:22.940856','8','8',2,'[{\"changed\": {\"name\": \"Payment\", \"object\": \"Eleora Nyareki\", \"fields\": [\"Amount Paid\"]}}]',8,1),(128,'2021-10-25 08:05:34.973008','9','9',3,'',8,1),(129,'2021-10-25 08:05:50.912916','8','8',3,'',8,1),(130,'2021-10-25 08:05:50.917290','7','7',3,'',8,1),(131,'2021-10-25 08:10:02.803506','10','10',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(132,'2021-10-25 08:11:00.842076','10','10',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(133,'2021-10-25 08:58:26.106799','10','10',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(134,'2021-10-25 14:20:11.418724','7','bichanga',1,'[{\"added\": {}}]',4,1),(135,'2021-10-25 14:25:26.246385','7','bichanga',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]',4,1),(136,'2021-10-25 14:55:40.923406','11','11',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Denis Bichanga\"}}]',8,1),(137,'2021-10-25 14:57:39.108874','11','11',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Denis Bichanga\"}}]',8,1),(138,'2021-10-25 15:01:07.438391','11','11',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Denis Bichanga\"}}]',8,1),(139,'2021-10-26 16:26:01.926762','18','Charcoal',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(140,'2021-10-26 16:28:24.703105','18','Charcoal',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(141,'2021-10-26 16:32:07.791740','14','Cooking Oil',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(142,'2021-10-29 10:16:26.481568','5','eleora',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(143,'2021-10-29 10:18:48.168335','5','eleora',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(144,'2021-11-03 18:36:10.160470','5','eleora',2,'[{\"changed\": {\"fields\": [\"Last name\"]}}]',4,1),(145,'2021-11-03 18:41:25.669430','8','Dollyvis',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(146,'2021-11-03 18:45:30.229787','8','Dollyvis',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(147,'2021-11-03 19:02:15.912613','10','10',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,8),(148,'2021-11-03 19:16:01.910778','14','14',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Caroline Nyaboke \"}}]',8,8),(149,'2021-11-03 19:22:26.792524','21','Hundred',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',9,1),(150,'2021-11-04 08:05:48.537420','5','eleora',2,'[{\"changed\": {\"fields\": [\"Last name\"]}}]',4,1),(151,'2021-11-07 11:07:41.499320','14','14',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Caroline Nyaboke \"}}]',8,1),(152,'2021-11-07 11:08:31.480362','14','14',2,'[{\"changed\": {\"fields\": [\"Honoured\"]}}]',8,1),(153,'2021-11-14 07:40:28.799882','1','Kikelomo Sadiku',1,'[{\"added\": {}}]',14,1),(154,'2022-03-21 18:19:37.163672','10','10',2,'[{\"changed\": {\"fields\": [\"Honoured\"]}}]',8,1),(155,'2022-03-21 18:22:35.354160','13','13',2,'[{\"added\": {\"name\": \"Payment\", \"object\": \"Kembo Franklyne\"}}]',8,1),(156,'2022-03-21 18:25:40.192215','2','Ian Machogu',1,'[{\"added\": {}}]',14,1),(157,'2022-03-21 18:26:34.926591','3','Yusula Obadike',1,'[{\"added\": {}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'members','category'),(8,'members','commitment'),(12,'members','committeditem'),(14,'members','ghostpayment'),(9,'members','item'),(13,'members','payment'),(10,'members','pledge'),(11,'members','pledgeitem'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-13 18:21:26.398983'),(2,'auth','0001_initial','2021-10-13 18:21:29.072954'),(3,'admin','0001_initial','2021-10-13 18:21:29.657324'),(4,'admin','0002_logentry_remove_auto_add','2021-10-13 18:21:29.713398'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-13 18:21:29.732643'),(6,'contenttypes','0002_remove_content_type_name','2021-10-13 18:21:30.056795'),(7,'auth','0002_alter_permission_name_max_length','2021-10-13 18:21:30.276455'),(8,'auth','0003_alter_user_email_max_length','2021-10-13 18:21:30.312737'),(9,'auth','0004_alter_user_username_opts','2021-10-13 18:21:30.339546'),(10,'auth','0005_alter_user_last_login_null','2021-10-13 18:21:30.473209'),(11,'auth','0006_require_contenttypes_0002','2021-10-13 18:21:30.476849'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-13 18:21:30.511591'),(13,'auth','0008_alter_user_username_max_length','2021-10-13 18:21:30.665051'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-13 18:21:30.863069'),(15,'auth','0010_alter_group_name_max_length','2021-10-13 18:21:30.894779'),(16,'auth','0011_update_proxy_permissions','2021-10-13 18:21:30.909680'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-13 18:21:31.071412'),(18,'members','0001_initial','2021-10-13 18:21:32.677867'),(19,'sessions','0001_initial','2021-10-13 18:21:32.840613'),(20,'members','0002_commitment_amount_paid','2021-10-20 08:48:25.800237'),(21,'members','0003_auto_20211020_1128','2021-10-20 11:28:38.151295'),(22,'members','0004_auto_20211020_1416','2021-10-20 14:17:21.203667'),(23,'members','0005_alter_commitment_date_paid','2021-10-20 14:22:47.212465'),(24,'members','0006_auto_20211021_0416','2021-10-21 04:17:00.662404'),(25,'members','0007_auto_20211021_1337','2021-10-21 13:38:17.078267'),(26,'members','0008_commitment_honoured','2021-11-07 10:15:04.477227'),(27,'members','0009_auto_20211114_1038','2021-11-14 07:38:56.279875');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0s60zndxkefihgkznwsh4costgpp1l73','e30:1n7pbc:mbGPo_iOs5fHXO3vePiZVvFzBW0q1mnFxKubibmGKrY','2022-01-27 02:12:48.889143'),('2cw86zws4tfrf2s0l4z6y2l3fsx0zocd','.eJxVjEEOwiAQRe_C2hAHmDB16d4zkGEAqRqalHbVeHdt0oVu_3vvbyrwutSw9jyHMamLInX63SLLM7cdpAe3-6Rlass8Rr0r-qBd36aUX9fD_Tuo3Ou3dixIANlEKWLQUDIGS0oMBUjAg2D26C0OliPabIAdUSRnz2WIAOr9AewSN5k:1miL8l:U9hEIb4-0WvB6XIxBiTtKlGkx90zn1r-jqj8OwlunZE','2021-11-17 18:37:39.378475'),('3ipqx45fb6l23vs8g0z8q6tdvaibvo12','e30:1miLHT:t-OVH3ra2E1WYBibcnMDJu3vN3shjoew9VWgfZdxFsM','2021-11-17 18:46:39.753278'),('5j61p7wqb6hzsai4ewtqxymtyeo1j7o1','.eJxVjEEOwiAQRe_C2hCgFRiX7nuGZujMSNVAUtqV8e7apAvd_vfef6kRtzWPW-NlnEldFKjT75ZwenDZAd2x3KqealmXOeld0QdteqjEz-vh_h1kbPlbW2cSBQEgh2g6C0g2Ug-pA-dEbBBGjt74YAJhz4DuHMBLSJIkklHvD-uNOEg:1miLd6:y86Kx1LhZ9XTIcOu5ihrjOIs7N6zwyZMUiBs5FX7lSs','2021-11-17 19:09:00.370675'),('5x1alrf2z492rbifc96o58wpsgclvkfs','e30:1miLAk:PLsZGT_DYISI0DZYp_8luSEFm9NSxjN5lkaBqnEDGoo','2021-11-17 18:39:42.411153'),('8tlhqoaquflmqq33qv3sn2r1wg2zxncq','e30:1miLA5:AOFKfstc7AZ11XDcbTNLiAziy4L2MyJh6GTMbCRfuaU','2021-11-17 18:39:01.091643'),('as8lu8bn1vcdpz8f4ptfore9h2vj0j31','.eJxVjEEOwiAQAP_C2RBoAcGjd99AdtlFqgaS0p6MfzckPeh1ZjJvEWHfStw7r3EhcRFanH4ZQnpyHYIeUO9Npla3dUE5EnnYLm-N-HU92r9BgV7GlgmDDqQzBDchsbbOAKIHo2fwyStkE5KxntI5T6x0mHN2SrHNDAnE5wsBDTjq:1mjg2Z:OpP8_2VnI6yYJeQilyW9wX2GonpvxImzrEYC0kXYa30','2021-11-21 11:08:47.524107'),('b3lrqoxweow4k9bp1dt39orwzyszobsf','e30:1miLAi:wY6wP7SwSjpu5ssvq3Ae1AbwNkEQH3r6-PLf4Bb_1tI','2021-11-17 18:39:40.756517'),('h49sw1opqcrblqp56lsu2dz1juplbjat','e30:1miLFo:j15_io5Vul9ELdbECLO1cqhz84SpECywnwJ4Kz174rg','2021-11-17 18:44:56.039934'),('ia5u7bi8gsbgqya4uy96f8bkhnwhkpya','e30:1mdreY:trk0NTtuOYlrHPOz85gW1xScqacSQEglXrQ91oeVdwQ','2021-11-05 10:19:58.168846'),('jyihuxamrc6gefwk2qszic2u3tak5z5e','e30:1mdowD:f0fvgO7c43KGiasRZg9SzSE6ISW8r6g28i9oH2u06qc','2021-11-05 07:26:01.426674'),('m9xtiqnyvwe9mnxm1myp0rfwhm18eqay','.eJxVjDsOwyAQBe9CHSG-C6RM7zOgBZbgJLIlY1dR7h5bcpG0b2bem0Xc1ha3TkscC7syyy6_W8L8pOkA5YHTfeZ5ntZlTPxQ-Ek7H-ZCr9vp_h007G2vExarKpgM1ShhoFbnsg0EypGWGrN3UlNI5DV4i0IaBaHCrnghQAv2-QLfgzb4:1mgOya:caBV-yzhwzcwkzfM1npdPFiH0bmAIMIMWj4C1rD4Fkg','2021-11-12 10:19:08.265444'),('s9t1e200nkk9t5m1fzeviol54uxg3jlk','.eJxVjEEOwiAQAP_C2RBoAcGjd99AdtlFqgaS0p6MfzckPeh1ZjJvEWHfStw7r3EhcRFanH4ZQnpyHYIeUO9Npla3dUE5EnnYLm-N-HU92r9BgV7GlgmDDqQzBDchsbbOAKIHo2fwyStkE5KxntI5T6x0mHN2SrHNDAnE5wsBDTjq:1mmA6n:zz08YhOzAZfOA6cBcgzNHYi5i5y8Xyr3LsGANnJ7Kqc','2021-11-28 07:39:25.423909'),('vieho7eya5ht4lhsgs9wabbvw22ndzii','e30:1miLFo:j15_io5Vul9ELdbECLO1cqhz84SpECywnwJ4Kz174rg','2021-11-17 18:44:56.446034'),('w11yopeuvgksqwnzidvs1d7pel1d58wb','e30:1miL8o:zPoXVGAYkPUkGOejOkQ4RKUByhaEYSyJIYSrSDvmNUY','2021-11-17 18:37:42.018677'),('yqd3288bxnk5wgm716zd4bddjf4ffofr','e30:1mgJuS:eJ16lmS-1fbMZBGcvVW_p1ThuvVcU4MbnAN5aHMFW_c','2021-11-12 04:54:32.578045'),('zb3zujsmu1grndb52jnvfj5m9vjyh4jg','e30:1miL6x:aEF2GH3QecQ4EJXjs9QO67ZrrzVNRPCokAFiU7i7o8M','2021-11-17 18:35:47.651458');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_category`
--

DROP TABLE IF EXISTS `members_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_category`
--

LOCK TABLES `members_category` WRITE;
/*!40000 ALTER TABLE `members_category` DISABLE KEYS */;
INSERT INTO `members_category` VALUES (1,'Pledge Food Items','pledge-food-items','All food items','category/food.jpg'),(2,'Pledge Non Food Items','pledge-non-food-items','All other utilities','category/nonfood.png'),(3,'Pledge Cash','pledge-cash','For those who prefer cash donations instead','category/cash.jpg'),(4,'Test Items','test-items','These are to be used in testing the web application','category/test.jpg');
/*!40000 ALTER TABLE `members_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_ghostpayment`
--

DROP TABLE IF EXISTS `members_ghostpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_ghostpayment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `date_paid` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_ghostpayment`
--

LOCK TABLES `members_ghostpayment` WRITE;
/*!40000 ALTER TABLE `members_ghostpayment` DISABLE KEYS */;
INSERT INTO `members_ghostpayment` VALUES (1,'Kikelomo Sadiku','+2367675645',250.00,'2021-11-14 07:40:26.000000'),(2,'Ian Machogu','07898272526',300.00,'2022-03-21 18:25:38.000000'),(3,'Yusula Obadike','07567824356',200.00,'2022-03-21 18:26:27.000000');
/*!40000 ALTER TABLE `members_ghostpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_item`
--

DROP TABLE IF EXISTS `members_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  KEY `members_item_category_id_042bb258_fk_members_category_id` (`category_id`),
  CONSTRAINT `members_item_category_id_042bb258_fk_members_category_id` FOREIGN KEY (`category_id`) REFERENCES `members_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_item`
--

LOCK TABLES `members_item` WRITE;
/*!40000 ALTER TABLE `members_item` DISABLE KEYS */;
INSERT INTO `members_item` VALUES (1,'Rice','rice','A staple food at Sabbath meals',120.00,'item/rice.jpeg',120,1,'2021-10-13 19:18:31.080762','2021-10-16 18:59:18.016520',1),(2,'Attamark','attamark','The beloved brown manna, the very heart of every Sabbath meal',146.00,'item/manna.jpeg',105,1,'2021-10-13 19:23:30.984769','2021-10-16 18:03:35.054750',1),(3,'Yellow Beans','yellow-beans','A splendid dish when combined with Attamark and Rice',130.00,'item/dryyellow.jpeg',120,1,'2021-10-13 19:29:03.105457','2021-10-16 19:06:52.802057',1),(4,'Fruits','fruits','That we may eat a balanced diet and live balanced lives',700.00,'item/fruits.jpeg',10,1,'2021-10-13 19:32:43.522657','2021-10-16 18:41:52.835741',1),(5,'Tomatoes','tomatoes','Red as blood and sweet as food',120.00,'item/tomatoes.jpeg',10,1,'2021-10-13 19:40:39.032610','2021-10-16 19:04:55.123272',1),(6,'Onions','onions','A teargas and an ingredient all in one bulb!',150.00,'item/onions.jpeg',10,1,'2021-10-13 19:45:52.035431','2021-10-16 18:55:51.990673',1),(7,'Carrots','carrots','That we may better see our future, lined never so brightly',150.00,'item/carrots.jpeg',10,1,'2021-10-13 19:48:03.389495','2021-10-16 18:32:53.430403',1),(8,'Cummin Seeds','cummin-seeds','Cumin is an essential spice for a variety of rice dishes. It flavors and colors!',80.00,'item/cummin.png',5,1,'2021-10-13 19:51:44.635428','2021-10-16 18:37:37.802516',1),(9,'Ginger','ginger','As a spice for rice and baking ingredient',300.00,'item/Ginger.jpeg',1,1,'2021-10-13 20:07:38.356704','2021-10-16 18:44:29.374818',1),(10,'Coriander','coriander','Seasoned ingredient for seasoning food',300.00,'item/coriander.jpeg',1,1,'2021-10-13 20:09:31.089196','2021-10-16 18:36:37.824317',1),(11,'Garlic','garlic','Just like onions it starts out bitter and then turn sweet, the intense bite softens and sweetens food.',300.00,'item/Garlic.jpeg',1,1,'2021-10-13 20:13:09.648465','2021-10-16 18:42:53.074535',1),(12,'Capsicum','capsicum','Incredibly nutritious in all ways. It reduces inflammations and increases the appetite',150.00,'item/Capsicum.jpeg',0,1,'2021-10-13 20:17:59.252609','2021-10-25 08:08:45.433280',1),(13,'Salt','salt','Flavors all cooked foods',20.00,'item/Salt.jpg',8,1,'2021-10-13 20:22:13.719309','2021-10-16 19:00:31.441733',2),(14,'Cooking Oil','cooking-oil','To be used in all cooking and baking.',220.00,'item/mafuta.jpeg',30,1,'2021-10-13 20:26:48.124334','2021-10-26 16:32:07.785144',2),(15,'Handwash','handwash','To be used in washing hands during holy communion and Sabbath meal times',150.00,'item/rosyhand.jpg',2,1,'2021-10-13 20:30:57.652259','2021-10-16 18:48:01.568707',2),(16,'Barsoap','barsoap','Cleans all dirty utensil after the eating is done',150.00,'item/barsoap.jpg',3,1,'2021-10-13 20:34:05.267062','2021-10-16 18:28:27.033832',2),(17,'Scouring Pad','scouring-pad','Used in cleaning all dirty utensil',20.00,'item/scouringpad.jpeg',10,1,'2021-10-13 20:36:50.141611','2021-10-16 19:01:50.122722',2),(18,'Charcoal','charcoal','That there may be light and heat from darkness',1200.00,'item/makaa_wBxP4fu.jpeg',1,1,'2021-10-13 20:41:03.284959','2021-10-26 16:56:09.035311',2),(19,'Serviettes','serviettes','To be used in drying hands and feet during holy communion and Sabbath',85.00,'item/rosyserv.jpg',14,1,'2021-10-13 20:44:53.387287','2021-10-16 19:02:55.352670',2),(20,'Fifty','fifty','\"Every man according as he purposes in his heart, so let him give; not grudgingly, or of necessity: for God loves a cheerful giver.\"',50.00,'item/fifty.jpg',150,1,'2021-10-13 20:51:15.254808','2021-10-16 18:39:55.629257',3),(21,'Hundred','hundred','\"Every man according as he purposes in his heart, so let him give; not grudgingly, or of necessity: for God loves a cheerful giver.\"',100.00,'item/Hundred.jpeg',49,1,'2021-10-13 20:53:02.412212','2021-11-03 19:22:26.781237',3),(22,'Two Hundred','two-hundred','\"Every man according as he purposes in his heart, so let him give; not grudgingly, or of necessity: for God loves a cheerful giver.\"',200.00,'item/TwoHundred.jpeg',100,1,'2021-10-13 20:54:59.119313','2021-10-16 19:05:58.881124',3),(23,'Five Hundred','five-hundred','\"Every man according as he purposes in his heart, so let him give; not grudgingly, or of necessity: for God loves a cheerful giver.\"',500.00,'item/fivehundred.jpeg',97,1,'2021-10-13 20:56:24.593658','2021-11-03 18:40:57.126632',3),(24,'One Thousand','one-thousand','\"Every man according as he purposes in his heart, so let him give; not grudgingly, or of necessity: for God loves a cheerful giver.\"',1000.00,'item/onethousand.jpg',50,1,'2021-10-13 20:58:27.902634','2021-10-16 18:54:37.414305',3),(25,'Maize Flour','maize-flour','The builder and maker of a white solid hill that shall always be moved by sweaty works',130.00,'item/soko.jpeg',96,1,'2021-10-14 03:49:29.143931','2021-10-20 14:23:10.359859',4),(26,'Soya Chunks','soya-chunks','This is meet for food, healthy and natural (pun intended)',60.00,'item/proya.jpg',99,1,'2021-10-14 03:52:35.513707','2021-10-16 19:03:58.756734',4),(27,'Managuu','managuu','Green and sweet when prepared by expert hands',100.00,'item/managuu.jpg',100,1,'2021-10-14 03:54:42.963299','2021-10-16 18:53:28.114555',4),(28,'Broccoli','broccoli','Broccoli is high in many nutrients, including fiber, vitamin C, vitamin K, iron, and potassium.To be used only in your future homes.',80.00,'item/brocolli.jpeg',88,1,'2021-10-14 03:57:40.756438','2021-10-22 09:50:44.725761',4),(29,'Jaggery','jaggery','Darker, sweeter and healthier than the white refined amnesic poison',150.00,'item/jaggery.jpeg',100,1,'2021-10-14 03:59:53.691042','2021-10-16 18:50:48.402999',4),(30,'Dates','dates','Dates are good for both the rich and the poor alike. They sweeten both miseries!',50.00,'item/dates.jpeg',92,1,'2021-10-14 04:01:40.384455','2021-10-22 07:59:40.209688',4),(31,'Groundnuts','groundnuts','Provides oils that smoothen any life',150.00,'item/groundnut.png',93,1,'2021-10-14 04:16:37.431352','2021-10-25 14:54:23.207738',4),(32,'Green Grams','green-grams','Green grams is commonly called Ndengu',200.00,'item/greengrams.jpg',94,1,'2021-10-14 04:19:16.871870','2021-10-25 14:59:29.368587',4);
/*!40000 ALTER TABLE `members_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_payment`
--

DROP TABLE IF EXISTS `members_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_paid` decimal(10,2) NOT NULL,
  `total_paid` decimal(10,2) NOT NULL,
  `date_paid` datetime(6) DEFAULT NULL,
  `pay_commitment_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_payment_pay_commitment_id_983a4e54_fk_Commitment_id` (`pay_commitment_id`),
  CONSTRAINT `members_payment_pay_commitment_id_983a4e54_fk_Commitment_id` FOREIGN KEY (`pay_commitment_id`) REFERENCES `Commitment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_payment`
--

LOCK TABLES `members_payment` WRITE;
/*!40000 ALTER TABLE `members_payment` DISABLE KEYS */;
INSERT INTO `members_payment` VALUES (22,100.00,100.00,'2021-10-25 08:09:59.000000',10),(23,200.00,300.00,'2021-10-25 08:10:57.000000',10),(24,100.00,400.00,'2021-10-25 08:58:21.000000',10),(25,200.00,200.00,'2021-10-25 14:55:22.000000',11),(26,500.00,700.00,'2021-10-25 14:57:35.000000',11),(27,350.00,1050.00,'2021-10-25 15:01:05.000000',11),(28,50.00,450.00,'2021-11-03 19:01:58.000000',10),(29,1300.00,1300.00,'2021-11-10 19:15:53.000000',14),(30,200.00,1500.00,'2021-11-07 11:07:35.000000',14),(31,300.00,300.00,'2021-10-30 18:22:26.000000',13);
/*!40000 ALTER TABLE `members_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 21:27:32
