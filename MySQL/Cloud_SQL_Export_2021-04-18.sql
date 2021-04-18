-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.18-google

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
-- Current Database: `mindmanager`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mindmanager` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mindmanager`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answer_text` varchar(255) NOT NULL,
  `bored_rating` int(11) NOT NULL,
  `energetic_rating` int(11) NOT NULL,
  `happy_rating` int(11) NOT NULL,
  `sad_rating` int(11) NOT NULL,
  `tired_rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Yes',3,3,1,4,4),(2,1,'No',2,3,5,1,1),(3,1,'A little bit',5,5,2,2,2),(4,2,'Yes',3,4,4,2,1),(5,2,'No',4,1,2,2,5),(6,2,'I feel like I could literally bounce off the walls',4,5,4,2,1),(7,3,'Yes',3,3,3,2,2),(8,3,'No',3,2,3,3,3),(9,3,'Yes, but I\'m lazy',2,3,3,2,5),(10,4,'Yes',3,1,3,3,5),(11,4,'No',4,5,3,3,2),(12,4,'Yes, but I want to do SOMETHING',4,3,4,2,5),(13,5,'Yes, don\'t get me started again',4,3,1,5,3),(14,5,'Why? This quiz isn\'t THAT bad',2,4,4,2,3),(15,5,'Nope',3,3,4,2,3),(16,6,'I will greet them back!',3,5,5,1,2),(17,6,'I couldn\'t care less right now',5,3,1,4,3),(18,6,'I don\'t really know',5,5,3,2,3),(19,7,'YES!',3,3,2,5,3),(20,7,'Not really',4,4,4,1,4),(21,7,'Well, sometimes',2,3,4,2,3),(22,8,'Yes!',5,5,5,2,2),(23,8,'No',2,2,3,3,5),(24,8,'Maybe',3,3,4,3,3),(25,9,'Yes!',4,5,5,5,4),(26,9,'Not really',3,2,2,2,2),(27,9,'I am like usual self',3,3,3,3,3),(28,10,'I had a bad day',2,1,1,5,3),(29,10,'Great!',1,5,5,1,3),(30,10,'Nothing special much',5,3,3,1,5),(31,11,'Yes, let\'s go!',3,5,3,2,1),(32,11,'Not really',2,1,3,2,5),(33,11,'Hmm.. What do you have in mind?',4,4,2,1,1),(34,12,'I want it to be accurate so I am doing it the right way',3,4,5,3,1),(35,12,'0 patience',3,1,1,4,5),(36,12,'I am fine doing it',4,3,5,3,1),(37,13,'Yes!',5,5,3,1,1),(38,13,'No',2,1,3,5,5),(39,13,'Hmm.. Whatcha got?',4,3,5,2,2),(40,14,'If it easy, sure why not',4,5,5,1,1),(41,14,'No',3,1,2,4,5),(42,14,'Depends how easy it is and if I get something out of it',5,2,3,4,5),(43,15,'Yes!!',3,5,5,1,1),(44,15,'No',3,1,1,5,5),(45,15,'Depends what kind of sport',5,2,4,3,4),(46,16,'I will get back to them',4,5,5,3,1),(47,16,'I don\'t feel like taking calls right now',3,1,2,4,5),(48,16,'It depends on who it is',3,1,2,5,4),(49,17,'Yes, bring it on',3,5,4,2,1),(50,17,'No, I don\'t really care right now',4,1,2,5,4),(51,17,'Maybe, what is it?',5,3,4,2,1),(52,18,'Sounds good',4,1,3,4,5),(53,18,'No',3,5,4,3,1),(54,18,'Don\'t mind either way',5,1,5,5,1),(55,19,'Yes!',2,5,5,1,1),(56,19,'No',4,1,3,5,5),(57,19,'I don\'t know',3,1,3,5,2),(58,20,'I will check everywhere to find it',5,5,4,2,1),(59,20,'This day can\'t get anymore worse',3,1,1,5,3),(60,20,'*Sigh*',3,1,2,5,5),(61,21,'Yes',2,1,1,5,5),(62,21,'No',4,5,5,1,2),(63,21,'I\'m fine either way',5,3,4,1,2);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Did someone get on my nerves today?'),(2,'I am full of energy.'),(3,'I feel like going outside.'),(4,'I feel so tired right now.'),(5,'Have I cried today?'),(6,'Imagine this: You\'re walking down the street and a stranger says \'hello\' to you, you will:'),(7,'I am fed up with people.'),(8,'Do I feel playful right now?'),(9,'Am I emotional right now?'),(10,'How was my day so far?'),(11,'Am I looking for adventures?'),(12,'How much patience do I have for this questionnaire?'),(13,'Am I looking for something new to do?'),(14,'Imagine this: Someone you know asks you to do an EASY favour for them, would you do it?'),(15,'Do you feel sportive right now?'),(16,'Imagine this: You missed a phone call. What would you do?'),(17,'Am I concentrated to do whatever right now?'),(18,'Do I want mindlessly browse in the internet or watch TV?'),(19,'Do I feel creative right now?'),(20,'Imagine this: You just lost your phone, what now?'),(21,'Do I feel like I want to be alone right now?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mood` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `suggestion_name` varchar(255) DEFAULT NULL,
  `youtube_links` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestions`
--

LOCK TABLES `suggestions` WRITE;
/*!40000 ALTER TABLE `suggestions` DISABLE KEYS */;
INSERT INTO `suggestions` VALUES (1,'Calmer','Sport','Yoga','yoga'),(2,'Calmer','Outdoors','Go Fishing','fishing'),(4,'Calmer','Reading','The Things You Can See Only When You Slow Down',''),(5,'Calmer','Music','Lost & Found - MacKenzie Bourg','3MpsBreb_H0'),(6,'Calmer','Sport','Swimming','swimming pools'),(7,'Calmer','Outdoors','Go ride a bike','biking trail'),(9,'Energetic','Music','Play Hard - David Guetta','5dbEhBKGOtY'),(10,'Energetic','Sport','Laser Tag','laser tag'),(11,'Energetic','Outdoors','Go for a Run','running track'),(13,'Energetic','Reading','Hunger Games',''),(14,'Energetic','Music','Don\'t Say Goodbye - Alok','Q-T7Mp-OPWw'),(15,'Energetic','Sport','Running','running track'),(16,'Energetic','Outdoors','Paint-ball','paintball'),(18,'Energetic','Reading','Harry Potter and The Goblet of Fire',''),(19,'Happier','Music','I Feel Good - James Brown','Lrv-Morm-c0'),(20,'Happier','Sport','Paint-Ball','paintball'),(21,'Happier','Outdoors','Meet with friends','hangout'),(23,'Happier','Reading','Diary of a Wimpy Kid',''),(24,'Happier','Music','Who\'s Laughing Now - Ava Max','89S-RbszwJE'),(25,'Happier','Sport','Laser Tag','laser tag'),(26,'Happier','Outdoors','Go to the park','parks'),(28,'Happier','Reading','The Rosie Project',''),(29,'Moody','Music','Summertime Sadness - Lana Del Rey','mGH19_KjWY0'),(30,'Moody','Sport','Walk in park','parks'),(31,'Moody','Outdoors','Go outside and buy something for yourself','shopping'),(33,'Moody','Reading','Wonder',''),(34,'Moody','Music','Exile - Taylor Swift','NmmqTgMWUL0'),(35,'Moody','Sport','Swimming','swimming pools'),(36,'Moody','Outdoors','Walk in the park','parks'),(38,'Moody','Reading','The Fault in Our Starts',''),(39,'Relaxed','Music','Weightless - Macaroni Uniony','UfcAVejslrU'),(40,'Relaxed','Sport','Biking','biking trail'),(41,'Relaxed','Outdoors','Massage therapy','massage therapy'),(43,'Relaxed','Reading','The Little Prince',''),(44,'Relaxed','Music','Broken Hands of Mine - Joe Brooks','Hli_r5Bm97I'),(45,'Relaxed','Sport','Yoga','yoga'),(46,'Relaxed','Outdoors','Sit on a bench in the park','parks'),(47,'Relaxed','Reading','Attachments',''),(49,'Calmer','Music','Lemon Tree - Fools Garden','bCDIt50hRDs'),(50,'Calmer','Movie','The Tree of Life','RrAz1YLh8nY'),(51,'Energetic','Movie','Gladiator','AxQajgTyLcM'),(52,'Happier','Movie','The Breakfast Club','BSXBvor47Zs'),(53,'Moody','Movie','The Pursuit of Happyness','DMOBlEcRuw8'),(54,'Relaxed','Movie','Chef','FF_rYNupPwg'),(55,'Calmer','Movie','2001: A Space Odyssey','oR_e9y-bka0'),(56,'Energetic','Movie','Scott Pilgrim Vs. The World','7wd5KEaOtm4'),(57,'Happier','Movie','Forrest Gump','bLvqoHBptjg'),(58,'Moody','Movie','Soul','xOsLIiBStEs'),(59,'Relaxed','Movie','Ocean’s Eleven','imm6OR605UI'),(60,'Calmer','Movie','500 Days of Summer','PsD0NpFSADM'),(61,'Calmer','Movie','How to Lose a Guy in 10 Days','2ZMGk_Ml1fc'),(62,'Calmer','Movie','He’s Just Not That Into You','3_DHhPckJNo'),(63,'Calmer','Movie','Good Will Hunting','PaZVjZEFkRs'),(64,'Calmer','Movie','Eat Pray Love','mjay5vgIwt4'),(65,'Calmer','Movie','The Parent Trap','PMAhVpgzmRU'),(66,'Calmer','Movie','Frozen','TbQm5doF_Uc'),(67,'Calmer','Movie','Eternal Sunshine of the Spotless Mind','yE-f1alkq9I'),(68,'Energetic','Movie','Knifes Out','xi-1NchUqMA'),(69,'Energetic','Movie','The Italian Job','uw6jY3VuOcI'),(70,'Energetic','Movie','Inception','YoHD9XEInc0'),(71,'Energetic','Movie','The Dark Knight','EXeTwQWrcwY'),(72,'Energetic','Movie','Catch Me if You Can','s-7pyIxz8Qg'),(73,'Energetic','Movie','Ready Player One','cSp1dM2Vj48'),(74,'Energetic','Movie','Star Wars Episode V: The Empire Strikes Back','JNwNXF9Y6kY'),(75,'Energetic','Movie','The Martian','ej3ioOneTy8'),(76,'Happier','Movie','Clueless','Mgjwq1ZzdPQ'),(77,'Happier','Movie','The Devil Wears Prada','6ZOZwUQKu3E'),(78,'Happier','Movie','13 Going on 30','5UrCaXLBN30'),(79,'Happier','Movie','Back to the Future','qvsgGtivCgs'),(80,'Happier','Movie','Surf\'s Up','7mPdQRXFiPA'),(81,'Happier','Movie','Grown Ups','e01NVCveGkg'),(82,'Happier','Movie','Grease','qDKo8DNpwOw'),(83,'Happier','Movie','The Proposal','Z2lYA7L7PZY'),(84,'Moody','Movie','E.T., the Extra-Terrestrial','qYAETtIIClk'),(85,'Moody','Movie','Miss You Already','QtdVWsA3ctI'),(86,'Moody','Movie','Lion','RNI9o06vqo'),(87,'Moody','Movie','Wonder','Ob7fPOzbmzE'),(88,'Moody','Movie','Charlie St. Cloud','MzgOvvMi8Lg'),(89,'Moody','Movie','The Glass Castle','bdNiNhSeSDk'),(90,'Moody','Movie','The Lion King','lFzVJEksoDY'),(91,'Moody','Movie','Inside Out','yRUAzGQ3nSY'),(92,'Relaxed','Movie','Pride and Prejudice','1dYv5u6v55Y'),(93,'Relaxed','Movie','The Intern','ZU3Xban0Y6A'),(94,'Relaxed','Movie','Ferris Bueller’s Day Off','K-X2XzKqBiE'),(95,'Relaxed','Movie','Spirit','iRVk0dgOOOQ'),(96,'Relaxed','Movie','The Perks of Being a Wallflower','n5rh7O4IDc0'),(97,'Relaxed','Movie','Madagascar','fq5zU9T_Hl4'),(98,'Relaxed','Movie','Space Jam','oKNy-MWjkcU'),(99,'Relaxed','Movie','The Fundamentals of Caring','BSXn-lIs4Y0'),(100,'Calmer','Reading','Consolations of the Forest',''),(101,'Calmer','Reading','Collected Poems',''),(102,'Calmer','Reading','How to Love',''),(103,'Calmer','Reading','A Thousand Mornings',''),(104,'Calmer','Reading','Brave Enough',''),(105,'Calmer','Reading','Little Women',''),(106,'Calmer','Reading','Goodbye, Things',''),(107,'Calmer','Reading','Wind, Sand and Stars',''),(109,'Energetic','Reading','The Handmaid’s Tale',''),(110,'Energetic','Reading','The Golden Compass',''),(111,'Energetic','Reading','Don Quixote',''),(112,'Energetic','Reading','The Girl He Used to Know',''),(113,'Energetic','Reading','The Second Wife',''),(114,'Energetic','Reading','The Secret Wife',''),(115,'Energetic','Reading','The Storyteller’s Secret',''),(116,'Energetic','Reading','The Lord of the Rings',''),(117,'Happier','Reading','The Help',''),(118,'Happier','Reading','Where\'d You Go Bernadette',''),(119,'Happier','Reading','A Man Called Ove',''),(120,'Happier','Reading','Moby-Dick',''),(121,'Happier','Reading','The Art of Racing in the Rain',''),(122,'Happier','Reading','Anne Of Green Gables',''),(123,'Happier','Reading','Notes From A Small Island',''),(124,'Happier','Reading','Lolita',''),(125,'Calmer','Reading','The Curious Incident of the Dog in the Night',''),(133,'Moody','Reading','The Glass Castle',''),(134,'Moody','Reading','Room',''),(135,'Moody','Reading','The Boy in the Striped Pyjamas',''),(136,'Moody','Reading','The Giver of Stars',''),(137,'Moody','Reading','The Young Widower\'s Handbook',''),(138,'Moody','Reading','The Kite Runner',''),(139,'Moody','Reading','To Kill A Mockingbird',''),(140,'Moody','Reading','The Extraordinary Life of Sam Hell',''),(141,'Relaxed','Reading','Fantastic Mr Fox',''),(142,'Relaxed','Reading','Why Not Me?',''),(143,'Relaxed','Reading','The Snow Child',''),(144,'Relaxed','Reading','How the Penguins Saved Veronica',''),(145,'Relaxed','Reading','The Adventures of Tom Sawyer',''),(146,'Relaxed','Reading','The Girl on the Train',''),(147,'Relaxed','Reading','The Art of Thinking Clearly',''),(148,'Relaxed','Reading','The Little Book of Mindfulness',''),(149,'Calmer','Music','Warm Under the Light - Justin Nozuka','0kP8ZdkJ88g'),(150,'Calmer','Music','Those Nights - Bastille','3eLittIRa8A'),(151,'Calmer','Music','You Were Good to Me - Jeremy Zucker & Chelsea Cutler','ZGNt_UM5x-4'),(152,'Calmer','Music','Highway 5 - UMAGAT','bTRPWm9qndY'),(153,'Calmer','Music','A Sky Full Of Stars - Coldplay','VPRjCeoBqrI'),(154,'Calmer','Music','Gentle Heart - Joshua Hyslop','cTUAxPDVxn8'),(155,'Calmer','Music','All I Want - Kodaline','n6BwAWiHcSg'),(156,'Calmer','Music','Falling Like The Stars - James Arthur','4FbjRsGRHU0'),(157,'Energetic','Music','Runaway (U & I) - Galantis','Tt3F2x0RuZI'),(158,'Energetic','Music','Thunder - Imagine Dragons','GtEvysh1654'),(159,'Energetic','Music','Rapture - Alok & Daniel Blume','8aQEnevF8wE'),(160,'Energetic','Music','You - Galantis','ANIkOH0Hb9Y'),(161,'Energetic','Music','Wake Me Up - Avicii','5y_KJAg8bHI'),(162,'Energetic','Music','The Middle - Jimmy Eat World','rubpIfLPzvU'),(163,'Energetic','Music','Summer Of \'69 - Bryan Adams','eFjjO_lhf9c'),(164,'Energetic','Music','Sunflower - Post Malone, Swae Lee','ApXoWvfEYVU'),(165,'Happier','Music','Down - Jay Sean (ft. Lil Wayne)','ehZECQUvMhE'),(166,'Happier','Music','Viva La Vida - Coldplay','dvgZkm1xWPE'),(167,'Happier','Music','You Don\'t Know Me - Jax Jones (ft. RAYE)','PKB4cioGs98'),(168,'Happier','Music','50 Ways to Say Goodbye - Train','uezMm49xZtE'),(169,'Happier','Music','A Few Good Stories - Brett Kissel and Walk Off The Earth','RgcZ1PARll8'),(170,'Happier','Music','Shut Up and Dance - WALK THE MOON','MGCkEl-6Hfg'),(171,'Happier','Music','Watermelon Sugar - Harry Styles','7-x3uD5z1bQ'),(173,'Moody','Music','Stick Around - Lukas Graham','mmHLkr6yK_4'),(174,'Moody','Music','Home - Michael Bublé','lbSOLBMUvIE'),(175,'Moody','Music','The Scientist - Coldplay','RB-RcX5DS5A'),(176,'Moody','Music','When We Were Young - Adele','Xpc8mAJ_2nM'),(177,'Moody','Music','Lost Stars - Adam Levine','cL4uhaQ58Rk'),(178,'Moody','Music','Grow As We Go - Ben Platt','KM38-goPJEU'),(179,'Moody','Music','Trying My Best - Anson Seabra','6jJD_bXymR0'),(180,'Moody','Music','I See You Everywhere - Eric Chou','dacKE1QVJtU'),(181,'Relaxed','Music','Better Place - Rachel Platten','A6Ovq52kaIw'),(182,'Relaxed','Music','Sweatshirt (Don\'t Let Go) - A N X','UV-xydIde9I'),(183,'Relaxed','Music','True - Spandau Ballet','AR8D2yqgQ1U'),(184,'Relaxed','Music','Golden Train - Justin Nozuka','BoLM0i5Nlvc'),(185,'Relaxed','Music','Vienna - Billy Joel','wccRif2DaGs'),(186,'Relaxed','Music','Simple Little Ballad - Jesse Ruben','XhSZGBmdFrQ'),(187,'Relaxed','Music','Closer - Joshua Radin','cxoyh7RV4Tk'),(188,'Relaxed','Music','Swoon - Gray','gAuUeIz0olM'),(189,'Energetic','Sport','Boxing','boxing'),(190,'Calmer','Sport','Golfing','golf course'),(191,'Calmer','Sport','Hiking','hiking area'),(192,'Happier','Sport','Running','running track'),(193,'Happier','Games','Crossword',''),(194,'Relaxed','Games','Crossword',''),(195,'Energetic','Games','Crossword',''),(196,'Calmer','Games','Crossword',''),(197,'Moody','Games','Crossword','');
/*!40000 ALTER TABLE `suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','benjeff','Ben','123_Ben'),(2,'user','evgeniya','Evgeniya','123_Ben'),(3,'user','bruna','Bruna','123_Ben'),(4,'user','karin','Karin','123_Ben'),(5,'user','marina','Marina','123_Ben'),(6,'user','gordon','Gordon','123_Ben'),(7,'user','user','Anjana','123_Ben');
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

-- Dump completed on 2021-03-26 15:51:56
