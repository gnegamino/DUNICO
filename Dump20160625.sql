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
INSERT INTO `page_about` VALUES (1,'D`UNICO','Francis Arollado','<p>D`UN<font color=\"#FF0000\">I</font>CO is a design studio that caters multidisciplinary practice in hospitality, resort planning, corporate, residential, commercial interior and architectural design services both domestic and international. <br><br>Our ability to span across different scales and levels of complexity is evidenced by our portfolio of work ranging from  sizable space, buildings and complex development - each requiring the coordination our talented multidisciplinary teams. Our team are composed of young talented designers and architects which we shared common commitment and passion in design. Our passion, drive and focus on unique solution are established on client needs, environment and social requirements. <br><br>Our values reflect our commitment in providing with you a distinctive experience that harmonize unique architecture which embodies with one goal in mind - creative process, efficient space, unparalleled idea, clean lines and forms.</p>','<p>An Architect with diverse experience in Architecture and Interior Design focusing in multidisciplinary design services in hospitality, resort planning, corporate, residential and  commercial design for  over 20 years. He spends most of his design practice in Singapore and Asia Pacific.<br><br>His international expertise in hospitality and corporate design was gained through 16 years of work experience from prestigious and top design firm in Singapore. He was  Project Architect at Bent Severin, Design Manager at Premas International, Design Manager at Ong &amp; Ong Architects Ltd, Design Principal at HBO   EMTB and during his stay with these firms, he designed enormous number of high profile hotel and corporate projects in Singapore and Asia Pacific such as Apollo Hotel Singapore, Colombo Hotel Sri Lanka, Vakarufalhi Resort Maldives, numerous DBS Bank corporate offices, Yahoo Regional Office Singapore, BHP Billiton China, CWT Head Office Singapore and other corporate offices. <br><br>His domestic projects completed are SMDC head office at MOA, City of Dreams Office at MOA, TaskUs Offices at BGC, Lexmark Offices at Cebu, Canon Offices at BGC, DSM office at BGC, Nestle Head Office at Rockwell, Chevron Office at Makati.<br><br>His detailed quality management practice is embedded by ISO Quality Standards and Six Sigma management tools thus, deliver \nunparalleled systematic and documented approach and combined with unique design, technical expertise and project management on every phases of project - from inception, programming,  schematic design, design presentation, design development, contract documentation, project implementation and handover of the project to all completed projects.<br><br>Founder of D`UN<font color=\"#FF0000\">I</font>CO design studio.</p>');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_contact`
--

LOCK TABLES `page_contact` WRITE;
/*!40000 ALTER TABLE `page_contact` DISABLE KEYS */;
INSERT INTO `page_contact` VALUES (1,'Francis Arollado','+( 63) 928 728 7782','francis.arrolado@yahoo.com','www.dunico.com.ph');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
  `image_id` int(5) NOT NULL AUTO_INCREMENT,
  `project_id` int(5) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `is_featured` int(1) DEFAULT '0',
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id_UNIQUE` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_images`
--

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;
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
  `project_description` varchar(9999) DEFAULT NULL,
  `is_active` int(1) DEFAULT '0',
  `is_show` int(1) DEFAULT '0',
  `category_id` int(5) DEFAULT NULL,
  `year_established` int(5) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_id_UNIQUE` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_category`
--

DROP TABLE IF EXISTS `projects_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_category`
--

LOCK TABLES `projects_category` WRITE;
/*!40000 ALTER TABLE `projects_category` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'Gian Carlo','Egamino','gnegamino','enigma123','#U3226, Tower 3, Grass Residences, Quezon City','9164229926','gnegamino@gmail.com','gnegamz.site88.net');
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

-- Dump completed on 2016-06-25 20:43:25
