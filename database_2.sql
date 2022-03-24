-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amazon
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `address_type`
--

DROP TABLE IF EXISTS `address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_type` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_type`
--

LOCK TABLES `address_type` WRITE;
/*!40000 ALTER TABLE `address_type` DISABLE KEYS */;
INSERT INTO `address_type` VALUES (1,'Home'),(2,'Female');
/*!40000 ALTER TABLE `address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amazon_pay`
--

DROP TABLE IF EXISTS `amazon_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amazon_pay` (
  `amazon_pay_id` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  `Amazon_pay_balance` float NOT NULL DEFAULT '0',
  `Qr_code` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`amazon_pay_id`,`user_id`),
  KEY `buyer_id_idx` (`user_id`),
  CONSTRAINT `fk_amazon_pay_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amazon_pay`
--

LOCK TABLES `amazon_pay` WRITE;
/*!40000 ALTER TABLE `amazon_pay` DISABLE KEYS */;
INSERT INTO `amazon_pay` VALUES ('1341755828@apl',37,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('1493914436@apl',8,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('1701578153@apl',53,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('1747437542@apl',23,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('1959336184@apl',7,1000,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2009347332@apl',48,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2221462945@apl',15,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2421142866@apl',3,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2515828408@apl',59,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2790341119@apl',19,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2846731538@apl',17,2,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('2871314641@apl',36,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3024913051@apl',43,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3274381907@apl',21,7,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3310832234@apl',6,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3502953746@apl',40,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3592817438@apl',1,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3602143316@apl',20,63,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3777386743@apl',29,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3831799944@apl',33,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('3950347548@apl',56,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4108677308@apl',34,71,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4416352806@apl',46,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4488204179@apl',60,870,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4522019968@apl',28,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4763505250@apl',35,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4943832896@apl',27,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('4966500171@apl',11,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('5194082831@apl',5,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('5278973127@apl',4,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('5884807520@apl',47,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('5912556308@apl',49,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6348725833@apl',38,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6389578546@apl',32,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6460246281@apl',50,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6589033205@apl',22,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6789002319@apl',51,560,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('6888468062@apl',26,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('7338902750@apl',45,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('7350331858@apl',58,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('7486556383@apl',24,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('7970894648@apl',44,1200,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8006025469@apl',14,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8149630869@apl',12,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8374410203@apl',25,50,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8378293982@apl',10,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8408957832@apl',52,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8458640525@apl',31,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8496000151@apl',39,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8574765807@apl',54,555,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8691154180@apl',30,55,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8765625173@apl',9,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8776510831@apl',42,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('8937881891@apl',57,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('9109227611@apl',41,58,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('9149457658@apl',2,22,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('9389846647@apl',18,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('9774221804@apl',55,0,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n'),('9844530127@apl',13,500,'https://imgs.search.brave.com/sQAGynG7zniztT33LJ-nymnJ8RdOzZpOd_TIG1JOGtw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcXJfY29kZS9x/cl9jb2RlX1BORzYu/cG5n');
/*!40000 ALTER TABLE `amazon_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amazon_pay_later`
--

DROP TABLE IF EXISTS `amazon_pay_later`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amazon_pay_later` (
  `buyer_id` int NOT NULL,
  `credit_amount` float NOT NULL DEFAULT '0',
  `Expiry_date` date DEFAULT NULL,
  KEY `buyer_id_idx` (`buyer_id`),
  CONSTRAINT `fk_amazon_pay_later_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amazon_pay_later`
--

LOCK TABLES `amazon_pay_later` WRITE;
/*!40000 ALTER TABLE `amazon_pay_later` DISABLE KEYS */;
INSERT INTO `amazon_pay_later` VALUES (3,250,'2022-03-09'),(6,1000,'2022-03-09');
/*!40000 ALTER TABLE `amazon_pay_later` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `buyer_id` int NOT NULL,
  `is_prime` tinyint NOT NULL,
  `prime_expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`buyer_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  CONSTRAINT `fk_buyer_user` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (2,1,'2022-03-09'),(3,1,'2022-03-09'),(4,1,'2022-03-09'),(5,1,'2022-03-09'),(6,1,'2022-03-09'),(7,1,'2022-03-09'),(8,1,'2022-03-09'),(9,1,'2022-03-09'),(10,1,'2022-03-09'),(11,1,'2022-03-09'),(12,1,'2022-03-09'),(13,1,'2022-03-09'),(14,0,NULL),(15,0,NULL);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelled_orders`
--

DROP TABLE IF EXISTS `cancelled_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancelled_orders` (
  `cancelled_orders_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`cancelled_orders_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `fk_cancelled_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelled_orders`
--

LOCK TABLES `cancelled_orders` WRITE;
/*!40000 ALTER TABLE `cancelled_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelled_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_info`
--

DROP TABLE IF EXISTS `card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_info` (
  `buyer_id` int NOT NULL,
  `Card_id` int NOT NULL,
  `Bank_name` varchar(45) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `Expiry_date` date NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `is_default` tinyint NOT NULL,
  PRIMARY KEY (`Card_id`),
  UNIQUE KEY `Card_id_UNIQUE` (`Card_id`),
  UNIQUE KEY `card_number_UNIQUE` (`card_number`),
  KEY `buyer_id_idx` (`buyer_id`),
  CONSTRAINT `fk_card_info_buyer_id` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_info`
--

LOCK TABLES `card_info` WRITE;
/*!40000 ALTER TABLE `card_info` DISABLE KEYS */;
INSERT INTO `card_info` VALUES (2,13,'Allahabad Bank','2963124844864280','2022-03-09','486',0),(13,33,'Union Bank of India','4408037128179710','2022-03-09','454',0),(7,42,'HDFC Bank','4848364548227570','2022-03-09','167',0),(12,61,'Syndicate Bank','8320401876440970','2022-03-09','739',0),(10,63,'Au Small Finance Bank','2532770532881060','2022-03-09','160',0),(9,77,'YES Bank','8243545254950680','2022-03-09','651',0),(3,92,'Canara Bank','9317304900625540','2022-03-09','345',0),(15,95,'ICICI Bank','4624487169885910','2022-03-09','419',0),(14,97,'Central Bank of India','1791955854297230','2022-03-09','882',0),(6,98,'ICICI Bank','5004187411887980','2022-03-09','461',0),(5,104,'Axis Bank ','1378039037628120','2022-03-09','265',0),(8,105,'RBL Bank ','2192229210988700','2022-03-09','424',0),(4,106,'Indian Bank','8005942874908380','2022-03-09','535',0),(11,110,'Bank of Baroda','5741726634885310','2022-03-09','628',0);
/*!40000 ALTER TABLE `card_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Categories_Id` int NOT NULL AUTO_INCREMENT,
  `Categories_name` varchar(100) NOT NULL,
  `Categories_Icon` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Categories_Id`),
  UNIQUE KEY `Categories_name_UNIQUE` (`Categories_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Gift Cards',NULL),(2,'Electronics',NULL),(3,'Camera and Photography',NULL),(4,'Video Games',NULL),(5,'Books',NULL),(6,'Clothing',NULL),(7,'Beauty and Personal Care',NULL),(8,'Home and Kitchen',NULL),(9,'Pet Supplies',NULL),(10,'Sports and Outdoors',NULL),(11,'mobiles',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id_idx` (`state_id`),
  CONSTRAINT `fk_city_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1197 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Visakhapatnam',1),(2,'Vijayawada',1),(3,'Guntur',1),(4,'Nellore',1),(5,'Kurnool',1),(6,'Kakinada',1),(7,'Rajamahendravaram',1),(8,'Kadapa',1),(9,'Tirupati',1),(10,'Anantapuram',1),(11,'Vizianagaram',1),(12,'Eluru',1),(13,'Nandyal',1),(14,'Ongole',1),(15,'Adoni',1),(16,'Madanapalle',1),(17,'Machilipatnam',1),(18,'Tenali',1),(19,'Proddatur',1),(20,'Chittoor',1),(21,'Hindupur',1),(22,'Srikakulam',1),(23,'Bhimavaram',1),(24,'Tadepalligudem',1),(25,'Guntakal',1),(26,'Dharmavaram',1),(27,'Gudivada',1),(28,'Narasaraopet',1),(29,'Kadiri',1),(30,'Tadipatri',1),(31,'Mangalagiri',1),(32,'Chilakaluripet',1),(33,'Aalo (Along)',2),(34,'Anini',2),(35,'Basar',2),(36,'Boleng',2),(37,'Bomdila',2),(38,'Changlang',2),(39,'Daporijo',2),(40,'Deomali',2),(41,'Dirang',2),(42,'Hawai',2),(43,'Itanagar',2),(44,'Jairampur',2),(45,'Khonsa',2),(46,'Koloriang',2),(47,'Longding',2),(48,'Miao',2),(49,'Naharlagun',2),(50,'Namsai',2),(51,'Pasighat',2),(52,'Roing',2),(53,'Rupa',2),(54,'Sagalee',2),(55,'Seppa',2),(56,'Tawang',2),(57,'Tezu',2),(58,'Yingkiong',2),(59,'Ziro',2),(60,'Odalguri',3),(61,'Tangla',3),(62,'Karimganj',3),(63,'Badarpur',3),(64,'Silchar',3),(65,'Lakhipur',3),(66,'Rangia',3),(67,'Palashbari',3),(68,'Guwahati',3),(69,'North Guwahati',3),(70,'Diphu',3),(71,'Dokmoka',3),(72,'Howraghat',3),(73,'Bokajan',3),(74,'Hamren',3),(75,'Donkamokam',3),(76,'Kokrajhar',3),(77,'Gossaigaon',3),(78,'Golaghat',3),(79,'Dergaon',3),(80,'Bokakhat',3),(81,'Sarupathar',3),(82,'Borpathar',3),(83,'Goalpara',3),(84,'Lakhipur',3),(85,'Basugaon',3),(86,'Bijni',3),(87,'Dibrugarh',3),(88,'Naharkatia',3),(89,'Chabua',3),(90,'Haflong',3),(91,'Umrangso',3),(92,'Mahur',3),(93,'Maibang',3),(94,'Tinsukia',3),(95,'Digboi',3),(96,'Margherita',3),(97,'Doomdooma',3),(98,'Mangaldoi',3),(99,'Kharupetia',3),(100,'Namkhola',3),(101,'Duni',3),(102,'Dhubri',3),(103,'Gouripur',3),(104,'Sapatgram',3),(105,'Bilasipara',3),(106,'Chapar',3),(107,'Dhemaji',3),(108,'Silapathar',3),(109,'Nagaon',3),(110,'Kampur',3),(111,'Roha',3),(112,'Doboka',3),(113,'Hojai',3),(114,'Lumding',3),(115,'Lanka',3),(116,'Nalbari',3),(117,'Tihu',3),(118,'Bongaigaon',3),(119,'Abhayapuri',3),(120,'Barpeta',3),(121,'Barpeta Road',3),(122,'Howli',3),(123,'Sarthebari',3),(124,'Pathsala',3),(125,'Sarbhog',3),(126,'Goreswar',3),(127,'Morigaon',3),(128,'Jorhat',3),(129,'Mariani',3),(130,'Teok',3),(131,'Bihpuria',3),(132,'Sivasagar',3),(133,'Amguri',3),(134,'Simaluguri',3),(135,'Sonari',3),(136,'Moranhat',3),(137,'Nazira',3),(138,'Tezpur',3),(139,'Rangapara',3),(140,'Dhekiajuli',3),(141,'Gohpur',3),(142,'Biswanath Chariali',3),(143,'Gohpur',3),(144,'Hailakandi',3),(145,'lala',3),(146,'Siwan',4),(147,'Sitamarhi',4),(148,'Sasaram',4),(149,'Saharsa',4),(150,'Purnia',4),(151,'Patna',4),(152,'Nawada',4),(153,'Muzaffarpur',4),(154,'Munger',4),(155,'Motihari',4),(156,'Kishanganj',4),(157,'Katihar',4),(158,'Jehanabad',4),(159,'Jamalpur',4),(160,'Hajipur',4),(161,'Gaya',4),(162,'Dehri',4),(163,'Darbhanga',4),(164,'Danapur',4),(165,'Chhapra',4),(166,'Buxar',4),(167,'Bihar Sharif',4),(168,'Bhagalpur',4),(169,'Bettiah',4),(170,'Begusarai',4),(171,'Bagaha',4),(172,'Aurangabad',4),(173,'Arrah',4),(174,'Raipur',5),(175,'Bhilai (Bhilai Nagar)',5),(176,'Bilaspur',5),(177,'Korba',5),(178,'Raj Nandgaon',5),(179,'Raigarh',5),(180,'Jagdalpur',5),(181,'Ambikapur',5),(182,'Dhamtari',5),(183,'Chirmiri',5),(184,'Bhatapara',5),(185,'Mahasamund',5),(186,'Dalli-Rajhara',5),(187,'Kawardha',5),(188,'Champa',5),(189,'Naila Janjgir',5),(190,'Kanker',5),(191,'Dongragarh',5),(192,'Tilda Neora',5),(193,'Mungeli',5),(194,'Manendragarh',5),(195,'Kondagaon',5),(196,'Gobranawapara',5),(197,'Bemetara',5),(198,'Baikunthpur',5),(199,'Bicholim',6),(200,'Canacona',6),(201,'Cuncolim',6),(202,'Curchorem',6),(203,'Mapusa',6),(204,'Margao',6),(205,'Mormugao',6),(206,'Panaji',6),(207,'Pernem',6),(208,'Ponda',6),(209,'Quepem',6),(210,'Sanguem',6),(211,'Sanquelim',6),(212,'Valpoi',6),(213,'Ahmedabad',7),(214,'Surat',7),(215,'Vadodara',7),(216,'Rajkot',7),(217,'Bhavnagar',7),(218,'Jamnagar',7),(219,'Junagadh',7),(220,'Gandhinagar',7),(221,'Gandhidham',7),(222,'Anand',7),(223,'Navsari',7),(224,'Morbi',7),(225,'Nadiad',7),(226,'Surendranagar',7),(227,'Bharuch',7),(228,'Mehsana',7),(229,'Bhuj',7),(230,'Porbandar',7),(231,'Palanpur',7),(232,'Valsad',7),(233,'Vapi',7),(234,'Gondal',7),(235,'Veraval',7),(236,'Godhra',7),(237,'Patan',7),(238,'Kalol',7),(239,'Dahod',7),(240,'Botad',7),(241,'Amreli',7),(242,'Deesa',7),(243,'Jetpur',7),(244,'Faridabad (New Township)',8),(245,'Gurgaon',8),(246,'Panipat',8),(247,'Yamunanagar',8),(248,'Rohtak',8),(249,'Hisar',8),(250,'Karnal',8),(251,'Sonipat',8),(252,'Panchkula (Urban Estate)',8),(253,'Ambala Sadar',8),(254,'Bhiwani',8),(255,'Ambala',8),(256,'Sirsa',8),(257,'Bahadurgarh',8),(258,'Jind',8),(259,'Thanesar',8),(260,'Kaithal',8),(261,'Rewari',8),(262,'Palwal',8),(263,'Hansi',8),(264,'Narnaul',8),(265,'Fatehabad',8),(266,'Gohana',8),(267,'Tohana',8),(268,'Narwana',8),(269,'Shimla',9),(270,'Dharamsala',9),(271,'Solan',9),(272,'Mandi',9),(273,'Palampur',9),(274,'Baddi',9),(275,'Nahan',9),(276,'Paonta Sahib',9),(277,'Sundarnagar',9),(278,'Chamba',9),(279,'Una',9),(280,'Kullu',9),(281,'Hamirpur',9),(282,'Bilaspur',9),(283,'Yol Cantonment',9),(284,'Nalagarh',9),(285,'Nurpur',9),(286,'Kangra',9),(287,'Santokhgarh',9),(288,'Mehatpur Basdehra',9),(289,'Shamshi',9),(290,'Parwanoo',9),(291,'Manali',9),(292,'Tira Sujanpur',9),(293,'Ghumarwin',9),(294,'Dalhousie',9),(295,'Rohru',9),(296,'Nagrota Bagwan',9),(297,'Rampur',9),(298,'Jawalamukhi',9),(299,'Jogindernagar',9),(300,'Dera Gopipur',9),(301,'Sarkaghat',9),(302,'Jhakhri',9),(303,'Indora',9),(304,'Bhuntar',9),(305,'Nadaun',9),(306,'Theog',9),(307,'Kasauli Cantonment',9),(308,'Gagret',9),(309,'Chuari Khas',9),(310,'Daulatpur',9),(311,'Sabathu Cantonment',9),(312,'Dalhousie Cantonment',9),(313,'Rajgarh',9),(314,'Arki',9),(315,'Dagshai Cantonment',9),(316,'Seoni',9),(317,'Talai',9),(318,'Jutogh Cantonment',9),(319,'Chaupal',9),(320,'Rewalsar',9),(321,'Bakloh Cantonment',9),(322,'Jubbal',9),(323,'Bhota',9),(324,'Banjar',9),(325,'Naina Devi',9),(326,'Kotkhai',9),(327,'Narkanda',9),(328,'Jamshedpur',10),(329,'Dhanbad [Dhanbad]',10),(330,'Ranchi [Ranchi]',10),(331,'Bokaro Steel City',10),(332,'Deoghar',10),(333,'Phusro',10),(334,'Hazaribag',10),(335,'Giridih',10),(336,'Ramgarh',10),(337,'Medininagar (Daltonganj)',10),(338,'Chirkunda',10),(339,'Jumri Tilaiya',10),(340,'Sahibganj',10),(341,'Saunda',10),(342,'Chaibasa',10),(343,'Lohardaga',10),(344,'Chakradharpur',10),(345,'Madhupur',10),(346,'Gumla',10),(347,'Chatra',10),(348,'Godda',10),(349,'Gumia (Gomia)',10),(350,'Dumka',10),(351,'Garwa',10),(352,'Pakaur',10),(353,'Bengaluru',11),(354,'Hubballi-Dharwad',11),(355,'Mysuru',11),(356,'Kalaburagi',11),(357,'Mangaluru',11),(358,'Belagavi',11),(359,'Davangere',11),(360,'Ballari',11),(361,'Vijayapura',11),(362,'Shimoga',11),(363,'Tumakuru',11),(364,'Raichur',11),(365,'Bidar',11),(366,'Hospet',11),(367,'Gadag-Betageri',11),(368,'Robertsonpet',11),(369,'Hassan',11),(370,'Bhadravati',11),(371,'Chitradurga',11),(372,'Udupi',11),(373,'Kolar',11),(374,'Mandya',11),(375,'Chikmagalur',11),(376,'Gangavati',11),(377,'Bagalkot',11),(378,'Ranebennuru',11),(379,'Thiruvananthapuram',12),(380,'Kozhikode',12),(381,'Kochi',12),(382,'Kollam',12),(383,'Thrissur',12),(384,'Kannur',12),(385,'Alappuzha',12),(386,'Kottayam',12),(387,'Palakkad',12),(388,'Manjeri',12),(389,'Thalassery',12),(390,'Ponnani',12),(391,'Vatakara',12),(392,'Kanhangad',12),(393,'Payyanur',12),(394,'Koyilandy',12),(395,'Parappanangadi',12),(396,'Kalamassery',12),(397,'Neyyattinkara',12),(398,'Tanur',12),(399,'Thrippunithura',12),(400,'Kayamkulam',12),(401,'Malappuram',12),(402,'Thrikkakkara',12),(403,'Wadakkancherry',12),(404,'Nedumangad',12),(405,'Kondotty',12),(406,'Tirurangadi',12),(407,'Tirur',12),(408,'Panoor',12),(409,'Nileshwaram',12),(410,'Kasaragod',12),(411,'Feroke',12),(412,'Kunnamkulam',12),(413,'Ottappalam',12),(414,'Tiruvalla',12),(415,'Thodupuzha',12),(416,'Perinthalmanna',12),(417,'Chalakudy',12),(418,'Payyoli',12),(419,'Koduvally',12),(420,'Mananthavady',12),(421,'Changanassery',12),(422,'Mattanur',12),(423,'Punalur',12),(424,'Nilambur',12),(425,'Cherthala',12),(426,'Pandalam',12),(427,'Sultan Bathery',12),(428,'Maradu',12),(429,'Kottakkal',12),(430,'Taliparamba',12),(431,'Shornur',12),(432,'Kattappana',12),(433,'Mukkam',12),(434,'Iritty',12),(435,'Valanchery',12),(436,'Varkala',12),(437,'Cherpulassery',12),(438,'Chavakkad',12),(439,'Kothamangalam',12),(440,'Pathanamthitta',12),(441,'Attingal',12),(442,'Paravur',12),(443,'Ramanattukara',12),(444,'Mannarkkad',12),(445,'Erattupetta',12),(446,'Kodungallur',12),(447,'Sreekandapuram',12),(448,'Angamaly',12),(449,'Chittur-Thathamangalam',12),(450,'Kalpetta',12),(451,'North Paravur',12),(452,'Haripad',12),(453,'Muvattupuzha',12),(454,'Kottarakara',12),(455,'Kuthuparamba',12),(456,'Adoor',12),(457,'Piravom',12),(458,'Irinjalakuda',12),(459,'Pattambi',12),(460,'Anthoor',12),(461,'Perumbavoor',12),(462,'Ettumanoor',12),(463,'Mavelikkara',12),(464,'Karunagappalli',12),(465,'Eloor',12),(466,'Chengannur',12),(467,'Vaikom',12),(468,'Aluva',12),(469,'Pala',12),(470,'Guruvayur',12),(471,'Koothattukulam',12),(472,'Indore',13),(473,'Bhopal',13),(474,'Jabalpur',13),(475,'Gwalior',13),(476,'Katni',13),(477,'Ujjain',13),(478,'Dewas',13),(479,'Satna',13),(480,'Ratlam',13),(481,'Rewa',13),(482,'Sagar',13),(483,'Singrauli',13),(484,'Burhanpur',13),(485,'Khandwa',13),(486,'Bhind',13),(487,'Chhindwara',13),(488,'Guna',13),(489,'Shivpuri',13),(490,'Vidisha',13),(491,'Chhatarpur',13),(492,'Damoh',13),(493,'Mandsaur',13),(494,'Khargone',13),(495,'Neemuch',13),(496,'Pithampur',13),(497,'Narmadapuram',13),(498,'Itarsi',13),(499,'Sehore',13),(500,'Morena',13),(501,'Betul',13),(502,'Seoni',13),(503,'Datia',13),(504,'Nagda',13),(505,'Dindori',13),(506,'Mumbai',14),(507,'Pune',14),(508,'Nagpur',14),(509,'Thane',14),(510,'Pimpri-Chinchwad',14),(511,'Nashik',14),(512,'Kalyan-Dombivli',14),(513,'Vasai-Virar City MC',14),(514,'Aurangabad',14),(515,'Navi Mumbai',14),(516,'Solapur',14),(517,'Mira-Bhayandar',14),(518,'Bhiwandi-Nizampur MC',14),(519,'Amravati',14),(520,'Nanded Waghala',14),(521,'Kolhapur',14),(522,'Ulhasnagar',14),(523,'Sangli-Miraj-Kupwad',14),(524,'Malegaon',14),(525,'Jalgaon',14),(526,'Akola',14),(527,'Latur',14),(528,'Dhule',14),(529,'Ahmednagar',14),(530,'Chandrapur',14),(531,'Parbhani',14),(532,'Ichalkaranji',14),(533,'Jalna',14),(534,'Ambarnath',14),(535,'Bhusawal',14),(536,'Panvel',14),(537,'Badlapur',14),(538,'Beed',14),(539,'Gondia',14),(540,'Satara',14),(541,'Barshi',14),(542,'Yavatmal',14),(543,'Achalpur',14),(544,'Osmanabad',14),(545,'Nandurbar',14),(546,'Wardha',14),(547,'Udgir',14),(548,'Hinganghat',14),(549,'Andro',15),(550,'Bishnupur',15),(551,'Chingangbam Leikai',15),(552,'Heingang',15),(553,'Heirok',15),(554,'Hill Town',15),(555,'Imphal',15),(556,'Jiribam',15),(557,'Kakching',15),(558,'Kakching Khunou',15),(559,'Kangpokpi',15),(560,'Khongman',15),(561,'Khurai Sajor Leikai',15),(562,'Kiyamgei',15),(563,'Kshetrigao',15),(564,'Kumbi',15),(565,'Kwakta',15),(566,'Laipham Siphai',15),(567,'Lairikyengbam Leikai',15),(568,'Lamjaotongba',15),(569,'Lamlai',15),(570,'Lamsang (Lamshang)',15),(571,'Langjing',15),(572,'Lilong (Thoubal)',15),(573,'Lilong (Imphal West)',15),(574,'Luwangsangbam',15),(575,'Mayang Imphal',15),(576,'Moirang',15),(577,'Moreh',15),(578,'Nambol',15),(579,'Naoriya Pakhanglakpa',15),(580,'Ningthoukhong',15),(581,'Oinam',15),(582,'Porompat',15),(583,'Rengkai',15),(584,'Sagolband',15),(585,'Samurou',15),(586,'Sekmai Bazar',15),(587,'Sikhong Sekmai',15),(588,'Sugnu',15),(589,'Takyel Mapal',15),(590,'Tamenglong',15),(591,'Thongju',15),(592,'Thongkhong Laxmi Bazar',15),(593,'Thoubal',15),(594,'Torban (Kshetri Leikai)',15),(595,'Ukhrul',15),(596,'Wangjing',15),(597,'Wangoi',15),(598,'Yairipok',15),(599,'Zenhang Lamka',15),(600,'Baghmara',16),(601,'Cherrapunjee (Cherrapunji)',16),(602,'Jowai',16),(603,'Lawsohtun',16),(604,'Madanriting (Madanrting)',16),(605,'Mairang',16),(606,'Mawlai',16),(607,'Mawpat',16),(608,'Nongkseh',16),(609,'Nongmynsong',16),(610,'Nongpoh',16),(611,'Nongstoin',16),(612,'Nongthymmai',16),(613,'Pynthormukhrah (Pynthorumkhrah)',16),(614,'Resubelpara',16),(615,'Shillong',16),(616,'Shillong Cantonment',16),(617,'Tura',16),(618,'Umlyngka',16),(619,'Umpling',16),(620,'Umroi',16),(621,'Williamnagar',16),(622,'Aizawl',17),(623,'Bairabi',17),(624,'Biate',17),(625,'Champhai',17),(626,'Darlawn',17),(627,'Hnahthial',17),(628,'Khawhai',17),(629,'Khawzawl',17),(630,'Kolasib',17),(631,'Lawngtlai',17),(632,'Lengpui',17),(633,'Lunglei',17),(634,'Mamit',17),(635,'N. Kawnpui',17),(636,'North Vanlaiphai',17),(637,'Saiha',17),(638,'Sairang',17),(639,'Saitual',17),(640,'Serchhip',17),(641,'Thenzawl',17),(642,'Tlabung',17),(643,'Vairengte',17),(644,'Zawlnuam',17),(645,'Changtongya',18),(646,'Chumukedima',18),(647,'Dimapur',18),(648,'Diphupar \'A\'',18),(649,'Jalukie',18),(650,'Kiphire',18),(651,'Kohima',18),(652,'Kohima Village',18),(653,'Kuda',18),(654,'Longleng',18),(655,'Medziphema',18),(656,'Mokokchung',18),(657,'Mon Town',18),(658,'Naginimora',18),(659,'Peren',18),(660,'Pfutsero',18),(661,'Phek',18),(662,'Puranabazar \'A\'',18),(663,'Rangapahar',18),(664,'Satakha Hq.',18),(665,'Tseminyu',18),(666,'Tsudikong (13th Mile Tuli Paper Mill)',18),(667,'Tuensang',18),(668,'Tuli',18),(669,'Wokha',18),(670,'Zunheboto',18),(671,'Bhubaneswar',19),(672,'Cuttack',19),(673,'Raurkela (Rourkela)',19),(674,'Brahmapur (Berhampur)',19),(675,'Sambalpur',19),(676,'Puri',19),(677,'Baleshwar (Balasore)',19),(678,'Bhadrak',19),(679,'Baripada',19),(680,'Balangir',19),(681,'Jharsuguda',19),(682,'Jaypur',19),(683,'Bargarh',19),(684,'Brajarajnagar',19),(685,'Rayagada',19),(686,'Bhawanipatna',19),(687,'Paradip',19),(688,'Dhenkanal',19),(689,'Barbil (Bada Barabil)',19),(690,'Jatani',19),(691,'Kendujhar (Kendujhargarh)',19),(692,'Byasanagar',19),(693,'Rajagangapur',19),(694,'Sunabeda',19),(695,'Koraput',19),(696,'Ludhiana',20),(697,'Amritsar',20),(698,'Jalandhar',20),(699,'Patiala',20),(700,'Bathinda',20),(701,'Hoshiarpur',20),(702,'Mohali',20),(703,'Batala',20),(704,'Pathankot',20),(705,'Moga',20),(706,'Abohar',20),(707,'Malerkotla',20),(708,'Khanna',20),(709,'Phagwara',20),(710,'Muktasar',20),(711,'Barnala',20),(712,'Rajpura',20),(713,'Firozpur',20),(714,'Kapurthala',20),(715,'Sunam',20),(716,'Jaipur',21),(717,'Jodhpur',21),(718,'Kota',21),(719,'Bikaner',21),(720,'Ajmer',21),(721,'Udaipur',21),(722,'Bhilwara',21),(723,'Alwar',21),(724,'Bharatpur',21),(725,'Ganganagar',21),(726,'Sikar',21),(727,'Pali',21),(728,'Tonk',21),(729,'Kishangarh',21),(730,'Beawar',21),(731,'Hanumangarh',21),(732,'Dhaulpur',21),(733,'Gangapur City',21),(734,'Sawai Madhopur',21),(735,'Churu',21),(736,'Jhunjhunu',21),(737,'Baran',21),(738,'Chittaurgarh',21),(739,'Makrana',21),(740,'Nagaur',21),(741,'Gangtok (incl. Upper Tadong)',22),(742,'Gyalshing',22),(743,'Jorethang',22),(744,'Mangan',22),(745,'Namchi',22),(746,'Nayabazar',22),(747,'Rangpo',22),(748,'Rhenak (Rhenock)',22),(749,'Singtam',22),(750,'Chennai',23),(751,'Coimbatore',23),(752,'Madurai',23),(753,'Salem',23),(754,'Tiruppur',23),(755,'Tiruchirappalli',23),(756,'Vellore',23),(757,'Tirunelveli',23),(758,'Erode',23),(759,'Thoothukkudi',23),(760,'Dindigul',23),(761,'Thanjavur',23),(762,'Hosur',23),(763,'Sivakasi',23),(764,'Karur',23),(765,'Udhagamandalam',23),(766,'Ranipet',23),(767,'Nagercoil',23),(768,'Kanchipuram',23),(769,'Kumarapalayam',23),(770,'Karaikkudi',23),(771,'Neyveli',23),(772,'Cuddalore',23),(773,'Kumbakonam',23),(774,'Tiruvannamalai',23),(775,'Pollachi',23),(776,'Rajapalayam',23),(777,'Gudiyatham',23),(778,'Pudukkottai',23),(779,'Vaniyambadi',23),(780,'Ambur',23),(781,'Nagapattinam',23),(782,'Achampet',24),(783,'Adilabad',24),(784,'Allipur',24),(785,'Ameenapur',24),(786,'Annaram',24),(787,'Armur (Armoor)',24),(788,'Asifabad',24),(789,'Atmakur',24),(790,'Bachpalle',24),(791,'Badangpet',24),(792,'Badepalle',24),(793,'Ballepalle',24),(794,'Bandlaguda (Jagir)',24),(795,'Banswada',24),(796,'Bellampalle',24),(797,'Bhadrachalam',24),(798,'Bhainsa',24),(799,'Bhanur',24),(800,'Bhimaram',24),(801,'Bhongir',24),(802,'Bhupalpalle',24),(803,'Bibinagar',24),(804,'Bodhan',24),(805,'Boduppal',24),(806,'Bollaram (Bolarum)',24),(807,'Bonthapalle',24),(808,'Boyapalle',24),(809,'Chandur',24),(810,'Chegunta',24),(811,'Chennur',24),(812,'Chinnachintakunta',24),(813,'Chitkul',24),(814,'Chityala',24),(815,'Choutuppal',24),(816,'Chunchupalle',24),(817,'Dasnapur',24),(818,'Devapur',24),(819,'Devarakonda',24),(820,'Dharmaram (P.B)',24),(821,'Dornakal',24),(822,'Dundigal',24),(823,'Eddumailaram',24),(824,'Enumamula',24),(825,'Farooqnagar',24),(826,'Gadwal',24),(827,'Gajwel',24),(828,'Garimellapadu',24),(829,'Ghanpur',24),(830,'Ghanpur Station',24),(831,'Ghatkesar',24),(832,'Gorrekunta',24),(833,'Hyderabad',24),(834,'Ibrahimpatnam (Bagath)',24),(835,'Ichoda',24),(836,'Isnapur',24),(837,'Jadcherla',24),(838,'Jagtial',24),(839,'Jainoor',24),(840,'Jallaram',24),(841,'Jangaon',24),(842,'Jawaharnagar',24),(843,'Jillalguda (Jillelguda)',24),(844,'Jogipet',24),(845,'Kadipikonda',24),(846,'Kagaznagar (Kaghaznagar)',24),(847,'Kalwakurthy',24),(848,'Kamalapuram',24),(849,'Kamareddy',24),(850,'Karimnagar',24),(851,'Kasipet',24),(852,'Khammam',24),(853,'Khanapuram Haveli',24),(854,'Kismatpur',24),(855,'Kodad',24),(856,'Kompalle',24),(857,'Kondamallapalle',24),(858,'Koratla',24),(859,'Kothagudem',24),(860,'Kothakota',24),(861,'Kothapet',24),(862,'Kothur',24),(863,'Kyathampalle',24),(864,'Laxmidevipalle',24),(865,'Luxettipet',24),(866,'Madhira',24),(867,'Mahabubabad',24),(868,'Mahbubnagar (Mahabubnagar)',24),(869,'Mamnoor',24),(870,'Mancherial',24),(871,'Mandamarri',24),(872,'Manugur',24),(873,'Medak',24),(874,'Medchal',24),(875,'Medipalle',24),(876,'Meerpet',24),(877,'Metpalle',24),(878,'Miryalaguda',24),(879,'Muthangi',24),(880,'Nagaram',24),(881,'Nagarkurnool',24),(882,'Nakrekal',24),(883,'Nalgonda',24),(884,'Narayankhed',24),(885,'Narayanpet',24),(886,'Narsampet',24),(887,'Narsapur',24),(888,'Narsingi',24),(889,'Naspur',24),(890,'Navandgi',24),(891,'Nirmal',24),(892,'Nizamabad',24),(893,'Omerkhan Daira',24),(894,'Osmania University',24),(895,'Palakurthy',24),(896,'Palwancha',24),(897,'Peddapalle',24),(898,'Peerzadguda',24),(899,'Pochampalle (Bhoodan Pochampally)',24),(900,'Pothreddipalle',24),(901,'Raghunathpur',24),(902,'Ramachandrapuram BHEL Township',24),(903,'Ramagundam',24),(904,'Ramannapeta',24),(905,'Ratnapur',24),(906,'Rekurthi',24),(907,'Sadasivpet',24),(908,'Sangareddy (Sangareddi)',24),(909,'Sarapaka',24),(910,'Sathupalle',24),(911,'Secunderabad',24),(912,'Shamshabad',24),(913,'Shankarampet A',24),(914,'Shivunipalle',24),(915,'Siddipet',24),(916,'Siddipet',24),(917,'Singapur',24),(918,'Sircilla',24),(919,'Soanpet',24),(920,'Suryapet',24),(921,'Tandur',24),(922,'Tangapur',24),(923,'Teegalpahad',24),(924,'Thallapalle',24),(925,'Thimmapur',24),(926,'Thorrur',24),(927,'Turkayamjal',24),(928,'Utnur',24),(929,'Vatwarlapalle',24),(930,'Vemulawada R',24),(931,'Vicarabad (Vikarabad)',24),(932,'Vijayapuri North',24),(933,'Wanaparthy',24),(934,'Warangal',24),(935,'Yadagirigutta',24),(936,'Yellandu',24),(937,'Yellareddy',24),(938,'Yenugonda',24),(939,'Agartala',25),(940,'Dharmanagar',25),(941,'Udaipur',25),(942,'Kailashahar',25),(943,'Bishalgarh',25),(944,'Teliamura',25),(945,'Khowai',25),(946,'Belonia',25),(947,'Melaghar',25),(948,'Mohanpur',25),(949,'Ambassa',25),(950,'Ranirbazar',25),(951,'Santirbazar',25),(952,'Kumarghat',25),(953,'Sonamura',25),(954,'Panisagar',25),(955,'Amarpur',25),(956,'Jirania',25),(957,'Kamalpur',25),(958,'Sabroom',25),(959,'Kanpur',26),(960,'Lucknow',26),(961,'Ghaziabad',26),(962,'Agra',26),(963,'Meerut',26),(964,'Varanasi',26),(965,'Prayagraj',26),(966,'Bareilly',26),(967,'Aligarh',26),(968,'Moradabad',26),(969,'Saharanpur',26),(970,'Gorakhpur',26),(971,'Noida',26),(972,'Firozabad',26),(973,'Jhansi',26),(974,'Muzaffarnagar',26),(975,'Mathura ',26),(976,'Vrindavan',26),(977,'Budaun',26),(978,'Rampur',26),(979,'Shahjahanpur',26),(980,'Farrukhabad-cum-Fategarh',26),(981,'Faizabad',26),(982,'Ayodhya',26),(983,'Maunath Bhanjan',26),(984,'Hapur',26),(985,'Ayodhya',26),(986,'Etawah',26),(987,'Mirzapur',26),(988,'Bulandshahr',26),(989,'Sambhal',26),(990,'Amroha',26),(991,'Hardoi',26),(992,'Fatehpur',26),(993,'Raebareli',26),(994,'Orai',26),(995,'Sitapur',26),(996,'Bahraich',26),(997,'Modinagar',26),(998,'Unnao',26),(999,'Jaunpur',26),(1000,'Lakhimpur',26),(1001,'Hathras',26),(1002,'Banda',26),(1003,'Pilibhit',26),(1004,'Barabanki',26),(1005,'Khurja',26),(1006,'Gonda',26),(1007,'Mainpuri',26),(1008,'Lalitpur',26),(1009,'Etah',26),(1010,'Deoria',26),(1011,'Ujhani',26),(1012,'Ghazipur',26),(1013,'Sultanpur',26),(1014,'Azamgarh',26),(1015,'Bijnor',26),(1016,'Sahaswan',26),(1017,'Basti',26),(1018,'Chandausi',26),(1019,'Akbarpur',26),(1020,'Ballia',26),(1021,'Tanda',26),(1022,'Greater Noida',26),(1023,'Shikohabad',26),(1024,'Shamli',26),(1025,'Awagarh',26),(1026,'Kasganj',26),(1027,'Dehradun',27),(1028,'Haridwar',27),(1029,'Roorkee',27),(1030,'Haldwani',27),(1031,'Rudrapur',27),(1032,'Kashipur',27),(1033,'Rishikesh',27),(1034,'Pithoragarh',27),(1035,'Ramnagar',27),(1036,'Kichha',27),(1037,'Manglaur',27),(1038,'Jaspur',27),(1039,'Kotdwara',27),(1040,'Nainital',27),(1041,'Almora',27),(1042,'Mussoorie',27),(1043,'Sitarganj',27),(1044,'Bazpur',27),(1045,'Pauri',27),(1046,'Tehri',27),(1047,'Nagla',27),(1048,'Laksar',27),(1049,'Chamoli Gopeshwar',27),(1050,'Umru Khurd',27),(1051,'Srinagar',27),(1052,'Kolkata',28),(1053,'Asansol',28),(1054,'Siliguri',28),(1055,'Durgapur',28),(1056,'Bardhaman',28),(1057,'Malda',28),(1058,'Baharampur',28),(1059,'Habra',28),(1060,'Kharagpur',28),(1061,'Shantipur',28),(1062,'Dankuni',28),(1063,'Dhulian',28),(1064,'Ranaghat',28),(1065,'Haldia',28),(1066,'Raiganj',28),(1067,'Krishnanagar',28),(1068,'Nabadwip',28),(1069,'Medinipur',28),(1070,'Jalpaiguri',28),(1071,'Balurghat',28),(1072,'Basirhat',28),(1073,'Bankura',28),(1074,'Chakdaha',28),(1075,'Darjeeling',28),(1076,'Alipurduar',28),(1077,'Purulia',28),(1078,'Jangipur',28),(1079,'Bolpur',28),(1080,'Bangaon',28),(1081,'Cooch Behar',28),(1082,'Aberdeen',29),(1083,'Bumlitan',29),(1084,'Garacharma',29),(1085,'Garacherama',29),(1086,'Haddo',29),(1087,'Hope Town',29),(1088,'Jangli Ghāt',29),(1089,'Janglighāt',29),(1090,'Namūnaghar',29),(1091,'Port Blair',29),(1092,'Port Bleras',29),(1093,'Portus Blairensis',29),(1094,'Protheroepu',29),(1095,'Protheroepur',29),(1096,'Shadipur',29),(1097,'Bahlana',30),(1098,'Bahlolpur',30),(1099,'Dariya',30),(1100,'Hala Mājra',30),(1101,'Jhāmpur',30),(1102,'Kaimbwāla',30),(1103,'Khoda Jassu',30),(1104,'Kursan',30),(1105,'Kānsil',30),(1106,'Kūjheri',30),(1107,'Madanpur',30),(1108,'Mahla Majra',30),(1109,'Malak',30),(1110,'Moloia',30),(1111,'Mārīwālā Town',30),(1112,'Raj Bhavan Haryana',30),(1113,'Raj Bhavan Punjab',30),(1114,'Rāipur',30),(1115,'Sangāriwāla',30),(1116,'Sarangpur',30),(1117,'Dadhel',31),(1118,'Dādra',31),(1119,'Damān (Damão)',31),(1120,'Diu',31),(1121,'Kachigam',31),(1122,'Masat',31),(1123,'Naroli',31),(1124,'Samarvarni',31),(1125,'Silvassa (incl. Āmli)',31),(1126,'Najafgarh',32),(1127,'Narela',32),(1128,'New Delhi',32),(1129,'Sultanpur Majra',32),(1130,'Kirari Suleman Nagar',32),(1131,'Bhalswa Jahangir Pur',32),(1132,'Nangloi',32),(1133,'Karawal Nagar',32),(1134,'Dallo Pura',32),(1135,'Delhi Cantonment',32),(1136,'Deoli',32),(1137,'Gokal Pur',32),(1138,'Mustafabad',32),(1139,'Hastsal',32),(1140,'Burari',32),(1141,'Gharoli',32),(1142,'Chilla Saroda Bangar',32),(1143,'Taj Pul',32),(1144,'Jaffrabad',32),(1145,'Puth Kalan',32),(1146,'Mandoli',32),(1147,'Anantnag',33),(1148,'Badgam',33),(1149,'Bandipore (Bandipora)',33),(1150,'Baramula (Baramulla)',33),(1151,'Doda',33),(1152,'Ganderbal',33),(1153,'Jammu',33),(1154,'Kathua',33),(1155,'Kishtwar',33),(1156,'Kulgam',33),(1157,'Kupwara',33),(1158,'Pulwama',33),(1159,'Punch (Poonch)',33),(1160,'Rajouri',33),(1161,'Ramban',33),(1162,'Reasi',33),(1163,'Samba',33),(1164,'Shupiyan (Shopian)',33),(1165,'Srinagar',33),(1166,'Udhampur',33),(1167,'Amini',34),(1168,'Andrott',34),(1169,'Kadmat',34),(1170,'Kalpeni',34),(1171,'Kavaratti',34),(1172,'Minicoy',34),(1173,'Abishegapakkam',35),(1174,'Akkaraivattam',35),(1175,'Ambagarathur',35),(1176,'Aranganur',35),(1177,'Ariyankuppam',35),(1178,'Arumbarthapuram',35),(1179,'Bahoor',35),(1180,'Bommayarpalayam',35),(1181,'Botanical Garden',35),(1182,'Calapet',35),(1183,'Dhanvantry Nagar',35),(1184,'Dharmapuram',35),(1185,'Embalam',35),(1186,'Irumbai',35),(1187,'Karaikal',35),(1188,'Karaikal Bazaar',35),(1189,'Karaikalmedu',35),(1190,'Karayamputhur',35),(1191,'Karikalambakkam',35),(1192,'Kariyamanikam',35),(1193,'Chuglamsar',36),(1194,'Kargil',36),(1195,'Leh',36),(1196,'Spituk',36);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_details` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_no_UNIQUE` (`phone_no`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `fk_contact_details_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES (2,2,'+91','2681452253'),(3,3,'+91','6319508791'),(4,4,'+91','5012458917'),(5,5,'+91','1352525809'),(6,6,'+91','2430347969'),(7,7,'+91','1567946440'),(8,8,'+91','3894582493'),(9,9,'+91','5407481249'),(10,10,'+91','8316517374'),(11,11,'+91','4998649806'),(12,12,'+91','9307340848'),(13,13,'+91','5882505323'),(14,14,'+91','3525984985'),(15,15,'+91','8946974410'),(17,17,'+91','8807669090'),(18,18,'+91','2851261581'),(19,19,'+91','3116443133'),(20,20,'+91','5499060842'),(21,21,'+91','4861233708'),(22,22,'+91','5101927304'),(23,23,'+91','3378316359'),(24,24,'+91','2475691293'),(25,25,'+91','7405417019'),(26,26,'+91','6453264084'),(27,27,'+91','2056305639'),(28,28,'+91','2081664099'),(29,29,'+91','3514491316'),(30,30,'+91','3180898731'),(31,31,'+91','9617113237'),(32,32,'+91','2833481582'),(33,33,'+91','1179677569'),(34,34,'+91','6036974958'),(35,35,'+91','5668449007'),(36,36,'+91','2886540324'),(37,37,'+91','2936946579'),(38,38,'+91','8547497058'),(39,39,'+91','1171973667'),(40,40,'+91','7633356310'),(41,41,'+91','3241999479'),(42,42,'+91','9986694531'),(43,43,'+91','2097376290'),(44,44,'+91','5000096438'),(45,45,'+91','4371135394'),(46,46,'+91','3741265824'),(47,47,'+91','1247749403'),(48,48,'+91','6466862056'),(49,49,'+91','3072785927'),(50,50,'+91','7141496760'),(51,51,'+91','9376043960'),(52,52,'+91','4337719099'),(53,53,'+91','8294302122'),(54,54,'+91','1532480131'),(55,55,'+91','8443497425'),(56,56,'+91','1631951850'),(57,57,'+91','2903209755'),(58,58,'+91','8546069277'),(59,59,'+91','6173120423'),(60,60,'+91','5335622346');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina Faso'),(28,'Burundi'),(29,'Côte d-voire'),(30,'Cabo Verde'),(31,'Cambodia'),(32,'Cameroon'),(33,'Canada'),(34,'Central African Republic'),(35,'Chad'),(36,'Chile'),(37,'China'),(38,'Colombia'),(39,'Comoros'),(40,'Congo (Congo-Brazzaville)'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czechia (Czech Republic)'),(46,'Democratic Republic of the Congo'),(47,'Denmark'),(48,'Djibouti'),(49,'Dominica'),(50,'Dominican Republic'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Eswatini (fmr. \"Swaziland\")'),(58,'Ethiopia'),(59,'Fiji'),(60,'Finland'),(61,'France'),(62,'Gabon'),(63,'Gambia'),(64,'Georgia'),(65,'Germany'),(66,'Ghana'),(67,'Greece'),(68,'Grenada'),(69,'Guatemala'),(70,'Guinea'),(71,'Guinea-Bissau'),(72,'Guyana'),(73,'Haiti'),(74,'Holy See'),(75,'Honduras'),(76,'Hungary'),(77,'Iceland'),(78,'India'),(79,'Indonesia'),(80,'Iran'),(81,'Iraq'),(82,'Ireland'),(83,'Israel'),(84,'Italy'),(85,'Jamaica'),(86,'Japan'),(87,'Jordan'),(88,'Kazakhstan'),(89,'Kenya'),(90,'Kiribati'),(91,'Kuwait'),(92,'Kyrgyzstan'),(93,'Laos'),(94,'Latvia'),(95,'Lebanon'),(96,'Lesotho'),(97,'Liberia'),(98,'Libya'),(99,'Liechtenstein'),(100,'Lithuania'),(101,'Luxembourg'),(102,'Madagascar'),(103,'Malawi'),(104,'Malaysia'),(105,'Maldives'),(106,'Mali'),(107,'Malta'),(108,'Marshall Islands'),(109,'Mauritania'),(110,'Mauritius'),(111,'Mexico'),(112,'Micronesia'),(113,'Moldova'),(114,'Monaco'),(115,'Mongolia'),(116,'Montenegro'),(117,'Morocco'),(118,'Mozambique'),(119,'Myanmar (formerly Burma)'),(120,'Namibia'),(121,'Nauru'),(122,'Nepal'),(123,'Netherlands'),(124,'New Zealand'),(125,'Nicaragua'),(126,'Niger'),(127,'Nigeria'),(128,'North Korea'),(129,'North Macedonia'),(130,'Norway'),(131,'Oman'),(132,'Pakistan'),(133,'Palau'),(134,'Palestine State'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russia'),(145,'Rwanda'),(146,'Saint Kitts and Nevis'),(147,'Saint Lucia'),(148,'Saint Vincent and the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome and Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'South Korea'),(164,'South Sudan'),(165,'Spain'),(166,'Sri Lanka'),(167,'Sudan'),(168,'Suriname'),(169,'Sweden'),(170,'Switzerland'),(171,'Syria'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Timor-Leste'),(176,'Togo'),(177,'Tonga'),(178,'Trinidad and Tobago'),(179,'Tunisia'),(180,'Turkey'),(181,'Turkmenistan'),(182,'Tuvalu'),(183,'Uganda'),(184,'Ukraine'),(185,'United Arab Emirates'),(186,'United Kingdom'),(187,'United States of America'),(188,'Uruguay'),(189,'Uzbekistan'),(190,'Vanuatu'),(191,'Venezuela'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),(195,'Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_questions`
--

DROP TABLE IF EXISTS `customer_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_questions` (
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `question_asked` date NOT NULL,
  `Likes` int NOT NULL DEFAULT '0',
  `unlike` int NOT NULL DEFAULT '0',
  KEY `user_id_idx` (`user_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_customer_questions_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`),
  CONSTRAINT `fk_customer_questions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_questions`
--

LOCK TABLES `customer_questions` WRITE;
/*!40000 ALTER TABLE `customer_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_reviews_type`
--

DROP TABLE IF EXISTS `customer_reviews_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_reviews_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `review_name` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `buyer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  CONSTRAINT `fk_customer_reviews_type_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `fk_customer_reviews_type_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_reviews_type`
--

LOCK TABLES `customer_reviews_type` WRITE;
/*!40000 ALTER TABLE `customer_reviews_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_reviews_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_product_rating` AFTER INSERT ON `customer_reviews_type` FOR EACH ROW BEGIN
    DECLARE new_rating integer;
    DECLARE review_count_old integer;
    Select review_count into review_count_old
    From product where product_id = new.product_id;
    
    Update product
    SET 
    review_count = review_count_old + 1,
    rating =((rating*review_count_old)+new_rating)/(review_coount_old +1)
    where product_id = new.product_id;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `discount_name` varchar(50) NOT NULL,
  `product_id` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `discount_exp_date` date NOT NULL,
  PRIMARY KEY (`discount_id`),
  UNIQUE KEY `discount_name_UNIQUE` (`discount_name`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_discount_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `gender_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `‌voice_id` int NOT NULL,
  `date` date NOT NULL,
  `seller_id` int NOT NULL,
  `buyer_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`‌voice_id`,`order_id`),
  KEY `seller_id_idx` (`seller_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `fk_invoice_buyer_id` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `fk_invoice_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_invoice_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_details`
--

DROP TABLE IF EXISTS `kyc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `Aadhar_number` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Aadhar_number_UNIQUE` (`Aadhar_number`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `fk_KYC_details_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_details`
--

LOCK TABLES `kyc_details` WRITE;
/*!40000 ALTER TABLE `kyc_details` DISABLE KEYS */;
INSERT INTO `kyc_details` VALUES (1,1,'920202845779'),(2,2,'999880763882'),(3,3,'965235779275'),(4,4,'954049259950'),(5,5,'963619696967'),(6,6,'929211664565'),(7,7,'923934789747'),(8,8,'989597616685'),(9,9,'981673086989'),(10,10,'944888544676'),(11,11,'926964743122'),(12,12,'927520961842'),(13,13,'929606889080'),(14,14,'957271538965'),(15,15,'980554732031'),(17,17,'982014352250'),(18,18,'906745588340'),(19,19,'951420099278'),(20,20,'907468976315'),(21,21,'979774524637'),(22,22,'970119285595'),(23,23,'998038974766'),(24,24,'953506241974'),(25,25,'910897139769'),(26,26,'987158124013'),(27,27,'962676553711'),(28,28,'963758278050'),(29,29,'973983154056'),(30,30,'971347365414'),(31,31,'903526781851'),(32,32,'911013526082'),(33,33,'948771091239'),(34,34,'928564377080'),(35,35,'905056096316'),(36,36,'980797950126'),(37,37,'963399329330'),(38,38,'900640340879'),(39,39,'923178176450'),(40,40,'955013711285'),(41,41,'933198436257'),(42,42,'964694172158'),(43,43,'991378663636'),(44,44,'965826992080'),(45,45,'921021233455'),(46,46,'911984328908'),(47,47,'973484872249'),(48,48,'962584943424'),(49,49,'955164413394'),(50,50,'942531184262'),(51,51,'923420954869'),(52,52,'966114038923'),(53,53,'972071802367'),(54,54,'979085161012'),(55,55,'993741432300'),(56,56,'923029820970'),(57,57,'958386441594'),(58,58,'986854905785'),(59,59,'969827371055'),(60,60,'964093576331');
/*!40000 ALTER TABLE `kyc_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `buyer_id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(10) NOT NULL,
  `payment_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  KEY `payment_id_idx` (`payment_id`),
  CONSTRAINT `fk_order_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `fk_order_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment_details` (`Payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `fk_order_history_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `Quantity` int NOT NULL,
  `tax` float NOT NULL,
  `Total Price` float NOT NULL,
  `Delivery_Date` date NOT NULL,
  `delivery_address_id` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `order_id_idx` (`order_id`),
  KEY `product_id_idx` (`product_id`),
  KEY `adress_id_idx` (`delivery_address_id`),
  CONSTRAINT `fk_order_product_adress` FOREIGN KEY (`delivery_address_id`) REFERENCES `user_address` (`User_address_ID`),
  CONSTRAINT `fk_order_product_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_order_product_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `Payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(45) NOT NULL,
  `amount` float NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`Payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_id` int NOT NULL AUTO_INCREMENT,
  `Product_name` varchar(200) NOT NULL,
  `Categories_Id` int NOT NULL,
  `Sub_categories_Id` int NOT NULL,
  `seller_id` int DEFAULT NULL,
  `review_count` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`Product_id`),
  KEY `Categories_Id_idx` (`Categories_Id`),
  KEY `Sub_categories_Id_idx` (`Sub_categories_Id`),
  KEY `seller_id_idx` (`seller_id`),
  CONSTRAINT `fk_product_Categories_Id` FOREIGN KEY (`Categories_Id`) REFERENCES `categories` (`Categories_Id`),
  CONSTRAINT `fk_product_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`),
  CONSTRAINT `fk_product_Sub_categories_Id` FOREIGN KEY (`Sub_categories_Id`) REFERENCES `sub_categories` (`Sub_categories_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Acer Aspire 5',2,9,71,0,0),(2,'Maus I: A Survivors Tale: My Father Bleeds History',5,44,72,0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_gallery`
--

DROP TABLE IF EXISTS `product_image_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_gallery` (
  `product_id` int NOT NULL,
  `image_links` varchar(250) NOT NULL,
  `videos.links` varchar(250) DEFAULT NULL,
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_product_image_gallery_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_gallery`
--

LOCK TABLES `product_image_gallery` WRITE;
/*!40000 ALTER TABLE `product_image_gallery` DISABLE KEYS */;
INSERT INTO `product_image_gallery` VALUES (1,'',''),(2,'-','-');
/*!40000 ALTER TABLE `product_image_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stock`
--

DROP TABLE IF EXISTS `product_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stock` (
  `Stock_id` int NOT NULL,
  `total_stock` int NOT NULL DEFAULT '0',
  `Unit_price` float NOT NULL,
  `total_Price` float NOT NULL DEFAULT '0',
  KEY `fk_Product_stock_idx` (`Stock_id`),
  CONSTRAINT `fk_Product_stock` FOREIGN KEY (`Stock_id`) REFERENCES `product_variation_option_value` (`product_variation_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stock`
--

LOCK TABLES `product_stock` WRITE;
/*!40000 ALTER TABLE `product_stock` DISABLE KEYS */;
INSERT INTO `product_stock` VALUES (2,2,1762,3524);
/*!40000 ALTER TABLE `product_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_option`
--

DROP TABLE IF EXISTS `product_variation_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation_option` (
  `product_option_Id` int NOT NULL,
  `product_id` int NOT NULL,
  `Variation_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`product_option_Id`),
  UNIQUE KEY `Product_Option_name_UNIQUE` (`Variation_Name`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_product_Variation_option_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_option`
--

LOCK TABLES `product_variation_option` WRITE;
/*!40000 ALTER TABLE `product_variation_option` DISABLE KEYS */;
INSERT INTO `product_variation_option` VALUES (1,1,'CPU'),(2,2,'Language');
/*!40000 ALTER TABLE `product_variation_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_option_value`
--

DROP TABLE IF EXISTS `product_variation_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation_option_value` (
  `id` int NOT NULL,
  `product_variation_Id` int NOT NULL,
  `product_variation_option_name` varchar(20) NOT NULL,
  `option_image` varchar(250) DEFAULT NULL,
  `price` float NOT NULL,
  `product_details` longtext NOT NULL,
  `discount_percentage` float NOT NULL,
  PRIMARY KEY (`product_variation_Id`),
  CONSTRAINT `fk_product_variation_option_value_product_variation` FOREIGN KEY (`product_variation_Id`) REFERENCES `product_variation_option` (`product_option_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_option_value`
--

LOCK TABLES `product_variation_option_value` WRITE;
/*!40000 ALTER TABLE `product_variation_option_value` DISABLE KEYS */;
INSERT INTO `product_variation_option_value` VALUES (0,1,'Ryzen 3','-',31585,'Gaming Laptop',11),(2,2,'English','-',1762,'A brutally moving work of art—widely hailed as the greatest graphic novel ever written',5);
/*!40000 ALTER TABLE `product_variation_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_wishlist`
--

DROP TABLE IF EXISTS `product_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_wishlist` (
  `wishlist_id` int NOT NULL AUTO_INCREMENT,
  `buyer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`wishlist_id`,`buyer_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_product_wishlist_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `fk_product_wishlist_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_wishlist`
--

LOCK TABLES `product_wishlist` WRITE;
/*!40000 ALTER TABLE `product_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_bank_account`
--

DROP TABLE IF EXISTS `refund_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_bank_account` (
  `user_id` int NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `account_number` varchar(15) DEFAULT NULL,
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `Refund_bank_account_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_bank_account`
--

LOCK TABLES `refund_bank_account` WRITE;
/*!40000 ALTER TABLE `refund_bank_account` DISABLE KEYS */;
INSERT INTO `refund_bank_account` VALUES (1,'Allahabad Bank','840856468723746'),(2,'Canara Bank','216464359687803'),(3,'Indian Bank','189736795682794'),(4,'Axis Bank ','408861967066483'),(5,'ICICI Bank','487116858486922'),(6,'HDFC Bank','844276431123019'),(7,'RBL Bank ','875801547035431'),(8,'YES Bank','412162412842340'),(9,'Au Small Finance Bank','480837970233334'),(10,'Bank of Baroda','954692346519107'),(11,'Syndicate Bank','522411236958806'),(12,'Union Bank of India','620891614592477'),(13,'Central Bank of India','763138573380469'),(14,'Allahabad Bank','300220127993521'),(15,'Canara Bank','648468600939315'),(17,'Axis Bank ','470007161981643'),(18,'ICICI Bank','615879752303648'),(19,'HDFC Bank','580579543453741'),(20,'RBL Bank ','365907406899521'),(21,'YES Bank','136365216158582'),(22,'Au Small Finance Bank','293620566812790'),(23,'Bank of Baroda','346179717914146'),(24,'Syndicate Bank','357587522393895'),(25,'Union Bank of India','415405960961660'),(26,'Central Bank of India','993313601754450'),(27,'Allahabad Bank','723054865985572'),(28,'Canara Bank','659048748351946'),(29,'Indian Bank','986796804943423'),(30,'Axis Bank ','699216989482293'),(31,'ICICI Bank','373208465138962'),(32,'HDFC Bank','678107873234265'),(33,'RBL Bank ','986522858017353'),(34,'YES Bank','630618878954507'),(35,'Au Small Finance Bank','488381751302870'),(36,'Bank of Baroda','915830595129679'),(37,'Syndicate Bank','207897544524941'),(38,'Union Bank of India','717821208962503'),(39,'Central Bank of India','859673117738261'),(40,'Allahabad Bank','133359849539491'),(41,'Canara Bank','500188102569015'),(42,'Indian Bank','396787122244472'),(43,'Axis Bank ','714635115497875'),(44,'ICICI Bank','863345314176652'),(45,'HDFC Bank','141389317919049'),(46,'RBL Bank ','688945069885095'),(47,'YES Bank','135303039913006'),(48,'Au Small Finance Bank','555033426182800'),(49,'Bank of Baroda','254961278985359'),(50,'Syndicate Bank','237845758334185'),(51,'Union Bank of India','546870380417015'),(52,'Central Bank of India','977817562004437'),(53,'Allahabad Bank','696426151246474'),(54,'Canara Bank','424239326168021'),(55,'Indian Bank','895912622797306'),(56,'Axis Bank ','933870978366815'),(57,'ICICI Bank','149405703693664'),(58,'HDFC Bank','540641748882540'),(59,'RBL Bank ','790153581658378'),(60,'YES Bank','885661152029495');
/*!40000 ALTER TABLE `refund_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_order`
--

DROP TABLE IF EXISTS `return_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `fk_Return_order_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_order`
--

LOCK TABLES `return_order` WRITE;
/*!40000 ALTER TABLE `return_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_image`
--

DROP TABLE IF EXISTS `review_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_image` (
  `review_id` int NOT NULL,
  `image_link` varchar(250) NOT NULL,
  KEY `review_id_idx` (`review_id`),
  CONSTRAINT `fk_review_image_review` FOREIGN KEY (`review_id`) REFERENCES `customer_reviews_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_image`
--

LOCK TABLES `review_image` WRITE;
/*!40000 ALTER TABLE `review_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_points`
--

DROP TABLE IF EXISTS `review_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_points` (
  `customer_review_id` int NOT NULL,
  `points` varchar(1) NOT NULL DEFAULT '0',
  `review_in_one_line` varchar(100) DEFAULT NULL,
  `written_review` varchar(150) DEFAULT NULL,
  KEY `customer_review_id_idx` (`customer_review_id`),
  CONSTRAINT `fk_review_points_customer_review` FOREIGN KEY (`customer_review_id`) REFERENCES `customer_reviews_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_points`
--

LOCK TABLES `review_points` WRITE;
/*!40000 ALTER TABLE `review_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_points` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_seller_rating` AFTER INSERT ON `review_points` FOR EACH ROW BEGIN
    DECLARE new_rating integer;
    DECLARE seller_id_to_update integer;
	SET new_rating = new.points;
    
    Select seller_id into seller_id_to_update
    From product where product_id = product_id;
    
    Update seller
    SET 
    Seller_avg_rating =((Seller_avg_rating*rating_count)+new_rating)/(review_count +1),
    rating_count = rating_count+1
    where seller_id = seller_id_to_update;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `saved_for_later`
--

DROP TABLE IF EXISTS `saved_for_later`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_for_later` (
  `buyer_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`buyer_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `saved_for_later_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `saved_for_later_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_for_later`
--

LOCK TABLES `saved_for_later` WRITE;
/*!40000 ALTER TABLE `saved_for_later` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_for_later` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` int NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `website_url` varchar(200) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `Seller_avg_rating` float NOT NULL DEFAULT '2.5',
  `rating_count` int DEFAULT NULL,
  `shipment_type` varchar(45) NOT NULL,
  `seller_address_id` int NOT NULL,
  PRIMARY KEY (`seller_id`),
  UNIQUE KEY `company_name_UNIQUE` (`company_name`),
  KEY `seller_id_idx` (`seller_id`),
  KEY `address_id_idx` (`seller_address_id`),
  CONSTRAINT `fk_seller_address_id` FOREIGN KEY (`seller_address_id`) REFERENCES `user_address` (`User_address_ID`),
  CONSTRAINT `fk_seller_users` FOREIGN KEY (`seller_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (70,'singhEnterprises','www.singhEnterprises.com','-',2.5,0,'Self',58),(71,'nebhnaniEnterprises','www.nebhnaniEnterprises.com','-',2.5,0,'Self',4),(72,'jainEnterprises','www.jainEnterprises.com','-',2.5,0,' amazon ',21),(73,'joshiEnterprises','www.joshiEnterprises.com','-',2.5,0,' amazon ',26),(75,'hardasaniEnterprises','www.hardasaniEnterprises.com','-',2.5,0,' amazon ',17),(76,'narayaniEnterprises','www.narayaniEnterprises.com','-',2.5,0,'Self',37),(77,'sainaniEnterprises','www.sainaniEnterprises.com','-',2.5,0,'Self',47);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_bank_details`
--

DROP TABLE IF EXISTS `seller_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_bank_details` (
  `Seller_id` int NOT NULL,
  `account_holder_name` varchar(50) NOT NULL,
  `Account_number` int NOT NULL,
  `Account_Type` varchar(45) NOT NULL,
  `IFSC_code` varchar(20) NOT NULL,
  KEY `seller_id_idx` (`Seller_id`),
  CONSTRAINT `fk_Seller_Bank_Details_seller_id` FOREIGN KEY (`Seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_bank_details`
--

LOCK TABLES `seller_bank_details` WRITE;
/*!40000 ALTER TABLE `seller_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_tax_details`
--

DROP TABLE IF EXISTS `seller_tax_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_tax_details` (
  `seller_id` int NOT NULL,
  `Seller_legal_name` varchar(45) NOT NULL,
  `GST_number` varchar(20) NOT NULL,
  `PAN_number` varchar(20) NOT NULL,
  UNIQUE KEY `GST_number_UNIQUE` (`GST_number`),
  UNIQUE KEY `PAN_number_UNIQUE` (`PAN_number`),
  KEY `seller_id_idx` (`seller_id`),
  CONSTRAINT `fk_Seller_tax_details_seller` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_tax_details`
--

LOCK TABLES `seller_tax_details` WRITE;
/*!40000 ALTER TABLE `seller_tax_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_tax_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `Shipment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `Shipment_tracking_ID` int NOT NULL AUTO_INCREMENT,
  `shipment_date` date NOT NULL,
  `shipping_charge` float NOT NULL,
  `Shipment_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Shipment_id`,`order_id`),
  UNIQUE KEY `Shipment_tracking_ID_UNIQUE` (`Shipment_tracking_ID`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `fk_Shipments-order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` int NOT NULL,
  `buyer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` date NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_id`,`buyer_id`),
  KEY `buyer_id_idx` (`buyer_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `fk_shopping_cart_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `fk_shopping_cart_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signin_users`
--

DROP TABLE IF EXISTS `signin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signin_users` (
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `User_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signin_users`
--

LOCK TABLES `signin_users` WRITE;
/*!40000 ALTER TABLE `signin_users` DISABLE KEYS */;
INSERT INTO `signin_users` VALUES ('','','','');
/*!40000 ALTER TABLE `signin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `fk_state_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Andhra Pradesh',78),(2,'Arunachal Pradesh',78),(3,'Assam',78),(4,'Bihar',78),(5,'Chhattisgarh',78),(6,'Goa',78),(7,'Gujarat',78),(8,'Haryana',78),(9,'Himachal Pradesh',78),(10,'Jharkhand',78),(11,'Karnataka',78),(12,'Kerala',78),(13,'Madhya Pradesh',78),(14,'Maharashtra',78),(15,'Manipur',78),(16,'Meghalaya',78),(17,'Mizoram',78),(18,'Nagaland',78),(19,'Odisha',78),(20,'Punjab',78),(21,'Rajasthan',78),(22,'Sikkim',78),(23,'Tamil Nadu',78),(24,'Telangana',78),(25,'Tripura',78),(26,'Uttar Pradesh',78),(27,'Uttarakhand',78),(28,'West Bengal',78),(29,'Andaman and Nicobar Islands',78),(30,'Chandigarh',78),(31,'Dadra & Nagar Haveli and Daman & Diu',78),(32,'Delhi',78),(33,'Jammu and Kashmir',78),(34,'Lakshadweep',78),(35,'Puducherry',78),(36,'Ladakh',78);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `Sub_categories_Id` int NOT NULL AUTO_INCREMENT,
  `Sub_categories_name` varchar(100) NOT NULL,
  `cateories_id` int DEFAULT NULL,
  PRIMARY KEY (`Sub_categories_Id`),
  UNIQUE KEY `Sub_categories_name_UNIQUE` (`Sub_categories_name`),
  KEY `fk_Sub_categories_Categories` (`cateories_id`),
  CONSTRAINT `fk_Sub_categories_Categories` FOREIGN KEY (`cateories_id`) REFERENCES `categories` (`Categories_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'Anniversary',NULL),(2,'Birthday',1),(3,'Father\'s Day',1),(4,'Friendship',1),(5,'Just Because',1),(6,'Mother\'s Day',1),(7,'Women\'s Day',1),(8,'Mobiles & Accessories',2),(9,'Laptops & Accessories',2),(10,'TV & Home Entertainment',2),(11,'Audio',2),(12,'Cameras',2),(13,'Voice control electronics for home ',2),(14,'Wireless speakers ',2),(15,'Multi-plugs ',2),(16,'Tablets ',2),(17,'Monitors ',2),(18,'Home security cameras',3),(19,'Binoculars ',3),(20,'Telescope',3),(21,'Baby monitor',3),(22,'Portable lighting ',3),(23,'Camera stands ',3),(24,'Gift cards for Playstation, XBOX, Nintendo',4),(25,'Gaming headset ',4),(26,'Gaming controller ',4),(27,'Gaming mouse and control pad ',4),(28,'Battery packs for controllers ',4),(29,'Action & Adventure',5),(30,'Arts, Film & Photography',5),(31,'Biographies, Diaries & True Accounts',5),(32,'Business & Economics',5),(33,'Children\'s & Young Adult',5),(34,'Comics & Mangas',5),(35,'Computers & Internet',5),(36,'Crafts, Hobbies & Home',5),(37,'Crime, Thriller & Mystery',5),(38,'Engineering',5),(39,'Exam Preparation',5),(40,'Science Fiction & Fantasy',5),(41,'Health, Fitness & Nutrition',5),(42,'Health, Family & Personal Development',5),(43,'Historical Fiction',5),(44,'History',5),(45,'Humour',5),(46,'Language, Linguistics & Writing',5),(47,'Law',5),(48,'Literature & Fiction',5),(49,'Maps & Atlases',5),(50,'Medicine and Health Sciences Textbooks',5),(51,'Politics',5),(52,'Reference',5),(53,'Religion & Spirituality',5),(54,'Romance',5),(55,'School Books',5),(56,'Science and Mathematics Textbooks',5),(57,'Sciences, Technology & Medicine',5),(58,'Society & Social Sciences',5),(59,'Sports',5),(60,'Higher Education Textbooks',5),(61,'Textbooks & Study Guides',5),(62,'Travel & Tourism',5),(63,'Women',6),(64,'Men',6),(65,'Girls',6),(66,'Boys',6),(67,'Baby',6),(68,'Sport Specific Clothing',6),(69,'Bath and bathing accessories',7),(70,'Foot and nail care',7),(71,'Hand creams ',7),(72,'Fragrance ',7),(73,'Hairdryers ',7),(74,'Makeup',7),(75,'Artwork',8),(76,'Craft Materials',8),(77,'Furniture',8),(78,'Heating, Cooling & Air Quality',8),(79,'Home & Décor',8),(80,'Home Furnishing',8),(81,'Home Improvement',8),(82,'Home Storage & Organization',8),(83,'Indoor Lighting',8),(84,'Kitchen & Dining',8),(85,'Kitchen & Home Appliances',8),(86,'Large Appliances',8),(87,'Religious & Spiritual Items',8),(88,'Birds',9),(89,'Cats',9),(90,'Dogs',9),(91,'Fish & Aquatics',9),(92,'Small Animals',9),(93,'Accessories',10),(94,'American Football',10),(95,'Archery',10),(96,'Badminton',10),(97,'Baseball',10),(98,'Basketball',10),(99,'Billiards',10),(100,'Bowling',10),(101,'Boxing',10),(102,'Cheerleading',10),(103,'Cricket',10),(104,'Cycling',10),(105,'Dance',10),(106,'Darts & Dartboards',10),(107,'Disc Sports',10),(108,'Equestrian Sports',10),(109,'Exercise & Fitness',10),(110,'Fan Shop',10),(111,'Field Hockey',10),(112,'Fishing',10),(113,'Football',10),(114,'Footwear',10),(115,'Golf',10),(116,'Gymnastics',10),(117,'Hunting',10),(118,'Lacrosse',10),(119,'Martial Arts',10),(120,'Netball',10),(121,'Outdoor Recreation',10),(122,'Rugby',10),(123,'Running',10),(124,'Skates, Skateboards & Scooters',10),(125,'Snooker',10),(126,'Softball',10),(127,'Sports Clothing',10),(128,'Sports Gadgets',10),(129,'Squash',10),(130,'Table Tennis',10),(131,'Team Handball',10),(132,'Tennis',10),(133,'Track & Field',10),(134,'Trophies, Medals & Awards',10),(135,'Volleyball',10),(136,'Water Sports',10),(137,'Winter Sports',10);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upi_bank_account`
--

DROP TABLE IF EXISTS `upi_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upi_bank_account` (
  `amazon_pay_id` varchar(45) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `account_number` varchar(15) NOT NULL,
  UNIQUE KEY `account_number_UNIQUE` (`account_number`),
  KEY `amazon_pay_id_idx` (`amazon_pay_id`),
  CONSTRAINT `fk_Upi_bank_account_amazon_pay_id` FOREIGN KEY (`amazon_pay_id`) REFERENCES `amazon_pay` (`amazon_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upi_bank_account`
--

LOCK TABLES `upi_bank_account` WRITE;
/*!40000 ALTER TABLE `upi_bank_account` DISABLE KEYS */;
INSERT INTO `upi_bank_account` VALUES ('1493914436@apl','YES Bank','138948090426014'),('7486556383@apl','Syndicate Bank','144911734702848'),('2221462945@apl','Canara Bank','145865851412182'),('8765625173@apl','Au Small Finance Bank','180249123440221'),('9389846647@apl','ICICI Bank','185284442111636'),('1959336184@apl','RBL Bank ','209757344139423'),('8496000151@apl','Central Bank of India','218702063579822'),('8378293982@apl','Bank of Baroda','227564419774192'),('8691154180@apl','Axis Bank ','232787587400749'),('3950347548@apl','Axis Bank ','232936233633622'),('2421142866@apl','Indian Bank','233925364999819'),('5912556308@apl','Bank of Baroda','264061588737067'),('4108677308@apl','YES Bank','292496120090077'),('5194082831@apl','ICICI Bank','293304901087726'),('1701578153@apl','Allahabad Bank','316495051649515'),('6789002319@apl','Union Bank of India','321091415879898'),('4522019968@apl','Canara Bank','359624250030038'),('6348725833@apl','Union Bank of India','370075921076960'),('9109227611@apl','Canara Bank','387865877309302'),('7350331858@apl','HDFC Bank','472086885527583'),('2871314641@apl','Bank of Baroda','495605143023938'),('3024913051@apl','Axis Bank ','503530508786549'),('9774221804@apl','Indian Bank','510082418075676'),('6888468062@apl','Central Bank of India','522820515259013'),('3777386743@apl','Indian Bank','538797664674843'),('8776510831@apl','Indian Bank','554700048120878'),('7970894648@apl','ICICI Bank','556543724653363'),('4416352806@apl','RBL Bank ','557178717346587'),('9149457658@apl','Canara Bank','577819120843994'),('3274381907@apl','YES Bank','578022138488385'),('4763505250@apl','Au Small Finance Bank','582491799069192'),('8408957832@apl','Central Bank of India','590700564213482'),('5884807520@apl','YES Bank','613250832512038'),('5278973127@apl','Axis Bank ','627919696893512'),('3502953746@apl','Allahabad Bank','634267528839855'),('4488204179@apl','YES Bank','637081826500494'),('3602143316@apl','RBL Bank ','637708134755099'),('8006025469@apl','Allahabad Bank','648329373040031'),('2515828408@apl','RBL Bank ','659212250689951'),('2009347332@apl','Au Small Finance Bank','678984233465348'),('6589033205@apl','Au Small Finance Bank','686442528211693'),('8937881891@apl','ICICI Bank','702921392554907'),('9844530127@apl','Central Bank of India','752035798614186'),('2790341119@apl','HDFC Bank','791710837379274'),('8149630869@apl','Union Bank of India','794315262938857'),('3592817438@apl','Allahabad Bank','795021289294655'),('3831799944@apl','RBL Bank ','797222418772570'),('1747437542@apl','Bank of Baroda','800660238457711'),('4966500171@apl','Syndicate Bank','815766741314442'),('4943832896@apl','Allahabad Bank','825968935410827'),('1341755828@apl','Syndicate Bank','836841019411435'),('6389578546@apl','HDFC Bank','848793563289374'),('8574765807@apl','Canara Bank','862991999178783'),('2846731538@apl','Axis Bank ','874442774179775'),('7338902750@apl','HDFC Bank','878767086332639'),('8458640525@apl','ICICI Bank','882431732624444'),('8374410203@apl','Union Bank of India','892752804065491'),('6460246281@apl','Syndicate Bank','920872419573844'),('3310832234@apl','HDFC Bank','954233000267786');
/*!40000 ALTER TABLE `upi_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `User_address_ID` int NOT NULL AUTO_INCREMENT,
  `User_Id` int NOT NULL,
  `Flat,House_no,Building,Company,Apartment` varchar(100) NOT NULL,
  `Area,Colony,Street,Sector,Village` varchar(100) NOT NULL,
  `Landmark` varchar(100) DEFAULT NULL,
  `city_id` int NOT NULL,
  `Address_Type_id` int NOT NULL,
  PRIMARY KEY (`User_address_ID`),
  UNIQUE KEY `Flat,House_no,Building,Company,Apartment_UNIQUE` (`Flat,House_no,Building,Company,Apartment`),
  KEY `User_ID_idx` (`User_Id`),
  KEY `address_type_id_idx` (`Address_Type_id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `fk_user_address_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_User_address_user` FOREIGN KEY (`User_Id`) REFERENCES `users` (`User_Id`),
  CONSTRAINT `fk_User_adress_address_type_id` FOREIGN KEY (`Address_Type_id`) REFERENCES `address_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,1,'A31','Dhanlaxmi Cplx, Harni Road','-',119,1),(2,2,'22/23, 2','Jolly Maker Chamber, Nariman Point','-',608,2),(3,3,'7-1-648','Market Street','0',128,2),(4,4,'461, E-4',' Adarsh Nagar, New Link Road, Oshiwara','Andheri (west)',561,1),(5,5,'Beside Jaya Interanational Hotel','Abids','-',660,2),(6,6,'11D','Krishna Kunj, Sir Wachha Gandhi Rd','Gamdevi',191,1),(7,7,'Pete Chinnappa Industrial Est ','Near Pooja Kalyan Mantap','Kamakshipalya',871,2),(8,8,'Ground Floor','Hotel Alpine Continental Complex',' Thana Road',555,2),(9,9,' 166b','S P Mukherjee Road',' Kalighat',155,1),(10,10,'33A','Bharathi Salai',' Triplicane',837,1),(11,11,'31B','Wodehouse Road',' Council Hall',93,1),(12,12,'44 A','Ambedkar Road','-',216,1),(13,13,'137C','Shastriamrket','-',493,1),(14,14,' Room No.6, 1st Floor, 98',' Sagar Bhavan',' Lohar Chawl',727,1),(15,15,' 5 Cellar Neptune Tower',' Opp Nehru Bridge',' Ashram Road',51,2),(17,17,' 1302',' Mill Road',' Townhall',827,1),(18,18,'769 Spencer Plaza Salai',' Chintadripet','-',1147,1),(19,19,'Shop 13',' Rupam Bldg',' 13 Sion Circle',845,1),(20,20,' 6',' Apparswamy Koil Street',' Mylapore',1064,1),(21,21,'5776J',' Sadar Bazar','-',661,1),(22,22,'333,Sector 28',' Faridabad','-',845,1),(23,23,' 264',' N H No 8',' Gidc Estate',216,1),(24,24,' E 157',' Part 3 Masjid Moth','-',1112,1),(25,25,'5th Floor,3',' Oricon House Bldg',' 14/kdubash Marg',332,1),(26,26,'39/2,58',' Arunoday Society',' Alkapuri',1010,1),(27,27,'Ff/7 Narsihdham Complex',' Harni Rd','-',15,1),(28,28,'36S',' Vijaya House, Station Raod',' Vikhroli (east)',331,1),(29,29,'4l','raja Woodmunt Street','-',90,1),(30,30,'Opp Khodiyar Temple',' Gota',' Gandhi Nagar',633,2),(31,31,'7 Kambliwadi',' Nehru Road',' Vile Parle (east)',41,2),(32,32,'44D',' D D A Market, Apna Bazar',' Nehru Nagar',192,2),(33,33,'  51',' Thackersst',' Purasaiwalkam',103,2),(34,34,' 111 Shop No 2',' Abdul Rehman Street',' Mandvi',178,2),(35,35,'163H',' Sheeniwas Bhavan, Thakurdware',' Chira Bazar',447,2),(36,36,' 4th Floor, 360/64',' Kalbadevi Road',' Kalbadevi',685,2),(37,37,'  9',' 1 Floor 2 Cross 1 B Main',' Sudhamanagar',190,2),(38,38,' 68',' Sheriff Devji Street','-',620,2),(39,39,'A/5, Sector-18',' Mahavir Market',' Turbhe',585,2),(40,40,'Hinduja House',' Dr. Annie Besant Road',' Worli',1021,1),(41,41,' A 30',' Mathura Road',' Mohan Indl Estate',617,1),(42,42,'3D,237',' Mittal Indl Estate','-',982,2),(43,43,'Komal Apartments',' Manikpur',' Opp Union Bank',426,1),(44,44,'7e',' United Complex',' Nicholson Road',390,1),(45,45,' 64',' Mangaldas Road',' Lohar Chawl',193,1),(46,46,'03H',' Lakshmi Complex',' 5th Main,Okalipuram',1109,1),(47,47,'  785b Diamond Harbour Road',' Barisha','-',1152,1),(48,48,'292F',' Jumna Bldg, Lt Marg',' Dhobi Talao',763,2),(50,50,' A-3,211',' Lok Bharti',' Marol Maroshi Road',574,1),(51,51,'  83',' Savitri House',' Vishwas Nagar',326,1),(52,52,'35/3124',' Beadon Pura',' Karol Bagh',823,1),(53,53,'Pramila Hospital',' Kalwa',' Kalwa',98,2),(54,54,'4Q',' Gold Moon','-',337,1),(55,55,' 219',' Linghi Chty St','-',1060,1),(56,56,'No 310',' 3rd Floor',' Gayatri Chambers',430,1),(57,57,'266-b Abdul Rehman Street',' Mandvi','-',907,1),(58,58,'Gala No 11',' Royal Complex',' Eksar Rd',266,2),(59,59,'A1',' Sangam Bhavan',' Colaba',634,1),(60,60,'1/251','housing Board Colony','ganesh Road',234,1);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'Prime'),(2,'Non-Prime');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_Id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(45) NOT NULL,
  `Last name` varchar(45) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `User_password` varchar(200) NOT NULL,
  `User_status` varchar(10) NOT NULL,
  `gender_id` int NOT NULL,
  `user_type_id` int NOT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Password_UNIQUE` (`User_password`),
  KEY `gender_id_idx` (`gender_id`),
  KEY `user_type_id_idx` (`user_type_id`),
  CONSTRAINT `fk_User_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`),
  CONSTRAINT `user_type_id` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bharat','nebhnani','bharatnebhnani@gmail.com','bharat@221663','Active',1,1),(2,'ramdin','verma','ramdinverma@gmail.com','86a888a1ac2c5c016f80ce60254347ba','Active',1,1),(3,'sharat','chandran','sharatchandran@gmail.com','135482a5416f4af5dfd5643a12ecb686','Active',1,1),(4,'birender','mandal','birendermandal@gmail.com','3863dc096cba4ba4229d9ff12b3e19ce','Active',1,1),(5,'shiv','prakash','shivprakash@gmail.com','0e64b9f493c8017824bc335dd7660a5a','Active',1,1),(6,'vikram','singh','vikramsingh@gmail.com','a65bdbc3f798ec01c0ef1bae5663bcd6','Active',1,1),(7,'ram','dutt','ramdutt@gmail.com','fa1269261fb50330d913a3c4d4931634','UnActive',1,1),(8,'khadak','singh','khadaksingh@gmail.com','83568b239817f34566d1ea942b01e42f','UnActive',1,1),(9,'gurmit','singh','gurmitsingh@gmail.com','55cae9fa3348adf5208ebdb519a57c06','UnActive',1,1),(10,'nahar','singh','naharsingh@gmail.com','05eb00db9b34645b1dd3e8c305b26152','UnActive',1,1),(11,'ram','kumar','ramkumar@gmail.com','58246c4f017468df5fd462044aa69a81','UnActive',1,1),(12,'sunder','paal','sunderpaal@gmail.com','ccae5ecff30760ff4ac59a9985890cbd','Active',1,1),(13,'maansingh','aswal','maansinghaswal@gmail.com','445edeb65596876c3623775a21f25b27','Active',1,1),(14,'punit','khandelwal','punitkhandelwal@gmail.com','f56cf072f3088702716a9751c5355b82','Active',1,2),(15,'arvind','kumar','arvindkumar@gmail.com','fb4ba4c71ac9942104d3ab4bab168d9d','Active',1,2),(17,'shiv','shakti','shivshakti@gmail.com','b4af665df2d6cb1b62502a4d8d1514d3','Active',1,2),(18,'kausal','kumar','kausalkumar@gmail.com','4154c6b104855a675cd905e7096d8d40','Active',1,2),(19,'mohabbat','ali','mohabbatali@gmail.com','107c7be9ff9e40fa17d356cebd0ffdfb','Active',1,2),(20,'raj','kumar','rajkumar@gmail.com','d46b93effb39ab853df6b30f8d182249','Active',1,2),(21,'jaswant','singh','jaswantsingh@outlook.com','124e7a053f0572c8d9eb66d54ff806e0','Active',1,2),(22,'dharam','singh','dharamsingh@outlook.com','1235ba47eabf176282113edb1f2d5440','Active',1,2),(23,'manoj','yadav','manojyadav@outlook.com','5ca717e64a958c64e747b6553f685053','Active',1,2),(24,'ram','singh','ramsingh@outlook.com','50533e58d0effcce9b5fc6229a9036c1','Active',1,2),(25,'preetam','kumar','preetamkumar@outlook.com','c078d1f1251cdc8213bb27b2aa6f0438','Active',1,2),(26,'ram','kumar','ramkumar@outlook.com','84f27f119975acf12119d29240517e6f','Active',1,2),(27,'pankaj','kumar','pankajkumar@gmail.com','ed1428a4a3cfea72a07e684b0541c3d7','Active',1,2),(28,'sheak','shakir','sheakshakir@gmail.com','8199ff9ac8f3da40787a98bc68179af0','Active',1,2),(29,'riyasat','ali','riyasatali@gmail.com','d8fd3a1dd3bd68915484b0f6b837200e','UnActive',1,2),(30,'vinit','katariya','vinitkatariya@gmail.com','a7ddf1065392618a7d5ca8452b321a15','UnActive',1,2),(31,'devinder','chadda','devinderchadda@gmail.com','178d1a5e9f6ed8b714ad58f17b0a2f7e','UnActive',1,2),(32,'shakshi','sagar','shakshisagar@gmail.com','56383d584a0c2c55cf91f50f15b8b07d','UnActive',2,1),(33,'kanika','kathuria','kanikakathuria@gmail.com','9e417c444e21d2eac1a56ceb032b6e84','Active',2,1),(34,'riya','masi','riyamasi@gmail.com','2530f11611002ccc61f6024d61e5ef34','Active',2,1),(35,'nitu','kumari','nitukumari@gmail.com','9abe4d4df246394913dc3dc5dc23ebeb','Active',2,1),(36,'deeya','kumari','deeyakumari@outlook.com','96005cdc49b09372a99e73ae7fe896d0','Active',2,1),(37,'anjali','juneja','anjalijuneja@outlook.com','60f5a5d9768e04173fa6eb367a3b218b','Active',2,1),(38,'champa','karketta','champakarketta@outlook.com','68208c1366e14c50a8b1d84cab27cab0','Active',2,1),(39,'rimmi','singh','rimmisingh@outlook.com','cc1f49c3fbdf0f691be3318cd2c43fa4','Active',2,1),(40,'aanamika','misra','aanamikamisra@outlook.com','0f5cf3861baec398c31f14ae14fa09fb','Active',2,1),(41,'nagma','khatoon','nagmakhatoon@outlook.com','72d05017cf419b021609deaf23f3b410','Active',2,1),(42,'nikita','senger','nikitasenger@outlook.com','7861f53bf574a7a011d25f89d3b34de2','Active',2,1),(43,'layba','noor','laybanoor@outlook.com','b7844d49ca6523ff114d2ddb76d539e8','Active',2,1),(44,'naziya','siddiqui','naziyasiddiqui@gmail.com','4283fa45866520c08a25c79204f2fa74','Active',2,1),(45,'kalyani','patro','kalyanipatro@gmail.com','ff1797527a720cb42a5cfdd6b9d31fd0','Active',2,1),(46,'gurdeep','kaur','gurdeepkaur@gmail.com','3af08d14ae5912f0621f1dd84ec5078a','Active',2,1),(47,'dhanwanti','devi','dhanwantidevi@gmail.com','aae3ea478786360577bd760da9aa8c99','Active',2,1),(48,'pooja','kashyap','poojakashyap@gmail.com','b341a05b1de6ce952a532e233a73dbb8','Active',2,1),(49,'meena','kumari','meenakumari@gmail.com','884e4c9727e85a715bfc3d7d15a03f0a','Active',2,1),(50,'reena','devi','reenadevi@gmail.com','99047fde328451f2a807996667fdf94a','Active',2,1),(51,'payal','goyala','payalgoyala@gmail.com','f510651d3f136e90e8837678ad692efa','Active',2,1),(52,'laxmi','kumari','laxmikumari@gmail.com','6ae254ff730d1e47d1579b28e38c3a17','Active',2,1),(53,'rinku','malav','rinkumalav@gmail.com','44e0e89c77332f411e5cffda2398300c','Active',2,1),(54,'raj','kumari','rajkumari@yahoo.com','979b0b9736bb64758caa9e1541300f35','Active',2,2),(55,'laxmi','devi','laxmidevi@yahoo.com','42515577da08b2a3a7e3da1c009a9750','UnActive',2,2),(56,'swati','joshi','swatijoshi@yahoo.com','c0b35730a456300a78d8bfa4e4c68e32','UnActive',2,2),(57,'pooja','jayshwal','poojajayshwal@yahoo.com','2372b4b9d9612abd664cf8730059a23d','UnActive',2,2),(58,'aarti','devi','aartidevi@yahoo.com','30fa6ad4f685e595e427b64ceab690a3','UnActive',2,2),(59,'sashi','mittal','sashimittal@yahoo.com','92de5b3011740c0a0c5e2dded98a1685','UnActive',2,2),(60,'priya','sexena','priyasexena@yahoo.com','0d210b8c19fde3780a9a8f9b1d9a63ac','UnActive',2,2),(61,'rohit','verma','rohitverma@yahoo.com','4c58034e20bb042f0e236b7d5d921994','Active',1,1),(63,'Sabahat ','Khan','sabahatkhan@gmail.com','sabahat@12345','Active',2,2),(70,'komal','singh','komalsingh@gmail.com','komal@410594','Active',2,2),(71,'hemant','nebhnani','hemantnebhnani@gmail.com','hemant@299009','Active',1,2),(72,'jyoti','jain','jyotijain@gmail.com','jyoti@657412','Active',2,2),(73,'sona','joshi','sonajoshi@gmail.com','sona@451878','Active',2,2),(74,'aarti','somani','aartisomani@gmail.com','aarti@226338','Active',2,2),(75,'neha','hardasani','nehahardasani@gmail.com','neha@199804','Active',2,2),(76,'amit','narayani','amitnarayani@gmail.com','amit@502028','Active',1,2),(77,'karishma','sainani','karishmasainani@gmail.com','karishma@954339','Active',2,2),(78,'simran','nebhnani','simrannebhnani@gmail.com','simran@884660','Active',2,2),(80,'mohit','jain','mohitjain@gmail.com','mohit@647308','Active',1,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'amazon'
--

--
-- Dumping routines for database 'amazon'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product`(
In product_id int,
In product_name varchar(200),
In categories_id int,
In Sub_categories_id int,
In Seller_id int,
In price float,
In stock int,
In variation_name Varchar(100),
In product_variation_id int,
In variation_otion_name varchar(20),
In product_variation_option_id int,
In discount_percentage float,
In Product_details longtext,
IN image_links varchar(250),
In videos_link varchar(250)
)
BEGIN
Insert into product values(
product_id,
product_name,
categories_id,
sub_categories_id,
seller_id,
0,
0
);
Insert into product_image_gallery values(
product_id,image_links,videos_link
);
Insert into product_variation_option values(
product_variation_id,
product_id,
variation_name
);
Insert into product_variation_option_value values (
product_variation_option_id,
product_variation_id,
variation_otion_name,
"-",
price,
Product_details,
discount_percentage
);
Insert into product_stock 
values ( 
product_variation_option_id,
stock,
price,
stock*price
);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Add_to_shopping_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_to_shopping_cart`(
in buyer_id int,
in product_id int,
in qty int
)
BEGIN
Insert into shopping_cart (buyer_id,product_id,date_added,quantity) values(
buyer_id,
product_id,
sysdate(),
qty
);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_to_wish_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_to_wish_list`(
In buyer_id int,
In product_id int
)
BEGIN
Insert into product_wishlist (buyer_id,product_id,date_added) values(
buyer_id,
product_id,
sysdate()
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `give_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `give_review`(
in review_id int,
in product_id int,
in review_name varchar(20),
in buyer_id int,
in points int,
in image_link varchar(250)
)
BEGIN
insert into customer_reviews_type values(
review_id,product_id,review_name,sysdate(),buyer_id
);
insert into review_points values(
review_id,points
);
insert into review_image values(
review_id,
image_link
);





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_buyer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `register_buyer`(
In User_id int,
In First_name varchar(45),
In Last_name varchar(45),
In Email varchar(200),
In User_password varchar(200),
In user_status varchar(10),
IN gender_id int,
In User_type_id int
)
BEGIN
insert into users values(
user_id,
First_name,
Last_name,
Email,
User_password,
User_status,
gender_id,
user_type_id

);
if user_type_id = 1 then
Insert into buyer values(
user_id,
1,
sysdate()+28
);
elseif user_type_id = 2 then
Insert into buyer values(
user_id,
0,
null
);

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `regiter_seller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `regiter_seller`(
In User_id int,
In First_name varchar(45),
In Last_name varchar(45),
In Email varchar(200),
In User_password varchar(200),
IN gender_id int,
IN company_name varchar(100),
IN website_url varchar(200),
IN company_description varchar(100),
IN Shipment_type varchar(45),
IN Seller_address_id int

)
BEGIN
insert into users values(
user_id,
First_name,
Last_name,
Email,
User_password,
'Active',
gender_id,
2
);
insert into seller values(
user_id,
company_name,
website_url,
company_description,
2.5,
0,
Shipment_type,
Seller_address_id
);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-11 19:24:08
