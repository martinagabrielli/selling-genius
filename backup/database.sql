# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: seller-website
# Generation Time: 2020-02-16 19:10:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-02-12 14:41:21','2020-02-12 14:41:21','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),
	(2,12,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(3,12,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(4,12,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(5,13,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(6,13,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(7,13,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(8,14,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(9,14,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(10,14,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(11,15,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(12,15,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(13,15,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(14,16,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(15,16,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(16,16,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(17,17,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(18,17,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(19,17,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(20,18,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(21,18,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(22,18,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(23,19,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action created',0,'1','ActionScheduler','action_log',0,0),
	(24,19,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action started',0,'1','ActionScheduler','action_log',0,0),
	(25,19,'ActionScheduler','','','','2020-02-12 15:01:14','2020-02-12 15:01:14','action complete',0,'1','ActionScheduler','action_log',0,0),
	(26,20,'ActionScheduler','','','','2020-02-12 15:01:15','2020-02-12 15:01:15','action created',0,'1','ActionScheduler','action_log',0,0),
	(27,20,'ActionScheduler','','','','2020-02-14 13:24:39','2020-02-14 13:24:39','action started',0,'1','ActionScheduler','action_log',0,0),
	(28,20,'ActionScheduler','','','','2020-02-14 13:24:39','2020-02-14 13:24:39','action complete',0,'1','ActionScheduler','action_log',0,0),
	(29,21,'ActionScheduler','','','','2020-02-14 13:24:39','2020-02-14 13:24:39','action created',0,'1','ActionScheduler','action_log',0,0),
	(30,30,'ActionScheduler','','','','2020-02-14 13:38:34','2020-02-14 13:38:34','action created',0,'1','ActionScheduler','action_log',0,0),
	(31,30,'ActionScheduler','','','','2020-02-14 13:41:29','2020-02-14 13:41:29','action started',0,'1','ActionScheduler','action_log',0,0),
	(32,30,'ActionScheduler','','','','2020-02-14 13:41:29','2020-02-14 13:41:29','action complete',0,'1','ActionScheduler','action_log',0,0),
	(33,21,'ActionScheduler','','','','2020-02-14 14:34:13','2020-02-14 14:34:13','action started',0,'1','ActionScheduler','action_log',0,0),
	(34,21,'ActionScheduler','','','','2020-02-14 14:34:13','2020-02-14 14:34:13','action complete',0,'1','ActionScheduler','action_log',0,0),
	(35,58,'ActionScheduler','','','','2020-02-14 14:34:13','2020-02-14 14:34:13','action created',0,'1','ActionScheduler','action_log',0,0),
	(36,58,'ActionScheduler','','','','2020-02-14 15:34:55','2020-02-14 15:34:55','action started',0,'1','ActionScheduler','action_log',0,0),
	(37,58,'ActionScheduler','','','','2020-02-14 15:34:55','2020-02-14 15:34:55','action complete',0,'1','ActionScheduler','action_log',0,0),
	(38,63,'ActionScheduler','','','','2020-02-14 15:34:55','2020-02-14 15:34:55','action created',0,'1','ActionScheduler','action_log',0,0),
	(39,63,'ActionScheduler','','','','2020-02-14 16:35:33','2020-02-14 16:35:33','action started',0,'1','ActionScheduler','action_log',0,0),
	(40,63,'ActionScheduler','','','','2020-02-14 16:35:33','2020-02-14 16:35:33','action complete',0,'1','ActionScheduler','action_log',0,0),
	(41,206,'ActionScheduler','','','','2020-02-14 16:35:34','2020-02-14 16:35:34','action created',0,'1','ActionScheduler','action_log',0,0),
	(42,206,'ActionScheduler','','','','2020-02-14 17:36:58','2020-02-14 17:36:58','action started',0,'1','ActionScheduler','action_log',0,0),
	(43,206,'ActionScheduler','','','','2020-02-14 17:36:58','2020-02-14 17:36:58','action complete',0,'1','ActionScheduler','action_log',0,0),
	(44,210,'ActionScheduler','','','','2020-02-14 17:36:58','2020-02-14 17:36:58','action created',0,'1','ActionScheduler','action_log',0,0),
	(45,210,'ActionScheduler','','','','2020-02-14 18:38:00','2020-02-14 18:38:00','action started',0,'1','ActionScheduler','action_log',0,0),
	(46,210,'ActionScheduler','','','','2020-02-14 18:38:00','2020-02-14 18:38:00','action complete',0,'1','ActionScheduler','action_log',0,0),
	(47,211,'ActionScheduler','','','','2020-02-14 18:38:01','2020-02-14 18:38:01','action created',0,'1','ActionScheduler','action_log',0,0),
	(48,211,'ActionScheduler','','','','2020-02-15 14:04:29','2020-02-15 14:04:29','action started',0,'1','ActionScheduler','action_log',0,0),
	(49,211,'ActionScheduler','','','','2020-02-15 14:04:29','2020-02-15 14:04:29','action complete',0,'1','ActionScheduler','action_log',0,0),
	(50,212,'ActionScheduler','','','','2020-02-15 14:04:29','2020-02-15 14:04:29','action created',0,'1','ActionScheduler','action_log',0,0),
	(51,212,'ActionScheduler','','','','2020-02-15 15:05:46','2020-02-15 15:05:46','action started',0,'1','ActionScheduler','action_log',0,0),
	(52,212,'ActionScheduler','','','','2020-02-15 15:05:46','2020-02-15 15:05:46','action complete',0,'1','ActionScheduler','action_log',0,0),
	(53,213,'ActionScheduler','','','','2020-02-15 15:05:46','2020-02-15 15:05:46','action created',0,'1','ActionScheduler','action_log',0,0),
	(54,213,'ActionScheduler','','','','2020-02-15 16:14:06','2020-02-15 16:14:06','action started',0,'1','ActionScheduler','action_log',0,0),
	(55,213,'ActionScheduler','','','','2020-02-15 16:14:06','2020-02-15 16:14:06','action complete',0,'1','ActionScheduler','action_log',0,0),
	(56,214,'ActionScheduler','','','','2020-02-15 16:14:06','2020-02-15 16:14:06','action created',0,'1','ActionScheduler','action_log',0,0),
	(57,214,'ActionScheduler','','','','2020-02-16 15:48:16','2020-02-16 15:48:16','action started',0,'1','ActionScheduler','action_log',0,0),
	(58,214,'ActionScheduler','','','','2020-02-16 15:48:16','2020-02-16 15:48:16','action complete',0,'1','ActionScheduler','action_log',0,0),
	(59,215,'ActionScheduler','','','','2020-02-16 15:48:16','2020-02-16 15:48:16','action created',0,'1','ActionScheduler','action_log',0,0),
	(60,215,'ActionScheduler','','','','2020-02-16 16:51:21','2020-02-16 16:51:21','action started',0,'1','ActionScheduler','action_log',0,0),
	(61,215,'ActionScheduler','','','','2020-02-16 16:51:21','2020-02-16 16:51:21','action complete',0,'1','ActionScheduler','action_log',0,0),
	(62,216,'ActionScheduler','','','','2020-02-16 16:51:21','2020-02-16 16:51:21','action created',0,'1','ActionScheduler','action_log',0,0),
	(63,216,'ActionScheduler','','','','2020-02-16 17:51:22','2020-02-16 17:51:22','action started',0,'1','ActionScheduler','action_log',0,0),
	(64,216,'ActionScheduler','','','','2020-02-16 17:51:22','2020-02-16 17:51:22','action complete',0,'1','ActionScheduler','action_log',0,0),
	(65,217,'ActionScheduler','','','','2020-02-16 17:51:22','2020-02-16 17:51:22','action created',0,'1','ActionScheduler','action_log',0,0),
	(66,217,'ActionScheduler','','','','2020-02-16 18:51:50','2020-02-16 18:51:50','action started',0,'1','ActionScheduler','action_log',0,0),
	(67,217,'ActionScheduler','','','','2020-02-16 18:51:50','2020-02-16 18:51:50','action complete',0,'1','ActionScheduler','action_log',0,0),
	(68,218,'ActionScheduler','','','','2020-02-16 18:51:50','2020-02-16 18:51:50','action created',0,'1','ActionScheduler','action_log',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://selling-genius/','yes'),
	(2,'home','http://selling-genius/','yes'),
	(3,'blogname','Selling Genius','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','martina.gabrielli@yahoo.it','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','jS F Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','jS F Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:187:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"custom_type/?$\";s:31:\"index.php?post_type=custom_type\";s:44:\"custom_type/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=custom_type&feed=$matches[1]\";s:39:\"custom_type/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=custom_type&feed=$matches[1]\";s:31:\"custom_type/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=custom_type&paged=$matches[1]\";s:52:\"custom-slug/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_cat=$matches[1]&feed=$matches[2]\";s:47:\"custom-slug/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_cat=$matches[1]&feed=$matches[2]\";s:28:\"custom-slug/([^/]+)/embed/?$\";s:43:\"index.php?custom_cat=$matches[1]&embed=true\";s:40:\"custom-slug/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?custom_cat=$matches[1]&paged=$matches[2]\";s:22:\"custom-slug/([^/]+)/?$\";s:32:\"index.php?custom_cat=$matches[1]\";s:51:\"custom_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_tag=$matches[1]&feed=$matches[2]\";s:46:\"custom_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_tag=$matches[1]&feed=$matches[2]\";s:27:\"custom_tag/([^/]+)/embed/?$\";s:43:\"index.php?custom_tag=$matches[1]&embed=true\";s:39:\"custom_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?custom_tag=$matches[1]&paged=$matches[2]\";s:21:\"custom_tag/([^/]+)/?$\";s:32:\"index.php?custom_tag=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"custom_type/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"custom_type/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"custom_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"custom_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"custom_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"custom_type/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"custom_type/([^/]+)/embed/?$\";s:44:\"index.php?custom_type=$matches[1]&embed=true\";s:32:\"custom_type/([^/]+)/trackback/?$\";s:38:\"index.php?custom_type=$matches[1]&tb=1\";s:52:\"custom_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?custom_type=$matches[1]&feed=$matches[2]\";s:47:\"custom_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?custom_type=$matches[1]&feed=$matches[2]\";s:40:\"custom_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?custom_type=$matches[1]&paged=$matches[2]\";s:47:\"custom_type/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?custom_type=$matches[1]&cpage=$matches[2]\";s:37:\"custom_type/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?custom_type=$matches[1]&wc-api=$matches[3]\";s:43:\"custom_type/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"custom_type/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"custom_type/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?custom_type=$matches[1]&page=$matches[2]\";s:28:\"custom_type/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"custom_type/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"custom_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"custom_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"custom_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"custom_type/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:43:\"which-template-file/which-template-file.php\";i:3;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:4;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:5;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:6;s:45:\"woocommerce-services/woocommerce-services.php\";i:7;s:63:\"woocommerce-shipstation-integration/woocommerce-shipstation.php\";i:8;s:27:\"woocommerce/woocommerce.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','SG','yes'),
	(41,'stylesheet','SG','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','45805','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}','no'),
	(82,'timezone_string','Europe/London','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','208','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'wp_page_for_privacy_policy','','yes'),
	(92,'show_comments_cookies_opt_in','1','yes'),
	(93,'admin_email_lifespan','1597070480','yes'),
	(94,'initial_db_version','45805','yes'),
	(95,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),
	(96,'fresh_site','0','yes'),
	(97,'WPLANG','en_GB','yes'),
	(98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"sidebar1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(104,'cron','a:16:{i:1581880232;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1581880313;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581882081;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581882710;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1581883272;a:2:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581891113;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581897600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581907281;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581950481;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581950504;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581950505;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581951668;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581955913;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581955923;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582992773;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes'),
	(105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(115,'recovery_keys','a:0:{}','yes'),
	(119,'theme_mods_twentytwenty','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581519658;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),
	(126,'_site_transient_timeout_browser_48c6a5b09cf1ed20cb8222ebb8d4437b','1582123305','no'),
	(127,'_site_transient_browser_48c6a5b09cf1ed20cb8222ebb8d4437b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(128,'_site_transient_timeout_php_check_583da61ef3530e40e92d3e732da7ebb3','1582123305','no'),
	(129,'_site_transient_php_check_583da61ef3530e40e92d3e732da7ebb3','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}','no'),
	(137,'can_compress_scripts','1','no'),
	(148,'recently_activated','a:1:{s:24:\"wp-all-import/plugin.php\";i:1581698405;}','yes'),
	(157,'woocommerce_store_address','52B Cephas Street','yes'),
	(158,'woocommerce_store_address_2','','yes'),
	(159,'woocommerce_store_city','London','yes'),
	(160,'woocommerce_default_country','GB:*','yes'),
	(161,'woocommerce_store_postcode','E14AX','yes'),
	(162,'woocommerce_allowed_countries','all','yes'),
	(163,'woocommerce_all_except_countries','','yes'),
	(164,'woocommerce_specific_allowed_countries','','yes'),
	(165,'woocommerce_ship_to_countries','','yes'),
	(166,'woocommerce_specific_ship_to_countries','','yes'),
	(167,'woocommerce_default_customer_address','base','yes'),
	(168,'woocommerce_calc_taxes','yes','yes'),
	(169,'woocommerce_enable_coupons','yes','yes'),
	(170,'woocommerce_calc_discounts_sequentially','no','no'),
	(171,'woocommerce_currency','GBP','yes'),
	(172,'woocommerce_currency_pos','left','yes'),
	(173,'woocommerce_price_thousand_sep',',','yes'),
	(174,'woocommerce_price_decimal_sep','.','yes'),
	(175,'woocommerce_price_num_decimals','2','yes'),
	(176,'woocommerce_shop_page_id','8','yes'),
	(177,'woocommerce_cart_redirect_after_add','no','yes'),
	(178,'woocommerce_enable_ajax_add_to_cart','yes','yes'),
	(179,'woocommerce_placeholder_image','7','yes'),
	(180,'woocommerce_weight_unit','kg','yes'),
	(181,'woocommerce_dimension_unit','cm','yes'),
	(182,'woocommerce_enable_reviews','yes','yes'),
	(183,'woocommerce_review_rating_verification_label','yes','no'),
	(184,'woocommerce_review_rating_verification_required','no','no'),
	(185,'woocommerce_enable_review_rating','yes','yes'),
	(186,'woocommerce_review_rating_required','yes','no'),
	(187,'woocommerce_manage_stock','yes','yes'),
	(188,'woocommerce_hold_stock_minutes','60','no'),
	(189,'woocommerce_notify_low_stock','yes','no'),
	(190,'woocommerce_notify_no_stock','yes','no'),
	(191,'woocommerce_stock_email_recipient','martina.gabrielli@yahoo.it','no'),
	(192,'woocommerce_notify_low_stock_amount','2','no'),
	(193,'woocommerce_notify_no_stock_amount','0','yes'),
	(194,'woocommerce_hide_out_of_stock_items','no','yes'),
	(195,'woocommerce_stock_format','','yes'),
	(196,'woocommerce_file_download_method','force','no'),
	(197,'woocommerce_downloads_require_login','no','no'),
	(198,'woocommerce_downloads_grant_access_after_payment','yes','no'),
	(199,'woocommerce_prices_include_tax','no','yes'),
	(200,'woocommerce_tax_based_on','shipping','yes'),
	(201,'woocommerce_shipping_tax_class','inherit','yes'),
	(202,'woocommerce_tax_round_at_subtotal','no','yes'),
	(203,'woocommerce_tax_classes','','yes'),
	(204,'woocommerce_tax_display_shop','excl','yes'),
	(205,'woocommerce_tax_display_cart','excl','yes'),
	(206,'woocommerce_price_display_suffix','','yes'),
	(207,'woocommerce_tax_total_display','itemized','no'),
	(208,'woocommerce_enable_shipping_calc','yes','no'),
	(209,'woocommerce_shipping_cost_requires_address','no','yes'),
	(210,'woocommerce_ship_to_destination','billing','no'),
	(211,'woocommerce_shipping_debug_mode','no','yes'),
	(212,'woocommerce_enable_guest_checkout','yes','no'),
	(213,'woocommerce_enable_checkout_login_reminder','yes','no'),
	(214,'woocommerce_enable_signup_and_login_from_checkout','yes','no'),
	(215,'woocommerce_enable_myaccount_registration','yes','no'),
	(216,'woocommerce_registration_generate_username','no','no'),
	(217,'woocommerce_registration_generate_password','no','no'),
	(218,'woocommerce_erasure_request_removes_order_data','no','no'),
	(219,'woocommerce_erasure_request_removes_download_data','no','no'),
	(220,'woocommerce_allow_bulk_remove_personal_data','no','no'),
	(221,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes'),
	(222,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes'),
	(223,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
	(224,'woocommerce_trash_pending_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no'),
	(225,'woocommerce_trash_failed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no'),
	(226,'woocommerce_trash_cancelled_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no'),
	(227,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
	(228,'woocommerce_email_from_name','My Selling Website','no'),
	(229,'woocommerce_email_from_address','martina.gabrielli@yahoo.it','no'),
	(230,'woocommerce_email_header_image','','no'),
	(231,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no'),
	(232,'woocommerce_email_base_color','#96588a','no'),
	(233,'woocommerce_email_background_color','#f7f7f7','no'),
	(234,'woocommerce_email_body_background_color','#ffffff','no'),
	(235,'woocommerce_email_text_color','#3c3c3c','no'),
	(236,'woocommerce_cart_page_id','9','no'),
	(237,'woocommerce_checkout_page_id','10','no'),
	(238,'woocommerce_myaccount_page_id','11','no'),
	(239,'woocommerce_terms_page_id','','no'),
	(240,'woocommerce_force_ssl_checkout','no','yes'),
	(241,'woocommerce_unforce_ssl_checkout','no','yes'),
	(242,'woocommerce_checkout_pay_endpoint','order-pay','yes'),
	(243,'woocommerce_checkout_order_received_endpoint','order-received','yes'),
	(244,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),
	(245,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),
	(246,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),
	(247,'woocommerce_myaccount_orders_endpoint','orders','yes'),
	(248,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),
	(249,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),
	(250,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),
	(251,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),
	(252,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),
	(253,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),
	(254,'woocommerce_logout_endpoint','customer-logout','yes'),
	(255,'woocommerce_api_enabled','no','yes'),
	(256,'woocommerce_allow_tracking','no','no'),
	(257,'woocommerce_show_marketplace_suggestions','yes','no'),
	(258,'woocommerce_single_image_width','600','yes'),
	(259,'woocommerce_thumbnail_image_width','300','yes'),
	(260,'woocommerce_checkout_highlight_required_fields','yes','yes'),
	(261,'woocommerce_demo_store','no','no'),
	(262,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),
	(263,'current_theme_supports_woocommerce','no','yes'),
	(264,'woocommerce_queue_flush_rewrite_rules','no','yes'),
	(267,'default_product_cat','15','yes'),
	(272,'woocommerce_admin_notices','a:1:{i:0;s:20:\"no_secure_connection\";}','yes'),
	(273,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"HgNGhbVd1ZEiJXH8K9NyypS89hKL3Jwj\";}','yes'),
	(274,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),
	(275,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(276,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(277,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(278,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(279,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(280,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(281,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(282,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(283,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(284,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(285,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(286,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(291,'woocommerce_meta_box_errors','a:0:{}','yes'),
	(294,'woocommerce_setup_ab_wc_admin_onboarding','a','yes'),
	(296,'woocommerce_product_type','both','yes'),
	(298,'woocommerce_stripe_settings','a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}','yes'),
	(300,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','yes'),
	(301,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(302,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(303,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(304,'wc_ppec_version','1.6.19','yes'),
	(311,'wc_stripe_show_style_notice','no','yes'),
	(312,'wc_stripe_show_sca_notice','no','yes'),
	(313,'wc_stripe_version','4.3.1','yes'),
	(315,'_transient_shipping-transient-version','1581519569','yes'),
	(316,'woocommerce_flat_rate_1_settings','a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}','yes'),
	(317,'woocommerce_shipstation_auth_key','WCSS-af4c129c4ff90fa31b7236e05237f02f','yes'),
	(320,'woocommerce_setup_automated_taxes','1','yes'),
	(325,'current_theme','SG','yes'),
	(326,'theme_mods_storefront','a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:26;s:12:\"header_image\";s:70:\"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:29;s:3:\"url\";s:70:\"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\";s:13:\"thumbnail_url\";s:70:\"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\";s:6:\"height\";i:322;s:5:\"width\";i:750;}s:28:\"storefront_header_text_color\";s:7:\"#8e8e8e\";s:34:\"storefront_footer_background_color\";s:7:\"#828282\";s:28:\"storefront_footer_text_color\";s:7:\"#232323\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581694277;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}','yes'),
	(327,'theme_switched','','yes'),
	(328,'jetpack_activated','1','yes'),
	(331,'jetpack_activation_source','a:2:{i:0;s:7:\"unknown\";i:1;N;}','yes'),
	(332,'jetpack_options','a:4:{s:7:\"version\";s:14:\"8.2:1581519663\";s:11:\"old_version\";s:14:\"8.2:1581519663\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}','yes'),
	(333,'jetpack_sync_settings_disable','0','yes'),
	(336,'woocommerce_onboarding_opt_in','no','yes'),
	(338,'jetpack_testimonial','0','yes'),
	(339,'woocommerce_catalog_rows','4','yes'),
	(340,'woocommerce_catalog_columns','3','yes'),
	(341,'woocommerce_maybe_regenerate_images_hash','991b1ca641921cf0f5baf7a2fe85861b','yes'),
	(343,'storefront_nux_fresh_site','0','yes'),
	(346,'woocommerce_admin_version','0.25.1','yes'),
	(347,'woocommerce_admin_install_timestamp','1581519674','yes'),
	(348,'do_activate','0','yes'),
	(353,'_transient_product_query-transient-version','1581879110','yes'),
	(358,'woocommerce_onboarding_profile','a:1:{s:9:\"completed\";b:1;}','yes'),
	(359,'woocommerce_admin_last_orders_milestone','0','yes'),
	(370,'jetpack_tos_agreed','1','yes'),
	(371,'jetpack_secrets','a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"9gOSBTVtVEkDgUZUg5CLzE4ouUQPfl4d\";s:8:\"secret_2\";s:32:\"uV3Dk1pVvMLpnr25YRePulj30rYSPLqf\";s:3:\"exp\";i:1581520277;}}','no'),
	(372,'_transient_jetpack_assumed_site_creation_date','2020-02-12 14:41:21','yes'),
	(373,'wc_connect_options','a:1:{s:12:\"tos_accepted\";b:1;}','yes'),
	(375,'woocommerce_setup_jetpack_opted_in','1','yes'),
	(404,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581868097;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no'),
	(413,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581868098;s:7:\"checked\";a:2:{s:2:\"SG\";s:3:\"1.7\";s:10:\"storefront\";s:5:\"2.5.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(431,'storefront_nux_guided_tour','1','yes'),
	(444,'category_children','a:0:{}','yes'),
	(457,'wc_stripe_show_ssl_notice','no','yes'),
	(458,'wc_stripe_show_keys_notice','no','yes'),
	(459,'wc_gateway_ppec_bootstrap_warning_message_dismissed','yes','yes'),
	(460,'storefront_nux_dismissed','1','yes'),
	(462,'_transient_timeout_jetpack_file_data_8.2','1584193083','no'),
	(463,'_transient_jetpack_file_data_8.2','a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}','no'),
	(464,'jetpack_available_modules','a:1:{s:3:\"8.2\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}','yes'),
	(465,'_transient_woocommerce_reports-transient-version','1581687465','yes'),
	(466,'_transient_timeout_wc_report_orders_stats_eaafd0af33b4fe5870c4c0728ae4dbb2','1582292265','no'),
	(467,'_transient_wc_report_orders_stats_eaafd0af33b4fe5870c4c0728ae4dbb2','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 13:37:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 13:37:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(468,'_transient_timeout_wc_report_orders_stats_0fc427886912674d1d5858a7bd9cfaa6','1582292265','no'),
	(469,'_transient_wc_report_orders_stats_0fc427886912674d1d5858a7bd9cfaa6','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 13:37:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 13:37:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(470,'_transient_timeout_wc_report_orders_stats_b08835f8c6b35b2b565a918ad2b49854','1582292267','no'),
	(471,'_transient_wc_report_orders_stats_b08835f8c6b35b2b565a918ad2b49854','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-02-02\";s:10:\"date_start\";s:19:\"2020-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-02-03\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-02-04\";s:10:\"date_start\";s:19:\"2020-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-02-05\";s:10:\"date_start\";s:19:\"2020-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-02-06\";s:10:\"date_start\";s:19:\"2020-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-02-07\";s:10:\"date_start\";s:19:\"2020-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-02-08\";s:10:\"date_start\";s:19:\"2020-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-02-09\";s:10:\"date_start\";s:19:\"2020-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-02-10\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-02-11\";s:10:\"date_start\";s:19:\"2020-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-02-12\";s:10:\"date_start\";s:19:\"2020-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-02-13\";s:10:\"date_start\";s:19:\"2020-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-02-14\";s:10:\"date_start\";s:19:\"2020-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(472,'_transient_timeout_wc_report_orders_stats_62692d6aae85da2fbba7e5ba61967627','1582292267','no'),
	(473,'_transient_wc_report_orders_stats_62692d6aae85da2fbba7e5ba61967627','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-02-02\";s:10:\"date_start\";s:19:\"2020-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-02-03\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-02-04\";s:10:\"date_start\";s:19:\"2020-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-02-05\";s:10:\"date_start\";s:19:\"2020-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-02-06\";s:10:\"date_start\";s:19:\"2020-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-02-07\";s:10:\"date_start\";s:19:\"2020-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-02-08\";s:10:\"date_start\";s:19:\"2020-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-02-09\";s:10:\"date_start\";s:19:\"2020-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-02-10\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-02-11\";s:10:\"date_start\";s:19:\"2020-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-02-12\";s:10:\"date_start\";s:19:\"2020-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-02-13\";s:10:\"date_start\";s:19:\"2020-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-02-14\";s:10:\"date_start\";s:19:\"2020-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(474,'_transient_timeout_wc_report_orders_stats_9a67f82ae317b5b6b602b7714cac1dec','1582292267','no'),
	(475,'_transient_wc_report_orders_stats_9a67f82ae317b5b6b602b7714cac1dec','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-02-02\";s:10:\"date_start\";s:19:\"2019-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-02-03\";s:10:\"date_start\";s:19:\"2019-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-02-04\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-02-05\";s:10:\"date_start\";s:19:\"2019-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-02-06\";s:10:\"date_start\";s:19:\"2019-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-02-07\";s:10:\"date_start\";s:19:\"2019-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-02-08\";s:10:\"date_start\";s:19:\"2019-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-02-09\";s:10:\"date_start\";s:19:\"2019-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-02-10\";s:10:\"date_start\";s:19:\"2019-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-02-11\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-02-12\";s:10:\"date_start\";s:19:\"2019-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-02-13\";s:10:\"date_start\";s:19:\"2019-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-02-14\";s:10:\"date_start\";s:19:\"2019-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(476,'_transient_timeout_wc_report_orders_stats_808ccef2781613d5c51a7e87ae95fced','1582292267','no'),
	(477,'_transient_wc_report_orders_stats_808ccef2781613d5c51a7e87ae95fced','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-07\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-06\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-05\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(478,'_transient_timeout_wc_report_orders_stats_64f768e4f85959559e220c84f5520dca','1582292267','no'),
	(479,'_transient_wc_report_orders_stats_64f768e4f85959559e220c84f5520dca','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-02-02\";s:10:\"date_start\";s:19:\"2019-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-02-03\";s:10:\"date_start\";s:19:\"2019-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-02-04\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-02-05\";s:10:\"date_start\";s:19:\"2019-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-02-06\";s:10:\"date_start\";s:19:\"2019-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-02-07\";s:10:\"date_start\";s:19:\"2019-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-02-08\";s:10:\"date_start\";s:19:\"2019-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-02-09\";s:10:\"date_start\";s:19:\"2019-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-02-10\";s:10:\"date_start\";s:19:\"2019-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-02-11\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-02-12\";s:10:\"date_start\";s:19:\"2019-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-02-13\";s:10:\"date_start\";s:19:\"2019-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-02-14\";s:10:\"date_start\";s:19:\"2019-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(480,'_transient_timeout_wc_report_orders_stats_58b2d5379a8b821d2ee5319f5af7a442','1582292267','no'),
	(481,'_transient_wc_report_orders_stats_58b2d5379a8b821d2ee5319f5af7a442','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-07\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-06\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-05\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(482,'_transient_timeout_wc_report_coupons_stats_1fd2f761cf99bf01c99d7c5d72d21060','1582292269','no'),
	(483,'_transient_wc_report_coupons_stats_1fd2f761cf99bf01c99d7c5d72d21060','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-02-02\";s:10:\"date_start\";s:19:\"2020-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-02-03\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-02-04\";s:10:\"date_start\";s:19:\"2020-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-02-05\";s:10:\"date_start\";s:19:\"2020-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-02-06\";s:10:\"date_start\";s:19:\"2020-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-02-07\";s:10:\"date_start\";s:19:\"2020-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-02-08\";s:10:\"date_start\";s:19:\"2020-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-02-09\";s:10:\"date_start\";s:19:\"2020-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-02-10\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-02-11\";s:10:\"date_start\";s:19:\"2020-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-02-12\";s:10:\"date_start\";s:19:\"2020-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-02-13\";s:10:\"date_start\";s:19:\"2020-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-02-14\";s:10:\"date_start\";s:19:\"2020-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(484,'_transient_timeout_wc_report_taxes_stats_8e7345c68fee11e1c58e4f0ce3d49e7b','1582292269','no'),
	(485,'_transient_wc_report_taxes_stats_8e7345c68fee11e1c58e4f0ce3d49e7b','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-02-02\";s:10:\"date_start\";s:19:\"2020-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-02-03\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-02-04\";s:10:\"date_start\";s:19:\"2020-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-02-05\";s:10:\"date_start\";s:19:\"2020-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-02-06\";s:10:\"date_start\";s:19:\"2020-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-02-07\";s:10:\"date_start\";s:19:\"2020-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-02-08\";s:10:\"date_start\";s:19:\"2020-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-02-09\";s:10:\"date_start\";s:19:\"2020-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-02-10\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-02-11\";s:10:\"date_start\";s:19:\"2020-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-02-12\";s:10:\"date_start\";s:19:\"2020-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-02-13\";s:10:\"date_start\";s:19:\"2020-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-02-14\";s:10:\"date_start\";s:19:\"2020-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(486,'_transient_timeout_wc_report_coupons_stats_917e37edf0a0d3c2718debedf8960ded','1582292269','no'),
	(487,'_transient_wc_report_coupons_stats_917e37edf0a0d3c2718debedf8960ded','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-02-02\";s:10:\"date_start\";s:19:\"2019-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-02-03\";s:10:\"date_start\";s:19:\"2019-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-02-04\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-02-05\";s:10:\"date_start\";s:19:\"2019-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-02-06\";s:10:\"date_start\";s:19:\"2019-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-02-07\";s:10:\"date_start\";s:19:\"2019-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-02-08\";s:10:\"date_start\";s:19:\"2019-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-02-09\";s:10:\"date_start\";s:19:\"2019-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-02-10\";s:10:\"date_start\";s:19:\"2019-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-02-11\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-02-12\";s:10:\"date_start\";s:19:\"2019-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-02-13\";s:10:\"date_start\";s:19:\"2019-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-02-14\";s:10:\"date_start\";s:19:\"2019-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(488,'_transient_timeout_wc_report_taxes_stats_fdd558d85b767fc8ff202413f0621dd7','1582292269','no'),
	(489,'_transient_wc_report_taxes_stats_fdd558d85b767fc8ff202413f0621dd7','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-02-02\";s:10:\"date_start\";s:19:\"2019-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-02-03\";s:10:\"date_start\";s:19:\"2019-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-02-04\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-02-05\";s:10:\"date_start\";s:19:\"2019-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-02-06\";s:10:\"date_start\";s:19:\"2019-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-02-07\";s:10:\"date_start\";s:19:\"2019-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-02-08\";s:10:\"date_start\";s:19:\"2019-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-02-09\";s:10:\"date_start\";s:19:\"2019-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-02-10\";s:10:\"date_start\";s:19:\"2019-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-02-11\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-02-12\";s:10:\"date_start\";s:19:\"2019-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-02-13\";s:10:\"date_start\";s:19:\"2019-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-02-14\";s:10:\"date_start\";s:19:\"2019-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(490,'_transient_timeout_wc_report_downloads_stats_ffaf7459cae17dba5eb19b01b115f874','1582292269','no'),
	(491,'_transient_wc_report_downloads_stats_ffaf7459cae17dba5eb19b01b115f874','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-02-02\";s:10:\"date_start\";s:19:\"2020-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-02-03\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-02-04\";s:10:\"date_start\";s:19:\"2020-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-02-05\";s:10:\"date_start\";s:19:\"2020-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-02-06\";s:10:\"date_start\";s:19:\"2020-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-02-07\";s:10:\"date_start\";s:19:\"2020-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-02-08\";s:10:\"date_start\";s:19:\"2020-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-02-09\";s:10:\"date_start\";s:19:\"2020-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-02-10\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-02-11\";s:10:\"date_start\";s:19:\"2020-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-02-12\";s:10:\"date_start\";s:19:\"2020-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-02-13\";s:10:\"date_start\";s:19:\"2020-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-02-14\";s:10:\"date_start\";s:19:\"2020-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(492,'_transient_timeout_wc_report_downloads_stats_2d598f7586e9ab5043026ddd3169b6a6','1582292270','no'),
	(493,'_transient_wc_report_downloads_stats_2d598f7586e9ab5043026ddd3169b6a6','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-02-02\";s:10:\"date_start\";s:19:\"2019-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-02-03\";s:10:\"date_start\";s:19:\"2019-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-02-04\";s:10:\"date_start\";s:19:\"2019-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-02-05\";s:10:\"date_start\";s:19:\"2019-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-02-06\";s:10:\"date_start\";s:19:\"2019-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-02-07\";s:10:\"date_start\";s:19:\"2019-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-02-08\";s:10:\"date_start\";s:19:\"2019-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-02-09\";s:10:\"date_start\";s:19:\"2019-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-02-10\";s:10:\"date_start\";s:19:\"2019-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-02-11\";s:10:\"date_start\";s:19:\"2019-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-02-12\";s:10:\"date_start\";s:19:\"2019-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-02-13\";s:10:\"date_start\";s:19:\"2019-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-02-14\";s:10:\"date_start\";s:19:\"2019-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(494,'sharing-options','a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}','yes'),
	(495,'stats_options','a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}','yes'),
	(502,'woocommerce_marketplace_suggestions','a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1581687689;}','no'),
	(511,'_transient_product-transient-version','1581698107','yes'),
	(517,'product_cat_children','a:1:{i:17;a:3:{i:0;i:18;i:1;i:19;i:2;i:20;}}','yes'),
	(534,'_site_transient_timeout_browser_beca9a3857bd70707710b37da45a6b68','1582295726','no'),
	(535,'_site_transient_browser_beca9a3857bd70707710b37da45a6b68','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:11:\"80.0.3951.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(543,'theme_mods_selling-genius','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581692759;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"sidebar1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(592,'theme_mods_SG','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:8:\"main-nav\";i:23;s:12:\"footer-links\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581694207;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"sidebar1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(598,'new_admin_email','martina.gabrielli@yahoo.it','yes'),
	(611,'jetpack_ab_connect_banner_green_bar','b','yes'),
	(718,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(752,'_transient_timeout_wc_product_children_69','1584288156','no'),
	(753,'_transient_wc_product_children_69','a:2:{s:3:\"all\";a:2:{i:0;i:71;i:1;i:70;}s:7:\"visible\";a:2:{i:0;i:71;i:1;i:70;}}','no'),
	(754,'_transient_timeout_wc_var_prices_69','1584290115','no'),
	(755,'_transient_wc_var_prices_69','{\"version\":\"1581698107\",\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"71\":\"10.00\",\"70\":\"10.00\"},\"regular_price\":{\"71\":\"12.00\",\"70\":\"12.00\"},\"sale_price\":{\"71\":\"10.00\",\"70\":\"10.00\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"71\":\"10.00\",\"70\":\"10.00\"},\"regular_price\":{\"71\":\"12.00\",\"70\":\"12.00\"},\"sale_price\":{\"71\":\"10.00\",\"70\":\"10.00\"}}}','no'),
	(768,'PMXI_Plugin_Options','a:27:{s:18:\"history_file_count\";i:10000;s:16:\"history_file_age\";i:365;s:15:\"highlight_limit\";i:10000;s:19:\"upload_max_filesize\";i:2048;s:13:\"post_max_size\";i:2048;s:14:\"max_input_time\";i:-1;s:18:\"max_execution_time\";i:-1;s:7:\"dismiss\";i:0;s:16:\"dismiss_speed_up\";i:0;s:18:\"dismiss_manage_top\";i:0;s:21:\"dismiss_manage_bottom\";i:0;s:13:\"html_entities\";i:0;s:11:\"utf8_decode\";i:0;s:12:\"cron_job_key\";s:8:\"YKBllATI\";s:10:\"chunk_size\";i:32;s:9:\"pingbacks\";i:1;s:33:\"legacy_special_character_handling\";i:1;s:14:\"case_sensitive\";i:1;s:12:\"session_mode\";s:7:\"default\";s:17:\"enable_ftp_import\";i:0;s:16:\"large_feed_limit\";i:1000;s:26:\"cron_processing_time_limit\";i:120;s:6:\"secure\";i:1;s:11:\"log_storage\";i:5;s:10:\"cron_sleep\";s:0:\"\";s:4:\"port\";s:0:\"\";s:19:\"force_stream_reader\";i:0;}','yes'),
	(769,'pmxi_is_migrated','3.5.2','yes'),
	(774,'acf_version','5.8.3','yes'),
	(778,'woocommerce_gateway_stripe_retention','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','no'),
	(779,'woocommerce_version','3.9.2','yes'),
	(780,'woocommerce_db_version','3.9.2','yes'),
	(781,'woocommerce_task_list_hidden','yes','yes'),
	(783,'_transient_wc_attribute_taxonomies','a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}','yes'),
	(803,'_transient_timeout_wc_product_children_160','1584290115','no'),
	(804,'_transient_wc_product_children_160','a:2:{s:3:\"all\";a:4:{i:0;i:183;i:1;i:176;i:2;i:177;i:3;i:178;}s:7:\"visible\";a:4:{i:0;i:183;i:1;i:176;i:2;i:177;i:3;i:178;}}','no'),
	(805,'_transient_timeout_wc_var_prices_160','1584290269','no'),
	(806,'_transient_wc_var_prices_160','{\"version\":\"1581698107\",\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"183\":\"45.00\",\"176\":\"42.00\",\"177\":\"45.00\",\"178\":\"45.00\"},\"regular_price\":{\"183\":\"45.00\",\"176\":\"45.00\",\"177\":\"45.00\",\"178\":\"45.00\"},\"sale_price\":{\"183\":\"45.00\",\"176\":\"42.00\",\"177\":\"45.00\",\"178\":\"45.00\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"183\":\"45.00\",\"176\":\"42.00\",\"177\":\"45.00\",\"178\":\"45.00\"},\"regular_price\":{\"183\":\"45.00\",\"176\":\"45.00\",\"177\":\"45.00\",\"178\":\"45.00\"},\"sale_price\":{\"183\":\"45.00\",\"176\":\"42.00\",\"177\":\"45.00\",\"178\":\"45.00\"}}}','no'),
	(807,'_transient_timeout_wc_product_children_159','1584290115','no'),
	(808,'_transient_wc_product_children_159','a:2:{s:3:\"all\";a:3:{i:0;i:173;i:1;i:174;i:2;i:175;}s:7:\"visible\";a:3:{i:0;i:173;i:1;i:174;i:2;i:175;}}','no'),
	(809,'_transient_timeout_wc_var_prices_159','1584290115','no'),
	(810,'_transient_wc_var_prices_159','{\"version\":\"1581698107\",\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"173\":\"20.00\",\"174\":\"20.00\",\"175\":\"15.00\"},\"regular_price\":{\"173\":\"20.00\",\"174\":\"20.00\",\"175\":\"15.00\"},\"sale_price\":{\"173\":\"20.00\",\"174\":\"20.00\",\"175\":\"15.00\"}}}','no'),
	(815,'_transient_timeout_wc_term_counts','1584290269','no'),
	(816,'_transient_wc_term_counts','a:1:{i:18;s:1:\"5\";}','no'),
	(835,'_transient_timeout_wc_shipping_method_count_legacy','1584291620','no'),
	(836,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1581519569\";s:5:\"value\";i:1;}','no'),
	(867,'_transient_timeout_wc_report_orders_stats_ff3116bee7ed4c7884d4994e784a19c9','1582307068','no'),
	(868,'_transient_wc_report_orders_stats_ff3116bee7ed4c7884d4994e784a19c9','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 17:44:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 17:44:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(869,'_transient_timeout_wc_report_orders_stats_9601f7faf3276aff2905744d037bf099','1582307068','no'),
	(870,'_transient_wc_report_orders_stats_9601f7faf3276aff2905744d037bf099','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 17:44:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 17:44:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(877,'_transient_timeout_wc_low_stock_count','1584294559','no'),
	(878,'_transient_wc_low_stock_count','0','no'),
	(879,'_transient_timeout_wc_outofstock_count','1584294559','no'),
	(880,'_transient_wc_outofstock_count','0','no'),
	(881,'_transient_timeout_wc_report_orders_stats_91934617a162fcffe6cce1a12f3ab13c','1582307370','no'),
	(882,'_transient_wc_report_orders_stats_91934617a162fcffe6cce1a12f3ab13c','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 17:49:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 17:49:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(883,'_transient_timeout_wc_report_orders_stats_8752ee3296b51f9107f9c65adee2695f','1582307370','no'),
	(884,'_transient_wc_report_orders_stats_8752ee3296b51f9107f9c65adee2695f','a:2:{s:7:\"version\";s:10:\"1581687465\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-07\";s:10:\"date_start\";s:19:\"2020-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-14 17:49:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-14 17:49:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-06\";s:10:\"date_start\";s:19:\"2020-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(1040,'_transient_timeout__woocommerce_helper_subscriptions','1581868997','no'),
	(1041,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),
	(1042,'_site_transient_timeout_theme_roots','1581869897','no'),
	(1043,'_site_transient_theme_roots','a:2:{s:2:\"SG\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";}','no'),
	(1044,'_transient_timeout__woocommerce_helper_updates','1581911297','no'),
	(1045,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1581868097;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),
	(1046,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1581868099;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:19:\"jetpack/jetpack.php\";s:3:\"8.2\";s:43:\"which-template-file/which-template-file.php\";s:5:\"4.4.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.2\";s:63:\"woocommerce-shipstation-integration/woocommerce-shipstation.php\";s:6:\"4.1.32\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:6:\"0.25.1\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:6:\"1.6.19\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.22.3\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.3.1\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.0\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"8.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.8.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"which-template-file/which-template-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/which-template-file\";s:4:\"slug\";s:19:\"which-template-file\";s:6:\"plugin\";s:43:\"which-template-file/which-template-file.php\";s:11:\"new_version\";s:5:\"4.4.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/which-template-file/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/which-template-file.4.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/which-template-file/assets/icon-256x256.png?rev=1360728\";s:2:\"1x\";s:72:\"https://ps.w.org/which-template-file/assets/icon-128x128.png?rev=1360728\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/which-template-file/assets/banner-772x250.jpg?rev=1360735\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"woocommerce-shipstation-integration/woocommerce-shipstation.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/woocommerce-shipstation-integration\";s:4:\"slug\";s:35:\"woocommerce-shipstation-integration\";s:6:\"plugin\";s:63:\"woocommerce-shipstation-integration/woocommerce-shipstation.php\";s:11:\"new_version\";s:6:\"4.1.32\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/woocommerce-shipstation-integration/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/woocommerce-shipstation-integration.4.1.32.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/woocommerce-shipstation-integration/assets/icon-256x256.png?rev=1944808\";s:2:\"1x\";s:88:\"https://ps.w.org/woocommerce-shipstation-integration/assets/icon-128x128.png?rev=1944808\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/woocommerce-shipstation-integration/assets/banner-1544x500.png?rev=1944808\";s:2:\"1x\";s:90:\"https://ps.w.org/woocommerce-shipstation-integration/assets/banner-772x250.png?rev=1944808\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.25.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:6:\"1.6.19\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.19.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.22.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.3.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),
	(1061,'_transient_timeout_jetpack_idc_allowed','1581873254','no'),
	(1062,'_transient_jetpack_idc_allowed','1','no'),
	(1063,'_transient_timeout_wc_admin_unsnooze_admin_notes_checked','1581873254','no'),
	(1064,'_transient_wc_admin_unsnooze_admin_notes_checked','yes','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_pmxi_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_files`;

CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `path` text COLLATE utf8mb4_unicode_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_pmxi_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_history`;

CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `type` enum('manual','processing','trigger','continue','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_pmxi_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_images`;

CREATE TABLE `wp_pmxi_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned NOT NULL,
  `image_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_filename` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_pmxi_images` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_images` DISABLE KEYS */;

INSERT INTO `wp_pmxi_images` (`id`, `attachment_id`, `image_url`, `image_filename`)
VALUES
	(1,184,'','vneck-tee-2.jpg'),
	(2,185,'','vnech-tee-green-1.jpg'),
	(3,186,'','vnech-tee-blue-1.jpg'),
	(4,187,'','hoodie-2.jpg'),
	(5,188,'','hoodie-blue-1.jpg'),
	(6,189,'','hoodie-green-1.jpg'),
	(7,190,'','hoodie-with-logo-2.jpg'),
	(8,191,'','tshirt-2.jpg'),
	(9,192,'','beanie-2.jpg'),
	(10,193,'','belt-2.jpg'),
	(11,194,'','cap-2.jpg'),
	(12,195,'','sunglasses-2.jpg'),
	(13,196,'','hoodie-with-pocket-2.jpg'),
	(14,197,'','hoodie-with-zipper-2.jpg'),
	(15,198,'','long-sleeve-tee-2.jpg'),
	(16,199,'','polo-2.jpg'),
	(17,200,'','album-1.jpg'),
	(18,201,'','single-1.jpg'),
	(19,202,'','t-shirt-with-logo-1.jpg'),
	(20,203,'','beanie-with-logo-1.jpg'),
	(21,204,'','logo-1.jpg'),
	(22,205,'','pennant-1.jpg');

/*!40000 ALTER TABLE `wp_pmxi_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_pmxi_imports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_imports`;

CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_import_id` bigint(20) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci,
  `xpath` text COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `executing` tinyint(1) NOT NULL DEFAULT '0',
  `triggered` tinyint(1) NOT NULL DEFAULT '0',
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT '0',
  `first_import` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `imported` bigint(20) NOT NULL DEFAULT '0',
  `created` bigint(20) NOT NULL DEFAULT '0',
  `updated` bigint(20) NOT NULL DEFAULT '0',
  `skipped` bigint(20) NOT NULL DEFAULT '0',
  `deleted` bigint(20) NOT NULL DEFAULT '0',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT '0',
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_pmxi_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_posts`;

CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `import_id` bigint(20) unsigned NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_ci,
  `product_key` text COLLATE utf8mb4_unicode_ci,
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  `specified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_pmxi_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_pmxi_templates`;

CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT '0',
  `is_leave_html` tinyint(1) NOT NULL DEFAULT '0',
  `fix_characters` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default'),
	(3,7,'_wp_attached_file','woocommerce-placeholder.png'),
	(4,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(5,12,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(6,13,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(7,14,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(8,15,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(9,16,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(10,17,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(11,18,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(12,19,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581519674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(13,20,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581523275;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(14,21,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581690279;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(15,22,'_wp_attached_file','2020/02/sellingabusiness.png'),
	(16,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:575;s:6:\"height\";i:350;s:4:\"file\";s:28:\"2020/02/sellingabusiness.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"sellingabusiness-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-416x253.png\";s:5:\"width\";i:416;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"sellingabusiness-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-416x253.png\";s:5:\"width\";i:416;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"sellingabusiness-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(17,23,'_wp_attached_file','2020/02/cropped-sellingabusiness.png'),
	(18,23,'_wp_attachment_context','custom-logo'),
	(19,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:575;s:6:\"height\";i:229;s:4:\"file\";s:36:\"2020/02/cropped-sellingabusiness.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-sellingabusiness-300x229.png\";s:5:\"width\";i:300;s:6:\"height\";i:229;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-416x166.png\";s:5:\"width\";i:416;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"cropped-sellingabusiness-300x229.png\";s:5:\"width\";i:300;s:6:\"height\";i:229;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-416x166.png\";s:5:\"width\";i:416;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-sellingabusiness-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(20,24,'_edit_lock','1581686829:1'),
	(21,24,'_wp_trash_meta_status','publish'),
	(22,24,'_wp_trash_meta_time','1581686833'),
	(23,25,'_wp_attached_file','2020/02/selling.png'),
	(24,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/02/selling.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"selling-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"selling-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"selling-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"selling-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"selling-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"selling-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"selling-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"selling-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(25,26,'_wp_attached_file','2020/02/cropped-selling.png'),
	(26,26,'_wp_attachment_context','custom-logo'),
	(27,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:263;s:6:\"height\";i:140;s:4:\"file\";s:27:\"2020/02/cropped-selling.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-selling-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-selling-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-selling-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(28,27,'_edit_lock','1581687273:1'),
	(29,28,'_wp_attached_file','2020/02/pricetags.jpg'),
	(30,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:750;s:6:\"height\";i:460;s:4:\"file\";s:21:\"2020/02/pricetags.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pricetags-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pricetags-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pricetags-600x368.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pricetags-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pricetags-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"pricetags-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pricetags-600x368.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pricetags-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(31,29,'_wp_attached_file','2020/02/cropped-pricetags.jpg'),
	(32,29,'_wp_attachment_context','custom-header'),
	(33,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:750;s:6:\"height\";i:322;s:4:\"file\";s:29:\"2020/02/cropped-pricetags.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"cropped-pricetags-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-600x258.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"cropped-pricetags-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-600x258.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-pricetags-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(34,29,'_wp_attachment_custom_header_last_used_storefront','1581687298'),
	(35,29,'_wp_attachment_is_custom_header','storefront'),
	(36,27,'_wp_trash_meta_status','publish'),
	(37,27,'_wp_trash_meta_time','1581687298'),
	(38,8,'_edit_lock','1581687350:1'),
	(39,9,'_edit_lock','1581687368:1'),
	(40,30,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1581687514;}'),
	(470,58,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581694453;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(471,59,'_edit_lock','1581694192:1'),
	(472,2,'_edit_lock','1581694262:1'),
	(473,2,'_wp_trash_meta_status','publish'),
	(474,2,'_wp_trash_meta_time','1581694404'),
	(475,2,'_wp_desired_post_slug','sample-page'),
	(476,3,'_edit_lock','1581694278:1'),
	(477,3,'_wp_trash_meta_status','draft'),
	(478,3,'_wp_trash_meta_time','1581694421'),
	(479,3,'_wp_desired_post_slug','privacy-policy'),
	(480,63,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581698095;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(481,64,'_menu_item_type','post_type'),
	(482,64,'_menu_item_menu_item_parent','0'),
	(483,64,'_menu_item_object_id','59'),
	(484,64,'_menu_item_object','page'),
	(485,64,'_menu_item_target',''),
	(486,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(487,64,'_menu_item_xfn',''),
	(488,64,'_menu_item_url',''),
	(490,65,'_menu_item_type','post_type'),
	(491,65,'_menu_item_menu_item_parent','0'),
	(492,65,'_menu_item_object_id','11'),
	(493,65,'_menu_item_object','page'),
	(494,65,'_menu_item_target',''),
	(495,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(496,65,'_menu_item_xfn',''),
	(497,65,'_menu_item_url',''),
	(499,66,'_menu_item_type','post_type'),
	(500,66,'_menu_item_menu_item_parent','0'),
	(501,66,'_menu_item_object_id','10'),
	(502,66,'_menu_item_object','page'),
	(503,66,'_menu_item_target',''),
	(504,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(505,66,'_menu_item_xfn',''),
	(506,66,'_menu_item_url',''),
	(508,67,'_menu_item_type','post_type'),
	(509,67,'_menu_item_menu_item_parent','0'),
	(510,67,'_menu_item_object_id','9'),
	(511,67,'_menu_item_object','page'),
	(512,67,'_menu_item_target',''),
	(513,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(514,67,'_menu_item_xfn',''),
	(515,67,'_menu_item_url',''),
	(517,68,'_menu_item_type','post_type'),
	(518,68,'_menu_item_menu_item_parent','0'),
	(519,68,'_menu_item_object_id','8'),
	(520,68,'_menu_item_object','page'),
	(521,68,'_menu_item_target',''),
	(522,68,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(523,68,'_menu_item_xfn',''),
	(524,68,'_menu_item_url',''),
	(526,69,'_edit_last','1'),
	(527,69,'_edit_lock','1581696094:1'),
	(528,69,'total_sales','0'),
	(529,69,'_tax_status','taxable'),
	(530,69,'_tax_class',''),
	(531,69,'_manage_stock','no'),
	(532,69,'_backorders','no'),
	(533,69,'_sold_individually','no'),
	(534,69,'_virtual','no'),
	(535,69,'_downloadable','no'),
	(536,69,'_download_limit','-1'),
	(537,69,'_download_expiry','-1'),
	(538,69,'_stock',NULL),
	(539,69,'_stock_status','instock'),
	(540,69,'_wc_average_rating','0'),
	(541,69,'_wc_review_count','0'),
	(542,69,'_product_version','3.9.1'),
	(543,69,'_product_attributes','a:1:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"Color\";s:5:\"value\";s:19:\"Black | White | Red\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
	(544,70,'_variation_description',''),
	(545,70,'total_sales','0'),
	(546,70,'_tax_status','taxable'),
	(547,70,'_tax_class','parent'),
	(548,70,'_manage_stock','no'),
	(549,70,'_backorders','no'),
	(550,70,'_sold_individually','no'),
	(551,70,'_virtual','no'),
	(552,70,'_downloadable','no'),
	(553,70,'_download_limit','-1'),
	(554,70,'_download_expiry','-1'),
	(555,70,'_stock',NULL),
	(556,70,'_stock_status','instock'),
	(557,70,'_wc_average_rating','0'),
	(558,70,'_wc_review_count','0'),
	(559,70,'attribute_color','Black'),
	(560,70,'_product_version','3.9.1'),
	(561,70,'_regular_price','12'),
	(562,70,'_sale_price','10'),
	(563,70,'_price','10'),
	(565,71,'_variation_description',''),
	(566,71,'total_sales','0'),
	(567,71,'_tax_status','taxable'),
	(568,71,'_tax_class','parent'),
	(569,71,'_manage_stock','no'),
	(570,71,'_backorders','no'),
	(571,71,'_sold_individually','no'),
	(572,71,'_virtual','no'),
	(573,71,'_downloadable','no'),
	(574,71,'_download_limit','-1'),
	(575,71,'_download_expiry','-1'),
	(576,71,'_stock',NULL),
	(577,71,'_stock_status','instock'),
	(578,71,'_wc_average_rating','0'),
	(579,71,'_wc_review_count','0'),
	(580,71,'attribute_color','White'),
	(581,71,'_product_version','3.9.1'),
	(583,71,'_regular_price','12'),
	(584,71,'_sale_price','10'),
	(585,71,'_price','10'),
	(586,69,'_price','10'),
	(1016,99,'_edit_last','1'),
	(1017,99,'_edit_lock','1581696733:1'),
	(1956,159,'_sku','woo-vneck-tee'),
	(1957,159,'total_sales','0'),
	(1958,159,'_tax_status','taxable'),
	(1959,159,'_tax_class',''),
	(1960,159,'_manage_stock','no'),
	(1961,159,'_backorders','no'),
	(1962,159,'_sold_individually','no'),
	(1963,159,'_virtual','no'),
	(1964,159,'_downloadable','no'),
	(1965,159,'_download_limit','0'),
	(1966,159,'_download_expiry','0'),
	(1967,159,'_stock',NULL),
	(1968,159,'_stock_status','instock'),
	(1969,159,'_wc_average_rating','0'),
	(1970,159,'_wc_review_count','0'),
	(1971,159,'_product_version','3.9.2'),
	(1973,160,'_sku','woo-hoodie'),
	(1974,160,'total_sales','0'),
	(1975,160,'_tax_status','taxable'),
	(1976,160,'_tax_class',''),
	(1977,160,'_manage_stock','no'),
	(1978,160,'_backorders','no'),
	(1979,160,'_sold_individually','no'),
	(1980,160,'_virtual','no'),
	(1981,160,'_downloadable','no'),
	(1982,160,'_download_limit','0'),
	(1983,160,'_download_expiry','0'),
	(1984,160,'_stock',NULL),
	(1985,160,'_stock_status','instock'),
	(1986,160,'_wc_average_rating','0'),
	(1987,160,'_wc_review_count','0'),
	(1988,160,'_product_version','3.9.2'),
	(1990,161,'_sku','woo-hoodie-with-logo'),
	(1991,161,'total_sales','0'),
	(1992,161,'_tax_status','taxable'),
	(1993,161,'_tax_class',''),
	(1994,161,'_manage_stock','no'),
	(1995,161,'_backorders','no'),
	(1996,161,'_sold_individually','no'),
	(1997,161,'_virtual','no'),
	(1998,161,'_downloadable','no'),
	(1999,161,'_download_limit','0'),
	(2000,161,'_download_expiry','0'),
	(2001,161,'_stock',NULL),
	(2002,161,'_stock_status','instock'),
	(2003,161,'_wc_average_rating','0'),
	(2004,161,'_wc_review_count','0'),
	(2005,161,'_product_version','3.9.2'),
	(2007,162,'_sku','woo-tshirt'),
	(2008,162,'total_sales','0'),
	(2009,162,'_tax_status','taxable'),
	(2010,162,'_tax_class',''),
	(2011,162,'_manage_stock','no'),
	(2012,162,'_backorders','no'),
	(2013,162,'_sold_individually','no'),
	(2014,162,'_virtual','no'),
	(2015,162,'_downloadable','no'),
	(2016,162,'_download_limit','0'),
	(2017,162,'_download_expiry','0'),
	(2018,162,'_stock',NULL),
	(2019,162,'_stock_status','instock'),
	(2020,162,'_wc_average_rating','0'),
	(2021,162,'_wc_review_count','0'),
	(2022,162,'_product_version','3.9.2'),
	(2024,163,'_sku','woo-beanie'),
	(2025,163,'total_sales','0'),
	(2026,163,'_tax_status','taxable'),
	(2027,163,'_tax_class',''),
	(2028,163,'_manage_stock','no'),
	(2029,163,'_backorders','no'),
	(2030,163,'_sold_individually','no'),
	(2031,163,'_virtual','no'),
	(2032,163,'_downloadable','no'),
	(2033,163,'_download_limit','0'),
	(2034,163,'_download_expiry','0'),
	(2035,163,'_stock',NULL),
	(2036,163,'_stock_status','instock'),
	(2037,163,'_wc_average_rating','0'),
	(2038,163,'_wc_review_count','0'),
	(2039,163,'_product_version','3.9.2'),
	(2041,164,'_sku','woo-belt'),
	(2042,164,'total_sales','0'),
	(2043,164,'_tax_status','taxable'),
	(2044,164,'_tax_class',''),
	(2045,164,'_manage_stock','no'),
	(2046,164,'_backorders','no'),
	(2047,164,'_sold_individually','no'),
	(2048,164,'_virtual','no'),
	(2049,164,'_downloadable','no'),
	(2050,164,'_download_limit','0'),
	(2051,164,'_download_expiry','0'),
	(2052,164,'_stock',NULL),
	(2053,164,'_stock_status','instock'),
	(2054,164,'_wc_average_rating','0'),
	(2055,164,'_wc_review_count','0'),
	(2056,164,'_product_version','3.9.2'),
	(2058,165,'_sku','woo-cap'),
	(2059,165,'total_sales','0'),
	(2060,165,'_tax_status','taxable'),
	(2061,165,'_tax_class',''),
	(2062,165,'_manage_stock','no'),
	(2063,165,'_backorders','no'),
	(2064,165,'_sold_individually','no'),
	(2065,165,'_virtual','no'),
	(2066,165,'_downloadable','no'),
	(2067,165,'_download_limit','0'),
	(2068,165,'_download_expiry','0'),
	(2069,165,'_stock',NULL),
	(2070,165,'_stock_status','instock'),
	(2071,165,'_wc_average_rating','0'),
	(2072,165,'_wc_review_count','0'),
	(2073,165,'_product_version','3.9.2'),
	(2075,166,'_sku','woo-sunglasses'),
	(2076,166,'total_sales','0'),
	(2077,166,'_tax_status','taxable'),
	(2078,166,'_tax_class',''),
	(2079,166,'_manage_stock','no'),
	(2080,166,'_backorders','no'),
	(2081,166,'_sold_individually','no'),
	(2082,166,'_virtual','no'),
	(2083,166,'_downloadable','no'),
	(2084,166,'_download_limit','0'),
	(2085,166,'_download_expiry','0'),
	(2086,166,'_stock',NULL),
	(2087,166,'_stock_status','instock'),
	(2088,166,'_wc_average_rating','0'),
	(2089,166,'_wc_review_count','0'),
	(2090,166,'_product_version','3.9.2'),
	(2092,167,'_sku','woo-hoodie-with-pocket'),
	(2093,167,'total_sales','0'),
	(2094,167,'_tax_status','taxable'),
	(2095,167,'_tax_class',''),
	(2096,167,'_manage_stock','no'),
	(2097,167,'_backorders','no'),
	(2098,167,'_sold_individually','no'),
	(2099,167,'_virtual','no'),
	(2100,167,'_downloadable','no'),
	(2101,167,'_download_limit','0'),
	(2102,167,'_download_expiry','0'),
	(2103,167,'_stock',NULL),
	(2104,167,'_stock_status','instock'),
	(2105,167,'_wc_average_rating','0'),
	(2106,167,'_wc_review_count','0'),
	(2107,167,'_product_version','3.9.2'),
	(2109,168,'_sku','woo-hoodie-with-zipper'),
	(2110,168,'total_sales','0'),
	(2111,168,'_tax_status','taxable'),
	(2112,168,'_tax_class',''),
	(2113,168,'_manage_stock','no'),
	(2114,168,'_backorders','no'),
	(2115,168,'_sold_individually','no'),
	(2116,168,'_virtual','no'),
	(2117,168,'_downloadable','no'),
	(2118,168,'_download_limit','0'),
	(2119,168,'_download_expiry','0'),
	(2120,168,'_stock',NULL),
	(2121,168,'_stock_status','instock'),
	(2122,168,'_wc_average_rating','0'),
	(2123,168,'_wc_review_count','0'),
	(2124,168,'_product_version','3.9.2'),
	(2126,169,'_sku','woo-long-sleeve-tee'),
	(2127,169,'total_sales','0'),
	(2128,169,'_tax_status','taxable'),
	(2129,169,'_tax_class',''),
	(2130,169,'_manage_stock','no'),
	(2131,169,'_backorders','no'),
	(2132,169,'_sold_individually','no'),
	(2133,169,'_virtual','no'),
	(2134,169,'_downloadable','no'),
	(2135,169,'_download_limit','0'),
	(2136,169,'_download_expiry','0'),
	(2137,169,'_stock',NULL),
	(2138,169,'_stock_status','instock'),
	(2139,169,'_wc_average_rating','0'),
	(2140,169,'_wc_review_count','0'),
	(2141,169,'_product_version','3.9.2'),
	(2143,170,'_sku','woo-polo'),
	(2144,170,'total_sales','0'),
	(2145,170,'_tax_status','taxable'),
	(2146,170,'_tax_class',''),
	(2147,170,'_manage_stock','no'),
	(2148,170,'_backorders','no'),
	(2149,170,'_sold_individually','no'),
	(2150,170,'_virtual','no'),
	(2151,170,'_downloadable','no'),
	(2152,170,'_download_limit','0'),
	(2153,170,'_download_expiry','0'),
	(2154,170,'_stock',NULL),
	(2155,170,'_stock_status','instock'),
	(2156,170,'_wc_average_rating','0'),
	(2157,170,'_wc_review_count','0'),
	(2158,170,'_product_version','3.9.2'),
	(2160,171,'_sku','woo-album'),
	(2161,171,'total_sales','0'),
	(2162,171,'_tax_status','taxable'),
	(2163,171,'_tax_class',''),
	(2164,171,'_manage_stock','no'),
	(2165,171,'_backorders','no'),
	(2166,171,'_sold_individually','no'),
	(2167,171,'_virtual','yes'),
	(2168,171,'_downloadable','yes'),
	(2169,171,'_download_limit','1'),
	(2170,171,'_download_expiry','1'),
	(2171,171,'_stock',NULL),
	(2172,171,'_stock_status','instock'),
	(2173,171,'_wc_average_rating','0'),
	(2174,171,'_wc_review_count','0'),
	(2175,171,'_product_version','3.9.2'),
	(2177,172,'_sku','woo-single'),
	(2178,172,'total_sales','0'),
	(2179,172,'_tax_status','taxable'),
	(2180,172,'_tax_class',''),
	(2181,172,'_manage_stock','no'),
	(2182,172,'_backorders','no'),
	(2183,172,'_sold_individually','no'),
	(2184,172,'_virtual','yes'),
	(2185,172,'_downloadable','yes'),
	(2186,172,'_download_limit','1'),
	(2187,172,'_download_expiry','1'),
	(2188,172,'_stock',NULL),
	(2189,172,'_stock_status','instock'),
	(2190,172,'_wc_average_rating','0'),
	(2191,172,'_wc_review_count','0'),
	(2192,172,'_product_version','3.9.2'),
	(2194,173,'_sku','woo-vneck-tee-red'),
	(2195,173,'total_sales','0'),
	(2196,173,'_tax_status','taxable'),
	(2197,173,'_tax_class',''),
	(2198,173,'_manage_stock','no'),
	(2199,173,'_backorders','no'),
	(2200,173,'_sold_individually','no'),
	(2201,173,'_virtual','no'),
	(2202,173,'_downloadable','no'),
	(2203,173,'_download_limit','0'),
	(2204,173,'_download_expiry','0'),
	(2205,173,'_stock',NULL),
	(2206,173,'_stock_status','instock'),
	(2207,173,'_wc_average_rating','0'),
	(2208,173,'_wc_review_count','0'),
	(2209,173,'_product_version','3.9.2'),
	(2211,174,'_sku','woo-vneck-tee-green'),
	(2212,174,'total_sales','0'),
	(2213,174,'_tax_status','taxable'),
	(2214,174,'_tax_class',''),
	(2215,174,'_manage_stock','no'),
	(2216,174,'_backorders','no'),
	(2217,174,'_sold_individually','no'),
	(2218,174,'_virtual','no'),
	(2219,174,'_downloadable','no'),
	(2220,174,'_download_limit','0'),
	(2221,174,'_download_expiry','0'),
	(2222,174,'_stock',NULL),
	(2223,174,'_stock_status','instock'),
	(2224,174,'_wc_average_rating','0'),
	(2225,174,'_wc_review_count','0'),
	(2226,174,'_product_version','3.9.2'),
	(2228,175,'_sku','woo-vneck-tee-blue'),
	(2229,175,'total_sales','0'),
	(2230,175,'_tax_status','taxable'),
	(2231,175,'_tax_class',''),
	(2232,175,'_manage_stock','no'),
	(2233,175,'_backorders','no'),
	(2234,175,'_sold_individually','no'),
	(2235,175,'_virtual','no'),
	(2236,175,'_downloadable','no'),
	(2237,175,'_download_limit','0'),
	(2238,175,'_download_expiry','0'),
	(2239,175,'_stock',NULL),
	(2240,175,'_stock_status','instock'),
	(2241,175,'_wc_average_rating','0'),
	(2242,175,'_wc_review_count','0'),
	(2243,175,'_product_version','3.9.2'),
	(2245,176,'_sku','woo-hoodie-red'),
	(2246,176,'total_sales','0'),
	(2247,176,'_tax_status','taxable'),
	(2248,176,'_tax_class',''),
	(2249,176,'_manage_stock','no'),
	(2250,176,'_backorders','no'),
	(2251,176,'_sold_individually','no'),
	(2252,176,'_virtual','no'),
	(2253,176,'_downloadable','no'),
	(2254,176,'_download_limit','0'),
	(2255,176,'_download_expiry','0'),
	(2256,176,'_stock',NULL),
	(2257,176,'_stock_status','instock'),
	(2258,176,'_wc_average_rating','0'),
	(2259,176,'_wc_review_count','0'),
	(2260,176,'_product_version','3.9.2'),
	(2262,177,'_sku','woo-hoodie-green'),
	(2263,177,'total_sales','0'),
	(2264,177,'_tax_status','taxable'),
	(2265,177,'_tax_class',''),
	(2266,177,'_manage_stock','no'),
	(2267,177,'_backorders','no'),
	(2268,177,'_sold_individually','no'),
	(2269,177,'_virtual','no'),
	(2270,177,'_downloadable','no'),
	(2271,177,'_download_limit','0'),
	(2272,177,'_download_expiry','0'),
	(2273,177,'_stock',NULL),
	(2274,177,'_stock_status','instock'),
	(2275,177,'_wc_average_rating','0'),
	(2276,177,'_wc_review_count','0'),
	(2277,177,'_product_version','3.9.2'),
	(2279,178,'_sku','woo-hoodie-blue'),
	(2280,178,'total_sales','0'),
	(2281,178,'_tax_status','taxable'),
	(2282,178,'_tax_class',''),
	(2283,178,'_manage_stock','no'),
	(2284,178,'_backorders','no'),
	(2285,178,'_sold_individually','no'),
	(2286,178,'_virtual','no'),
	(2287,178,'_downloadable','no'),
	(2288,178,'_download_limit','0'),
	(2289,178,'_download_expiry','0'),
	(2290,178,'_stock',NULL),
	(2291,178,'_stock_status','instock'),
	(2292,178,'_wc_average_rating','0'),
	(2293,178,'_wc_review_count','0'),
	(2294,178,'_product_version','3.9.2'),
	(2296,179,'_sku','Woo-tshirt-logo'),
	(2297,179,'total_sales','0'),
	(2298,179,'_tax_status','taxable'),
	(2299,179,'_tax_class',''),
	(2300,179,'_manage_stock','no'),
	(2301,179,'_backorders','no'),
	(2302,179,'_sold_individually','no'),
	(2303,179,'_virtual','no'),
	(2304,179,'_downloadable','no'),
	(2305,179,'_download_limit','0'),
	(2306,179,'_download_expiry','0'),
	(2307,179,'_stock',NULL),
	(2308,179,'_stock_status','instock'),
	(2309,179,'_wc_average_rating','0'),
	(2310,179,'_wc_review_count','0'),
	(2311,179,'_product_version','3.9.2'),
	(2313,180,'_sku','Woo-beanie-logo'),
	(2314,180,'total_sales','0'),
	(2315,180,'_tax_status','taxable'),
	(2316,180,'_tax_class',''),
	(2317,180,'_manage_stock','no'),
	(2318,180,'_backorders','no'),
	(2319,180,'_sold_individually','no'),
	(2320,180,'_virtual','no'),
	(2321,180,'_downloadable','no'),
	(2322,180,'_download_limit','0'),
	(2323,180,'_download_expiry','0'),
	(2324,180,'_stock',NULL),
	(2325,180,'_stock_status','instock'),
	(2326,180,'_wc_average_rating','0'),
	(2327,180,'_wc_review_count','0'),
	(2328,180,'_product_version','3.9.2'),
	(2330,181,'_sku','logo-collection'),
	(2331,181,'total_sales','0'),
	(2332,181,'_tax_status','taxable'),
	(2333,181,'_tax_class',''),
	(2334,181,'_manage_stock','no'),
	(2335,181,'_backorders','no'),
	(2336,181,'_sold_individually','no'),
	(2337,181,'_virtual','no'),
	(2338,181,'_downloadable','no'),
	(2339,181,'_download_limit','0'),
	(2340,181,'_download_expiry','0'),
	(2341,181,'_stock',NULL),
	(2342,181,'_stock_status','instock'),
	(2343,181,'_wc_average_rating','0'),
	(2344,181,'_wc_review_count','0'),
	(2345,181,'_product_version','3.9.2'),
	(2347,182,'_sku','wp-pennant'),
	(2348,182,'total_sales','0'),
	(2349,182,'_tax_status','taxable'),
	(2350,182,'_tax_class',''),
	(2351,182,'_manage_stock','no'),
	(2352,182,'_backorders','no'),
	(2353,182,'_sold_individually','no'),
	(2354,182,'_virtual','no'),
	(2355,182,'_downloadable','no'),
	(2356,182,'_download_limit','0'),
	(2357,182,'_download_expiry','0'),
	(2358,182,'_stock',NULL),
	(2359,182,'_stock_status','instock'),
	(2360,182,'_wc_average_rating','0'),
	(2361,182,'_wc_review_count','0'),
	(2362,182,'_product_version','3.9.2'),
	(2364,183,'_sku','woo-hoodie-blue-logo'),
	(2365,183,'total_sales','0'),
	(2366,183,'_tax_status','taxable'),
	(2367,183,'_tax_class',''),
	(2368,183,'_manage_stock','no'),
	(2369,183,'_backorders','no'),
	(2370,183,'_sold_individually','no'),
	(2371,183,'_virtual','no'),
	(2372,183,'_downloadable','no'),
	(2373,183,'_download_limit','0'),
	(2374,183,'_download_expiry','0'),
	(2375,183,'_stock',NULL),
	(2376,183,'_stock_status','instock'),
	(2377,183,'_wc_average_rating','0'),
	(2378,183,'_wc_review_count','0'),
	(2379,183,'_product_version','3.9.2'),
	(2381,184,'_wp_attached_file','2020/02/vneck-tee-2.jpg'),
	(2382,184,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2020/02/vneck-tee-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2383,184,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
	(2384,185,'_wp_attached_file','2020/02/vnech-tee-green-1.jpg'),
	(2385,185,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2020/02/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2386,185,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
	(2387,186,'_wp_attached_file','2020/02/vnech-tee-blue-1.jpg'),
	(2388,186,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/02/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2389,186,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
	(2390,159,'_wpcom_is_markdown','1'),
	(2391,159,'_wp_old_slug','import-placeholder-for-44'),
	(2392,159,'_product_image_gallery','185,186'),
	(2393,159,'_thumbnail_id','184'),
	(2394,159,'_product_attributes','a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2395,187,'_wp_attached_file','2020/02/hoodie-2.jpg'),
	(2396,187,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/02/hoodie-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2397,187,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
	(2398,188,'_wp_attached_file','2020/02/hoodie-blue-1.jpg'),
	(2399,188,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2020/02/hoodie-blue-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2400,188,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
	(2401,189,'_wp_attached_file','2020/02/hoodie-green-1.jpg'),
	(2402,189,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2020/02/hoodie-green-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2403,189,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
	(2404,190,'_wp_attached_file','2020/02/hoodie-with-logo-2.jpg'),
	(2405,190,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2020/02/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2406,190,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
	(2407,160,'_wpcom_is_markdown','1'),
	(2408,160,'_wp_old_slug','import-placeholder-for-45'),
	(2409,160,'_product_image_gallery','188,189,190'),
	(2410,160,'_thumbnail_id','187'),
	(2411,160,'_product_attributes','a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
	(2412,161,'_wpcom_is_markdown','1'),
	(2413,161,'_wp_old_slug','import-placeholder-for-46'),
	(2414,161,'_regular_price','45'),
	(2415,161,'_thumbnail_id','190'),
	(2416,161,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2417,161,'_price','45'),
	(2418,191,'_wp_attached_file','2020/02/tshirt-2.jpg'),
	(2419,191,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/02/tshirt-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2420,191,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
	(2421,162,'_wpcom_is_markdown','1'),
	(2422,162,'_wp_old_slug','import-placeholder-for-47'),
	(2423,162,'_regular_price','18'),
	(2424,162,'_thumbnail_id','191'),
	(2425,162,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2426,162,'_price','18'),
	(2427,192,'_wp_attached_file','2020/02/beanie-2.jpg'),
	(2428,192,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/02/beanie-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2429,192,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
	(2430,163,'_wpcom_is_markdown','1'),
	(2431,163,'_wp_old_slug','import-placeholder-for-48'),
	(2432,163,'_regular_price','20'),
	(2433,163,'_sale_price','18'),
	(2434,163,'_thumbnail_id','192'),
	(2435,163,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2436,163,'_price','18'),
	(2437,193,'_wp_attached_file','2020/02/belt-2.jpg'),
	(2438,193,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2020/02/belt-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:18:\"belt-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:18:\"belt-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2439,193,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
	(2440,164,'_wpcom_is_markdown','1'),
	(2441,164,'_wp_old_slug','import-placeholder-for-58'),
	(2442,164,'_regular_price','65'),
	(2443,164,'_sale_price','55'),
	(2444,164,'_thumbnail_id','193'),
	(2445,164,'_price','55'),
	(2446,194,'_wp_attached_file','2020/02/cap-2.jpg'),
	(2447,194,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2020/02/cap-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:17:\"cap-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:17:\"cap-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2448,194,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
	(2449,165,'_wpcom_is_markdown','1'),
	(2450,165,'_wp_old_slug','import-placeholder-for-60'),
	(2451,165,'_regular_price','18'),
	(2452,165,'_sale_price','16'),
	(2453,165,'_thumbnail_id','194'),
	(2454,165,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2455,165,'_price','16'),
	(2456,195,'_wp_attached_file','2020/02/sunglasses-2.jpg'),
	(2457,195,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2020/02/sunglasses-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2458,195,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
	(2459,166,'_wpcom_is_markdown','1'),
	(2460,166,'_wp_old_slug','import-placeholder-for-62'),
	(2461,166,'_regular_price','90'),
	(2462,166,'_thumbnail_id','195'),
	(2463,166,'_price','90'),
	(2464,196,'_wp_attached_file','2020/02/hoodie-with-pocket-2.jpg'),
	(2465,196,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2020/02/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2466,196,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
	(2467,167,'_wpcom_is_markdown','1'),
	(2468,167,'_wp_old_slug','import-placeholder-for-64'),
	(2469,167,'_regular_price','45'),
	(2470,167,'_sale_price','35'),
	(2471,167,'_thumbnail_id','196'),
	(2472,167,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2473,167,'_price','35'),
	(2474,197,'_wp_attached_file','2020/02/hoodie-with-zipper-2.jpg'),
	(2475,197,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2020/02/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2476,197,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
	(2477,168,'_wpcom_is_markdown','1'),
	(2478,168,'_wp_old_slug','import-placeholder-for-66'),
	(2479,168,'_regular_price','45'),
	(2480,168,'_thumbnail_id','197'),
	(2481,168,'_price','45'),
	(2482,198,'_wp_attached_file','2020/02/long-sleeve-tee-2.jpg'),
	(2483,198,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2020/02/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2484,198,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
	(2485,169,'_wpcom_is_markdown','1'),
	(2486,169,'_wp_old_slug','import-placeholder-for-68'),
	(2487,169,'_regular_price','25'),
	(2488,169,'_thumbnail_id','198'),
	(2489,169,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2490,169,'_price','25'),
	(2491,199,'_wp_attached_file','2020/02/polo-2.jpg'),
	(2492,199,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2020/02/polo-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:18:\"polo-2-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:18:\"polo-2-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2493,199,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
	(2494,170,'_wpcom_is_markdown','1'),
	(2495,170,'_wp_old_slug','import-placeholder-for-70'),
	(2496,170,'_regular_price','20'),
	(2497,170,'_thumbnail_id','199'),
	(2498,170,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2499,170,'_price','20'),
	(2500,200,'_wp_attached_file','2020/02/album-1.jpg'),
	(2501,200,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2020/02/album-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:19:\"album-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:19:\"album-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2502,200,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
	(2503,171,'_wpcom_is_markdown','1'),
	(2504,171,'_wp_old_slug','import-placeholder-for-73'),
	(2505,171,'_regular_price','15'),
	(2506,171,'_thumbnail_id','200'),
	(2507,171,'_downloadable_files','a:2:{s:36:\"f5fd96f0-8e04-4c6c-962c-cba6d8689f36\";a:3:{s:2:\"id\";s:36:\"f5fd96f0-8e04-4c6c-962c-cba6d8689f36\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"e0d4a928-6865-4e9d-b3c2-a9202d8a4e0e\";a:3:{s:2:\"id\";s:36:\"e0d4a928-6865-4e9d-b3c2-a9202d8a4e0e\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
	(2508,171,'_price','15'),
	(2509,201,'_wp_attached_file','2020/02/single-1.jpg'),
	(2510,201,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2020/02/single-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:20:\"single-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:20:\"single-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2511,201,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
	(2512,172,'_wpcom_is_markdown','1'),
	(2513,172,'_wp_old_slug','import-placeholder-for-75'),
	(2514,172,'_regular_price','3'),
	(2515,172,'_sale_price','2'),
	(2516,172,'_thumbnail_id','201'),
	(2517,172,'_downloadable_files','a:1:{s:36:\"cf23bfff-3f1e-4b5a-8be5-4684b24e1edd\";a:3:{s:2:\"id\";s:36:\"cf23bfff-3f1e-4b5a-8be5-4684b24e1edd\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
	(2518,172,'_price','2'),
	(2519,173,'_wpcom_is_markdown',''),
	(2520,173,'_wp_old_slug','import-placeholder-for-76'),
	(2521,173,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2522,173,'_regular_price','20'),
	(2523,173,'_thumbnail_id','184'),
	(2524,173,'attribute_pa_color','red'),
	(2525,173,'attribute_pa_size',''),
	(2526,173,'_price','20'),
	(2527,174,'_wpcom_is_markdown',''),
	(2528,174,'_wp_old_slug','import-placeholder-for-77'),
	(2529,174,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2530,174,'_regular_price','20'),
	(2531,174,'_thumbnail_id','185'),
	(2532,174,'attribute_pa_color','green'),
	(2533,174,'attribute_pa_size',''),
	(2534,174,'_price','20'),
	(2535,175,'_wpcom_is_markdown',''),
	(2536,175,'_wp_old_slug','import-placeholder-for-78'),
	(2537,175,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2538,175,'_regular_price','15'),
	(2539,175,'_thumbnail_id','186'),
	(2540,175,'attribute_pa_color','blue'),
	(2541,175,'attribute_pa_size',''),
	(2542,175,'_price','15'),
	(2543,176,'_wpcom_is_markdown',''),
	(2544,176,'_wp_old_slug','import-placeholder-for-79'),
	(2545,176,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2546,176,'_regular_price','45'),
	(2547,176,'_sale_price','42'),
	(2548,176,'_thumbnail_id','187'),
	(2549,176,'attribute_pa_color','red'),
	(2550,176,'attribute_logo','No'),
	(2551,176,'_price','42'),
	(2552,177,'_wpcom_is_markdown',''),
	(2553,177,'_wp_old_slug','import-placeholder-for-80'),
	(2554,177,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2555,177,'_regular_price','45'),
	(2556,177,'_thumbnail_id','189'),
	(2557,177,'attribute_pa_color','green'),
	(2558,177,'attribute_logo','No'),
	(2559,177,'_price','45'),
	(2560,178,'_wpcom_is_markdown',''),
	(2561,178,'_wp_old_slug','import-placeholder-for-81'),
	(2562,178,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2563,178,'_regular_price','45'),
	(2564,178,'_thumbnail_id','188'),
	(2565,178,'attribute_pa_color','blue'),
	(2566,178,'attribute_logo','No'),
	(2567,178,'_price','45'),
	(2568,202,'_wp_attached_file','2020/02/t-shirt-with-logo-1.jpg'),
	(2569,202,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2020/02/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2570,202,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
	(2571,179,'_wpcom_is_markdown','1'),
	(2572,179,'_wp_old_slug','import-placeholder-for-83'),
	(2573,179,'_regular_price','18'),
	(2574,179,'_thumbnail_id','202'),
	(2575,179,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2576,179,'_price','18'),
	(2577,159,'_price','15'),
	(2578,159,'_price','20'),
	(2581,203,'_wp_attached_file','2020/02/beanie-with-logo-1.jpg'),
	(2582,203,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2020/02/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2583,203,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
	(2584,180,'_wpcom_is_markdown','1'),
	(2585,180,'_wp_old_slug','import-placeholder-for-85'),
	(2586,180,'_regular_price','20'),
	(2587,180,'_sale_price','18'),
	(2588,180,'_thumbnail_id','203'),
	(2589,180,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
	(2590,180,'_price','18'),
	(2591,204,'_wp_attached_file','2020/02/logo-1.jpg'),
	(2592,204,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2020/02/logo-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:18:\"logo-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:18:\"logo-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2593,204,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
	(2594,181,'_wpcom_is_markdown','1'),
	(2595,181,'_wp_old_slug','import-placeholder-for-87'),
	(2596,181,'_children','a:3:{i:0;i:161;i:1;i:162;i:2;i:163;}'),
	(2597,181,'_product_image_gallery','203,202,190'),
	(2598,181,'_thumbnail_id','204'),
	(2599,181,'_price','18'),
	(2600,181,'_price','45'),
	(2601,205,'_wp_attached_file','2020/02/pennant-1.jpg'),
	(2602,205,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2020/02/pennant-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2603,205,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
	(2604,182,'_wpcom_is_markdown','1'),
	(2605,182,'_wp_old_slug','import-placeholder-for-89'),
	(2606,182,'_regular_price','11.05'),
	(2607,182,'_thumbnail_id','205'),
	(2608,182,'_product_url','https://mercantile.wordpress.org/product/wordpress-pennant/'),
	(2609,182,'_button_text','Buy on the WordPress swag store!'),
	(2610,182,'_price','11.05'),
	(2611,183,'_wpcom_is_markdown',''),
	(2612,183,'_wp_old_slug','import-placeholder-for-90'),
	(2613,183,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(2614,183,'_regular_price','45'),
	(2615,183,'_thumbnail_id','190'),
	(2616,183,'attribute_pa_color','blue'),
	(2617,183,'attribute_logo','Yes'),
	(2618,183,'_price','45'),
	(2619,160,'_price','42'),
	(2620,160,'_price','45'),
	(2621,206,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581701734;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2622,207,'_wp_attached_file','2020/02/sg.png'),
	(2623,207,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:14:\"2020/02/sg.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"sg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:14:\"sg-240x150.png\";s:5:\"width\";i:240;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:14:\"sg-240x100.png\";s:5:\"width\";i:240;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"sg-125x125.png\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"sg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"sg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2624,208,'_wp_attached_file','2020/02/cropped-sg.png'),
	(2625,208,'_wp_attachment_context','site-icon'),
	(2626,208,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2020/02/cropped-sg.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cropped-sg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-sg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"bones-thumb-600\";a:4:{s:4:\"file\";s:22:\"cropped-sg-512x150.png\";s:5:\"width\";i:512;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"bones-thumb-300\";a:4:{s:4:\"file\";s:22:\"cropped-sg-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-sg-125x125.png\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cropped-sg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-sg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cropped-sg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-sg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:22:\"cropped-sg-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:22:\"cropped-sg-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:22:\"cropped-sg-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:20:\"cropped-sg-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(2627,209,'_wp_trash_meta_status','publish'),
	(2628,209,'_wp_trash_meta_time','1581699613'),
	(2629,210,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581705418;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2630,211,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581709081;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2631,212,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581779069;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2632,213,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581782746;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2633,214,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581786846;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2634,215,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581871696;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2635,216,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581875481;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2636,217,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581879082;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
	(2637,218,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581882710;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2020-02-12 14:41:21','2020-02-12 14:41:21','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-02-12 14:41:21','2020-02-12 14:41:21','',0,'http://seller-website/?p=1',0,'post','',1),
	(2,1,'2020-02-12 14:41:21','2020-02-12 14:41:21','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://seller-website/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-02-14 15:33:26','2020-02-14 15:33:26','',0,'http://seller-website/?page_id=2',0,'page','',0),
	(3,1,'2020-02-12 14:41:21','2020-02-12 14:41:21','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://seller-website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-02-14 15:33:42','2020-02-14 15:33:42','',0,'http://seller-website/?page_id=3',0,'page','',0),
	(4,1,'2020-02-12 14:41:45','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-12 14:41:45','0000-00-00 00:00:00','',0,'http://seller-website/?p=4',0,'post','',0),
	(5,1,'2020-02-12 14:43:30','2020-02-12 14:43:30','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://seller-website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-02-12 14:43:30','2020-02-12 14:43:30','',3,'http://seller-website/2020/02/12/3-revision-v1/',0,'revision','',0),
	(6,1,'2020-02-12 14:43:30','2020-02-12 14:43:30','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://seller-website/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-02-12 14:43:30','2020-02-12 14:43:30','',2,'http://seller-website/2020/02/12/2-revision-v1/',0,'revision','',0),
	(7,1,'2020-02-12 14:49:31','2020-02-12 14:49:31','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2020-02-12 14:49:31','2020-02-12 14:49:31','',0,'http://seller-website/wp-content/uploads/2020/02/woocommerce-placeholder.png',0,'attachment','image/png',0),
	(8,1,'2020-02-12 14:56:06','2020-02-12 14:56:06','','Shop','','publish','closed','closed','','shop','','','2020-02-12 14:56:06','2020-02-12 14:56:06','',0,'http://seller-website/shop/',0,'page','',0),
	(9,1,'2020-02-12 14:56:06','2020-02-12 14:56:06','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Basket','','publish','closed','closed','','basket','','','2020-02-12 14:56:06','2020-02-12 14:56:06','',0,'http://seller-website/basket/',0,'page','',0),
	(10,1,'2020-02-12 14:56:06','2020-02-12 14:56:06','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2020-02-12 14:56:06','2020-02-12 14:56:06','',0,'http://seller-website/checkout/',0,'page','',0),
	(11,1,'2020-02-12 14:56:06','2020-02-12 14:56:06','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2020-02-12 14:56:06','2020-02-12 14:56:06','',0,'http://seller-website/my-account/',0,'page','',0),
	(12,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133abc9bd4.03506664-Av6Se7MiQ1yImNygJ6FEy5I3J40wERoU','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=12',0,'scheduled-action','',3),
	(13,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133ac4ff56.79470024-J4Z8uhYVcOzzD6tsQaB4puqDK38vZ14b','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=13',0,'scheduled-action','',3),
	(14,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133accb559.10047786-RLD1QfWGejI5yhauLiqX12oZsFJbWUw8','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=14',0,'scheduled-action','',3),
	(15,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133ad46543.00951007-PDGuBr46ybR3rE0PB5GXPhy7qA2X2xFE','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=15',0,'scheduled-action','',3),
	(16,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133adc3359.89930582-whBVcOq4c5yixDxyQ9fKcMTZyujCo1if','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=16',0,'scheduled-action','',3),
	(17,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133ae3e469.99457949-nIIZXwD0d4u4Lrrzx1gwD02riK4WTzXl','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=17',0,'scheduled-action','',3),
	(18,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133aeb81d0.69544224-n0wlcm9ubvou1C9rK0QUq1M7ro1JolKh','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=18',0,'scheduled-action','',3),
	(19,0,'2020-02-12 15:01:14','2020-02-12 15:01:14','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e44133af320c0.04338236-ZDiS3T08ZdltMychx7vWx1yq6XoSb8r8','','','2020-02-12 15:01:14','2020-02-12 15:01:14','',0,'http://seller-website/?post_type=scheduled-action&#038;p=19',0,'scheduled-action','',3),
	(20,0,'2020-02-12 16:01:15','2020-02-12 16:01:15','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e469f97d3b944.63839917-udJyDngu12kmy83ocD2O3gj9FyuWioef','','','2020-02-14 13:24:39','2020-02-14 13:24:39','',0,'http://seller-website/?post_type=scheduled-action&#038;p=20',0,'scheduled-action','',3),
	(21,0,'2020-02-14 14:24:39','2020-02-14 14:24:39','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e46afe57f3937.00027315-sRjuzfJuloKpDujfXwNm5MR1vcBdweQp','','','2020-02-14 14:34:13','2020-02-14 14:34:13','',0,'http://seller-website/?post_type=scheduled-action&#038;p=21',0,'scheduled-action','',3),
	(22,1,'2020-02-14 13:26:54','2020-02-14 13:26:54','','sellingabusiness','','inherit','open','closed','','sellingabusiness','','','2020-02-14 13:26:54','2020-02-14 13:26:54','',0,'http://seller-website/wp-content/uploads/2020/02/sellingabusiness.png',0,'attachment','image/png',0),
	(23,1,'2020-02-14 13:27:04','2020-02-14 13:27:04','http://seller-website/wp-content/uploads/2020/02/cropped-sellingabusiness.png','cropped-sellingabusiness.png','','inherit','open','closed','','cropped-sellingabusiness-png','','','2020-02-14 13:27:04','2020-02-14 13:27:04','',0,'http://seller-website/wp-content/uploads/2020/02/cropped-sellingabusiness.png',0,'attachment','image/png',0),
	(24,1,'2020-02-14 13:27:13','2020-02-14 13:27:13','{\n    \"storefront::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:27:09\"\n    }\n}','','','trash','closed','closed','','79051359-f471-4ba0-a558-6357210612a6','','','2020-02-14 13:27:13','2020-02-14 13:27:13','',0,'http://seller-website/?p=24',0,'customize_changeset','',0),
	(25,1,'2020-02-14 13:29:44','2020-02-14 13:29:44','','selling','','inherit','open','closed','','selling','','','2020-02-14 13:29:44','2020-02-14 13:29:44','',0,'http://seller-website/wp-content/uploads/2020/02/selling.png',0,'attachment','image/png',0),
	(26,1,'2020-02-14 13:29:52','2020-02-14 13:29:52','http://seller-website/wp-content/uploads/2020/02/cropped-selling.png','cropped-selling.png','','inherit','open','closed','','cropped-selling-png','','','2020-02-14 13:29:52','2020-02-14 13:29:52','',0,'http://seller-website/wp-content/uploads/2020/02/cropped-selling.png',0,'attachment','image/png',0),
	(27,1,'2020-02-14 13:34:58','2020-02-14 13:34:58','{\n    \"storefront::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:30:00\"\n    },\n    \"storefront::header_image\": {\n        \"value\": \"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:31:02\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\",\n            \"thumbnail_url\": \"http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg\",\n            \"timestamp\": 1581687052356,\n            \"attachment_id\": 29,\n            \"width\": 750,\n            \"height\": 322\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:31:02\"\n    },\n    \"storefront::storefront_header_text_color\": {\n        \"value\": \"#8e8e8e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:32:02\"\n    },\n    \"storefront::storefront_footer_background_color\": {\n        \"value\": \"#828282\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:32:02\"\n    },\n    \"storefront::storefront_footer_text_color\": {\n        \"value\": \"#232323\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 13:32:02\"\n    }\n}','','','trash','closed','closed','','27cdbc7d-f231-4591-be02-bad3adab6a06','','','2020-02-14 13:34:58','2020-02-14 13:34:58','',0,'http://seller-website/?p=27',0,'customize_changeset','',0),
	(28,1,'2020-02-14 13:30:40','2020-02-14 13:30:40','','pricetags','','inherit','open','closed','','pricetags','','','2020-02-14 13:30:40','2020-02-14 13:30:40','',0,'http://seller-website/wp-content/uploads/2020/02/pricetags.jpg',0,'attachment','image/jpeg',0),
	(29,1,'2020-02-14 13:30:52','2020-02-14 13:30:52','','cropped-pricetags.jpg','','inherit','open','closed','','cropped-pricetags-jpg','','','2020-02-14 13:30:52','2020-02-14 13:30:52','',0,'http://seller-website/wp-content/uploads/2020/02/cropped-pricetags.jpg',0,'attachment','image/jpeg',0),
	(30,0,'2020-02-14 13:38:34','2020-02-14 13:38:34','[]','woocommerce_update_marketplace_suggestions','','publish','open','closed','','scheduled-action-5e46a3899b02e9.08564928-3gU8inyFmWybQ0bA6klLlJxZ4DReauXF','','','2020-02-14 13:41:29','2020-02-14 13:41:29','',0,'http://seller-website/?post_type=scheduled-action&#038;p=30',0,'scheduled-action','',3),
	(58,0,'2020-02-14 15:34:13','2020-02-14 15:34:13','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e46be1f4310e0.63707817-Lzyu10SoadaEuq6ab1SDs4FFZUbjSoU2','','','2020-02-14 15:34:55','2020-02-14 15:34:55','',0,'http://seller-website/?post_type=scheduled-action&#038;p=58',0,'scheduled-action','',3),
	(59,1,'2020-02-14 15:32:14','2020-02-14 15:32:14','','Home','','publish','closed','closed','','home','','','2020-02-14 15:32:14','2020-02-14 15:32:14','',0,'http://selling-genius/?page_id=59',0,'page','',0),
	(60,1,'2020-02-14 15:32:14','2020-02-14 15:32:14','','Home','','inherit','closed','closed','','59-revision-v1','','','2020-02-14 15:32:14','2020-02-14 15:32:14','',59,'http://selling-genius/2020/02/14/59-revision-v1/',0,'revision','',0),
	(61,1,'2020-02-14 15:33:26','2020-02-14 15:33:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://seller-website/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-02-14 15:33:26','2020-02-14 15:33:26','',2,'http://selling-genius/2020/02/14/2-revision-v1/',0,'revision','',0),
	(62,1,'2020-02-14 15:33:42','2020-02-14 15:33:42','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://seller-website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-02-14 15:33:42','2020-02-14 15:33:42','',3,'http://selling-genius/2020/02/14/3-revision-v1/',0,'revision','',0),
	(63,0,'2020-02-14 16:34:55','2020-02-14 16:34:55','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e46cc55f3b5c9.44920187-u9uuFqCFj8OzKQasw57Y7yIrd3m4PoCt','','','2020-02-14 16:35:33','2020-02-14 16:35:33','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=63',0,'scheduled-action','',3),
	(64,1,'2020-02-14 15:51:42','2020-02-14 15:51:42',' ','','','publish','closed','closed','','64','','','2020-02-14 15:51:42','2020-02-14 15:51:42','',0,'http://selling-genius/?p=64',1,'nav_menu_item','',0),
	(65,1,'2020-02-14 15:51:42','2020-02-14 15:51:42',' ','','','publish','closed','closed','','65','','','2020-02-14 15:51:42','2020-02-14 15:51:42','',0,'http://selling-genius/?p=65',2,'nav_menu_item','',0),
	(66,1,'2020-02-14 15:51:42','2020-02-14 15:51:42',' ','','','publish','closed','closed','','66','','','2020-02-14 15:51:42','2020-02-14 15:51:42','',0,'http://selling-genius/?p=66',5,'nav_menu_item','',0),
	(67,1,'2020-02-14 15:51:42','2020-02-14 15:51:42',' ','','','publish','closed','closed','','67','','','2020-02-14 15:51:42','2020-02-14 15:51:42','',0,'http://selling-genius/?p=67',4,'nav_menu_item','',0),
	(68,1,'2020-02-14 15:51:42','2020-02-14 15:51:42',' ','','','publish','closed','closed','','68','','','2020-02-14 15:51:42','2020-02-14 15:51:42','',0,'http://selling-genius/?p=68',3,'nav_menu_item','',0),
	(69,1,'2020-02-14 16:00:02','2020-02-14 16:00:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique est ut quam egestas congue. Sed tempor sodales venenatis. Cras elit leo, dictum ac mollis bibendum, congue vitae erat. Maecenas a ligula dictum, dignissim magna sed, pulvinar massa. Phasellus blandit dui bibendum, malesuada purus id, vestibulum massa. Nunc iaculis erat eget tellus ullamcorper fringilla. Fusce aliquet lacus vitae efficitur tincidunt. Duis eu diam sodales, rhoncus orci sit amet, suscipit eros. Praesent et accumsan urna. Pellentesque viverra orci eu finibus volutpat. Nunc dictum mollis magna iaculis ultrices. Fusce vehicula et ipsum a consequat. Suspendisse lobortis feugiat magna id iaculis.','T-shirt','','publish','open','closed','','t-shirt','','','2020-02-14 16:02:35','2020-02-14 16:02:35','',0,'http://selling-genius/?post_type=product&#038;p=69',0,'product','',0),
	(70,1,'2020-02-14 16:01:41','2020-02-14 16:01:41','','T-shirt - Black','Color: Black','publish','closed','closed','','t-shirt','','','2020-02-14 16:02:20','2020-02-14 16:02:20','',69,'http://selling-genius/?post_type=product_variation&#038;p=70',1,'product_variation','',0),
	(71,1,'2020-02-14 16:02:25','2020-02-14 16:02:25','','T-shirt - White','Color: White','publish','closed','closed','','t-shirt-2','','','2020-02-14 16:02:35','2020-02-14 16:02:35','',69,'http://selling-genius/?post_type=product_variation&#038;p=71',0,'product_variation','',0),
	(99,1,'2020-02-14 16:12:13','0000-00-00 00:00:00','','Products','','draft','open','open','','','','','2020-02-14 16:12:13','2020-02-14 16:12:13','',0,'http://selling-genius/?post_type=custom_type&#038;p=99',0,'custom_type','',0),
	(159,1,'2020-02-14 16:34:41','2020-02-14 16:34:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','V-Neck T-Shirt','This is a variable product.','publish','open','closed','','v-neck-t-shirt','','','2020-02-14 16:35:03','2020-02-14 16:35:03','',0,'http://selling-genius/product/import-placeholder-for-44/',0,'product','',0),
	(160,1,'2020-02-14 16:34:41','2020-02-14 16:34:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie','This is a variable product.','publish','open','closed','','hoodie','','','2020-02-14 16:35:07','2020-02-14 16:35:07','',0,'http://selling-genius/product/import-placeholder-for-45/',0,'product','',0),
	(161,1,'2020-02-14 16:34:41','2020-02-14 16:34:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Logo','This is a simple product.','publish','open','closed','','hoodie-with-logo','','','2020-02-14 16:34:50','2020-02-14 16:34:50','',0,'http://selling-genius/product/import-placeholder-for-46/',0,'product','',0),
	(162,1,'2020-02-14 16:34:41','2020-02-14 16:34:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','T-Shirt','This is a simple product.','publish','open','closed','','t-shirt-2','','','2020-02-14 16:34:51','2020-02-14 16:34:51','',0,'http://selling-genius/product/import-placeholder-for-47/',0,'product','',0),
	(163,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Beanie','This is a simple product.','publish','open','closed','','beanie','','','2020-02-14 16:34:52','2020-02-14 16:34:52','',0,'http://selling-genius/product/import-placeholder-for-48/',0,'product','',0),
	(164,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Belt','This is a simple product.','publish','open','closed','','belt','','','2020-02-14 16:34:53','2020-02-14 16:34:53','',0,'http://selling-genius/product/import-placeholder-for-58/',0,'product','',0),
	(165,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Cap','This is a simple product.','publish','open','closed','','cap','','','2020-02-14 16:34:54','2020-02-14 16:34:54','',0,'http://selling-genius/product/import-placeholder-for-60/',0,'product','',0),
	(166,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Sunglasses','This is a simple product.','publish','open','closed','','sunglasses','','','2020-02-14 16:34:55','2020-02-14 16:34:55','',0,'http://selling-genius/product/import-placeholder-for-62/',0,'product','',0),
	(167,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Pocket','This is a simple product.','publish','open','closed','','hoodie-with-pocket','','','2020-02-14 16:34:56','2020-02-14 16:34:56','',0,'http://selling-genius/product/import-placeholder-for-64/',0,'product','',0),
	(168,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Zipper','This is a simple product.','publish','open','closed','','hoodie-with-zipper','','','2020-02-14 16:34:57','2020-02-14 16:34:57','',0,'http://selling-genius/product/import-placeholder-for-66/',0,'product','',0),
	(169,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Long Sleeve Tee','This is a simple product.','publish','open','closed','','long-sleeve-tee','','','2020-02-14 16:34:58','2020-02-14 16:34:58','',0,'http://selling-genius/product/import-placeholder-for-68/',0,'product','',0),
	(170,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Polo','This is a simple product.','publish','open','closed','','polo','','','2020-02-14 16:34:59','2020-02-14 16:34:59','',0,'http://selling-genius/product/import-placeholder-for-70/',0,'product','',0),
	(171,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.','Album','This is a simple, virtual product.','publish','open','closed','','album','','','2020-02-14 16:35:00','2020-02-14 16:35:00','',0,'http://selling-genius/product/import-placeholder-for-73/',0,'product','',0),
	(172,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.','Single','This is a simple, virtual product.','publish','open','closed','','single','','','2020-02-14 16:35:01','2020-02-14 16:35:01','',0,'http://selling-genius/product/import-placeholder-for-75/',0,'product','',0),
	(173,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','','V-Neck T-Shirt - Red','Color: Red','publish','closed','closed','','v-neck-t-shirt-red','','','2020-02-14 16:35:01','2020-02-14 16:35:01','',159,'http://selling-genius/product/import-placeholder-for-76/',0,'product_variation','',0),
	(174,1,'2020-02-14 16:34:42','2020-02-14 16:34:42','','V-Neck T-Shirt - Green','Color: Green','publish','closed','closed','','v-neck-t-shirt-green','','','2020-02-14 16:35:01','2020-02-14 16:35:01','',159,'http://selling-genius/product/import-placeholder-for-77/',0,'product_variation','',0),
	(175,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','','V-Neck T-Shirt - Blue','Color: Blue','publish','closed','closed','','v-neck-t-shirt-blue','','','2020-02-14 16:35:02','2020-02-14 16:35:02','',159,'http://selling-genius/product/import-placeholder-for-78/',0,'product_variation','',0),
	(176,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','','Hoodie - Red, No','Color: Red, Logo: No','publish','closed','closed','','hoodie-red-no','','','2020-02-14 16:35:02','2020-02-14 16:35:02','',160,'http://selling-genius/product/import-placeholder-for-79/',1,'product_variation','',0),
	(177,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','','Hoodie - Green, No','Color: Green, Logo: No','publish','closed','closed','','hoodie-green-no','','','2020-02-14 16:35:02','2020-02-14 16:35:02','',160,'http://selling-genius/product/import-placeholder-for-80/',2,'product_variation','',0),
	(178,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','','Hoodie - Blue, No','Color: Blue, Logo: No','publish','closed','closed','','hoodie-blue-no','','','2020-02-14 16:35:02','2020-02-14 16:35:02','',160,'http://selling-genius/product/import-placeholder-for-81/',3,'product_variation','',0),
	(179,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','T-Shirt with Logo','This is a simple product.','publish','open','closed','','t-shirt-with-logo','','','2020-02-14 16:35:03','2020-02-14 16:35:03','',0,'http://selling-genius/product/import-placeholder-for-83/',0,'product','',0),
	(180,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Beanie with Logo','This is a simple product.','publish','open','closed','','beanie-with-logo','','','2020-02-14 16:35:05','2020-02-14 16:35:05','',0,'http://selling-genius/product/import-placeholder-for-85/',0,'product','',0),
	(181,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Logo Collection','This is a grouped product.','publish','open','closed','','logo-collection','','','2020-02-14 16:35:06','2020-02-14 16:35:06','',0,'http://selling-genius/product/import-placeholder-for-87/',0,'product','',0),
	(182,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','WordPress Pennant','This is an external product.','publish','open','closed','','wordpress-pennant','','','2020-02-14 16:35:07','2020-02-14 16:35:07','',0,'http://selling-genius/product/import-placeholder-for-89/',0,'product','',0),
	(183,1,'2020-02-14 16:34:43','2020-02-14 16:34:43','','Hoodie - Blue, Yes','Color: Blue, Logo: Yes','publish','closed','closed','','hoodie-blue-yes','','','2020-02-14 16:35:07','2020-02-14 16:35:07','',160,'http://selling-genius/product/import-placeholder-for-90/',0,'product_variation','',0),
	(184,1,'2020-02-14 16:34:44','2020-02-14 16:34:44','','vneck-tee-2.jpg','','inherit','open','closed','','vneck-tee-2-jpg','','','2020-02-14 16:34:44','2020-02-14 16:34:44','',159,'http://selling-genius/wp-content/uploads/2020/02/vneck-tee-2.jpg',0,'attachment','image/jpeg',0),
	(185,1,'2020-02-14 16:34:45','2020-02-14 16:34:45','','vnech-tee-green-1.jpg','','inherit','open','closed','','vnech-tee-green-1-jpg','','','2020-02-14 16:34:45','2020-02-14 16:34:45','',159,'http://selling-genius/wp-content/uploads/2020/02/vnech-tee-green-1.jpg',0,'attachment','image/jpeg',0),
	(186,1,'2020-02-14 16:34:46','2020-02-14 16:34:46','','vnech-tee-blue-1.jpg','','inherit','open','closed','','vnech-tee-blue-1-jpg','','','2020-02-14 16:34:46','2020-02-14 16:34:46','',159,'http://selling-genius/wp-content/uploads/2020/02/vnech-tee-blue-1.jpg',0,'attachment','image/jpeg',0),
	(187,1,'2020-02-14 16:34:47','2020-02-14 16:34:47','','hoodie-2.jpg','','inherit','open','closed','','hoodie-2-jpg','','','2020-02-14 16:34:47','2020-02-14 16:34:47','',160,'http://selling-genius/wp-content/uploads/2020/02/hoodie-2.jpg',0,'attachment','image/jpeg',0),
	(188,1,'2020-02-14 16:34:48','2020-02-14 16:34:48','','hoodie-blue-1.jpg','','inherit','open','closed','','hoodie-blue-1-jpg','','','2020-02-14 16:34:48','2020-02-14 16:34:48','',160,'http://selling-genius/wp-content/uploads/2020/02/hoodie-blue-1.jpg',0,'attachment','image/jpeg',0),
	(189,1,'2020-02-14 16:34:49','2020-02-14 16:34:49','','hoodie-green-1.jpg','','inherit','open','closed','','hoodie-green-1-jpg','','','2020-02-14 16:34:49','2020-02-14 16:34:49','',160,'http://selling-genius/wp-content/uploads/2020/02/hoodie-green-1.jpg',0,'attachment','image/jpeg',0),
	(190,1,'2020-02-14 16:34:50','2020-02-14 16:34:50','','hoodie-with-logo-2.jpg','','inherit','open','closed','','hoodie-with-logo-2-jpg','','','2020-02-14 16:34:50','2020-02-14 16:34:50','',160,'http://selling-genius/wp-content/uploads/2020/02/hoodie-with-logo-2.jpg',0,'attachment','image/jpeg',0),
	(191,1,'2020-02-14 16:34:51','2020-02-14 16:34:51','','tshirt-2.jpg','','inherit','open','closed','','tshirt-2-jpg','','','2020-02-14 16:34:51','2020-02-14 16:34:51','',162,'http://selling-genius/wp-content/uploads/2020/02/tshirt-2.jpg',0,'attachment','image/jpeg',0),
	(192,1,'2020-02-14 16:34:52','2020-02-14 16:34:52','','beanie-2.jpg','','inherit','open','closed','','beanie-2-jpg','','','2020-02-14 16:34:52','2020-02-14 16:34:52','',163,'http://selling-genius/wp-content/uploads/2020/02/beanie-2.jpg',0,'attachment','image/jpeg',0),
	(193,1,'2020-02-14 16:34:53','2020-02-14 16:34:53','','belt-2.jpg','','inherit','open','closed','','belt-2-jpg','','','2020-02-14 16:34:53','2020-02-14 16:34:53','',164,'http://selling-genius/wp-content/uploads/2020/02/belt-2.jpg',0,'attachment','image/jpeg',0),
	(194,1,'2020-02-14 16:34:54','2020-02-14 16:34:54','','cap-2.jpg','','inherit','open','closed','','cap-2-jpg','','','2020-02-14 16:34:54','2020-02-14 16:34:54','',165,'http://selling-genius/wp-content/uploads/2020/02/cap-2.jpg',0,'attachment','image/jpeg',0),
	(195,1,'2020-02-14 16:34:55','2020-02-14 16:34:55','','sunglasses-2.jpg','','inherit','open','closed','','sunglasses-2-jpg','','','2020-02-14 16:34:55','2020-02-14 16:34:55','',166,'http://selling-genius/wp-content/uploads/2020/02/sunglasses-2.jpg',0,'attachment','image/jpeg',0),
	(196,1,'2020-02-14 16:34:56','2020-02-14 16:34:56','','hoodie-with-pocket-2.jpg','','inherit','open','closed','','hoodie-with-pocket-2-jpg','','','2020-02-14 16:34:56','2020-02-14 16:34:56','',167,'http://selling-genius/wp-content/uploads/2020/02/hoodie-with-pocket-2.jpg',0,'attachment','image/jpeg',0),
	(197,1,'2020-02-14 16:34:57','2020-02-14 16:34:57','','hoodie-with-zipper-2.jpg','','inherit','open','closed','','hoodie-with-zipper-2-jpg','','','2020-02-14 16:34:57','2020-02-14 16:34:57','',168,'http://selling-genius/wp-content/uploads/2020/02/hoodie-with-zipper-2.jpg',0,'attachment','image/jpeg',0),
	(198,1,'2020-02-14 16:34:58','2020-02-14 16:34:58','','long-sleeve-tee-2.jpg','','inherit','open','closed','','long-sleeve-tee-2-jpg','','','2020-02-14 16:34:58','2020-02-14 16:34:58','',169,'http://selling-genius/wp-content/uploads/2020/02/long-sleeve-tee-2.jpg',0,'attachment','image/jpeg',0),
	(199,1,'2020-02-14 16:34:59','2020-02-14 16:34:59','','polo-2.jpg','','inherit','open','closed','','polo-2-jpg','','','2020-02-14 16:34:59','2020-02-14 16:34:59','',170,'http://selling-genius/wp-content/uploads/2020/02/polo-2.jpg',0,'attachment','image/jpeg',0),
	(200,1,'2020-02-14 16:35:00','2020-02-14 16:35:00','','album-1.jpg','','inherit','open','closed','','album-1-jpg','','','2020-02-14 16:35:00','2020-02-14 16:35:00','',171,'http://selling-genius/wp-content/uploads/2020/02/album-1.jpg',0,'attachment','image/jpeg',0),
	(201,1,'2020-02-14 16:35:01','2020-02-14 16:35:01','','single-1.jpg','','inherit','open','closed','','single-1-jpg','','','2020-02-14 16:35:01','2020-02-14 16:35:01','',172,'http://selling-genius/wp-content/uploads/2020/02/single-1.jpg',0,'attachment','image/jpeg',0),
	(202,1,'2020-02-14 16:35:02','2020-02-14 16:35:02','','t-shirt-with-logo-1.jpg','','inherit','open','closed','','t-shirt-with-logo-1-jpg','','','2020-02-14 16:35:02','2020-02-14 16:35:02','',179,'http://selling-genius/wp-content/uploads/2020/02/t-shirt-with-logo-1.jpg',0,'attachment','image/jpeg',0),
	(203,1,'2020-02-14 16:35:04','2020-02-14 16:35:04','','beanie-with-logo-1.jpg','','inherit','open','closed','','beanie-with-logo-1-jpg','','','2020-02-14 16:35:04','2020-02-14 16:35:04','',180,'http://selling-genius/wp-content/uploads/2020/02/beanie-with-logo-1.jpg',0,'attachment','image/jpeg',0),
	(204,1,'2020-02-14 16:35:06','2020-02-14 16:35:06','','logo-1.jpg','','inherit','open','closed','','logo-1-jpg','','','2020-02-14 16:35:06','2020-02-14 16:35:06','',181,'http://selling-genius/wp-content/uploads/2020/02/logo-1.jpg',0,'attachment','image/jpeg',0),
	(205,1,'2020-02-14 16:35:06','2020-02-14 16:35:06','','pennant-1.jpg','','inherit','open','closed','','pennant-1-jpg','','','2020-02-14 16:35:06','2020-02-14 16:35:06','',182,'http://selling-genius/wp-content/uploads/2020/02/pennant-1.jpg',0,'attachment','image/jpeg',0),
	(206,0,'2020-02-14 17:35:34','2020-02-14 17:35:34','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e46dabaa2d941.30924785-JHTNbCEUmqpNySFsWQiVPhUmdEIcwkzr','','','2020-02-14 17:36:58','2020-02-14 17:36:58','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=206',0,'scheduled-action','',3),
	(207,1,'2020-02-14 17:00:00','2020-02-14 17:00:00','','sg','','inherit','open','closed','','sg','','','2020-02-14 17:00:00','2020-02-14 17:00:00','',0,'http://selling-genius/wp-content/uploads/2020/02/sg.png',0,'attachment','image/png',0),
	(208,1,'2020-02-14 17:00:05','2020-02-14 17:00:05','http://selling-genius/wp-content/uploads/2020/02/cropped-sg.png','cropped-sg.png','','inherit','open','closed','','cropped-sg-png','','','2020-02-14 17:00:05','2020-02-14 17:00:05','',0,'http://selling-genius/wp-content/uploads/2020/02/cropped-sg.png',0,'attachment','image/png',0),
	(209,1,'2020-02-14 17:00:13','2020-02-14 17:00:13','{\n    \"site_icon\": {\n        \"value\": 208,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-14 17:00:13\"\n    }\n}','','','trash','closed','closed','','7f23c0c9-6514-4833-897d-029fa97db9b6','','','2020-02-14 17:00:13','2020-02-14 17:00:13','',0,'http://selling-genius/2020/02/14/7f23c0c9-6514-4833-897d-029fa97db9b6/',0,'customize_changeset','',0),
	(210,0,'2020-02-14 18:36:58','2020-02-14 18:36:58','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e46e908f33f74.30119462-r7oEvCjRicf6IqrtWjkBGCA57YEyia23','','','2020-02-14 18:38:00','2020-02-14 18:38:00','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=210',0,'scheduled-action','',3),
	(211,0,'2020-02-14 19:38:01','2020-02-14 19:38:01','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e47fa6d20a8a2.33843175-KE5P9qgOsLKqdLb4OFIMD2dQyUtlsQyz','','','2020-02-15 14:04:29','2020-02-15 14:04:29','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=211',0,'scheduled-action','',3),
	(212,0,'2020-02-15 15:04:29','2020-02-15 15:04:29','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e4808ca503be9.98889183-i0M5jVCxm0n7l9f3OCQXGQwbEdFmraoX','','','2020-02-15 15:05:46','2020-02-15 15:05:46','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=212',0,'scheduled-action','',3),
	(213,0,'2020-02-15 16:05:46','2020-02-15 16:05:46','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e4818cec94f28.47010688-y0tH7oB5S13HVbcK2QNPeZBp5pNbehY0','','','2020-02-15 16:14:06','2020-02-15 16:14:06','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=213',0,'scheduled-action','',3),
	(214,0,'2020-02-15 17:14:06','2020-02-15 17:14:06','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e496440a343b3.06299773-TmQWKK6liIfMyGRxAcBEsqsk7TIcauJT','','','2020-02-16 15:48:16','2020-02-16 15:48:16','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=214',0,'scheduled-action','',3),
	(215,0,'2020-02-16 16:48:16','2020-02-16 16:48:16','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e4973092b73b2.54949380-JnboKRRpgNvEPihvX1Xvk5BN5cZMoTGt','','','2020-02-16 16:51:21','2020-02-16 16:51:21','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=215',0,'scheduled-action','',3),
	(216,0,'2020-02-16 17:51:21','2020-02-16 17:51:21','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e49811a740460.38229461-gSDF08PWQGFouIy8lqfpZN9qMhdGZemk','','','2020-02-16 17:51:22','2020-02-16 17:51:22','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=216',0,'scheduled-action','',3),
	(217,0,'2020-02-16 18:51:22','2020-02-16 18:51:22','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e498f464d4bc1.99931942-zWoh7SSyawZ5dYulBHAsuKzIgMQToWDy','','','2020-02-16 18:51:50','2020-02-16 18:51:50','',0,'http://selling-genius/?post_type=scheduled-action&#038;p=217',0,'scheduled-action','',3),
	(218,0,'2020-02-16 19:51:50','2020-02-16 19:51:50','[]','wc_admin_unsnooze_admin_notes','','pending','open','closed','','','','','2020-02-16 19:51:50','2020-02-16 19:51:50','',0,'http://selling-genius/?post_type=scheduled-action&p=218',0,'scheduled-action','',1);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(12,16,0),
	(13,16,0),
	(14,16,0),
	(15,16,0),
	(16,16,0),
	(17,16,0),
	(18,16,0),
	(19,16,0),
	(20,16,0),
	(21,16,0),
	(58,16,0),
	(63,16,0),
	(64,23,0),
	(65,23,0),
	(66,23,0),
	(67,23,0),
	(68,23,0),
	(69,4,0),
	(69,15,0),
	(159,4,0),
	(159,8,0),
	(159,18,0),
	(159,24,0),
	(159,25,0),
	(159,26,0),
	(159,27,0),
	(159,28,0),
	(159,29,0),
	(160,4,0),
	(160,19,0),
	(160,24,0),
	(160,25,0),
	(160,26,0),
	(161,2,0),
	(161,19,0),
	(161,24,0),
	(162,2,0),
	(162,18,0),
	(162,30,0),
	(163,2,0),
	(163,20,0),
	(163,26,0),
	(164,2,0),
	(164,20,0),
	(165,2,0),
	(165,8,0),
	(165,20,0),
	(165,31,0),
	(166,2,0),
	(166,8,0),
	(166,20,0),
	(167,2,0),
	(167,6,0),
	(167,7,0),
	(167,8,0),
	(167,19,0),
	(167,30,0),
	(168,2,0),
	(168,8,0),
	(168,19,0),
	(169,2,0),
	(169,18,0),
	(169,25,0),
	(170,2,0),
	(170,18,0),
	(170,24,0),
	(171,2,0),
	(171,21,0),
	(172,2,0),
	(172,21,0),
	(173,15,0),
	(174,15,0),
	(175,15,0),
	(176,15,0),
	(177,15,0),
	(178,15,0),
	(179,2,0),
	(179,18,0),
	(179,30,0),
	(180,2,0),
	(180,20,0),
	(180,26,0),
	(181,3,0),
	(181,17,0),
	(182,5,0),
	(182,22,0),
	(183,15,0),
	(206,16,0),
	(210,16,0),
	(211,16,0),
	(212,16,0),
	(213,16,0),
	(214,16,0),
	(215,16,0),
	(216,16,0),
	(217,16,0),
	(218,16,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'product_type','',0,14),
	(3,3,'product_type','',0,1),
	(4,4,'product_type','',0,3),
	(5,5,'product_type','',0,1),
	(6,6,'product_visibility','',0,1),
	(7,7,'product_visibility','',0,1),
	(8,8,'product_visibility','',0,5),
	(9,9,'product_visibility','',0,0),
	(10,10,'product_visibility','',0,0),
	(11,11,'product_visibility','',0,0),
	(12,12,'product_visibility','',0,0),
	(13,13,'product_visibility','',0,0),
	(14,14,'product_visibility','',0,0),
	(15,15,'product_cat','',0,1),
	(16,16,'action-group','',0,21),
	(17,17,'product_cat','',0,1),
	(18,18,'product_cat','',17,5),
	(19,19,'product_cat','',17,4),
	(20,20,'product_cat','',17,5),
	(21,21,'product_cat','',0,2),
	(22,22,'product_cat','',0,1),
	(23,23,'nav_menu','',0,5),
	(24,24,'pa_color','',0,4),
	(25,25,'pa_color','',0,3),
	(26,26,'pa_color','',0,4),
	(27,27,'pa_size','',0,1),
	(28,28,'pa_size','',0,1),
	(29,29,'pa_size','',0,1),
	(30,30,'pa_color','',0,3),
	(31,31,'pa_color','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`)
VALUES
	(1,15,'product_count_product_cat','1'),
	(2,17,'order','0'),
	(3,18,'order','0'),
	(4,19,'order','0'),
	(5,20,'order','0'),
	(6,21,'order','0'),
	(7,22,'order','0'),
	(8,18,'product_count_product_cat','5'),
	(9,17,'product_count_product_cat','14'),
	(10,24,'order_pa_color','0'),
	(11,25,'order_pa_color','0'),
	(12,26,'order_pa_color','0'),
	(13,27,'order_pa_size','0'),
	(14,28,'order_pa_size','0'),
	(15,29,'order_pa_size','0'),
	(16,19,'product_count_product_cat','3'),
	(17,30,'order_pa_color','0'),
	(18,20,'product_count_product_cat','5'),
	(19,31,'order_pa_color','0'),
	(20,21,'product_count_product_cat','2'),
	(21,22,'product_count_product_cat','1');

/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorised','uncategorised',0),
	(2,'simple','simple',0),
	(3,'grouped','grouped',0),
	(4,'variable','variable',0),
	(5,'external','external',0),
	(6,'exclude-from-search','exclude-from-search',0),
	(7,'exclude-from-catalog','exclude-from-catalog',0),
	(8,'featured','featured',0),
	(9,'outofstock','outofstock',0),
	(10,'rated-1','rated-1',0),
	(11,'rated-2','rated-2',0),
	(12,'rated-3','rated-3',0),
	(13,'rated-4','rated-4',0),
	(14,'rated-5','rated-5',0),
	(15,'Uncategorised','uncategorised',0),
	(16,'wc-admin-notes','wc-admin-notes',0),
	(17,'Clothing','clothing',0),
	(18,'Tshirts','tshirts',0),
	(19,'Hoodies','hoodies',0),
	(20,'Accessories','accessories',0),
	(21,'Music','music',0),
	(22,'Decor','decor',0),
	(23,'main-menu','main-menu',0),
	(24,'Blue','blue',0),
	(25,'Green','green',0),
	(26,'Red','red',0),
	(27,'Large','large',0),
	(28,'Medium','medium',0),
	(29,'Small','small',0),
	(30,'Gray','gray',0),
	(31,'Yellow','yellow',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','developer'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','false'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','0'),
	(16,1,'session_tokens','a:9:{s:64:\"4b6fef0a9fd8bf497e38751cb56129953819e9a46e245d396629cb422df73420\";a:4:{s:10:\"expiration\";i:1582728104;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581518504;}s:64:\"141e7effd720f929acd6ca113c5c847ae4a33da92b77af809a11fe3976c9e122\";a:4:{s:10:\"expiration\";i:1582900480;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581690880;}s:64:\"f98e28a43f150e0d45591aaccf6e58f024f8138aa84652e023c7e4a2c64a952d\";a:4:{s:10:\"expiration\";i:1582900524;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3951.0 Safari/537.36\";s:5:\"login\";i:1581690924;}s:64:\"4976cc8abce7c88d9540200507a3b64928b64c17d479e76f384d0d5dfa5050f5\";a:4:{s:10:\"expiration\";i:1582902327;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3951.0 Safari/537.36\";s:5:\"login\";i:1581692727;}s:64:\"31006960ffeb2eaa168077d225db8bc3437f5e55adae498ab625b2cee613c1ad\";a:4:{s:10:\"expiration\";i:1582902651;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3951.0 Safari/537.36\";s:5:\"login\";i:1581693051;}s:64:\"3a48046a4bc724afcbb0cc9a156dc626ae7d7d9787074be5b990c685a93f6c3c\";a:4:{s:10:\"expiration\";i:1581866749;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581693949;}s:64:\"e69640c62fb8a0cc64c386a0587cd0c38cd8575745dccf70b824261410795136\";a:4:{s:10:\"expiration\";i:1581866829;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581694029;}s:64:\"9efc18abed2633bbe5a52ca3cae4b8f061d83986944d452045095f495a85238d\";a:4:{s:10:\"expiration\";i:1581875358;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581702558;}s:64:\"3391752d3e116fed0fd9aa95260562f4d01b289d3fafe08883ef603a44623bb5\";a:4:{s:10:\"expiration\";i:1581948298;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581775498;}}'),
	(17,1,'wp_dashboard_quick_press_last_post_id','4'),
	(18,1,'_woocommerce_tracks_anon_id','woo:hFvUnUWFXaC2Gsnw+nrbdT2B'),
	(19,1,'jetpack_tracks_anon_id','jetpack:WslhpRTePVZmcfutdOb7FP7g'),
	(20,1,'wc_last_active','1581724800'),
	(21,1,'_order_count','0'),
	(22,1,'wp_user-settings','libraryContent=browse'),
	(23,1,'wp_user-settings-time','1581687301'),
	(24,1,'dismissed_shipstation-setup_notice','1'),
	(25,1,'wp_woocommerce_product_import_mapping','a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
	(26,1,'wp_product_import_error_log','a:0:{}'),
	(27,1,'wc_marketplace_suggestions_dismissed_suggestions','a:5:{i:0;s:35:\"products-empty-woocommerce-bookings\";i:1;s:30:\"products-empty-product-vendors\";i:2;s:40:\"products-empty-woocommerce-subscriptions\";i:3;s:30:\"products-empty-product-bundles\";i:4;s:26:\"products-empty-memberships\";}'),
	(30,1,'dismissed_no_secure_connection_notice','1'),
	(36,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(37,1,'metaboxhidden_nav-menus','a:8:{i:0;s:21:\"add-post-type-product\";i:1;s:25:\"add-post-type-custom_type\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:14:\"add-custom_cat\";i:5;s:14:\"add-custom_tag\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";}'),
	(38,1,'nav_menu_recently_edited','23'),
	(39,1,'closedpostboxes_custom_type','a:1:{i:0;s:13:\"trackbacksdiv\";}'),
	(40,1,'metaboxhidden_custom_type','a:1:{i:0;s:7:\"slugdiv\";}'),
	(60,1,'billing_first_name',''),
	(61,1,'billing_last_name',''),
	(62,1,'billing_company',''),
	(63,1,'billing_address_1',''),
	(64,1,'billing_address_2',''),
	(65,1,'billing_city',''),
	(66,1,'billing_postcode',''),
	(67,1,'billing_country',''),
	(68,1,'billing_state',''),
	(69,1,'billing_phone',''),
	(70,1,'billing_email','martina.gabrielli@yahoo.it'),
	(71,1,'shipping_first_name',''),
	(72,1,'shipping_last_name',''),
	(73,1,'shipping_company',''),
	(74,1,'shipping_address_1',''),
	(75,1,'shipping_address_2',''),
	(76,1,'shipping_city',''),
	(77,1,'shipping_postcode',''),
	(78,1,'shipping_country',''),
	(79,1,'shipping_state',''),
	(80,1,'last_update','1581775590');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'developer','$P$BdhnuHs0L.QRauMdNBCHcr8PMEkNBm/','developer','martina.gabrielli@yahoo.it','','2020-02-12 14:41:21','',0,'developer');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_admin_note_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`)
VALUES
	(1,1,'learn-more','Learn more','https://woocommerce.wordpress.com/','actioned',0),
	(2,2,'connect','Connect','?page=wc-addons&section=helper','actioned',0),
	(3,3,'add-a-product','Add a product','http://seller-website/wp-admin/post-new.php?post_type=product','actioned',1),
	(4,4,'learn-more','Learn more','https://woocommerce.com/mobile/','actioned',0),
	(5,5,'open-customizer','Open Customizer','customize.php','actioned',0),
	(6,6,'share-feedback','Review','https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post','actioned',0),
	(7,7,'learn-more','Learn more','https://woocommerce.com/products/facebook/','unactioned',0),
	(8,7,'install-now','Install now','','unactioned',1),
	(9,8,'yes-please','Yes please!','https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin','actioned',0);

/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_admin_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_admin_notes`;

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`)
VALUES
	(1,'wc-admin-welcome-note','info','en_US','New feature(s)','Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!','info','{}','unactioned','woocommerce-admin','2020-02-12 15:01:14',NULL,0),
	(2,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','info','{}','unactioned','woocommerce-admin','2020-02-12 15:01:14',NULL,0),
	(3,'wc-admin-add-first-product','info','en_US','Add your first product','Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.','product','{}','unactioned','woocommerce-admin','2020-02-12 15:01:15',NULL,0),
	(4,'wc-admin-mobile-app','info','en_US','Install Woo mobile app','Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.','phone','{}','unactioned','woocommerce-admin','2020-02-14 15:04:38',NULL,0),
	(5,'wc-admin-store-notice-setting-moved','info','en_US','Looking for the Store Notice setting?','It can now be found in the Customizer.','info','{}','unactioned','woocommerce-admin','2020-02-14 16:11:53',NULL,0),
	(6,'wc-admin-store-notice-giving-feedback','info','en_US','Review your experience','If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!','info','{}','unactioned','woocommerce-admin','2020-02-15 15:05:46',NULL,0),
	(7,'wc-admin-facebook-extension','info','en_US','Market on Facebook','Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.','thumbs-up','{}','unactioned','woocommerce-admin','2020-02-15 15:05:46',NULL,0),
	(8,'wc-admin-onboarding-email-marketing','info','en_US','Tips, product updates, and inspiration','We\'re here for you — get tips, product updates, and inspiration straight to your mailbox.','mail','{}','unactioned','woocommerce-admin','2020-02-15 15:05:46',NULL,0);

/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_category_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_category_lookup`;

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`)
VALUES
	(15,15);

/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_customer_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_download_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_download_log`;

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_order_coupon_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_order_product_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_order_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_stats`;

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_order_tax_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_wc_product_meta_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`)
VALUES
	(32,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(33,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(34,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(35,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(36,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(37,'woo-belt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(38,'woo-cap',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(39,'woo-sunglasses',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(40,'woo-hoodie-with-pocket',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(41,'woo-hoodie-with-zipper',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(42,'woo-long-sleeve-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(43,'woo-polo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(44,'woo-album',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(45,'woo-single',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(46,'woo-vneck-tee-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(47,'woo-vneck-tee-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(48,'woo-vneck-tee-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(49,'woo-hoodie-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(50,'woo-hoodie-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(51,'woo-hoodie-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(52,'Woo-tshirt-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(53,'Woo-beanie-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(54,'logo-collection',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(55,'wp-pennant',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(56,'woo-hoodie-blue-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(58,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(59,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(60,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(61,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(62,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(69,'',0,0,10.00,10.00,0,NULL,'instock',0,0.00,0),
	(70,'',0,0,10.00,10.00,1,NULL,'instock',0,0.00,0),
	(71,'',0,0,10.00,10.00,1,NULL,'instock',0,0.00,0),
	(73,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(74,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(75,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(76,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(77,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(78,'woo-belt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(79,'woo-cap',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(80,'woo-sunglasses',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(81,'woo-hoodie-with-pocket',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(82,'woo-hoodie-with-zipper',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(83,'woo-long-sleeve-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(84,'woo-polo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(85,'woo-album',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(86,'woo-single',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(87,'woo-vneck-tee-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(88,'woo-vneck-tee-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(89,'woo-vneck-tee-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(90,'woo-hoodie-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(91,'woo-hoodie-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(92,'woo-hoodie-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(93,'Woo-tshirt-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(94,'Woo-beanie-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(95,'logo-collection',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(96,'wp-pennant',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(97,'woo-hoodie-blue-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(100,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(101,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(102,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(103,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(104,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(106,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(107,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(108,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(109,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(110,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(111,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(112,'woo-belt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(113,'woo-cap',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(114,'woo-sunglasses',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(115,'woo-hoodie-with-pocket',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(116,'woo-hoodie-with-zipper',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(117,'woo-long-sleeve-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(118,'woo-polo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(119,'woo-album',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(120,'woo-single',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(121,'woo-vneck-tee-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(122,'woo-vneck-tee-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(123,'woo-vneck-tee-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(124,'woo-hoodie-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(125,'woo-hoodie-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(126,'woo-hoodie-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(127,'Woo-tshirt-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(128,'Woo-beanie-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(129,'logo-collection',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(130,'wp-pennant',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(131,'woo-hoodie-blue-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(132,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(133,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(134,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(135,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(136,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(137,'woo-belt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(138,'woo-cap',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(139,'woo-sunglasses',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(140,'woo-hoodie-with-pocket',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(141,'woo-hoodie-with-zipper',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(142,'woo-long-sleeve-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(143,'woo-polo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(144,'woo-album',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(145,'woo-single',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(146,'woo-vneck-tee-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(147,'woo-vneck-tee-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(148,'woo-vneck-tee-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(149,'woo-hoodie-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(150,'woo-hoodie-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(151,'woo-hoodie-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(152,'Woo-tshirt-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(153,'Woo-beanie-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(154,'logo-collection',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(155,'wp-pennant',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(156,'woo-hoodie-blue-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(159,'woo-vneck-tee',0,0,15.00,20.00,0,NULL,'instock',0,0.00,0),
	(160,'woo-hoodie',0,0,42.00,45.00,0,NULL,'instock',0,0.00,0),
	(161,'woo-hoodie-with-logo',0,0,45.00,45.00,0,NULL,'instock',0,0.00,0),
	(162,'woo-tshirt',0,0,18.00,18.00,0,NULL,'instock',0,0.00,0),
	(163,'woo-beanie',0,0,18.00,18.00,1,NULL,'instock',0,0.00,0),
	(164,'woo-belt',0,0,55.00,55.00,1,NULL,'instock',0,0.00,0),
	(165,'woo-cap',0,0,16.00,16.00,1,NULL,'instock',0,0.00,0),
	(166,'woo-sunglasses',0,0,90.00,90.00,0,NULL,'instock',0,0.00,0),
	(167,'woo-hoodie-with-pocket',0,0,35.00,35.00,1,NULL,'instock',0,0.00,0),
	(168,'woo-hoodie-with-zipper',0,0,45.00,45.00,0,NULL,'instock',0,0.00,0),
	(169,'woo-long-sleeve-tee',0,0,25.00,25.00,0,NULL,'instock',0,0.00,0),
	(170,'woo-polo',0,0,20.00,20.00,0,NULL,'instock',0,0.00,0),
	(171,'woo-album',1,1,15.00,15.00,0,NULL,'instock',0,0.00,0),
	(172,'woo-single',1,1,2.00,2.00,1,NULL,'instock',0,0.00,0),
	(173,'woo-vneck-tee-red',0,0,20.00,20.00,0,NULL,'instock',0,0.00,0),
	(174,'woo-vneck-tee-green',0,0,20.00,20.00,0,NULL,'instock',0,0.00,0),
	(175,'woo-vneck-tee-blue',0,0,15.00,15.00,0,NULL,'instock',0,0.00,0),
	(176,'woo-hoodie-red',0,0,42.00,42.00,1,NULL,'instock',0,0.00,0),
	(177,'woo-hoodie-green',0,0,45.00,45.00,0,NULL,'instock',0,0.00,0),
	(178,'woo-hoodie-blue',0,0,45.00,45.00,0,NULL,'instock',0,0.00,0),
	(179,'Woo-tshirt-logo',0,0,18.00,18.00,0,NULL,'instock',0,0.00,0),
	(180,'Woo-beanie-logo',0,0,18.00,18.00,1,NULL,'instock',0,0.00,0),
	(181,'logo-collection',0,0,18.00,45.00,0,NULL,'instock',0,0.00,0),
	(182,'wp-pennant',0,0,11.05,11.05,0,NULL,'instock',0,0.00,0),
	(183,'woo-hoodie-blue-logo',0,0,45.00,45.00,0,NULL,'instock',0,0.00,0),
	(184,'woo-vneck-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(185,'woo-hoodie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(186,'woo-hoodie-with-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(187,'woo-tshirt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(188,'woo-beanie',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(189,'woo-belt',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(190,'woo-cap',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(191,'woo-sunglasses',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(192,'woo-hoodie-with-pocket',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(193,'woo-hoodie-with-zipper',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(194,'woo-long-sleeve-tee',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(195,'woo-polo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(196,'woo-album',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(197,'woo-single',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(198,'woo-vneck-tee-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(199,'woo-vneck-tee-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(200,'woo-vneck-tee-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(201,'woo-hoodie-red',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(202,'woo-hoodie-green',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(203,'woo-hoodie-blue',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(204,'Woo-tshirt-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(205,'Woo-beanie-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(206,'logo-collection',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(207,'wp-pennant',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0),
	(208,'woo-hoodie-blue-logo',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0);

/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_tax_rate_classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`)
VALUES
	(1,'Reduced rate','reduced-rate'),
	(2,'Zero rate','zero-rate');

/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_webhooks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_webhooks`;

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_api_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_attribute_taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`)
VALUES
	(1,'color','Color','select','menu_order',0),
	(2,'size','Size','select','menu_order',0);

/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_downloadable_product_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_log`;

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_order_itemmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_payment_tokenmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_payment_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`)
VALUES
	(7,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:742:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-02-15T14:06:30+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"martina.gabrielli@yahoo.it\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1581948393);

/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_shipping_zone_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`)
VALUES
	(1,1,'GB','country');

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_shipping_zone_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`)
VALUES
	(0,1,'flat_rate',1,1);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_shipping_zones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`)
VALUES
	(1,'United Kingdom (UK)',0);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_tax_rate_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_woocommerce_tax_rates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
