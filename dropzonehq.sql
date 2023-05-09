-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: ebdb2.cfsukzzhrolk.us-east-1.rds.amazonaws.com    Database: ebdb
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_canopies`
--

DROP TABLE IF EXISTS `all_canopies`;
/*!50001 DROP VIEW IF EXISTS `all_canopies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_canopies` AS SELECT 
 1 AS `item_id`,
 1 AS `item_type_id`,
 1 AS `manufacturer`,
 1 AS `brand`,
 1 AS `description`,
 1 AS `is_rentable`,
 1 AS `type`,
 1 AS `rig_id`,
 1 AS `serial_number`,
 1 AS `size`,
 1 AS `date_of_manufacture`,
 1 AS `jump_count`,
 1 AS `last_repack_date`,
 1 AS `next_repack_date`,
 1 AS `packed_by_employee_id`,
 1 AS `ride_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_employees_vs_signouts`
--

DROP TABLE IF EXISTS `all_employees_vs_signouts`;
/*!50001 DROP VIEW IF EXISTS `all_employees_vs_signouts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_employees_vs_signouts` AS SELECT 
 1 AS `signout_id`,
 1 AS `jumpmaster`,
 1 AS `jumpmaster_id`,
 1 AS `load_number`,
 1 AS `rig_id`,
 1 AS `packed_by`,
 1 AS `packer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_items`
--

DROP TABLE IF EXISTS `all_items`;
/*!50001 DROP VIEW IF EXISTS `all_items`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_items` AS SELECT 
 1 AS `item_id`,
 1 AS `manufacturer`,
 1 AS `brand`,
 1 AS `description`,
 1 AS `is_rentable`,
 1 AS `is_on_rig`,
 1 AS `is_available`,
 1 AS `item_type`,
 1 AS `rig_number`,
 1 AS `aad`,
 1 AS `container`,
 1 AS `isTandem`,
 1 AS `canopy_on_rig`,
 1 AS `jump_count`,
 1 AS `date_of_manufacture`,
 1 AS `size`,
 1 AS `canopy_sn`,
 1 AS `next_repack_date`,
 1 AS `packed_by_employee_id`,
 1 AS `ride_count`,
 1 AS `container_sn`,
 1 AS `deployment_timestamp`,
 1 AS `aad_sn`,
 1 AS `lifespan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_rentals`
--

DROP TABLE IF EXISTS `all_rentals`;
/*!50001 DROP VIEW IF EXISTS `all_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_rentals` AS SELECT 
 1 AS `rental_id`,
 1 AS `renter_name`,
 1 AS `item_id`,
 1 AS `rental_date`,
 1 AS `authorizing_employee_id`,
 1 AS `employee_name`,
 1 AS `item_type`,
 1 AS `returned_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'bcrypt_sha256$$2b$12$9Tr0L6e0oJnM4I0nFCo46ulhGQlbJ1NjXc.IStWFCGmKLJIdqUhrS','2017-12-11 03:40:24.674131',1,'dropzonehq','','','dropzoneshq@gmail.com',1,1,'2017-12-10 06:17:23.401976'),(2,'bcrypt_sha256$$2b$12$91wRlySyMOsnB6F34x10f.mQrzg/WwupbgesKyP5KeHMW5NIOvgWW',NULL,1,'dzhq','','','dropzoneshq@gmail.com',1,1,'2017-12-10 06:19:23.614852'),(3,'bcrypt_sha256$$2b$12$Utzaca.D49jRwqRlHo6bcOUpsKXxsxSr0Vz6GANfsS.R6DHGAzXOW',NULL,1,'pb','','','bayrunsp9@students.rowan.edu',1,1,'2017-12-10 06:21:35.855416');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automatic_activation_devices`
--

DROP TABLE IF EXISTS `automatic_activation_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_activation_devices` (
  `item_id` int(11) NOT NULL,
  `deployment_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `serial_number` varchar(45) NOT NULL,
  `lifespan` varchar(45) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  CONSTRAINT `aads_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automatic_activation_devices`
--

LOCK TABLES `automatic_activation_devices` WRITE;
/*!40000 ALTER TABLE `automatic_activation_devices` DISABLE KEYS */;
INSERT INTO `automatic_activation_devices` VALUES (6,'2017-10-07 19:06:53','432469697','105'),(9,'2017-10-18 00:39:54','b','a'),(17,'2017-10-21 01:21:33','JJIOS712','20 yrs'),(23,'2017-11-19 21:49:56','AAA','BBB'),(35,'2017-11-27 15:49:26','aad4500','test 3 yrs'),(38,'2017-12-10 22:18:30','JB123456','51 yrs'),(39,'2017-12-10 22:38:04','JNPM156','18 years'),(40,'2017-12-10 22:50:36','dsf54sd564','65460');
/*!40000 ALTER TABLE `automatic_activation_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canopies`
--

DROP TABLE IF EXISTS `canopies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canopies` (
  `item_id` int(11) NOT NULL,
  `rig_id` int(11) DEFAULT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `date_of_manufacture` datetime DEFAULT NULL,
  `jump_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  CONSTRAINT `canopies_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canopies`
--

LOCK TABLES `canopies` WRITE;
/*!40000 ALTER TABLE `canopies` DISABLE KEYS */;
INSERT INTO `canopies` VALUES (2,NULL,'PTSN2','small',NULL,0),(3,1,'RCAN12345','reserve_canopy_size','2017-10-07 15:24:49',0),(12,1,'MTIMTIMTI','','2017-10-20 12:22:53',0),(14,NULL,'MTCMTCMTC','medium','2017-10-20 12:44:20',0),(34,NULL,'MTCMTCMTC','large',NULL,0);
/*!40000 ALTER TABLE `canopies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims` (
  `claim_id` int(11) NOT NULL AUTO_INCREMENT,
  `severity` enum('Critical','Non-critical','Cosmetic') NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` enum('Pending','In-Progress','Complete','Dismissed') DEFAULT NULL,
  `submitter_id` int(11) DEFAULT NULL,
  `handler_id` int(11) DEFAULT NULL,
  `submit_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `rig_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`claim_id`),
  UNIQUE KEY `service_id_UNIQUE` (`claim_id`),
  KEY `claims_rigs` (`rig_id`),
  KEY `claims_employee_submitter_idx` (`submitter_id`),
  KEY `claims_employee_handler_idx` (`handler_id`),
  CONSTRAINT `claims_employee_handler` FOREIGN KEY (`handler_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `claims_employee_submitter` FOREIGN KEY (`submitter_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `claims_rigs` FOREIGN KEY (`rig_id`) REFERENCES `rigs` (`rig_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
INSERT INTO `claims` VALUES (1,'Critical','Input text here..','Dismissed',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Critical','Input text here..','Dismissed',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Critical','t54gt','Complete',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Non-critical','gsdg','Dismissed',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Cosmetic','afasf','Dismissed',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Cosmetic','easf','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(10,'Cosmetic','ytuu','Complete',NULL,NULL,NULL,NULL,NULL,9),(11,'Non-critical','test 3','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(12,'Cosmetic','asf','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(13,'Non-critical','234234','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(14,'Cosmetic','Input text here..','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(15,'Non-critical','8686','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(16,'Non-critical','asfd','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(17,'Non-critical','123132123','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(18,'Cosmetic','dsfafd','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(19,'Non-critical','yhhh','Dismissed',NULL,NULL,NULL,NULL,NULL,1),(20,'Non-critical','sfadfds 222222','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(21,'Non-critical','hdffffff 222222','Dismissed',NULL,NULL,NULL,NULL,NULL,1),(22,'Non-critical','dfadf','Complete',NULL,NULL,NULL,NULL,NULL,9),(23,'Non-critical','test','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(24,'Cosmetic','Dirt','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(25,'Critical','Ripped canopy','Dismissed',NULL,NULL,NULL,NULL,NULL,1),(26,'Cosmetic','Large tear in container','Dismissed',NULL,NULL,NULL,NULL,NULL,1),(27,'Non-critical','Small tear on outer container','In-Progress',NULL,NULL,NULL,NULL,NULL,9),(28,'Critical','Torn pull string','Complete',NULL,NULL,NULL,NULL,NULL,9),(29,'Critical','tear in the main line','Complete',NULL,NULL,NULL,NULL,NULL,9),(30,'Critical','asdfasfd','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(31,'Non-critical','non critical test problem','Dismissed',NULL,NULL,NULL,NULL,NULL,9),(32,'Critical','asdf','In-Progress',NULL,NULL,NULL,NULL,NULL,9),(33,'Cosmetic','Small tear on the container','Complete',NULL,NULL,NULL,NULL,NULL,9),(34,'Critical','Main line broken','Complete',NULL,NULL,NULL,NULL,NULL,9),(35,'Cosmetic','Small tear on outer container','Dismissed',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `containers` (
  `item_id` int(11) NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  CONSTRAINT `containers_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
INSERT INTO `containers` VALUES (5,'RGV05'),(8,'VUPT2'),(16,'RBV1234'),(21,'NEwNEw'),(24,'con9993'),(25,'con999'),(36,'56046499');
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-26 16:45:15.719061'),(2,'auth','0001_initial','2017-10-26 16:45:28.469241'),(3,'admin','0001_initial','2017-10-26 16:45:31.078650'),(4,'admin','0002_logentry_remove_auto_add','2017-10-26 16:45:31.172385'),(5,'contenttypes','0002_remove_content_type_name','2017-10-26 16:45:33.016166'),(6,'auth','0002_alter_permission_name_max_length','2017-10-26 16:45:34.047422'),(7,'auth','0003_alter_user_email_max_length','2017-10-26 16:45:35.078692'),(8,'auth','0004_alter_user_username_opts','2017-10-26 16:45:35.094363'),(9,'auth','0005_alter_user_last_login_null','2017-10-26 16:45:36.094323'),(10,'auth','0006_require_contenttypes_0002','2017-10-26 16:45:36.297508'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-26 16:45:36.516232'),(12,'auth','0008_alter_user_username_max_length','2017-10-26 16:45:38.016230'),(13,'sessions','0001_initial','2017-10-26 16:45:39.313143');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropzones`
--

DROP TABLE IF EXISTS `dropzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropzones` (
  `dropzone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`dropzone_id`),
  UNIQUE KEY `dropzone_id_UNIQUE` (`dropzone_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `user_UNIQUE` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropzones`
--

LOCK TABLES `dropzones` WRITE;
/*!40000 ALTER TABLE `dropzones` DISABLE KEYS */;
INSERT INTO `dropzones` VALUES (1,'testDZ','password','testLoc',0);
/*!40000 ALTER TABLE `dropzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_roles`
--

DROP TABLE IF EXISTS `employee_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  `auth_level` int(1) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_roles`
--

LOCK TABLES `employee_roles` WRITE;
/*!40000 ALTER TABLE `employee_roles` DISABLE KEYS */;
INSERT INTO `employee_roles` VALUES (1,'packer',NULL),(2,'instructor',NULL),(3,'Rigger',NULL);
/*!40000 ALTER TABLE `employee_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `dropzone_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `pin` int(6) NOT NULL,
  `employment_date` datetime NOT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  KEY `emps_dzs_idx` (`dropzone_id`),
  CONSTRAINT `emps_dzs` FOREIGN KEY (`dropzone_id`) REFERENCES `dropzones` (`dropzone_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=222310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (111111,1,'Jon','Spratt',111111,'2017-10-08 16:25:36',1,'JSpratt@gmail.com'),(222222,1,'Test','McTesterson',222222,'2017-10-08 16:26:09',1,'McLovin@gmail.com'),(222224,1,'Ryan','Jones',980224,'2017-11-27 03:04:24',0,'Ryan@yahoo.com'),(222225,1,'Bob','Jones',752225,'2017-11-27 03:30:42',0,'BobbyBoby@gmail.com'),(222226,1,'Robert','Smith',150226,'2017-11-27 03:47:13',1,'BobBrown@gmail.com'),(222227,1,'Chet','Ubetcha',406227,'2017-11-27 04:31:33',1,'pbayruns@yahoo.com'),(222228,1,'Test','Employee',663228,'2017-11-27 04:34:59',1,'bayrunsp9@students.rowan.edu'),(222229,1,'Jatin','Bhakta',23229,'2017-11-27 21:04:47',1,'bhaktaj7@students.rowan.edu'),(222230,1,'test','test',590230,'2017-11-27 21:21:20',1,'paulbayruns@gmail.com'),(222231,1,'','',15231,'2017-11-29 21:17:34',1,''),(222232,1,'','',302232,'2017-11-29 21:21:44',1,''),(222233,1,'Paul','Turner',9233,'2017-11-29 21:22:56',1,'turnerp5@students.rowan.edu'),(222234,1,'Paul','Turner',66234,'2017-11-29 21:26:38',1,'turnerp5@students.rowan.edu'),(222235,1,'Paul','Turner',875235,'2017-11-29 21:28:15',1,'turnerp5@students.rowan.edu'),(222236,1,'Paul','Turner',392236,'2017-11-29 21:29:09',1,'turnerp5@students.rowan.edu'),(222237,1,'Paul','Turner',787237,'2017-11-29 21:29:09',1,'turnerp5@students.rowan.edu'),(222238,1,'Paul','Turner',84238,'2017-11-29 21:29:31',1,'turnerp5@students.rowan.edu'),(222239,1,'Paul','Turner',962239,'2017-11-29 21:31:22',1,'bayrunsp9@students.rowan.edu'),(222240,1,'Paul','Turner',286240,'2017-11-29 21:31:48',1,'bhaktaj7@students.rowan.edu'),(222241,1,'Paul','Turner',751241,'2017-11-29 21:32:21',1,'sprattj5@students.rowan.edu'),(222242,1,'test','test1',950242,'2017-11-30 04:31:51',1,'turnerp5@students.rowan.edu'),(222243,1,'admin','testerson',980243,'2017-11-30 04:33:39',1,'turnerp5@students.rowan.edu'),(222244,1,'admin','testerson',813244,'2017-11-30 04:37:34',1,'turnerp5@students.rowan.edu'),(222245,1,'admin','testerson',129245,'2017-11-30 04:38:34',1,'turnerp5@students.rowan.edu'),(222246,1,'admin','testerson',656246,'2017-11-30 04:39:38',1,'turnerp5@students.rowan.edu'),(222247,1,'admin','testerson',887247,'2017-11-30 04:41:32',1,'turnerp5@students.rowan.edu'),(222248,1,'admin','testerson',533248,'2017-11-30 04:42:41',1,'turnerp5@students.rowan.edu'),(222249,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222250,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222251,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222252,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222253,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222254,1,'admin','testerson',0,'2017-11-30 04:44:46',1,'turnerp5@students.rowan.edu'),(222255,1,'admin','testerson',0,'2017-11-30 04:44:47',1,'turnerp5@students.rowan.edu'),(222256,1,'admin','testerson',0,'2017-11-30 04:44:47',1,'turnerp5@students.rowan.edu'),(222257,1,'admin','testerson',0,'2017-11-30 04:44:47',1,'turnerp5@students.rowan.edu'),(222258,1,'admin','testerson',0,'2017-11-30 04:44:47',1,'turnerp5@students.rowan.edu'),(222259,1,'admin','testerson',0,'2017-11-30 04:44:48',1,'turnerp5@students.rowan.edu'),(222260,1,'admin','testerson',0,'2017-11-30 04:44:48',1,'turnerp5@students.rowan.edu'),(222261,1,'admin','testerson',0,'2017-11-30 04:44:48',1,'turnerp5@students.rowan.edu'),(222262,1,'admin','testerson',0,'2017-11-30 04:44:48',1,'turnerp5@students.rowan.edu'),(222263,1,'admin','testerson',0,'2017-11-30 04:44:48',1,'turnerp5@students.rowan.edu'),(222264,1,'admin','testerson',515264,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222265,1,'admin','testerson',613265,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222266,1,'admin','testerson',635266,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222267,1,'admin','testerson',370267,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222268,1,'admin','testerson',381268,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222269,1,'admin','testerson',63269,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222270,1,'admin','testerson',552270,'2017-11-30 04:46:45',1,'turnerp5@students.rowan.edu'),(222271,1,'admin','testerson',503271,'2017-11-30 04:47:28',1,'turnerp5@students.rowan.edu'),(222272,1,'admin','testerson',0,'2017-11-30 04:48:16',1,'turnerp5@students.rowan.edu'),(222273,1,'admin','testerson',0,'2017-11-30 04:50:16',1,'turnerp5@students.rowan.edu'),(222274,1,'admin','testerson',0,'2017-11-30 04:51:31',1,'turnerp5@students.rowan.edu'),(222275,1,'admin','testerson',0,'2017-11-30 05:00:29',1,'turnerp5@students.rowan.edu'),(222276,1,'admin','testerson',0,'2017-11-30 05:01:13',1,'turnerp5@students.rowan.edu'),(222277,1,'admin','testerson',0,'2017-11-30 05:02:02',1,'turnerp5@students.rowan.edu'),(222278,1,'blank','testerson',0,'2017-11-30 14:21:19',1,'turnerp5@students.rowan.edu'),(222279,1,'blank','testerson',80279,'2017-11-30 14:22:11',1,'turnerp5@students.rowan.edu'),(222280,1,'blank','testerson',0,'2017-11-30 14:23:57',1,'turnerp5@students.rowan.edu'),(222281,1,'blank','testerson',0,'2017-11-30 14:26:03',1,'turnerp5@students.rowan.edu'),(222282,1,'blank','testerson',0,'2017-11-30 14:27:06',1,'turnerp5@students.rowan.edu'),(222283,1,'blank','testerson',0,'2017-11-30 14:28:46',1,'turnerp5@students.rowan.edu'),(222284,1,'blank','testerson',0,'2017-11-30 14:30:10',1,'turnerp5@students.rowan.edu'),(222285,1,'blank','testerson',0,'2017-11-30 14:31:03',1,'turnerp5@students.rowan.edu'),(222286,1,'blank','testerson',0,'2017-11-30 14:43:51',1,'turnerp5@students.rowan.edu'),(222287,1,'blank','testerson',0,'2017-11-30 14:44:19',1,'turnerp5@students.rowan.edu'),(222288,1,'blank','testerson',972288,'2017-11-30 14:45:28',1,'turnerp5@students.rowan.edu'),(222289,1,'blank','testerson',0,'2017-11-30 14:52:10',1,'turnerp5@students.rowan.edu'),(222290,1,'blank','testerson',0,'2017-11-30 14:54:32',1,'turnerp5@students.rowan.edu'),(222291,1,'blank','testerson',0,'2017-12-01 03:48:46',1,'turnerp5@students.rowan.edu'),(222292,1,'blank','testerson',0,'2017-12-01 03:53:17',1,'turnerp5@students.rowan.edu'),(222293,1,'Test','Employee',0,'2017-12-11 03:49:39',1,'bayrunsp9@students.rowan.edu'),(222294,1,'Test','Login',0,'2017-12-11 03:50:41',1,'bayrunsp9@students.rowan.edu'),(222295,1,'Test','Login',0,'2017-12-11 03:53:17',1,'bayrunsp9@students.rowan.edu'),(222296,1,'Test','Login',0,'2017-12-11 03:56:29',1,'bayrunsp9@students.rowan.edu'),(222297,1,'Test','Login',0,'2017-12-11 03:58:09',1,'bayrunsp9@students.rowan.edu'),(222298,1,'Test','Login',0,'2017-12-11 03:58:54',1,'bayrunsp9@students.rowan.edu'),(222299,1,'Test','Login',0,'2017-12-11 04:00:47',1,'bayrunsp9@students.rowan.edu'),(222300,1,'Test','Login',0,'2017-12-11 04:01:41',1,'bayrunsp9@students.rowan.edu'),(222301,1,'Test','Login',0,'2017-12-11 04:04:07',1,'bayrunsp9@students.rowan.edu'),(222302,1,'Test','Login',0,'2017-12-11 04:05:01',1,'bayrunsp9@students.rowan.edu'),(222303,1,'a','b',0,'2017-12-11 04:07:07',1,'bayrunsp9@students.rowan.edu'),(222304,1,'Test','Login',0,'2017-12-11 04:09:45',1,'bayrunsp9@students.rowan.edu'),(222305,1,'Test','Employee',246305,'2017-12-11 17:13:46',1,'bayrunsp9@students.rowan.edu'),(222306,1,'aaa','aaa',251306,'2017-12-11 17:15:08',1,'aaa'),(222307,1,'Bob','Jones',666307,'2017-12-11 18:10:58',1,'Bobby@google.com'),(222308,1,'John','Smith',420308,'2017-12-11 18:11:36',1,'Smith'),(222309,1,'David','Cross',45309,'2017-12-11 18:17:09',1,'DavidCross@gmail.com');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_employee_roles`
--

DROP TABLE IF EXISTS `employees_employee_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_employee_roles` (
  `employee_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`role_id`),
  KEY `emps_roles_roles_idx` (`role_id`),
  CONSTRAINT `emps_roles_emps` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `emps_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `employee_roles` (`role_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_employee_roles`
--

LOCK TABLES `employees_employee_roles` WRITE;
/*!40000 ALTER TABLE `employees_employee_roles` DISABLE KEYS */;
INSERT INTO `employees_employee_roles` VALUES (111111,1),(222222,1),(222274,1),(222276,1),(222277,1),(222278,1),(222292,1),(111111,2),(222304,3);
/*!40000 ALTER TABLE `employees_employee_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_rentals`
--

DROP TABLE IF EXISTS `employees_rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_rentals` (
  `employee_id` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`rental_id`),
  KEY `emps_rentals_rentals_idx` (`rental_id`),
  CONSTRAINT `emps_rentals_emps` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `emps_rentals_rentals` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`rental_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_rentals`
--

LOCK TABLES `employees_rentals` WRITE;
/*!40000 ALTER TABLE `employees_rentals` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_signouts`
--

DROP TABLE IF EXISTS `employees_signouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_signouts` (
  `employee_id` int(11) NOT NULL,
  `signout_id` int(11) NOT NULL,
  `packed_or_signout` enum('packed','signout') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`,`signout_id`,`packed_or_signout`),
  KEY `employees_signouts_signouts_idx` (`signout_id`),
  CONSTRAINT `employees_signouts_employees` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `employees_signouts_signouts` FOREIGN KEY (`signout_id`) REFERENCES `signouts` (`signout_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_signouts`
--

LOCK TABLES `employees_signouts` WRITE;
/*!40000 ALTER TABLE `employees_signouts` DISABLE KEYS */;
INSERT INTO `employees_signouts` VALUES (111111,32,'signout','2017-11-19 21:40:58'),(111111,33,'packed','2017-11-19 21:58:07'),(111111,34,'packed','2017-12-11 18:19:01'),(111111,34,'signout','2017-11-19 21:58:32'),(111111,35,'packed','2017-11-21 00:32:11'),(111111,36,'packed','2017-11-21 17:28:15'),(111111,37,'signout','2017-11-21 17:27:58'),(111111,44,'signout','2017-11-27 21:05:23'),(111111,45,'signout','2017-12-03 04:00:56'),(111111,47,'signout','2017-12-11 17:19:52'),(222222,32,'packed','2017-11-19 21:58:14'),(222222,33,'signout','2017-11-19 21:53:57'),(222222,35,'signout','2017-11-19 21:59:13'),(222222,36,'signout','2017-11-21 00:32:40'),(222222,37,'packed','2017-11-23 06:19:28'),(222222,38,'packed','2017-12-03 04:02:03'),(222222,38,'signout','2017-11-23 04:04:05'),(222222,39,'signout','2017-11-23 06:19:11'),(222222,40,'packed','2017-11-24 02:42:40'),(222222,40,'signout','2017-11-24 02:42:26'),(222222,41,'signout','2017-11-26 19:59:39'),(222222,42,'packed','2017-11-26 20:01:15'),(222222,42,'signout','2017-11-26 20:00:06'),(222222,44,'packed','2017-11-27 21:05:45'),(222222,46,'signout','2017-12-04 21:22:34'),(222222,47,'packed','2017-12-11 17:19:57'),(222222,48,'signout','2017-12-11 18:18:51'),(222224,41,'packed','2017-11-27 03:04:44'),(222224,43,'signout','2017-11-27 18:14:14'),(222226,43,'packed','2017-11-27 18:14:32');
/*!40000 ALTER TABLE `employees_signouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employees_vs_signouts`
--

DROP TABLE IF EXISTS `employees_vs_signouts`;
/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employees_vs_signouts` AS SELECT 
 1 AS `signout_id`,
 1 AS `jumpmaster`,
 1 AS `jumpmaster_id`,
 1 AS `load_number`,
 1 AS `rig_id`,
 1 AS `packed_by`,
 1 AS `packer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_vs_signouts_student`
--

DROP TABLE IF EXISTS `employees_vs_signouts_student`;
/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts_student`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employees_vs_signouts_student` AS SELECT 
 1 AS `signout_id`,
 1 AS `jumpmaster`,
 1 AS `jumpmaster_id`,
 1 AS `load_number`,
 1 AS `rig_id`,
 1 AS `packed_by`,
 1 AS `packer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees_vs_signouts_tandem`
--

DROP TABLE IF EXISTS `employees_vs_signouts_tandem`;
/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts_tandem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employees_vs_signouts_tandem` AS SELECT 
 1 AS `signout_id`,
 1 AS `jumpmaster`,
 1 AS `jumpmaster_id`,
 1 AS `load_number`,
 1 AS `rig_id`,
 1 AS `packed_by`,
 1 AS `packer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item_types`
--

DROP TABLE IF EXISTS `item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_types` (
  `item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_type_id`),
  UNIQUE KEY `item_type_id_UNIQUE` (`item_type_id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_types`
--

LOCK TABLES `item_types` WRITE;
/*!40000 ALTER TABLE `item_types` DISABLE KEYS */;
INSERT INTO `item_types` VALUES (16,'aad'),(1,'canopy'),(4,'container'),(6,'goggles'),(7,'helmet'),(8,'jumpsuit'),(2,'reserve_canopy'),(3,'rig'),(5,'shoes');
/*!40000 ALTER TABLE `item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_id` int(11) NOT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `is_rentable` tinyint(4) NOT NULL,
  `is_rented` tinyint(4) DEFAULT NULL,
  `is_on_rig` tinyint(4) DEFAULT NULL,
  `is_available` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  KEY `items_item_types_idx` (`item_type_id`),
  CONSTRAINT `items_item_types` FOREIGN KEY (`item_type_id`) REFERENCES `item_types` (`item_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (2,1,'PD','The Pilot','Blue and Yellow Pilot 195',1,NULL,0,1),(3,2,'rcan manufacturer','rcan brand','rcan description',0,NULL,0,1),(4,3,'test manufacturer','test brand','Blue and black mirage',1,NULL,0,1),(5,4,'bnb','Vector','Red Vector',1,NULL,0,1),(6,16,'vigil','aad','test edit desc',0,NULL,0,1),(7,3,'test manufacturer','test brand','Saber2 170. Blue and black mirage',1,NULL,0,1),(8,4,'UPT','Navigator','test con02',0,NULL,0,1),(9,16,'c','d','e',1,NULL,0,1),(10,2,'new manu','new brand','test multitable insert',0,NULL,0,1),(11,2,'new manu','new brand','test multitable insert',0,NULL,0,1),(12,2,'main canopy manu','main can brand','main c desc',1,NULL,1,1),(14,1,'PNG','Navigator','Red and Green Nav',1,NULL,0,1),(16,4,'bnb','Mirage','Black and Red Vector',1,NULL,0,1),(17,16,'Jane Inc.','aad','test aad03',1,NULL,0,1),(18,3,NULL,NULL,NULL,1,NULL,0,1),(19,3,NULL,NULL,NULL,1,NULL,0,1),(20,3,NULL,NULL,NULL,1,NULL,0,1),(21,4,'UPT','Vector sham','test con04',1,NULL,0,1),(23,16,'vigil','aad','test aad04',0,NULL,0,1),(24,4,'UPT','Upislon','yellow and black',1,NULL,0,NULL),(25,4,'UPT','Vector','test con030',0,NULL,0,NULL),(34,1,'test manu','test  brand','Red and Blue, Hint of Purple',0,NULL,1,1),(35,16,'ad','Cisco','test by Jatin',1,NULL,0,1),(36,4,'The NavAir','protector 1','this test woo',0,NULL,0,1),(38,16,'Gateway Inc','OG Gateway','potential for this item is high',1,NULL,0,1),(39,16,'Heat Inc.','Hot','this item looks cool',1,NULL,0,1),(40,16,'Vortex','Classic','stellar design!',1,NULL,0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_rentals`
--

DROP TABLE IF EXISTS `items_rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_rentals` (
  `item_id` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`rental_id`),
  KEY `items_rentals_rentals_idx` (`rental_id`),
  CONSTRAINT `items_rentals_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `items_rentals_rentals` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`rental_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_rentals`
--

LOCK TABLES `items_rentals` WRITE;
/*!40000 ALTER TABLE `items_rentals` DISABLE KEYS */;
INSERT INTO `items_rentals` VALUES (2,15),(4,16),(8,18),(5,20),(2,22),(4,23),(5,24),(2,25),(7,26),(7,27);
/*!40000 ALTER TABLE `items_rentals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dropzonehq`@`%`*/ /*!50003 TRIGGER `ebdb`.`set_item_not_available` AFTER INSERT ON `items_rentals` FOR EACH ROW
BEGIN    
	UPDATE items i
    SET i.is_available = FALSE
    WHERE NEW.item_id = i.item_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentals` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `renter_name` varchar(45) NOT NULL,
  `rental_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `returned_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  UNIQUE KEY `rental_id_UNIQUE` (`rental_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` VALUES (15,'Brian','2017-11-27 00:34:48','2017-11-27 16:58:53'),(16,'Jon','2017-11-27 02:44:16','2017-11-27 04:44:16'),(18,'Jon','2017-11-27 03:18:16','2017-11-27 03:18:16'),(20,'Jonathan','2017-11-27 04:36:31','2017-11-27 03:18:16'),(22,'Jatin','2017-11-27 17:05:11','2017-11-27 17:06:12'),(23,'Andres','2017-11-27 18:15:17','2017-11-27 18:15:42'),(24,'Jon','2017-11-27 21:07:26','2017-11-27 21:08:09'),(25,'Test','2017-12-03 10:25:52','2017-12-03 10:26:08'),(26,'fact','2017-12-11 17:18:16','2017-12-11 17:18:33'),(27,'Brian Krick','2017-12-11 18:26:29','2017-12-11 18:26:44');
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dropzonehq`@`%`*/ /*!50003 TRIGGER `ebdb`.`set_item_is_available` 
AFTER UPDATE ON `rentals`
FOR EACH ROW
BEGIN
	IF NEW.returned_date IS NOT NULL THEN
		UPDATE items i
        JOIN items_rentals ir USING (item_id)
        JOIN rentals r USING (rental_id)
        SET i.is_available = TRUE
        WHERE i.item_id = ir.item_id AND OLD.rental_id = ir.rental_id;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reserve_canopies`
--

DROP TABLE IF EXISTS `reserve_canopies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_canopies` (
  `item_id` int(11) NOT NULL,
  `last_repack_date` datetime NOT NULL,
  `next_repack_date` datetime NOT NULL,
  `packed_by_employee_id` int(11) DEFAULT NULL,
  `ride_count` int(11) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `canopy_id_UNIQUE` (`item_id`),
  KEY `reserve_canopies_employees_idx` (`packed_by_employee_id`),
  CONSTRAINT `reserve_canopies_canopies` FOREIGN KEY (`item_id`) REFERENCES `canopies` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reserve_canopies_employees` FOREIGN KEY (`packed_by_employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_canopies`
--

LOCK TABLES `reserve_canopies` WRITE;
/*!40000 ALTER TABLE `reserve_canopies` DISABLE KEYS */;
INSERT INTO `reserve_canopies` VALUES (3,'2017-10-07 15:24:54','2017-10-07 15:26:34',NULL,0);
/*!40000 ALTER TABLE `reserve_canopies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rig_component_details`
--

DROP TABLE IF EXISTS `rig_component_details`;
/*!50001 DROP VIEW IF EXISTS `rig_component_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rig_component_details` AS SELECT 
 1 AS `rig_id`,
 1 AS `main_canopy_size`,
 1 AS `main_canopy_brand`,
 1 AS `reserve_canopy_size`,
 1 AS `reserve_canopy_brand`,
 1 AS `container_brand`,
 1 AS `aad_lifespan`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rigs`
--

DROP TABLE IF EXISTS `rigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rigs` (
  `item_id` int(11) NOT NULL,
  `rig_id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) NOT NULL,
  `aad_id` int(11) NOT NULL,
  `isTandem` tinyint(4) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `rig_id_UNIQUE` (`rig_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  UNIQUE KEY `container_id_UNIQUE` (`container_id`),
  UNIQUE KEY `aad_id_UNIQUE` (`aad_id`),
  CONSTRAINT `rigs_aads` FOREIGN KEY (`aad_id`) REFERENCES `automatic_activation_devices` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rigs_containers` FOREIGN KEY (`container_id`) REFERENCES `containers` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rigs_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rigs`
--

LOCK TABLES `rigs` WRITE;
/*!40000 ALTER TABLE `rigs` DISABLE KEYS */;
INSERT INTO `rigs` VALUES (4,1,5,6,0),(7,3,8,9,1),(19,4,16,17,1),(20,9,21,23,0);
/*!40000 ALTER TABLE `rigs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dropzonehq`@`%`*/ /*!50003 TRIGGER `ebdb`.`item_is_on_rig` BEFORE UPDATE ON `rigs` FOR EACH ROW
BEGIN   
	IF NEW.container_id <=> OLD.container_id THEN
		UPDATE items i SET is_on_rig = TRUE WHERE NEW.container_id = i.item_id;
        UPDATE items i SET is_on_rig = FALSE WHERE OLD.container_id = i.item_id;
    END IF;
    IF NEW.aad_id <=> OLD.aad_id THEN
    UPDATE items i SET is_on_rig = TRUE WHERE NEW.aad_id = i.item_id;
    UPDATE items i SET is_on_rig = FALSE WHERE OLD.aad_id = i.item_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dropzonehq`@`%`*/ /*!50003 TRIGGER `ebdb`.`rigs_audit_trail` AFTER UPDATE ON `rigs` FOR EACH ROW
BEGIN
#Create and audit trail record for all old values from rigs
	INSERT INTO rigs_audit_trail
			(item_id, rig_id, container_id, aad_id, date_of_change)
	VALUES (OLD.item_id, OLD.rig_id, OLD.container_id, OLD.aad_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rigs_audit_trail`
--

DROP TABLE IF EXISTS `rigs_audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rigs_audit_trail` (
  `rig_audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `rig_id` int(11) NOT NULL,
  `container_id` int(11) NOT NULL,
  `aad_id` int(11) NOT NULL,
  `date_of_change` datetime NOT NULL,
  PRIMARY KEY (`rig_audit_id`),
  UNIQUE KEY `rig_audit_id_UNIQUE` (`rig_audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rigs_audit_trail`
--

LOCK TABLES `rigs_audit_trail` WRITE;
/*!40000 ALTER TABLE `rigs_audit_trail` DISABLE KEYS */;
INSERT INTO `rigs_audit_trail` VALUES (1,4,1,5,6,'2017-11-27 00:47:23');
/*!40000 ALTER TABLE `rigs_audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signouts`
--

DROP TABLE IF EXISTS `signouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signouts` (
  `signout_id` int(11) NOT NULL AUTO_INCREMENT,
  `load_number` int(11) NOT NULL,
  `rig_id` int(11) NOT NULL,
  PRIMARY KEY (`signout_id`),
  UNIQUE KEY `signout_id_UNIQUE` (`signout_id`),
  KEY `signout_rigs_idx` (`rig_id`),
  CONSTRAINT `signout_rigs` FOREIGN KEY (`rig_id`) REFERENCES `rigs` (`rig_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signouts`
--

LOCK TABLES `signouts` WRITE;
/*!40000 ALTER TABLE `signouts` DISABLE KEYS */;
INSERT INTO `signouts` VALUES (32,50,4),(33,100,9),(34,150,1),(35,150,3),(36,14,4),(37,200,4),(38,44,4),(39,45,4),(40,663444,4),(41,13,3),(42,3333,4),(43,47,3),(44,23,4),(45,43,4),(46,300,3),(47,56,9),(48,75,9);
/*!40000 ALTER TABLE `signouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ebdb'
--

--
-- Dumping routines for database 'ebdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_aad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_aad`(IN manufacturer VARCHAR(45), IN brand VARCHAR(45), 
							IN description VARCHAR(45), IN rentable BINARY(1),
							IN serial_number VARCHAR(45), IN lifespan VARCHAR(45))
BEGIN
	SELECT item_type_id FROM item_types WHERE type LIKE ('%aad%') INTO @item_type;
    
    INSERT INTO items (item_type_id, manufacturer, brand, description, is_rentable)
    VALUES (@item_type, manufacturer, brand, description, rentable);
    
    SET @item = LAST_INSERT_ID();
    
    INSERT INTO automatic_activation_devices (item_id, deployment_timestamp, serial_number, lifespan)
    VALUES (@item, NOW(), serial_number, lifespan);  
COMMIT WORK;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_canopy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_canopy`(IN manufacturer VARCHAR(45), IN brand VARCHAR(45), IN description VARCHAR(45),
     IN rentable BINARY(1), IN rig INT, IN serial_number VARCHAR(45), IN size VARCHAR(45),
     IN date_of_manufacture DATETIME)
BEGIN
	SELECT item_type_id FROM item_types it WHERE it.type LIKE 'c%anopy%' INTO @item_type;
    
	INSERT INTO items (item_type_id, manufacturer, brand, description, is_rentable)
    VALUES (@item_type, manufacturer, brand, description, rentable);
    
    SET @item = LAST_INSERT_ID();
    
    INSERT INTO canopies (item_id, rig_id, serial_number, size, date_of_manufacture, jump_count)
    VALUES (@item, rig, serial_number, size, date_of_manufacture, 0);
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_container` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_container`(IN manufacturer VARCHAR(45), IN brand VARCHAR(45), 
								  IN description VARCHAR(45), IN rentable BINARY(1),
								  IN serial_number VARCHAR(45))
BEGIN
	SELECT item_type_id FROM item_types WHERE type LIKE ('%container%') INTO @item_type;
    
	INSERT INTO items (item_type_id, manufacturer, brand, description, is_rentable)
    VALUES (@item_type, manufacturer, brand, description, rentable);
    
    SET @item = LAST_INSERT_ID();
    
    INSERT INTO containers (item_id, serial_number)
    VALUES (@item, serial_number);
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_rental` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_rental`(IN renter_name VARCHAR(45), IN item_id INT, IN emp_id INT)
BEGIN
	INSERT INTO rentals (renter_name, rental_date, returned_date)
    VALUES (renter_name, NOW(), NULL);
    
    SET @rental_id = LAST_INSERT_ID();
    
    INSERT INTO items_rentals (item_id, rental_id)
    VALUES (item_id, @rental_id);
    
    /*INSERT INTO employees_rentals (rental_id, employee_id)
    VALUES (@rental_id, emp_id);*/
COMMIT WORK;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_reserve_canopy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_reserve_canopy`(IN manufacturer VARCHAR(45), IN brand VARCHAR(45), IN description VARCHAR(45),
     IN rentable BINARY(1), IN rig INT, IN serial_number VARCHAR(45), IN size VARCHAR(45),
     IN date_of_manufacture DATETIME, IN last_repack DATETIME, IN packed_by_emp INT)
BEGIN
	SELECT item_type_id FROM item_types it WHERE it.type LIKE '%reserve%' INTO @item_type;
    
	INSERT INTO items (item_type_id, manufacturer, brand, description, is_rentable)
    VALUES (@item_type, manufacturer, brand, description, rentable);
    
    SET @item = LAST_INSERT_ID();
    
    INSERT INTO canopies (item_id, rig_id, serial_number, size, date_of_manufacture, jump_count)
    VALUES (@item, rig, serial_number, size, date_of_manufacture, 0);
    
    INSERT INTO reserve_canopies (item_id, last_repack_date, next_repack_date, packed_by_employee_id, ride_count)
    VALUES (@item, last_repack, (last_repack + 180), packed_by_emp, 0);
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_signout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dropzonehq`@`%` PROCEDURE `new_signout`(IN emp_id INT, IN load_num INT, IN rig INT, IN pack_or_sign VARCHAR(45))
BEGIN
	INSERT INTO signouts (load_number, rig_id)
	VALUES (load_num, rig);
    
    SET @signout_id = LAST_INSERT_ID();
    
    INSERT INTO employees_signouts (employee_id, signout_id, packed_or_signout, timestamp)
    VALUES (emp_id, @signout_id, pack_or_sign, NOW());
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `all_canopies`
--

/*!50001 DROP VIEW IF EXISTS `all_canopies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_canopies` AS select `items`.`item_id` AS `item_id`,`items`.`item_type_id` AS `item_type_id`,`items`.`manufacturer` AS `manufacturer`,`items`.`brand` AS `brand`,`items`.`description` AS `description`,`items`.`is_rentable` AS `is_rentable`,`item_types`.`type` AS `type`,`canopies`.`rig_id` AS `rig_id`,`canopies`.`serial_number` AS `serial_number`,`canopies`.`size` AS `size`,`canopies`.`date_of_manufacture` AS `date_of_manufacture`,`canopies`.`jump_count` AS `jump_count`,`reserve_canopies`.`last_repack_date` AS `last_repack_date`,`reserve_canopies`.`next_repack_date` AS `next_repack_date`,`reserve_canopies`.`packed_by_employee_id` AS `packed_by_employee_id`,`reserve_canopies`.`ride_count` AS `ride_count` from (((`items` join `item_types` on((`items`.`item_type_id` = `item_types`.`item_type_id`))) join `canopies` on((`items`.`item_id` = `canopies`.`item_id`))) left join `reserve_canopies` on((`items`.`item_id` = `reserve_canopies`.`item_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_employees_vs_signouts`
--

/*!50001 DROP VIEW IF EXISTS `all_employees_vs_signouts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_employees_vs_signouts` AS select `s`.`signout_id` AS `signout_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster_id`,`s`.`load_number` AS `load_number`,`s`.`rig_id` AS `rig_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from (`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packed_by`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packer_id` from (`signouts` `s` join `rigs` `r` on((`s`.`rig_id` = `r`.`rig_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_items`
--

/*!50001 DROP VIEW IF EXISTS `all_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_items` AS select `i`.`item_id` AS `item_id`,`i`.`manufacturer` AS `manufacturer`,`i`.`brand` AS `brand`,`i`.`description` AS `description`,`i`.`is_rentable` AS `is_rentable`,`i`.`is_on_rig` AS `is_on_rig`,`i`.`is_available` AS `is_available`,`it`.`type` AS `item_type`,`r`.`rig_id` AS `rig_number`,`r`.`aad_id` AS `aad`,`r`.`container_id` AS `container`,`r`.`isTandem` AS `isTandem`,`c`.`rig_id` AS `canopy_on_rig`,`c`.`jump_count` AS `jump_count`,`c`.`date_of_manufacture` AS `date_of_manufacture`,`c`.`size` AS `size`,`c`.`serial_number` AS `canopy_sn`,`rc`.`next_repack_date` AS `next_repack_date`,`rc`.`packed_by_employee_id` AS `packed_by_employee_id`,`rc`.`ride_count` AS `ride_count`,`cont`.`serial_number` AS `container_sn`,`aad`.`deployment_timestamp` AS `deployment_timestamp`,`aad`.`serial_number` AS `aad_sn`,`aad`.`lifespan` AS `lifespan` from ((((((`items` `i` join `item_types` `it` on((`i`.`item_type_id` = `it`.`item_type_id`))) left join `rigs` `r` on((`i`.`item_id` = `r`.`item_id`))) left join `canopies` `c` on((`i`.`item_id` = `c`.`item_id`))) left join `reserve_canopies` `rc` on((`rc`.`item_id` = `c`.`item_id`))) left join `automatic_activation_devices` `aad` on((`aad`.`item_id` = `i`.`item_id`))) left join `containers` `cont` on((`cont`.`item_id` = `i`.`item_id`))) order by `i`.`item_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_rentals`
--

/*!50001 DROP VIEW IF EXISTS `all_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_rentals` AS select `r`.`rental_id` AS `rental_id`,`r`.`renter_name` AS `renter_name`,`i`.`item_id` AS `item_id`,`r`.`rental_date` AS `rental_date`,`e`.`employee_id` AS `authorizing_employee_id`,concat(`e`.`first_name`,' ',`e`.`last_name`) AS `employee_name`,`it`.`type` AS `item_type`,`r`.`returned_date` AS `returned_date` from (((((`rentals` `r` join `items_rentals` `ir` on((`r`.`rental_id` = `ir`.`rental_id`))) join `items` `i` on((`ir`.`item_id` = `i`.`item_id`))) join `item_types` `it` on((`i`.`item_type_id` = `it`.`item_type_id`))) join `employees_rentals` `er` on((`r`.`rental_id` = `er`.`rental_id`))) join `employees` `e` on((`er`.`employee_id` = `e`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_vs_signouts`
--

/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_vs_signouts` AS select `s`.`signout_id` AS `signout_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster_id`,`s`.`load_number` AS `load_number`,`s`.`rig_id` AS `rig_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from (`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packed_by`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packer_id` from `signouts` `s` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_vs_signouts_student`
--

/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_vs_signouts_student` AS select `s`.`signout_id` AS `signout_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster_id`,`s`.`load_number` AS `load_number`,`s`.`rig_id` AS `rig_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from (`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packed_by`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packer_id` from (`signouts` `s` join `rigs` `r` on((`s`.`rig_id` = `r`.`rig_id`))) where (`r`.`isTandem` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_vs_signouts_tandem`
--

/*!50001 DROP VIEW IF EXISTS `employees_vs_signouts_tandem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_vs_signouts_tandem` AS select `s`.`signout_id` AS `signout_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'signout') and (`s`.`signout_id` = `es`.`signout_id`))) AS `jumpmaster_id`,`s`.`load_number` AS `load_number`,`s`.`rig_id` AS `rig_id`,(select concat(`e`.`first_name`,' ',`e`.`last_name`) from (`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packed_by`,(select `e`.`employee_id` from ((`employees` `e` join `employees_signouts` `es` on((`e`.`employee_id` = `es`.`employee_id`))) join `signouts` on((`es`.`signout_id` = `signouts`.`signout_id`))) where ((`es`.`packed_or_signout` like 'packed') and (`s`.`signout_id` = `es`.`signout_id`))) AS `packer_id` from (`signouts` `s` join `rigs` `r` on((`s`.`rig_id` = `r`.`rig_id`))) where (`r`.`isTandem` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rig_component_details`
--

/*!50001 DROP VIEW IF EXISTS `rig_component_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dropzonehq`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `rig_component_details` AS select `r2`.`rig_id` AS `rig_id`,(select `c`.`size` from (`canopies` `c` join `reserve_canopies` `rc`) where ((`c`.`rig_id` = `r2`.`rig_id`) and (`c`.`item_id` <=> `rc`.`item_id`))) AS `main_canopy_size`,(select `i`.`brand` from ((`items` `i` join `canopies` `c`) join `reserve_canopies` `rc`) where ((`c`.`rig_id` = `r2`.`rig_id`) and (`c`.`item_id` = `i`.`item_id`) and (`c`.`item_id` <=> `rc`.`item_id`))) AS `main_canopy_brand`,(select `c`.`size` from (`canopies` `c` join `reserve_canopies` `rc`) where ((`c`.`rig_id` = `r2`.`rig_id`) and (`c`.`item_id` = `rc`.`item_id`))) AS `reserve_canopy_size`,(select `i`.`brand` from (((`rigs` `r` join `canopies` `c` on((`c`.`rig_id` = `r`.`rig_id`))) join `reserve_canopies` `rc` on((`c`.`item_id` = `rc`.`item_id`))) join `items` `i` on((`rc`.`item_id` = `i`.`item_id`))) where ((`c`.`rig_id` = `r2`.`rig_id`) and (`c`.`item_id` = `i`.`item_id`) and (`c`.`item_id` = `rc`.`item_id`))) AS `reserve_canopy_brand`,(select `i`.`brand` from ((`rigs` `r` join `containers` `c` on((`c`.`item_id` = `r`.`container_id`))) join `items` `i` on((`c`.`item_id` = `i`.`item_id`))) where (`r`.`rig_id` = `r2`.`rig_id`)) AS `container_brand`,(select `aad`.`lifespan` from (`rigs` `r` join `automatic_activation_devices` `aad` on((`r`.`aad_id` = `aad`.`item_id`))) where (`r`.`rig_id` = `r2`.`rig_id`)) AS `aad_lifespan` from `rigs` `r2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-09 16:12:04
