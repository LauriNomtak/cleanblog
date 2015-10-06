-- MySQL dump 10.13  Distrib 5.6.26, for Win32 (x86)
--
-- Host: localhost    Database: cleanblog
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id`   INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(255)     NOT NULL,
  PRIMARY KEY (`author_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1, 'klaabu'), (2, 'sipsik');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id`        INT(10) UNSIGNED NOT NULL,
  `post_title`       VARCHAR(255)     NOT NULL,
  `post_description` VARCHAR(255)     NOT NULL,
  `post_text`        TEXT,
  `post_created`     DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1, 1, 'Elu on lahe ', 'Mida veel tahta?',
                            'Kunagi kogu oma ajaloo on mehed suutnud tõeliselt kujutleda maailma üks: ühe sfääri, maakera, millel omadusi maakera, ümmargune maa, kus kõik suunad lõpuks kohtuda, kus puudub keskus, sest iga punkt või neid pole, keskus - võrdne Maa, mis kõik mehed hõivata võrdsetena. Airman muld, kui vabad mehed teevad seda, mis on tõeliselt ringi: maakera praktikas, mitte teoorias.\n\nTeadus lõikab kaks võimalust, muidugi; Oma tooteid saab kasutada nii hea ja kurja vahel. Aga seal ei ole enam tagasiteed teadusest. Varajased hoiatused tehnoloogiliste ohtude tulla ka teaduses.\n\nMis oli kõige olulisem umbes Kuu reisi ei olnud, et mees jalg Moon, kuid mida nad määrata silma maa peal.\n\n�?ks Hiina lugu räägib mõned mehed saadeti kahjustada noor tüdruk, kes nähes tema ilu, muutub tema kaitsjad, mitte tema rikkujaid. See, kuidas ma tundsin nähes Maa esmakordselt. Ma ei saa aidata, kuid armastan ja kalliks teda.\n\nNeile, kes on näinud Maa kosmosest, ja sadu ja võib-olla veel tuhandeid, kes on kogemus kindlasti muudab oma vaatenurgast. Asju, mida me jagame meie maailmas on palju väärtuslikum kui need, mis meid lahutavad.',
                            '2014-09-24 11:28:08'), (2, 2, 'Life suxx', 'Blaa', 'Asdqwedsadasd', '2015-10-06 20:07:50'),
  (3, 1, 'Mhmm', 'jama', 'Asdqwedsadasfa', '2015-10-06 20:08:24');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2015-10-07  0:49:57
