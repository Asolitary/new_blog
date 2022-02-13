-- MySQL dump 10.13  Distrib 5.6.40, for Win64 (x86_64)
--
-- Host: localhost    Database: laowang
-- ------------------------------------------------------
-- Server version	5.6.40

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 权限',7,'add_permission'),(26,'Can change 权限',7,'change_permission'),(27,'Can delete 权限',7,'delete_permission'),(28,'Can view 权限',7,'view_permission'),(29,'Can add 用户',8,'add_user'),(30,'Can change 用户',8,'change_user'),(31,'Can delete 用户',8,'delete_user'),(32,'Can view 用户',8,'view_user'),(33,'Can add 博客分类',9,'add_category'),(34,'Can change 博客分类',9,'change_category'),(35,'Can delete 博客分类',9,'delete_category'),(36,'Can view 博客分类',9,'view_category'),(37,'Can add 博客评论',10,'add_comment'),(38,'Can change 博客评论',10,'change_comment'),(39,'Can delete 博客评论',10,'delete_comment'),(40,'Can view 博客评论',10,'view_comment'),(41,'Can add 博客正文',11,'add_entry'),(42,'Can change 博客正文',11,'change_entry'),(43,'Can delete 博客正文',11,'delete_entry'),(44,'Can view 博客正文',11,'view_entry'),(45,'Can add 博客标签',12,'add_tag'),(46,'Can change 博客标签',12,'change_tag'),(47,'Can delete 博客标签',12,'delete_tag'),(48,'Can view 博客标签',12,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$Qzy3jdffWIbg$hN2ZbJfwtCpko/6JdVVEwLzWTDjGL2OmxPJR88vHG7I=','2021-06-16 16:49:40.920887',1,'duan','','','',1,1,'2021-06-03 11:13:25.803700');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Java'),(2,'JavaScript'),(3,'CSS'),(4,'Vue');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_blog_id_8f2186d6_fk_entry_id` (`blog_id`),
  KEY `comment_name_id_a4f73d52_fk_user_id` (`name_id`),
  CONSTRAINT `comment_blog_id_8f2186d6_fk_entry_id` FOREIGN KEY (`blog_id`) REFERENCES `entry` (`id`),
  CONSTRAINT `comment_name_id_a4f73d52_fk_user_id` FOREIGN KEY (`name_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'一楼','2021-06-03 11:18:37.866576',15,1),(2,'啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦','2021-06-09 09:47:06.852598',18,1),(3,'啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦','2021-06-09 14:13:02.399780',18,5);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-06-03 11:14:56.753280','1','超级用户',1,'[{\"added\": {}}]',7,1),(2,'2021-06-03 11:15:09.796591','1','duan',1,'[{\"added\": {}}]',8,1),(3,'2021-06-03 13:44:22.472817','1','JavaScript',1,'[{\"added\": {}}]',12,1),(4,'2021-06-03 13:44:34.352686','2','Vue',1,'[{\"added\": {}}]',12,1),(5,'2021-06-03 13:44:50.039872','3','CSS',1,'[{\"added\": {}}]',12,1),(6,'2021-06-03 13:45:00.019006','4','Java',1,'[{\"added\": {}}]',12,1),(7,'2021-06-03 13:45:42.788985','1','Java',1,'[{\"added\": {}}]',9,1),(8,'2021-06-03 13:45:55.280894','1','Java学习路线推荐',2,'[{\"changed\": {\"fields\": [\"body\", \"category\", \"tags\"]}}]',11,1),(9,'2021-06-03 13:46:20.372006','2','JavaScript',1,'[{\"added\": {}}]',9,1),(10,'2021-06-03 13:46:25.290021','8','几个优雅的JavaScript运算符使用技巧',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(11,'2021-06-03 13:46:35.698875','3','CSS',1,'[{\"added\": {}}]',9,1),(12,'2021-06-03 13:46:40.414173','9','css-实现蜂窝形状',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(13,'2021-06-03 13:46:49.900014','10','js实现中文排序、分类',2,'[{\"changed\": {\"fields\": [\"body\", \"category\", \"tags\"]}}]',11,1),(14,'2021-06-03 13:46:59.539241','4','Vue',1,'[{\"added\": {}}]',9,1),(15,'2021-06-03 13:47:04.921380','11','vue之路由钩子函数',2,'[{\"changed\": {\"fields\": [\"body\", \"category\", \"tags\"]}}]',11,1),(16,'2021-06-03 13:47:16.058948','12','深入理解js原型与原型链',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(17,'2021-06-03 13:47:30.314709','13','VUE-自定义登录指令',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(18,'2021-06-03 13:47:38.626353','14','js-数组去重的几种方法',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(19,'2021-06-03 13:47:47.091707','15','js-闭包',2,'[{\"changed\": {\"fields\": [\"category\", \"tags\"]}}]',11,1),(20,'2021-06-04 16:53:05.924282','2','注册用户',1,'[{\"added\": {}}]',7,1),(21,'2021-06-04 16:53:19.648591','3','未注册用户',1,'[{\"added\": {}}]',7,1),(22,'2021-06-04 16:58:49.235913','2','laowang',3,'',8,1),(23,'2021-06-05 00:06:11.160988','3','',3,'',8,1),(24,'2021-06-05 15:50:08.588531','4','aaa',3,'',8,1),(25,'2021-06-07 15:17:25.051358','1','duan',2,'[{\"changed\": {\"fields\": [\"key\"]}}]',8,1),(26,'2021-06-08 16:32:04.793568','16','js事件循环(event loop)、宏任务与微任务',1,'[{\"added\": {}}]',11,1),(27,'2021-06-08 16:33:18.016831','16','js事件循环(event loop)、宏任务与微任务',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(28,'2021-06-08 16:40:10.562619','17','JS种实现深拷贝的几种方法',1,'[{\"added\": {}}]',11,1),(29,'2021-06-08 16:48:15.256857','18','css3-3Dbanner图',1,'[{\"added\": {}}]',11,1),(30,'2021-06-08 16:59:19.889518','18','css3-3Dbanner图',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(31,'2021-06-09 13:15:06.247103','1','Java学习路线推荐',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(32,'2021-06-09 13:15:19.157036','8','几个优雅的JavaScript运算符使用技巧',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(33,'2021-06-09 13:15:27.958991','9','css-实现蜂窝形状',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(34,'2021-06-09 13:15:39.049679','10','js实现中文排序、分类',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(35,'2021-06-09 13:15:47.519245','11','vue之路由钩子函数',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(36,'2021-06-09 13:16:02.626149','12','深入理解js原型与原型链',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(37,'2021-06-09 13:16:15.230752','13','VUE-自定义登录指令',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(38,'2021-06-09 13:16:28.289032','14','js-数组去重的几种方法',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(39,'2021-06-09 13:16:42.581225','15','js-闭包',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(40,'2021-06-09 13:16:53.101477','16','js事件循环(event loop)、宏任务与微任务',2,'[]',11,1),(41,'2021-06-09 13:17:02.550996','17','JS种实现深拷贝的几种方法',2,'[]',11,1),(42,'2021-06-09 13:17:12.925581','18','css3-3Dbanner图',2,'[]',11,1),(43,'2021-06-09 14:59:21.008344','25','打的挖到哇多无多',3,'',8,1),(44,'2021-06-09 14:59:21.061381','24','dadadada',3,'',8,1),(45,'2021-06-09 15:06:05.424811','27','laoda',3,'',8,1),(46,'2021-06-09 15:06:05.461836','26','dasadadsadada',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'blog','category'),(10,'blog','comment'),(11,'blog','entry'),(12,'blog','tag'),(5,'contenttypes','contenttype'),(7,'rbac','permission'),(8,'rbac','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-03 11:12:47.706501'),(2,'auth','0001_initial','2021-06-03 11:12:53.593292'),(3,'admin','0001_initial','2021-06-03 11:12:54.726240'),(4,'admin','0002_logentry_remove_auto_add','2021-06-03 11:12:54.750274'),(5,'admin','0003_logentry_add_action_flag_choices','2021-06-03 11:12:54.789286'),(6,'contenttypes','0002_remove_content_type_name','2021-06-03 11:12:55.576525'),(7,'auth','0002_alter_permission_name_max_length','2021-06-03 11:12:56.025484'),(8,'auth','0003_alter_user_email_max_length','2021-06-03 11:12:56.942188'),(9,'auth','0004_alter_user_username_opts','2021-06-03 11:12:56.988232'),(10,'auth','0005_alter_user_last_login_null','2021-06-03 11:12:57.359850'),(11,'auth','0006_require_contenttypes_0002','2021-06-03 11:12:57.382859'),(12,'auth','0007_alter_validators_add_error_messages','2021-06-03 11:12:57.435995'),(13,'auth','0008_alter_user_username_max_length','2021-06-03 11:12:57.795791'),(14,'auth','0009_alter_user_last_name_max_length','2021-06-03 11:12:58.165737'),(15,'rbac','0001_initial','2021-06-03 11:12:59.201485'),(16,'blog','0001_initial','2021-06-03 11:13:04.468182'),(17,'sessions','0001_initial','2021-06-03 11:13:04.896455');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9fk95g6acv5127jt4xyqhqwrc3u9e134','NDU2MDcyNTdlOTAwY2QyMDJlZjMzM2ZjZDRjMDYyZDUxMjE1YTNjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWZmZmNkZThiOTkwMTk5NDVjNzM3YTg2MTYyZjgzNzU4ODIzNTU0In0=','2021-06-23 14:59:10.902321'),('oxvvb91b4ugli90ab47ncph3k2vv0aqk','NDU2MDcyNTdlOTAwY2QyMDJlZjMzM2ZjZDRjMDYyZDUxMjE1YTNjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWZmZmNkZThiOTkwMTk5NDVjNzM3YTg2MTYyZjgzNzU4ODIzNTU0In0=','2021-06-30 16:49:41.020970');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `body` longtext NOT NULL,
  `visiting` int(10) unsigned NOT NULL,
  `abstract` longtext,
  `created_time` datetime(6) NOT NULL,
  `modifyed_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_author_id_53c6a791_fk_user_id` (`author_id`),
  CONSTRAINT `entry_author_id_53c6a791_fk_user_id` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
INSERT INTO `entry` VALUES (1,'Java学习路线推荐','blog_img/2021/05/21/java_mb6Z9xO.jpg','<p>这篇文章是为了介绍自己自学用过的Java视频资料。本套整合教程总共180+G，共450+小时。考虑到绝大部分视频至少要看两遍，而且视频总时长并不代表学习时长，所以零基础初学者总学习时间大约为：600小时视频时长 + 100小时理解 + 100小时练习，至少需要800小时。你可能觉得自己能一天学习8小时，实际上平均下来每天能学4小时都算厉害了。总会有各种原因，比如当天内容太难，公司聚会，要出差等等。如果周末你也是坚持学习，那么最理想状况下，6个半月就可以学完，达到工作后能被人带的水平。但我知道那其实基本不可能。我自己从完全零基础，到学C语言，到学Java，除去中间断开的两个月，已经学习10个月。当然，这和我边工作边学习，以及没有人帮我找资料有很大关系。很多时间花在找资料上了。如果你已经经历过JavaSE的洗礼，会明白，我这篇回答对现在迷茫的你份量有多重，avaSE阶段，建议完全零基础的朋友，直接看刘意老师的，辅助看毕老师的。当然，也可以都试看一下再决定，每个人喜好不同。放心，完全零基础的朋友，一遍肯定学不会。所以同一套视频看两遍都算少了。另外，有时一个老师的观点是片面的，要结合不同老师的讲解才可能对一个知识点有更全面深刻的理解（前提是先把一个老师的讲解吃透）。所以我是建议刘意和毕向东的都至少看两遍。</p>',100,'','2021-05-21 12:26:39.999454','2021-06-09 13:15:06.220588',1),(8,'几个优雅的JavaScript运算符使用技巧','blog_img/2021/06/01/2021-05-25-1.png','<p>ECMAScript发展进程中，会有很多功能的更新，比如销毁，箭头功能，模块，它们极大的改变JavaScript编写方式，可能有些人喜欢，有些人不喜欢，但像每个新功能一样，我们最终会习惯它们。新版本的ECMAScript引入了三个新的逻辑赋值运算符：空运算符，AND和OR运算符，这些运算符的出现，也是希望让我们的代码更干净简洁，下面分享几个优雅的JavaScript运算符使用技巧</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>一、可选链接运算符【？.】</h4>\r\n\r\n<p><strong>可选链接运算符（Optional Chaining Operator）</strong>&nbsp;处于ES2020提案的第4阶段，因此应将其添加到规范中。它改变了访问对象内部属性的方式，尤其是深层嵌套的属性。它也可以作为TypeScript 3.7+中的功能使用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>相信大部分开发前端的的小伙伴们都会遇到null和未定义的属性。JS语言的动态特性使其无法不碰到它们。特别是在处理嵌套对象时，以下代码很常见：</p>\r\n\r\n<pre>\r\n<code>if&nbsp;(data&nbsp;&amp;&amp;&nbsp;data.children&nbsp;&amp;&amp;&nbsp;data.children[0]&nbsp;&amp;&amp;&nbsp;data.children[0].title)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;I&nbsp;have&nbsp;a&nbsp;title!\r\n}&nbsp;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>上面的代码用于API响应，我必须解析JSON以确保名称存在。但是，当对象具有可选属性或某些配置对象具有某些值的动态映射时，可能会遇到类似情况，需要检查很多边界条件。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>这时候，如果我们使用可选链接运算符，一切就变得更加轻松了。它为我们检查嵌套属性，而不必显式搜索梯形图。我们所要做的就是使用&ldquo;？&rdquo; 要检查空值的属性之后的运算符。我们可以随意在表达式中多次使用该运算符，并且如果未定义任何项，它将尽早返回。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>对于静态属性</strong>用法是：</p>\r\n\r\n<pre>\r\n<code>object?.property\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>对于动态属性</strong>将其更改为：</p>\r\n\r\n<pre>\r\n<code>object?.[expression]&nbsp;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>上面的代码可以简化为：</p>\r\n\r\n<pre>\r\n<code>let&nbsp;title&nbsp;=&nbsp;data?.children?.[0]?.title;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>然后，如果我们有:</p>\r\n\r\n<pre>\r\n<code>&nbsp;let&nbsp;data;\r\nconsole.log(data?.children?.[0]?.title)&nbsp;//&nbsp;undefined\r\n\r\ndata&nbsp;&nbsp;=&nbsp;{children:&nbsp;[{title:&#39;codercao&#39;}]}\r\nconsole.log(data?.children?.[0]?.title)&nbsp;//&nbsp;codercao\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>这样写是不是更加简单了呢？由于操作符一旦为空值就会终止，因此也可以使用它来有条件地调用方法或应用条件逻辑</p>\r\n\r\n<pre>\r\n<code>&nbsp;const&nbsp;conditionalProperty&nbsp;=&nbsp;null;\r\nlet&nbsp;index&nbsp;=&nbsp;0;\r\n\r\nconsole.log(conditionalProperty?.[index++]);&nbsp;//&nbsp;undefined\r\nconsole.log(index);&nbsp;&nbsp;//&nbsp;0\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>对于方法</strong>的调用你可以这样写</p>\r\n\r\n<pre>\r\n<code>object.runsOnlyIfMethodExists?.()\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>例如下面的<code>parent</code>对象，如果我们直接调用<code>parent.getTitle()</code>,则会报<code>Uncaught TypeError: parent.getTitle is not a function</code>错误，<code>parent.getTitle?.()</code>则会终止不会执行</p>\r\n\r\n<pre>\r\n<code>let&nbsp;parent&nbsp;=&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;name:&nbsp;&quot;parent&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;friends:&nbsp;[&quot;p1&quot;,&nbsp;&quot;p2&quot;,&nbsp;&quot;p3&quot;],\r\n&nbsp;&nbsp;&nbsp;&nbsp;getName:&nbsp;function()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(this.name)\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;};\r\n&nbsp;&nbsp;\r\n&nbsp;&nbsp;parent.getName?.()&nbsp;&nbsp;&nbsp;//&nbsp;parent\r\n&nbsp;&nbsp;parent.getTitle?.()&nbsp;&nbsp;//不会执行&nbsp;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>与无效合并一起使用</strong></p>\r\n\r\n<p>提供了一种方法来处理未定义或为空值和表达提供默认值。我们可以使用<code>??</code>运算符，为表达式提供默认值</p>\r\n\r\n<pre>\r\n<code>console.log(undefined&nbsp;??&nbsp;&#39;codercao&#39;);&nbsp;//&nbsp;codercao\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>因此，如果属性不存在，则可以将无效的合并运算符与可选链接运算符结合使用以提供默认值。</p>\r\n\r\n<pre>\r\n<code>let&nbsp;title&nbsp;=&nbsp;data?.children?.[0]?.title&nbsp;??&nbsp;&#39;codercao&#39;;\r\nconsole.log(title);&nbsp;//&nbsp;codercao\r\n</code></pre>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4>二、逻辑空分配（?? =）</h4>\r\n\r\n<pre>\r\n<code>expr1&nbsp;??=&nbsp;expr2\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>逻辑空值运算符仅在空值（&nbsp;<code>null</code>&nbsp;或者&nbsp;<code>undefined</code>）时才将值分配给expr1，表达方式：</p>\r\n\r\n<pre>\r\n<code>x&nbsp;??=&nbsp;y\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>可能看起来等效于：</p>\r\n\r\n<pre>\r\n<code>x&nbsp;=&nbsp;x&nbsp;??&nbsp;y;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>但事实并非如此！有细微的差别。</p>\r\n\r\n<p>空的合并运算符（??）从左到右操作，如果x不为空，则短路。因此，如果x不为&nbsp;<code>null</code>&nbsp;或者&nbsp;<code>undefined</code>，则永远不会对表达式<code>y</code>进行求值。因此，如果<code>y</code>是一个函数，它将根本不会被调用。因此，此逻辑赋值运算符等效于</p>\r\n\r\n<pre>\r\n<code>x&nbsp;??&nbsp;(x&nbsp;=&nbsp;y);\r\n</code></pre>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4>三、逻辑或分配（|| =）</h4>\r\n\r\n<p>此逻辑赋值运算符仅在左侧表达式为&nbsp;<strong>falsy值</strong>时才赋值。Falsy值与null有所不同，因为falsy值可以是任何一种值：undefined，null，空字符串(双引号&quot;&quot;、单引号&rsquo;&rsquo;、反引号``)，NaN，0。IE浏览器中的 document.all，也算是一个。</p>\r\n\r\n<p>语法</p>\r\n\r\n<pre>\r\n<code>x&nbsp;||=&nbsp;y\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>等同于</p>\r\n\r\n<pre>\r\n<code>x&nbsp;||&nbsp;(x&nbsp;=&nbsp;y)\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>在我们想要保留现有值（如果不存在）的情况下，这很有用，否则我们想为其分配默认值。例如，如果搜索请求中没有数据，我们希望将元素的内部HTML设置为默认值。否则，我们要显示现有列表。这样，我们避免了不必要的更新和任何副作用，例如解析，重新渲染，失去焦点等。我们可以简单地使用此运算符来使用JavaScript更新HTML：</p>\r\n\r\n<pre>\r\n<code>document.getElementById(&#39;search&#39;).innerHTML&nbsp;||=&nbsp;&#39;&lt;i&gt;No&nbsp;posts&nbsp;found&nbsp;matching&nbsp;this&nbsp;search.&lt;/i&gt;&#39;\r\n</code></pre>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4>四、逻辑与分配（&amp;&amp; =）</h4>\r\n\r\n<p>可能你已经猜到了，此逻辑赋值运算符仅在左侧为真时才赋值。因此：</p>\r\n\r\n<pre>\r\n<code>x&nbsp;&amp;&amp;=&nbsp;y\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>等同于</p>\r\n\r\n<pre>\r\n<code>x&nbsp;&amp;&amp;&nbsp;(x&nbsp;=&nbsp;y)\r\n</code></pre>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h5>最后</h5>\r\n\r\n<p>本次分享几个优雅的JavaScript运算符使用技巧，重点分享了可选链接运算符的使用，这样可以让我们不需要再编写大量我们例子中代码即可轻松访问嵌套属性。但是IE不支持它，因此，如果需要支持该版本或更旧版本的浏览器，则可能需要添加Babel插件。对于Node.js，需要为此升级到Node 14 LTS版本，因为12.x不支持该版本。</p>\r\n\r\n<p>如果你也有优雅的优雅的JavaScript运算符使用技巧，请不要吝惜，在评论区一起交流~</p>',5,'','2021-06-01 14:33:32.591904','2021-06-09 13:15:19.137022',1),(9,'css-实现蜂窝形状','blog_img/2021/06/01/2020-02-01.jpg','<p><strong>方法一：</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>将六边形看成三个矩形的旋转拼接</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/02/2020-1-1-1.png\" style=\"height:267px; width:753px\" /></p>\r\n\r\n<p>六边形每一个角为60&deg;，根据计算可以得出高宽之间的关系为根号3 ： 1</p>\r\n\r\n<p><strong>方法二：</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>利用border属性绘制， 中间一个矩形，在利用befor和after进行两边三角形的绘制</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/02/2020-1-1-2.png\" style=\"height:271px; width:446px\" /></p>\r\n\r\n<p>（border是由三角形组成的，而不是矩形），可以看下将border的四边用不同的颜色来表示</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/02/2020-1-1-3.png\" style=\"height:138px; width:148px\" /></p>\r\n\r\n<p>&nbsp;</p>',17,'','2021-06-01 14:46:29.250957','2021-06-09 13:15:27.952986',1),(10,'js实现中文排序、分类','blog_img/2021/06/01/2019-11-02.jpg','<p><strong>localeCompare() 方法</strong></p>\r\n\r\n<p>用本地特定的顺序来比较两个字符串。说明比较结果的数字。如果 stringObject 小于 target，则 localeCompare() 返回小于 0 的数。如果 stringObject 大于 target，则该方法返回大于 0 的数。如果两个字符串相等，或根据本地排序规则没有区别，该方法返回 0。</p>\r\n\r\n<p><strong>说明</strong></p>\r\n\r\n<p>把 &lt; 和 &gt; 运算符应用到字符串时，它们只用字符的 Unicode 编码比较字符串，而不考虑当地的排序规则。以这种方法生成的顺序不一定是正确的。例如，在西班牙语中，其中字符 &ldquo;ch&rdquo; 通常作为出现在字母 &ldquo;c&rdquo; 和 &ldquo;d&rdquo; 之间的字符来排序。</p>\r\n\r\n<p>localeCompare() 方法提供的比较字符串的方法，考虑了默认的本地排序规则。ECMAscript 标准并没有规定如何进行本地特定的比较操作，它只规定该函数采用底层操作系统提供的排序规则。</p>\r\n\r\n<p><strong>如下：可以用对中文以拼音字母进行分类排序</strong></p>\r\n\r\n<pre>\r\n<code>const arr = [</code>\r\n\r\n<code>    { name: &#39;阿坝藏族羌族自治州&#39; }, </code>\r\n\r\n<code>    { name: &#39;包头&#39; },</code>\r\n\r\n<code>    { name: &#39;阿克苏地区&#39; },</code>\r\n\r\n<code>    { name: &#39;沧州市&#39; },</code>\r\n\r\n<code>    { name: &#39;昌都市&#39; },</code>\r\n\r\n<code>    { name: &#39;北京&#39; }</code>\r\n\r\n<code>]</code>\r\n\r\n\r\n\r\n<code>  // 中文按拼音排序</code>\r\n\r\n<code>function asLetterSort(arr) {</code>\r\n\r\n<code>    let letters = &quot;*ABCDEFGHJKLMNOPQRSTWXYZ&quot;.split(&#39;&#39;)</code>\r\n\r\n<code>        , zh = &quot;阿八嚓哒妸发旮哈讥咔垃痳拏噢妑七呥扨它穵夕丫帀&quot;.split(&#39;&#39;)</code>\r\n\r\n<code>        , arr1 = []</code>\r\n\r\n<code>        , curr = {}</code>\r\n\r\n<code>    letters.forEach((letter, i) =&gt; {</code>\r\n\r\n<code>        curr = { </code>\r\n\r\n<code>            letter,</code>\r\n\r\n<code>            data: []</code>\r\n\r\n<code>        }</code>\r\n\r\n<code>        arr.forEach(item =&gt; {</code>\r\n\r\n<code>            if ((!zh[i - 1] || zh[i - 1].localeCompare(item.name) &lt;= 0) &amp;&amp; item.name.localeCompare(zh[i]) == -1) {</code>\r\n\r\n<code>                curr.data.push(item)</code>\r\n\r\n<code>            }</code>\r\n\r\n<code>        })</code>\r\n\r\n<code>        if (curr.data.length) {</code>\r\n\r\n<code>            curr.data.sort((a, b) =&gt; a.name.localeCompare(b.name))</code>\r\n\r\n<code>            arr1.push(curr)</code>\r\n\r\n<code>        }</code>\r\n\r\n<code>    })</code>\r\n\r\n<code>    return arr1</code>\r\n\r\n<code>}</code>\r\n\r\n<code>console.log(JSON.stringify(asLetterSort(arr)))</code></pre>\r\n\r\n<p><strong>运行如下:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.zhangqinblog.com/files/learnShare/images/2019-11-2.png\" /></p>\r\n\r\n<p>虽然可以方便的比较两个中文的顺序 但是由于中文汉字有多音字的关系&nbsp; 有时候并不是你所想的那样&nbsp; 此处有bug,在做选址列表的时候排序出来的长沙市被归类到Z里面去了，所以简单的中文拼音可以用用，复杂的话还是建议建表分类存储。</p>',9,'','2021-06-01 15:28:25.031033','2021-06-09 13:15:39.019659',1),(11,'vue之路由钩子函数','blog_img/2021/06/01/2019-9-17.jpg','<pre>\r\n<code>vue路由钩子函数可以大致分为三类，他们的作用都是主要对路由的跳转进行控制，例如权限管理、登录判断、浏览器判断。</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.全局钩子</p>\r\n\r\n<p>主要包括beforeEach和afterEach,</p>\r\n\r\n<p>一般有三个参数：</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>to:router即将进入的路由对象</p>\r\n	</li>\r\n	<li>\r\n	<p>from:当前导航即将离开的路由</p>\r\n	</li>\r\n	<li>\r\n	<p>next:Function,进行管道中的一个钩子，如果执行完了，则导航的状态就是 confirmed （确认的）；否则为false，终止导航。</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>通过beforeEach来对路由跳转做权限管理：</p>\r\n\r\n<p>//&nbsp;设置路由</p>\r\n\r\n<pre>\r\n<code>router.beforeEach((to, from, next) =&gt; {</code>\r\n\r\n<code>  console.log(to, from)</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;//&nbsp;跳转前判断是否需要登录</p>\r\n\r\n<pre>\r\n<code>  if (to.meta.auto) {</code>\r\n\r\n<code>    sessionStorage.setItem(&#39;success&#39;, to.path)</code>\r\n\r\n<code>    if (store.getters[&#39;login/getLogin&#39;]) {</code>\r\n\r\n<code>      next()</code>\r\n\r\n<code>    } else {</code>\r\n\r\n<code>      next({ path: &#39;pleaseLogin&#39; })</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>  } else {</code>\r\n\r\n<code>    next()</code>\r\n\r\n<code>  }</code>\r\n\r\n<code>})</code></pre>\r\n\r\n<p>router.beforeEach 页面加载之前</p>\r\n\r\n<p>router.afterEach&nbsp; 页面加载之后</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2、单个路由里面的钩子</p>\r\n\r\n<pre>\r\n<code>beforeEnter和beforeLeave</code>\r\n\r\n<code>beforeEnter: (to, from, next) =&gt; {          </code>\r\n\r\n<code>   console.log(to,from,next)</code>\r\n\r\n<code>},</code>\r\n\r\n<code>beforeLeave: (to, from, next) =&gt; {</code>\r\n\r\n<code>   console.log(to,from,next)</code>\r\n\r\n<code>},</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3、组件路由</p>\r\n\r\n<pre>\r\n<code>beforeRouteEnter和beforeRouteUpdate,beforeRouteLeave</code>\r\n\r\n<code>beforeRouteEnter(to, from, next) {</code>\r\n\r\n<code>   console.log(to)</code>\r\n\r\n<code>},</code>\r\n\r\n<code>beforeRouteUpdate(to, from, next) {</code>\r\n\r\n<code>   console.log(to)</code>\r\n\r\n<code>},</code>\r\n\r\n<code>beforeRouteLeave(to, from, next) {</code>\r\n\r\n<code>   console.log(to)</code>\r\n\r\n<code>}</code></pre>',7,'','2021-06-01 16:33:41.993243','2021-06-09 13:15:47.512751',1),(12,'深入理解js原型与原型链','blog_img/2021/06/01/2019-9-9.png','<pre>\r\n在JavaScript中的所有事物都是对象：\r\n\r\n    字符串、数字、数组、日期，等等。\r\n</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">但这里需要区分下Function(函数对象)和Object(普通对象)：</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">function</span>&nbsp;<span style=\"color:#dcdcaa\">animal</span>()&nbsp;{};&nbsp;<span style=\"color:#6a9955\">//&nbsp;函数对象</span></span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">const</span>&nbsp;<span style=\"color:#9cdcfe\">f</span>&nbsp;=&nbsp;<span style=\"color:#569cd6\">new</span>&nbsp;<span style=\"color:#4ec9b0\">Function</span>&nbsp;();&nbsp;<span style=\"color:#6a9955\">//&nbsp;函数对象</span></span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">const</span>&nbsp;<span style=\"color:#9cdcfe\">a</span>&nbsp;=&nbsp;<span style=\"color:#569cd6\">new</span>&nbsp;<span style=\"color:#4ec9b0\">animal</span>()&nbsp;<span style=\"color:#6a9955\">//&nbsp;普通对象</span></span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">const</span>&nbsp;<span style=\"color:#9cdcfe\">b</span>&nbsp;=&nbsp;{}&nbsp;<span style=\"color:#6a9955\">//&nbsp;普通对象</span></span></span></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">凡</span></span><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">是通过Function创建的对象都是函数对象，其他则都是为普通对象</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">好的，继续看下面：</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">这里定义了一个animal构造函数</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">function</span>&nbsp;<span style=\"color:#dcdcaa\">animal</span>(<span style=\"color:#9cdcfe\">name</span>,<span style=\"color:#9cdcfe\">age</span>)&nbsp;{</span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">&nbsp; &nbsp;this</span>.<span style=\"color:#9cdcfe\">name</span>&nbsp;=&nbsp;<span style=\"color:#9cdcfe\">name</span>;</span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp; &nbsp; &nbsp;<span style=\"color:#569cd6\">this</span>.<span style=\"color:#9cdcfe\">age</span>&nbsp;=&nbsp;<span style=\"color:#9cdcfe\">age</span>;</span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp; }</span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#4ec9b0\">console</span>.<span style=\"color:#dcdcaa\">log</span>(<span style=\"color:#4ec9b0\">animal</span>.<span style=\"color:#9cdcfe\">prototype</span>)</span></span></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"/media/upload/2021/06/01/2019-9-9-01.png\" style=\"height:77px; width:692px\" />&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">1、每一个函数对象在被创建的时候都会有一个prototype属性，这个属性指向他的原型对象(原型)。</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">2、原型对象上又会有一个constructor属性和__proto__属性，这个constructor属性又会指向它的构造函数，这个__proto__属性指向的是它的构造函数的原型对象。</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">即animal.prototype.constructor = animal</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">下面通过animal构造函数实例化一个对象f1</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#569cd6\">const</span>&nbsp;<span style=\"color:#9cdcfe\">f1</span>&nbsp;=&nbsp;<span style=\"color:#569cd6\">new</span>&nbsp;<span style=\"color:#4ec9b0\">animal</span>(<span style=\"color:#ce9178\">&#39;dog&#39;</span>,<span style=\"color:#b5cea8\">2</span>)&nbsp;<span style=\"color:#6a9955\">//&nbsp;实例化对象</span></span></span></div>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\">&nbsp;&nbsp;<span style=\"color:#4ec9b0\">console</span>.<span style=\"color:#dcdcaa\">log</span>(<span style=\"color:#9cdcfe\">f1</span>)</span></span></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"/media/upload/2021/06/01/2019-9-9-02.png\" style=\"height:113px; width:693px\" />&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">这个f1对象也有一个_proto_属性，这个属性指向他的构造函数的原型对象。</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">即f1.__proto__ === animal.prototype</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">1、__proto__和constructor是对象所独有的</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">2、prototype是函数所独有的</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">前面说到了所有的对象都有__proto__属性，并且是指向它的原型对象(父对象)。当我们在本身查找一个属性时，如果对象本身不存在就会去__proto__指向的原型对象中去寻找，如果找不到，则继续向上寻找直到null，这便形成了一条原型链。且原型链的终点都是null。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div><span style=\"color:#d4d4d4\"><span style=\"background-color:#1e1e1e\"><span style=\"color:#4ec9b0\">&nbsp; console</span>.<span style=\"color:#dcdcaa\">log</span>(<span style=\"color:#9cdcfe\">f1</span>.<span style=\"color:#9cdcfe\">__proto__</span>.<span style=\"color:#9cdcfe\">__proto__</span>.<span style=\"color:#9cdcfe\">__proto__</span>)</span></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">&nbsp;<img alt=\"\" src=\"/media/upload/2021/06/01/2019-9-9-03.png\" style=\"height:83px; width:692px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">为什么是null?</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">null：&nbsp;Null类型，代表&ldquo;空值&rdquo;，代表一个空对象指针，使用typeof运算得到&nbsp;&ldquo;object&rdquo;，所以你可以认为它是一个特殊的对象值。</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">undefined：&nbsp;Undefined类型，当一个声明了一个变量未初始化时，得到的就是undefined。</span></span></p>\r\n\r\n<p><span style=\"color:#555555\"><span style=\"background-color:#ffffff\">显然，Object.prototype&nbsp;没有进一步的原型并不是一种错误，并且对象如果有原型的话，应该是一个对象，因此没有原型应该以&nbsp;null&nbsp;表示，而不是以&nbsp;undefined&nbsp;表示。</span></span></p>',16,'','2021-06-01 16:40:06.822864','2021-06-09 13:16:02.622146',1),(13,'VUE-自定义登录指令','blog_img/2021/06/02/2019-9-3-1_l28qBbd.jpg','<p>vue除了核心功能默认内置的指令 (v-model&nbsp;和&nbsp;v-show)，Vue 也允许注册自定义指令。注意，在 Vue2.0 中，代码复用和抽象的主要形式是组件。然而，有的情况下，你仍然需要对普通 DOM 元素进行底层操作，这时候就会用到自定义指令。比如登录&nbsp; 当你一个项目很多地方都用到了登录判断时，写成指令的方式是让你很省心的</p>\r\n\r\n<p>如下：</p>\r\n\r\n<p>先在store里面添加登录模块并且添加state和getter，由于这里只讲登录状态，其他的登录信息没有写</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>const state = {</code>\r\n\r\n\r\n\r\n<code>    isLogin: false, // false-未登录 true-已登录</code>\r\n\r\n<code>    showLogin: false // 登录弹窗状态</code>\r\n\r\n<code>}</code>\r\n\r\n\r\n\r\n<code>const getters = {</code>\r\n\r\n\r\n\r\n<code>    getLogin (state) {</code>\r\n\r\n<code>        state.isLogin = sessionStorage.getItem(&#39;isLogin&#39;)</code>\r\n\r\n<code>        return state.isLogin</code>\r\n\r\n<code>    },</code>\r\n\r\n\r\n\r\n<code>    getShowLogin (state) {</code>\r\n\r\n<code>        return state.showLogin</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>然后在main.js添加</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>// 自定义判断是否登录跳转指令</code>\r\n\r\n<code>Vue.directive(&#39;login&#39;, {</code>\r\n\r\n<code>    inserted: (el, binding) =&gt; {</code>\r\n\r\n<code>        el.addEventListener(&#39;click&#39;, function (e) {</code>\r\n\r\n<code>            if (!store.getters[&#39;login/getLogin&#39;]) {</code>\r\n\r\n<code>                store.commit(&#39;login/setShowLogin&#39;, true)</code>\r\n\r\n<code>            }</code>\r\n\r\n<code>        })</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>})</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>然后在你需要的dom上加上v-login就可以了如&lt;botton v-login /&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>一个指令定义对象可以提供如下几个钩子函数 (均为可选)：</p>\r\n\r\n<p>bind：只调用一次，指令第一次绑定到元素时调用。在这里可以进行一次性的初始化设置。</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>inserted：被绑定元素插入父节点时调用 (仅保证父节点存在，但不一定已被插入文档中)。</p>\r\n	</li>\r\n	<li>\r\n	<p>update：所在组件的 VNode 更新时调用，但是可能发生在其子 VNode 更新之前。指令的值可能发生了改变，也可能没有。但是你可以通过比较更新前后的值来忽略不必要的模板更新.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>componentUpdated：指令所在组件的 VNode&nbsp;及其子 VNode&nbsp;全部更新后调用。</p>\r\n	</li>\r\n	<li>\r\n	<p>unbind：只调用一次，指令与元素解绑时调用。</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>还不清楚的可以去<a href=\"https://cn.vuejs.org/v2/guide/custom-directive.html\" target=\"_blank\">vue官网文档进行了解</a></p>',9,'','2021-06-02 14:11:24.349912','2021-06-09 13:16:15.226751',1),(14,'js-数组去重的几种方法','blog_img/2021/06/02/2019-8-28-2_sBJ4PkS.jpg','<p>数组去重在很多面试中都会被问到，这里简单说一下数组去重的几种方式。</p>\r\n\r\n<p>有个朋友上次面试就被问到了，当时面试官给的题目是一句话数组去重(这里应该考的是es6 set去重，最简单的去重方法)</p>\r\n\r\n<p>1、es6 set去重</p>\r\n\r\n<p>ES6 提供了新的数据结构 Set。它类似于数组，但是成员的值都是唯一的，没有重复的值。(可以用于去重)</p>\r\n\r\n<p>Set本身是一个构造函数，用来生成 Set 数据结构。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>  let arrayA = [1,1,2,2,3,3,&#39;a&#39;,&#39;a&#39;,&#39;T&#39;,&#39;y&#39;,&#39;k&#39;,&#39;r&#39;,&#39;r&#39;];</code>\r\n\r\n<code>  console.log([...new Set(arrayA)])</code></pre>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"/media/upload/2021/06/02/2019-8-28-2-02_pRJuSeD.png\" style=\"height:227px; width:939px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2、简单去重<br />\r\n创建一个空数组用来存放筛选后的元素&nbsp; 筛选的方法是通过比较遍历到当前元素是否在于新数组中 若不存在则push 存在则进行下一次循环</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>  const a = [&#39;aaa&#39;,&#39;c43&#39;,5867,&#39;wda&#39;,&#39;pps&#39;,&#39;c43&#39;,&#39;aaa&#39;,&#39;pps&#39;];</code>\r\n\r\n<code>  arraydr = (array) =&gt; {</code>\r\n\r\n<code>      let temp = [];</code>\r\n\r\n<code>      console.log(array);</code>\r\n\r\n<code>      for (let i of array) {</code>\r\n\r\n<code>          if (temp.indexOf(i) === -1) {</code>\r\n\r\n<code>              temp.push(i);</code>\r\n\r\n<code>          }</code>\r\n\r\n<code>      }</code>\r\n\r\n<code>      console.log(temp);</code>\r\n\r\n<code>  }</code>\r\n\r\n<code>  arraydr(a);</code></pre>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"/media/upload/2021/06/02/2019-8-28-2-01_LVCps2m.png\" style=\"height:60px; width:854px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3、相邻去重<br />\r\n首先利用sort进行排序 然后去比较相邻位的元素 若为true则 push&nbsp; 反之进行下一次循环比较</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>  const a = [&#39;aaa&#39;,&#39;c43&#39;,5867,&#39;wda&#39;,&#39;pps&#39;,&#39;c43&#39;,&#39;aaa&#39;,&#39;pps&#39;];</code>\r\n\r\n<code>  arraydr2 = (array) =&gt; {</code>\r\n\r\n<code>      let temp = [];</code>\r\n\r\n<code>      array.sort();</code>\r\n\r\n<code>      console.log(array);</code>\r\n\r\n<code>      for (let i in array) {</code>\r\n\r\n<code>          if (i === 0&amp;&amp;array[i] !== array[i+1]) {</code>\r\n\r\n<code>              temp.push(array[i]);</code>\r\n\r\n<code>          } else if (array[i] !== array[i-1]&amp;&amp;array[i] !== array[i+1]) {</code>\r\n\r\n<code>              temp.push(array[i]);</code>\r\n\r\n<code>          } else if (i === array.length - 1&amp;&amp;array[i] !== array[i-1]) {</code>\r\n\r\n<code>              temp.push(array[i]);</code>\r\n\r\n<code>          }</code>\r\n\r\n<code>      }</code>\r\n\r\n<code>      console.log(temp);</code>\r\n\r\n<code>  }</code>\r\n\r\n<code>  arraydr2(a);</code></pre>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"/media/upload/2021/06/02/2019-8-28-2-01_0MCt3Rh.png\" style=\"height:60px; width:854px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4、数组下标法<br />\r\n该方法是利用indexOf求出元素在数组中首次出现的位置跟下标进行对比</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>  const a = [&#39;aaa&#39;,&#39;c43&#39;,5867,&#39;wda&#39;,&#39;pps&#39;,&#39;c43&#39;,&#39;aaa&#39;,&#39;pps&#39;];</code>\r\n\r\n<code>  arraydr3 = (array) =&gt; {</code>\r\n\r\n<code>      let temp = [];</code>\r\n\r\n<code>      for (let i = 0;i &lt; array.length;i++){</code>\r\n\r\n<code>          if (array.indexOf(array[i]) == i) {</code>\r\n\r\n<code>              temp.push(array[i]);</code>\r\n\r\n<code>          }</code>\r\n\r\n<code>      }</code>\r\n\r\n<code>      console.log(temp);</code>\r\n\r\n<code>  }</code>\r\n\r\n<code>  arraydr3(a);</code></pre>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"/media/upload/2021/06/02/2019-8-28-2-01_91tn7Cf.png\" style=\"height:60px; width:854px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>如果你还有更多的方法可以在下面留言哦。多多指教。</p>',12,'','2021-06-02 14:18:05.637560','2021-06-09 13:16:28.285041',1),(15,'js-闭包','blog_img/2021/06/02/2019-8-28-4.png','<h2>什么是闭包？</h2>\r\n\r\n<p>红宝书(p178)上对于闭包的定义：闭包是指有权访问另外一个函数作用域中的变量的函数，</p>\r\n\r\n<p>MDN 对闭包的定义为：闭包是指那些能够访问自由变量的函数。</p>\r\n\r\n<p>由此，我们可以看出闭包共有两部分组成：</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>是一个函数</p>\r\n	</li>\r\n	<li>\r\n	<p>能访问另外一个函数作用域中的变量</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>对于闭包有下面三个特性：</p>\r\n\r\n<p>1、闭包可以访问当前函数以外的变量</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfunction getOuter(){\r\n    var date = &#39;815&#39;;\r\n    function getDate(str){\r\n        console.log(str + date);  //访问外部的date\r\n    }\r\n    return getDate(&#39;今天是：&#39;); //&quot;今天是：815&quot;}getOuter();</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2、即使外部函数已经返回，闭包仍能访问外部函数定义的变量</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfunction getOuter(){\r\n    var date = &#39;815&#39;;\r\n    function getDate(str){\r\n        console.log(str + date);  //访问外部的date\r\n    }\r\n    return getDate;     //外部函数返回}var today = getOuter();today(&#39;今天是：&#39;);   //&quot;今天是：815&quot;today(&#39;明天不是：&#39;);   //&quot;明天不是：815&quot;</pre>\r\n\r\n<p>3、闭包可以更新外部变量的值</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfunction updateCount(){\r\n    var count = 0;\r\n    function getCount(val){\r\n        count = val;\r\n        console.log(count);\r\n    }\r\n    return getCount;     //外部函数返回}var count = updateCount();count(815); //815count(816); //816</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>为什么闭包的应用都有关键词&nbsp;<code>return</code>，引用 JavaScript 秘密花园中的一段话：</p>\r\n\r\n<p>闭包是 JavaScript 一个非常重要的特性，这意味着当前作用域总是能够访问外部作用域中的变量。 因为 函数 是 JavaScript 中唯一拥有自身作用域的结构，因此闭包的创建依赖于函数。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E5%BA%94%E7%94%A8%E5%9C%BA%E6%99%AF\">#</a>应用场景</h2>\r\n\r\n<p>具体应用场景你知道哪些？？</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>保护函数内的变量安全：如迭代器、生成器。</p>\r\n	</li>\r\n	<li>\r\n	<p>在内存中维持变量：如缓存数据、柯里化。</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E7%A7%81%E6%9C%89%E5%B1%9E%E6%80%A7\">#</a>私有属性</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nvar foo = (function(){\r\n    var secret = &#39;secret&#39;\r\n    // &ldquo;闭包&rdquo;内的函数可以访问 secret 变量，而 secret 变量对于外部却是隐藏的\r\n    return {\r\n        get_secret() {\r\n            return secret        },\r\n        new_secret(new_secret) {\r\n            secret = new_secret        }\r\n    }})()foo.secret              // undefinedfoo.get_secret()        // &#39;secret&#39;foo.new_secret(&#39;哈哈哈&#39;) // 修改secret值foo.get_secret()        // &#39;哈哈哈&#39;</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>之所以可能通过这种方式在 JavaScript 种实现公有，私有，特权变量正是因为闭包，闭包是指在 JavaScript 中，内部函数总是可以访问其所在的外部函数中声明的参数和变量，即使在其外部函数被返回（寿命终结）了之后。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nlet sque = (function () {\r\n    let _width = Symbol();\r\n\r\n    class Squery {\r\n        constructor(s) {\r\n            this[_width] = s        }\r\n        foo() {\r\n            console.log(this[_width])\r\n        }\r\n    }\r\n    return Squery})();let ss = new sque(20);ss.foo()    // 20console.log(ss[_width]) // ReferenceError: _width is not defined</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E5%8D%95%E4%BE%8B%E6%A8%A1%E5%BC%8F\">#</a>单例模式</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nclass Modal {\r\n    constructor(name) {\r\n        this.name = name        this.getName()\r\n    }\r\n    getName() {\r\n        return this.name    }}let ProxySing = (function(){\r\n    let instance;\r\n    return function(name) {\r\n        if (!instance) {\r\n            instance = new Modal(name)\r\n        }\r\n        return instance    }})()let a = new ProxySing(&#39;问题框&#39;);let b = new ProxySing(&#39;回答框&#39;);console.log(a === b); // trueconsole.log(a.getName());  // &#39;问题框&#39;console.log(b.getName());  // &#39;问题框&#39;</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E5%87%BD%E6%95%B0%E9%98%B2%E6%8A%96\">#</a>函数防抖</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nconst fn = () =&gt; console.log(&#39;fn&#39;)window.onresize = debounce(fn, 1000)function debounce(fn, interval) {\r\n    let timer = null;\r\n    return function (...args) {\r\n        if(timer) clearTimeout(timer);\r\n        timer = setTimeout(() =&gt; {\r\n            fn.apply(this, args);\r\n        }, interval);\r\n    }}</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E9%9D%A2%E8%AF%95%E9%A2%98\">#</a>面试题</h2>\r\n\r\n<p>接下来，看这道刷题必刷，面试必考的加强版闭包题：</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfor (var i = 0; i &lt; 5; i++) {\r\n    setTimeout(() =&gt; {\r\n        console.log(i);\r\n    }, 1000);}console.log(i)// 5 5 5 5 5 5</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>答案是都是5，6个5，让我们分析一下原因：</p>\r\n\r\n<p>由于作用域链机制的影响，闭包只能取得内部函数的最后一个值，这引起的一个副作用就是如果内部函数在一个循环中，那么变量的值始终为最后一个值。</p>\r\n\r\n<p>如果要强制返回预期的结果(5,0,1,2,3,4)，怎么办？？？</p>\r\n\r\n<p>加个闭包</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E6%96%B9%E6%B3%951%EF%BC%9A%E7%AB%8B%E5%8D%B3%E6%89%A7%E8%A1%8C%E5%87%BD%E6%95%B0\">#</a>方法1：立即执行函数</h3>\r\n\r\n<p>把值传参给一个自执行的函数，函数具有块级作用域</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfor (var i = 0; i &lt; 5; i++) {\r\n    ((num) =&gt; {\r\n        setTimeout(() =&gt; {\r\n            console.log(num);\r\n        }, 1000);\r\n    })(i);}console.log(i)</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E6%96%B9%E6%B3%952%EF%BC%9Asettimeout%E4%BC%A0%E5%8F%82\">#</a>方法2：setTimeout传参</h3>\r\n\r\n<p><code>setTimeout</code>被遗忘的第三个参数，定时器启动时候，第三个以后的参数是作为第一个func()的参数传进去。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nfor (var i = 0; i &lt; 5; i++) {\r\n    setTimeout((j) =&gt; {\r\n        console.log(j);\r\n    }, 1000, i);}console.log(i)</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E6%96%B9%E6%B3%953%EF%BC%9A%E4%BD%BF%E7%94%A8es6%E4%B8%AD%E7%9A%84let\">#</a>方法3：使用ES6中的let</h3>\r\n\r\n<p><code>let</code>具有块级作用域，所以外面的会报错，未定义该变量，在这儿行不通</p>\r\n\r\n<pre>\r\nfor (let i = 0; i &lt; 5; i++) {\r\n    setTimeout(() =&gt; {\r\n        console.log(i);\r\n    }, 1000);}console.log(i)  // i is not defined</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E6%96%B9%E6%B3%954%EF%BC%9A%E5%87%BD%E6%95%B0%E8%B0%83%E7%94%A8\">#</a>方法4：函数调用</h3>\r\n\r\n<pre>\r\nvar output = function (i) {\r\n    setTimeout(function() {\r\n        console.log(i);\r\n    }, 1000);};for (var i = 0; i &lt; 5; i++) {\r\n    output(i);  // 这里传过去的 i 值被复制了}console.log(i)</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E9%97%AD%E5%8C%85%E9%9D%A2%E8%AF%95%E9%A2%98%E5%86%8D%E5%8D%87%E7%BA%A7-promise\">#</a>闭包面试题再升级 - Promise</h2>\r\n\r\n<p>想要让它按顺序输出（0,1,2,3,4,5），并且要求代码块的循环和两处<code>console.log</code>不变</p>\r\n\r\n<p>新的需求可以精确的描述为：代码执行时，立即输出 0，之后每隔 1 秒依次输出 1,2,3,4，循环结束后在大概第 5 秒的时候输出 5</p>\r\n\r\n<p>怎么做：</p>\r\n\r\n<p>下面，有请大神<code>Promise</code>出场，掌声在哪里呢？？？</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nconst tasks = [];for (var i = 0; i &lt; 5; i++) {   // 这里 i 的声明不能改成 let，如果要改该怎么做？\r\n    ((j) =&gt; {\r\n        tasks.push(new Promise((resolve) =&gt; {\r\n            setTimeout(() =&gt; {\r\n                console.log(new Date, j);\r\n                resolve();  // 这里一定要 resolve，否则代码不会按预期 work\r\n            }, 1000 * j);   // 定时器的超时时间逐步增加\r\n        }));\r\n    })(i);}Promise.all(tasks).then(() =&gt; {\r\n    setTimeout(() =&gt; {\r\n        console.log(new Date, i);\r\n    }, 1000);   // 注意这里只需要把超时设置为 1 秒});</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>听说这是拥有加分项的模块化</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nconst tasks = []; // 这里存放异步操作的 Promiseconst output = (i) =&gt; new Promise((resolve) =&gt; {\r\n    setTimeout(() =&gt; {\r\n        console.log(new Date, i);\r\n        resolve();\r\n    }, 1000 * i);});// 生成全部的异步操作for (var i = 0; i &lt; 5; i++) {\r\n    tasks.push(output(i));}// 异步操作完成之后，输出最后的 iPromise.all(tasks).then(() =&gt; {\r\n    setTimeout(() =&gt; {\r\n        console.log(new Date, i);\r\n    }, 1000);});</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><a href=\"https://wsydxiangwang.github.io/web/Base/3.html#%E9%97%AD%E5%8C%85%E9%9D%A2%E8%AF%95%E9%A2%98%E5%86%8D%E5%8D%87%E7%BA%A7-async-await\">#</a>闭包面试题再升级 - async/await</h2>\r\n\r\n<p>有大神<code>Promise</code>能搞定的事情，那我<code>async/await</code>也无所畏惧</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n// 模拟其他语言中的 sleep，实际上可以是任何异步操作const sleep = (time) =&gt; new Promise((resolve) =&gt; {\r\n    setTimeout(resolve, time);});(async () =&gt; {  // 声明即执行的 async 函数表达式\r\n    for (var i = 0; i &lt; 5; i++) {\r\n        if (i &gt; 0) {\r\n            await sleep(1000);\r\n        }\r\n        console.log(new Date, i);\r\n    }\r\n\r\n    await sleep(1000);\r\n    console.log(new Date, i);})();</pre>',36,'','2021-06-02 14:28:17.906271','2021-06-09 13:16:42.506674',1),(16,'js事件循环(event loop)、宏任务与微任务','blog_img/2021/06/08/2019-6-6-4.png','<p><strong>javascrip是单线程的，所谓的单线程是指js引擎中负责解释和实现js代码的线程只有一个，称之为主线程。</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>js的任务分为&nbsp;同步&nbsp;和&nbsp;异步&nbsp;两种，它们的处理方式也不同，同步任务是直接在主线程上排队执行，异步任务则会被放到任务队列中，若有多个任务（异步任务）则要在任务队列中排队等待，任务队列类似一个缓冲区，任务下一步会被移到调用栈（call&nbsp;stack），然后主线程执行调用栈的任务。</p>\r\n\r\n<p>单线程是指js引擎中负责解析执行js代码的线程只有一个（主线程），即每次只能做一件事，而我们知道一个ajax请求，主线程在等待它响应的同时是会去做其它事的，浏览器先在事件表注册ajax的回调函数，响应回来后回调函数被添加到任务队列中等待执行，不会造成线程阻塞，所以说js处理ajax请求的方式是异步的。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>事件循环机制：</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>主线程执行&nbsp;JavaScript&nbsp;整体代码，形成执行上下文栈，当遇到各种任务源时将其所指定的异步任务挂起，接受到响应结果后将异步任务放入对应的任务队列中，直到执行上下文栈只剩全局上下文；</li>\r\n	<li>将微任务队列中的所有任务队列按优先级、单个任务队列的异步任务按先进先出（FIFO）的方式入栈并执行，直到清空所有的微任务队列；</li>\r\n	<li>将宏任务队列中优先级最高的任务队列中的异步任务按先进先出（FIFO）的方式入栈并执行；</li>\r\n	<li>重复第&nbsp;2&nbsp;3&nbsp;步骤，直到清空所有的宏任务队列和微任务队列，全局上下文出栈。</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/08/2019-6-6-2.png\" style=\"height:960px; width:1146px\" /><img alt=\"\" src=\"/media/upload/2021/06/08/2019-6-6-1.png\" style=\"height:960px; width:1148px\" /></p>\r\n\r\n<p><strong>宏任务(macro-task)、微任务(micro-task)</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;除了广义的同步任务和异步任务，JavaScript&nbsp;单线程中的任务可以细分为宏任务和微任务。</li>\r\n	<li>&nbsp;macro-task包括：script(整体代码),&nbsp;setTimeout,&nbsp;setInterval,&nbsp;setImmediate,&nbsp;I/O,&nbsp;UI&nbsp;rendering。</li>\r\n	<li>&nbsp;micro-task包括：process.nextTick,&nbsp;Promise,&nbsp;Object.observe,&nbsp;MutationObserver。</li>\r\n</ul>\r\n\r\n<p><strong>看列说明：</strong></p>\r\n\r\n<pre>\r\n<code>new Promise((resolve, reject) =&gt; {</code>\r\n\r\n<code>    console.log(&#39;promise1&#39;)</code>\r\n\r\n<code>    resolve()</code>\r\n\r\n<code>}).then(() =&gt; {</code>\r\n\r\n<code>    console.log(&#39;promise2&#39;)</code>\r\n\r\n<code>})</code>\r\n\r\n\r\n\r\n<code>console.log(&#39;start1&#39;)</code>\r\n\r\n\r\n\r\n<code>setTimeout(() =&gt; {</code>\r\n\r\n<code>    console.log(&#39;a&#39;)</code>\r\n\r\n<code>},2000)</code>\r\n\r\n\r\n\r\n<code>setTimeout(() =&gt; {</code>\r\n\r\n<code>    console.log(&#39;b&#39;)</code>\r\n\r\n<code>},1000)</code>\r\n\r\n\r\n\r\n<code>setTimeout(() =&gt; {</code>\r\n\r\n<code>    Promise.resolve().then(() =&gt; {</code>\r\n\r\n<code>        console.log(&#39;promiseA&#39;)</code>\r\n\r\n<code>    }).then(() =&gt; {</code>\r\n\r\n<code>        console.log(&#39;promiseB&#39;)</code>\r\n\r\n<code>    })</code>\r\n\r\n<code>})</code>\r\n\r\n\r\n\r\n<code>Promise.resolve().then(() =&gt; {</code>\r\n\r\n<code>    console.log(&#39;promise88&#39;)</code>\r\n\r\n<code>    setTimeout(() =&gt; {</code>\r\n\r\n<code>        console.log(333)</code>\r\n\r\n<code>    })</code>\r\n\r\n<code>}).then(() =&gt; {</code>\r\n\r\n<code>    console.log(&#39;promise2&#39;)</code>\r\n\r\n<code>    setTimeout(() =&gt; {</code>\r\n\r\n<code>        console.log(555)</code>\r\n\r\n<code>    })</code>\r\n\r\n<code>})</code>\r\n\r\n\r\n\r\n<code>console.log(&#39;start2&#39;)</code></pre>\r\n\r\n<ul>\r\n	<li>首先javascrip全局上下文入栈，遇到new&nbsp;Promise()同步任务执行打印promise1&nbsp;resolve()后&nbsp;.then异步函数被推入微任务队列</li>\r\n	<li>遇到console.log(&#39;start1&#39;)同步立即执行打印start1</li>\r\n	<li>遇到setTimeout&nbsp;异步任务2s后把要执行的任务推入宏任务队列中</li>\r\n	<li>遇到setTimeout&nbsp;异步任务1s后把要执行的任务推入宏任务队列中</li>\r\n	<li>遇到setTimeout&nbsp;异步任务立即把要执行的任务推入宏任务队列中</li>\r\n	<li>遇到Promise执行resolve后将第一个then方法推入微任务队列中</li>\r\n	<li>遇到console.log(&#39;start2&#39;)执行打印start2</li>\r\n	<li>此时打印了&nbsp;promise1、start1、start2</li>\r\n	<li>执行完当前主线程后依次执行当前微任务队列、直至清空、队列的结构是先进先出、所以依次如下</li>\r\n	<li>执行第一个微任务打印promise2</li>\r\n	<li>执行第二个微任务打印promise88。紧接着遇到setTimeout&nbsp;异步任务立即把要执行的任务推入宏任务队列中、将后面的then推入微任务队列中</li>\r\n	<li>执行第三个微任务打印promise2。紧接着遇到setTimeout&nbsp;异步任务立即把要执行的任务推入宏任务队列中</li>\r\n	<li>检查当前微任务队列是否为空、为空将宏任务队列中的下一个入栈执行</li>\r\n	<li>遇到promsie.resolve()执行将then方法推入微任务队列</li>\r\n	<li>清空当前微任务队列打印promiseA&nbsp;将后面的then又推入微任务队列</li>\r\n	<li>清空当前微任务队列打印promiseB</li>\r\n	<li>判断当前微任务队列是否为空、为空将下一个宏任务入栈并执行</li>\r\n	<li>打印333</li>\r\n	<li>打印555</li>\r\n	<li>打印a</li>\r\n	<li>打印b</li>\r\n	<li>全局上下文出栈，代码执行完毕。</li>\r\n</ul>\r\n\r\n<p><strong>最终结果为:</strong></p>\r\n\r\n<ul>\r\n	<li>promise1</li>\r\n	<li>start1</li>\r\n	<li>start2</li>\r\n	<li>promise2</li>\r\n	<li>promise88</li>\r\n	<li>promise2</li>\r\n	<li>promiseA</li>\r\n	<li>promiseB</li>\r\n	<li>333</li>\r\n	<li>555</li>\r\n	<li>b</li>\r\n	<li>a</li>\r\n</ul>',2,'','2021-06-08 16:32:04.650467','2021-06-08 16:33:18.001320',1),(17,'JS种实现深拷贝的几种方法','blog_img/2021/06/08/2019-5-20-6.jpg','<p>基本数据类型：number，string，boolean，null，undefined，symbol以及未来ES10新增的BigInt(任意精度整数)七类。</p>\r\n\r\n<p>引用数据类型：对象，数组，以及函数。</p>\r\n\r\n<p>基本数据类型名值存储在栈内存中；</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/08/2019-5-20-1.png\" style=\"height:191px; width:263px\" /></p>\r\n\r\n<p>引用数据类型名存在栈内存中，值存在于堆内存中，但是栈内存会提供一个引用的地址指向堆内存中的值。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/08/2019-5-20-4.png\" style=\"height:182px; width:649px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>浅拷贝则是仅复制了栈内存、都指向同一个堆地址、所以都是同一个值。列如：</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>let c = [1 ,2 , 3, 4]</code>\r\n\r\n<code>let d = c</code>\r\n\r\n<code>d[0] = 2</code>\r\n\r\n<code>console.log(&#39;c:&#39;, c, &#39;d:&#39;, d)</code>\r\n</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>d拷贝c后修改d[0],c的值也随之改变了，因为d只拷贝了c中属性的栈内存(堆地址)都指向同一个堆内存、其d中属性的值并没有真正意义上的拷贝</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/08/2019-5-20-5.png\" style=\"height:173px; width:740px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>深拷贝其本身就是针对于引用数据类型而言的、接下来我们来说说深拷贝的几种实现方式</p>\r\n\r\n<p>1、手写递归实现深拷贝</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>function deelCopyObj(obj) {</code>\r\n\r\n<code>    if (!isObject(obj)) return obj</code>\r\n\r\n<code>    let res = Array.isArray(obj) ? [] : {}</code>\r\n\r\n<code>    for (let key in obj) {</code>\r\n\r\n<code>        if (Object.prototype.hasOwnProperty.call(obj, key)) {</code>\r\n\r\n<code>            if (isObject(obj[key])) {</code>\r\n\r\n<code>                res[key] = deelCopyObj(obj[key])</code>\r\n\r\n<code>            } else {</code>\r\n\r\n<code>                res[key] = obj[key]</code>\r\n\r\n<code>            }</code>\r\n\r\n<code>        }</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>    return res</code>\r\n\r\n<code>}</code>\r\n\r\n\r\n\r\n<code>function isObject(obj) {</code>\r\n\r\n<code>    return typeof obj === &#39;object&#39; &amp;&amp; obj != null</code>\r\n\r\n<code>}</code>\r\n\r\n\r\n\r\n<code>const a = [</code>\r\n\r\n<code>    1, 2, &#39;a&#39;, &#39;b&#39;, {</code>\r\n\r\n<code>        &#39;se&#39;: 333,</code>\r\n\r\n<code>        &#39;as&#39;: { &#39;ddd&#39;: &#39;123&#39; },</code>\r\n\r\n<code>        &#39;arr&#39;: [ 1, 2, 3, [ 8, 9, 10 ], 11 ]</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>]</code>\r\n\r\n\r\n\r\n<code>const b = deelCopyObj(a)</code>\r\n\r\n<code>console.log(&#39;a:&#39;, a, &#39;b:&#39;, b)</code>\r\n\r\n\r\n\r\n<code>b[4].se = 555</code></pre>\r\n\r\n<p>我们修改b[4].se测试下 并没有改变a的相应的值</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/06/08/2019-5-20-3.png\" style=\"height:272px; width:818px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2、JSON.parse()和JSON.stringify()利用序列化和反序列化实现</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>function isObject(obj) {</code>\r\n\r\n<code>    return typeof obj === &#39;object&#39; &amp;&amp; obj != null</code>\r\n\r\n<code>}</code>\r\n\r\n\r\n\r\n<code>function deelCopy(obj) {</code>\r\n\r\n<code>    if (!isObject(obj)) return obj</code>\r\n\r\n<code>    let res = JSON.stringify(obj)</code>\r\n\r\n<code>    return JSON.parse(res)</code>\r\n\r\n<code>}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>注意这种方法</strong><strong>无法实现对象中方法的深拷贝</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3、我们还可以借用JQ的extend方法。$.extend( [deep ], target, object1 [, objectN ] )</p>\r\n\r\n<p>deep表示是否深拷贝，为true为深拷贝，为false，则为浅拷贝</p>\r\n\r\n<p>target&nbsp;Object类型 目标对象，其他对象的成员属性将被附加到该对象上。</p>\r\n\r\n<p>object1&nbsp;&nbsp;objectN可选。 Object类型 第一个以及第N个被合并的对象。</p>\r\n\r\n<p>4、通过Object.assign()拷贝</p>\r\n\r\n<p><strong>注意： 当对象只有一级属性为深拷贝；</strong><strong>当对象中有多级属性时，二级属性后就是浅拷贝</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>数组深拷贝的几种方法</p>\r\n\r\n<p>1. concat(arr1, arr2,....)</p>\r\n\r\n<p>注意：当数组中的元素均为一维是深拷贝，数组中元素一维以上是值的引用</p>\r\n\r\n<p>2、slice(idx1, idx2)参数可以省略</p>\r\n\r\n<p>1）没有参数是拷贝数组</p>\r\n\r\n<p>2）只有一个参数是从该位置起到结束拷贝数组元素</p>\r\n\r\n<p>3）两个参数，拷贝从起始位置到结束位置的元素（不包含结束位置的元素：含头不含尾）</p>\r\n\r\n<p><strong>注意：当数组中的元素均为一维是深拷贝，数组中元素一维以上是值的引用</strong></p>',2,'','2021-06-08 16:40:10.398502','2021-06-08 16:40:10.398502',1),(18,'css3-3Dbanner图','blog_img/2021/06/08/2018-12-11-1.jpg','<p>3Dbanner旋转</p>\r\n\r\n<p>首先你得先构思出旋转体，一个正方体是六个面（因为这里不需要上下面，所以去掉,就只需要四个面），把正方体视为一个盒子模型（ul）</p>\r\n\r\n<p>然后在盒子下面有4个子元素(li),通过定位分别形成四个面。</p>\r\n\r\n<p>最后让ul盒子绕y轴旋转来过渡所看到得banner视图。</p>\r\n\r\n<p>过程中需要注意得:</p>\r\n\r\n<p>1、正方体盒子需要加上 transform-style: preserve-3d;是的其子元素以3d呈现</p>\r\n\r\n<p>2、perspective 属性定义 3D 元素距视图的距离，以像素计。该属性允许您改变 3D 元素查看 3D 元素的视图。(可加可不加。)</p>\r\n\r\n<p>css:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>    .banner{</code>\r\n\r\n<code>        width: 400px;</code>\r\n\r\n<code>        height: 250px;</code>\r\n\r\n<code>        position: relative;</code>\r\n\r\n<code>        margin: 100px auto 0;</code>\r\n\r\n<code>        perspective: 1200px;</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>    .banner ul {</code>\r\n\r\n<code>        position: relative;</code>\r\n\r\n<code>        width: 400px;</code>\r\n\r\n<code>        height: 250px;</code>\r\n\r\n<code>        transform-style: preserve-3d;</code>\r\n\r\n<code>        transition: all 0.5s;</code>\r\n\r\n<code>        transform-origin: 50% 50%;</code>\r\n\r\n<code>        animation: rotY 5s ease-in-out infinite;</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>    .banner ul li {</code>\r\n\r\n<code>        list-style: none;</code>\r\n\r\n<code>        width: 400px;</code>\r\n\r\n<code>        height: 250px;</code>\r\n\r\n<code>        position: absolute;</code>\r\n\r\n<code>        left: 0;</code>\r\n\r\n<code>        top: 0;</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>    .banner ul li img {</code>\r\n\r\n<code>        width: 100%;</code>\r\n\r\n<code>        height: 100%;</code>\r\n\r\n<code>    }</code>\r\n\r\n<code>    @keyframes rotY {</code>\r\n\r\n<code>        0%{ transform: rotateY(0) }</code>\r\n\r\n<code>        100%{ transform: rotateY(360deg) }</code>\r\n\r\n<code>    }</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>html:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>    &lt;div class=&quot;banner&quot;&gt;</code>\r\n\r\n<code>        &lt;ul&gt;</code>\r\n\r\n<code>            &lt;li style=&quot;transform: translateZ(-200px)&quot;&gt;</code>\r\n\r\n<code>                &lt;img src=&quot;http://www.zhangqinblog.com/templates/Images/news1.jpg&quot;/&gt;</code>\r\n\r\n<code>            &lt;/li&gt;</code>\r\n\r\n<code>            &lt;li style=&quot;transform:translateX(-50%) rotateY(90deg);&quot;&gt;</code>\r\n\r\n<code>                &lt;img src=&quot;http://www.zhangqinblog.com/templates/Images/banner2.jpg&quot;/&gt;</code>\r\n\r\n<code>            &lt;/li&gt;</code>\r\n\r\n<code>            &lt;li style=&quot;transform: translateX(50%) rotateY(90deg);&quot;&gt;</code>\r\n\r\n<code>                &lt;img src=&quot;http://www.zhangqinblog.com/files/learnShare/images/2019-8-28-2.jpg&quot;/&gt;</code>\r\n\r\n<code>            &lt;/li&gt;</code>\r\n\r\n<code>            &lt;li style=&quot;transform: translateZ(200px)&quot;&gt;</code>\r\n\r\n<code>                &lt;img src=&quot;http://www.zhangqinblog.com/files/learnShare/images/2019-9-9.png&quot;/&gt;</code>\r\n\r\n<code>            &lt;/li&gt;</code>\r\n\r\n<code>        &lt;/ul&gt;</code>\r\n\r\n<code>    &lt;/div&gt;</code></pre>\r\n\r\n<p><a href=\"/blog_demo/3dbanner\" style=\"display: block;\r\n    background: #E2523A;\r\n    color: #FFF;\r\n    padding: 4px 0;\r\n    margin: 20px auto 0;\r\n    width: 100px;\r\n    text-align: center;\r\n    border-radius: 4px;\r\n    box-shadow: 0 0 10px rgba(0,0,0,0.2);\" target=\"_blank\">查看演示</a></p>',36,'','2021-06-08 16:48:15.141275','2021-06-08 16:59:19.884515',1);
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_category`
--

DROP TABLE IF EXISTS `entry_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_category_entry_id_category_id_af348edc_uniq` (`entry_id`,`category_id`),
  KEY `entry_category_category_id_5ebb45cc_fk_category_id` (`category_id`),
  CONSTRAINT `entry_category_category_id_5ebb45cc_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `entry_category_entry_id_9cb56854_fk_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_category`
--

LOCK TABLES `entry_category` WRITE;
/*!40000 ALTER TABLE `entry_category` DISABLE KEYS */;
INSERT INTO `entry_category` VALUES (1,1,1),(2,8,2),(3,9,3),(4,10,2),(5,11,4),(6,12,2),(7,13,4),(8,14,2),(9,15,2),(10,16,2),(11,17,2),(12,18,3);
/*!40000 ALTER TABLE `entry_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_tags`
--

DROP TABLE IF EXISTS `entry_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_tags_entry_id_tag_id_aad00a8f_uniq` (`entry_id`,`tag_id`),
  KEY `entry_tags_tag_id_a9a65804_fk_tag_id` (`tag_id`),
  CONSTRAINT `entry_tags_entry_id_6aa3c8ad_fk_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `entry` (`id`),
  CONSTRAINT `entry_tags_tag_id_a9a65804_fk_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_tags`
--

LOCK TABLES `entry_tags` WRITE;
/*!40000 ALTER TABLE `entry_tags` DISABLE KEYS */;
INSERT INTO `entry_tags` VALUES (1,1,4),(2,8,1),(3,9,3),(4,10,1),(5,11,2),(6,12,1),(7,13,2),(8,14,1),(9,15,1),(10,16,1),(11,17,1),(12,18,3);
/*!40000 ALTER TABLE `entry_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_permission` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'超级用户'),(2,'注册用户'),(3,'未注册用户');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'JavaScript'),(2,'Vue'),(3,'CSS'),(4,'Java');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(254) NOT NULL,
  `login_sta` tinyint(1) NOT NULL,
  `login_lock` datetime(6) DEFAULT NULL,
  `pwd_errnum` varchar(32) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `last_edit` datetime(6) NOT NULL,
  `key` varchar(32) NOT NULL,
  `user_permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  KEY `user_user_permission_id_11577439_fk_permission_id` (`user_permission_id`),
  CONSTRAINT `user_user_permission_id_11577439_fk_permission_id` FOREIGN KEY (`user_permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'duan','123123','1466301419@qq.com',0,NULL,'MA==','male','2021-06-03 11:15:09.796091','2021-06-09 09:46:06.093789','123',1),(5,'laowang','123123','123@qq.com',0,NULL,'MA==','male','2021-06-09 14:12:01.270571','2021-06-09 14:12:50.614619','123',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 11:05:50
