/*
Navicat MySQL Data Transfer

Source Server         : zzttcc
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : food_online

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-05-23 08:58:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can add question', '8', 'add_question');
INSERT INTO `auth_permission` VALUES ('23', 'Can change question', '8', 'change_question');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete question', '8', 'delete_question');
INSERT INTO `auth_permission` VALUES ('25', 'Can add choice', '9', 'add_choice');
INSERT INTO `auth_permission` VALUES ('26', 'Can change choice', '9', 'change_choice');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete choice', '9', 'delete_choice');
INSERT INTO `auth_permission` VALUES ('28', 'Can add role', '10', 'add_role');
INSERT INTO `auth_permission` VALUES ('29', 'Can change role', '10', 'change_role');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete role', '10', 'delete_role');
INSERT INTO `auth_permission` VALUES ('31', 'Can add users', '11', 'add_users');
INSERT INTO `auth_permission` VALUES ('32', 'Can change users', '11', 'change_users');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete users', '11', 'delete_users');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$S7f5RDI7KAZf$4J9Vfw6Q+eSBqxhI7YlKoVhUPjSO9SciwDEx259GhaI=', null, '0', 'BeginMan', '', '', 'abcd123', '0', '1', '2016-04-20 08:03:02');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$24000$iwBFsfKMEfmp$CS9DRRuLr1VCinpnRhxk0HRqUgN5riDAALTSLLoCfSw=', null, '0', 'BeginMan1', '', '', 'abcd123', '0', '1', '2016-04-20 08:06:57');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$24000$dvDyorepjCIJ$8SzMDWvZG/rSJ0JPPD8p++oy5VLvVSEt+NIzNeaQodc=', '2016-04-25 08:03:45', '0', 'love', '', '', 'beginman@gmail.com', '0', '1', '2016-04-20 09:23:04');
INSERT INTO `auth_user` VALUES ('68', '123', null, '0', '18907185611', '', '', 'dinning@gmail.com', '0', '1', '2016-04-27 03:49:21');
INSERT INTO `auth_user` VALUES ('69', 'pbkdf2_sha256$24000$dDFZVCJQUIOA$rD5QR60L7MRtTfFRcjZRB7D6ZoVYOc6l1boAzq8F8JQ=', '2016-04-27 05:49:04', '0', '18907185622', '', '', 'beginman@gmail.com', '0', '1', '2016-04-27 03:49:57');
INSERT INTO `auth_user` VALUES ('77', '1', null, '0', '1', '', '', 'dinning@gmail.com', '0', '1', '2016-04-28 08:01:07');
INSERT INTO `auth_user` VALUES ('78', '4', null, '0', '3', '', '', 'dinning@gmail.com', '0', '1', '2016-04-28 08:02:25');
INSERT INTO `auth_user` VALUES ('79', '4', null, '0', '4', '', '', 'dinning@gmail.com', '0', '1', '2016-04-28 08:23:36');
INSERT INTO `auth_user` VALUES ('81', 'pbkdf2_sha256$24000$kamInpXeeZVi$JoS/1aPxwDNIWxuCMe0Z9rgYosJuiC7XfDW38ZAfhTE=', '2016-05-06 03:06:28', '0', '6', '', '', 'dinning@gmail.com', '0', '1', '2016-04-28 09:19:36');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for dining_users
-- ----------------------------
DROP TABLE IF EXISTS `dining_users`;
CREATE TABLE `dining_users` (
  `user_id` int(11) NOT NULL,
  `dining_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone_num` bigint(11) DEFAULT NULL,
  `dining_info` varchar(2000) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `is_approved` int(2) NOT NULL DEFAULT '1',
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dining_users
-- ----------------------------
INSERT INTO `dining_users` VALUES ('68', '习得里餐厅', '/static/upload/dining_compress/1.jpg', '18907185611', '啊萨达是大三大四打算打啊萨达阿斯大声打撒打撒大声打撒', '金融港全派餐厅12123', '2', '1', '0');
INSERT INTO `dining_users` VALUES ('77', '金融港全派餐厅7', '/static/index/3.jpg', '1', '色香味俱全', '金融港全派餐厅12qw', '2', '0', '0');
INSERT INTO `dining_users` VALUES ('78', '金融港全派餐厅8', '/static/index/4.jpg', '3', '色香味俱全', '金融港全派餐厅12qwe', '2', '0', '0');
INSERT INTO `dining_users` VALUES ('79', '金融港全派餐厅9', '/static/index/5.jpg', '4', '色香味俱全', '金融港全派餐厅12q', '2', '0', '0');
INSERT INTO `dining_users` VALUES ('81', '金融港全派餐厅1', '/static/index/2.jpg', '6', '色香味俱全', '金融港全派餐厅12ee', '2', '0', '0');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'food_online', 'choice');
INSERT INTO `django_content_type` VALUES ('8', 'food_online', 'question');
INSERT INTO `django_content_type` VALUES ('10', 'food_online', 'role');
INSERT INTO `django_content_type` VALUES ('11', 'food_online', 'users');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2016-04-19 06:58:07');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2016-04-19 06:58:10');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2016-04-19 06:58:10');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2016-04-19 06:58:10');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2016-04-19 06:58:11');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2016-04-19 06:58:11');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2016-04-19 06:58:11');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2016-04-19 06:58:11');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2016-04-19 06:58:12');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2016-04-19 06:58:12');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2016-04-19 06:58:12');
INSERT INTO `django_migrations` VALUES ('12', 'food_online', '0001_initial', '2016-04-19 06:58:12');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2016-04-19 06:58:13');
INSERT INTO `django_migrations` VALUES ('14', 'food_online', '0002_role_users', '2016-04-20 01:11:33');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3rt69lu1it8k23uq7jjo8wonh6da6mjz', 'YTA4N2E1YjBhMWFmNzBjYzQwNzFjZWZlZTYxYjI3N2EyYTEwNWY3MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDk5YTc1NDVkNzc4YmU4OTk0MzkxZDU1M2I3NjY1OTkzNzYzNGNjNSIsInVzZXJfdHlwZSI6MiwiX2F1dGhfdXNlcl9pZCI6IjY5In0=', '2016-05-13 08:58:46');
INSERT INTO `django_session` VALUES ('3zme9gtfnj4d6c0ymv3wzn0wr3v4uxmq', 'NzdmYjY2NzI1M2EwY2NjZjdkMjQ0NGIxYTFjZTYyMTMyMWI4NzA3ZDp7InVzZXJfdHlwZSI6MX0=', '2016-05-10 02:35:40');
INSERT INTO `django_session` VALUES ('5neagzdsjp74qtcwvh63y9bzuyv3i1vw', 'ODk0YTc2MjJhZWVhNGM3ZmI5NTM4YWI5ZTQ5YzYxMDg0ODcyOWVhNzp7InVzZXJfdHlwZSI6Mn0=', '2016-05-12 07:12:52');
INSERT INTO `django_session` VALUES ('74o24lgb5ul9zyuyhrc7hectrrhv6zri', 'NzdmYjY2NzI1M2EwY2NjZjdkMjQ0NGIxYTFjZTYyMTMyMWI4NzA3ZDp7InVzZXJfdHlwZSI6MX0=', '2016-05-12 06:42:38');
INSERT INTO `django_session` VALUES ('cucny2y6hsf1byf4sr8elod19o9fqurd', 'ODk0YTc2MjJhZWVhNGM3ZmI5NTM4YWI5ZTQ5YzYxMDg0ODcyOWVhNzp7InVzZXJfdHlwZSI6Mn0=', '2016-05-23 02:21:45');
INSERT INTO `django_session` VALUES ('d6epuvk4x0euizhs8zu3w7r5u23i0ntt', 'YWZlNTg0MzM4ZDA2ZTQ4N2YyMjgwM2FlZjE5ZWQxZTEwZTc1MzBiNDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2MTU1YWUxYzY5OWJlYTAyZDVkYWU2OTczM2Q2M2MzODMyMDg5MDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0IiwidXNlcl90eXBlIjoxfQ==', '2016-05-10 01:51:56');
INSERT INTO `django_session` VALUES ('gllh05f1ld00xs34l1zh3yl8nynhf9xu', 'NWFjYzM4MDI4YTM3NzZmMDhkZTVhMWUwMmFjODE2YTEzNDVmNjYxYTp7Il9hdXRoX3VzZXJfaWQiOiI4MSIsIl9hdXRoX3VzZXJfaGFzaCI6IjNjODQ0Y2RiYmZlNzNlMTY3NjJhNzYxM2QwMjQ4ODA3MjE4Njc3NWEiLCJ1c2VyX3R5cGUiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-05-23 02:15:47');
INSERT INTO `django_session` VALUES ('h6k7zca33jk0sr9gacclcjpmptlz3sts', 'ODk0YTc2MjJhZWVhNGM3ZmI5NTM4YWI5ZTQ5YzYxMDg0ODcyOWVhNzp7InVzZXJfdHlwZSI6Mn0=', '2016-05-19 06:56:27');
INSERT INTO `django_session` VALUES ('jl3es7xjghrfuieopssqkb0svvrlsqcg', 'NzdmYjY2NzI1M2EwY2NjZjdkMjQ0NGIxYTFjZTYyMTMyMWI4NzA3ZDp7InVzZXJfdHlwZSI6MX0=', '2016-05-10 02:40:39');
INSERT INTO `django_session` VALUES ('k8sjwbjns2a65n2zfft2ltz7s4z9wr6k', 'ODk0YTc2MjJhZWVhNGM3ZmI5NTM4YWI5ZTQ5YzYxMDg0ODcyOWVhNzp7InVzZXJfdHlwZSI6Mn0=', '2016-05-23 02:23:16');
INSERT INTO `django_session` VALUES ('n7p2kj9nw3tig8chzxyszkn6cmahlv74', 'NzdmYjY2NzI1M2EwY2NjZjdkMjQ0NGIxYTFjZTYyMTMyMWI4NzA3ZDp7InVzZXJfdHlwZSI6MX0=', '2016-05-11 06:11:46');
INSERT INTO `django_session` VALUES ('nbziq1ynmwv1l3g4j6ztbfu7ppqe3r2v', 'MGI3NjY5NmUzMzZmMWRjOGIwOTkzZDY3YTU2ZTRmNGE1NDc3YmU4Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2M4NDRjZGJiZmU3M2UxNjc2MmE3NjEzZDAyNDg4MDcyMTg2Nzc1YSIsInVzZXJfdHlwZSI6MiwiX2F1dGhfdXNlcl9pZCI6IjgxIn0=', '2016-05-20 01:50:18');
INSERT INTO `django_session` VALUES ('p93mieeclh81n8j2nui84w7bg7ms7wr2', 'ZjFjMDZlNjE3NWI2MDc0MTFkMGUyNzA2ZTE2NmM5MTNkN2U4YTdlYjp7fQ==', '2016-05-11 03:33:05');
INSERT INTO `django_session` VALUES ('qpilcrnrql8o6rvbdap2uhm929cr8ecb', 'NzdmYjY2NzI1M2EwY2NjZjdkMjQ0NGIxYTFjZTYyMTMyMWI4NzA3ZDp7InVzZXJfdHlwZSI6MX0=', '2016-05-10 03:51:11');

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `dining_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0' COMMENT '0:ok 1:deleted',
  PRIMARY KEY (`id`),
  KEY `food_to_dining` (`dining_id`),
  CONSTRAINT `food_to_dining` FOREIGN KEY (`dining_id`) REFERENCES `dining_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('1', '/static/index/food/1.jpg', '小龙虾1', '123', '81', '2016-05-06 11:38:13', '0');
INSERT INTO `foods` VALUES ('2', '/static/index/food/2.jpg', '小龙虾13', '123123', '81', '2016-05-06 11:38:30', '0');
INSERT INTO `foods` VALUES ('3', '/static/index/food/4.jpg', '小龙虾111qwe', 'sdfsdfsdf', '81', '2016-05-06 11:38:37', '0');
INSERT INTO `foods` VALUES ('4', '/static/index/food/6.jpg', '小龙虾4545', 'sse345345', '81', '2016-05-06 11:38:50', '0');
INSERT INTO `foods` VALUES ('5', '/static/index/food/5.jpg', '22小龙虾112', 'aasdf', '81', '2016-05-06 11:39:05', '0');
INSERT INTO `foods` VALUES ('6', '/static/index/food/7.jpg', 'fsdfs小龙虾1', 'sdfsdfsdf', '81', '2016-05-06 11:39:11', '0');
INSERT INTO `foods` VALUES ('7', '/static/index/food/8.jpg', '2323小龙虾1', 'sdfsdfsdf', '81', '2016-05-06 11:39:18', '0');
INSERT INTO `foods` VALUES ('8', '/static/index/food/4.jpg', '2222小龙虾1', 'ffffffffff', '81', '2016-05-06 11:39:34', '0');

-- ----------------------------
-- Table structure for nomal_users
-- ----------------------------
DROP TABLE IF EXISTS `nomal_users`;
CREATE TABLE `nomal_users` (
  `user_id` int(11) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone_num` bigint(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nomal_users
-- ----------------------------
INSERT INTO `nomal_users` VALUES ('69', null, null, '18907185622', null, null, '1', '0');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test1` varchar(255) DEFAULT NULL,
  `test2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1', '2');
INSERT INTO `test` VALUES ('2', 'love', null);
