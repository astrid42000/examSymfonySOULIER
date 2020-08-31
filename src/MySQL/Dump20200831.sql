-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: journal
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Alinéa : Comment des actionnaires peuvent-ils reprendre leur propre entreprise ?','alinea-5f4cc297e9c92.jpeg','Une ordonnance gouvernementale du 20 mai permet, jusqu\'à fin 2020, à des dirigeants d\'entreprise ayant déposé le bilan de se présenter comme acquéreurs si leur offre maintient l\'emploi','L’offre de reprise de l’enseigne d’ameublement Alinéa, en redressement judiciaire, par ses actuels actionnaires doit être examiné, ce lundi, par le tribunal de commerce de Marseille. \r\n\r\nCette procédure a été rendue possible par une ordonnance gouvernementale du 20 mai. On fait le point.\r\n\r\nQu’est-ce qui fait polémique ?\r\nGaël Perdriau, maire LR de Saint-Etienne, a tempêté mi-août contre cette ordonnance motivée par la crise sanitaire, mais qui selon lui pourrait avoir « des conséquences désastreuses ». Elle permet, jusqu’à fin 2020, à des dirigeants d’entreprise ayant déposé le bilan de se présenter comme acquéreurs si leur offre maintient l’emploi.\r\n\r\nLe cas se pose pour l’enseigne Alinea, qui a été déclarée en cessation de paiement fin mai. La seule offre de reprise émane de la famille Mulliez, déjà propriétaire de cette enseigne comptant des magasins dans toute la France. Pour Gaël Perdriau, particulièrement concerné car la métropole stéphanoise accueille un magasin Alinea ne figurant pas dans l’offre de reprise des Mulliez, le risque est que les actionnaires puissent « racheter leur entreprise » après avoir « effacé leurs dettes auprès des fournisseurs ou de l’Etat et des organismes sociaux ».\r\n\r\nPourquoi une telle mesure ?\r\nAvocat spécialisé dans les procédures collectives, Thomas Deschryver, du cabinet Cornet Vincent Segurel, estime que l’ordonnance peut être « un mécanisme intéressant dans cette période de Covid », parce qu’elle « permet de sauver le maximum d’emplois ». « Si un dirigeant veut reprendre sa propre entreprise mais propose de sauver moins d’emplois qu’un autre, j’ai le sentiment que l’esprit de l’ordonnance n’est pas de laisser l’entreprise au dirigeant en place, mais de privilégier la pérennité de l’entreprise », expose-t-il.\r\n\r\nIl cite deux exemples. Dans le cas de la marque de vêtements pour enfants Orchestra-Prémaman, le fondateur a vu son offre retenue car « elle était mieux disante sur le plan social ». Cela a toutefois fait grincer des dents au sein de l’entreprise. Dans le cas de la chaîne de vêtements Camaïeu en revanche, le tribunal de commerce de Lille a préféré la Financière immobilière bordelaise (FIB) au détriment de la direction actuelle, privilégiant une offre ne laissant « que » 500 salariés sur le carreau.'),(3,'« Tenet » réussit le meilleur démarrage de l’année dans les salles françaises','tenet-palindrome-640x400-5f4cf492a9a9e.jpeg','Sorti en France mercredi, le nouveau film de Christopher Nolan confirme les espoirs que les exploitants de salles plaçaient en lui','l était annoncé comme le film qui allait «sauver les salles de cinéma» fragilisées par la crise sanitaire. Tenet, le dernier long-métrage de Christopher Nolan, a en tout cas de quoi inciter les exploitants à un regain d’optimisme. Sorti mercredi en France, il a enregistré 809.601 entrées sur le territoire français à l’issue de son premier week-end d’exploitation, révèle ce lundi Warner Bros.\r\n\r\nIl s’agit du meilleur démarrage à l’issue d’un premier week-end depuis le mois de janvier. Jusque-là, le meilleur score depuis le début de l’année avait été réalisé par Sonic, le film et ses 569.071 entrées en février. Pas de quoi faire trembler Bienvenue chez les Ch’tis qui détient le record de la catégorie avec 3.6 millions d’entrées.'),(4,'Coronavirus à Rennes : Un dépistage mobile au centre commercial Alma pour « aller vers d’autres populations »','telechargement-5f4cf51896cbb.jpeg','L’agence régionale de santé a sollicité le plus grand centre commercial de la région','L’épidémie de Covid-19 continue de progresser en Bretagne. Pour tenter d’endiguer cette croissance du nombre de cas, l’Agence régionale de santé multiplie les campagnes de tests. A Rennes, elle a sollicité le centre Alma, plus grand centre commercial de la métropole, pour accueillir une unité de dépistage mobile. L’objectif est double. D’abord augmenter la capacité de tests de la région mais aussi « aller vers d’autres populations » en se rendant visible sur le parvis du pôle commercial.\r\n\r\nL’unité de dépistage sera ouverte ce lundi 31 août et mardi 1er septembre de 14 h à 19 h sur le parking du centre Alma, au pied de la tour. Elle est accessible sans rendez-vous et gratuitement à toutes les personnes souhaitant se faire tester. Une quarantaine de tests par heure pourront être menés.');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20200831072030','2020-08-31 07:20:39',90),('DoctrineMigrations\\Version20200831073339','2020-08-31 07:33:43',84),('DoctrineMigrations\\Version20200831073809','2020-08-31 07:38:15',86),('DoctrineMigrations\\Version20200831111044','2020-08-31 11:10:50',113);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journaliste`
--

DROP TABLE IF EXISTS `journaliste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journaliste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redefine_password` tinyint(1) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8FA00674E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journaliste`
--

LOCK TABLES `journaliste` WRITE;
/*!40000 ALTER TABLE `journaliste` DISABLE KEYS */;
INSERT INTO `journaliste` VALUES (1,'toto@toto.fr','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$eTJBVGFiT2NmVHNOWkNvSw$Q8rNQvrP4kvbss1Ikqu7wkYB/HpT002gJjOb8KaPTtc',1,'toto');
/*!40000 ALTER TABLE `journaliste` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 16:18:26
