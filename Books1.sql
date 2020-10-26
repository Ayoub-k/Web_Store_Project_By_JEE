-- MySQL dump 10.17  Distrib 10.3.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Books
-- ------------------------------------------------------
-- Server version	10.3.20-MariaDB-0ubuntu0.19.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Catalogue`
--

DROP TABLE IF EXISTS `Catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Catalogue` (
  `nomcatalogue` varchar(40) NOT NULL,
  `path` varchar(70) NOT NULL,
  PRIMARY KEY (`nomcatalogue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catalogue`
--

LOCK TABLES `Catalogue` WRITE;
/*!40000 ALTER TABLE `Catalogue` DISABLE KEYS */;
/*!40000 ALTER TABLE `Catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Livre`
--

DROP TABLE IF EXISTS `Livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Livre` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `nbrpage` varchar(5) NOT NULL,
  `langue` varchar(20) NOT NULL,
  `prix` varchar(5) NOT NULL,
  `autheur` varchar(30) NOT NULL,
  `annee` varchar(4) NOT NULL,
  `path` varchar(50) NOT NULL,
  `nomcatalogue` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Livre`
--

LOCK TABLES `Livre` WRITE;
/*!40000 ALTER TABLE `Livre` DISABLE KEYS */;
INSERT INTO `Livre` VALUES (1,'Practical ECG Holter','242','francais','154','FranÃ§ois Mach','2012','science1.jpeg','Science'),(2,'La pratique de LâECG ','343','francais','154','John R. Hampton','2008','science2.jpeg','Science'),(3,'Basic Electrocardiography','100','English','154','A. BayÃ©s de Luna','2007','science3.jpeg','Science'),(4,'ECG Holter','100','English','154','Jan Adamec Richard Adamec','2008','science4.jpeg','Science'),(5,'Risques mÃ©dicaux au cabinet','692','francais','154','Yvon Roche','2010','science5.jpeg','Science'),(6,'Traitements parodontaux','187','francais','154','GÃ©rard Rey, Patrick Missika','2010','science6.jpeg','Science'),(7,'UBUNTU','268','francais','154','Gilles CHAMILLARD ','2014','programming1.jpeg','Programming'),(8,'REPORTING AVEC SAS','232','francais','154','Philippe Letren','2008','programming2.jpeg','Programming'),(9,'MYSQL','423','francais','154','Auteur externe','2015','programming3.jpeg','Programming'),(10,'UML2','242','francais','154','Joseph Gabay, David Gabay','2008','programming4.jpeg','Programming'),(11,'SÃ©curitÃ©opÃ©rationnelle','449','francais','154','Groupe Eyrolles','2015','programming5.jpeg','Programming'),(12,'PHP7 MYSQL','114','francais','154','Prierre de Geyer','2017','programming6.jpeg','Programming '),(13,'MATHEMATIQUES ET INFORMATIQUE','472','francais','154','Berstel,Pocchiola,Pin','2005','programming7.jpeg','Programming'),(14,'C# and .NET','457','francais','154','Serge Tahe','2008','programming8.jpeg','Programming'),(15,'Anesthesie ambulatoire','472','francais','154','SAS','2002','science7.jpg','Science'),(16,'Cours Math Sup','290','francais','154','J.Quint','1976','science8.jpeg','Science'),(17,'l\'Encyclopedie du Modelisme','104','francais','154','Elkar-Danona','2003','art1.jpg','art'),(18,'peinture chinoise','94','francais','154','Picqu','2005','art2.jpg','art'),(19,'Initiation au Decor','66','francais','154','Tolra et Dessain','2010','art3.jpg','art'),(20,'Math Musique','142','francais','154','GillesCohen','2005','art4.jpg','art'),(21,'TALENTS','104','francais','154','Thierry Dubois','2008','art5.jpg','art'),(22,'Le Realisateur','44','francais','154','Nestor EKOMIE','2013','art6.jpg','art'),(23,'L\'art de Islam','286','francais','154','Roland Miclmud','2010','art7.jpg','art'),(24,'le prepresse avec Acrobat Pro ','114','francais','154','THIERRY BUANIC','2012','art8.jpg','art'),(25,'Death Note','450','Japanese','154','Tsugumi Ohba','2003','anime1.jpg','Anime'),(26,'One Piece','216','English','154','Eiichiro Oda','1997','anime2.jpg','Anime'),(27,'Naruto','208','English','154','Masashi Kishimoto','1995','anime3.jpg','Anime'),(28,'Dragon Ball Broly ','500','English','154',' Akira Toriyama','2018','anime4.jpeg','Anime'),(29,'Attack on Titan 1','400','English','154','Hajime Isayama','2009','anime5.jpg','Anime'),(30,'Explosion! Anime','350','English','154','kimo','2010','anime6.jpg','Anime'),(31,'Thor','337','English','154','Mdlin','2014','anime7.jpg','Anime'),(32,'HanterXHanter','450','Japanese','154','Yoshihiro Togashi','1998','anime8.jpg','Anime'),(33,'Faisabilite de projets','154','francais','154','IDAH METTON','2010','eco1.jpg','Economie'),(34,'De la crise a la reprise','200','francais','240','MILON','2015','eco2.jpg','Economie'),(35,'La creation d\'lentreprise','230','francais','120','jihon','2014','eco3.jpg','Economie'),(36,'Marketion','140','English','140','GRHUB','2017','eco4.jpg','Economie'),(37,'Le commerce electronique','302','francais','140','johen','2014','eco5.jpg','Economie'),(38,'Commerce','245','francais','45','Milon','2014','eco6.jpg','Economie'),(39,'Choisir sa vie','300','francais','2014','Iline','2016','rom5.jpg','Novels'),(40,'L\'Ombre','201','francais','30','Olmaina','2013','rom6.jpg','Novels'),(41,'Mohammed','120','francais','30','Aidh ibn Abde  Elqrni','2004','2.jpg','Religion');
/*!40000 ALTER TABLE `Livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'AYOUB','ELKHADDOURI','0611567095','ELKHADDOURI@outlook.fr','ayoub'),(3,'olephina','olephina','124578965','olephina@gmail.com','123456'),(4,'Amine','amine','0611448899','amine@gmail.com','123456'),(5,'jrm','Pat','0754845585','patjrm@ayoub.kir','123456'),(9,'jrmk','Pati','0744845584','patjrmkir@ayoub.kir','123456'),(10,'hind','hind','0622446688','hind@gmail.com','123456');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) DEFAULT NULL,
  `nomlivre` varchar(30) DEFAULT NULL,
  `lien` varchar(30) DEFAULT NULL,
  `q` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` VALUES (1,'ELKHADDOURI@outlook.fr','Risques mÃ©dicaux au cabinet',NULL,1),(6,'ELKHADDOURI@outlook.fr','Traitements parodontaux',NULL,NULL),(15,'ELKHADDOURI@outlook.fr','Anesthesie ambulatoire',NULL,NULL),(19,'ELKHADDOURI@outlook.fr','Initiation au Decor',NULL,NULL),(20,'hind@gmail.com','Death Note',NULL,1),(21,'hind@gmail.com','Dragon Ball Broly ',NULL,1),(22,'hind@gmail.com','UML2',NULL,1),(23,'hind@gmail.com','MYSQL',NULL,1),(24,'hind@gmail.com','UBUNTU',NULL,2),(25,'hind@gmail.com','L\'art de Islam',NULL,1),(26,'hind@gmail.com','PHP7 MYSQL',NULL,1),(27,'ELKHADDOURI@outlook.fr','Cours Math Sup',NULL,1),(28,'ELKHADDOURI@outlook.fr','Death Note',NULL,1);
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-29 12:46:28
