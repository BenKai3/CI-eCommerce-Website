CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.5.38

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
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_address` varchar(45) DEFAULT NULL,
  `user_card` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'Katrina','Sanford','1234123412341234'),(2,'Jeannie','Baye','0987098709870987'),(3,'Benjamin','Erkan','1234098712349087'),(4,'Fluffy','Iglesias','908712349871234'),(5,'Jerry','Garcia','123409873456907');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `states_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`states_id`),
  KEY `fk_addresses_states1_idx` (`states_id`),
  CONSTRAINT `fk_addresses_states1` FOREIGN KEY (`states_id`) REFERENCES `states` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'123 rainbow drive',NULL,'Oahu',NULL,NULL,NULL,11),(2,'123 rainbow drive',NULL,'Honolulu',NULL,NULL,NULL,11),(3,'123 rainbow drive',NULL,'Big Island',NULL,NULL,NULL,11),(4,'123 rainbow drive',NULL,'Maui',NULL,NULL,NULL,11),(5,'123 rainbow drive',NULL,'Kauai',NULL,NULL,NULL,11),(6,'123 rainbow drive',NULL,'Molokai',NULL,NULL,NULL,11),(7,'123 rainbow drive',NULL,'Niihau',NULL,NULL,NULL,11),(8,'123 rainbow drive','','Lanai',NULL,NULL,NULL,11),(9,'321 Rainy Daze Rd.',NULL,'Seattle',NULL,NULL,NULL,46),(10,'321 Rainy Daze Rd.',NULL,'Tri-Citeis',NULL,NULL,NULL,46),(11,'321 Rainy Daze Rd.',NULL,'Spokane',NULL,NULL,NULL,46),(12,'321 Rainy Daze Rd.',NULL,'Olympia',NULL,NULL,NULL,46),(13,'321 Rainy Daze Rd.',NULL,'Vancouver',NULL,NULL,NULL,46);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'bosshog@doinit.net','yeauh',NULL,NULL),(2,'bigboi@admin.com','asdfasdf',NULL,NULL),(3,'womanincharge@boss.org','asdfasdf',NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `categoriescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Fire',NULL),(2,'Water',NULL),(3,'Normal',NULL),(4,'Fighting',NULL),(5,'Ground',NULL),(6,'Bug',NULL),(7,'Poison',NULL),(8,'Grass',NULL),(9,'Flying',NULL),(10,'Fairy',NULL),(11,'Electric',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Jerry','Garcia',NULL,NULL),(2,'Jeannie','Baye',NULL,NULL),(3,'Benjamin','Erkan',NULL,NULL),(4,'Katrina','Sanford',NULL,NULL),(5,'Fluffy','Iglesias',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Bulbasaur','9.99'),(2,'Ivysaur','22.67'),(3,'Venusaur','77.89'),(4,'Charmander','88.00'),(5,'Charmeleon','99.99'),(6,'Charizard','123.23'),(7,'Squirtle','987.99'),(8,'Wartortle','234.45'),(9,'Blastoise','678.99'),(10,'Caterpie','0.99'),(11,'Metapod','11.99'),(12,'Butterfree','12.89'),(13,'Weedle','0.98'),(14,'Kakuna','9.90'),(15,'Beedrill','12.90'),(16,'Pidgey','23.23'),(17,'Pidgeotto','34.09'),(18,'Pidgeot','45.56'),(19,'Rattata','23.09'),(20,'Raticate','34.99'),(21,'Spearow','56.56'),(22,'Fearow','.99'),(23,'Ekans','34.44'),(24,'Arbok','67.77'),(25,'Pikachu','12.22'),(26,'Raichu','23.33'),(27,'Sandshrew','33.44'),(28,'Sandslash','44.99'),(29,'Nidoran','22.99'),(30,'Nidorina','99.00'),(31,'Nidoqueen','1.99'),(32,'Nidoran','88.99'),(33,'Nidorino','33.56'),(34,'Nidoking','56.90'),(35,'Clefairy','123.23'),(36,'Clefable','234.34'),(37,'Vulpix','45.55'),(38,'Ninetales','66.90'),(39,'Jigglypuff','33.78'),(40,'Wigglypuff','44.99'),(41,'Zubat','9999.99'),(42,'Golbat','22.22'),(43,'Oddish','77.88'),(44,'Gloom','99.99'),(45,'Vileplume','14.45'),(46,'Paras','556.65'),(47,'Parasect','89.99'),(48,'Venonat','34.34'),(49,'Venomoth','54.45'),(50,'Diglett','76.89'),(51,'Dugtrio','65.65'),(52,'Meowth','54.54'),(53,'Persian','111112.99');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_has_Orders`
--

DROP TABLE IF EXISTS `products_has_Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_has_Orders` (
  `products_product_id` int(11) NOT NULL,
  `Orders_order_id` int(11) NOT NULL,
  PRIMARY KEY (`products_product_id`,`Orders_order_id`),
  KEY `fk_products_has_Orders_Orders1_idx` (`Orders_order_id`),
  KEY `fk_products_has_Orders_products_idx` (`products_product_id`),
  CONSTRAINT `fk_products_has_Orders_Orders1` FOREIGN KEY (`Orders_order_id`) REFERENCES `Orders` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_has_Orders_products` FOREIGN KEY (`products_product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_has_Orders`
--

LOCK TABLES `products_has_Orders` WRITE;
/*!40000 ALTER TABLE `products_has_Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_has_Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `abbreviation` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL',NULL,NULL),(2,'Alaska','AK',NULL,NULL),(3,'Arizona','AZ',NULL,NULL),(4,'Arkansas','AR',NULL,NULL),(5,'California','CA',NULL,NULL),(6,'Colorado','CO',NULL,NULL),(7,'Connecticut','CT',NULL,NULL),(8,'Delaware','DE',NULL,NULL),(9,'Florida','FL',NULL,NULL),(10,'Georgia','GA',NULL,NULL),(11,'Hawaii','HI',NULL,NULL),(12,'Idaho','ID',NULL,NULL),(13,'Illinois','IL',NULL,NULL),(14,'Indiana','IN',NULL,NULL),(15,'Iowa','IA',NULL,NULL),(16,'Kansas','KS',NULL,NULL),(17,'Kentucky','KY',NULL,NULL),(18,'Louisiana','LA',NULL,NULL),(19,'Maine','ME',NULL,NULL),(20,'Maryland','MD',NULL,NULL),(21,'Massachusetts','MA',NULL,NULL),(22,'Michigan','MI','0000-00-00 00:00:00',NULL),(23,'Minnesota','MN',NULL,NULL),(24,'Mississippi','MS',NULL,NULL),(25,'Missouri','MO',NULL,NULL),(26,'Montana','MT',NULL,NULL),(27,'Nebraska','NE',NULL,NULL),(28,'New Hampshire','NH',NULL,NULL),(29,'New Jersey','NJ',NULL,NULL),(30,'New Mexico','NM',NULL,NULL),(31,'New York','NY',NULL,NULL),(32,'North Carolina','NC',NULL,NULL),(33,'North Dakota','ND',NULL,NULL),(34,'Ohio','OH',NULL,NULL),(35,'Oklahoma','OK',NULL,NULL),(36,'Oregon','OR',NULL,NULL),(37,'Pennsylvania','PA',NULL,NULL),(38,'Rhode Island','RI',NULL,NULL),(39,'South Carolina','SC',NULL,NULL),(40,'South Dakota','SD',NULL,NULL),(41,'Tennessee','TN',NULL,NULL),(42,'Texas','TX',NULL,NULL),(43,'Utah','UT',NULL,NULL),(44,'Vermont','VT',NULL,NULL),(45,'Virginia','VA',NULL,NULL),(46,'Washington','WA',NULL,NULL),(47,'West Virginia','WV',NULL,NULL),(48,'Wisconsin','WI',NULL,NULL),(49,'Wyoming','WY',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-08  8:59:25
