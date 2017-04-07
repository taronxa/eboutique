-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: eboutique
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'Processeur Quad Core AMD A10-7870K (3.9 GHz / 4.1 GHz Turbo Core 3.0 - Cache L2 4 Mo)','Fournisseur2'),(2,'Carte mère ASRock A88M-G/3.1','Fournisseur3'),(3,'Graphismes AMD Radeon R7 (866 MHz - 512 Cores Radeon)','Fournisseur2'),(4,'8 Go (2x 4Go) de mémoire DDR3 2133 MHz','Fournisseur1'),(5,'Disque 1 To Serial ATA 6Gb/s 7200 tpm','Fournisseur1'),(6,'Carte mère à base d\' Intel B85 Express - Micro ATX','Fournisseur3'),(7,'Processeur Intel Pentium G3240 - Dual Core 3.1 GHz','Fournisseur2'),(8,'RAM 8 Go DDR3-SDRAM PC12800','Fournisseur1'),(9,'Carte graphique NVIDIA GT 730 2 Go','Fournisseur1'),(10,'Disque SSD 180 Go 2.5\" Serial ATA 6Gb/s','Fournisseur3'),(11,'Disque dur Seagate Barracuda 7200Tr SATA 6Gb/s 1 To','Fournisseur1'),(12,'Processeur Intel Celeron N3000 (Dual-Core 1.04 GHz / 2.08 GHz Rafale - Cache 2 Mo)','Fournisseur2'),(13,'Design fanless (sans ventilateur), pour un fonctionnement silencieux (0 dB)','Fournisseur1'),(14,'RAM 4 Go DDR3 1600 MHz','Fournisseur3'),(15,'Disque dur 1 To','Fournisseur1'),(16,'Processeur 4-Core Intel Core i7-6700K (4.0 GHz)','Fournisseur1'),(17,'Carte mère ASUS Z170 PRO Gaming','Fournisseur3'),(18,'RAM Ballistix Elite 16 Go (2 x 8 Go) DDR4 3000 MHz CL15','Fournisseur2'),(19,'Disque système Crucial MX300 525 Go','Fournisseur1'),(20,'SSHD Seagate FireCuda SSHD 2 To','Fournisseur1'),(21,'Carte graphique ASUS ROG STRIX-GTX1070-8G-GAMING - GeForce GTX 1070','Fournisseur2'),(22,'A DEFINIR','Fournisseur0');
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emarket_user`
--

DROP TABLE IF EXISTS `emarket_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emarket_user` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emarket_user`
--

LOCK TABLES `emarket_user` WRITE;
/*!40000 ALTER TABLE `emarket_user` DISABLE KEYS */;
INSERT INTO `emarket_user` VALUES ('admin','123','Dile','O'),('céline','123','Line','Cé'),('robert','123','Bert','Ro');
/*!40000 ALTER TABLE `emarket_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupe` (
  `groupe_id` varchar(255) NOT NULL,
  PRIMARY KEY (`groupe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupe`
--

LOCK TABLES `groupe` WRITE;
/*!40000 ALTER TABLE `groupe` DISABLE KEYS */;
INSERT INTO `groupe` VALUES ('Commerciaux'),('Internautes');
/*!40000 ALTER TABLE `groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `selling_price` double DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'LDLC PC Abaddon',499.95,'Obtenez d\'excellentes performances pour un prix absolument incroyable grâce au LDLC PC Abaddon et au processeur AMD A10-7870K (3.9 GHz) Black Edition. La technologie CPU multi-coeur et l\'excellence des technologies graphiques AMD Radeon haut de gamme sont combinées au sein d\'un même process'),(2,'LDLC PC Artist',499.95,'Le LDLC PC Artist est votre ticket d\'entrée dans l\'univers envoutant de la Haute Définition. Dédiée à la vidéo Haute Définition et aux applications graphiques, cette configuration vous permettra de visualiser des vidéos fantastiques et d\'éditer ou retoucher vos plus belles photos en toute simplicité'),(3,'LDLC PC Bazooka',879.95,'Le LDLC PC Bazooka est un PC Gaming abordable équipé d\'un processeur Intel dernière génération, d\'une carte mère MSI, de 16 Go de RAM DDR4 et d\'une carte graphique Gamer NVIDIA GeForce GTX 1060. Cette machine de guerre dédiée aux jeux vidéo vous permettra d\'aller à l\'essentiel : JOUER & GAGNER !'),(4,'LDLC PC BEEBOX-CEL3000-4-H10',229.95,'Laissez-vous séduite par la compacité, la vitesse et le silence du LDLC PC BEEBOX-CEL3000-4-H10 ! Basé sur l\'excellent barebone ASRock Beebox équipé d\'une carte mère Intel NUC, ce mini PC offre une compatibilité 4K ainsi qu\'un affichage simultané sur 3 écrans.'),(5,'LDLC PC BlockBuster - Team LDLC',1899.95,'Le LDLC PC BlockBuster - Team LDLC est une vraie machine de guerre. Processeur i7, GPU NVIDIA GeForce GTX 1070, disques SSD et SSHD : il saura séduire les gamers chevronnés en proposant une machine qui associe à la fois performance, design, et fonctionnalités dernière génération.'),(6,'LDLC PC Nextreme',799.95,'Les processeurs AMD FX ont battu des records, maintenant c\'est votre tour grâce au PC LDLC Nextreme ! Une configuration sur-mesure pour vivre une expérience multitâche sans égale en termes de performances pures avec une architecture nouvelle et un prix très intéressant.'),(7,'LDLC PC RealT',2099.95,'Le PC de bureau LDLC RealT est un PC Gaming VR créé spécialement pour exploiter pleinement la Réalité Virtuelle. L\'association des meilleurs composants du marché à la carte graphique haut de gamme NVIDIA GeForce GTX 1080 vous permettra de plonger dans l\'univers des jeux 3D en Réalité Virtuelle.'),(8,'LDLC PC Viewriser Lite',799.95,'Un écrin superbe et de bonnes performances, le PC LDLC Viewriser Lite en met plein la vue et pas uniquement sur votre écran ! Processeur Intel Core i5, 8 Go de RAM, SSD ultra-rapide et carte graphique gamer vous permettront de jouer à vos jeux pc favoris en toute simplicité ... et avec style !');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_component`
--

DROP TABLE IF EXISTS `product_has_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_has_component` (
  `product_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`,`component_id`),
  KEY `fk_component_id` (`component_id`),
  CONSTRAINT `fk_component_id` FOREIGN KEY (`component_id`) REFERENCES `component` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_component`
--

LOCK TABLES `product_has_component` WRITE;
/*!40000 ALTER TABLE `product_has_component` DISABLE KEYS */;
INSERT INTO `product_has_component` VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(2,6,1),(2,7,1),(2,8,1),(2,9,1),(2,10,1),(2,11,1),(3,12,1),(3,13,1),(3,14,1),(3,15,1),(4,16,1),(4,17,1),(4,18,1),(4,19,1),(4,20,1),(4,21,1),(5,22,1),(6,22,1),(8,22,1);
/*!40000 ALTER TABLE `product_has_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) NOT NULL,
  `shoppingcartitem_id` int(11) NOT NULL,
  `totalPrice` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_shoppingcart_shoppingcartitem_id` (`shoppingcartitem_id`),
  KEY `fk_shoppingcart_user_login` (`user_login`),
  CONSTRAINT `fk_shoppingcart_shoppingcartitem_id` FOREIGN KEY (`shoppingcartitem_id`) REFERENCES `shoppingcartitem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_shoppingcart_user_login` FOREIGN KEY (`user_login`) REFERENCES `emarket_user` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcartitem`
--

DROP TABLE IF EXISTS `shoppingcartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcartitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_shoppingcart_product_id` (`product_id`),
  CONSTRAINT `fk_shoppingcart_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcartitem`
--

LOCK TABLES `shoppingcartitem` WRITE;
/*!40000 ALTER TABLE `shoppingcartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_group`
--

DROP TABLE IF EXISTS `user_has_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_group` (
  `login` varchar(50) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  PRIMARY KEY (`login`,`group_id`),
  CONSTRAINT `fk_login` FOREIGN KEY (`login`) REFERENCES `emarket_user` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_group`
--

LOCK TABLES `user_has_group` WRITE;
/*!40000 ALTER TABLE `user_has_group` DISABLE KEYS */;
INSERT INTO `user_has_group` VALUES ('admin','Commerciaux'),('céline','Internautes'),('robert','Internautes');
/*!40000 ALTER TABLE `user_has_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07  9:57:50
