-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_dunico
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `page_about`
--

DROP TABLE IF EXISTS `page_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_about` (
  `content_id` int(5) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) DEFAULT NULL,
  `founder_name` varchar(45) DEFAULT NULL,
  `our_profile` varchar(9999) DEFAULT NULL,
  `our_founder` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `content_id_UNIQUE` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_about`
--

LOCK TABLES `page_about` WRITE;
/*!40000 ALTER TABLE `page_about` DISABLE KEYS */;
INSERT INTO `page_about` VALUES (1,'D`UNICO','Francis Arollado','<p>D`UNICO is a design studio that caters multidisciplinary practice in hospitality, resort planning, corporate, residential, commercial interior and architectural design services both domestic and international.<br><br>Our ability to span across different scales and levels of complexity is evidenced by our portfolio of work ranging from  sizable space, buildings and complex development - each requiring the coordination our talented multidisciplinary teams. Our team are composed of young talented designers and architects which we shared common commitment and passion in design. Our passion, drive and focus on unique solution are established on client needs, environment and social requirements. <br><br>Our values reflect our commitment in providing with you a distinctive experience that harmonize unique architecture which embodieswith one goal in mind - creative process, efficient space, unparalleled idea, clean lines and forms.</p>','\"<span style=\\\"color:red;\\\">hahaha</span>\"');
/*!40000 ALTER TABLE `page_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_contact`
--

DROP TABLE IF EXISTS `page_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_contact` (
  `content_id` int(5) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `content_id_UNIQUE` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_contact`
--

LOCK TABLES `page_contact` WRITE;
/*!40000 ALTER TABLE `page_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_home`
--

DROP TABLE IF EXISTS `page_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_home` (
  `content_id` int(5) NOT NULL AUTO_INCREMENT,
  `motto_caption` varchar(255) DEFAULT NULL,
  `motto_content` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `page_content_id_UNIQUE` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_home`
--

LOCK TABLES `page_home` WRITE;
/*!40000 ALTER TABLE `page_home` DISABLE KEYS */;
INSERT INTO `page_home` VALUES (1,'Creative processes, unparalleled ideas','<p>Our values reflect our commitment in providing with you a \n							distinctive experience that harmonize unique architecture \n							which embodies with one goal in mind - creative process, \n							efficient space, unparalleled idea, clean lines and forms.\n						</p>');
/*!40000 ALTER TABLE `page_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_services`
--

DROP TABLE IF EXISTS `page_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_services` (
  `content_id` int(5) NOT NULL AUTO_INCREMENT,
  `our_services` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `content_id_UNIQUE` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_services`
--

LOCK TABLES `page_services` WRITE;
/*!40000 ALTER TABLE `page_services` DISABLE KEYS */;
INSERT INTO `page_services` VALUES (1,'<h3>STRATEGIC CONSULTING</h3><p>Feasibility Study<br>Programmings<br>Space Management Study<br>Workplace Solution Study</p><h3>ARCHITECTURAL AND INTERIOR DESIGN</h3><p>Project Definition<br>Schematic Design<br>Design Development<br>Contract Document<br>Negotiation Phase<br>Construction Phase</p><h3>OTHER SERVICES</h3><p>Drafting<br>Rendering</p><p><br></p>');
/*!40000 ALTER TABLE `page_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_images`
--

DROP TABLE IF EXISTS `project_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_images` (
  `image_id` int(5) NOT NULL,
  `project_id` int(5) DEFAULT NULL,
  `category_id` int(5) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id_UNIQUE` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_images`
--

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;
INSERT INTO `project_images` VALUES (0,1,1,'CUSTOMER SERVICE AREA.jpg'),(1,1,1,'16F RECEPTION.jpg'),(2,2,2,'BOARD ROOM R1.jpg'),(3,3,3,'EXECUTIVE BOARDROOM.jpg');
/*!40000 ALTER TABLE `project_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` varchar(255) DEFAULT NULL,
  `no_of_pictures` int(5) DEFAULT '0',
  `is_active` int(1) DEFAULT '0',
  `is_show` int(1) DEFAULT '0',
  `category_id` int(5) DEFAULT NULL,
  `year_established` int(5) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_id_UNIQUE` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,1,'ISLA PANDAN RESORT, Palawan','Isla Pandan Resort is one of the busiest Island at Honda Bay, Palawan that rejuvenated with modern tropical design using indigenous materials such as bamboo. The design aim is to create a magical and fantasy experience to customer and captured the middle ',0,0,1,1,2015,'0000-00-00 00:00:00'),(2,1,'SMDC HQ OFFICE, Philippines','The biggest property developer in the Philippines, These new office consolidation caters for more than 5000 staff with a massive floor area of 20,000 square meter. Design is  modern sleek office that represents companies corporate image and prestige as th',0,0,1,2,2015,'0000-00-00 00:00:00'),(3,1,'YAHOO HQ OFFICE, Singapore','Young, vibrant and fun concept was main driver of creativity for the new Headquarter of Yahoo in Asia. Innovative workplace solution was created to encourage collaboration among staff for more productive working environment.',0,0,0,3,2015,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_category`
--

DROP TABLE IF EXISTS `projects_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_category`
--

LOCK TABLES `projects_category` WRITE;
/*!40000 ALTER TABLE `projects_category` DISABLE KEYS */;
INSERT INTO `projects_category` VALUES (1,'Hospitality & Residential'),(2,'Corporate'),(3,'Architecture'),(4,'Summer');
/*!40000 ALTER TABLE `projects_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gian Carlo','Egamino','gnegamino','gian1234','#U3226, Tower 3, Grass Residences, Quezon City','9164229926','gnegamino@gmail.com','gnegamz.site88.net');
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

-- Dump completed on 2016-06-16 23:14:01
