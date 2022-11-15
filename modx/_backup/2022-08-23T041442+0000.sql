-- MariaDB dump 10.19  Distrib 10.6.8-MariaDB, for Linux (aarch64)
--
-- Host: mariadb    Database: modx
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~jammy

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
-- Table structure for table `modx_access_actiondom`
--

DROP TABLE IF EXISTS `modx_access_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actiondom`
--

LOCK TABLES `modx_access_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_access_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_actions`
--

DROP TABLE IF EXISTS `modx_access_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actions`
--

LOCK TABLES `modx_access_actions` WRITE;
/*!40000 ALTER TABLE `modx_access_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_category`
--

DROP TABLE IF EXISTS `modx_access_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_category`
--

LOCK TABLES `modx_access_category` WRITE;
/*!40000 ALTER TABLE `modx_access_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_context`
--

DROP TABLE IF EXISTS `modx_access_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_context`
--

LOCK TABLES `modx_access_context` WRITE;
/*!40000 ALTER TABLE `modx_access_context` DISABLE KEYS */;
INSERT INTO `modx_access_context` VALUES (1,'web','modUserGroup',0,9999,3),(2,'mgr','modUserGroup',1,0,2),(3,'web','modUserGroup',1,0,2);
/*!40000 ALTER TABLE `modx_access_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_elements`
--

DROP TABLE IF EXISTS `modx_access_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_elements`
--

LOCK TABLES `modx_access_elements` WRITE;
/*!40000 ALTER TABLE `modx_access_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_media_source`
--

DROP TABLE IF EXISTS `modx_access_media_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_media_source`
--

LOCK TABLES `modx_access_media_source` WRITE;
/*!40000 ALTER TABLE `modx_access_media_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_media_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_menus`
--

DROP TABLE IF EXISTS `modx_access_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_menus`
--

LOCK TABLES `modx_access_menus` WRITE;
/*!40000 ALTER TABLE `modx_access_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_namespace`
--

DROP TABLE IF EXISTS `modx_access_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_namespace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_namespace`
--

LOCK TABLES `modx_access_namespace` WRITE;
/*!40000 ALTER TABLE `modx_access_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_permissions`
--

DROP TABLE IF EXISTS `modx_access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_permissions`
--

LOCK TABLES `modx_access_permissions` WRITE;
/*!40000 ALTER TABLE `modx_access_permissions` DISABLE KEYS */;
INSERT INTO `modx_access_permissions` VALUES (1,1,'about','perm.about_desc',1),(2,1,'access_permissions','perm.access_permissions_desc',1),(3,1,'actions','perm.actions_desc',1),(4,1,'change_password','perm.change_password_desc',1),(5,1,'change_profile','perm.change_profile_desc',1),(6,1,'charsets','perm.charsets_desc',1),(7,1,'class_map','perm.class_map_desc',1),(8,1,'components','perm.components_desc',1),(9,1,'content_types','perm.content_types_desc',1),(10,1,'countries','perm.countries_desc',1),(11,1,'create','perm.create_desc',1),(12,1,'credits','perm.credits_desc',1),(13,1,'customize_forms','perm.customize_forms_desc',1),(14,1,'dashboards','perm.dashboards_desc',1),(15,1,'database','perm.database_desc',1),(16,1,'database_truncate','perm.database_truncate_desc',1),(17,1,'delete_category','perm.delete_category_desc',1),(18,1,'delete_chunk','perm.delete_chunk_desc',1),(19,1,'delete_context','perm.delete_context_desc',1),(20,1,'delete_document','perm.delete_document_desc',1),(21,1,'delete_weblink','perm.delete_weblink_desc',1),(22,1,'delete_symlink','perm.delete_symlink_desc',1),(23,1,'delete_static_resource','perm.delete_static_resource_desc',1),(24,1,'delete_eventlog','perm.delete_eventlog_desc',1),(25,1,'delete_plugin','perm.delete_plugin_desc',1),(26,1,'delete_propertyset','perm.delete_propertyset_desc',1),(27,1,'delete_snippet','perm.delete_snippet_desc',1),(28,1,'delete_template','perm.delete_template_desc',1),(29,1,'delete_tv','perm.delete_tv_desc',1),(30,1,'delete_role','perm.delete_role_desc',1),(31,1,'delete_user','perm.delete_user_desc',1),(32,1,'directory_chmod','perm.directory_chmod_desc',1),(33,1,'directory_create','perm.directory_create_desc',1),(34,1,'directory_list','perm.directory_list_desc',1),(35,1,'directory_remove','perm.directory_remove_desc',1),(36,1,'directory_update','perm.directory_update_desc',1),(37,1,'edit_category','perm.edit_category_desc',1),(38,1,'edit_chunk','perm.edit_chunk_desc',1),(39,1,'edit_context','perm.edit_context_desc',1),(40,1,'edit_document','perm.edit_document_desc',1),(41,1,'edit_weblink','perm.edit_weblink_desc',1),(42,1,'edit_symlink','perm.edit_symlink_desc',1),(43,1,'edit_static_resource','perm.edit_static_resource_desc',1),(44,1,'edit_locked','perm.edit_locked_desc',1),(45,1,'edit_plugin','perm.edit_plugin_desc',1),(46,1,'edit_propertyset','perm.edit_propertyset_desc',1),(47,1,'edit_role','perm.edit_role_desc',1),(48,1,'edit_snippet','perm.edit_snippet_desc',1),(49,1,'edit_template','perm.edit_template_desc',1),(50,1,'edit_tv','perm.edit_tv_desc',1),(51,1,'edit_user','perm.edit_user_desc',1),(52,1,'element_tree','perm.element_tree_desc',1),(53,1,'empty_cache','perm.empty_cache_desc',1),(54,1,'error_log_erase','perm.error_log_erase_desc',1),(55,1,'error_log_view','perm.error_log_view_desc',1),(56,1,'export_static','perm.export_static_desc',1),(57,1,'file_create','perm.file_create_desc',1),(58,1,'file_list','perm.file_list_desc',1),(59,1,'file_manager','perm.file_manager_desc',1),(60,1,'file_remove','perm.file_remove_desc',1),(61,1,'file_tree','perm.file_tree_desc',1),(62,1,'file_update','perm.file_update_desc',1),(63,1,'file_upload','perm.file_upload_desc',1),(64,1,'file_unpack','perm.file_unpack_desc',1),(65,1,'file_view','perm.file_view_desc',1),(66,1,'flush_sessions','perm.flush_sessions_desc',1),(67,1,'frames','perm.frames_desc',1),(68,1,'help','perm.help_desc',1),(69,1,'home','perm.home_desc',1),(70,1,'import_static','perm.import_static_desc',1),(71,1,'languages','perm.languages_desc',1),(72,1,'lexicons','perm.lexicons_desc',1),(73,1,'list','perm.list_desc',1),(74,1,'load','perm.load_desc',1),(75,1,'logout','perm.logout_desc',1),(76,1,'logs','perm.logs_desc',1),(77,1,'menu_reports','perm.menu_reports_desc',1),(78,1,'menu_security','perm.menu_security_desc',1),(79,1,'menu_site','perm.menu_site_desc',1),(80,1,'menu_support','perm.menu_support_desc',1),(81,1,'menu_system','perm.menu_system_desc',1),(82,1,'menu_tools','perm.menu_tools_desc',1),(83,1,'menu_trash','perm.menu_trash_desc',1),(84,1,'menu_user','perm.menu_user_desc',1),(85,1,'menus','perm.menus_desc',1),(86,1,'messages','perm.messages_desc',1),(87,1,'namespaces','perm.namespaces_desc',1),(88,1,'new_category','perm.new_category_desc',1),(89,1,'new_chunk','perm.new_chunk_desc',1),(90,1,'new_context','perm.new_context_desc',1),(91,1,'new_document','perm.new_document_desc',1),(92,1,'new_static_resource','perm.new_static_resource_desc',1),(93,1,'new_symlink','perm.new_symlink_desc',1),(94,1,'new_weblink','perm.new_weblink_desc',1),(95,1,'new_document_in_root','perm.new_document_in_root_desc',1),(96,1,'new_plugin','perm.new_plugin_desc',1),(97,1,'new_propertyset','perm.new_propertyset_desc',1),(98,1,'new_role','perm.new_role_desc',1),(99,1,'new_snippet','perm.new_snippet_desc',1),(100,1,'new_template','perm.new_template_desc',1),(101,1,'new_tv','perm.new_tv_desc',1),(102,1,'new_user','perm.new_user_desc',1),(103,1,'packages','perm.packages_desc',1),(104,1,'policy_delete','perm.policy_delete_desc',1),(105,1,'policy_edit','perm.policy_edit_desc',1),(106,1,'policy_new','perm.policy_new_desc',1),(107,1,'policy_save','perm.policy_save_desc',1),(108,1,'policy_view','perm.policy_view_desc',1),(109,1,'policy_template_delete','perm.policy_template_delete_desc',1),(110,1,'policy_template_edit','perm.policy_template_edit_desc',1),(111,1,'policy_template_new','perm.policy_template_new_desc',1),(112,1,'policy_template_save','perm.policy_template_save_desc',1),(113,1,'policy_template_view','perm.policy_template_view_desc',1),(114,1,'property_sets','perm.property_sets_desc',1),(115,1,'providers','perm.providers_desc',1),(116,1,'publish_document','perm.publish_document_desc',1),(117,1,'purge_deleted','perm.purge_deleted_desc',1),(118,1,'remove','perm.remove_desc',1),(119,1,'remove_locks','perm.remove_locks_desc',1),(120,1,'resource_duplicate','perm.resource_duplicate_desc',1),(121,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),(122,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),(123,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),(124,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),(125,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),(126,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),(127,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),(128,1,'resource_quick_create','perm.resource_quick_create_desc',1),(129,1,'resource_quick_update','perm.resource_quick_update_desc',1),(130,1,'resource_tree','perm.resource_tree_desc',1),(131,1,'save','perm.save_desc',1),(132,1,'save_category','perm.save_category_desc',1),(133,1,'save_chunk','perm.save_chunk_desc',1),(134,1,'save_context','perm.save_context_desc',1),(135,1,'save_document','perm.save_document_desc',1),(136,1,'save_plugin','perm.save_plugin_desc',1),(137,1,'save_propertyset','perm.save_propertyset_desc',1),(138,1,'save_role','perm.save_role_desc',1),(139,1,'save_snippet','perm.save_snippet_desc',1),(140,1,'save_template','perm.save_template_desc',1),(141,1,'save_tv','perm.save_tv_desc',1),(142,1,'save_user','perm.save_user_desc',1),(143,1,'search','perm.search_desc',1),(144,1,'set_sudo','perm.set_sudo_desc',1),(145,1,'settings','perm.settings_desc',1),(146,1,'events','perm.events_desc',1),(147,1,'source_save','perm.source_save_desc',1),(148,1,'source_delete','perm.source_delete_desc',1),(149,1,'source_edit','perm.source_edit_desc',1),(150,1,'source_view','perm.source_view_desc',1),(151,1,'sources','perm.sources_desc',1),(152,1,'steal_locks','perm.steal_locks_desc',1),(153,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),(154,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),(155,1,'undelete_document','perm.undelete_document_desc',1),(156,1,'unpublish_document','perm.unpublish_document_desc',1),(157,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),(158,1,'usergroup_delete','perm.usergroup_delete_desc',1),(159,1,'usergroup_edit','perm.usergroup_edit_desc',1),(160,1,'usergroup_new','perm.usergroup_new_desc',1),(161,1,'usergroup_save','perm.usergroup_save_desc',1),(162,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),(163,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),(164,1,'usergroup_view','perm.usergroup_view_desc',1),(165,1,'view','perm.view_desc',1),(166,1,'view_category','perm.view_category_desc',1),(167,1,'view_chunk','perm.view_chunk_desc',1),(168,1,'view_context','perm.view_context_desc',1),(169,1,'view_document','perm.view_document_desc',1),(170,1,'view_element','perm.view_element_desc',1),(171,1,'view_eventlog','perm.view_eventlog_desc',1),(172,1,'view_offline','perm.view_offline_desc',1),(173,1,'view_plugin','perm.view_plugin_desc',1),(174,1,'view_propertyset','perm.view_propertyset_desc',1),(175,1,'view_role','perm.view_role_desc',1),(176,1,'view_snippet','perm.view_snippet_desc',1),(177,1,'view_sysinfo','perm.view_sysinfo_desc',1),(178,1,'view_template','perm.view_template_desc',1),(179,1,'view_tv','perm.view_tv_desc',1),(180,1,'view_user','perm.view_user_desc',1),(181,1,'view_unpublished','perm.view_unpublished_desc',1),(182,1,'workspaces','perm.workspaces_desc',1),(183,2,'add_children','perm.add_children_desc',1),(184,2,'copy','perm.copy_desc',1),(185,2,'create','perm.create_desc',1),(186,2,'delete','perm.delete_desc',1),(187,2,'list','perm.list_desc',1),(188,2,'load','perm.load_desc',1),(189,2,'move','perm.move_desc',1),(190,2,'publish','perm.publish_desc',1),(191,2,'remove','perm.remove_desc',1),(192,2,'save','perm.save_desc',1),(193,2,'steal_lock','perm.steal_lock_desc',1),(194,2,'undelete','perm.undelete_desc',1),(195,2,'unpublish','perm.unpublish_desc',1),(196,2,'view','perm.view_desc',1),(197,3,'load','perm.load_desc',1),(198,3,'list','perm.list_desc',1),(199,3,'view','perm.view_desc',1),(200,3,'save','perm.save_desc',1),(201,3,'remove','perm.remove_desc',1),(202,4,'add_children','perm.add_children_desc',1),(203,4,'create','perm.create_desc',1),(204,4,'copy','perm.copy_desc',1),(205,4,'delete','perm.delete_desc',1),(206,4,'list','perm.list_desc',1),(207,4,'load','perm.load_desc',1),(208,4,'remove','perm.remove_desc',1),(209,4,'save','perm.save_desc',1),(210,4,'view','perm.view_desc',1),(211,5,'create','perm.create_desc',1),(212,5,'copy','perm.copy_desc',1),(213,5,'list','perm.list_desc',1),(214,5,'load','perm.load_desc',1),(215,5,'remove','perm.remove_desc',1),(216,5,'save','perm.save_desc',1),(217,5,'view','perm.view_desc',1),(218,6,'load','perm.load_desc',1),(219,6,'list','perm.list_desc',1),(220,6,'view','perm.view_desc',1),(221,6,'save','perm.save_desc',1),(222,6,'remove','perm.remove_desc',1),(223,6,'view_unpublished','perm.view_unpublished_desc',1),(224,6,'copy','perm.copy_desc',1),(225,7,'list','perm.list_desc',1),(226,7,'load','perm.load_desc',1),(227,7,'view','perm.view_desc',1);
/*!40000 ALTER TABLE `modx_access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policies`
--

DROP TABLE IF EXISTS `modx_access_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `template` int(10) unsigned NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policies`
--

LOCK TABLES `modx_access_policies` WRITE;
/*!40000 ALTER TABLE `modx_access_policies` DISABLE KEYS */;
INSERT INTO `modx_access_policies` VALUES (1,'Resource','MODX Resource Policy with all attributes.',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),(2,'Administrator','Context administration policy with all permissions.',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),(3,'Load Only','A minimal policy with permission to load an object.',0,3,'','{\"load\":true}','permissions'),(4,'Load, List and View','Provides load, list and view permissions only.',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(5,'Object','An Object policy with all permissions.',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),(6,'Element','MODX Element policy with all attributes.',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),(7,'Content Editor','Context administration policy with limited, content-editing related Permissions, but no publishing.',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"new_weblink\":true,\"new_symlink\":true,\"new_static_resource\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true}','permissions'),(8,'Media Source Admin','Media Source administration policy.',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),(9,'Media Source User','Media Source user policy, with basic viewing and using - but no editing - of Media Sources.',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(10,'Developer','Context administration policy with most Permissions except Administrator and Security functions.',0,0,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}','permissions'),(11,'Context','A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.',0,6,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}','permissions'),(12,'Hidden Namespace','Hidden Namespace policy, will not show Namespace in lists.',0,7,'','{\"load\":false,\"list\":false,\"view\":true}','permissions');
/*!40000 ALTER TABLE `modx_access_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

LOCK TABLES `modx_access_policy_template_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_template_groups` DISABLE KEYS */;
INSERT INTO `modx_access_policy_template_groups` VALUES (1,'Admin','All admin policy templates.'),(2,'Object','All Object-based policy templates.'),(3,'Resource','All Resource-based policy templates.'),(4,'Element','All Element-based policy templates.'),(5,'MediaSource','All Media Source-based policy templates.'),(6,'Namespace','All Namespace based policy templates.');
/*!40000 ALTER TABLE `modx_access_policy_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_templates`
--

DROP TABLE IF EXISTS `modx_access_policy_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_templates`
--

LOCK TABLES `modx_access_policy_templates` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_templates` DISABLE KEYS */;
INSERT INTO `modx_access_policy_templates` VALUES (1,1,'AdministratorTemplate','Context administration policy template with all permissions.','permissions'),(2,3,'ResourceTemplate','Resource Policy Template with all attributes.','permissions'),(3,2,'ObjectTemplate','Object Policy Template with all attributes.','permissions'),(4,4,'ElementTemplate','Element Policy Template with all attributes.','permissions'),(5,5,'MediaSourceTemplate','Media Source Policy Template with all attributes.','permissions'),(6,2,'ContextTemplate','Context Policy Template with all attributes.','permissions'),(7,6,'NamespaceTemplate','Namespace Policy Template with all attributes.','permissions');
/*!40000 ALTER TABLE `modx_access_policy_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resource_groups`
--

DROP TABLE IF EXISTS `modx_access_resource_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resource_groups`
--

LOCK TABLES `modx_access_resource_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_resource_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resource_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resources`
--

DROP TABLE IF EXISTS `modx_access_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resources`
--

LOCK TABLES `modx_access_resources` WRITE;
/*!40000 ALTER TABLE `modx_access_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_templatevars`
--

DROP TABLE IF EXISTS `modx_access_templatevars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_templatevars`
--

LOCK TABLES `modx_access_templatevars` WRITE;
/*!40000 ALTER TABLE `modx_access_templatevars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_templatevars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actiondom`
--

DROP TABLE IF EXISTS `modx_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actiondom`
--

LOCK TABLES `modx_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions`
--

DROP TABLE IF EXISTS `modx_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions`
--

LOCK TABLES `modx_actions` WRITE;
/*!40000 ALTER TABLE `modx_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions_fields`
--

DROP TABLE IF EXISTS `modx_actions_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(191) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions_fields`
--

LOCK TABLES `modx_actions_fields` WRITE;
/*!40000 ALTER TABLE `modx_actions_fields` DISABLE KEYS */;
INSERT INTO `modx_actions_fields` VALUES (1,'resource/update','modx-resource-settings','tab','','modx-panel-resource','',0),(2,'resource/update','modx-resource-main-left','tab','','modx-panel-resource','',1),(3,'resource/update','id','field','modx-resource-main-left','modx-panel-resource','',0),(4,'resource/update','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(5,'resource/update','longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(6,'resource/update','description','field','modx-resource-main-left','modx-panel-resource','',3),(7,'resource/update','introtext','field','modx-resource-main-left','modx-panel-resource','',4),(8,'resource/update','modx-resource-main-right','tab','','modx-panel-resource','',2),(9,'resource/update','template','field','modx-resource-main-right','modx-panel-resource','',0),(10,'resource/update','alias','field','modx-resource-main-right','modx-panel-resource','',1),(11,'resource/update','menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(12,'resource/update','link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(13,'resource/update','hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(14,'resource/update','published','field','modx-resource-main-right','modx-panel-resource','',5),(15,'resource/update','modx-page-settings','tab','','modx-panel-resource','',3),(16,'resource/update','modx-page-settings-left','tab','','modx-panel-resource','',4),(17,'resource/update','parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(18,'resource/update','class_key','field','modx-page-settings-left','modx-panel-resource','',1),(19,'resource/update','content_type','field','modx-page-settings-left','modx-panel-resource','',2),(20,'resource/update','content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(21,'resource/update','menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(22,'resource/update','modx-page-settings-right','tab','','modx-panel-resource','',5),(23,'resource/update','publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(24,'resource/update','pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(25,'resource/update','unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(26,'resource/update','modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(27,'resource/update','isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(28,'resource/update','searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(29,'resource/update','alias_visible','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(30,'resource/update','richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(31,'resource/update','uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(32,'resource/update','uri','field','modx-page-settings-right-box-left','modx-panel-resource','',5),(33,'resource/update','modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(34,'resource/update','cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(35,'resource/update','syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(36,'resource/update','deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(37,'resource/update','modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(38,'resource/update','modx-resource-access-permissions','tab','','modx-panel-resource','',9),(39,'resource/update','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),(40,'resource/update','modx-symlink-content','field','modx-resource-content','modx-panel-resource','',1),(41,'resource/update','modx-weblink-content','field','modx-resource-content','modx-panel-resource','',2),(42,'resource/create','modx-resource-settings','tab','','modx-panel-resource','',0),(43,'resource/create','modx-resource-main-left','tab','','modx-panel-resource','',1),(44,'resource/create','id','field','modx-resource-main-left','modx-panel-resource','',0),(45,'resource/create','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(46,'resource/create','longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(47,'resource/create','description','field','modx-resource-main-left','modx-panel-resource','',3),(48,'resource/create','introtext','field','modx-resource-main-left','modx-panel-resource','',4),(49,'resource/create','modx-resource-main-right','tab','','modx-panel-resource','',2),(50,'resource/create','template','field','modx-resource-main-right','modx-panel-resource','',0),(51,'resource/create','alias','field','modx-resource-main-right','modx-panel-resource','',1),(52,'resource/create','menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(53,'resource/create','link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(54,'resource/create','hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(55,'resource/create','published','field','modx-resource-main-right','modx-panel-resource','',5),(56,'resource/create','modx-page-settings','tab','','modx-panel-resource','',3),(57,'resource/create','modx-page-settings-left','tab','','modx-panel-resource','',4),(58,'resource/create','parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(59,'resource/create','class_key','field','modx-page-settings-left','modx-panel-resource','',1),(60,'resource/create','content_type','field','modx-page-settings-left','modx-panel-resource','',2),(61,'resource/create','content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(62,'resource/create','menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(63,'resource/create','modx-page-settings-right','tab','','modx-panel-resource','',5),(64,'resource/create','publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(65,'resource/create','pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(66,'resource/create','unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(67,'resource/create','modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(68,'resource/create','isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(69,'resource/create','searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(70,'resource/create','alias_visible','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(71,'resource/create','richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(72,'resource/create','uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(73,'resource/create','uri','field','modx-page-settings-right-box-left','modx-panel-resource','',5),(74,'resource/create','modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(75,'resource/create','cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(76,'resource/create','syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(77,'resource/create','deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(78,'resource/create','modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(79,'resource/create','modx-resource-access-permissions','tab','','modx-panel-resource','',9),(80,'resource/create','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0);
/*!40000 ALTER TABLE `modx_actions_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_users`
--

LOCK TABLES `modx_active_users` WRITE;
/*!40000 ALTER TABLE `modx_active_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_active_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories`
--

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories_closure`
--

DROP TABLE IF EXISTS `modx_categories_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT 0,
  `descendant` int(10) unsigned NOT NULL DEFAULT 0,
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories_closure`
--

LOCK TABLES `modx_categories_closure` WRITE;
/*!40000 ALTER TABLE `modx_categories_closure` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_categories_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_class_map`
--

DROP TABLE IF EXISTS `modx_class_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_class_map`
--

LOCK TABLES `modx_class_map` WRITE;
/*!40000 ALTER TABLE `modx_class_map` DISABLE KEYS */;
INSERT INTO `modx_class_map` VALUES (1,'modDocument','modResource','pagetitle','','core:resource'),(2,'modWebLink','modResource','pagetitle','','core:resource'),(3,'modSymLink','modResource','pagetitle','','core:resource'),(4,'modStaticResource','modResource','pagetitle','','core:resource'),(5,'modTemplate','modElement','templatename','','core:resource'),(6,'modTemplateVar','modElement','name','','core:resource'),(7,'modChunk','modElement','name','','core:resource'),(8,'modSnippet','modElement','name','','core:resource'),(9,'modPlugin','modElement','name','','core:resource');
/*!40000 ALTER TABLE `modx_class_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_content_type`
--

DROP TABLE IF EXISTS `modx_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_content_type`
--

LOCK TABLES `modx_content_type` WRITE;
/*!40000 ALTER TABLE `modx_content_type` DISABLE KEYS */;
INSERT INTO `modx_content_type` VALUES (1,'HTML','HTML content','text/html','.html',NULL,0),(2,'XML','XML content','text/xml','.xml',NULL,0),(3,'text','plain text content','text/plain','.txt',NULL,0),(4,'CSS','CSS content','text/css','.css',NULL,0),(5,'javascript','javascript content','text/javascript','.js',NULL,0),(6,'RSS','For RSS feeds','application/rss+xml','.rss',NULL,0),(7,'JSON','JSON','application/json','.json',NULL,0),(8,'PDF','PDF Files','application/pdf','.pdf',NULL,1);
/*!40000 ALTER TABLE `modx_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context`
--

DROP TABLE IF EXISTS `modx_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context`
--

LOCK TABLES `modx_context` WRITE;
/*!40000 ALTER TABLE `modx_context` DISABLE KEYS */;
INSERT INTO `modx_context` VALUES ('mgr','Manager','The default manager or administration context for content management activity.',0),('web','Website','The default front-end context for your web site.',0);
/*!40000 ALTER TABLE `modx_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_resource`
--

DROP TABLE IF EXISTS `modx_context_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_resource`
--

LOCK TABLES `modx_context_resource` WRITE;
/*!40000 ALTER TABLE `modx_context_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_context_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_setting`
--

DROP TABLE IF EXISTS `modx_context_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_setting`
--

LOCK TABLES `modx_context_setting` WRITE;
/*!40000 ALTER TABLE `modx_context_setting` DISABLE KEYS */;
INSERT INTO `modx_context_setting` VALUES ('mgr','allow_tags_in_post','1','combo-boolean','core','system',NULL),('mgr','modRequest.class','modManagerRequest','textfield','core','system',NULL);
/*!40000 ALTER TABLE `modx_context_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard`
--

DROP TABLE IF EXISTS `modx_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard`
--

LOCK TABLES `modx_dashboard` WRITE;
/*!40000 ALTER TABLE `modx_dashboard` DISABLE KEYS */;
INSERT INTO `modx_dashboard` VALUES (1,'Default','',0);
/*!40000 ALTER TABLE `modx_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget`
--

DROP TABLE IF EXISTS `modx_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget`
--

LOCK TABLES `modx_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget` VALUES (1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php','core','core:dashboards','half'),(2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php','core','core:dashboards','half'),(3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php','core','core:dashboards','half'),(4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php','core','core:dashboards','half'),(5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php','core','core:dashboards','full');
/*!40000 ALTER TABLE `modx_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT 0,
  `widget` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

LOCK TABLES `modx_dashboard_widget_placement` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget_placement` VALUES (1,5,0),(1,1,1),(1,2,2),(1,3,3),(1,4,4);
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_document_groups`
--

LOCK TABLES `modx_document_groups` WRITE;
/*!40000 ALTER TABLE `modx_document_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_document_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_documentgroup_names`
--

LOCK TABLES `modx_documentgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_documentgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_documentgroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_element_property_sets`
--

DROP TABLE IF EXISTS `modx_element_property_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_element_property_sets`
--

LOCK TABLES `modx_element_property_sets` WRITE;
/*!40000 ALTER TABLE `modx_element_property_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_element_property_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_extension_packages`
--

DROP TABLE IF EXISTS `modx_extension_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_extension_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_extension_packages`
--

LOCK TABLES `modx_extension_packages` WRITE;
/*!40000 ALTER TABLE `modx_extension_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_extension_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles`
--

DROP TABLE IF EXISTS `modx_fc_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles`
--

LOCK TABLES `modx_fc_profiles` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles_usergroups`
--

LOCK TABLES `modx_fc_profiles_usergroups` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_sets`
--

DROP TABLE IF EXISTS `modx_fc_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_sets`
--

LOCK TABLES `modx_fc_sets` WRITE;
/*!40000 ALTER TABLE `modx_fc_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_lexicon_entries`
--

DROP TABLE IF EXISTS `modx_lexicon_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_lexicon_entries`
--

LOCK TABLES `modx_lexicon_entries` WRITE;
/*!40000 ALTER TABLE `modx_lexicon_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_lexicon_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT 0,
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_occurred` (`user`,`occurred`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_log`
--

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;
INSERT INTO `modx_manager_log` VALUES (1,1,'2022-08-09 06:50:47','login','modContext','mgr'),(2,1,'2022-08-11 09:16:34','login','modContext','mgr'),(3,1,'2022-08-18 11:17:49','login','modContext','mgr'),(4,1,'2022-08-18 11:17:58','plugin_create','modPlugin','1'),(5,1,'2022-08-18 11:23:40','file_create','','/modx/assets.txt'),(6,1,'2022-08-18 11:24:23','setting_update','modSystemSetting','upload_files'),(7,1,'2022-08-18 11:24:42','plugin_update','modPlugin','1'),(8,1,'2022-08-18 11:24:42','propertyset_update_from_element','modPropertySet','modPlugin 1 Default'),(9,1,'2022-08-18 11:49:06','clear_cache','','mgr'),(10,1,'2022-08-18 11:49:19','plugin_update','modPlugin','1'),(11,1,'2022-08-18 11:49:19','propertyset_update_from_element','modPropertySet','modPlugin 1 Default'),(12,1,'2022-08-18 11:55:45','clear_cache','','mgr'),(13,1,'2022-08-18 11:56:08','clear_cache','','mgr'),(14,1,'2022-08-18 12:56:41','resource_update','modResource','1'),(15,1,'2022-08-18 12:57:41','template_update','modTemplate','1'),(16,1,'2022-08-18 12:57:41','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(17,1,'2022-08-18 12:57:45','template_update','modTemplate','1'),(18,1,'2022-08-18 12:57:45','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(19,1,'2022-08-18 13:03:34','template_update','modTemplate','1'),(20,1,'2022-08-18 13:03:34','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(21,1,'2022-08-18 13:04:03','template_update','modTemplate','1'),(22,1,'2022-08-18 13:04:03','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(23,1,'2022-08-18 13:04:40','template_update','modTemplate','1'),(24,1,'2022-08-18 13:04:40','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(25,1,'2022-08-18 13:09:34','template_update','modTemplate','1'),(26,1,'2022-08-18 13:09:34','propertyset_update_from_element','modPropertySet','modTemplate 1 Default'),(27,1,'2022-08-18 13:09:38','resource_update','modResource','1'),(28,1,'2022-08-18 13:21:19','plugin_update','modPlugin','1'),(29,1,'2022-08-18 13:21:19','propertyset_update_from_element','modPropertySet','modPlugin 1 Default'),(30,1,'2022-08-18 13:30:33','setting_update','modSystemSetting','friendly_urls'),(31,1,'2022-08-18 13:30:38','setting_update','modSystemSetting','upload_files'),(32,1,'2022-08-18 13:30:42','clear_cache','','mgr'),(33,1,'2022-08-18 14:00:18','clear_cache','','mgr'),(34,1,'2022-08-23 02:57:46','login','modContext','mgr');
/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources`
--

DROP TABLE IF EXISTS `modx_media_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources`
--

LOCK TABLES `modx_media_sources` WRITE;
/*!40000 ALTER TABLE `modx_media_sources` DISABLE KEYS */;
INSERT INTO `modx_media_sources` VALUES (1,'Filesystem','','sources.modFileMediaSource','a:0:{}',1);
/*!40000 ALTER TABLE `modx_media_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_contexts`
--

DROP TABLE IF EXISTS `modx_media_sources_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_contexts`
--

LOCK TABLES `modx_media_sources_contexts` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_elements`
--

DROP TABLE IF EXISTS `modx_media_sources_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_elements`
--

LOCK TABLES `modx_media_sources_elements` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT 0,
  `member` int(10) unsigned NOT NULL DEFAULT 0,
  `role` int(10) unsigned NOT NULL DEFAULT 1,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_member_groups`
--

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;
INSERT INTO `modx_member_groups` VALUES (1,1,1,2,0);
/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  `dashboard` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_names`
--

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;
INSERT INTO `modx_membergroup_names` VALUES (1,'Administrator',NULL,0,0,1);
/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_menus`
--

DROP TABLE IF EXISTS `modx_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_menus`
--

LOCK TABLES `modx_menus` WRITE;
/*!40000 ALTER TABLE `modx_menus` DISABLE KEYS */;
INSERT INTO `modx_menus` VALUES ('about','usernav','help','','<i class=\"icon-question-circle icon icon-large\"></i>',7,'','','help','core'),('acls','admin','security/permission','acls_desc','',5,'','','access_permissions','core'),('admin','usernav','','','<i class=\"icon-gear icon icon-large\"></i>',6,'','','settings','core'),('bespoke_manager','admin','security/forms','bespoke_manager_desc','',1,'','','customize_forms','core'),('components','topnav','','','',2,'','','components','core'),('content_types','site','system/contenttype','content_types_desc','',8,'','','content_types','core'),('contexts','admin','context','contexts_desc','',3,'','','view_context','core'),('dashboards','admin','system/dashboards','dashboards_desc','',2,'','','dashboards','core'),('edit_menu','admin','system/action','edit_menu_desc','',4,'','','actions','core'),('eventlog_viewer','reports','system/event','eventlog_viewer_desc','',2,'','','view_eventlog','core'),('file_browser','media','media/browser','file_browser_desc','',0,'','','file_manager','core'),('flush_access','manage','','flush_access_desc','',3,'','MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});','access_permissions','core'),('flush_sessions','manage','','flush_sessions_desc','',4,'','MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','flush_sessions','core'),('import_resources','site','system/import','import_resources_desc','',6,'','','import_static','core'),('import_site','site','system/import/html','import_site_desc','',5,'','','import_static','core'),('installer','components','workspaces','installer_desc','',0,'','','packages','core'),('lexicon_management','admin','workspaces/lexicon','lexicon_management_desc','',7,'','','lexicons','core'),('logout','user','security/logout','logout_desc','',2,'','MODx.logout(); return false;','logout','core'),('manage','topnav','','','',3,'','','menu_tools','core'),('media','topnav','','media_desc','',1,'','','file_manager','core'),('messages','user','security/message','messages_desc','',1,'','','messages','core'),('namespaces','admin','workspaces/namespace','namespaces_desc','',8,'','','namespaces','core'),('new_resource','site','resource/create','new_resource_desc','',0,'','','new_document','core'),('preview','site','','preview_desc','',4,'','MODx.preview(); return false;','','core'),('profile','user','security/profile','profile_desc','',0,'','','change_profile','core'),('propertysets','admin','element/propertyset','propertysets_desc','',6,'','','property_sets','core'),('refreshuris','refresh_site','','refreshuris_desc','',0,'','MODx.refreshURIs(); return false;','empty_cache','core'),('refresh_site','manage','','refresh_site_desc','',1,'','MODx.clearCache(); return false;','empty_cache','core'),('remove_locks','manage','','remove_locks_desc','',2,'','MODx.removeLocks();return false;','remove_locks','core'),('reports','manage','','reports_desc','',5,'','','menu_reports','core'),('resource_groups','site','security/resourcegroup','resource_groups_desc','',7,'','','access_permissions','core'),('site','topnav','','','',0,'','','menu_site','core'),('site_schedule','reports','resource/site_schedule','site_schedule_desc','',0,'','','view_document','core'),('sources','media','source','sources_desc','',1,'','','sources','core'),('system_settings','admin','system/settings','system_settings_desc','',0,'','','settings','core'),('topnav','','','topnav_desc','',0,'','','','core'),('user','usernav','','','<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>',5,'','','menu_user','core'),('usernav','','','usernav_desc','',0,'','','','core'),('users','manage','security/user','user_management_desc','',0,'','','view_user','core'),('view_logging','reports','system/logs','view_logging_desc','',1,'','','logs','core'),('view_sysinfo','reports','system/info','view_sysinfo_desc','',3,'','','view_sysinfo','core');
/*!40000 ALTER TABLE `modx_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_namespaces`
--

DROP TABLE IF EXISTS `modx_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_namespaces`
--

LOCK TABLES `modx_namespaces` WRITE;
/*!40000 ALTER TABLE `modx_namespaces` DISABLE KEYS */;
INSERT INTO `modx_namespaces` VALUES ('core','{core_path}','{assets_path}');
/*!40000 ALTER TABLE `modx_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_property_set`
--

DROP TABLE IF EXISTS `modx_property_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT 0,
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_property_set`
--

LOCK TABLES `modx_property_set` WRITE;
/*!40000 ALTER TABLE `modx_property_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_property_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_messages`
--

DROP TABLE IF EXISTS `modx_register_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) unsigned NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_messages`
--

LOCK TABLES `modx_register_messages` WRITE;
/*!40000 ALTER TABLE `modx_register_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_register_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_queues`
--

DROP TABLE IF EXISTS `modx_register_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_queues`
--

LOCK TABLES `modx_register_queues` WRITE;
/*!40000 ALTER TABLE `modx_register_queues` DISABLE KEYS */;
INSERT INTO `modx_register_queues` VALUES (1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}');
/*!40000 ALTER TABLE `modx_register_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_topics`
--

DROP TABLE IF EXISTS `modx_register_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_topics`
--

LOCK TABLES `modx_register_topics` WRITE;
/*!40000 ALTER TABLE `modx_register_topics` DISABLE KEYS */;
INSERT INTO `modx_register_topics` VALUES (1,1,'/resource/','2022-08-18 12:55:47',NULL,NULL);
/*!40000 ALTER TABLE `modx_register_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_session`
--

DROP TABLE IF EXISTS `modx_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_session`
--

LOCK TABLES `modx_session` WRITE;
/*!40000 ALTER TABLE `modx_session` DISABLE KEYS */;
INSERT INTO `modx_session` VALUES ('29196aa65dc3cb0c70f0f04e26e6667e',1661223466,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx62f203b659bb97.44111646_16304422a5ebaf3.82353136\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),('3c47fd027c059d9daa00d704f2904443',1660824563,'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),('4093325ddf1a5e5acb88f9407754d444',1660824576,'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),('9095e9f172b0b3375423b5086edf44a4',1660823794,'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),('cdab0aba7a3352e1d71539557f8a47c7',1660828898,'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),('f0b1dff022cbdf8fe70058b0d3adc409',1660828898,'modx.user.contextTokens|a:0:{}'),('fb1076b76a954ff2d83ffb6e3e1573a9',1660831283,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx62f203b659bb97.44111646_162fe1fdd82b9c1.81640852\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:4:{i:0;s:23:\"62fe36d32b9919.67100461\";i:1;s:23:\"62fe3a100c8345.26395017\";i:2;s:23:\"62fe458fc047a4.63107436\";i:3;s:23:\"62fe46338de5b4.21956038\";}');
/*!40000 ALTER TABLE `modx_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) NOT NULL DEFAULT 0,
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(191)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content`
--

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;
INSERT INTO `modx_site_content` VALUES (1,'document','text/html','Home','Congratulations!','','index',1,'',1,0,0,0,0,'','<header class=\"bd-header bg-dark py-3 d-flex align-items-stretch border-bottom border-dark\">\r\n  <div class=\"container-fluid d-flex align-items-center\">\r\n    <h1 class=\"d-flex align-items-center fs-4 text-white mb-0\">\r\n      <img src=\"/assets/app/images/bootstrap-logo-white.svg\" width=\"38\" height=\"30\" class=\"me-3\" alt=\"Bootstrap\">\r\n      Cheatsheet\r\n    </h1>\r\n  </div>\r\n</header>\r\n<aside class=\"bd-aside sticky-xl-top text-muted align-self-start mb-3 mb-xl-5 px-2\">\r\n  <h2 class=\"h6 pt-4 pb-3 mb-4 border-bottom\">On this page</h2>\r\n  <nav class=\"small\" id=\"toc\">\r\n    <ul class=\"list-unstyled\">\r\n      <li class=\"my-2\">\r\n        <button class=\"btn d-inline-flex align-items-center collapsed border-0\" data-bs-toggle=\"collapse\" aria-expanded=\"false\" data-bs-target=\"#contents-collapse\" aria-controls=\"contents-collapse\">Contents</button>\r\n        <ul class=\"list-unstyled ps-3 collapse\" id=\"contents-collapse\">\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#typography\">Typography</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#images\">Images</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#tables\">Tables</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#figures\">Figures</a></li>\r\n        </ul>\r\n      </li>\r\n      <li class=\"my-2\">\r\n        <button class=\"btn d-inline-flex align-items-center collapsed border-0\" data-bs-toggle=\"collapse\" aria-expanded=\"false\" data-bs-target=\"#forms-collapse\" aria-controls=\"forms-collapse\">Forms</button>\r\n        <ul class=\"list-unstyled ps-3 collapse\" id=\"forms-collapse\">\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#overview\">Overview</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#disabled-forms\">Disabled forms</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#sizing\">Sizing</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#input-group\">Input group</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#floating-labels\">Floating labels</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#validation\">Validation</a></li>\r\n        </ul>\r\n      </li>\r\n      <li class=\"my-2\">\r\n        <button class=\"btn d-inline-flex align-items-center collapsed border-0\" data-bs-toggle=\"collapse\" aria-expanded=\"false\" data-bs-target=\"#components-collapse\" aria-controls=\"components-collapse\">Components</button>\r\n        <ul class=\"list-unstyled ps-3 collapse\" id=\"components-collapse\">\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#accordion\">Accordion</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#alerts\">Alerts</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#badge\">Badge</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#breadcrumb\">Breadcrumb</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#buttons\">Buttons</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#button-group\">Button group</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#card\">Card</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#carousel\">Carousel</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#dropdowns\">Dropdowns</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#list-group\">List group</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#modal\">Modal</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#navs\">Navs</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#navbar\">Navbar</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#pagination\">Pagination</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#popovers\">Popovers</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#progress\">Progress</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#scrollspy\">Scrollspy</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#spinners\">Spinners</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#toasts\">Toasts</a></li>\r\n          <li><a class=\"d-inline-flex align-items-center rounded text-decoration-none\" href=\"#tooltips\">Tooltips</a></li>\r\n        </ul>\r\n      </li>\r\n    </ul>\r\n  </nav>\r\n</aside>\r\n<div class=\"bd-cheatsheet container-fluid bg-body\">\r\n  <section id=\"content\">\r\n    <h2 class=\"sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3\">Contents</h2>\r\n\r\n    <article class=\"my-3\" id=\"typography\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Typography</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../content/typography/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <p class=\"display-1\">Display 1</p>\r\n          <p class=\"display-2\">Display 2</p>\r\n          <p class=\"display-3\">Display 3</p>\r\n          <p class=\"display-4\">Display 4</p>\r\n          <p class=\"display-5\">Display 5</p>\r\n          <p class=\"display-6\">Display 6</p>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <p class=\"h1\">Heading 1</p>\r\n          <p class=\"h2\">Heading 2</p>\r\n          <p class=\"h3\">Heading 3</p>\r\n          <p class=\"h4\">Heading 4</p>\r\n          <p class=\"h5\">Heading 5</p>\r\n          <p class=\"h6\">Heading 6</p>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <p class=\"lead\">\r\n            This is a lead paragraph. It stands out from regular paragraphs.\r\n          </p>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <p>You can use the mark tag to <mark>highlight</mark> text.</p>\r\n          <p><del>This line of text is meant to be treated as deleted text.</del></p>\r\n          <p><s>This line of text is meant to be treated as no longer accurate.</s></p>\r\n          <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>\r\n          <p><u>This line of text will render as underlined.</u></p>\r\n          <p><small>This line of text is meant to be treated as fine print.</small></p>\r\n          <p><strong>This line rendered as bold text.</strong></p>\r\n          <p><em>This line rendered as italicized text.</em></p>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <hr>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <blockquote class=\"blockquote\">\r\n            <p>A well-known quote, contained in a blockquote element.</p>\r\n            <footer class=\"blockquote-footer\">Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\r\n          </blockquote>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <ul class=\"list-unstyled\">\r\n            <li>This is a list.</li>\r\n            <li>It appears completely unstyled.</li>\r\n            <li>Structurally, it\'s still a list.</li>\r\n            <li>However, this style only applies to immediate child elements.</li>\r\n            <li>Nested lists:\r\n              <ul>\r\n                <li>are unaffected by this style</li>\r\n                <li>will still show a bullet</li>\r\n                <li>and have appropriate left margin</li>\r\n              </ul>\r\n            </li>\r\n            <li>This may still come in handy in some situations.</li>\r\n          </ul>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <ul class=\"list-inline\">\r\n            <li class=\"list-inline-item\">This is a list item.</li>\r\n            <li class=\"list-inline-item\">And another one.</li>\r\n            <li class=\"list-inline-item\">But they\'re displayed inline.</li>\r\n          </ul>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"images\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Images</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../content/images/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <svg class=\"bd-placeholder-img bd-placeholder-img-lg img-fluid\" width=\"100%\" height=\"250\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: Responsive image\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#868e96\"/><text x=\"50%\" y=\"50%\" fill=\"#dee2e6\" dy=\".3em\">Responsive image</text></svg>\r\n\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <svg class=\"bd-placeholder-img img-thumbnail\" width=\"200\" height=\"200\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera: 200x200\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera</title><rect width=\"100%\" height=\"100%\" fill=\"#868e96\"/><text x=\"50%\" y=\"50%\" fill=\"#dee2e6\" dy=\".3em\">200x200</text></svg>\r\n\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"tables\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Tables</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../content/tables/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <table class=\"table table-striped\">\r\n            <thead>\r\n            <tr>\r\n              <th scope=\"col\">#</th>\r\n              <th scope=\"col\">First</th>\r\n              <th scope=\"col\">Last</th>\r\n              <th scope=\"col\">Handle</th>\r\n            </tr>\r\n            </thead>\r\n            <tbody>\r\n            <tr>\r\n              <th scope=\"row\">1</th>\r\n              <td>Mark</td>\r\n              <td>Otto</td>\r\n              <td>@mdo</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">2</th>\r\n              <td>Jacob</td>\r\n              <td>Thornton</td>\r\n              <td>@fat</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">3</th>\r\n              <td colspan=\"2\">Larry the Bird</td>\r\n              <td>@twitter</td>\r\n            </tr>\r\n            </tbody>\r\n          </table>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <table class=\"table table-dark table-borderless\">\r\n            <thead>\r\n            <tr>\r\n              <th scope=\"col\">#</th>\r\n              <th scope=\"col\">First</th>\r\n              <th scope=\"col\">Last</th>\r\n              <th scope=\"col\">Handle</th>\r\n            </tr>\r\n            </thead>\r\n            <tbody>\r\n            <tr>\r\n              <th scope=\"row\">1</th>\r\n              <td>Mark</td>\r\n              <td>Otto</td>\r\n              <td>@mdo</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">2</th>\r\n              <td>Jacob</td>\r\n              <td>Thornton</td>\r\n              <td>@fat</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">3</th>\r\n              <td colspan=\"2\">Larry the Bird</td>\r\n              <td>@twitter</td>\r\n            </tr>\r\n            </tbody>\r\n          </table>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <table class=\"table table-hover\">\r\n            <thead>\r\n            <tr>\r\n              <th scope=\"col\">Class</th>\r\n              <th scope=\"col\">Heading</th>\r\n              <th scope=\"col\">Heading</th>\r\n            </tr>\r\n            </thead>\r\n            <tbody>\r\n            <tr>\r\n              <th scope=\"row\">Default</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n\r\n            <tr class=\"table-primary\">\r\n              <th scope=\"row\">Primary</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-secondary\">\r\n              <th scope=\"row\">Secondary</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-success\">\r\n              <th scope=\"row\">Success</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-danger\">\r\n              <th scope=\"row\">Danger</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-warning\">\r\n              <th scope=\"row\">Warning</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-info\">\r\n              <th scope=\"row\">Info</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-light\">\r\n              <th scope=\"row\">Light</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            <tr class=\"table-dark\">\r\n              <th scope=\"row\">Dark</th>\r\n              <td>Cell</td>\r\n              <td>Cell</td>\r\n            </tr>\r\n            </tbody>\r\n          </table>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <table class=\"table table-sm table-bordered\">\r\n            <thead>\r\n            <tr>\r\n              <th scope=\"col\">#</th>\r\n              <th scope=\"col\">First</th>\r\n              <th scope=\"col\">Last</th>\r\n              <th scope=\"col\">Handle</th>\r\n            </tr>\r\n            </thead>\r\n            <tbody>\r\n            <tr>\r\n              <th scope=\"row\">1</th>\r\n              <td>Mark</td>\r\n              <td>Otto</td>\r\n              <td>@mdo</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">2</th>\r\n              <td>Jacob</td>\r\n              <td>Thornton</td>\r\n              <td>@fat</td>\r\n            </tr>\r\n            <tr>\r\n              <th scope=\"row\">3</th>\r\n              <td colspan=\"2\">Larry the Bird</td>\r\n              <td>@twitter</td>\r\n            </tr>\r\n            </tbody>\r\n          </table>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"figures\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Figures</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../content/figures/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <figure class=\"figure\">\r\n            <svg class=\"bd-placeholder-img figure-img img-fluid rounded\" width=\"400\" height=\"300\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: 400x300\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#868e96\"/><text x=\"50%\" y=\"50%\" fill=\"#dee2e6\" dy=\".3em\">400x300</text></svg>\r\n\r\n            <figcaption class=\"figure-caption\">A caption for the above image.</figcaption>\r\n          </figure>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n  </section>\r\n\r\n  <section id=\"forms\">\r\n    <h2 class=\"sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3\">Forms</h2>\r\n\r\n    <article class=\"my-3\" id=\"overview\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Overview</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/overview/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <form>\r\n            <div class=\"mb-3\">\r\n              <label for=\"exampleInputEmail1\" class=\"form-label\">Email address</label>\r\n              <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\">\r\n              <div id=\"emailHelp\" class=\"form-text\">We\'ll never share your email with anyone else.</div>\r\n            </div>\r\n            <div class=\"mb-3\">\r\n              <label for=\"exampleInputPassword1\" class=\"form-label\">Password</label>\r\n              <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\">\r\n            </div>\r\n            <div class=\"mb-3 form-check\">\r\n              <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\">\r\n              <label class=\"form-check-label\" for=\"exampleCheck1\">Check me out</label>\r\n            </div>\r\n            <fieldset class=\"mb-3\">\r\n              <legend>Radios buttons</legend>\r\n              <div class=\"form-check\">\r\n                <input type=\"radio\" name=\"radios\" class=\"form-check-input\" id=\"exampleRadio1\">\r\n                <label class=\"form-check-label\" for=\"exampleRadio1\">Default radio</label>\r\n              </div>\r\n              <div class=\"mb-3 form-check\">\r\n                <input type=\"radio\" name=\"radios\" class=\"form-check-input\" id=\"exampleRadio2\">\r\n                <label class=\"form-check-label\" for=\"exampleRadio2\">Another radio</label>\r\n              </div>\r\n            </fieldset>\r\n            <div class=\"mb-3\">\r\n              <label class=\"form-label\" for=\"customFile\">Upload</label>\r\n              <input type=\"file\" class=\"form-control\" id=\"customFile\">\r\n            </div>\r\n            <div class=\"mb-3 form-check form-switch\">\r\n              <input class=\"form-check-input\" type=\"checkbox\" role=\"switch\" id=\"flexSwitchCheckChecked\" checked>\r\n              <label class=\"form-check-label\" for=\"flexSwitchCheckChecked\">Checked switch checkbox input</label>\r\n            </div>\r\n            <div class=\"mb-3\">\r\n              <label for=\"customRange3\" class=\"form-label\">Example range</label>\r\n              <input type=\"range\" class=\"form-range\" min=\"0\" max=\"5\" step=\"0.5\" id=\"customRange3\">\r\n            </div>\r\n            <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n          </form>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"disabled-forms\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Disabled forms</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/overview/#disabled-forms\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <form>\r\n            <fieldset disabled aria-label=\"Disabled fieldset example\">\r\n              <div class=\"mb-3\">\r\n                <label for=\"disabledTextInput\" class=\"form-label\">Disabled input</label>\r\n                <input type=\"text\" id=\"disabledTextInput\" class=\"form-control\" placeholder=\"Disabled input\">\r\n              </div>\r\n              <div class=\"mb-3\">\r\n                <label for=\"disabledSelect\" class=\"form-label\">Disabled select menu</label>\r\n                <select id=\"disabledSelect\" class=\"form-select\">\r\n                  <option>Disabled select</option>\r\n                </select>\r\n              </div>\r\n              <div class=\"mb-3\">\r\n                <div class=\"form-check\">\r\n                  <input class=\"form-check-input\" type=\"checkbox\" id=\"disabledFieldsetCheck\" disabled>\r\n                  <label class=\"form-check-label\" for=\"disabledFieldsetCheck\">\r\n                    Can\'t check this\r\n                  </label>\r\n                </div>\r\n              </div>\r\n              <fieldset class=\"mb-3\">\r\n                <legend>Disabled radios buttons</legend>\r\n                <div class=\"form-check\">\r\n                  <input type=\"radio\" name=\"radios\" class=\"form-check-input\" id=\"disabledRadio1\" disabled>\r\n                  <label class=\"form-check-label\" for=\"disabledRadio1\">Disabled radio</label>\r\n                </div>\r\n                <div class=\"mb-3 form-check\">\r\n                  <input type=\"radio\" name=\"radios\" class=\"form-check-input\" id=\"disabledRadio2\" disabled>\r\n                  <label class=\"form-check-label\" for=\"disabledRadio2\">Another radio</label>\r\n                </div>\r\n              </fieldset>\r\n              <div class=\"mb-3\">\r\n                <label class=\"form-label\" for=\"disabledCustomFile\">Upload</label>\r\n                <input type=\"file\" class=\"form-control\" id=\"disabledCustomFile\" disabled>\r\n              </div>\r\n              <div class=\"mb-3 form-check form-switch\">\r\n                <input class=\"form-check-input\" type=\"checkbox\" role=\"switch\" id=\"disabledSwitchCheckChecked\" checked disabled>\r\n                <label class=\"form-check-label\" for=\"disabledSwitchCheckChecked\">Disabled checked switch checkbox input</label>\r\n              </div>\r\n              <div class=\"mb-3\">\r\n                <label for=\"disabledRange\" class=\"form-label\">Disabled range</label>\r\n                <input type=\"range\" class=\"form-range\" min=\"0\" max=\"5\" step=\"0.5\" id=\"disabledRange\">\r\n              </div>\r\n              <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n            </fieldset>\r\n          </form>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"sizing\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Sizing</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/form-control/#sizing\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"mb-3\">\r\n            <input class=\"form-control form-control-lg\" type=\"text\" placeholder=\".form-control-lg\" aria-label=\".form-control-lg example\">\r\n          </div>\r\n          <div class=\"mb-3\">\r\n            <select class=\"form-select form-select-lg mb-3\" aria-label=\".form-select-lg example\">\r\n              <option selected>Open this select menu</option>\r\n              <option value=\"1\">One</option>\r\n              <option value=\"2\">Two</option>\r\n              <option value=\"3\">Three</option>\r\n            </select>\r\n          </div>\r\n          <div class=\"mb-3\">\r\n            <input type=\"file\" class=\"form-control form-control-lg\" aria-label=\"Large file input example\">\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"mb-3\">\r\n            <input class=\"form-control form-control-sm\" type=\"text\" placeholder=\".form-control-sm\" aria-label=\".form-control-sm example\">\r\n          </div>\r\n          <div class=\"mb-3\">\r\n            <select class=\"form-select form-select-sm\" aria-label=\".form-select-sm example\">\r\n              <option selected>Open this select menu</option>\r\n              <option value=\"1\">One</option>\r\n              <option value=\"2\">Two</option>\r\n              <option value=\"3\">Three</option>\r\n            </select>\r\n          </div>\r\n          <div class=\"mb-3\">\r\n            <input type=\"file\" class=\"form-control form-control-sm\" aria-label=\"Small file input example\">\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"input-group\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Input group</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/input-group/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"input-group mb-3\">\r\n            <span class=\"input-group-text\" id=\"basic-addon1\">@</span>\r\n            <input type=\"text\" class=\"form-control\" placeholder=\"Username\" aria-label=\"Username\" aria-describedby=\"basic-addon1\">\r\n          </div>\r\n          <div class=\"input-group mb-3\">\r\n            <input type=\"text\" class=\"form-control\" placeholder=\"Recipient\'s username\" aria-label=\"Recipient\'s username\" aria-describedby=\"basic-addon2\">\r\n            <span class=\"input-group-text\" id=\"basic-addon2\">@example.com</span>\r\n          </div>\r\n          <label for=\"basic-url\" class=\"form-label\">Your vanity URL</label>\r\n          <div class=\"input-group mb-3\">\r\n            <span class=\"input-group-text\" id=\"basic-addon3\">https://example.com/users/</span>\r\n            <input type=\"text\" class=\"form-control\" id=\"basic-url\" aria-describedby=\"basic-addon3\">\r\n          </div>\r\n          <div class=\"input-group mb-3\">\r\n            <span class=\"input-group-text\">$</span>\r\n            <input type=\"text\" class=\"form-control\" aria-label=\"Amount (to the nearest dollar)\">\r\n            <span class=\"input-group-text\">.00</span>\r\n          </div>\r\n          <div class=\"input-group\">\r\n            <span class=\"input-group-text\">With textarea</span>\r\n            <textarea class=\"form-control\" aria-label=\"With textarea\"></textarea>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"floating-labels\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Floating labels</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/floating-labels/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <form>\r\n            <div class=\"form-floating mb-3\">\r\n              <input type=\"email\" class=\"form-control\" id=\"floatingInput\" placeholder=\"name@example.com\">\r\n              <label for=\"floatingInput\">Email address</label>\r\n            </div>\r\n            <div class=\"form-floating\">\r\n              <input type=\"password\" class=\"form-control\" id=\"floatingPassword\" placeholder=\"Password\">\r\n              <label for=\"floatingPassword\">Password</label>\r\n            </div>\r\n          </form>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"validation\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Validation</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../forms/validation/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <form class=\"row g-3\">\r\n            <div class=\"col-md-4\">\r\n              <label for=\"validationServer01\" class=\"form-label\">First name</label>\r\n              <input type=\"text\" class=\"form-control is-valid\" id=\"validationServer01\" value=\"Mark\" required>\r\n              <div class=\"valid-feedback\">\r\n                Looks good!\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <label for=\"validationServer02\" class=\"form-label\">Last name</label>\r\n              <input type=\"text\" class=\"form-control is-valid\" id=\"validationServer02\" value=\"Otto\" required>\r\n              <div class=\"valid-feedback\">\r\n                Looks good!\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <label for=\"validationServerUsername\" class=\"form-label\">Username</label>\r\n              <div class=\"input-group has-validation\">\r\n                <span class=\"input-group-text\" id=\"inputGroupPrepend3\">@</span>\r\n                <input type=\"text\" class=\"form-control is-invalid\" id=\"validationServerUsername\" aria-describedby=\"inputGroupPrepend3\" required>\r\n                <div class=\"invalid-feedback\">\r\n                  Please choose a username.\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-6\">\r\n              <label for=\"validationServer03\" class=\"form-label\">City</label>\r\n              <input type=\"text\" class=\"form-control is-invalid\" id=\"validationServer03\" required>\r\n              <div class=\"invalid-feedback\">\r\n                Please provide a valid city.\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-3\">\r\n              <label for=\"validationServer04\" class=\"form-label\">State</label>\r\n              <select class=\"form-select is-invalid\" id=\"validationServer04\" required>\r\n                <option selected disabled value=\"\">Choose...</option>\r\n                <option>...</option>\r\n              </select>\r\n              <div class=\"invalid-feedback\">\r\n                Please select a valid state.\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-3\">\r\n              <label for=\"validationServer05\" class=\"form-label\">Zip</label>\r\n              <input type=\"text\" class=\"form-control is-invalid\" id=\"validationServer05\" required>\r\n              <div class=\"invalid-feedback\">\r\n                Please provide a valid zip.\r\n              </div>\r\n            </div>\r\n            <div class=\"col-12\">\r\n              <div class=\"form-check\">\r\n                <input class=\"form-check-input is-invalid\" type=\"checkbox\" value=\"\" id=\"invalidCheck3\" required>\r\n                <label class=\"form-check-label\" for=\"invalidCheck3\">\r\n                  Agree to terms and conditions\r\n                </label>\r\n                <div class=\"invalid-feedback\">\r\n                  You must agree before submitting.\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-12\">\r\n              <button class=\"btn btn-primary\" type=\"submit\">Submit form</button>\r\n            </div>\r\n          </form>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n  </section>\r\n\r\n  <section id=\"components\">\r\n    <h2 class=\"sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3\">Components</h2>\r\n\r\n    <article class=\"my-3\" id=\"accordion\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Accordion</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/accordion/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"accordion\" id=\"accordionExample\">\r\n            <div class=\"accordion-item\">\r\n              <h4 class=\"accordion-header\" id=\"headingOne\">\r\n                <button class=\"accordion-button\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\r\n                  Accordion Item #1\r\n                </button>\r\n              </h4>\r\n              <div id=\"collapseOne\" class=\"accordion-collapse collapse show\" aria-labelledby=\"headingOne\" data-bs-parent=\"#accordionExample\">\r\n                <div class=\"accordion-body\">\r\n                  <strong>This is the first item\'s accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"accordion-item\">\r\n              <h4 class=\"accordion-header\" id=\"headingTwo\">\r\n                <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\r\n                  Accordion Item #2\r\n                </button>\r\n              </h4>\r\n              <div id=\"collapseTwo\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingTwo\" data-bs-parent=\"#accordionExample\">\r\n                <div class=\"accordion-body\">\r\n                  <strong>This is the second item\'s accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"accordion-item\">\r\n              <h4 class=\"accordion-header\" id=\"headingThree\">\r\n                <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\r\n                  Accordion Item #3\r\n                </button>\r\n              </h4>\r\n              <div id=\"collapseThree\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingThree\" data-bs-parent=\"#accordionExample\">\r\n                <div class=\"accordion-body\">\r\n                  <strong>This is the third item\'s accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"alerts\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Alerts</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/alerts/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <div class=\"alert alert-primary alert-dismissible fade show\" role=\"alert\">\r\n            A simple primary alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-secondary alert-dismissible fade show\" role=\"alert\">\r\n            A simple secondary alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\r\n            A simple success alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\r\n            A simple danger alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n            A simple warning alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-info alert-dismissible fade show\" role=\"alert\">\r\n            A simple info alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-light alert-dismissible fade show\" role=\"alert\">\r\n            A simple light alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n          <div class=\"alert alert-dark alert-dismissible fade show\" role=\"alert\">\r\n            A simple dark alert with <a href=\"#\" class=\"alert-link\">an example link</a>. Give it a click if you like.\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"alert alert-success\" role=\"alert\">\r\n            <h4 class=\"alert-heading\">Well done!</h4>\r\n            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>\r\n            <hr>\r\n            <p class=\"mb-0\">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"badge\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Badge</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/badge/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <p class=\"h1\">Example heading <span class=\"badge bg-primary\">New</span></p>\r\n          <p class=\"h2\">Example heading <span class=\"badge bg-secondary\">New</span></p>\r\n          <p class=\"h3\">Example heading <span class=\"badge bg-success\">New</span></p>\r\n          <p class=\"h4\">Example heading <span class=\"badge bg-danger\">New</span></p>\r\n          <p class=\"h5\">Example heading <span class=\"badge text-bg-warning\">New</span></p>\r\n          <p class=\"h6\">Example heading <span class=\"badge text-bg-info\">New</span></p>\r\n          <p class=\"h6\">Example heading <span class=\"badge text-bg-light\">New</span></p>\r\n          <p class=\"h6\">Example heading <span class=\"badge bg-dark\">New</span></p>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <span class=\"badge rounded-pill bg-primary\">Primary</span>\r\n          <span class=\"badge rounded-pill bg-secondary\">Secondary</span>\r\n          <span class=\"badge rounded-pill bg-success\">Success</span>\r\n          <span class=\"badge rounded-pill bg-danger\">Danger</span>\r\n          <span class=\"badge rounded-pill text-bg-warning\">Warning</span>\r\n          <span class=\"badge rounded-pill text-bg-info\">Info</span>\r\n          <span class=\"badge rounded-pill text-bg-light\">Light</span>\r\n          <span class=\"badge rounded-pill bg-dark\">Dark</span>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"breadcrumb\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Breadcrumb</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/breadcrumb/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav aria-label=\"breadcrumb\">\r\n            <ol class=\"breadcrumb\">\r\n              <li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>\r\n              <li class=\"breadcrumb-item\"><a href=\"#\">Library</a></li>\r\n              <li class=\"breadcrumb-item active\" aria-current=\"page\">Data</li>\r\n            </ol>\r\n          </nav>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"buttons\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Buttons</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/buttons/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <button type=\"button\" class=\"btn btn-primary\">Primary</button>\r\n          <button type=\"button\" class=\"btn btn-secondary\">Secondary</button>\r\n          <button type=\"button\" class=\"btn btn-success\">Success</button>\r\n          <button type=\"button\" class=\"btn btn-danger\">Danger</button>\r\n          <button type=\"button\" class=\"btn btn-warning\">Warning</button>\r\n          <button type=\"button\" class=\"btn btn-info\">Info</button>\r\n          <button type=\"button\" class=\"btn btn-light\">Light</button>\r\n          <button type=\"button\" class=\"btn btn-dark\">Dark</button>\r\n\r\n          <button type=\"button\" class=\"btn btn-link\">Link</button>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <button type=\"button\" class=\"btn btn-outline-primary\">Primary</button>\r\n          <button type=\"button\" class=\"btn btn-outline-secondary\">Secondary</button>\r\n          <button type=\"button\" class=\"btn btn-outline-success\">Success</button>\r\n          <button type=\"button\" class=\"btn btn-outline-danger\">Danger</button>\r\n          <button type=\"button\" class=\"btn btn-outline-warning\">Warning</button>\r\n          <button type=\"button\" class=\"btn btn-outline-info\">Info</button>\r\n          <button type=\"button\" class=\"btn btn-outline-light\">Light</button>\r\n          <button type=\"button\" class=\"btn btn-outline-dark\">Dark</button>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <button type=\"button\" class=\"btn btn-primary btn-sm\">Small button</button>\r\n          <button type=\"button\" class=\"btn btn-primary\">Standard button</button>\r\n          <button type=\"button\" class=\"btn btn-primary btn-lg\">Large button</button>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"button-group\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Button group</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/button-group/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"btn-toolbar\" role=\"toolbar\" aria-label=\"Toolbar with button groups\">\r\n            <div class=\"btn-group me-2\" role=\"group\" aria-label=\"First group\">\r\n              <button type=\"button\" class=\"btn btn-secondary\">1</button>\r\n              <button type=\"button\" class=\"btn btn-secondary\">2</button>\r\n              <button type=\"button\" class=\"btn btn-secondary\">3</button>\r\n              <button type=\"button\" class=\"btn btn-secondary\">4</button>\r\n            </div>\r\n            <div class=\"btn-group me-2\" role=\"group\" aria-label=\"Second group\">\r\n              <button type=\"button\" class=\"btn btn-secondary\">5</button>\r\n              <button type=\"button\" class=\"btn btn-secondary\">6</button>\r\n              <button type=\"button\" class=\"btn btn-secondary\">7</button>\r\n            </div>\r\n            <div class=\"btn-group\" role=\"group\" aria-label=\"Third group\">\r\n              <button type=\"button\" class=\"btn btn-secondary\">8</button>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"card\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Card</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/card/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"row  row-cols-1 row-cols-md-2 g-4\">\r\n            <div class=\"col\">\r\n              <div class=\"card\">\r\n                <svg class=\"bd-placeholder-img card-img-top\" width=\"100%\" height=\"180\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: Image cap\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#868e96\"/><text x=\"50%\" y=\"50%\" fill=\"#dee2e6\" dy=\".3em\">Image cap</text></svg>\r\n\r\n                <div class=\"card-body\">\r\n                  <h5 class=\"card-title\">Card title</h5>\r\n                  <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card\'s content.</p>\r\n                  <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col\">\r\n              <div class=\"card\">\r\n                <div class=\"card-header\">\r\n                  Featured\r\n                </div>\r\n                <div class=\"card-body\">\r\n                  <h5 class=\"card-title\">Card title</h5>\r\n                  <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card\'s content.</p>\r\n                  <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\r\n                </div>\r\n                <div class=\"card-footer text-muted\">\r\n                  2 days ago\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col\">\r\n              <div class=\"card\">\r\n                <div class=\"card-body\">\r\n                  <h5 class=\"card-title\">Card title</h5>\r\n                  <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card\'s content.</p>\r\n                </div>\r\n                <ul class=\"list-group list-group-flush\">\r\n                  <li class=\"list-group-item\">An item</li>\r\n                  <li class=\"list-group-item\">A second item</li>\r\n                  <li class=\"list-group-item\">A third item</li>\r\n                </ul>\r\n                <div class=\"card-body\">\r\n                  <a href=\"#\" class=\"card-link\">Card link</a>\r\n                  <a href=\"#\" class=\"card-link\">Another link</a>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col\">\r\n              <div class=\"card\">\r\n                <div class=\"row g-0\">\r\n                  <div class=\"col-md-4\">\r\n                    <svg class=\"bd-placeholder-img\" width=\"100%\" height=\"250\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: Image\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#868e96\"/><text x=\"50%\" y=\"50%\" fill=\"#dee2e6\" dy=\".3em\">Image</text></svg>\r\n\r\n                  </div>\r\n                  <div class=\"col-md-8\">\r\n                    <div class=\"card-body\">\r\n                      <h5 class=\"card-title\">Card title</h5>\r\n                      <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                      <p class=\"card-text\"><small class=\"text-muted\">Last updated 3 mins ago</small></p>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"carousel\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Carousel</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/carousel/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div id=\"carouselExampleCaptions\" class=\"carousel slide\" data-bs-ride=\"carousel\">\r\n            <div class=\"carousel-indicators\">\r\n              <button type=\"button\" data-bs-target=\"#carouselExampleCaptions\" data-bs-slide-to=\"0\" class=\"active\" aria-current=\"true\" aria-label=\"Slide 1\"></button>\r\n              <button type=\"button\" data-bs-target=\"#carouselExampleCaptions\" data-bs-slide-to=\"1\" aria-label=\"Slide 2\"></button>\r\n              <button type=\"button\" data-bs-target=\"#carouselExampleCaptions\" data-bs-slide-to=\"2\" aria-label=\"Slide 3\"></button>\r\n            </div>\r\n            <div class=\"carousel-inner\">\r\n              <div class=\"carousel-item active\">\r\n                <svg class=\"bd-placeholder-img bd-placeholder-img-lg d-block w-100\" width=\"800\" height=\"400\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: First slide\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#777\"/><text x=\"50%\" y=\"50%\" fill=\"#555\" dy=\".3em\">First slide</text></svg>\r\n\r\n                <div class=\"carousel-caption d-none d-md-block\">\r\n                  <h5>First slide label</h5>\r\n                  <p>Some representative placeholder content for the first slide.</p>\r\n                </div>\r\n              </div>\r\n              <div class=\"carousel-item\">\r\n                <svg class=\"bd-placeholder-img bd-placeholder-img-lg d-block w-100\" width=\"800\" height=\"400\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: Second slide\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#666\"/><text x=\"50%\" y=\"50%\" fill=\"#444\" dy=\".3em\">Second slide</text></svg>\r\n\r\n                <div class=\"carousel-caption d-none d-md-block\">\r\n                  <h5>Second slide label</h5>\r\n                  <p>Some representative placeholder content for the second slide.</p>\r\n                </div>\r\n              </div>\r\n              <div class=\"carousel-item\">\r\n                <svg class=\"bd-placeholder-img bd-placeholder-img-lg d-block w-100\" width=\"800\" height=\"400\" xmlns=\"http://www.w3.org/2000/svg\" role=\"img\" aria-label=\"Placeholder: Third slide\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#555\"/><text x=\"50%\" y=\"50%\" fill=\"#333\" dy=\".3em\">Third slide</text></svg>\r\n\r\n                <div class=\"carousel-caption d-none d-md-block\">\r\n                  <h5>Third slide label</h5>\r\n                  <p>Some representative placeholder content for the third slide.</p>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleCaptions\"  data-bs-slide=\"prev\">\r\n              <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n              <span class=\"visually-hidden\">Previous</span>\r\n            </button>\r\n            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleCaptions\"  data-bs-slide=\"next\">\r\n              <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n              <span class=\"visually-hidden\">Next</span>\r\n            </button>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"dropdowns\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Dropdowns</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/dropdowns/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"btn-group w-100 align-items-center justify-content-between flex-wrap\">\r\n            <div class=\"dropdown\">\r\n              <button class=\"btn btn-secondary btn-sm dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropdown button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"dropdown\">\r\n              <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropdown button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"dropdown\">\r\n              <button class=\"btn btn-secondary btn-lg dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropdown button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-primary\">Primary</button>\r\n            <button type=\"button\" class=\"btn btn-primary dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-secondary\">Secondary</button>\r\n            <button type=\"button\" class=\"btn btn-secondary dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-success\">Success</button>\r\n            <button type=\"button\" class=\"btn btn-success dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-info\">Info</button>\r\n            <button type=\"button\" class=\"btn btn-info dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-warning\">Warning</button>\r\n            <button type=\"button\" class=\"btn btn-warning dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n          <div class=\"btn-group\">\r\n            <button type=\"button\" class=\"btn btn-danger\">Danger</button>\r\n            <button type=\"button\" class=\"btn btn-danger dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n              <span class=\"visually-hidden\">Toggle Dropdown</span>\r\n            </button>\r\n            <ul class=\"dropdown-menu\">\r\n              <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n              <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n            </ul>\r\n          </div><!-- /btn-group -->\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"btn-group w-100 align-items-center justify-content-between flex-wrap\">\r\n            <div class=\"dropend\">\r\n              <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropend button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"dropup\">\r\n              <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropup button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"dropstart\">\r\n              <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                Dropstart button\r\n              </button>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"btn-group\">\r\n            <div class=\"dropdown\">\r\n              <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                End-aligned menu\r\n              </button>\r\n              <ul class=\"dropdown-menu dropdown-menu-end\">\r\n                <li><h6 class=\"dropdown-header\">Dropdown header</h6></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                <li><hr class=\"dropdown-divider\"></li>\r\n                <li><a class=\"dropdown-item\" href=\"#\">Separated link</a></li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"list-group\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>List group</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/list-group/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <ul class=\"list-group\">\r\n            <li class=\"list-group-item disabled\" aria-disabled=\"true\">A disabled item</li>\r\n            <li class=\"list-group-item\">A second item</li>\r\n            <li class=\"list-group-item\">A third item</li>\r\n            <li class=\"list-group-item\">A fourth item</li>\r\n            <li class=\"list-group-item\">And a fifth one</li>\r\n          </ul>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <ul class=\"list-group list-group-flush\">\r\n            <li class=\"list-group-item\">An item</li>\r\n            <li class=\"list-group-item\">A second item</li>\r\n            <li class=\"list-group-item\">A third item</li>\r\n            <li class=\"list-group-item\">A fourth item</li>\r\n            <li class=\"list-group-item\">And a fifth one</li>\r\n          </ul>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"list-group\">\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action\">A simple default list group item</a>\r\n\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-primary\">A simple primary list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-secondary\">A simple secondary list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-success\">A simple success list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-danger\">A simple danger list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-warning\">A simple warning list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-info\">A simple info list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-light\">A simple light list group item</a>\r\n            <a href=\"#\" class=\"list-group-item list-group-item-action list-group-item-dark\">A simple dark list group item</a>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"modal\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Modal</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/modal/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"d-flex justify-content-between flex-wrap\">\r\n            <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\" data-bs-target=\"#exampleModalDefault\">\r\n              Launch demo modal\r\n            </button>\r\n            <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\" data-bs-target=\"#staticBackdropLive\">\r\n              Launch static backdrop modal\r\n            </button>\r\n            <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\" data-bs-target=\"#exampleModalCenteredScrollable\">\r\n              Vertically centered scrollable modal\r\n            </button>\r\n            <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\" data-bs-target=\"#exampleModalFullscreen\">\r\n              Full screen\r\n            </button>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"navs\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Navs</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/navs-tabs/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav class=\"nav\">\r\n            <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Active</a>\r\n            <a class=\"nav-link\" href=\"#\">Link</a>\r\n            <a class=\"nav-link\" href=\"#\">Link</a>\r\n            <a class=\"nav-link disabled\">Disabled</a>\r\n          </nav>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav>\r\n            <div class=\"nav nav-tabs mb-3\" id=\"nav-tab\" role=\"tablist\">\r\n              <button class=\"nav-link active\" id=\"nav-home-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#nav-home\" type=\"button\" role=\"tab\" aria-controls=\"nav-home\" aria-selected=\"true\">Home</button>\r\n              <button class=\"nav-link\" id=\"nav-profile-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#nav-profile\" type=\"button\" role=\"tab\" aria-controls=\"nav-profile\" aria-selected=\"false\">Profile</button>\r\n              <button class=\"nav-link\" id=\"nav-contact-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#nav-contact\" type=\"button\" role=\"tab\" aria-controls=\"nav-contact\" aria-selected=\"false\">Contact</button>\r\n            </div>\r\n          </nav>\r\n          <div class=\"tab-content\" id=\"nav-tabContent\">\r\n            <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\r\n              <p>This is some placeholder content the <strong>Home tab\'s</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>\r\n            </div>\r\n            <div class=\"tab-pane fade\" id=\"nav-profile\" role=\"tabpanel\" aria-labelledby=\"nav-profile-tab\">\r\n              <p>This is some placeholder content the <strong>Profile tab\'s</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>\r\n            </div>\r\n            <div class=\"tab-pane fade\" id=\"nav-contact\" role=\"tabpanel\" aria-labelledby=\"nav-contact-tab\">\r\n              <p>This is some placeholder content the <strong>Contact tab\'s</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <ul class=\"nav nav-pills\">\r\n            <li class=\"nav-item\">\r\n              <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Active</a>\r\n            </li>\r\n            <li class=\"nav-item\">\r\n              <a class=\"nav-link\" href=\"#\">Link</a>\r\n            </li>\r\n            <li class=\"nav-item\">\r\n              <a class=\"nav-link\" href=\"#\">Link</a>\r\n            </li>\r\n            <li class=\"nav-item\">\r\n              <a class=\"nav-link disabled\">Disabled</a>\r\n            </li>\r\n          </ul>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"navbar\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Navbar</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/navbar/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav class=\"navbar navbar-expand-lg bg-light\">\r\n            <div class=\"container-fluid\">\r\n              <a class=\"navbar-brand\" href=\"#\">\r\n                <img src=\"/assets/app/images/bootstrap-logo-white.svg\" width=\"38\" height=\"30\" class=\"d-inline-block align-top\" alt=\"Bootstrap\" loading=\"lazy\"\r\n                     style=\"filter: invert(1) grayscale(100%) brightness(200%);\">\r\n              </a>\r\n              <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n                <span class=\"navbar-toggler-icon\"></span>\r\n              </button>\r\n              <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Home</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link\" href=\"#\">Link</a>\r\n                  </li>\r\n                  <li class=\"nav-item dropdown\">\r\n                    <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                      Dropdown\r\n                    </a>\r\n                    <ul class=\"dropdown-menu\">\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                      <li><hr class=\"dropdown-divider\"></li>\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                    </ul>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link disabled\">Disabled</a>\r\n                  </li>\r\n                </ul>\r\n                <form class=\"d-flex\" role=\"search\">\r\n                  <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n                  <button class=\"btn btn-outline-dark\" type=\"submit\">Search</button>\r\n                </form>\r\n              </div>\r\n            </div>\r\n          </nav>\r\n\r\n          <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary mt-5\">\r\n            <div class=\"container-fluid\">\r\n              <a class=\"navbar-brand\" href=\"#\">\r\n                <img src=\"/assets/app/images/bootstrap-logo-white.svg\" width=\"38\" height=\"30\" class=\"d-inline-block align-top\" alt=\"Bootstrap\" loading=\"lazy\">\r\n              </a>\r\n              <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent2\" aria-controls=\"navbarSupportedContent2\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n                <span class=\"navbar-toggler-icon\"></span>\r\n              </button>\r\n              <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent2\">\r\n                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Home</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link\" href=\"#\">Link</a>\r\n                  </li>\r\n                  <li class=\"nav-item dropdown\">\r\n                    <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n                      Dropdown\r\n                    </a>\r\n                    <ul class=\"dropdown-menu\">\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n                      <li><hr class=\"dropdown-divider\"></li>\r\n                      <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n                    </ul>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                    <a class=\"nav-link disabled\">Disabled</a>\r\n                  </li>\r\n                </ul>\r\n                <form class=\"d-flex\" role=\"search\">\r\n                  <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n                  <button class=\"btn btn-outline-light\" type=\"submit\">Search</button>\r\n                </form>\r\n              </div>\r\n            </div>\r\n          </nav>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"pagination\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Pagination</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/pagination/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav aria-label=\"Pagination example\">\r\n            <ul class=\"pagination pagination-sm\">\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n              <li class=\"page-item active\" aria-current=\"page\">\r\n                <a class=\"page-link\" href=\"#\">2</a>\r\n              </li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n            </ul>\r\n          </nav>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav aria-label=\"Standard pagination example\">\r\n            <ul class=\"pagination\">\r\n              <li class=\"page-item\">\r\n                <a class=\"page-link\" href=\"#\" aria-label=\"Previous\">\r\n                  <span aria-hidden=\"true\">&laquo;</span>\r\n                </a>\r\n              </li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n              <li class=\"page-item\">\r\n                <a class=\"page-link\" href=\"#\" aria-label=\"Next\">\r\n                  <span aria-hidden=\"true\">&raquo;</span>\r\n                </a>\r\n              </li>\r\n            </ul>\r\n          </nav>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <nav aria-label=\"Another pagination example\">\r\n            <ul class=\"pagination pagination-lg flex-wrap\">\r\n              <li class=\"page-item disabled\">\r\n                <a class=\"page-link\">Previous</a>\r\n              </li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n              <li class=\"page-item active\" aria-current=\"page\">\r\n                <a class=\"page-link\" href=\"#\">2</a>\r\n              </li>\r\n              <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n              <li class=\"page-item\">\r\n                <a class=\"page-link\" href=\"#\">Next</a>\r\n              </li>\r\n            </ul>\r\n          </nav>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"popovers\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Popovers</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/popovers/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <button type=\"button\" class=\"btn btn-lg btn-danger\" data-bs-toggle=\"popover\" title=\"Popover title\" data-bs-content=\"And here\'s some amazing content. It\'s very engaging. Right?\">Click to toggle popover</button>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-container=\"body\" data-bs-toggle=\"popover\" data-bs-placement=\"top\" data-bs-content=\"Vivamus sagittis lacus vel augue laoreet rutrum faucibus.\">\r\n            Popover on top\r\n          </button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-container=\"body\" data-bs-toggle=\"popover\" data-bs-placement=\"right\" data-bs-content=\"Vivamus sagittis lacus vel augue laoreet rutrum faucibus.\">\r\n            Popover on end\r\n          </button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-container=\"body\" data-bs-toggle=\"popover\" data-bs-placement=\"bottom\" data-bs-content=\"Vivamus sagittis lacus vel augue laoreet rutrum faucibus.\">\r\n            Popover on bottom\r\n          </button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-container=\"body\" data-bs-toggle=\"popover\" data-bs-placement=\"left\" data-bs-content=\"Vivamus sagittis lacus vel augue laoreet rutrum faucibus.\">\r\n            Popover on start\r\n          </button>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"progress\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Progress</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/progress/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"progress mb-3\">\r\n            <div class=\"progress-bar\" role=\"progressbar\" aria-label=\"Example with label\" aria-valuenow=\"0\" aria-valuemin=\"0\" aria-valuemax=\"100\">0%</div>\r\n          </div>\r\n          <div class=\"progress mb-3\">\r\n            <div class=\"progress-bar bg-success w-25\" role=\"progressbar\" aria-label=\"Success example with label\" aria-valuenow=\"25\" aria-valuemin=\"0\" aria-valuemax=\"100\">25%</div>\r\n          </div>\r\n          <div class=\"progress mb-3\">\r\n            <div class=\"progress-bar text-bg-info w-50\" role=\"progressbar\" aria-label=\"Info example with label\" aria-valuenow=\"50\" aria-valuemin=\"0\" aria-valuemax=\"100\">50%</div>\r\n          </div>\r\n          <div class=\"progress mb-3\">\r\n            <div class=\"progress-bar text-bg-warning w-75\" role=\"progressbar\" aria-label=\"Warning example with label\" aria-valuenow=\"75\" aria-valuemin=\"0\" aria-valuemax=\"100\">75%</div>\r\n          </div>\r\n          <div class=\"progress\">\r\n            <div class=\"progress-bar bg-danger w-100\" role=\"progressbar\" aria-label=\"Danger example with label\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\">100%</div>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n          <div class=\"progress\">\r\n            <div class=\"progress-bar\" role=\"progressbar\" aria-label=\"Segment one - default example\" style=\"width: 15%\" aria-valuenow=\"15\" aria-valuemin=\"0\" aria-valuemax=\"100\"></div>\r\n            <div class=\"progress-bar progress-bar-striped progress-bar-animated bg-success\" role=\"progressbar\" aria-label=\"Segment two - animated striped success example\" style=\"width: 40%\" aria-valuenow=\"40\" aria-valuemin=\"0\" aria-valuemax=\"100\"></div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"scrollspy\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Scrollspy</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/scrollspy/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example\">\r\n          <nav id=\"navbar-example2\" class=\"navbar bg-light px-3\">\r\n            <a class=\"navbar-brand\" href=\"#\">Navbar</a>\r\n            <ul class=\"nav nav-pills\">\r\n              <li class=\"nav-item\">\r\n                <a class=\"nav-link active\" href=\"#scrollspyHeading1\">First</a>\r\n              </li>\r\n              <li class=\"nav-item\">\r\n                <a class=\"nav-link\" href=\"#scrollspyHeading2\">Second</a>\r\n              </li>\r\n              <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-expanded=\"false\">Dropdown</a>\r\n                <ul class=\"dropdown-menu\">\r\n                  <li><a class=\"dropdown-item\" href=\"#scrollspyHeading3\">Third</a></li>\r\n                  <li><a class=\"dropdown-item\" href=\"#scrollspyHeading4\">Fourth</a></li>\r\n                  <li><hr class=\"dropdown-divider\"></li>\r\n                  <li><a class=\"dropdown-item\" href=\"#scrollspyHeading5\">Fifth</a></li>\r\n                </ul>\r\n              </li>\r\n            </ul>\r\n          </nav>\r\n          <div data-bs-spy=\"scroll\" data-bs-target=\"#navbar-example2\" data-bs-offset=\"0\" class=\"scrollspy-example position-relative mt-2 overflow-auto\" tabindex=\"0\">\r\n            <h4 id=\"scrollspyHeading1\">First heading</h4>\r\n            <p>This is some placeholder content for the scrollspy page. Note that as you scroll down the page, the appropriate navigation link is highlighted. It\'s repeated throughout the component example. We keep adding some more example copy here to emphasize the scrolling and highlighting.</p>\r\n            <h4 id=\"scrollspyHeading2\">Second heading</h4>\r\n            <p>This is some placeholder content for the scrollspy page. Note that as you scroll down the page, the appropriate navigation link is highlighted. It\'s repeated throughout the component example. We keep adding some more example copy here to emphasize the scrolling and highlighting.</p>\r\n            <h4 id=\"scrollspyHeading3\">Third heading</h4>\r\n            <p>This is some placeholder content for the scrollspy page. Note that as you scroll down the page, the appropriate navigation link is highlighted. It\'s repeated throughout the component example. We keep adding some more example copy here to emphasize the scrolling and highlighting.</p>\r\n            <h4 id=\"scrollspyHeading4\">Fourth heading</h4>\r\n            <p>This is some placeholder content for the scrollspy page. Note that as you scroll down the page, the appropriate navigation link is highlighted. It\'s repeated throughout the component example. We keep adding some more example copy here to emphasize the scrolling and highlighting.</p>\r\n            <h4 id=\"scrollspyHeading5\">Fifth heading</h4>\r\n            <p>This is some placeholder content for the scrollspy page. Note that as you scroll down the page, the appropriate navigation link is highlighted. It\'s repeated throughout the component example. We keep adding some more example copy here to emphasize the scrolling and highlighting.</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"spinners\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Spinners</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/spinners/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <div class=\"spinner-border text-primary\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-secondary\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-success\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-danger\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-warning\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-info\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-light\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-border text-dark\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n        </div></div>\r\n\r\n\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example\">\r\n\r\n          <div class=\"spinner-grow text-primary\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-secondary\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-success\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-danger\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-warning\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-info\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-light\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n          <div class=\"spinner-grow text-dark\" role=\"status\">\r\n            <span class=\"visually-hidden\">Loading...</span>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"my-3\" id=\"toasts\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Toasts</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/toasts/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example bg-dark p-5 align-items-center\">\r\n          <div class=\"toast\" role=\"alert\" aria-live=\"assertive\" aria-atomic=\"true\">\r\n            <div class=\"toast-header\">\r\n              <svg class=\"bd-placeholder-img rounded me-2\" width=\"20\" height=\"20\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\"><rect width=\"100%\" height=\"100%\" fill=\"#007aff\"/></svg>\r\n\r\n              <strong class=\"me-auto\">Bootstrap</strong>\r\n              <small class=\"text-muted\">11 mins ago</small>\r\n              <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"toast\" aria-label=\"Close\"></button>\r\n            </div>\r\n            <div class=\"toast-body\">\r\n              Hello, world! This is a toast message.\r\n            </div>\r\n          </div>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n    <article class=\"mt-3 mb-5 pb-5\" id=\"tooltips\">\r\n      <div class=\"bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2\">\r\n        <h3>Tooltips</h3>\r\n        <a class=\"d-flex align-items-center\" href=\"../components/tooltips/\">Documentation</a>\r\n      </div>\r\n\r\n      <div>\r\n        <div class=\"bd-example-snippet bd-code-snippet\"><div class=\"bd-example tooltip-demo\">\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-toggle=\"tooltip\" data-bs-placement=\"top\" title=\"Tooltip on top\">Tooltip on top</button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-toggle=\"tooltip\" data-bs-placement=\"right\" title=\"Tooltip on end\">Tooltip on end</button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-toggle=\"tooltip\" data-bs-placement=\"bottom\" title=\"Tooltip on bottom\">Tooltip on bottom</button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-toggle=\"tooltip\" data-bs-placement=\"left\" title=\"Tooltip on start\">Tooltip on start</button>\r\n          <button type=\"button\" class=\"btn btn-secondary\" data-bs-toggle=\"tooltip\" data-bs-html=\"true\" title=\"<em>Tooltip</em> <u>with</u> <b>HTML</b>\">Tooltip with HTML</button>\r\n        </div></div>\r\n\r\n      </div>\r\n    </article>\r\n  </section>\r\n</div>\r\n\r\n<div class=\"modal fade\" id=\"exampleModalDefault\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n  <div class=\"modal-dialog\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Modal title</h5>\r\n        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        ...\r\n      </div>\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"modal fade\" id=\"staticBackdropLive\" data-bs-backdrop=\"static\" data-bs-keyboard=\"false\" tabindex=\"-1\" aria-labelledby=\"staticBackdropLiveLabel\" aria-hidden=\"true\">\r\n  <div class=\"modal-dialog\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title\" id=\"staticBackdropLiveLabel\">Modal title</h5>\r\n        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        <p>I will not close if you click outside me. Don\'t even try to press escape key.</p>\r\n      </div>\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n        <button type=\"button\" class=\"btn btn-primary\">Understood</button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"modal fade\" id=\"exampleModalCenteredScrollable\" tabindex=\"-1\" aria-labelledby=\"exampleModalCenteredScrollableTitle\" aria-hidden=\"true\">\r\n  <div class=\"modal-dialog modal-dialog-centered modal-dialog-scrollable\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title\" id=\"exampleModalCenteredScrollableTitle\">Modal title</h5>\r\n        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        <p>This is some placeholder content to show the scrolling behavior for modals. We use repeated line breaks to demonstrate how content can exceed minimum inner height, thereby showing inner scrolling. When content becomes longer than the predefined max-height of modal, content will be cropped and scrollable within the modal.</p>\r\n        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\r\n        <p>This content should appear at the bottom after you scroll.</p>\r\n      </div>\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"modal fade\" id=\"exampleModalFullscreen\" tabindex=\"-1\" aria-labelledby=\"exampleModalFullscreenLabel\" aria-hidden=\"true\">\r\n  <div class=\"modal-dialog modal-fullscreen\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title h4\" id=\"exampleModalFullscreenLabel\">Full screen modal</h5>\r\n        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        ...\r\n      </div>\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n',1,1,0,1,1,1,1660027835,1,1660828178,0,0,0,0,0,'',0,0,0,0,0,'modDocument','web',1,'index.html',0,0,1,NULL);
/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT 0,
  `propertyset` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugin_events`
--

LOCK TABLES `modx_site_plugin_events` WRITE;
/*!40000 ALTER TABLE `modx_site_plugin_events` DISABLE KEYS */;
INSERT INTO `modx_site_plugin_events` VALUES (1,'OnBeforeRegisterClientScripts',0,0);
/*!40000 ALTER TABLE `modx_site_plugin_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugins`
--

LOCK TABLES `modx_site_plugins` WRITE;
/*!40000 ALTER TABLE `modx_site_plugins` DISABLE KEYS */;
INSERT INTO `modx_site_plugins` VALUES (1,1,0,'Assets','',0,0,0,'/** @var modx $modx */\nif ($modx->event->name !== \'OnBeforeRegisterClientScripts\') {\n    return;\n}\n\n$assetsUrl = MODX_ASSETS_URL . \'app/\';\n$manifest = MODX_ASSETS_PATH . \'app/manifest.json\';\nif (!file_exists($manifest)) {\n    return;\n}\nif (!$files = json_decode(file_get_contents($manifest), true)) {\n    return;\n}\n\nforeach ($files as $file) {\n    if (preg_match(\'#\\.css$#\', $file)) {\n        $modx->regClientCss($assetsUrl . $file);\n    } elseif (preg_match(\'#\\.js$#\', $file)) {\n        $modx->regClientScript($assetsUrl . $file);\n    }\n}',0,'a:0:{}',0,'',0,'assets.inc.php');
/*!40000 ALTER TABLE `modx_site_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_snippets`
--

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_templates`
--

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;
INSERT INTO `modx_site_templates` VALUES (1,0,0,'BaseTemplate','Template',0,0,'',0,'<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <meta charset=\"[[++modx_charset]]\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n</head>\n<body>\n[[*content]]\n</body>\n</html>\n',0,'a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `tmplvar_template` (`tmplvarid`,`documentgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_access`
--

LOCK TABLES `modx_site_tmplvar_access` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `contentid` int(10) NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `templateid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvars`
--

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_eventnames`
--

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;
INSERT INTO `modx_system_eventnames` VALUES ('OnBeforeCacheUpdate',4,'System'),('OnBeforeChunkFormDelete',1,'Chunks'),('OnBeforeChunkFormSave',1,'Chunks'),('OnBeforeDocFormDelete',1,'Resources'),('OnBeforeDocFormSave',1,'Resources'),('OnBeforeEmptyTrash',1,'Resources'),('OnBeforeManagerLogin',2,'Security'),('OnBeforeManagerLogout',2,'Security'),('OnBeforeManagerPageInit',2,'System'),('OnBeforePluginFormDelete',1,'Plugins'),('OnBeforePluginFormSave',1,'Plugins'),('OnBeforeRegisterClientScripts',5,'System'),('OnBeforeSaveWebPageCache',4,'System'),('OnBeforeSnipFormDelete',1,'Snippets'),('OnBeforeSnipFormSave',1,'Snippets'),('OnBeforeTempFormDelete',1,'Templates'),('OnBeforeTempFormSave',1,'Templates'),('OnBeforeTVFormDelete',1,'Template Variables'),('OnBeforeTVFormSave',1,'Template Variables'),('OnBeforeUserActivate',1,'Users'),('OnBeforeUserDeactivate',1,'Users'),('OnBeforeUserDuplicate',1,'Users'),('OnBeforeUserFormDelete',1,'Users'),('OnBeforeUserFormSave',1,'Users'),('OnBeforeUserGroupFormRemove',1,'User Groups'),('OnBeforeUserGroupFormSave',1,'User Groups'),('OnBeforeWebLogin',3,'Security'),('OnBeforeWebLogout',3,'Security'),('OnCacheUpdate',4,'System'),('OnCategoryBeforeRemove',1,'Categories'),('OnCategoryBeforeSave',1,'Categories'),('OnCategoryRemove',1,'Categories'),('OnCategorySave',1,'Categories'),('OnChunkBeforeRemove',1,'Chunks'),('OnChunkBeforeSave',1,'Chunks'),('OnChunkFormDelete',1,'Chunks'),('OnChunkFormPrerender',1,'Chunks'),('OnChunkFormRender',1,'Chunks'),('OnChunkFormSave',1,'Chunks'),('OnChunkRemove',1,'Chunks'),('OnChunkSave',1,'Chunks'),('OnContextBeforeRemove',1,'Contexts'),('OnContextBeforeSave',1,'Contexts'),('OnContextFormPrerender',2,'Contexts'),('OnContextFormRender',2,'Contexts'),('OnContextRemove',1,'Contexts'),('OnContextSave',1,'Contexts'),('OnDocFormDelete',1,'Resources'),('OnDocFormPrerender',1,'Resources'),('OnDocFormRender',1,'Resources'),('OnDocFormSave',1,'Resources'),('OnDocPublished',5,'Resources'),('OnDocUnPublished',5,'Resources'),('OnElementNotFound',1,'System'),('OnEmptyTrash',1,'Resources'),('OnFileCreateFormPrerender',1,'System'),('OnFileEditFormPrerender',1,'System'),('OnFileManagerBeforeUpload',1,'System'),('OnFileManagerDirCreate',1,'System'),('OnFileManagerDirRemove',1,'System'),('OnFileManagerDirRename',1,'System'),('OnFileManagerFileCreate',1,'System'),('OnFileManagerFileRemove',1,'System'),('OnFileManagerFileRename',1,'System'),('OnFileManagerFileUpdate',1,'System'),('OnFileManagerMoveObject',1,'System'),('OnFileManagerUpload',1,'System'),('OnHandleRequest',5,'System'),('OnInitCulture',1,'Internationalization'),('OnLoadWebDocument',5,'System'),('OnLoadWebPageCache',4,'System'),('OnManagerAuthentication',2,'Security'),('OnManagerLogin',2,'Security'),('OnManagerLoginFormPrerender',2,'Security'),('OnManagerLoginFormRender',2,'Security'),('OnManagerLogout',2,'Security'),('OnManagerPageAfterRender',2,'System'),('OnManagerPageBeforeRender',2,'System'),('OnManagerPageInit',2,'System'),('OnMediaSourceBeforeFormDelete',1,'Media Sources'),('OnMediaSourceBeforeFormSave',1,'Media Sources'),('OnMediaSourceDuplicate',1,'Media Sources'),('OnMediaSourceFormDelete',1,'Media Sources'),('OnMediaSourceFormSave',1,'Media Sources'),('OnMediaSourceGetProperties',1,'Media Sources'),('OnMODXInit',5,'System'),('OnPackageInstall',2,'Package Manager'),('OnPackageRemove',2,'Package Manager'),('OnPackageUninstall',2,'Package Manager'),('OnPageNotFound',1,'System'),('OnPageUnauthorized',1,'Security'),('OnParseDocument',5,'System'),('OnPluginBeforeRemove',1,'Plugins'),('OnPluginBeforeSave',1,'Plugins'),('OnPluginEventBeforeRemove',1,'Plugin Events'),('OnPluginEventBeforeSave',1,'Plugin Events'),('OnPluginEventRemove',1,'Plugin Events'),('OnPluginEventSave',1,'Plugin Events'),('OnPluginFormDelete',1,'Plugins'),('OnPluginFormPrerender',1,'Plugins'),('OnPluginFormRender',1,'Plugins'),('OnPluginFormSave',1,'Plugins'),('OnPluginRemove',1,'Plugins'),('OnPluginSave',1,'Plugins'),('OnPropertySetBeforeRemove',1,'Property Sets'),('OnPropertySetBeforeSave',1,'Property Sets'),('OnPropertySetRemove',1,'Property Sets'),('OnPropertySetSave',1,'Property Sets'),('OnResourceAddToResourceGroup',1,'Resources'),('OnResourceAutoPublish',1,'Resources'),('OnResourceBeforeSort',1,'Resources'),('OnResourceCacheUpdate',1,'Resources'),('OnResourceDelete',1,'Resources'),('OnResourceDuplicate',1,'Resources'),('OnResourceGroupBeforeRemove',1,'Security'),('OnResourceGroupBeforeSave',1,'Security'),('OnResourceGroupRemove',1,'Security'),('OnResourceGroupSave',1,'Security'),('OnResourceRemoveFromResourceGroup',1,'Resources'),('OnResourceSort',1,'Resources'),('OnResourceToolbarLoad',1,'Resources'),('OnResourceTVFormPrerender',1,'Resources'),('OnResourceTVFormRender',1,'Resources'),('OnResourceUndelete',1,'Resources'),('OnRichTextBrowserInit',1,'RichText Editor'),('OnRichTextEditorInit',1,'RichText Editor'),('OnRichTextEditorRegister',1,'RichText Editor'),('OnSiteRefresh',1,'System'),('OnSiteSettingsRender',1,'Settings'),('OnSnipFormDelete',1,'Snippets'),('OnSnipFormPrerender',1,'Snippets'),('OnSnipFormRender',1,'Snippets'),('OnSnipFormSave',1,'Snippets'),('OnSnippetBeforeRemove',1,'Snippets'),('OnSnippetBeforeSave',1,'Snippets'),('OnSnippetRemove',1,'Snippets'),('OnSnippetSave',1,'Snippets'),('OnTempFormDelete',1,'Templates'),('OnTempFormPrerender',1,'Templates'),('OnTempFormRender',1,'Templates'),('OnTempFormSave',1,'Templates'),('OnTemplateBeforeRemove',1,'Templates'),('OnTemplateBeforeSave',1,'Templates'),('OnTemplateRemove',1,'Templates'),('OnTemplateSave',1,'Templates'),('OnTemplateVarBeforeRemove',1,'Template Variables'),('OnTemplateVarBeforeSave',1,'Template Variables'),('OnTemplateVarRemove',1,'Template Variables'),('OnTemplateVarSave',1,'Template Variables'),('OnTVFormDelete',1,'Template Variables'),('OnTVFormPrerender',1,'Template Variables'),('OnTVFormRender',1,'Template Variables'),('OnTVFormSave',1,'Template Variables'),('OnTVInputPropertiesList',1,'Template Variables'),('OnTVInputRenderList',1,'Template Variables'),('OnTVOutputRenderList',1,'Template Variables'),('OnTVOutputRenderPropertiesList',1,'Template Variables'),('OnUserActivate',1,'Users'),('OnUserAddToGroup',1,'User Groups'),('OnUserBeforeAddToGroup',1,'User Groups'),('OnUserBeforeRemove',1,'Users'),('OnUserBeforeRemoveFromGroup',1,'User Groups'),('OnUserBeforeSave',1,'Users'),('OnUserChangePassword',1,'Users'),('OnUserDeactivate',1,'Users'),('OnUserDuplicate',1,'Users'),('OnUserFormDelete',1,'Users'),('OnUserFormPrerender',1,'Users'),('OnUserFormRender',1,'Users'),('OnUserFormSave',1,'Users'),('OnUserGroupBeforeRemove',1,'User Groups'),('OnUserGroupBeforeSave',1,'User Groups'),('OnUserGroupFormSave',1,'User Groups'),('OnUserGroupRemove',1,'User Groups'),('OnUserGroupSave',1,'User Groups'),('OnUserNotFound',1,'Users'),('OnUserProfileBeforeRemove',1,'User Profiles'),('OnUserProfileBeforeSave',1,'User Profiles'),('OnUserProfileRemove',1,'User Profiles'),('OnUserProfileSave',1,'User Profiles'),('OnUserRemove',1,'Users'),('OnUserRemoveFromGroup',1,'User Groups'),('OnUserSave',1,'Users'),('OnWebAuthentication',3,'Security'),('OnWebLogin',3,'Security'),('OnWebLogout',3,'Security'),('OnWebPageComplete',5,'System'),('OnWebPageInit',5,'System'),('OnWebPagePrerender',5,'System');
/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_settings`
--

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;
INSERT INTO `modx_system_settings` VALUES ('access_category_enabled','1','combo-boolean','core','authentication',NULL),('access_context_enabled','1','combo-boolean','core','authentication',NULL),('access_resource_group_enabled','1','combo-boolean','core','authentication',NULL),('allow_forward_across_contexts','','combo-boolean','core','system',NULL),('allow_manager_login_forgot_password','1','combo-boolean','core','authentication',NULL),('allow_multiple_emails','1','combo-boolean','core','authentication',NULL),('allow_tags_in_post','','combo-boolean','core','system',NULL),('allow_tv_eval','1','combo-boolean','core','system',NULL),('anonymous_sessions','1','combo-boolean','core','session',NULL),('archive_with','','combo-boolean','core','system',NULL),('automatic_alias','1','combo-boolean','core','furls',NULL),('automatic_template_assignment','parent','textfield','core','site',NULL),('auto_check_pkg_updates','1','combo-boolean','core','system',NULL),('auto_check_pkg_updates_cache_expire','15','textfield','core','system',NULL),('auto_isfolder','1','combo-boolean','core','site',NULL),('auto_menuindex','1','combo-boolean','core','site',NULL),('base_help_url','//docs.modx.com/help/','textfield','core','manager',NULL),('blocked_minutes','60','textfield','core','authentication',NULL),('cache_action_map','1','combo-boolean','core','caching',NULL),('cache_alias_map','1','combo-boolean','core','caching',NULL),('cache_context_settings','1','combo-boolean','core','caching',NULL),('cache_db','0','combo-boolean','core','caching',NULL),('cache_db_expires','0','textfield','core','caching',NULL),('cache_db_session','0','combo-boolean','core','caching',NULL),('cache_db_session_lifetime','','textfield','core','caching',NULL),('cache_default','1','combo-boolean','core','caching',NULL),('cache_expires','0','textfield','core','caching',NULL),('cache_format','0','textfield','core','caching',NULL),('cache_handler','xPDOFileCache','textfield','core','caching',NULL),('cache_lang_js','1','combo-boolean','core','caching',NULL),('cache_lexicon_topics','1','combo-boolean','core','caching',NULL),('cache_noncore_lexicon_topics','1','combo-boolean','core','caching',NULL),('cache_resource','1','combo-boolean','core','caching',NULL),('cache_resource_clear_partial','0','combo-boolean','core','caching',NULL),('cache_resource_expires','0','textfield','core','caching',NULL),('cache_scripts','1','combo-boolean','core','caching',NULL),('clear_cache_refresh_trees','0','combo-boolean','core','caching',NULL),('compress_css','1','combo-boolean','core','manager',NULL),('compress_js','1','combo-boolean','core','manager',NULL),('compress_js_max_files','10','textfield','core','manager',NULL),('confirm_navigation','1','combo-boolean','core','manager',NULL),('container_suffix','/','textfield','core','furls',NULL),('context_tree_sort','1','combo-boolean','core','manager',NULL),('context_tree_sortby','rank','textfield','core','manager',NULL),('context_tree_sortdir','ASC','textfield','core','manager',NULL),('cultureKey','en','modx-combo-language','core','language',NULL),('date_timezone','','textfield','core','system',NULL),('debug','','textfield','core','system',NULL),('default_content_type','1','modx-combo-content-type','core','site',NULL),('default_context','web','modx-combo-context','core','site',NULL),('default_duplicate_publish_option','preserve','textfield','core','manager',NULL),('default_media_source','1','modx-combo-source','core','manager',NULL),('default_media_source_type','sources.modFileMediaSource','modx-combo-source-type','core','manager',NULL),('default_per_page','20','textfield','core','manager',NULL),('default_template','1','modx-combo-template','core','site',NULL),('default_username','(anonymous)','textfield','core','session',NULL),('editor_css_path','','textfield','core','editor',NULL),('editor_css_selectors','','textfield','core','editor',NULL),('emailsender','admin@localhost','textfield','core','authentication','2022-08-09 06:50:35'),('emailsubject','Your login details','textfield','core','authentication',NULL),('enable_dragdrop','1','combo-boolean','core','manager',NULL),('enable_gravatar','1','combo-boolean','core','manager',NULL),('error_log_filename','error.log','textfield','core','system',NULL),('error_log_filepath','','textfield','core','system',NULL),('error_page','1','textfield','core','site',NULL),('failed_login_attempts','5','textfield','core','authentication',NULL),('feed_modx_news','https://feeds.feedburner.com/modx-announce','textfield','core','system',NULL),('feed_modx_news_enabled','1','combo-boolean','core','system',NULL),('feed_modx_security','https://forums.modx.com/board.xml?board=294','textfield','core','system',NULL),('feed_modx_security_enabled','1','combo-boolean','core','system',NULL),('fe_editor_lang','en','modx-combo-language','core','language',NULL),('filemanager_path','','textfield','core','file',NULL),('filemanager_path_relative','1','combo-boolean','core','file',NULL),('filemanager_url','','textfield','core','file',NULL),('filemanager_url_relative','1','combo-boolean','core','file',NULL),('forgot_login_email','<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>','textarea','core','authentication',NULL),('form_customization_use_all_groups','','combo-boolean','core','manager',NULL),('forward_merge_excludes','type,published,class_key','textfield','core','system',NULL),('friendly_alias_lowercase_only','1','combo-boolean','core','furls',NULL),('friendly_alias_max_length','0','textfield','core','furls',NULL),('friendly_alias_realtime','0','combo-boolean','core','furls',NULL),('friendly_alias_restrict_chars','pattern','textfield','core','furls',NULL),('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','furls',NULL),('friendly_alias_strip_element_tags','1','combo-boolean','core','furls',NULL),('friendly_alias_translit','none','textfield','core','furls',NULL),('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls',NULL),('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls',NULL),('friendly_alias_trim_chars','/.-_','textfield','core','furls',NULL),('friendly_alias_word_delimiter','-','textfield','core','furls',NULL),('friendly_alias_word_delimiters','-_','textfield','core','furls',NULL),('friendly_urls','1','combo-boolean','core','furls','2022-08-18 13:30:32'),('friendly_urls_strict','0','combo-boolean','core','furls',NULL),('global_duplicate_uri_check','0','combo-boolean','core','furls',NULL),('hidemenu_default','0','combo-boolean','core','site',NULL),('inline_help','1','combo-boolean','core','manager',NULL),('link_tag_scheme','-1','textfield','core','site',NULL),('locale','','textfield','core','language',NULL),('lock_ttl','360','textfield','core','system',NULL),('log_deprecated','1','combo-boolean','core','system',NULL),('log_level','1','textfield','core','system',NULL),('log_snippet_not_found','1','combo-boolean','core','site',NULL),('log_target','FILE','textfield','core','system',NULL),('mail_charset','UTF-8','modx-combo-charset','core','mail',NULL),('mail_encoding','8bit','textfield','core','mail',NULL),('mail_smtp_auth','','combo-boolean','core','mail',NULL),('mail_smtp_autotls','1','combo-boolean','core','mail',NULL),('mail_smtp_helo','','textfield','core','mail',NULL),('mail_smtp_hosts','localhost','textfield','core','mail',NULL),('mail_smtp_keepalive','','combo-boolean','core','mail',NULL),('mail_smtp_pass','','text-password','core','mail',NULL),('mail_smtp_port','587','textfield','core','mail',NULL),('mail_smtp_prefix','','textfield','core','mail',NULL),('mail_smtp_single_to','','combo-boolean','core','mail',NULL),('mail_smtp_timeout','10','textfield','core','mail',NULL),('mail_smtp_user','','textfield','core','mail',NULL),('mail_use_smtp','','combo-boolean','core','mail',NULL),('main_nav_parent','topnav','textfield','core','manager',NULL),('manager_date_format','Y-m-d','textfield','core','manager',NULL),('manager_direction','ltr','textfield','core','language',NULL),('manager_favicon_url','','textfield','core','manager',NULL),('manager_js_cache_file_locking','1','combo-boolean','core','manager',NULL),('manager_js_cache_max_age','3600','textfield','core','manager',NULL),('manager_js_document_root','','textfield','core','manager',NULL),('manager_js_zlib_output_compression','0','combo-boolean','core','manager',NULL),('manager_language','en','modx-combo-language','core','language',NULL),('manager_lang_attribute','en','textfield','core','language',NULL),('manager_login_url_alternate','','textfield','core','authentication',NULL),('manager_theme','default','modx-combo-manager-theme','core','manager',NULL),('manager_time_format','g:i a','textfield','core','manager',NULL),('manager_use_fullname','','combo-boolean','core','manager',NULL),('manager_week_start','0','textfield','core','manager',NULL),('mgr_source_icon','icon-folder-open-o','textfield','core','manager',NULL),('mgr_tree_icon_context','tree-context','textfield','core','manager',NULL),('modx_browser_default_sort','name','textfield','core','manager',NULL),('modx_browser_default_viewmode','grid','textfield','core','manager',NULL),('modx_browser_tree_hide_files','1','combo-boolean','core','manager',NULL),('modx_browser_tree_hide_tooltips','1','combo-boolean','core','manager',NULL),('modx_charset','UTF-8','modx-combo-charset','core','language',NULL),('parser_recurse_uncacheable','1','combo-boolean','core','system',NULL),('password_generated_length','10','textfield','core','authentication',NULL),('password_min_length','8','textfield','core','authentication',NULL),('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb',NULL),('phpthumb_cache_maxage','30','textfield','core','phpthumb',NULL),('phpthumb_cache_maxfiles','10000','textfield','core','phpthumb',NULL),('phpthumb_cache_maxsize','100','textfield','core','phpthumb',NULL),('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb',NULL),('phpthumb_document_root','','textfield','core','phpthumb',NULL),('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb',NULL),('phpthumb_error_fontsize','1','textfield','core','phpthumb',NULL),('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb',NULL),('phpthumb_far','C','textfield','core','phpthumb',NULL),('phpthumb_imagemagick_path','','textfield','core','phpthumb',NULL),('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb',NULL),('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb',NULL),('phpthumb_zoomcrop','0','textfield','core','phpthumb',NULL),('preserve_menuindex','1','combo-boolean','core','manager',NULL),('principal_targets','modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace','textfield','core','authentication',NULL),('proxy_auth_type','BASIC','textfield','core','proxy',NULL),('proxy_host','','textfield','core','proxy',NULL),('proxy_password','','text-password','core','proxy',NULL),('proxy_port','','textfield','core','proxy',NULL),('proxy_username','','textfield','core','proxy',NULL),('publish_default','','combo-boolean','core','site',NULL),('rb_base_dir','','textfield','core','file',NULL),('rb_base_url','','textfield','core','file',NULL),('request_controller','index.php','textfield','core','gateway',NULL),('request_method_strict','0','combo-boolean','core','gateway',NULL),('request_param_alias','q','textfield','core','gateway',NULL),('request_param_id','id','textfield','core','gateway',NULL),('resolve_hostnames','0','combo-boolean','core','system',NULL),('resource_static_allow_absolute','0','combo-boolean','core','static_resources',NULL),('resource_static_path','{assets_path}','textfield','core','static_resources',NULL),('resource_tree_node_name','pagetitle','textfield','core','manager',NULL),('resource_tree_node_name_fallback','pagetitle','textfield','core','manager',NULL),('resource_tree_node_tooltip','','textfield','core','manager',NULL),('richtext_default','1','combo-boolean','core','manager',NULL),('search_default','1','combo-boolean','core','site',NULL),('send_poweredby_header','1','combo-boolean','core','system','2022-08-09 06:50:35'),('server_offset_time','0','textfield','core','system',NULL),('server_protocol','http','textfield','core','system',NULL),('session_cookie_domain','','textfield','core','session',NULL),('session_cookie_httponly','1','combo-boolean','core','session',NULL),('session_cookie_lifetime','604800','textfield','core','session',NULL),('session_cookie_path','','textfield','core','session',NULL),('session_cookie_samesite','','textfield','core','session',NULL),('session_cookie_secure','','combo-boolean','core','session',NULL),('session_gc_maxlifetime','604800','textfield','core','session',NULL),('session_handler_class','modSessionHandler','textfield','core','session',NULL),('session_name','','textfield','core','session',NULL),('settings_distro','traditional','textfield','core','system',NULL),('settings_version','2.8.4-pl','textfield','core','system',NULL),('set_header','1','combo-boolean','core','system',NULL),('show_tv_categories_header','1','combo-boolean','core','manager',NULL),('signupemail_message','<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>','textarea','core','authentication',NULL),('site_name','MODX Revolution','textfield','core','site',NULL),('site_start','1','textfield','core','site',NULL),('site_status','1','combo-boolean','core','site',NULL),('site_unavailable_message','The site is currently unavailable','textfield','core','site',NULL),('site_unavailable_page','0','textfield','core','site',NULL),('static_elements_automate_chunks','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_plugins','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_snippets','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_templates','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_tvs','0','combo-boolean','core','static_elements',NULL),('static_elements_basepath','','textfield','core','static_elements',NULL),('static_elements_default_category','0','modx-combo-category','core','static_elements',NULL),('static_elements_default_mediasource','0','modx-combo-source','core','static_elements',NULL),('static_elements_html_extension','.tpl','textfield','core','static_elements',NULL),('strip_image_paths','1','combo-boolean','core','file',NULL),('symlink_merge_fields','1','combo-boolean','core','site',NULL),('syncsite_default','1','combo-boolean','core','caching',NULL),('topmenu_show_descriptions','1','combo-boolean','core','manager',NULL),('tree_default_sort','menuindex','textfield','core','manager',NULL),('tree_root_id','0','numberfield','core','manager',NULL),('tvs_below_content','0','combo-boolean','core','manager',NULL),('udperms_allowroot','','combo-boolean','core','authentication',NULL),('unauthorized_page','1','textfield','core','site',NULL),('upload_check_exists','1','combo-boolean','core','file',NULL),('upload_files','txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot','textfield','core','file','2022-08-18 13:30:37'),('upload_flash','swf,fla','textfield','core','file',NULL),('upload_images','jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp','textfield','core','file',NULL),('upload_maxsize','524288000','textfield','core','file','2022-08-09 06:50:35'),('upload_media','mp3,wav,au,wmv,avi,mpg,mpeg','textfield','core','file',NULL),('user_nav_parent','usernav','textfield','core','manager',NULL),('use_alias_path','0','combo-boolean','core','furls',NULL),('use_browser','1','combo-boolean','core','file',NULL),('use_context_resource_table','1','combo-boolean','core','caching',NULL),('use_editor','1','combo-boolean','core','editor',NULL),('use_frozen_parent_uris','0','combo-boolean','core','furls',NULL),('use_multibyte','1','combo-boolean','core','language','2022-08-09 06:50:35'),('use_weblink_target','','combo-boolean','core','site',NULL),('webpwdreminder_message','<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication',NULL),('websignupemail_message','<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication',NULL),('welcome_action','welcome','textfield','core','manager',NULL),('welcome_namespace','core','textfield','core','manager',NULL),('welcome_screen','','combo-boolean','core','manager','2022-08-09 06:50:47'),('welcome_screen_url','//misc.modx.com/revolution/welcome.28.html','textfield','core','manager',NULL),('which_editor','','modx-combo-rte','core','editor',NULL),('which_element_editor','','modx-combo-rte','core','editor',NULL),('xhtml_urls','1','combo-boolean','core','site',NULL);
/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_packages`
--

DROP TABLE IF EXISTS `modx_transport_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `workspace` int(10) unsigned NOT NULL DEFAULT 0,
  `provider` int(10) unsigned NOT NULL DEFAULT 0,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT 0,
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT 0,
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_packages`
--

LOCK TABLES `modx_transport_packages` WRITE;
/*!40000 ALTER TABLE `modx_transport_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_transport_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_providers`
--

DROP TABLE IF EXISTS `modx_transport_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`),
  KEY `active` (`active`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_providers`
--

LOCK TABLES `modx_transport_providers` WRITE;
/*!40000 ALTER TABLE `modx_transport_providers` DISABLE KEYS */;
INSERT INTO `modx_transport_providers` VALUES (1,'modx.com','The official MODX transport provider for 3rd party components.','https://rest.modx.com/extras/','','','2022-04-28 08:40:53',NULL,1,10,'');
/*!40000 ALTER TABLE `modx_transport_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_attributes`
--

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;
INSERT INTO `modx_user_attributes` VALUES (1,1,'Default Admin User','admin@localhost','','',0,0,0,4,1660821469,1661223466,0,'29196aa65dc3cb0c70f0f04e26e6667e',0,0,'','','','','','','','','',NULL);
/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_roles`
--

DROP TABLE IF EXISTS `modx_user_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_roles`
--

LOCK TABLES `modx_user_group_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_group_roles` DISABLE KEYS */;
INSERT INTO `modx_user_group_roles` VALUES (1,'Member',NULL,9999),(2,'Super User',NULL,0);
/*!40000 ALTER TABLE `modx_user_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_settings`
--

DROP TABLE IF EXISTS `modx_user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_group_settings` (
  `group` int(10) unsigned NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`group`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_settings`
--

LOCK TABLES `modx_user_group_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_group_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT 0,
  `recipient` int(10) NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_messages`
--

LOCK TABLES `modx_user_messages` WRITE;
/*!40000 ALTER TABLE `modx_user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`user`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_settings`
--

LOCK TABLES `modx_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_users`
--

DROP TABLE IF EXISTS `modx_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_users`
--

LOCK TABLES `modx_users` WRITE;
/*!40000 ALTER TABLE `modx_users` DISABLE KEYS */;
INSERT INTO `modx_users` VALUES (1,'admin','$2y$10$QIdbnRpV75jZZghJ3zuUNeXk/4m3FQYQnvVyq8ljp76MrBv3LxXNW','','modUser',1,NULL,NULL,'hashing.modNative','005a8796a8fc3ef9f06215c09b6da141',1,NULL,1,1660027835);
/*!40000 ALTER TABLE `modx_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_workspaces`
--

DROP TABLE IF EXISTS `modx_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_workspaces`
--

LOCK TABLES `modx_workspaces` WRITE;
/*!40000 ALTER TABLE `modx_workspaces` DISABLE KEYS */;
INSERT INTO `modx_workspaces` VALUES (1,'Default MODX workspace','{core_path}','2022-08-09 06:50:32',1,NULL);
/*!40000 ALTER TABLE `modx_workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23  4:14:42
