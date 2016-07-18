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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_images`
--

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;
INSERT INTO `project_images` VALUES (1,1,'ACROPOLIS VIEW 1.jpg',0),(2,1,'ACROPOLIS VIEW 2.jpg',0),(3,2,'IBM ENTRANCE CANOPY.jpg',0),(4,2,'IBM_Naga _03.jpg',0),(5,2,'LOBBY GROUND FLOOR.jpg',0),(6,3,'HONEY MOON ROOM SUITE HEART VIEW 2.jpg',0),(7,3,'HONEY MOON ROOM SUITE HEART.jpg',0),(8,3,'Selena Garden View 2 revised.jpg',0),(9,3,'Selena Garden View 3 revised aerial.jpg',0),(10,3,'Selena Garden View 3 revised night.jpg',0),(11,3,'UNIT A OCEAN.jpg',0),(12,3,'UNIT B TRAMP.jpg',0),(13,3,'UNIT D SALMON.jpg',0),(14,3,'UNIT E HONEYDEW.jpg',0),(15,3,'UNIT F COAL.jpg',0),(16,4,'AERIAL.jpg',0),(17,4,'persp 1.jpg',0),(18,4,'persp 2.jpg',0),(19,4,'persp 3.jpg',0),(20,4,'perspective.jpg',0),(21,5,'BOARDROOM VIEW 1.jpg',0),(22,5,'BOARDROOM VIEW 2.jpg',0),(23,5,'BREAKOUT VIEW 1.jpg',0),(24,5,'BREAKOUT VIEW 2.jpg',0),(25,5,'CAGE INTERIOR.jpg',0),(26,5,'CASINO AND MARKETING COUNTER.jpg',0),(27,5,'CASINO AND MARKETING OFFICE.jpg',0),(28,5,'CASINO AND MARKETING TRAINING ROOM.jpg',0),(29,5,'CLINIC.jpg',0),(30,5,'CR FEMALE REVISED.jpg',0),(31,5,'CR MALE REVISED.jpg',0),(32,5,'ENTRANCE HALLWAY.jpg',0),(33,5,'EXECUTIVE ROOM.jpg',0),(34,5,'GENERAL OFFICE VIEW 1.jpg',0),(35,5,'GENERAL OFFICE VIEW 2.jpg',0),(36,5,'KITCHEN.jpg',0),(37,5,'MAIN BANK VIEW 1.jpg',0),(38,5,'MAIN BANK VIEW 2.jpg',0),(39,5,'RECEPTION.jpg',0),(40,5,'SURVEILLANCE AND MONITORING OFFICE.jpg',0),(41,5,'SURVEILLANCE AND MONITORING.jpg',0),(42,5,'TABLE AND GAMES VIEW 1.jpg',0),(43,5,'TABLE AND GAMES VIEW 2.jpg',0),(44,5,'TRAINING ROOM 3,4,5.jpg',0),(45,5,'TRAINING ROOM 6.jpg',0),(46,5,'TRAINING ROOM 7.jpg',0),(47,5,'VP ROOM REVISED.jpg',0),(48,6,'CONF RM.jpg',0),(49,6,'GENERAL OFFICE_1.jpg',0),(50,6,'MEETING RM.jpg',0),(51,6,'MEETING RM2.jpg',0),(52,6,'PANTRY_1.jpg',0),(53,6,'PANTRY_2.jpg',0),(54,6,'RECEPTION_2_2B.jpg',0),(55,6,'RECEPTION_3B.jpg',0),(56,7,'Conference room.jpg',0),(57,7,'Lounge.jpg',0),(58,7,'MAIN ENTRY.jpg',0),(59,7,'Pantry.jpg',0),(60,7,'Reception-2.jpg',0),(61,8,'14F GENERAL WORKSTATION.jpg',0),(62,8,'14F TRAINING ROOM.jpg',0),(63,8,'15th flr.jpg',0),(64,8,'16F RECEPTION.jpg',0),(65,8,'CUSTOMER SERVICE AREA.jpg',0),(66,8,'EXECUTIVE BOARDROOM.jpg',0),(67,8,'EXECUTIVE LOUNGE AREA.jpg',0),(68,8,'GROUND FLOOR RECEPTION.jpg',0),(69,8,'HSJR , ETS RM.jpg',0),(70,8,'HSSR OFFICE.jpg',0),(71,8,'Lobby.jpg',0),(72,8,'MEETING ROOM.jpg',0),(73,8,'SALES RESERVATION AREA.jpg',0),(74,9,'BOARD ROOM R1.jpg',0),(75,9,'BREAKOUT AREA.jpg',0),(76,9,'LOUNGE AREA R1.jpg',0),(77,9,'RECEPTION AREA R1.jpg',0),(78,9,'TRAINERS ROOM  R1.jpg',0),(79,9,'WORK AREA 1  R1.jpg',0),(80,9,'WORK AREA 2 R1-2_UBER2.jpg',0),(81,9,'WORK AREA 3  R1-2.jpg',0),(82,10,'YH - Boardroom.jpg',0),(83,10,'YH - Break-out Area.jpg',0),(84,10,'YH - Cozy Room.jpg',0),(85,10,'YH - General Office.jpg',0),(86,10,'YH - Reception.jpg',0),(87,11,'VI - Aerial View.jpg',0),(88,11,'VI - Kubos.JPG',0),(89,11,'VI - Land Villa.jpg',0),(90,11,'VI - Nature View.JPG',0),(91,11,'VI - pic2B.jpg',0),(92,11,'VI - pic4A.jpg',0),(93,11,'VI - pic4B.jpg',0),(94,11,'VI - pic4E.jpg',0),(95,11,'VI - pic7Ab.jpg',0),(96,11,'VI - pic8Ab.jpg',0),(97,11,'VI - pic9bA.jpg',0),(98,11,'VI - reception 1.jpg',0),(99,11,'VI - Restaurant.jpg',0),(100,11,'VI - River Side.JPG',0),(101,11,'VI - WATER VILLA LATEST.jpg',0),(102,11,'VI- frontal view - water villa.jpg',0),(103,12,'HAU - AUDITORIUM.jpg',0),(104,12,'HAU - CANTEEN_VIEW A.jpg',0),(105,12,'HAU - CANTEEN_VIEW B.jpg',0),(106,12,'HAU - CASEROOM.jpg',0),(107,12,'HAU - CLASSROOM.jpg',0),(108,12,'HAU - FACULTY LOUNGE FINAL.jpg',0),(109,12,'HAU - GRADUATE LOUNGE FINAL.jpg',0),(110,12,'HAU - RECEPTION LOBBY.jpg',0),(111,12,'HAU - Scheme 4 View 1A small.jpg',0),(112,12,'HAU - Scheme 4 View 2 small.jpg',0),(113,12,'HAU - Scheme 4 View 3 small.jpg',0),(114,12,'HAU - Scheme 4 View 4A aerial small.jpg',0),(115,13,'BR - AERIAL PERSPECTIVE_02.jpg',0),(116,13,'BR - BANCOD RESIDENCE UPDATE 3.jpg',0),(117,13,'BR - BEDROOM UPDATE 3.jpg',0),(118,13,'BR - DINING AND KITCHEN.jpg',0),(119,13,'BR - FOYER 1.jpg',0),(120,13,'BR - GUEST ROOM 1.jpg',0),(121,13,'BR - Living Room Revised 3.jpg',0),(122,13,'BR - Master Toilet and Bath revision 2A.jpg',0),(123,13,'BR - MASTERS BEDROOM 3B.jpg',0),(124,13,'BR - OFFICE 3.jpg',0),(125,13,'BR - POWDER ROOM.jpg',0),(126,13,'BR - REVISED DINING AREA 2.jpg',0),(127,14,'BAUR - EXTERIOR 1.jpg',0),(128,14,'BAUR - EXTERIOR 1B.jpg',0),(129,14,'BAUR - EXTERIOR 2.jpg',0),(130,14,'BAUR - MASTER BEDROOM.jpg',0),(131,14,'BAUR - MASTER TOILET.jpg',0),(132,14,'BAUR - TnB.jpg',0),(133,14,'BAUR - TOILET.jpg',0),(134,15,'LR - BEDROOM.jpg',0),(135,15,'LR - Dining Area r3a.jpg',0),(136,15,'LR - Kitchen 02.jpg',0),(137,15,'LR - Living room r3a.jpg',0),(138,15,'LR - TOILET AND BATH.jpg',0),(139,16,'PHUKM - INTERIOR 1_LIVING AND DINING AREA.jpg',0),(140,16,'PHUKM - INTERIOR 2_MASTER BEDROOM.jpg',0),(141,16,'PHUKM - INTERIOR 3_MASTER TOILET.jpg',0),(142,16,'PHUKM - Phuket Mansion 3.jpg',0),(143,16,'PHUKM - Phuket Mansion 3_View02.jpg',0),(144,16,'PHUKM - Phuket Mansion 3_View03.jpg',0),(145,17,'RIVR - entertainment option 2.jpg',0),(146,17,'RIVR - living 1 option 2.jpg',0),(147,17,'RIVR - master bedroom 1.jpg',0),(148,17,'RIVR - master bedroom toilet1.jpg',0),(149,17,'RIVR - night rendering view 2 option 2.jpg',0),(150,17,'RIVR - night rendering view1 option 2.jpg',0),(151,17,'RIVR - night rendering view3 option 2.jpg',0),(152,17,'RIVR - view 1 option 2.jpg',0),(153,17,'RIVR - view 2 option 2.jpg',0),(154,17,'RIVR - view 3 option 1.jpg',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,2,'Acropolis','GRUPPO ARMANI BUILDING 1 is a five storey commercial building located at the busy road of E. Rodriguez Jr. Avenue, Q.C. The structure is articulated as a series of concrete slabs, apparently floating, though on closer inspection there are vertical-shaped wooden alike screening up the structure as well as bluish shade window treatment.\nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create soaring spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:37:27','2016-07-16 20:37:27'),(2,2,'IBM Naga','NAGA BPO BUILDING, located at Naga City, Bicol. A two storey BPO building to cater for IBM regional expansion. It was designed to balance between simplicity, practicality and semi-industrial look of the building. The building faÃ§ade are united by asymmetric accent pattern and mix with simple plane wall of the building. This is a result of modest project with a very limited budget that has been used prudently and intelligently to create practical spaces and design.  ',1,1,31,2016,'2016-07-16 20:44:45','2016-07-16 20:44:45'),(3,2,'Selenna Garden','SELENNA GARDEN HOTEL, located at Dau City, Pampanga. A three storey high hotel structure that cater for budgeted customer. The Client instructed that design elements shall be in tuned with the hotel branding and architectural ambience are cozy and warm that embrace tranquil and exhilarating feel. An earthen palette of materials has been selected to allow for the emphasis of natural elements in the hotel.\nThe budget allocation is a modest project with a very limited budget that has been used prudently and intelligently to create least spaces and cozy design.  ',1,1,31,2016,'2016-07-16 20:47:18','2016-07-16 20:47:33'),(4,2,'Sinag','GRUPPO ARMANI BUILDING 2 is a five storey commercial building located at the busy road of corner N. Domingo and Sinag Street, Mandaluyong City . The structure is articulated as a series of concrete slabs, apparently floating, and series of random window sizes are arranged to give the simple architectural design pattern of the faÃ§ade. An open roof deck double up as open space and cozy dining area at night will serve as additional highlight of the building. \nThe building is a modest project with a very limited budget that has been used prudently and intelligently to create practical spaces with sustainable design.  ',1,1,31,2016,'2016-07-16 20:48:36','2016-07-16 20:48:36'),(5,2,'City of Dreams','CITY OF DREAMS (Pre - Opening Office) â€“ This new office that house for the pre-opening office premise for COD staff, management and training facilities of CODâ€™s casino dealers. The concept of the office is an illustration of a metamorphosis of eastern spatial interiors and western aesthetics where fun, young and dynamic office environment are met.\nThe center of the design is communal area, representing the epicenter from which energy emanates. Energy comes in waves, like an earthquake, and these layers follow the concept of ideas, which are often layered as well. Wanted to present the idea of energy moving through space, just as ideas move from concept to producing results for clients.',1,1,32,2016,'2016-07-16 21:07:09','2016-07-16 21:07:48'),(6,2,'Cummins','Office Concept 1 -  new office design has become a creative, high-energy work space. Design efforts focused on crafting a new identity for the space while preserving existing visually striking elements. The officeâ€™s design is simple: An open-plan studio in the middle is bracketed by meeting and reception rooms along the west end and general office spaces to the east. Bisecting the plan and tying together these elementsâ€”is an open corridor.',1,1,32,2016,'2016-07-16 21:10:21','2016-07-16 21:10:21'),(7,2,'Showroom','Showroom Concept - A fresh contemporary approach to the showroom resulted in clean uninterrupted curve-lines and organic shapes in all areas with clearly defined spaces, created through the use of different material textures, ambient lighting and appropriate contemporary furniture to best describe the showroom.',1,1,32,2016,'2016-07-16 21:11:00','2016-07-16 21:11:00'),(8,2,'SMDC','SMDC HQ OFFICE â€“ This project is unique client, who wanted a temple of inspiration where office and customers would like to conduct their business transaction in conducive environment. Weâ€™re inspired by the utilization of space and potential energy that specific spatial layouts create. Intriguing workspaces possess a degree of motivational tension, and itâ€™s from this kinetic creative energy that ideas are born.',1,1,32,2016,'2016-07-18 23:22:52','2016-07-18 23:22:52'),(9,2,'TaskUs','TaskUs is not a typical BPO. The work concept is fun, exciting startups rather than big boring call center, and management itself consciously decided to open offices outside the reach of creature comforts that exist in major future trends. \n\nDesign was uniquely creative and brand driven office environment, infused by extremely collaborative areas and disruptive innovations that cater for productivity, fun and cool concept of the office.',1,1,32,2016,'2016-07-18 23:23:44','2016-07-18 23:23:44'),(10,2,'YAHOO HQ - Singapore','YAHOO HQ Singapore- Yahoo new HQ office perfectly expresses the young companyâ€™s philosophy of openness, collaboration and constant movement â€” all in the comfort of home.  After few months of brain storming Yahooâ€™s new HQ office, the team designed an open-plan space, giving employees continual freedom to choose where and how to work. Each room is branded by Yahoo corporate colors, inspired by a different notable Yahoo branding. With many of the furnishings also sourced creatively and locally, this unique workspace preserves a true Yahoo feel. Yahoo\'s mantra, \"fun and exciting,â€ was translated into a meandering path that connects the spacesâ€”from meeting room to the full-service kitchen and large dining areaâ€”and the spectacular City views.',1,1,32,2016,'2016-07-18 23:26:23','2016-07-18 23:26:30'),(11,2,'Vakarufalhi Island Resort','Vakarufalhi Island Resort - One of the four star Maldives Resort, tucked away in the remote corner of South Ari atoll, 90 km. away from the airport, Vakarufalhi is among the pearls that make up the amazing Maldives Islands.\nThe development respects the indigenous nature and a local surrounding condition less destruction to ecology, thus creating a new tropical resort look with Maldivian influence for Vakarufalhi that has 50 beach villa, 25 water, Health Spa, Restaurant and other Support Facilities that help to run the island. \nThe end-result gives thoughtful making of space, it is creating of space that evoke of feeling of use. Spaces that form themselves into a harmony good for the use to which the building is to be put. ',1,1,33,2016,'2016-07-18 23:34:28','2016-07-18 23:34:28'),(12,2,'Holy Angel Graduate School','HOLY ANGEL GRADUATE SCHOOL, located at Angeles City, Pampanga. A nine storey with a basement structure and with total buildable area of 20,000 square meter. \nSince book is essential part of learning, we use Book as the driver of design inspiration - from the â€œstacking of booksâ€ or arrangement on horizontal stacking. The design element inspired by the long white horizontal plane and stack on top of the other, blended with sleek materials such metal, glass and stone for modern approach. \nThe space usage gives respect to the orientation of sun and direction of winds - as a result, the building design comes with vertical void space in the middle axis with glass atrium above act as vertical exhaust ventilation and opening on the east side till west side, give way to cross ventilation of the building. ',1,1,34,2016,'2016-07-18 23:36:32','2016-07-18 23:36:32'),(13,2,'Bancod Residence','BANCOD RESIDENCE, located at Loyola Grand Villas. A three storey residential designed for a family of five. The site is located in a rolling terrain slope where the house respect the natural terrain and designed in such a way not to lose the natural beauty of the terrain. \nThe house is an attempt to blur the boundaries between exterior and the interior of an urban house. The concept of the house is an illustration of a metamorphosis of eastern spatial interiors and western aesthetics. It was designed for a small family, on three separate levels yet connected without exposing oneself to the harsh weather conditions.',1,1,35,2016,'2016-07-18 23:38:36','2016-07-18 23:38:36'),(14,2,'Bautista Residence','BAUTISTA RESIDENCE, located at Paranaque City. A two storey residential designed for a family of five and the only brief they had is, if this is your house how are you going to design it â€¦ the design of the house is totally embrace simple minimalist approach with respect to cross ventilation of air and natural penetration of light that gives a free-flow of spaces into one another and in-and-out of natural light is the highlight of the house. \nInside, the living spaces look across the large volume of the dining area and further to catch a glimpse of the master bedroom on the second floor and entertainment room across the living hall. Indoor and outdoor spaces are seamlessly connected across greens and blues, through wood and glass and across different levels. One is always part of the house in its entirety separate spaces are subtly connected by a bridge on the second floor. Amidst the lush green outdoors, this transparency among spaces, the multiple balconies and high ceiling help one enjoy the beautiful weather of the surrounding.',1,1,35,2016,'2016-07-18 23:39:56','2016-07-18 23:39:56'),(15,2,'Lim Residence','LIM RESIDENCE, located at New Manila. A two storey residential house designed for a family of six. The interiors and furniture pieces were planned to be simple and fuss-free, looking effortless in its place. Black seamless mirrored units are combined with elegant wooden tables, sleek console tables with modern-inspired rugs, minimalistic sofas with graphic art printed cushions. The combination of these elements was designed especially to our client, given his background and lifestyle, to encompass an ideal balance of modernity and tradition.',1,1,35,2016,'2016-07-18 23:41:05','2016-07-18 23:41:05'),(16,2,'Phuket Mansion Residence','PHUKET MANSION RESIDENCE, located at Sta. Rosa City. A two storey residential inspired by modern â€œThai Houseâ€ that complied and compliment with the developers concept. The elegance of the design of this home lies in its simplicity. An earthen palette of materials has been selected to allow for the emphasis of natural elements in the house. Rough lined textures of stone and cobbles have been used in most landscape areas including the central and the rear courts. Extensive use of wood allowed for the necessary warmth in the exteriors and interiors. Juxtaposition of roof and maximum extension are designed to achieve maximum aesthetic and sun shading for this humble home that re-instilled an unabashed thematic design philosophy.',1,1,35,2016,'2016-07-18 23:42:50','2016-07-18 23:42:50'),(17,2,'Rivera Residence','RIVERA RESIDENCE, located at BF Homes Paranaque City. From the street, the Rivera House has almost zen â€“ like of anonymityâ€¦ walls of granite slabs reveal nothing but impressive feel of the entry porch of the house. But step inside the house, and there is an immediate sense of transition to another excitement, with expectation of refuge from hectic urban living.\nA creative attempt was made to achieve a coherent design through careful space planning and modern sleek design with practicality and sustainability for the house. This is a simple single detach house with flowing of spaces, closely connected to its garden and surprisingly replete with private places. High levels of transparency and internal cross â€“ views a sense of space which belies the actual size of the house.',1,1,35,2016,'2016-07-18 23:45:11','2016-07-18 23:45:11');
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

-- Dump completed on 2016-07-19  0:28:16
