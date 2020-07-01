-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: simplecrud
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

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
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cidades_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_cidades_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Novo Hamburgo',1,'2020-06-26 21:50:36','2020-06-26 21:50:36',NULL),(2,'Florianópolis',3,'2020-06-26 21:51:04','2020-06-26 21:51:04',NULL),(3,'Porto alegre',1,'2020-06-30 20:54:35','2020-06-30 20:54:35',NULL);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,7,'nome','text','Nome',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\":attribute \\u00e9 de preencimento obrigat\\u00f3rio.\"}}}',2),(24,7,'sigla','text','Sigla',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:2|min:2|unique:estados\",\"messages\":{\"required\":\":attribute \\u00e9 de preencimento obrigat\\u00f3rio.\",\"max\":\":attribute tem limite de :max caracteres.\",\"min\":\":attribute requer :min caracteres.\",\"unique\":\":attribute j\\u00e1 est\\u00e1 cadastrada em outro resgistro.\"}}}',3),(25,7,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(26,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),(28,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(29,8,'nome','text','Nome',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\":attribute \\u00e9 de preencimento obrigat\\u00f3rio.\"}}}',3),(30,8,'estado_id','text','Estado Id',1,1,1,1,1,1,'{}',2),(31,8,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(32,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(33,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),(34,8,'cidade_belongsto_estado_relationship','relationship','Estado',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Admin\\\\Estado\",\"table\":\"estados\",\"type\":\"belongsTo\",\"column\":\"estado_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"cidades\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(35,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(36,9,'nome','text','Nome',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\":attribute \\u00e9 de preencimento obrigat\\u00f3rio.\"}}}',3),(37,9,'endereco','text','Endereco',0,0,1,1,1,1,'{}',4),(38,9,'bairro','text','Bairro',0,0,1,1,1,1,'{}',5),(39,9,'cep','text','Cep',0,0,1,1,1,1,'{}',6),(40,9,'status','checkbox','Status',0,1,1,1,1,1,'{\"on\":\"Ativo\",\"off\":\"Inativo\",\"checked\":true}',7),(41,9,'cidade_id','text','Cidade Id',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Cidade \\u00e9 de preencimento obrigat\\u00f3rio.\"}}}',2),(42,9,'redes_sociais','text','Redes Sociais',0,0,1,1,1,1,'{\"description\":\"Informe a URL completa e separe cada uma delas com v\\u00edrgula\"}',8),(43,9,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',10),(44,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(45,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',12),(46,9,'pessoa_belongsto_cidade_relationship','relationship','Cidade',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Admin\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"cidades\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(47,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(48,11,'nome','text','Nome',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',3),(49,11,'email','text','E-mail',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|email\",\"messages\":{\"required\":\"Por favor, informe :attribute.\",\"mail\":\"Por favor, informe um :attribute v\\u00e1lido.\"}}}',4),(50,11,'senha','password','Senha',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',5),(51,11,'foto','image','Foto',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',6),(52,11,'endereco','text','Endereço',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',7),(53,11,'bairro','text','Bairro',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',8),(54,11,'cep','text','CEP',0,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',9),(55,11,'status','checkbox','Status',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}},\"on\":\"Ativo\",\"off\":\"Inativo\",\"checked\":true}',10),(56,11,'cidade_id','text','Cidade Id',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',2),(57,11,'redes_sociais','text','Redes Sociais',0,0,1,1,1,1,'{\"description\":\"Informe URL completa e separe-as por v\\u00edrgula.\"}',11),(58,11,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',12),(59,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(60,11,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',14),(61,11,'usuario_belongsto_cidade_relationship','relationship','Cidade',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Admin\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"cidades\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(62,11,'telefone','text','Telefone',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Por favor, informe :attribute.\"}}}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-06-26 23:11:04','2020-06-26 23:11:04'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-06-26 23:11:04','2020-06-26 23:11:04'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-06-26 23:11:04','2020-06-26 23:11:04'),(7,'estados','estados','Estado','Estados','voyager-angle-right','App\\Models\\Admin\\Estado',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-06-26 21:16:40','2020-06-26 21:48:42'),(8,'cidades','cidades','Cidade','Cidades','voyager-double-right','App\\Models\\Admin\\Cidade',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-06-26 21:47:50','2020-06-26 21:50:19'),(9,'pessoas','pessoas','Pessoa','Pessoas','voyager-person','App\\Models\\Admin\\Pessoa',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-06-26 21:54:45','2020-06-26 22:14:34'),(11,'usuarios','usuarios','Usuário','Usuários','voyager-person','App\\Models\\Admin\\Usuario',NULL,'App\\Http\\Controllers\\UsuarioController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-06-30 20:41:11','2020-07-01 00:07:27');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sigla` char(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sigla_UNIQUE` (`sigla`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Rio Grande do Sul','RS','2020-06-26 21:21:02','2020-06-26 21:21:02',NULL),(3,'Santa Catarina','SC','2020-06-26 21:31:35','2020-06-26 21:31:35',NULL);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-06-26 23:11:05','2020-06-26 23:11:05','voyager.dashboard',NULL),(2,1,'Mídias','','_self','voyager-images','#000000',NULL,3,'2020-06-26 23:11:05','2020-06-26 20:55:16','voyager.media.index','null'),(3,1,'Usuários','','_self','voyager-person','#000000',12,2,'2020-06-26 23:11:05','2020-06-26 20:55:16','voyager.users.index','null'),(4,1,'Permissões','','_self','voyager-lock','#000000',12,1,'2020-06-26 23:11:05','2020-06-26 20:55:14','voyager.roles.index','null'),(5,1,'Admin','','_self','voyager-tools','#000000',NULL,4,'2020-06-26 23:11:05','2020-06-26 20:55:16',NULL,''),(6,1,'Construtor de menus','','_self','voyager-list','#000000',5,2,'2020-06-26 23:11:05','2020-06-26 20:22:20','voyager.menus.index','null'),(7,1,'Banco de Dados','','_self','voyager-data','#000000',5,4,'2020-06-26 23:11:05','2020-06-26 20:56:19','voyager.database.index','null'),(8,1,'Compass','','_self','voyager-compass',NULL,5,5,'2020-06-26 23:11:05','2020-06-26 20:56:20','voyager.compass.index',NULL),(9,1,'BREAD (crud)','','_self','voyager-bread','#000000',5,1,'2020-06-26 23:11:05','2020-06-26 20:23:33','voyager.bread.index','null'),(10,1,'Configurações','','_self','voyager-settings','#000000',5,3,'2020-06-26 23:11:05','2020-06-26 20:56:19','voyager.settings.index','null'),(11,1,'Hooks','','_self','voyager-hook',NULL,5,6,'2020-06-26 23:11:07','2020-06-26 20:56:20','voyager.hooks',NULL),(12,1,'Usuários','','_self','voyager-people','#000000',NULL,2,'2020-06-26 20:55:03','2020-06-26 20:55:10',NULL,''),(13,1,'Cadastros','','_self','voyager-list','#000000',NULL,5,'2020-06-26 20:57:09','2020-06-26 21:00:11',NULL,''),(14,1,'Estados','','_self','voyager-angle-right',NULL,13,3,'2020-06-26 21:16:40','2020-06-30 20:43:19','voyager.estados.index',NULL),(15,1,'Cidades','','_self','voyager-double-right',NULL,13,4,'2020-06-26 21:47:50','2020-06-30 20:43:20','voyager.cidades.index',NULL),(17,1,'Usuários','','_self','voyager-person',NULL,13,1,'2020-06-30 20:41:11','2020-06-30 20:43:39','voyager.usuarios.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-06-26 23:11:05','2020-06-26 23:11:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_01_01_000000_add_voyager_user_fields',1),(3,'2016_01_01_000000_create_data_types_table',1),(4,'2016_05_19_173453_create_menu_table',1),(5,'2016_10_21_190000_create_roles_table',1),(6,'2016_10_21_190000_create_settings_table',1),(7,'2016_11_30_135954_create_permission_table',1),(8,'2016_11_30_141208_create_permission_role_table',1),(9,'2016_12_26_201236_data_types__add__server_side',1),(10,'2017_01_13_000000_add_route_to_menu_items_table',1),(11,'2017_01_14_005015_create_translations_table',1),(12,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(13,'2017_03_06_000000_add_controller_to_data_types_table',1),(14,'2017_04_21_000000_add_order_to_data_rows_table',1),(15,'2017_07_05_210000_add_policyname_to_data_types_table',1),(16,'2017_08_05_000000_add_group_to_settings_table',1),(17,'2017_11_26_013050_add_user_role_relationship',1),(18,'2017_11_26_015000_create_user_roles_table',1),(19,'2018_03_11_000000_add_user_settings',1),(20,'2018_03_14_000000_add_details_to_data_types_table',1),(21,'2018_03_16_000000_make_settings_value_nullable',1),(22,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2020-06-26 23:11:05','2020-06-26 23:11:05'),(2,'browse_bread',NULL,'2020-06-26 23:11:05','2020-06-26 23:11:05'),(3,'browse_database',NULL,'2020-06-26 23:11:05','2020-06-26 23:11:05'),(4,'browse_media',NULL,'2020-06-26 23:11:05','2020-06-26 23:11:05'),(5,'browse_compass',NULL,'2020-06-26 23:11:05','2020-06-26 23:11:05'),(6,'browse_menus','menus','2020-06-26 23:11:06','2020-06-26 23:11:06'),(7,'read_menus','menus','2020-06-26 23:11:06','2020-06-26 23:11:06'),(8,'edit_menus','menus','2020-06-26 23:11:06','2020-06-26 23:11:06'),(9,'add_menus','menus','2020-06-26 23:11:06','2020-06-26 23:11:06'),(10,'delete_menus','menus','2020-06-26 23:11:06','2020-06-26 23:11:06'),(11,'browse_roles','roles','2020-06-26 23:11:06','2020-06-26 23:11:06'),(12,'read_roles','roles','2020-06-26 23:11:06','2020-06-26 23:11:06'),(13,'edit_roles','roles','2020-06-26 23:11:06','2020-06-26 23:11:06'),(14,'add_roles','roles','2020-06-26 23:11:06','2020-06-26 23:11:06'),(15,'delete_roles','roles','2020-06-26 23:11:06','2020-06-26 23:11:06'),(16,'browse_users','users','2020-06-26 23:11:06','2020-06-26 23:11:06'),(17,'read_users','users','2020-06-26 23:11:06','2020-06-26 23:11:06'),(18,'edit_users','users','2020-06-26 23:11:06','2020-06-26 23:11:06'),(19,'add_users','users','2020-06-26 23:11:06','2020-06-26 23:11:06'),(20,'delete_users','users','2020-06-26 23:11:06','2020-06-26 23:11:06'),(21,'browse_settings','settings','2020-06-26 23:11:06','2020-06-26 23:11:06'),(22,'read_settings','settings','2020-06-26 23:11:06','2020-06-26 23:11:06'),(23,'edit_settings','settings','2020-06-26 23:11:06','2020-06-26 23:11:06'),(24,'add_settings','settings','2020-06-26 23:11:06','2020-06-26 23:11:06'),(25,'delete_settings','settings','2020-06-26 23:11:06','2020-06-26 23:11:06'),(26,'browse_hooks',NULL,'2020-06-26 23:11:07','2020-06-26 23:11:07'),(27,'browse_estados','estados','2020-06-26 21:16:40','2020-06-26 21:16:40'),(28,'read_estados','estados','2020-06-26 21:16:40','2020-06-26 21:16:40'),(29,'edit_estados','estados','2020-06-26 21:16:40','2020-06-26 21:16:40'),(30,'add_estados','estados','2020-06-26 21:16:40','2020-06-26 21:16:40'),(31,'delete_estados','estados','2020-06-26 21:16:40','2020-06-26 21:16:40'),(32,'browse_cidades','cidades','2020-06-26 21:47:50','2020-06-26 21:47:50'),(33,'read_cidades','cidades','2020-06-26 21:47:50','2020-06-26 21:47:50'),(34,'edit_cidades','cidades','2020-06-26 21:47:50','2020-06-26 21:47:50'),(35,'add_cidades','cidades','2020-06-26 21:47:50','2020-06-26 21:47:50'),(36,'delete_cidades','cidades','2020-06-26 21:47:50','2020-06-26 21:47:50'),(37,'browse_pessoas','pessoas','2020-06-26 21:54:45','2020-06-26 21:54:45'),(38,'read_pessoas','pessoas','2020-06-26 21:54:45','2020-06-26 21:54:45'),(39,'edit_pessoas','pessoas','2020-06-26 21:54:45','2020-06-26 21:54:45'),(40,'add_pessoas','pessoas','2020-06-26 21:54:45','2020-06-26 21:54:45'),(41,'delete_pessoas','pessoas','2020-06-26 21:54:45','2020-06-26 21:54:45'),(42,'browse_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11'),(43,'read_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11'),(44,'edit_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11'),(45,'add_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11'),(46,'delete_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11'),(47,'exportarusuarios_usuarios','usuarios','2020-06-30 20:41:11','2020-06-30 20:41:11');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2020-06-26 23:11:05','2020-06-26 23:11:05'),(2,'user','Normal User','2020-06-26 23:11:05','2020-06-26 23:11:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/June2020/G4hybANZYIU6voQy7cMe.JPG','','image',5,'Admin'),(6,'admin.title','Admin Title','Simple CRUD','','text',1,'Admin'),(7,'admin.description','Admin Description','Painel Administrativo','','text',2,'Admin'),(8,'admin.loader','Admin Loader','settings/June2020/NHZK0CW4lRNGchieCKLB.png','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/June2020/foy1SyyJ7KKD7Kle2Xn4.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','.','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/June2020/ecEqBvx8Jm0KSfBNrsYh.JPG',NULL,'$2y$10$UcPsKVsw1g5w.2.Wgt6lmOOVPkz74RnAx6UyWlqXv3WGPa1hlUUya','u6ThWjQXNxMqjAc5O5l5Aj2AErhe5w7XPzTW63NFmIK12WysAfUH0TQuggO7','{\"locale\":\"pt_br\"}','2020-06-26 23:15:52','2020-06-26 20:53:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `cidade_id` int(11) NOT NULL,
  `redes_sociais` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pessoas_cidades1_idx` (`cidade_id`),
  CONSTRAINT `fk_pessoas_cidades1` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Leandro Sorgetz','lsorgetz@gmail.com','$2y$10$/FDwh6BER8TDmscqw36QIeRkzs1KZCl6d8swR22ttslHkZUyaMh8y','usuarios/June2020/iC2RdzxRaiycyyVkauvf.png','+5551999998888','Rua ABC, 123','Centro','99888123',1,1,NULL,'2020-06-26 22:00:14','2020-07-01 00:11:34',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'simplecrud'
--

--
-- Dumping routines for database 'simplecrud'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-30 21:54:14
