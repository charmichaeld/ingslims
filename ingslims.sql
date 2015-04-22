-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: fcgr_ngslims
-- ------------------------------------------------------
-- Server version	5.1.61

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `task` varchar(25) NOT NULL,
  `enabled` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes` (
  `main_table_id` int(10) unsigned NOT NULL,
  `id_in_main_table` int(10) unsigned NOT NULL,
  `box_table_id` int(10) unsigned NOT NULL,
  `box_number` int(10) unsigned NOT NULL,
  `box_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `main_table_id` int(10) unsigned NOT NULL,
  `id_in_main_table` int(10) unsigned NOT NULL,
  `entry_table_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fastqc`
--

DROP TABLE IF EXISTS `fastqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fastqc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` varchar(100) NOT NULL,
  `lot_id` varchar(100) NOT NULL,
  `run_id` varchar(100) NOT NULL,
  `num_pairs` varchar(20) DEFAULT NULL,
  `num_bases` varchar(20) DEFAULT NULL,
  `run_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flowcell`
--

DROP TABLE IF EXISTS `flowcell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flowcell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flowcell_id` varchar(100) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `lanes` tinyint(3) unsigned DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `lot` varchar(50) DEFAULT NULL,
  `rgt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flowcell_id` (`flowcell_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `index_kit`
--

DROP TABLE IF EXISTS `index_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_kit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_kit_id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT '-',
  `indexes` varchar(50) DEFAULT NULL,
  `samples` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `lot` varchar(50) DEFAULT NULL,
  `rgt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_kit_id` (`index_kit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instrument_id` varchar(100) NOT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lanes`
--

DROP TABLE IF EXISTS `lanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes` (
  `lane_run_id` varchar(100) DEFAULT NULL,
  `lane` tinyint(3) unsigned DEFAULT NULL,
  `lane_pool_entries` tinyint(3) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `library_id` varchar(100) NOT NULL,
  `library_type` varchar(25) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sample_prep_kit_boxes` varchar(2) DEFAULT NULL,
  `library_sample_entries` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `library_type`
--

DROP TABLE IF EXISTS `library_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `library_type_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `library_type_id` (`library_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_id` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `date` datetime DEFAULT NULL,
  `db_table` int(10) unsigned DEFAULT NULL,
  `id_in_table` int(10) unsigned DEFAULT NULL,
  `note` text,
  `username` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organism`
--

DROP TABLE IF EXISTS `organism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organism` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `organism_id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pool_id` varchar(100) NOT NULL,
  `pool_type` varchar(25) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `pool_index_kit_id` varchar(50) DEFAULT NULL,
  `pool_library_entries` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pool_type`
--

DROP TABLE IF EXISTS `pool_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pool_type_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pool_type_id` (`pool_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `project_sample_entries` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `run`
--

DROP TABLE IF EXISTS `run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `run` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `run_id` varchar(100) NOT NULL,
  `experiment_name` varchar(100) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `client` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `run_status` varchar(100) DEFAULT NULL,
  `picomole` varchar(10) DEFAULT NULL,
  `q30` varchar(10) DEFAULT NULL,
  `pf` varchar(25) DEFAULT NULL,
  `density` varchar(20) DEFAULT NULL,
  `num_reads` bigint(20) unsigned DEFAULT NULL,
  `num_bases` bigint(20) unsigned DEFAULT NULL,
  `phix_added` varchar(20) DEFAULT NULL,
  `phix_aligned` varchar(10) DEFAULT NULL,
  `phix` bigint(20) unsigned DEFAULT NULL,
  `run_flowcell_id` mediumint(8) unsigned DEFAULT NULL,
  `run_pool_entries` mediumint(8) unsigned DEFAULT NULL,
  `run_sequencer_reagent_kit_id` mediumint(8) unsigned DEFAULT NULL,
  `run_folder_name` varchar(100) DEFAULT NULL,
  `run_instrument_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `run_status`
--

DROP TABLE IF EXISTS `run_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `run_status` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `run_status_id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sample_id` varchar(100) NOT NULL,
  `lot_id` varchar(100) NOT NULL,
  `organism` varchar(50) DEFAULT NULL,
  `sample_type` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_alt` (`sample_id`,`lot_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample_prep_kit`
--

DROP TABLE IF EXISTS `sample_prep_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_prep_kit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sample_prep_kit_id` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT '-',
  `box` varchar(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `lot` varchar(50) DEFAULT NULL,
  `rgt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dna_prep_kit_id` (`sample_prep_kit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample_type`
--

DROP TABLE IF EXISTS `sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sample_type_id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sequencer_reagent_kit`
--

DROP TABLE IF EXISTS `sequencer_reagent_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequencer_reagent_kit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequencer_reagent_kit_id` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `cycles` varchar(4) DEFAULT NULL,
  `version` char(2) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `lot` varchar(50) DEFAULT NULL,
  `rgt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequencer_reagent_kit_id` (`sequencer_reagent_kit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `status_id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `date` datetime DEFAULT NULL,
  `db_table` int(10) unsigned DEFAULT NULL,
  `id_in_table` int(10) unsigned DEFAULT NULL,
  `transaction` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_cookies`
--

DROP TABLE IF EXISTS `user_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cookies` (
  `cookie_id` char(32) NOT NULL,
  `username` char(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  `ip_addr` char(15) NOT NULL,
  PRIMARY KEY (`cookie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-22  9:07:05
