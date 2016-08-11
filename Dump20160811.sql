CREATE DATABASE  IF NOT EXISTS `db_dunico` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_dunico`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_dunico
-- ------------------------------------------------------
-- Server version	5.5.27

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
INSERT INTO `page_about` VALUES (1,'D`UNICO','Francis Arollado','<p>D\' UNICO is a design studio that caters multidisciplinary practice in hospitality, resort planning, corporate, residential, commercial&nbsp; interior and architectural design services both domestic and international.<br><br>Our team has the ability to span across different scales and levels of complexity is evidenced by our portfolio of work ranging from&nbsp; sizable space, buildings and complex development - each requiring the coordination of our talented multidisciplinary team. We are composed of young talented designers and architects which we shared common commitment and passion for design. Our passion, drive and focus on unique design solution are established based on client needs, environment and social requirements. <br><br>Our values are reflected by our commitment in creating holistic and unique design - which our team are united with one goal in mind for creative thinking process, unparalleled idea and unique design approach.<br></p>','<p>Francis is responsible for establishing and leading D\' UNICO Design Studio Corp., business in Philippines. He is also responsible the development of the&nbsp; studio\' s a truly pan-Asian client platform in Design &amp; Project Management, nurtured studio designers &amp; architects&nbsp; to drive creative collaboration, innovation and adoption of best practices in this rapidly growing service line.<br><br>Francis has spent the last 18 years involved in Asia-Pacific international design and project management. He has served as overall Principal Designer on many prestigious projects in Singapore, Malaysia, China, Thailand and Maldives, leading major investments to both successful design and project completions. He has also worked in senior management within integrated delivery teams from design concept, design development through construction and project close-out.<br><br>In addition, He has considerable experience in design and technical aspects of project administration. His detailed quality management practice is embedded by ISO Quality Standards and Six Sigma management tools thus, deliver unparalleled systematic and documented approach.<br><br>He also understands the challenges of working in the SEA region and is comfortable mobilizing strong teams at short notice to meet both project and client requirements. He has a strong network of suppliers, consultants and project staff.</p><p><br>Francis is both architectural and interior trained and&nbsp; a member of United Architects of the Philippines.<br></p><p><br>Founder of D\' UNICO design studio.</p>');
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
INSERT INTO `page_home` VALUES (1,'Creative minds, unparalleled ideas','<p>Great buildings that move the spirit have always been rare. In every case they are unique, poetic, products of the heart.<br><p><br></p></p>');
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
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_images`
--

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;
INSERT INTO `project_images` VALUES (137,15,'LR - Living room r3a.jpg',0),(143,16,'PHUKM - Phuket Mansion 3_View02.jpg',0),(144,16,'PHUKM - Phuket Mansion 3_View03.jpg',0),(155,1,'Acropolis - View 1.PNG',0),(156,1,'Acropolis - View 2.PNG',0),(159,2,'IBM - Naga.png',0),(167,3,'Selenna Garden - View 2 Revised.png',0),(169,3,'Selenna Garden - View 3 Revised Night.png',0),(170,4,'Sinag - Aerial.png',0),(171,4,'Sinag - Perspective 1.png',0),(172,4,'Sinag - Perspective 2.png',0),(173,4,'Sinag - Perspective 3.png',0),(174,4,'Sinag - Perspective 4.png',0),(208,6,'Cummins - RECEPTION_2_2B.PNG',0),(209,6,'Cummins - RECEPTION_3B.PNG',0),(222,8,'SMDC - GROUND FLOOR RECEPTION.png',0),(231,9,'TaskUs - RECEPTION AREA R1.png',0),(240,10,'Yahoo - Reception.png',0),(241,11,'VI - Aerial View.PNG',0),(242,11,'VI - frontal view - water villa.PNG',0),(243,11,'VI - Kubos.PNG',0),(255,11,'VI - River Side.PNG',0),(265,12,'HAU - Scheme 4 View 1A small.png',0),(266,12,'HAU - Scheme 4 View 2 small.png',0),(267,12,'HAU - Scheme 4 View 3 small.png',0),(268,12,'HAU - Scheme 4 View 4A aerial small.png',0),(270,13,'BR - BANCOD RESIDENCE UPDATE 3.png',0),(281,14,'BAUR - EXTERIOR 1.png',0),(282,14,'BAUR - EXTERIOR 1B.png',0),(283,14,'BAUR - EXTERIOR 2.png',0),(284,14,'BAUR - MASTER BEDROOM.png',0),(285,14,'BAUR - MASTER TOILET.png',0),(286,14,'BAUR - TnB.png',0),(287,14,'BAUR - TOILET.png',0),(297,17,'RIVR - view 2 option 2.png',0),(321,18,'ISLAP - SITE DEVELOPENT FRONT ELEVATION.jpg',0),(322,18,'ISLAP - SITE DEVELOPENT TOP.jpg',0),(323,18,'ISLAP - SITE DEVELOPMENT AERIA.JPG',0),(328,2,'IBM - Entrance Canopy.png',0),(329,2,'IBM - Lobby Ground Floor.png',0),(330,3,'Selenna Garden - View 3 Revised Aerial.png',0),(331,3,'Selenna Garden - Honey Moon Room Suite Heart View 1.png',0),(332,3,'Selenna Garden - Honey Moon Room Suite Heart View 2.png',0),(333,3,'Selenna Garden - Unit A Ocean.png',0),(334,3,'Selenna Garden - Unit B Tramp.png',0),(335,3,'Selenna Garden - Unit D Salmon.png',0),(336,3,'Selenna Garden - Unit E Honeydew.png',0),(337,3,'Selenna Garden - Unit F Coal.png',0),(338,5,'City Of Dreams - ENTRANCE HALLWAY.PNG',0),(339,5,'City Of Dreams - RECEPTION.PNG',0),(340,5,'City Of Dreams - GENERAL OFFICE VIEW 1.PNG',0),(341,5,'City Of Dreams - GENERAL OFFICE VIEW 2.PNG',0),(342,5,'City Of Dreams - BOARDROOM VIEW 1.png',0),(343,5,'City Of Dreams - BOARDROOM VIEW 2.png',0),(344,5,'City Of Dreams - CASINO AND MARKETING OFFICE.png',0),(345,5,'City Of Dreams - EXECUTIVE ROOM.PNG',0),(347,5,'City Of Dreams - VP ROOM REVISED.PNG',0),(348,5,'City Of Dreams - SURVEILLANCE AND MONITORING OFFICE.PNG',0),(349,5,'City Of Dreams - SURVEILLANCE AND MONITORING.PNG',0),(350,5,'City Of Dreams - TRAINING ROOM 3,4,5.PNG',0),(351,5,'City Of Dreams - TRAINING ROOM 6.PNG',0),(352,5,'City Of Dreams - TRAINING ROOM 7.PNG',0),(353,5,'City Of Dreams - MAIN BANK VIEW 1.PNG',0),(354,5,'City Of Dreams - MAIN BANK VIEW 2.PNG',0),(355,5,'City Of Dreams - CAGE INTERIOR.png',0),(356,5,'City Of Dreams - CASINO AND MARKETING COUNTER.png',0),(357,5,'City Of Dreams - CASINO AND MARKETING TRAINING ROOM.png',0),(358,5,'City Of Dreams - BREAKOUT VIEW 1.png',0),(359,5,'City Of Dreams - BREAKOUT VIEW 2.png',0),(360,5,'City Of Dreams - KITCHEN.PNG',0),(364,5,'City Of Dreams - CLINIC.png',0),(365,5,'City Of Dreams - TABLE AND GAMES VIEW 1.PNG',0),(366,5,'City Of Dreams - TABLE AND GAMES VIEW 2.PNG',0),(367,5,'City Of Dreams - CR FEMALE REVISED.png',0),(368,5,'City Of Dreams - CR MALE REVISED.png',0),(369,6,'Cummins - GENERAL OFFICE_1.PNG',0),(370,6,'Cummins - CONF RM.PNG',0),(371,6,'Cummins - MEETING RM.PNG',0),(372,6,'Cummins - MEETING RM2.PNG',0),(373,6,'Cummins - PANTRY_1.PNG',0),(374,6,'Cummins - PANTRY_2.PNG',0),(375,7,'Showroom - Main Entry.png',0),(376,7,'Showroom - Reception 2.png',0),(377,7,'Showroom - Conference Room.png',0),(378,7,'Showroom - Lounge.png',0),(379,7,'Showroom - Pantry.png',0),(380,8,'SMDC - 16F RECEPTION.png',0),(381,8,'SMDC - CUSTOMER SERVICE AREA.png',0),(382,8,'SMDC - LOBBY.png',0),(383,8,'SMDC - 14F GENERAL WORKSTATION.png',0),(384,8,'SMDC - 14F TRAINING ROOM.png',0),(385,8,'SMDC - 15F.png',0),(386,8,'SMDC - SALES RESERVATION AREA.png',0),(387,8,'SMDC - HSSR OFFICE.png',0),(388,8,'SMDC - HSJR , ETS RM.png',0),(389,8,'SMDC - MEETING ROOM.png',0),(390,8,'SMDC - EXECUTIVE BOARDROOM.png',0),(391,8,'SMDC - EXECUTIVE LOUNGE AREA.png',0),(392,9,'TaskUs - LOUNGE AREA R1.png',0),(393,9,'TaskUs - BREAKOUT AREA.png',0),(394,9,'TaskUs - WORK AREA 1  R1.png',0),(395,9,'TaskUs - WORK AREA 2 R1-2_UBER2.png',0),(396,9,'TaskUs - WORK AREA 3  R1-2.png',0),(397,9,'TaskUs - BOARD ROOM R1.png',0),(398,10,'Yahoo - General Office.png',0),(399,10,'Yahoo - Boardroom.png',0),(400,10,'Yahoo - Break-out Area.png',0),(401,10,'Yahoo - Cozy Room.png',0),(402,18,'ISLAP - front day 2.jpg',0),(403,18,'ISLAP - REAR DAY.jpg',0),(404,18,'ISLAP - scene 25.PNG',0),(405,18,'ISLAP - scene 27 A.PNG',0),(406,18,'ISLAP - scene 32.PNG',0),(407,18,'ISLAP - scene 38.PNG',0),(408,18,'ISLAP - OPTION1(1).jpg',0),(409,18,'ISLAP - OPTION1(2).jpg',0),(410,18,'ISLAP - RESTAURANT HIGH RES.jpg',0),(411,18,'ISLAP - RESTAURANT HIGH RES 22.jpg',0),(412,18,'ISLAP - day scene front 2.PNG',0),(413,18,'ISLAP - NIGHT SCENE (3).PNG',0),(414,18,'ISLAP - day scene rear (2).PNG',0),(415,18,'ISLAP - NIGHT SCENE (2).PNG',0),(416,18,'ISLAP - 1 (2).PNG',0),(417,18,'ISLAP - 4 (2).PNG',0),(418,18,'ISLAP - exterior day 1 front.png',0),(419,18,'ISLAP - Exterior - night - front.png',0),(420,18,'ISLAP - exterior day 1.png',0),(421,18,'ISLAP - Exterior - night - rear.png',0),(422,18,'ISLAP - 1-2-a.png',0),(423,18,'ISLAP - 4-2-a.png',0),(424,18,'ISLAP - exterior 1.jpg',0),(425,18,'ISLAP - exterior 3 transparent.PNG',0),(426,18,'ISLAP - exterior 3.jpg',0),(427,18,'ISLAP - option 2 interior (3).jpg',0),(428,11,'VI - Nature View.PNG',0),(429,11,'VI - reception 1.PNG',0),(430,11,'VI - Restaurant.PNG',0),(431,11,'VI - Land Villa.PNG',0),(432,11,'VI - WATER VILLA LATEST.PNG',0),(433,11,'VI - pic4E.PNG',0),(434,11,'VI - pic7Ab.PNG',0),(435,11,'VI - pic8Ab.PNG',0),(436,11,'VI - pic9bA.PNG',0),(437,11,'VI - pic2B.PNG',0),(438,11,'VI - pic4A.PNG',0),(439,11,'VI - pic4B.PNG',0),(440,12,'HAU - RECEPTION LOBBY.png',0),(441,12,'HAU - CLASSROOM.png',0),(442,12,'HAU - CASEROOM.png',0),(443,12,'HAU - CANTEEN_VIEW A.png',0),(444,12,'HAU - CANTEEN_VIEW B.png',0),(445,12,'HAU - AUDITORIUM.png',0),(446,12,'HAU - FACULTY LOUNGE FINAL.png',0),(447,12,'HAU - GRADUATE LOUNGE FINAL.png',0),(448,13,'BR - AERIAL PERSPECTIVE_02.png',0),(449,13,'BR - Living Room Revised 3.png',0),(450,13,'BR - REVISED DINING AREA 2.png',0),(451,13,'BR - DINING AND KITCHEN.png',0),(452,13,'BR - Master Toilet and Bath revision 2A.png',0),(453,13,'BR - POWDER ROOM.png',0),(454,13,'BR - MASTERS BEDROOM 3B.png',0),(461,13,'BR - BEDROOM UPDATE 3.png',0),(462,13,'BR - GUEST ROOM 1.png',0),(463,13,'BR - OFFICE 3.png',0),(464,13,'BR - FOYER 1.png',0),(465,15,'LR - Kitchen 02.jpg',0),(466,15,'LR - Dining Area r3a.jpg',0),(468,15,'LR - BEDROOM.jpg',0),(469,15,'LR - TOILET AND BATH.png',0),(470,16,'PHUKM - Phuket Mansion 3.jpg',0),(471,16,'PHUKM - INTERIOR 1_LIVING AND DINING AREA.jpg',0),(472,16,'PHUKM - INTERIOR 2_MASTER BEDROOM.jpg',0),(473,16,'PHUKM - INTERIOR 3_MASTER TOILET.jpg',0),(476,17,'RIVR - night rendering view3 option 2.png',0),(477,17,'RIVR - view 1 option 2.png',0),(478,17,'RIVR - night rendering view1 option 2.png',0),(479,17,'RIVR - view 3 option 1.png',0),(480,17,'RIVR - night rendering view 2 option 2.png',0),(481,17,'RIVR - living 1 option 2.png',0),(482,17,'RIVR - entertainment option 2.png',0),(483,17,'RIVR - master bedroom 1.png',0),(484,17,'RIVR - master bedroom toilet1.png',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,2,'Acropolis','GRUPPO ARMANI BUILDING 1 is a five storey commercial building located at the busy road of E. Rodriguez Jr. Avenue, Q.C. The structure is articulated as a series of concrete slabs, apparently floating, though on closer inspection there are vertical-shaped wooden alike screening up the structure as well as bluish shade window treatment.\nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create soaring spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:37:27','2016-08-04 00:22:50'),(2,2,'IBM Naga','NAGA BPO BUILDING, located at Naga City, Bicol. A two storey BPO building to cater for IBM regional expansion. It was designed to balance between simplicity, practicality and semi-industrial look of the building. The building faÃ§ade are united by asymmetric accent pattern and mix with simple plane wall of the building. This is a result of modest project with a very limited budget that has been used prudently and intelligently to create practical spaces and design.  ',1,1,31,2013,'2016-07-16 20:44:45','2016-08-06 11:21:51'),(3,2,'Selenna Garden','SELENNA GARDEN HOTEL, located at Dau City, Pampanga. A three storey high hotel structure that cater for budgeted customer. The Client instructed that design elements shall be in tuned with the hotel branding and architectural ambience are cozy and warm that embrace tranquil and exhilarating feel. An earthen palette of materials has been selected to allow for the emphasis of natural elements in the hotel.\nThe budget allocation is a modest project with a very limited budget that has been used prudently and intelligently to create least spaces and cozy design.  ',1,1,31,2013,'2016-07-16 20:47:18','2016-08-06 11:27:42'),(4,2,'Sinag','GRUPPO ARMANI BUILDING 2 is a five storey commercial building located at the busy road of corner N. Domingo and Sinag Street, Mandaluyong City . The structure is articulated as a series of concrete slabs, apparently floating, and series of random window sizes are arranged to give the simple architectural design pattern of the faÃ§ade. An open roof deck double up as open space and cozy dining area at night will serve as additional highlight of the building. \nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create practical spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:48:36','2016-08-04 00:25:18'),(5,2,'COD','COD (Pre - Opening Office) â€“ This new office that house for the pre-opening office premise for COD staff, management and training facilities of CODâ€™s casino dealers. The concept of the office is an illustration of a metamorphosis of eastern spatial interiors and western aesthetics where fun, young and dynamic office environment are met.\nThe center of the design is communal area, representing the epicenter from which energy emanates. Energy comes in waves, like an earthquake, and these layers follow the concept of ideas, which are often layered as well. Wanted to present the idea of energy moving through space, just as ideas move from concept to producing results for clients.',1,1,31,2013,'2016-07-16 21:07:09','2016-08-06 11:47:09'),(6,2,'Cummins','Office Concept 1 -  new office design has become a creative, high-energy work space. Design efforts focused on crafting a new identity for the space while preserving existing visually striking elements. The officeâ€™s design is simple: An open-plan studio in the middle is bracketed by meeting and reception rooms along the west end and general office spaces to the east. Bisecting the plan and tying together these elementsâ€”is an open corridor.',1,1,32,2015,'2016-07-16 21:10:21','2016-08-06 11:48:47'),(7,2,'Showroom','Showroom Concept - A fresh contemporary approach to the showroom resulted in clean uninterrupted curve-lines and organic shapes in all areas with clearly defined spaces, created through the use of different material textures, ambient lighting and appropriate contemporary furniture to best describe the showroom.',1,1,31,2016,'2016-07-16 21:11:00','2016-08-06 11:51:28'),(8,2,'SMDC','SMDC HQ OFFICE â€“ This project is unique client, who wanted a temple of inspiration where office and customers would like to conduct their business transaction in conducive environment. Weâ€™re inspired by the utilization of space and potential energy that specific spatial layouts create. Intriguing workspaces possess a degree of motivational tension, and itâ€™s from this kinetic creative energy that ideas are born.',1,1,32,2013,'2016-07-18 23:22:52','2016-08-06 11:59:30'),(9,2,'TaskUs','TaskUs is not a typical BPO. The work concept is fun, exciting startups rather than big boring call center, and management itself consciously decided to open offices outside the reach of creature comforts that exist in major future trends. \n\nDesign was uniquely creative and brand driven office environment, infused by extremely collaborative areas and disruptive innovations that cater for productivity, fun and cool concept of the office.',1,1,32,2015,'2016-07-18 23:23:44','2016-08-06 12:06:28'),(10,2,'YAHOO HQ - Singapore','YAHOO HQ Singapore- Yahoo new HQ office perfectly expresses the young companyâ€™s philosophy of openness, collaboration and constant movement â€” all in the comfort of home.  After few months of brain storming Yahooâ€™s new HQ office, the team designed an open-plan space, giving employees continual freedom to choose where and how to work. Each room is branded by Yahoo corporate colors, inspired by a different notable Yahoo branding. With many of the furnishings also sourced creatively and locally, this unique workspace preserves a true Yahoo feel. Yahoo\'s mantra, \"fun and exciting,â€ was translated into a meandering path that connects the spacesâ€”from meeting room to the full-service kitchen and large dining areaâ€”and the spectacular City views.',1,1,32,2012,'2016-07-18 23:26:23','2016-08-06 12:08:12'),(11,2,'Vakarufalhi Island Resort','Vakarufalhi Island Resort - One of the four star Maldives Resort, tucked away in the remote corner of South Ari atoll, 90 km. away from the airport, Vakarufalhi is among the pearls that make up the amazing Maldives Islands.\nThe development respects the indigenous nature and a local surrounding condition less destruction to ecology, thus creating a new tropical resort look with Maldivian influence for Vakarufalhi that has 50 beach villa, 25 water, Health Spa, Restaurant and other Support Facilities that help to run the island. \nThe end-result gives thoughtful making of space, it is creating of space that evoke of feeling of use. Spaces that form themselves into a harmony good for the use to which the building is to be put. ',1,1,33,2011,'2016-07-18 23:34:28','2016-08-06 12:20:44'),(12,2,'Holy Angel Graduate School','HOLY ANGEL GRADUATE SCHOOL, located at Angeles City, Pampanga. A nine storey with a basement structure and with total buildable area of 20,000 square meter. \nSince book is essential part of learning, we use Book as the driver of design inspiration - from the â€œstacking of booksâ€ or arrangement on horizontal stacking. The design element inspired by the long white horizontal plane and stack on top of the other, blended with sleek materials such metal, glass and stone for modern approach. \nThe space usage gives respect to the orientation of sun and direction of winds - as a result, the building design comes with vertical void space in the middle axis with glass atrium above act as vertical exhaust ventilation and opening on the east side till west side, give way to cross ventilation of the building. ',1,1,34,2011,'2016-07-18 23:36:32','2016-08-06 12:23:09'),(13,2,'Bancod Residence','BANCOD RESIDENCE, located at Loyola Grand Villas. A three storey residential designed for a family of five. The site is located in a rolling terrain slope where the house respect the natural terrain and designed in such a way not to lose the natural beauty of the terrain. \nThe house is an attempt to blur the boundaries between exterior and the interior of an urban house. The concept of the house is an illustration of a metamorphosis of eastern spatial interiors and western aesthetics. It was designed for a small family, on three separate levels yet connected without exposing oneself to the harsh weather conditions.',1,1,35,2016,'2016-07-18 23:38:36','2016-08-06 12:29:31'),(14,2,'Bautista Residence','BAUTISTA RESIDENCE, located at Paranaque City. A two storey residential designed for a family of five and the only brief they had is, if this is your house how are you going to design it â€¦ the design of the house is totally embrace simple minimalist approach with respect to cross ventilation of air and natural penetration of light that gives a free-flow of spaces into one another and in-and-out of natural light is the highlight of the house. \nInside, the living spaces look across the large volume of the dining area and further to catch a glimpse of the master bedroom on the second floor and entertainment room across the living hall. Indoor and outdoor spaces are seamlessly connected across greens and blues, through wood and glass and across different levels. One is always part of the house in its entirety separate spaces are subtly connected by a bridge on the second floor. Amidst the lush green outdoors, this transparency among spaces, the multiple balconies and high ceiling help one enjoy the beautiful weather of the surrounding.',1,1,35,2012,'2016-07-18 23:39:56','2016-08-04 00:40:33'),(15,2,'Lim Residence','LIM RESIDENCE, located at New Manila. A two storey residential house designed for a family of six. The interiors and furniture pieces were planned to be simple and fuss-free, looking effortless in its place. Black seamless mirrored units are combined with elegant wooden tables, sleek console tables with modern-inspired rugs, minimalistic sofas with graphic art printed cushions. The combination of these elements was designed especially to our client, given his background and lifestyle, to encompass an ideal balance of modernity and tradition.',1,1,35,2011,'2016-07-18 23:41:05','2016-08-06 12:32:42'),(16,2,'Phuket Mansion Residence','PHUKET MANSION RESIDENCE, located at Sta. Rosa City. A two storey residential inspired by modern â€œThai Houseâ€ that complied and compliment with the developers concept. The elegance of the design of this home lies in its simplicity. An earthen palette of materials has been selected to allow for the emphasis of natural elements in the house. Rough lined textures of stone and cobbles have been used in most landscape areas including the central and the rear courts. Extensive use of wood allowed for the necessary warmth in the exteriors and interiors. Juxtaposition of roof and maximum extension are designed to achieve maximum aesthetic and sun shading for this humble home that re-instilled an unabashed thematic design philosophy.',1,1,35,2013,'2016-07-18 23:42:50','2016-08-06 12:33:52'),(17,2,'Rivera Residence','RIVERA RESIDENCE, located at BF Homes Paranaque City. From the street, the Rivera House has almost zen â€“ like of anonymityâ€¦ walls of granite slabs reveal nothing but impressive feel of the entry porch of the house. But step inside the house, and there is an immediate sense of transition to another excitement, with expectation of refuge from hectic urban living.\nA creative attempt was made to achieve a coherent design through careful space planning and modern sleek design with practicality and sustainability for the house. This is a simple single detach house with flowing of spaces, closely connected to its garden and surprisingly replete with private places. High levels of transparency and internal cross â€“ views a sense of space which belies the actual size of the house.',1,1,35,2016,'2016-07-18 23:45:11','2016-08-06 12:38:12'),(18,2,'Isla Pandan Resort','Isla Pandan Resort is one of the well visited island at Honda Bay, Puerto Prinsesa, Palawan. The new resort will be rejuvenated using indigenous materials like bamboo, cogon, wood, stone and the like as majority construction materials. This unique application of bamboo are part of tropical design to garnish sustainable content. The island comprising of 15 Cabanas, 3 Cluster Pension Plus, Restaurant and other supporting facilities.\nNew Isla Pandan has deliberately designed to avoid looking like a typical resort and feel more like a magical or fantasy island resort. Cabanas and Pension Plus are indigenous structures that carefully sited in clusters of three or five, always in response to the site topography, its mature trees, and set within tropical plants that offer a privacy as well as maximizing the entire beach front vistas.',1,1,33,2016,'2016-08-04 07:58:36','2016-08-06 12:16:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_category`
--

LOCK TABLES `projects_category` WRITE;
/*!40000 ALTER TABLE `projects_category` DISABLE KEYS */;
INSERT INTO `projects_category` VALUES (31,'Commercial'),(32,'Corporate'),(33,'Hospitality'),(34,'Institutional'),(35,'Residential');
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

-- Dump completed on 2016-08-11 18:15:40
