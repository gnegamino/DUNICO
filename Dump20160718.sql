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
INSERT INTO `page_about` VALUES (1,'D`UNICO','Francis Arollado','<p>Dâ€™ UNICO is a design studio that caters multidisciplinary practice in hospitality, resort planning, corporate, residential, commercial&nbsp; interior and architectural design services both domestic and international.<br><br>Our team has the ability to span across different scales and levels of complexity is evidenced by our portfolio of work ranging from&nbsp; sizable space, buildings and complex development - each requiring the coordination of our talented multidisciplinary team. We are composed of young talented designers and architects which we shared common commitment and passion for design. Our passion, drive and focus on unique design solution are established based on client needs, environment and social requirements. <br><br>Our values are reflected by our commitment in creating holistic and unique design - which our team are united with one goal in mind for creative thinking process, unparalleled idea and unique design approach.<br></p>','<p>Francis is responsible for establishing and leading Dâ€™ UNICO Design Studio Corp., business in Philippines. He is also responsible the development of the&nbsp; studioâ€™s a truly pan-Asian client platform in Design &amp; Project Management, nurtured studio designers &amp; architects&nbsp; to drive creative collaboration, innovation and adoption of best practices in this rapidly growing service line.<br><br>Francis has spent the last 18 years involved in Asia-Pacific international design and project management. He has served as overall Principal Designer on many prestigious projects in Singapore, Malaysia, China, Thailand and Maldives, leading major investments to both successful design and project completions. He has also worked in senior management within integrated delivery teams from design concept, design development through construction and project close-out.<br><br>In addition, He has considerable experience in design and technical aspects of project administration. His detailed quality management practice is embedded by ISO Quality Standards and Six Sigma management tools thus, deliver unparalleled systematic and documented approach.<br><br>He also understands the challenges of working in the SEA region and is comfortable mobilizing strong teams at short notice to meet both project and client requirements. He has a strong network of suppliers, consultants and project staff.</p><p><br>Francis is both architectural and interior trained and&nbsp; a member of United Architects of the Philippines.<br></p><p><br>Founder of Dâ€™ UNICO design studio.</p>');
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
INSERT INTO `page_home` VALUES (1,'Motto Panel','<p>Motto Content<br></p>');
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
INSERT INTO `page_services` VALUES (1,'<h3>STRATEGIC CONSULTING</h3><p>Feasibility Study<br>Programming<br>Space Management Study<br>Workplace Solution Study</p><h3>ARCHITECTURAL AND INTERIOR DESIGN</h3><p>Project Definition<br>Schematic Design<br>Design Development<br>Contract Document<br>Negotiation Phase<br>Construction Phase</p><h3>OTHER SERVICES</h3><p>Drafting<br>Rendering</p><p><br></p>');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_images`
--

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;
INSERT INTO `project_images` VALUES (1,1,'ACROPOLIS VIEW 1.jpg',0),(2,1,'ACROPOLIS VIEW 2.jpg',0),(3,2,'IBM ENTRANCE CANOPY.jpg',0),(4,2,'IBM_Naga _03.jpg',0),(5,2,'LOBBY GROUND FLOOR.jpg',0),(6,3,'HONEY MOON ROOM SUITE HEART VIEW 2.jpg',0),(7,3,'HONEY MOON ROOM SUITE HEART.jpg',0),(8,3,'Selena Garden View 2 revised.jpg',0),(9,3,'Selena Garden View 3 revised aerial.jpg',0),(10,3,'Selena Garden View 3 revised night.jpg',0),(11,3,'UNIT A OCEAN.jpg',0),(12,3,'UNIT B TRAMP.jpg',0),(13,3,'UNIT D SALMON.jpg',0),(14,3,'UNIT E HONEYDEW.jpg',0),(15,3,'UNIT F COAL.jpg',0),(16,4,'AERIAL.jpg',0),(17,4,'persp 1.jpg',0),(18,4,'persp 2.jpg',0),(19,4,'persp 3.jpg',0),(20,4,'perspective.jpg',0),(21,5,'BOARDROOM VIEW 1.jpg',0),(22,5,'BOARDROOM VIEW 2.jpg',0),(23,5,'BREAKOUT VIEW 1.jpg',0),(24,5,'BREAKOUT VIEW 2.jpg',0),(25,5,'CAGE INTERIOR.jpg',0),(26,5,'CASINO AND MARKETING COUNTER.jpg',0),(27,5,'CASINO AND MARKETING OFFICE.jpg',0),(28,5,'CASINO AND MARKETING TRAINING ROOM.jpg',0),(29,5,'CLINIC.jpg',0),(30,5,'CR FEMALE REVISED.jpg',0),(31,5,'CR MALE REVISED.jpg',0),(32,5,'ENTRANCE HALLWAY.jpg',0),(33,5,'EXECUTIVE ROOM.jpg',0),(34,5,'GENERAL OFFICE VIEW 1.jpg',0),(35,5,'GENERAL OFFICE VIEW 2.jpg',0),(36,5,'KITCHEN.jpg',0),(37,5,'MAIN BANK VIEW 1.jpg',0),(38,5,'MAIN BANK VIEW 2.jpg',0),(39,5,'RECEPTION.jpg',0),(40,5,'SURVEILLANCE AND MONITORING OFFICE.jpg',0),(41,5,'SURVEILLANCE AND MONITORING.jpg',0),(42,5,'TABLE AND GAMES VIEW 1.jpg',0),(43,5,'TABLE AND GAMES VIEW 2.jpg',0),(44,5,'TRAINING ROOM 3,4,5.jpg',0),(45,5,'TRAINING ROOM 6.jpg',0),(46,5,'TRAINING ROOM 7.jpg',0),(47,5,'VP ROOM REVISED.jpg',0),(48,6,'CONF RM.jpg',0),(49,6,'GENERAL OFFICE_1.jpg',0),(50,6,'MEETING RM.jpg',0),(51,6,'MEETING RM2.jpg',0),(52,6,'PANTRY_1.jpg',0),(53,6,'PANTRY_2.jpg',0),(54,6,'RECEPTION_2_2B.jpg',0),(55,6,'RECEPTION_3B.jpg',0),(56,7,'Conference room.jpg',0),(57,7,'Lounge.jpg',0),(58,7,'MAIN ENTRY.jpg',0),(59,7,'Pantry.jpg',0),(60,7,'Reception-2.jpg',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,2,'Acropolis','GRUPPO ARMANI BUILDING 1 is a five storey commercial building located at the busy road of E. Rodriguez Jr. Avenue, Q.C. The structure is articulated as a series of concrete slabs, apparently floating, though on closer inspection there are vertical-shaped wooden alike screening up the structure as well as bluish shade window treatment.\nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create soaring spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:37:27','2016-07-16 20:37:27'),(2,2,'IBM Naga','NAGA BPO BUILDING, located at Naga City, Bicol. A two storey BPO building to cater for IBM regional expansion. It was designed to balance between simplicity, practicality and semi-industrial look of the building. The building faÃ§ade are united by asymmetric accent pattern and mix with simple plane wall of the building. This is a result of modest project with a very limited budget that has been used prudently and intelligently to create practical spaces and design.  ',1,1,31,2016,'2016-07-16 20:44:45','2016-07-16 20:44:45'),(3,2,'Selenna Garden','SELENNA GARDEN HOTEL, located at Dau City, Pampanga. A three storey high hotel structure that cater for budgeted customer. The Client instructed that design elements shall be in tuned with the hotel branding and architectural ambience are cozy and warm that embrace tranquil and exhilarating feel. An earthen palette of materials has been selected to allow for the emphasis of natural elements in the hotel.\nThe budget allocation is a modest project with a very limited budget that has been used prudently and intelligently to create least spaces and cozy design.  ',1,1,31,2016,'2016-07-16 20:47:18','2016-07-16 20:47:33'),(4,2,'Sinag','GRUPPO ARMANI BUILDING 2 is a five storey commercial building located at the busy road of corner N. Domingo and Sinag Street, Mandaluyong City . The structure is articulated as a series of concrete slabs, apparently floating, and series of random window sizes are arranged to give the simple architectural design pattern of the faÃ§ade. An open roof deck double up as open space and cozy dining area at night will serve as additional highlight of the building. \nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create practical spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:48:36','2016-07-16 20:48:36'),(5,2,'City of Dreams','CITY OF DREAMS (Pre - Opening Office) â€“ This new office that house for the pre-opening office premise for COD staff, management and training facilities of CODâ€™s casino dealers. The concept of the office is an illustration of a metamorphosis of eastern spatial interiors and western aesthetics where fun, young and dynamic office environment are met.\nThe center of the design is communal area, representing the epicenter from which energy emanates. Energy comes in waves, like an earthquake, and these layers follow the concept of ideas, which are often layered as well. Wanted to present the idea of energy moving through space, just as ideas move from concept to producing results for clients.',1,1,32,2016,'2016-07-16 21:07:09','2016-07-16 21:07:48'),(6,2,'Cummins','Office Concept 1 -  new office design has become a creative, high-energy work space. Design efforts focused on crafting a new identity for the space while preserving existing visually striking elements. The officeâ€™s design is simple: An open-plan studio in the middle is bracketed by meeting and reception rooms along the west end and general office spaces to the east. Bisecting the plan and tying together these elementsâ€”is an open corridor.',1,1,32,2016,'2016-07-16 21:10:21','2016-07-16 21:10:21'),(7,2,'Showroom','Showroom Concept - A fresh contemporary approach to the showroom resulted in clean uninterrupted curve-lines and organic shapes in all areas with clearly defined spaces, created through the use of different material textures, ambient lighting and appropriate contemporary furniture to best describe the showroom.',1,1,32,2016,'2016-07-16 21:11:00','2016-07-16 21:11:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_category`
--

LOCK TABLES `projects_category` WRITE;
/*!40000 ALTER TABLE `projects_category` DISABLE KEYS */;
INSERT INTO `projects_category` VALUES (31,'Commercial'),(32,'Corporate');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gian Carlo','Egamino','gnegamino','enigma123','#U3226, Tower 3, Grass Residences, Quezon City','9164229926','gnegamino@gmail.com','gnegamz.site88.net'),(2,'Francis','Arollado','francis.arollado','dunico',NULL,NULL,NULL,NULL);
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

-- Dump completed on 2016-07-18  7:31:55
