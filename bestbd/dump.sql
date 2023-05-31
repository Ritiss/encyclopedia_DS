-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: encyclopedia
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Temporary view structure for view `all_dark_souls_1_locations`
--

DROP TABLE IF EXISTS `all_dark_souls_1_locations`;
/*!50001 DROP VIEW IF EXISTS `all_dark_souls_1_locations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_dark_souls_1_locations` AS SELECT 
 1 AS `game`,
 1 AS `location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_dark_souls_2_locations`
--

DROP TABLE IF EXISTS `all_dark_souls_2_locations`;
/*!50001 DROP VIEW IF EXISTS `all_dark_souls_2_locations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_dark_souls_2_locations` AS SELECT 
 1 AS `game`,
 1 AS `location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_dark_souls_3_locations`
--

DROP TABLE IF EXISTS `all_dark_souls_3_locations`;
/*!50001 DROP VIEW IF EXISTS `all_dark_souls_3_locations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_dark_souls_3_locations` AS SELECT 
 1 AS `game`,
 1 AS `location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('light','medium','heavy') DEFAULT NULL,
  `phys_defense` int DEFAULT NULL,
  `magic_defense` int DEFAULT NULL,
  `fire_defense` int DEFAULT NULL,
  `lightning_defense` int DEFAULT NULL,
  `bleed_resistance` int DEFAULT NULL,
  `poison_resistance` int DEFAULT NULL,
  `curse_resistance` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'Antiquated Set','light',42,98,28,57,47,47,113,5),(2,'Black Set','light',62,77,63,48,56,56,47,10),(3,'Adventurer\'s Set','medium',90,60,65,48,53,37,51,25.4),(4,'Black Knight Set','medium',134,69,115,40,76,38,0,31),(5,'Giant Set','heavy',181,83,125,84,83,49,0,42),(6,'Havel\'s Set','heavy',236,142,140,125,117,25,57,50),(7,'Lion Warrior Set','light',86,37,35,35,25,25,123,4.5),(8,'Elite Knight Set','medium',238,66,73,49,78,55,0,26.8),(9,'Steel Set','heavy',399,52,55,35,81,44,0,36),(10,'Black Hand Set','light',17,23,24,19,109,160,137,16.6),(11,'Brass Set','medium',26,27,20,14,88,80,66,25.3),(12,'Black Iron Set','heavy',34,24,30,23,118,157,86,36.9);
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(45) DEFAULT NULL,
  `games_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `characters_id` int DEFAULT NULL,
  `weapons_id` int DEFAULT NULL,
  `shields_id` int DEFAULT NULL,
  `armor_id` int DEFAULT NULL,
  `magic_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_articles_games_idx` (`games_id`),
  KEY `fk_articles_location1_idx` (`location_id`),
  KEY `fk_articles_characters1_idx` (`characters_id`),
  KEY `fk_articles_weapons1_idx` (`weapons_id`),
  KEY `fk_articles_shields1_idx` (`shields_id`),
  KEY `fk_articles_magic1_idx` (`magic_id`),
  KEY `fk_articles_armor1_idx` (`armor_id`),
  CONSTRAINT `fk_articles_armor1` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `fk_articles_characters1` FOREIGN KEY (`characters_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `fk_articles_games` FOREIGN KEY (`games_id`) REFERENCES `games` (`id`),
  CONSTRAINT `fk_articles_location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `fk_articles_magic1` FOREIGN KEY (`magic_id`) REFERENCES `magic` (`id`),
  CONSTRAINT `fk_articles_shields1` FOREIGN KEY (`shields_id`) REFERENCES `shields` (`id`),
  CONSTRAINT `fk_articles_weapons1` FOREIGN KEY (`weapons_id`) REFERENCES `weapons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,NULL,1,1,2,NULL,NULL,5,NULL),(2,NULL,1,2,25,NULL,NULL,NULL,NULL),(3,NULL,1,3,19,4,NULL,NULL,NULL),(4,NULL,1,4,9,NULL,NULL,1,NULL),(5,NULL,1,5,21,NULL,NULL,NULL,NULL),(6,NULL,1,6,34,NULL,NULL,NULL,NULL),(7,NULL,1,7,8,8,NULL,3,NULL),(8,NULL,1,8,NULL,NULL,NULL,NULL,NULL),(9,NULL,1,9,12,NULL,NULL,NULL,NULL),(10,NULL,1,10,40,NULL,NULL,NULL,8),(11,NULL,1,11,41,NULL,NULL,NULL,NULL),(12,NULL,1,12,3,NULL,NULL,NULL,NULL),(13,NULL,1,13,43,NULL,NULL,2,NULL),(14,NULL,1,14,10,NULL,NULL,NULL,NULL),(15,NULL,1,15,6,NULL,NULL,NULL,6),(16,NULL,1,16,4,5,NULL,NULL,NULL),(17,NULL,1,17,5,NULL,NULL,NULL,7),(18,NULL,1,18,NULL,NULL,NULL,NULL,NULL),(19,NULL,1,19,NULL,NULL,NULL,NULL,5),(20,NULL,1,20,7,NULL,NULL,NULL,NULL),(21,NULL,1,21,11,NULL,NULL,NULL,NULL),(22,NULL,1,22,1,NULL,NULL,NULL,NULL),(23,NULL,1,23,NULL,NULL,NULL,NULL,NULL),(24,NULL,2,24,56,NULL,NULL,NULL,10),(25,NULL,2,25,NULL,NULL,NULL,NULL,NULL),(26,NULL,2,26,NULL,NULL,NULL,NULL,NULL),(27,NULL,2,27,NULL,NULL,NULL,NULL,NULL),(28,NULL,2,28,NULL,NULL,NULL,NULL,NULL),(29,NULL,2,29,NULL,NULL,NULL,NULL,NULL),(30,NULL,2,30,NULL,NULL,NULL,NULL,NULL),(31,NULL,2,31,NULL,NULL,NULL,NULL,NULL),(32,NULL,2,32,NULL,NULL,NULL,NULL,NULL),(33,NULL,2,33,NULL,NULL,NULL,NULL,NULL),(34,NULL,2,34,NULL,NULL,NULL,NULL,NULL),(35,NULL,2,35,NULL,NULL,NULL,NULL,NULL),(36,NULL,2,36,NULL,NULL,NULL,NULL,NULL),(37,NULL,2,37,NULL,NULL,NULL,NULL,NULL),(38,NULL,2,38,NULL,NULL,NULL,NULL,NULL),(39,NULL,2,39,NULL,NULL,NULL,NULL,NULL),(40,NULL,2,40,NULL,NULL,NULL,NULL,12),(41,NULL,2,41,NULL,NULL,4,NULL,NULL),(42,NULL,2,42,NULL,NULL,NULL,NULL,NULL),(43,NULL,2,43,NULL,NULL,NULL,NULL,NULL),(44,NULL,2,44,NULL,NULL,NULL,NULL,NULL),(45,NULL,2,45,NULL,NULL,NULL,NULL,14),(46,NULL,2,46,NULL,NULL,NULL,NULL,NULL),(47,NULL,2,47,NULL,NULL,NULL,NULL,NULL),(48,NULL,2,48,NULL,7,NULL,NULL,16),(49,NULL,2,49,54,NULL,NULL,NULL,13),(50,NULL,2,50,NULL,NULL,NULL,NULL,NULL),(51,NULL,2,51,NULL,NULL,NULL,NULL,NULL),(52,NULL,2,52,NULL,NULL,NULL,NULL,NULL),(53,NULL,2,53,NULL,NULL,NULL,NULL,NULL),(54,NULL,2,54,48,NULL,NULL,8,NULL),(55,NULL,2,55,NULL,NULL,NULL,9,NULL),(56,NULL,2,56,NULL,NULL,NULL,NULL,NULL),(57,NULL,2,57,NULL,NULL,NULL,NULL,NULL),(58,NULL,2,58,NULL,NULL,NULL,NULL,NULL),(59,NULL,2,59,NULL,NULL,NULL,NULL,NULL),(60,NULL,2,60,50,NULL,NULL,7,15),(61,NULL,2,61,53,NULL,NULL,NULL,NULL),(62,NULL,2,62,NULL,NULL,NULL,NULL,NULL),(63,NULL,2,63,NULL,NULL,NULL,NULL,NULL),(64,NULL,2,64,NULL,NULL,NULL,NULL,NULL),(65,NULL,2,65,NULL,NULL,NULL,NULL,9),(66,NULL,2,66,49,NULL,NULL,NULL,NULL),(67,NULL,2,67,NULL,NULL,NULL,NULL,NULL),(68,NULL,2,68,NULL,NULL,NULL,NULL,NULL),(69,NULL,2,69,NULL,NULL,NULL,NULL,NULL),(70,NULL,2,70,NULL,NULL,NULL,NULL,NULL),(71,NULL,2,71,NULL,NULL,NULL,NULL,NULL),(72,NULL,3,72,NULL,NULL,NULL,11,NULL),(73,NULL,3,73,NULL,NULL,NULL,NULL,NULL),(74,NULL,3,74,NULL,NULL,NULL,NULL,NULL),(75,NULL,3,75,NULL,NULL,NULL,NULL,NULL),(76,NULL,3,76,NULL,NULL,NULL,NULL,NULL),(77,NULL,3,77,NULL,NULL,NULL,NULL,NULL),(78,NULL,3,78,58,NULL,NULL,NULL,NULL),(79,NULL,3,79,64,NULL,NULL,NULL,NULL),(80,NULL,3,80,68,NULL,NULL,10,NULL),(81,NULL,3,81,62,NULL,NULL,NULL,NULL),(82,NULL,3,82,63,NULL,NULL,NULL,NULL),(83,NULL,3,83,57,9,NULL,NULL,19),(84,NULL,3,84,61,NULL,NULL,NULL,NULL),(85,NULL,3,85,NULL,NULL,NULL,NULL,NULL),(86,NULL,3,86,NULL,12,NULL,NULL,NULL),(87,NULL,3,87,68,NULL,NULL,NULL,NULL),(88,NULL,3,88,NULL,10,NULL,NULL,NULL),(89,NULL,3,89,60,11,NULL,NULL,NULL),(90,NULL,3,90,NULL,NULL,5,12,18),(91,NULL,3,91,NULL,NULL,NULL,NULL,17),(92,NULL,3,92,NULL,NULL,NULL,NULL,NULL),(93,NULL,3,93,NULL,NULL,NULL,NULL,NULL),(94,NULL,3,94,68,NULL,NULL,NULL,NULL),(95,NULL,1,9,13,NULL,NULL,NULL,NULL),(96,NULL,1,9,14,NULL,NULL,NULL,4),(97,NULL,1,22,16,NULL,NULL,NULL,NULL),(98,NULL,1,16,17,NULL,NULL,NULL,1),(99,NULL,1,9,18,NULL,NULL,NULL,1),(100,NULL,1,9,20,NULL,NULL,NULL,1),(101,NULL,1,21,22,NULL,NULL,NULL,NULL),(102,NULL,1,1,24,NULL,NULL,NULL,NULL),(103,NULL,1,1,26,NULL,NULL,NULL,NULL),(104,NULL,1,1,27,NULL,2,NULL,NULL),(105,NULL,1,1,28,1,1,NULL,NULL),(106,NULL,1,2,29,NULL,NULL,NULL,3),(107,NULL,1,3,30,NULL,NULL,NULL,NULL),(108,NULL,1,3,31,NULL,NULL,NULL,NULL),(109,NULL,1,4,25,NULL,NULL,NULL,NULL),(110,NULL,1,21,32,3,3,4,NULL),(111,NULL,1,22,32,2,3,4,NULL),(112,NULL,1,4,32,2,3,4,NULL),(113,NULL,1,16,32,2,3,4,NULL),(114,NULL,1,20,32,2,3,4,NULL),(115,NULL,1,10,32,2,3,4,NULL),(116,NULL,1,7,29,NULL,NULL,NULL,NULL),(117,NULL,1,19,29,NULL,NULL,NULL,NULL),(118,NULL,1,5,33,NULL,NULL,NULL,NULL),(119,NULL,1,6,35,NULL,NULL,NULL,NULL),(120,NULL,1,6,36,NULL,NULL,NULL,NULL),(121,NULL,1,7,37,NULL,NULL,NULL,NULL),(122,NULL,1,9,38,NULL,NULL,NULL,NULL),(123,NULL,1,22,38,NULL,NULL,NULL,NULL),(124,NULL,1,7,38,NULL,NULL,NULL,NULL),(125,NULL,1,9,39,NULL,NULL,NULL,NULL),(126,NULL,1,16,39,NULL,NULL,NULL,NULL),(127,NULL,1,10,32,2,3,NULL,NULL),(128,NULL,1,12,42,NULL,NULL,NULL,NULL),(129,NULL,1,15,44,NULL,NULL,NULL,NULL),(130,NULL,1,16,45,NULL,NULL,NULL,NULL),(131,NULL,1,17,46,NULL,NULL,NULL,NULL),(132,NULL,1,20,47,NULL,NULL,NULL,NULL),(133,NULL,2,54,52,NULL,NULL,NULL,NULL),(134,NULL,2,54,51,NULL,NULL,NULL,11),(135,NULL,2,49,55,NULL,NULL,NULL,NULL),(136,NULL,2,60,56,NULL,NULL,NULL,NULL),(137,NULL,3,79,65,NULL,NULL,NULL,NULL),(138,NULL,3,79,66,NULL,NULL,NULL,NULL),(139,NULL,3,78,67,NULL,NULL,NULL,NULL),(140,NULL,3,89,68,NULL,NULL,NULL,NULL),(141,NULL,3,78,68,NULL,NULL,NULL,NULL),(142,NULL,1,9,20,NULL,NULL,NULL,2),(143,NULL,1,1,NULL,NULL,NULL,6,NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('enemy','boss','merchant','blacksmith') DEFAULT NULL,
  `health` int DEFAULT NULL,
  `souls` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Andre of Astora','blacksmith',1065,1000),(2,'Giant Blacksmith','blacksmith',1812,3000),(3,'Rickert of Vinheim','blacksmith',659,1000),(4,'Vamos','blacksmith',944,1000),(5,'Big Hat Logan','merchant',719,1000),(6,'Crestfallen Merchant','merchant',878,1000),(7,'Darkstalker Kaathe','merchant',24464,5000),(8,'Domhnall of Zena','merchant',767,1000),(9,'Dusk of Oolacile','merchant',276,1000),(10,'Eingyi','merchant',277,0),(11,'Griggs of Vinheim','merchant',659,1000),(12,'Ingward','merchant',682,1000),(13,'Kingseeker Frampt','merchant',11120,5000),(14,'Laurentius of the Great Swamp','merchant',719,1000),(15,'Marvelous Chester','merchant',1477,9505),(16,'Oswald of Carim','merchant',638,2000),(17,'Patches','merchant',821,2000),(18,'Petrus of Thorolund','merchant',594,1000),(19,'Quelana of Izalith','merchant',698,1000),(20,'Reah of Thorolund','merchant',531,1000),(21,'Shiva of the East','merchant',719,3000),(22,'Undead Female Merchant','merchant',420,50),(23,'Undead Male Merchant','merchant',360,50),(24,'Dragon Slayer Ornstein and Executioner Smough','boss',4287,50000),(25,'Hydra','enemy',2520,5000),(26,'Batwing Demon','enemy',419,500),(27,'Sentinels','enemy',535,1500),(28,'Silver Knights','enemy',464,1300),(29,'Basilisk','enemy',117,200),(30,'Chaos Witch Quelaag','boss',3139,20000),(31,'Cragspider','enemy',167,100),(32,'Black Knight','enemy',603,1225),(33,'Great Grey Wolf Sif','boss',3432,40000),(34,'Ceaseless Discharge','boss',4200,20000),(35,'Demon Firesage','boss',5448,20000),(36,'Centipede Demon','boss',3432,40000),(37,'Gaping Dragon','boss',4660,25000),(38,'Undead Rat','enemy',96,240),(39,'Skeleton','enemy',184,50),(40,'Gwyn, Lord of Cinder','boss',4185,70000),(41,'Bed of Chaos','boss',2,60000),(42,'Four Kings','boss',9504,60000),(43,'Crossbreed Priscilla','boss',2300,30000),(44,'Iron Golem','boss',2880,40000),(45,'Pinwheel','boss',1326,15000),(46,'Seath the Scaleless','boss',5525,60000),(47,'Gravelord Nito','boss',4317,60000),(48,'Blacksmith Lenigrast','blacksmith',1320,2000),(49,'Steady Hand McDuff','blacksmith',1860,1600),(50,'Weaponsmith Ornifex','blacksmith',3670,2100),(51,'Licia of Lindelt','merchant',2440,2500),(52,'Maughlin the Armorer','merchant',1100,900),(53,'Demon of Song','boss',6180,26000),(54,'Smelter Demon','boss',5970,32000),(55,'Old Iron King','boss',6070,48000),(56,'Basilisk','enemy',260,200),(57,'Pontiff Sulyvahn','boss',5106,28000),(58,'Abyss Watchers','boss',1548,18000),(59,'Iudex Gundyr','boss',1037,3000),(60,'Crystal Sage','boss',2723,8000),(61,'Soul of Cinder','boss',6557,100000),(62,'Vordt of the Boreal Valley','boss',1328,3000),(63,'Karla','merchant',500,1000),(64,'Ludleth of Courland','merchant',250,0),(65,'Shrine Handmaid','merchant',250,0),(66,'Blacksmith Andre','blacksmith',600,0),(67,'Basilisks','enemy',400,120),(68,'Corvian','enemy',359,90);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Dark Souls','2011-09-22'),(2,'Dark Souls II','2014-03-11'),(3,'Dark Souls III','2016-03-24');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Anor Londo'),(2,'Ash Lake'),(3,'Blighttown'),(4,'Darkroot Basin'),(5,'Darkroot Garden'),(6,'Demon Ruins'),(7,'Depths'),(8,'Firelink Altar'),(9,'Firelink Shrine'),(10,'Kiln of the First Flame'),(11,'Lost Izalith'),(12,'New Londo Ruins'),(13,'Painted World of Ariamis'),(14,'Quelaag\'s Domain'),(15,'Sen\'s Fortress'),(16,'The Catacombs'),(17,'The Duke\'s Archives'),(18,'Crystal Cave'),(19,'The Great Hollow'),(20,'Tomb of the Giants'),(21,'Undead Burg'),(22,'Undead Parish'),(23,'Valley of Drakes'),(24,'Aldia\'s Keep'),(25,'Belfry Luna'),(26,'Belfry Sol'),(27,'Black Gulch'),(28,'Brume Tower'),(29,'Cathedral of Blue'),(30,'Cave of the Dead'),(31,'Dark Chasm of Old'),(32,'Doors of Pharros'),(33,'Dragon Aerie'),(34,'Dragon Memories'),(35,'Dragon Shrine'),(36,'Dragon\'s Rest'),(37,'Dragon\'s Sanctum'),(38,'Drangleic'),(39,'Drangleic Castle'),(40,'Earthen Peak'),(41,'Forest of Fallen Giants'),(42,'Frigid Outskirts'),(43,'Frozen Eleum Loyce'),(44,'Grand Cathedral'),(45,'Grave of Saints'),(46,'Harvest Valley'),(47,'Heide\'s Tower of Flame'),(48,'Huntsman\'s Copse'),(49,'Iron Keep'),(50,'Iron Passage'),(51,'King\'s Passage'),(52,'Memory of Jeigh'),(53,'Lord\'s Private Chamber'),(54,'Majula'),(55,'Memory of Orro'),(56,'Memory of the King'),(57,'Memory of the Old Iron King'),(58,'Memory of Vammar'),(59,'No-man\'s Wharf'),(60,'Shaded Woods'),(61,'Shrine of Amana'),(62,'Shrine of Winter'),(63,'Shulva, Sanctum City'),(64,'Sinners\' Rise'),(65,'The Gutter'),(66,'The Lost Bastille'),(67,'The Old Chaos'),(68,'Things Betwixt'),(69,'Throne of Want'),(70,'Undead Crypt'),(71,'Undead Purgatory'),(72,'Anor Londo'),(73,'Archdragon Peak'),(74,'Catacombs of Carthus'),(75,'Cathedral of the Deep'),(76,'Cemetery of Ash'),(77,'Consumed King\'s Garden'),(78,'Farron Keep'),(79,'Firelink Shrine'),(80,'Grand Archives'),(81,'High Wall of Lothric'),(82,'Irithyll Dungeon'),(83,'Irithyll of the Boreal Valley'),(84,'Kiln of the First Flame'),(85,'Lothric'),(86,'Lothric Castle'),(87,'Painted World of Ariandel'),(88,'Profaned Capital'),(89,'Road of Sacrifices'),(90,'Smouldering Lake'),(91,'The Dreg Heap'),(92,'The Ringed City'),(93,'Undead Settlement'),(94,'Untended Graves');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic`
--

DROP TABLE IF EXISTS `magic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('miracle','pyromancy','sorcery','hex') DEFAULT NULL,
  `slots` int DEFAULT NULL,
  `uses` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic`
--

LOCK TABLES `magic` WRITE;
/*!40000 ALTER TABLE `magic` DISABLE KEYS */;
INSERT INTO `magic` VALUES (1,'Heal','miracle',1,5),(2,'Great Heal','miracle',1,3),(3,'Great Magic Barrier','miracle',1,2),(4,'Fireball','pyromancy',1,8),(5,'Firestorm','pyromancy',1,20),(6,'Chaos Fire Whip','pyromancy',2,80),(7,'Great Soul Arrow','sorcery',1,20),(8,'Hush','sorcery',1,6),(9,'Dark Fog','hex',2,4),(10,'Affinity','hex',3,8),(11,'Force','miracle',1,10),(12,'Lightning Spear','miracle',1,3),(13,'Chaos Storm','pyromancy',1,2),(14,'Warmth','pyromancy',1,4),(15,'Homing Soulmass','sorcery',1,4),(16,'Soul Spear','sorcery',1,2),(17,'Projected Heal','miracle',1,55),(18,'Sacred Flame','pyromancy',1,25),(19,'Chameleon','sorcery',1,20);
/*!40000 ALTER TABLE `magic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shields`
--

DROP TABLE IF EXISTS `shields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('small','medium','greatshield') DEFAULT NULL,
  `phys_reduction` int DEFAULT NULL,
  `magic_reduction` int DEFAULT NULL,
  `fire_reduction` int DEFAULT NULL,
  `lightning_reduction` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shields`
--

LOCK TABLES `shields` WRITE;
/*!40000 ALTER TABLE `shields` DISABLE KEYS */;
INSERT INTO `shields` VALUES (1,'Silver Knight Shield','medium',100,40,75,65,5),(2,'Giant Shield','greatshield',100,60,75,75,18),(3,'Black Knight Shield','medium',100,25,95,65,6),(4,'Buckler','small',75,30,65,50,1.5),(5,'Black Iron Greatshield','greatshield',100,69,83,53,14.5);
/*!40000 ALTER TABLE `shields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('sword','axe','hammer','whip','reaper','staff','sacred_chime','pyromancy_flame','bow','greatbow','crossbow') DEFAULT NULL,
  `phys_damage` int DEFAULT NULL,
  `magic_damage` int DEFAULT NULL,
  `fire_damage` int DEFAULT NULL,
  `lightning_damage` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,'Silver Knight Straight Sword','sword',175,NULL,NULL,NULL,6),(2,'Black Knight Greataxe','axe',229,NULL,NULL,NULL,16),(3,'Black Knight Sword','sword',220,NULL,NULL,NULL,8),(4,'Butcher Knife','axe',90,NULL,NULL,NULL,10),(5,'Mace','hammer',91,NULL,NULL,NULL,4),(6,'Whip','whip',80,NULL,NULL,NULL,1.5),(7,'Full Moon Sickle','reaper',132,NULL,NULL,NULL,8),(8,'Pyromancy Flame','pyromancy_flame',NULL,NULL,196,NULL,0),(9,'Knight\'s Crossbow','crossbow',40,NULL,NULL,40,4),(10,'Onislayer Greatbow','greatbow',111,NULL,NULL,NULL,7.5),(11,'Heretic\'s Staff','staff',63,113,NULL,NULL,3),(12,'Caitha\'s Chime','sacred_chime',74,100,NULL,NULL,0.5);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'encyclopedia'
--

--
-- Dumping routines for database 'encyclopedia'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_new_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_character`(
in character_name varchar(255),
in character_type ENUM('enemy', 'boss', 'merchant', 'blacksmith'),
in HP int,
in souls_drop int
)
BEGIN
insert into characters(
name,
type,
health,
souls
)
values (
character_name,
character_type,
HP,
souls_drop
);

select * from characters
order by id desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `location_with_the_most_characters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `location_with_the_most_characters`(
in game_part int
)
BEGIN
select
games.title as game,
count(characters.name) as characters_number,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join characters
on articles.characters_id = characters.id
inner join location
on articles.location_id = location.id
where
not characters.type = 'boss'
and
not characters.type = 'enemy'
and
games_id = game_part
group by games.title, location.title
order by characters_number desc
limit 1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `all_dark_souls_1_locations`
--

/*!50001 DROP VIEW IF EXISTS `all_dark_souls_1_locations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_dark_souls_1_locations` AS select distinct `games`.`title` AS `game`,`location`.`title` AS `location` from ((`articles` join `games` on((`articles`.`games_id` = `games`.`id`))) join `location` on((`articles`.`location_id` = `location`.`id`))) where (`games`.`title` = 'Dark Souls') order by `location` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_dark_souls_2_locations`
--

/*!50001 DROP VIEW IF EXISTS `all_dark_souls_2_locations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_dark_souls_2_locations` AS select distinct `games`.`title` AS `game`,`location`.`title` AS `location` from ((`articles` join `games` on((`articles`.`games_id` = `games`.`id`))) join `location` on((`articles`.`location_id` = `location`.`id`))) where (`games`.`title` = 'Dark Souls II') order by `location` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_dark_souls_3_locations`
--

/*!50001 DROP VIEW IF EXISTS `all_dark_souls_3_locations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_dark_souls_3_locations` AS select distinct `games`.`title` AS `game`,`location`.`title` AS `location` from ((`articles` join `games` on((`articles`.`games_id` = `games`.`id`))) join `location` on((`articles`.`location_id` = `location`.`id`))) where (`games`.`title` = 'Dark Souls III') order by `location` */;
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

-- Dump completed on 2023-05-30  4:59:30
