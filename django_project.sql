/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 172.18.69.240:3306
 Source Schema         : django_project

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 29/03/2021 13:15:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (1, '测试');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (5, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (1, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 72);
COMMIT;

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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (12, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (13, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (14, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (15, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add Bookmark', 7, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (26, 'Can change Bookmark', 7, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Bookmark', 7, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (28, 'Can add User Setting', 8, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (29, 'Can change User Setting', 8, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (30, 'Can delete User Setting', 8, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (31, 'Can add User Widget', 9, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (32, 'Can change User Widget', 9, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (33, 'Can delete User Widget', 9, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (34, 'Can add log entry', 10, 'add_log');
INSERT INTO `auth_permission` VALUES (35, 'Can change log entry', 10, 'change_log');
INSERT INTO `auth_permission` VALUES (36, 'Can delete log entry', 10, 'delete_log');
INSERT INTO `auth_permission` VALUES (37, 'Can view Bookmark', 7, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (38, 'Can view log entry', 10, 'view_log');
INSERT INTO `auth_permission` VALUES (39, 'Can view User Setting', 8, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (40, 'Can view User Widget', 9, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (41, 'Can add 测试人员', 11, 'add_users');
INSERT INTO `auth_permission` VALUES (42, 'Can change 测试人员', 11, 'change_users');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 测试人员', 11, 'delete_users');
INSERT INTO `auth_permission` VALUES (44, 'Can view 测试人员', 11, 'view_users');
INSERT INTO `auth_permission` VALUES (45, 'Can add 接口文档', 12, 'add_api');
INSERT INTO `auth_permission` VALUES (46, 'Can change 接口文档', 12, 'change_api');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 接口文档', 12, 'delete_api');
INSERT INTO `auth_permission` VALUES (48, 'Can add 域名地址', 13, 'add_domain');
INSERT INTO `auth_permission` VALUES (49, 'Can change 域名地址', 13, 'change_domain');
INSERT INTO `auth_permission` VALUES (50, 'Can delete 域名地址', 13, 'delete_domain');
INSERT INTO `auth_permission` VALUES (51, 'Can add 基础路径', 14, 'add_basepath');
INSERT INTO `auth_permission` VALUES (52, 'Can change 基础路径', 14, 'change_basepath');
INSERT INTO `auth_permission` VALUES (53, 'Can delete 基础路径', 14, 'delete_basepath');
INSERT INTO `auth_permission` VALUES (54, 'Can add 接口标签', 15, 'add_tag');
INSERT INTO `auth_permission` VALUES (55, 'Can change 接口标签', 15, 'change_tag');
INSERT INTO `auth_permission` VALUES (56, 'Can delete 接口标签', 15, 'delete_tag');
INSERT INTO `auth_permission` VALUES (57, 'Can view 接口文档', 12, 'view_api');
INSERT INTO `auth_permission` VALUES (58, 'Can view 基础路径', 14, 'view_basepath');
INSERT INTO `auth_permission` VALUES (59, 'Can view 域名地址', 13, 'view_domain');
INSERT INTO `auth_permission` VALUES (60, 'Can view 接口标签', 15, 'view_tag');
INSERT INTO `auth_permission` VALUES (61, 'Can add 接口测试点', 16, 'add_apitest');
INSERT INTO `auth_permission` VALUES (62, 'Can change 接口测试点', 16, 'change_apitest');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 接口测试点', 16, 'delete_apitest');
INSERT INTO `auth_permission` VALUES (64, 'Can add 接口版本号', 17, 'add_version');
INSERT INTO `auth_permission` VALUES (65, 'Can change 接口版本号', 17, 'change_version');
INSERT INTO `auth_permission` VALUES (66, 'Can delete 接口版本号', 17, 'delete_version');
INSERT INTO `auth_permission` VALUES (67, 'Can view 接口测试点', 16, 'view_apitest');
INSERT INTO `auth_permission` VALUES (68, 'Can view 接口版本号', 17, 'view_version');
INSERT INTO `auth_permission` VALUES (69, 'Can add 接口测试点', 18, 'add_versiontest');
INSERT INTO `auth_permission` VALUES (70, 'Can change 接口测试点', 18, 'change_versiontest');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 接口测试点', 18, 'delete_versiontest');
INSERT INTO `auth_permission` VALUES (72, 'Can view 接口测试点', 18, 'view_versiontest');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$YpBU0T09V1Fm$WERwyxLrLnWtx1u8HLXQ8Tp4EqTKykcYxFjxufuLx5s=', '2021-03-29 05:15:15.872918', 1, 'admin', '', '', '', 1, 1, '2021-02-16 03:21:20.454497');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$36000$MbvfKObVoZSf$O5NhtN25rXwvT+dAfVhYNTlzFK7TJgq2yT6f/HD4GIQ=', '2021-03-26 08:52:28.263074', 0, 'anan', '', '', '', 1, 1, '2021-03-03 10:16:29.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$36000$P4KYMRc4tFSF$Hd6ETIiG6am5hu2oDSML/PGzWm5IF1X7j1P45SZ5ZIs=', '2021-03-22 08:41:26.771879', 0, 'yanjiao', '', '', '', 1, 1, '2021-03-22 03:56:12.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$36000$NhfdqOiTiNxB$btIg3ZyfW8o4Y9eplyOHRCAa4BQUz3v5sU5kEpQZhOM=', '2021-03-22 03:59:17.526041', 0, 'zs', '', '', '', 1, 1, '2021-03-22 03:58:56.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_groups` VALUES (2, 2, 1);
INSERT INTO `auth_user_groups` VALUES (1, 3, 1);
INSERT INTO `auth_user_groups` VALUES (3, 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
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

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'frontpage', 'users');
INSERT INTO `django_content_type` VALUES (12, 'interface', 'api');
INSERT INTO `django_content_type` VALUES (16, 'interface', 'apitest');
INSERT INTO `django_content_type` VALUES (14, 'interface', 'basepath');
INSERT INTO `django_content_type` VALUES (13, 'interface', 'domain');
INSERT INTO `django_content_type` VALUES (15, 'interface', 'tag');
INSERT INTO `django_content_type` VALUES (17, 'interface', 'version');
INSERT INTO `django_content_type` VALUES (18, 'interface', 'versiontest');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-02-16 03:16:40.187397');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-02-16 03:16:40.510918');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-02-16 03:16:40.610842');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-02-16 03:16:40.642404');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2021-02-16 03:16:40.741392');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2021-02-16 03:16:40.783207');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2021-02-16 03:16:40.850426');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2021-02-16 03:16:40.880646');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2021-02-16 03:16:40.965576');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2021-02-16 03:16:40.982957');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2021-02-16 03:16:41.004273');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2021-02-16 03:16:41.087929');
INSERT INTO `django_migrations` VALUES (13, 'frontpage', '0001_initial', '2021-02-16 03:16:41.145276');
INSERT INTO `django_migrations` VALUES (14, 'frontpage', '0002_auto_20210216_1116', '2021-02-16 03:16:41.189419');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2021-02-16 03:16:41.239094');
INSERT INTO `django_migrations` VALUES (16, 'xadmin', '0001_initial', '2021-02-16 03:16:41.459490');
INSERT INTO `django_migrations` VALUES (17, 'xadmin', '0002_log', '2021-02-16 03:16:41.568716');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0003_auto_20160715_0100', '2021-02-16 03:16:41.618992');
INSERT INTO `django_migrations` VALUES (19, 'interface', '0001_initial', '2021-02-16 08:20:28.109925');
INSERT INTO `django_migrations` VALUES (20, 'interface', '0002_auto_20210216_1750', '2021-02-16 09:50:53.558057');
INSERT INTO `django_migrations` VALUES (21, 'interface', '0003_auto_20210302_1414', '2021-03-02 06:14:54.620305');
INSERT INTO `django_migrations` VALUES (22, 'interface', '0004_auto_20210302_1443', '2021-03-02 06:43:17.385749');
INSERT INTO `django_migrations` VALUES (23, 'interface', '0005_remove_versiontest_apitest', '2021-03-02 07:14:21.207429');
INSERT INTO `django_migrations` VALUES (24, 'interface', '0006_auto_20210302_1536', '2021-03-02 07:37:05.106246');
INSERT INTO `django_migrations` VALUES (25, 'interface', '0007_auto_20210302_1906', '2021-03-02 11:06:12.517778');
INSERT INTO `django_migrations` VALUES (26, 'interface', '0008_auto_20210302_1913', '2021-03-02 11:13:26.139925');
INSERT INTO `django_migrations` VALUES (27, 'interface', '0009_auto_20210302_1920', '2021-03-02 11:20:51.404957');
INSERT INTO `django_migrations` VALUES (28, 'interface', '0010_auto_20210303_1524', '2021-03-03 07:24:42.608936');
INSERT INTO `django_migrations` VALUES (29, 'interface', '0011_auto_20210309_1408', '2021-03-09 06:08:20.802110');
INSERT INTO `django_migrations` VALUES (30, 'interface', '0012_auto_20210311_1342', '2021-03-11 05:42:31.570401');
INSERT INTO `django_migrations` VALUES (31, 'interface', '0013_auto_20210311_1611', '2021-03-11 08:11:37.314241');
INSERT INTO `django_migrations` VALUES (32, 'interface', '0014_auto_20210311_1629', '2021-03-11 08:29:13.777414');
INSERT INTO `django_migrations` VALUES (33, 'interface', '0015_auto_20210315_1140', '2021-03-15 03:40:40.358709');
INSERT INTO `django_migrations` VALUES (34, 'interface', '0016_auto_20210315_1143', '2021-03-15 03:43:12.485896');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0acbz553gg5hz0vj6xzcp1v9auwo5t38', 'NWE0NTkzNjhlZjExNDNkYTIxNzc4NTE3YjgwMjZkMGY2Yzk3ZTIzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaXRlc3QiXSwiIl19', '2021-04-12 05:15:22.356510');
INSERT INTO `django_session` VALUES ('1bkysganmpxu1nh4rbq7ydwd6tq6sxsr', 'MGRkMTQwMDVlMjQ3NzIzYzczOGMwMGMzM2Y4NTAxOTk4MzVmZDQ2ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDA3ZTE0NjRhOWUxYmExYmM1YmZmNDUyNGUzZWZlNTI5ZGE5ZTBhIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifV0iLCJMSVNUX1FVRVJZIjpbWyJpbnRlcmZhY2UiLCJ2ZXJzaW9udGVzdCJdLCIiXX0=', '2021-04-09 06:28:36.523767');
INSERT INTO `django_session` VALUES ('2shrlukjun47chko3h7zjsf7d571bs36', 'ZmE2NWNiYmY5N2I0MjAxMmU3ZTc1ZTgwZTY2Mjg3YTg1YmEzZWYyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIl9xXz0mX2NvbHM9dmVyc2lvbi5hcGl0ZXN0My5hcGl0ZXN0LnJlc3VsdC50ZXN0X2RhdGUudGVzdF91c2VyLnByb2RfdXNlci5yZW1hcmsiXX0=', '2021-03-26 10:47:09.100223');
INSERT INTO `django_session` VALUES ('3h3b5dmjywnofsltyqdzer4dvlv2rmoe', 'MTE0NTA1MWU0MDM2OWYxNTViNzY2ZjRmZjI4ZDJmOTRlNWJhMjhlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-03-17 10:18:01.784105');
INSERT INTO `django_session` VALUES ('7gvxnb8b8w2o0qffz20mzoqeayxw0ajw', 'ZGYyZTYwZTM2OWVhYTQ0OWFkMjQ2MjNiOTM2MTA2OWZmMGZiYjU2ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIn1dIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwiYXBpdGVzdCJdLCIiXX0=', '2021-03-17 10:30:22.622514');
INSERT INTO `django_session` VALUES ('hlo7faumqo8p5j2ewvpcmnfofd4o42ui', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-04-08 11:06:37.502134');
INSERT INTO `django_session` VALUES ('n4rg6a5nppx7rf2p6wfajqjbj18ytn1y', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-04-12 03:03:27.594499');
INSERT INTO `django_session` VALUES ('omvejkufcmy3fvvgjig0nj5kz57mhf5y', 'NTcxZmQzMmI0MTk4OWZlNTBiZDQ0MGEyYzc2OTVjOGRkNTYzNmIwNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwidmVyc2lvbnRlc3QiXSwiIl0sIm5hdl9tZW51IjoiW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIn1dIn0=', '2021-04-09 09:05:43.315366');
INSERT INTO `django_session` VALUES ('v1w4y3i985donko66lvbkqeanxtxvr0c', 'OWFjNmNkYzBiMjA5NDA5NGIxY2RiNTYyMzUwNTYxZWI0NDYxYmJhYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb24iXSwiIl19', '2021-04-02 08:18:05.213173');
INSERT INTO `django_session` VALUES ('vmu7340uvpml8qhgh3mhvyzo0br5pzla', 'ZWNlYjMzYzRlZDZlODA4NTI1YTMxZjBkMjU2YzcxNWNmZDU1ZDkxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXHU1M2Y3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2RvbWFpbi9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC91c2VyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJpbnRlcmZhY2UiLCJhcGkiXSwiIl19', '2021-03-02 11:04:11.274915');
INSERT INTO `django_session` VALUES ('z7bax2tc2l4cn0zlpul4flos2a8zcbhv', 'OGQzYWJmY2QyNjJiNTE4ZDdhMGEzNDA3NTUzMzQ4ODQ1NmYzMzUzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIn1dIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwidmVyc2lvbnRlc3QiXSwiIl19', '2021-03-29 08:19:45.843947');
COMMIT;

-- ----------------------------
-- Table structure for frontpage_users
-- ----------------------------
DROP TABLE IF EXISTS `frontpage_users`;
CREATE TABLE `frontpage_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frontpage_users
-- ----------------------------
BEGIN;
INSERT INTO `frontpage_users` VALUES (1, '2021-02-16 03:25:37.482932', '2021-02-16 03:25:37.482975', 'test', 'test1234', 1, 0);
INSERT INTO `frontpage_users` VALUES (2, '2021-02-16 07:02:50.931479', '2021-02-16 07:02:50.931521', 'test2', 'test1234', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for interface_api
-- ----------------------------
DROP TABLE IF EXISTS `interface_api`;
CREATE TABLE `interface_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `path` varchar(128) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `remark` longtext,
  `del_flag` int(11) NOT NULL,
  `basepath_id` int(11) DEFAULT NULL,
  `domain_id` int(11) NOT NULL,
  `filepath` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `interface_api_domain_id_daa77600_fk_interface_domain_id` (`domain_id`),
  KEY `interface_api_basepath_id_2a15c24a_fk_interface_basepath_id` (`basepath_id`),
  CONSTRAINT `interface_api_basepath_id_2a15c24a_fk_interface_basepath_id` FOREIGN KEY (`basepath_id`) REFERENCES `interface_basepath` (`id`),
  CONSTRAINT `interface_api_domain_id_daa77600_fk_interface_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `interface_domain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_api
-- ----------------------------
BEGIN;
INSERT INTO `interface_api` VALUES (2, '2021-03-02 08:08:07.945391', '2021-03-09 09:15:01.235338', 'invoiceCreate', 'post', '/invoice', '在app订单详情页创建电子发票', '公司普票：\r\n\"body\": {\r\n	\"orderNumber\": \"20210301164356588KE3tdxftw4\",\r\n	\"buyerType\": 20,\r\n	\"buyerName\": \'公司名称\',\r\n	\"email\": \"zhaoshuang02@jiayans.net\",\r\n	\"invoiceTotalPriceTax\": 100.99,\r\n	\"buyerTaxNo\": \'123456789\',\r\n	\"buyerAddress\": \"北京\",\r\n	\"buyerPhone\": \"010-123456\",\r\n	\"buyerBank\": \"北京银行\",\r\n	\"buyerBankAccount\": \"63256325500000000000000\"\r\n}\r\n个人发票：\r\n\"body\":  {\r\n	\"orderNumber\": \"20210301164356588KE3tdxftw4\",\r\n	\"buyerType\": 10,\r\n	\"buyerName\": \'aaaa\',\r\n	\"email\": \"zhaoshuang02@jiayans.net\",\r\n	\"invoiceTotalPriceTax\": 1.00\r\n}', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4632');
INSERT INTO `interface_api` VALUES (7, '2021-03-03 05:47:31.055539', '2021-03-09 09:15:20.179664', 'orderDetail', 'get', '/order/{orderNumber}', '根据订单编号查询订单详情', '', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3693');
INSERT INTO `interface_api` VALUES (8, '2021-03-09 05:51:11.266879', '2021-03-10 10:59:13.912807', 'paymentNotify', 'put', '/payment/{orderNumber}/payment/notify', '支付回调通知', '\"body\": {\"resultCode\": \"SUCCESS\", \"totalFee\": 100, \"paymentType\": 70}，\r\n\"path\": {\"orderNumber\": \"20210310153800957Elu3IrREts\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/479');
INSERT INTO `interface_api` VALUES (9, '2021-03-09 07:48:30.434173', '2021-03-11 02:43:29.093568', 'exportFinanceOrder', 'post', '/finance/order', '导出财务清算列表', '\"body\": {\r\n	\"channel\": \"JYWS\",\r\n	\"pageSize\": 10000,\r\n	\"pageIndex\": 1,\r\n	\"beginDate\": \"2020-03-01 00:00:00\",\r\n	\"endDate\": \"2021-03-10 00:00:00\",\r\n	\"paymentType\":80\r\n}', 0, 3, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4389');
INSERT INTO `interface_api` VALUES (10, '2021-03-09 08:02:42.432503', '2021-03-11 02:43:21.961644', 'exportTask', 'get', '/{code}', '查询导出task', '', 0, 3, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4335');
INSERT INTO `interface_api` VALUES (11, '2021-03-09 08:23:34.485771', '2021-03-09 09:14:21.565445', 'financeOrderSearch', 'post', '/finance/order/clearing/search', '财务清算列表搜索', '\"body\": {\r\n	\"pageIndex\": 1,\r\n	\"pageSize\": 50,\r\n	\"channel\": \"JYWS\",\r\n	\"paymentType\": 80\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4137');
INSERT INTO `interface_api` VALUES (12, '2021-03-10 02:17:08.890782', '2021-03-11 02:46:43.342989', 'coolLoanApply', 'post', '/cool/loan/apply', '订单-库分期加密数据请求', '\"body\": {\r\n	\"orderNumber\": \"20210310105251192rPEq6xpT5k\",\r\n	\"frontNotifyUrl\": \"http://www.frontNotifyUrl.com\",\r\n}', 0, 5, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4647');
INSERT INTO `interface_api` VALUES (13, '2021-03-10 02:23:56.675813', '2021-03-10 03:57:50.646157', 'orderCreate', 'post', '/prePay', '创建订单', '\"body\": {\r\n	\"commodityId\": 2970,\r\n	\"commodityNum\": 1,\r\n	\"discountCode\": \"\",\r\n	\"instalments\": True,\r\n       \"oldOrderNumber\":\"调班原订单号\"\r\n}', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/2875');
INSERT INTO `interface_api` VALUES (14, '2021-03-10 02:24:58.522385', '2021-03-10 05:27:32.110703', 'orderPay', 'post', '/pay', '订单发起支付', '\"body\": {\r\n	\"type\": \"JYWS\",\r\n	\"orderId\": \"20210310105251192rPEq6xpT5k\",\r\n	# \"inWeiXin\": True,\r\n	# \"paymentModel\": \"WEIXIN_PAY\",  # WEIXIN_PAY/ALI_PAY\r\n}', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/2879');
INSERT INTO `interface_api` VALUES (15, '2021-03-11 03:23:16.487814', '2021-03-11 03:23:16.487814', 'invoiceDetail', 'get', '/invoice', '发票详情', '', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4587');
INSERT INTO `interface_api` VALUES (16, '2021-03-11 03:25:31.423840', '2021-03-15 08:09:40.701109', 'classificationList', 'get', '/classification/list', '商品类目列表', '\"query\": {\"shopWindow\": \"EX\"}  # EX / PU\r\n有缓存db0-rediskey=CLASSFICATION_KEY:jyws_***', 0, 7, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3215');
INSERT INTO `interface_api` VALUES (17, '2021-03-11 10:20:23.199064', '2021-03-11 10:24:29.012549', 'chaptersList', 'get', '/questionTypes/chapters', '章节列表', '\"query\": {\"planType\": \"MY_WRONG\"}  # CHAPTER_PRACTICE(\"章节练习\"), ONLY_WRONG_PRACTICE(\"只做错题\"), MY_COLLECT(\"我的收藏\"), MY_WRONG(\"我的错题\");', 0, 8, 1, 'http://vuca-fe.jiayans.cn:3001/project/41/interface/api/79');
INSERT INTO `interface_api` VALUES (18, '2021-03-11 11:07:47.739010', '2021-03-11 11:21:16.025205', 'examTypeSubjectList', 'get', '/examTypes/subjects', '获取考试类型列表-包含科目（3级结构）', '', 0, 8, 1, 'http://vuca-fe.jiayans.cn:3001/project/41/interface/api/127');
INSERT INTO `interface_api` VALUES (20, '2021-03-12 08:29:44.970084', '2021-03-15 03:44:19.323178', 'commodityCreate', 'post', '/commodity', '创建商品', '\"body\": {\"channel\": \"JYWS\",\r\n	 \"name\": \"名称必填\",  # 必填\r\n	 \"classificationIds\": [2118],  # 必填\r\n	 \"coverImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1594018025987.png\",  # 必填\r\n	 \"shareImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265902175.png\",\r\n	 \"commodityImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265897777.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265898166.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265899575.png\",\r\n	 \"supplierId\": \"0\",  # 0是自营\r\n	 \"resellerCommodityId\": \"\", #武汉加盐商品id\r\n	 \"beiJingResellerCommodityId\": \"\",  #北京加盐商品id\r\n	 \"agreementRuleType\": 1010,  # 必填 规则类型  1000：永久,1005：固定,1010：周期,\r\n	 \"agreementRule\": {\"agreementRuleType\": 1010, \"periodTime\": 120},\r\n	 \"originalPrice\": 100000,  # 必填\r\n	 \"price\": 100000,  # 必填\r\n	 \"costPrice\": 100,  # 必填\r\n	 \"invoice\": True,\r\n	 \"instalments\": True,\r\n	 \"instalmentsPercent\": 10,\r\n	 \"instalmentsType\": \"COOL,ZERO_SHOPPING,COFFEE\",\r\n	 \"sortNumber\": 1,\r\n         \"initBuyerNumber\": 1,\r\n	 \"tag\": \"小课\",\r\n	 \"shopWindow\": \"YC\",\r\n	 \"description\": \"描述必填\",  # 必填\r\n	 \"showApp\": True,\r\n	 \"showMp\": True,\r\n	 \"showPc\": True,\r\n	 \"property\": {\"orderFlow\": \"standard\"},  # standard标准支付/fast快速支付\r\n	 \"type\": 2,\r\n	 \"resellerType\": \"youzan\",\r\n	 \"imSupport\": 0,  # 是否支持群聊:0 不支持，1支持\r\n	 \"changeClassSupport\": 0,  # 是否支持调班:0 不支持，1支持\r\n	 }', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1803');
INSERT INTO `interface_api` VALUES (21, '2021-03-12 08:29:55.926777', '2021-03-12 09:30:44.624752', 'commodityEdit', 'put', '/commodity/{id}', '修改商品', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1827');
INSERT INTO `interface_api` VALUES (22, '2021-03-12 08:33:19.919169', '2021-03-12 09:30:48.033634', 'commoditySearch', 'post', '/commodity/search', '商品列表搜索', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1815');
INSERT INTO `interface_api` VALUES (23, '2021-03-12 08:50:55.653786', '2021-03-12 08:52:01.768924', 'groupUserWaitList', 'post', '/group/user/wait/list', '批量加群用户列表', '', 0, 9, 2, 'http://vuca-fe.jiayans.cn:3001/project/128/interface/api/4107');
INSERT INTO `interface_api` VALUES (24, '2021-03-12 08:59:07.997848', '2021-03-15 05:27:44.545215', 'userCreate', 'post', '/user/', '创建用户信息', '\"body\": {\"channel\": \"JYWS\",\r\n		 \"name\": \"zs\",\r\n		 \"username\": \"test1111\",\r\n		 \"password\": \"test1111\",\r\n		 \"roleIds\": [2],\r\n		 \"masterTeacherIds\": [8377],\r\n		 \"channelIds\": [43],\r\n		 \"status\": 10,\r\n		 \"headImageUrl\": \"https://r-exam-fe.jiayans.net/school/test/JYWS/cms/1615450446836.png\",\r\n		 \"gender\": 2,\r\n		 \"email\": \"zs@163.com\",\r\n		 \"phoneNumber\": \"15510311111\",\r\n		 }', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/771');
INSERT INTO `interface_api` VALUES (25, '2021-03-12 08:59:41.259878', '2021-03-15 05:27:20.322957', 'userSearch', 'post', '/user/search', '用户列表搜索', '\"body\": {\'name\': \"zs\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/771');
INSERT INTO `interface_api` VALUES (26, '2021-03-12 09:00:36.502117', '2021-03-15 05:28:04.745173', 'userEdit', 'put', '/user/{userId}', '修改用户信息', '\"body\": {\"channel\": \"JYWS\",\r\n		 \"name\": \"zs\",\r\n		 \"username\": \"test1111\",\r\n		 \"password\": \"test1111\",\r\n		 \"roleIds\": [2],\r\n		 \"masterTeacherIds\": [8377],\r\n		 \"channelIds\": [43],\r\n		 \"status\": 10,\r\n		 \"headImageUrl\": \"https://r-exam-fe.jiayans.net/school/test/JYWS/cms/1615450446836.png\",\r\n		 \"gender\": 2,\r\n		 \"email\": \"zs@163.com\",\r\n		 \"phoneNumber\": \"15510311111\",\r\n		 },\r\n\"path\": {\'userId\': 249}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/787');
INSERT INTO `interface_api` VALUES (27, '2021-03-12 09:01:52.611539', '2021-03-15 05:28:37.490621', 'userDetail', 'get', '/user/{userId}', '获取用户信息', '\"path\": {\'userId\': 249}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/783');
INSERT INTO `interface_api` VALUES (28, '2021-03-12 09:02:39.134101', '2021-03-15 05:27:07.449380', 'userDetailBatch', 'get', '/user/{userIds}/batch', '批量获取用户信息', '\"path\": {\'userIds\': \"249,248\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/779');
INSERT INTO `interface_api` VALUES (29, '2021-03-12 09:03:47.817418', '2021-03-15 05:26:55.090428', 'userFind', 'get', '/user/', '用户名密码查询', '\"query\": {\'userName\': \'test1111\', \'password\': \"test1111\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/767');
INSERT INTO `interface_api` VALUES (30, '2021-03-15 05:42:47.618397', '2021-03-15 08:08:01.219091', 'classificationCreate', 'get', '/classification', '创建类目', '\"body\":{\"channel\":\"JYWS\",\"name\":\"名称\",\"show\":0}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1759');
INSERT INTO `interface_api` VALUES (31, '2021-03-15 05:43:24.533688', '2021-03-15 08:10:54.327206', 'classificationEdit', 'get', '/classification/{id}', '修改类目', '\"body\":{\"channel\":\"JYWS\",\"id\":2098,\"name\":\"公务员\",\"show\":0};\r\n\"path\":{\"id\":2098}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4652');
INSERT INTO `interface_api` VALUES (32, '2021-03-15 09:18:00.663525', '2021-03-15 10:16:40.526820', 'share', 'get', '/share', '分享接口', '\"query\": {\r\n	\"shareType\": \"SHARE_EXAM\", \r\n	\"shareId\": \"SHARE_EXAM\",\r\n}', 0, 10, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3191');
INSERT INTO `interface_api` VALUES (33, '2021-03-15 09:18:44.178168', '2021-03-15 10:17:06.879355', 'shareConsume', 'post', '/consumeShare', '消费分享接口', '\"body\": {\r\n	\"code\": \"-1054012404\",\r\n	\"type\": \"SHARE_EXAM\",\r\n}', 0, 10, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3415');
INSERT INTO `interface_api` VALUES (34, '2021-03-15 09:24:51.248665', '2021-03-15 10:17:34.129490', 'shareConsumeSuccessList', 'get', '/consumeSuccess/list', '领取分享成功列表', '\"query\": {\r\n	\"type\": \"SHARE_EXAM\",\r\n	\"targetId\": \"SHARE_EXAM\",\r\n}', 0, 10, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3427');
INSERT INTO `interface_api` VALUES (35, '2021-03-15 10:22:28.067483', '2021-03-15 10:24:26.080919', 'phoneNumberDecode', 'post', '/student/phoneNumber/decode', '学员手机号解密', '\"body\": {\"phoneNumber\": \"H5SS5Cy+VoDXkvdTlBE4TA==\"}', 0, 2, 2, NULL);
INSERT INTO `interface_api` VALUES (36, '2021-03-15 10:22:35.473679', '2021-03-15 10:23:15.674189', 'phoneNumberEncode', 'post', '/student/phoneNumber/encode', '学员手机号加密', '\"body\": {\"phoneNumber\": \"13811556304\"}', 0, 2, 2, NULL);
INSERT INTO `interface_api` VALUES (37, '2021-03-15 10:26:02.087202', '2021-03-16 06:13:48.135923', 'getToken', 'get', '/devp/token', '获取token', '\"query\":{\"phone\":\"15511112222\"}', 0, 11, 1, NULL);
INSERT INTO `interface_api` VALUES (39, '2021-03-16 06:13:59.101601', '2021-03-16 06:15:31.357911', 'meInfo', 'get', '/me/info', '获取用户个人信息', '', 0, 11, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3227');
INSERT INTO `interface_api` VALUES (40, '2021-03-22 08:47:18.838005', '2021-03-22 08:48:59.732370', 'deleteUserIds', 'get', '/delete/autotest/userInvalid', '批量删除用户', '\"query\": {\"userId\": \"多个userId，用逗号隔开\"}', 0, 5, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for interface_api_tag
-- ----------------------------
DROP TABLE IF EXISTS `interface_api_tag`;
CREATE TABLE `interface_api_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `interface_api_tag_api_id_tag_id_38018f22_uniq` (`api_id`,`tag_id`),
  KEY `interface_api_tag_tag_id_da9ff573_fk_interface_tag_id` (`tag_id`),
  CONSTRAINT `interface_api_tag_api_id_20640249_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`),
  CONSTRAINT `interface_api_tag_tag_id_da9ff573_fk_interface_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `interface_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_api_tag
-- ----------------------------
BEGIN;
INSERT INTO `interface_api_tag` VALUES (3, 2, 1);
INSERT INTO `interface_api_tag` VALUES (4, 7, 1);
INSERT INTO `interface_api_tag` VALUES (5, 8, 2);
INSERT INTO `interface_api_tag` VALUES (6, 9, 2);
INSERT INTO `interface_api_tag` VALUES (7, 10, 2);
INSERT INTO `interface_api_tag` VALUES (8, 11, 2);
INSERT INTO `interface_api_tag` VALUES (9, 12, 1);
INSERT INTO `interface_api_tag` VALUES (10, 13, 1);
INSERT INTO `interface_api_tag` VALUES (11, 14, 1);
INSERT INTO `interface_api_tag` VALUES (12, 15, 1);
INSERT INTO `interface_api_tag` VALUES (13, 16, 1);
INSERT INTO `interface_api_tag` VALUES (14, 17, 1);
INSERT INTO `interface_api_tag` VALUES (15, 18, 1);
INSERT INTO `interface_api_tag` VALUES (16, 20, 2);
INSERT INTO `interface_api_tag` VALUES (17, 21, 2);
INSERT INTO `interface_api_tag` VALUES (18, 22, 2);
INSERT INTO `interface_api_tag` VALUES (19, 23, 2);
INSERT INTO `interface_api_tag` VALUES (20, 24, 2);
INSERT INTO `interface_api_tag` VALUES (21, 25, 2);
INSERT INTO `interface_api_tag` VALUES (22, 26, 2);
INSERT INTO `interface_api_tag` VALUES (23, 27, 2);
INSERT INTO `interface_api_tag` VALUES (24, 28, 2);
INSERT INTO `interface_api_tag` VALUES (25, 29, 2);
INSERT INTO `interface_api_tag` VALUES (26, 30, 2);
INSERT INTO `interface_api_tag` VALUES (27, 31, 2);
INSERT INTO `interface_api_tag` VALUES (28, 32, 1);
INSERT INTO `interface_api_tag` VALUES (29, 33, 1);
INSERT INTO `interface_api_tag` VALUES (30, 34, 1);
INSERT INTO `interface_api_tag` VALUES (31, 35, 2);
INSERT INTO `interface_api_tag` VALUES (32, 36, 2);
INSERT INTO `interface_api_tag` VALUES (33, 37, 1);
INSERT INTO `interface_api_tag` VALUES (35, 39, 1);
INSERT INTO `interface_api_tag` VALUES (36, 40, 1);
COMMIT;

-- ----------------------------
-- Table structure for interface_apitest
-- ----------------------------
DROP TABLE IF EXISTS `interface_apitest`;
CREATE TABLE `interface_apitest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `desc` longtext NOT NULL,
  `remark` longtext,
  `del_flag` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `interface_apitest_api_id_dae701f8_fk_interface_api_id` (`api_id`),
  CONSTRAINT `interface_apitest_api_id_dae701f8_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_apitest
-- ----------------------------
BEGIN;
INSERT INTO `interface_apitest` VALUES (4, '2021-03-02 08:08:55.554039', '2021-03-09 06:35:06.349562', '个人发票申请成功', '', 0, 2, 1, 0);
INSERT INTO `interface_apitest` VALUES (5, '2021-03-02 08:09:16.164910', '2021-03-09 06:35:09.163065', '公司普票申请成功', '', 0, 2, 1, 0);
INSERT INTO `interface_apitest` VALUES (6, '2021-03-03 05:48:09.982409', '2021-03-09 08:43:01.983954', '出参字段 invoiceStatus 订单开发票状态', '0未开票 5审核中  10申请被拒 15开票成功 25已经作废红冲', 0, 7, 1, 0);
INSERT INTO `interface_apitest` VALUES (7, '2021-03-03 05:49:02.783159', '2021-03-09 08:42:53.103701', '出参字段 invoiceFlag 是否支持开票', '10 可开票 ，20 不可开票，满足以下条件为10，否则为20：\r\n1.2020年9月1号（包括当天）之后已支付成功的订单\r\n2.订单所对应的商品是支持开具发票的\r\n3.在服务期范围内的订单\r\n4.订单支付金额大于0', 0, 7, 1, 0);
INSERT INTO `interface_apitest` VALUES (8, '2021-03-09 05:59:32.038416', '2021-03-11 07:29:27.070227', '入参字段paymentType 支付方式--枚举', '支付方式: 10，微信小程序 15，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(alipay.trade.wap.pay) 61:支付宝花呗支付 70:零零购 80:库分期', 0, 8, 1, 0);
INSERT INTO `interface_apitest` VALUES (9, '2021-03-09 08:31:46.889689', '2021-03-11 07:29:13.294080', '入参字段paymentType支付方式--枚举', '支付方式 支付方式 (10，微信小程序 15&16，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(wap&app) 61支付宝花呗  62花呗分期 70:零零购信用卡分期，80库分期) 有赞订单 99', 0, 11, 1, 0);
INSERT INTO `interface_apitest` VALUES (10, '2021-03-09 08:34:54.591627', '2021-03-09 08:37:53.131068', '导出文件表头：支付渠道，对应字段paymentType支付方式--枚举', '支付方式 支付方式 (10，微信小程序 15&16，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(wap&app) 61支付宝花呗  62花呗分期 70:零零购信用卡分期，80库分期) 有赞订单 99', 0, 9, 1, 0);
INSERT INTO `interface_apitest` VALUES (11, '2021-03-09 08:39:50.448268', '2021-03-11 07:29:18.956929', '出参字段state任务状态', '1成功，2失败，3有报错记录', 0, 10, 1, 0);
INSERT INTO `interface_apitest` VALUES (12, '2021-03-09 08:40:42.399309', '2021-03-11 07:28:56.471074', '出参字段filePath报错记录文件下载路径xls', '', 0, 10, 1, 0);
INSERT INTO `interface_apitest` VALUES (13, '2021-03-10 10:48:08.915530', '2021-03-11 05:45:17.056758', '发起支付成功，当状态为11或12的分期订单，返回库分期接口所需参数', '', 0, 12, 1, 4);
INSERT INTO `interface_apitest` VALUES (14, '2021-03-10 10:49:11.137100', '2021-03-11 05:58:28.451934', '发起支付失败，出参字段success=false，msg=当前订单状态为：0/5/15/25, 不可分期支付', '', 0, 12, 1, 8);
INSERT INTO `interface_apitest` VALUES (15, '2021-03-10 10:49:56.266389', '2021-03-11 05:58:31.636444', '发起支付失败，出参字段success=false，msg=订单号：***，支付时间超过过期时间', '', 0, 12, 1, 8);
INSERT INTO `interface_apitest` VALUES (16, '2021-03-10 10:51:32.912886', '2021-03-11 05:45:12.195760', '分期订单金额在600~50000之间，否则页面二维码有浮层', '', 0, 12, 1, 2);
INSERT INTO `interface_apitest` VALUES (17, '2021-03-10 10:52:22.858295', '2021-03-11 10:16:50.437147', '入参字段frontNotifyUrl为支付成功后，页面跳转链接地址', '', 0, 12, 1, 0);
INSERT INTO `interface_apitest` VALUES (18, '2021-03-10 10:55:34.574482', '2021-03-11 11:27:05.224168', '发起支付失败，出参字段success=false，msg=当前订单为非分期订单不可分期支付，订单号：***', '', 0, 12, 1, 8);
INSERT INTO `interface_apitest` VALUES (19, '2021-03-10 10:56:51.343141', '2021-03-11 05:57:20.566544', '发起支付成功，流程走完后，订单状态变为15，订单对应的支付状态变为15', '', 0, 12, 1, 6);
INSERT INTO `interface_apitest` VALUES (20, '2021-03-11 07:32:40.818988', '2021-03-11 07:37:08.637626', '入参字段shopWindow橱窗类型EX/PU', '精品课 EX 公开课 PU', 0, 16, 1, 0);
INSERT INTO `interface_apitest` VALUES (21, '2021-03-11 07:36:57.420630', '2021-03-11 07:37:55.805462', 'header参数subchannel渠道枚举，返回对应渠道存在商品的类目', '渠道subchannel=APP（app）/MINI_PROGRAM（小程序）', 0, 16, 1, 2);
INSERT INTO `interface_apitest` VALUES (22, '2021-03-11 07:37:49.305848', '2021-03-11 07:37:49.305848', '列表排序：排序值正序>id正序', '', 0, 16, 1, 10);
INSERT INTO `interface_apitest` VALUES (23, '2021-03-12 09:12:44.430056', '2021-03-12 09:15:20.865624', '入参字段imSupport是否支持群聊（0不支持1支持）', '', 0, 21, 0, 9);
INSERT INTO `interface_apitest` VALUES (24, '2021-03-12 09:13:00.577863', '2021-03-12 09:13:28.989867', '入参字段changeClassSupport是否支持调班（0不支持1支持）', '', 0, 20, 0, 10);
INSERT INTO `interface_apitest` VALUES (25, '2021-03-12 09:13:52.065146', '2021-03-12 09:13:52.065146', '入参字段changeClassSupport是否支持调班（0不支持1支持）', '', 0, 21, 0, 10);
INSERT INTO `interface_apitest` VALUES (26, '2021-03-12 09:14:01.186747', '2021-03-12 09:14:01.186747', '入参字段imSupport是否支持群聊（0不支持1支持）', '', 0, 20, 0, 10);
INSERT INTO `interface_apitest` VALUES (27, '2021-03-12 09:14:47.673404', '2021-03-12 09:14:47.673404', '入参字段changeClassSupport是否支持调班（0不支持1支持）', '', 0, 22, 0, 10);
INSERT INTO `interface_apitest` VALUES (28, '2021-03-12 09:14:53.842930', '2021-03-12 09:14:53.842930', '入参字段imSupport是否支持群聊（0不支持1支持）', '', 0, 22, 0, 10);
INSERT INTO `interface_apitest` VALUES (29, '2021-03-12 09:20:05.651876', '2021-03-12 09:21:44.178337', '当商品是否支持加群字段为True时，下单后自动加群，返回对应的学员信息', '', 0, 23, 0, 8);
INSERT INTO `interface_apitest` VALUES (30, '2021-03-12 09:21:11.929596', '2021-03-12 09:36:28.976679', '当商品是否支持加群字段为False时，下单时不加群，返回列表为空或不返回下单学员', '', 0, 23, 0, 10);
INSERT INTO `interface_apitest` VALUES (31, '2021-03-12 09:22:40.925551', '2021-03-12 09:22:40.925551', '入参字段name姓名', '', 0, 24, 0, 10);
INSERT INTO `interface_apitest` VALUES (32, '2021-03-12 09:22:49.011921', '2021-03-12 09:22:49.011921', '入参字段name姓名', '', 0, 26, 0, 10);
INSERT INTO `interface_apitest` VALUES (33, '2021-03-12 09:22:57.193038', '2021-03-15 05:19:36.491860', '入参字段name姓名，精确搜索', '', 0, 25, 0, 10);
INSERT INTO `interface_apitest` VALUES (34, '2021-03-12 09:23:10.884417', '2021-03-12 09:23:10.884417', '出参字段name姓名', '', 0, 27, 0, 10);
INSERT INTO `interface_apitest` VALUES (35, '2021-03-12 09:23:21.416246', '2021-03-12 09:23:21.416246', '出参字段name姓名', '', 0, 28, 0, 10);
INSERT INTO `interface_apitest` VALUES (36, '2021-03-12 09:23:44.273122', '2021-03-12 09:23:44.273122', '出参字段name姓名', '', 0, 29, 0, 10);
INSERT INTO `interface_apitest` VALUES (37, '2021-03-12 09:24:01.656611', '2021-03-12 09:24:01.656611', '出参字段name姓名', '', 0, 25, 0, 10);
INSERT INTO `interface_apitest` VALUES (38, '2021-03-15 05:32:44.874117', '2021-03-15 05:34:14.115488', '当changeClassSupport是否支持调班字段修改为False时，删除所有调班商品的关联关系', '', 0, 21, 0, 12);
INSERT INTO `interface_apitest` VALUES (39, '2021-03-15 05:44:16.216490', '2021-03-15 05:44:16.216490', '入参字段show是否在加盐学院展示 0：不展示 1：展示', '', 0, 30, 0, 10);
INSERT INTO `interface_apitest` VALUES (40, '2021-03-15 05:44:24.058521', '2021-03-15 05:44:24.058521', '入参字段show是否在加盐学院展示 0：不展示 1：展示', '', 0, 31, 0, 10);
INSERT INTO `interface_apitest` VALUES (41, '2021-03-15 05:44:46.317001', '2021-03-15 05:44:46.317001', '出参字段show是否在加盐学院展示 0：不展示 1：展示', '', 0, 30, 0, 10);
INSERT INTO `interface_apitest` VALUES (42, '2021-03-15 05:44:56.192599', '2021-03-15 05:44:56.192599', '出参字段show是否在加盐学院展示 0：不展示 1：展示', '', 0, 31, 0, 10);
INSERT INTO `interface_apitest` VALUES (43, '2021-03-15 07:43:32.770370', '2021-03-15 07:43:32.770370', '类目中字段show是否在加盐学院展示为0时，不返回该类目', '', 0, 16, 0, 10);
INSERT INTO `interface_apitest` VALUES (44, '2021-03-15 10:08:11.576766', '2021-03-15 10:10:59.296259', '分享题库输入参数：字段shareType=SHARE_EXAM；字段shareId=SHARE_EXAM', '', 0, 32, 0, 10);
INSERT INTO `interface_apitest` VALUES (45, '2021-03-15 10:08:44.149638', '2021-03-15 10:10:32.902835', '分享题库输入参数：字段type=SHARE_EXAM', '', 0, 33, 0, 10);
INSERT INTO `interface_apitest` VALUES (46, '2021-03-15 10:09:53.346607', '2021-03-15 10:46:43.391710', '分享题库输入参数：type=SHARE_EXAM，targetId=SHARE_EXAM；返回值数量>=3时，题库解锁', '', 0, 34, 0, 10);
INSERT INTO `interface_apitest` VALUES (47, '2021-03-15 10:13:02.011152', '2021-03-15 10:13:02.011152', '课程列表页结课报告分享输入参数：shareType=LEARNINGCLASS，shareId=classId，分享成功，通过分享code执行获取结课报告', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (48, '2021-03-15 10:14:04.972767', '2021-03-15 10:14:04.972767', '每日一练分享输入参数：shareType=DATA，shareId=examtypeId，分享成功，通过分享的code可以执行对应的每日一练', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (49, '2021-03-15 10:15:39.588767', '2021-03-15 10:15:39.588767', '裂变分享输入参数：shareId=commodityId_tpId_learningClassId；shareType = SHARE_FREE', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (50, '2021-03-16 02:23:53.784393', '2021-03-16 02:23:53.784393', '出参字段bigLessonStatus商品是否有‘大课’标签，字段废弃永远返回true', '', 0, 7, 0, 10);
INSERT INTO `interface_apitest` VALUES (51, '2021-03-16 02:44:10.877919', '2021-03-16 02:44:16.148850', '出参字段moveStatus调班状态，当值为0或1时，订单详情页显示‘我要调班’入口', '0 可调班，1已调班 ，2 不可调班（订单不在服务期或没有配置调班商品），3被调班订单', 0, 7, 1, 10);
COMMIT;

-- ----------------------------
-- Table structure for interface_basepath
-- ----------------------------
DROP TABLE IF EXISTS `interface_basepath`;
CREATE TABLE `interface_basepath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) NOT NULL,
  `test_path` varchar(128) NOT NULL,
  `prod_path` varchar(256) NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_basepath
-- ----------------------------
BEGIN;
INSERT INTO `interface_basepath` VALUES (1, '2021-02-16 09:05:01.547918', '2021-03-02 08:04:38.850684', 'actPrivate', '/api/v3/{app}/act/private', '/api/v3/{app}/act/private', 0);
INSERT INTO `interface_basepath` VALUES (2, '2021-03-02 08:05:00.409004', '2021-03-02 08:12:06.699762', 'apiSchool', '/api/school', '/api/school', 0);
INSERT INTO `interface_basepath` VALUES (3, '2021-03-02 08:05:16.522903', '2021-03-11 02:44:10.339243', 'apiExport', '/api/export', '/api/export', 0);
INSERT INTO `interface_basepath` VALUES (4, '2021-03-02 08:08:02.878934', '2021-03-02 08:08:02.878934', 'storePrivate', '/api/v3/{app}/store/private', '/api/v3/{app}/store/private', 0);
INSERT INTO `interface_basepath` VALUES (5, '2021-03-10 02:16:04.098086', '2021-03-11 03:21:20.300545', 'apiV3', '/api/v3/{app}', '/api/v3/{app}', 0);
INSERT INTO `interface_basepath` VALUES (6, '2021-03-11 03:20:29.117478', '2021-03-11 03:20:29.117478', 'api', '/api', '/api', 0);
INSERT INTO `interface_basepath` VALUES (7, '2021-03-11 03:35:07.655536', '2021-03-11 03:35:07.655536', 'storePublic', '/api/v3/{app}/store/public', '/api/v3/{app}/store/public', 0);
INSERT INTO `interface_basepath` VALUES (8, '2021-03-11 10:18:59.344348', '2021-03-11 10:21:12.674743', 'exam', '/api/v3/{app}/exam', '/api/v3/{app}/exam', 0);
INSERT INTO `interface_basepath` VALUES (9, '2021-03-12 08:51:59.456123', '2021-03-12 08:51:59.456123', 'apiIM', '/api/im', '/api/im', 0);
INSERT INTO `interface_basepath` VALUES (10, '2021-03-15 09:17:04.110744', '2021-03-15 09:17:04.110744', 'common', '/api/v3/{app}/common', '/api/v3/{app}/common', 0);
INSERT INTO `interface_basepath` VALUES (11, '2021-03-16 06:13:09.270847', '2021-03-16 06:13:09.270847', 'user', '/api/v3/{app}/user', '/api/v3/{app}/user', 0);
COMMIT;

-- ----------------------------
-- Table structure for interface_domain
-- ----------------------------
DROP TABLE IF EXISTS `interface_domain`;
CREATE TABLE `interface_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) NOT NULL,
  `test_host` varchar(128) NOT NULL,
  `prod_host` varchar(128) NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_domain
-- ----------------------------
BEGIN;
INSERT INTO `interface_domain` VALUES (1, '2021-02-16 09:03:14.405308', '2021-02-16 11:01:11.433888', 'app域名', 'http://r-bf-fe.jiayans.net:2001', 'https://campus1-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (2, '2021-02-16 11:00:39.088014', '2021-02-16 11:01:19.265267', '烛台域名', 'http://r-bf-fe.jiayans.net:2002', 'https://console-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (3, '2021-02-16 11:01:48.538566', '2021-02-16 11:01:48.538606', '心理域名', 'http://r-bf-fe.jiayans.net:2003', 'https://xinli-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (4, '2021-02-16 11:02:32.882436', '2021-02-16 11:02:32.882478', '直播域名', 'http://r-bf-fe.jiayans.net:2001', 'https://c-campus1-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (5, '2021-02-16 11:03:04.102097', '2021-02-16 11:03:04.102139', '投放域名', 'https://r-bf-fe.jiayans.net:2004', 'https://xinli-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (6, '2021-02-16 11:03:59.349372', '2021-02-16 11:03:59.349486', '飞天拉新', 'http://r-bf-fe.jiayans.net:2007', 'https://t-fe.jiayans.net', 0);
COMMIT;

-- ----------------------------
-- Table structure for interface_tag
-- ----------------------------
DROP TABLE IF EXISTS `interface_tag`;
CREATE TABLE `interface_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `desc` longtext NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_tag
-- ----------------------------
BEGIN;
INSERT INTO `interface_tag` VALUES (1, '2021-02-16 09:05:22.040786', '2021-02-16 09:32:20.594499', 'app', 'apiV3前端接口', 0);
INSERT INTO `interface_tag` VALUES (2, '2021-02-16 09:33:40.508152', '2021-02-16 09:33:40.508194', 'school', 'school后台接口', 0);
COMMIT;

-- ----------------------------
-- Table structure for interface_version
-- ----------------------------
DROP TABLE IF EXISTS `interface_version`;
CREATE TABLE `interface_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `version` varchar(10) NOT NULL,
  `remark` longtext,
  `del_flag` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_version
-- ----------------------------
BEGIN;
INSERT INTO `interface_version` VALUES (3, '2021-03-02 08:19:23.252830', '2021-03-12 08:26:12.765688', '新后端', 'V3.33.0', '库分期', 0, 20);
INSERT INTO `interface_version` VALUES (5, '2021-03-09 05:52:08.063958', '2021-03-12 08:26:09.109468', '康德', 'V3.13.0', '支付库分期 https://lanhuapp.com/url/4h1wt', 0, 20);
INSERT INTO `interface_version` VALUES (6, '2021-03-12 08:27:24.810982', '2021-03-19 08:10:08.925722', '康德', 'V3.13.1', '调班，增加字段：商品-是否支持群聊/是否支持调班；用户-姓名；类目-是否在加盐学院展示', 0, 20);
INSERT INTO `interface_version` VALUES (7, '2021-03-12 08:27:56.844313', '2021-03-29 02:48:44.602105', '新后端', 'V3.33.2', '题库拉新分享，3人助力解锁章节练习和套卷模拟第4章及以后的题', 0, 30);
INSERT INTO `interface_version` VALUES (8, '2021-03-26 08:53:44.558179', '2021-03-26 08:54:55.891544', '康德', 'V3.14.0', '退费管理 & 二阶负责人  & 群聊-运营人员与康德用户关联', 0, 10);
COMMIT;

-- ----------------------------
-- Table structure for interface_versiontest
-- ----------------------------
DROP TABLE IF EXISTS `interface_versiontest`;
CREATE TABLE `interface_versiontest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `remark` longtext,
  `del_flag` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `result` varchar(16) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `prod_user` varchar(16) DEFAULT NULL,
  `test_user` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interface_versiontes_version_id_f4eac618_fk_interface` (`version_id`),
  KEY `interface_versiontest_api_id_ecf5624a_fk_interface_api_id` (`api_id`),
  CONSTRAINT `interface_versiontes_version_id_f4eac618_fk_interface` FOREIGN KEY (`version_id`) REFERENCES `interface_version` (`id`),
  CONSTRAINT `interface_versiontest_api_id_ecf5624a_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_versiontest
-- ----------------------------
BEGIN;
INSERT INTO `interface_versiontest` VALUES (9, '2021-03-09 05:53:05.402589', '2021-03-11 05:55:50.451553', '', 0, 8, 5, 'pass', '2021-03-10', NULL, '赵爽');
INSERT INTO `interface_versiontest` VALUES (10, '2021-03-09 07:48:59.464523', '2021-03-09 08:36:55.814378', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2423', 0, 9, 5, 'pass', '2021-03-09', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (11, '2021-03-09 08:32:51.686372', '2021-03-09 08:32:51.686372', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2423', 0, 11, 5, 'pass', '2021-03-09', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (12, '2021-03-09 08:42:00.308917', '2021-03-11 03:17:34.583322', '未变更，关联测试', 0, 10, 5, 'pass', '2021-03-09', NULL, '赵爽');
INSERT INTO `interface_versiontest` VALUES (13, '2021-03-10 02:19:24.684558', '2021-03-10 10:57:51.640866', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-324', 0, 12, 3, 'pass', '2021-03-10', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (20, '2021-03-12 08:44:29.329110', '2021-03-15 07:58:34.602657', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2433', 0, 20, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (21, '2021-03-12 08:44:29.335094', '2021-03-15 07:58:36.142511', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2433\r\nhttp://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2435', 0, 21, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (22, '2021-03-12 08:44:29.341078', '2021-03-15 07:58:37.791132', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2433', 0, 22, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (23, '2021-03-12 08:54:30.482147', '2021-03-15 07:58:40.088987', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2434', 0, 23, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (24, '2021-03-12 08:59:31.389281', '2021-03-15 07:58:43.920745', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 24, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (25, '2021-03-12 09:01:13.135131', '2021-03-15 07:58:45.893437', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 26, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (26, '2021-03-12 09:01:13.143109', '2021-03-15 07:58:48.405748', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 25, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (27, '2021-03-12 09:03:18.076940', '2021-03-15 07:58:51.639075', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 27, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (28, '2021-03-12 09:03:18.082935', '2021-03-15 07:58:54.284999', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 28, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (29, '2021-03-12 09:04:32.992552', '2021-03-15 07:58:57.352796', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2436', 0, 29, 6, 'pass', '2021-03-15', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (30, '2021-03-15 05:43:39.863696', '2021-03-15 08:16:18.016672', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2437', 0, 30, 6, 'pass', '2021-03-15', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (31, '2021-03-15 05:43:39.868711', '2021-03-15 08:16:20.648633', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2437', 0, 31, 6, 'pass', '2021-03-15', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (32, '2021-03-15 07:41:22.569524', '2021-03-15 08:16:23.190863', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2438', 0, 16, 6, 'pass', '2021-03-15', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (33, '2021-03-15 09:19:56.184665', '2021-03-15 10:58:50.760749', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-326', 0, 32, 7, 'pass', '2021-03-15', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (34, '2021-03-15 09:19:56.190608', '2021-03-15 10:58:53.229172', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-326', 0, 33, 7, 'pass', '2021-03-15', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (35, '2021-03-15 09:25:56.700649', '2021-03-17 03:42:01.981911', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-328', 0, 34, 7, 'pass', '2021-03-15', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (36, '2021-03-16 02:22:50.504601', '2021-03-17 09:33:24.558230', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2435', 0, 7, 6, 'pass', '2021-03-16', '振旭', '赵爽');
COMMIT;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2021-02-16 03:25:37.483683', '127.0.0.1', '1', 'test', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (2, '2021-02-16 07:02:50.932155', '127.0.0.1', '2', 'test2', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (3, '2021-02-16 09:03:14.406736', '127.0.0.1', '1', 'apiV3-2001', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (4, '2021-02-16 09:05:01.548601', '127.0.0.1', '1', 'apiV3ActPrivate', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (5, '2021-02-16 09:05:22.044437', '127.0.0.1', '1', 'act', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (6, '2021-02-16 09:07:10.060958', '127.0.0.1', '1', 'get/buy/books/give', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (7, '2021-02-16 09:08:18.804764', '127.0.0.1', '1', 'get/buy/books/give', 'change', '修改 code', 12, 1);
INSERT INTO `xadmin_log` VALUES (8, '2021-02-16 09:10:18.975776', '127.0.0.1', '1', 'actPrivate', 'change', '修改 code', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2021-02-16 09:32:20.597668', '127.0.0.1', '1', 'app', 'change', '修改 name 和 desc', 15, 1);
INSERT INTO `xadmin_log` VALUES (10, '2021-02-16 09:33:04.137131', '127.0.0.1', '1', 'get/buy/books/give', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (11, '2021-02-16 09:33:40.508831', '127.0.0.1', '2', 'school', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (12, '2021-02-16 09:53:56.319899', '127.0.0.1', '1', '新后端_V3.30.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (13, '2021-02-16 09:55:07.107641', '127.0.0.1', '1', 'buyBooksGive：领取成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (14, '2021-02-16 10:10:29.301445', '127.0.0.1', '2', '新后端_V3.31.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (15, '2021-02-16 10:58:01.382752', '127.0.0.1', '1', 'http://r-bf-fe.jiayans.net:2001', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (16, '2021-02-16 10:59:51.219173', '127.0.0.1', '1', 'app', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (17, '2021-02-16 11:00:01.769236', '127.0.0.1', '1', 'app前端地址', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (18, '2021-02-16 11:00:13.116625', '127.0.0.1', '1', 'app地址', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (19, '2021-02-16 11:00:39.088634', '127.0.0.1', '2', '烛台地址', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (20, '2021-02-16 11:01:11.439304', '127.0.0.1', '1', 'app域名', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (21, '2021-02-16 11:01:19.266380', '127.0.0.1', '2', '烛台域名', 'change', '修改 code', 13, 1);
INSERT INTO `xadmin_log` VALUES (22, '2021-02-16 11:01:48.539149', '127.0.0.1', '3', '心理域名', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (23, '2021-02-16 11:02:32.883064', '127.0.0.1', '4', '直播域名', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (24, '2021-02-16 11:03:04.102708', '127.0.0.1', '5', '投放域名', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (25, '2021-02-16 11:03:59.350475', '127.0.0.1', '6', '飞天拉新', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (26, '2021-03-02 06:24:50.154370', '127.0.0.1', '3', '/buy/books/give', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (27, '2021-03-02 06:29:15.769902', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 版本测试接口', NULL, 1);
INSERT INTO `xadmin_log` VALUES (28, '2021-03-02 06:30:42.258562', '127.0.0.1', '5', '2-1', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (29, '2021-03-02 06:44:34.782728', '127.0.0.1', '5', '2-1', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (30, '2021-03-02 06:45:07.415443', '127.0.0.1', '2', 'buyBooksGive：领取失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (31, '2021-03-02 06:45:14.784759', '127.0.0.1', '5', '2-1', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (32, '2021-03-02 06:49:50.214013', '127.0.0.1', '5', '2-1', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (33, '2021-03-02 06:49:58.138815', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (34, '2021-03-02 06:51:11.568406', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (35, '2021-03-02 06:53:27.210621', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (36, '2021-03-02 06:57:46.025313', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (37, '2021-03-02 06:58:55.386785', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (38, '2021-03-02 06:59:16.907221', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (39, '2021-03-02 06:59:21.601694', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (40, '2021-03-02 07:03:42.942632', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (41, '2021-03-02 07:03:46.938032', '127.0.0.1', '5', '2-1', 'change', '修改 apitest', 18, 1);
INSERT INTO `xadmin_log` VALUES (42, '2021-03-02 07:08:56.840018', '127.0.0.1', '3', 'buyBooksGive：通过', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (43, '2021-03-02 07:39:31.646282', '127.0.0.1', '1', 'GET/api/v3/{app}/act/private/buy/books/give', 'change', '修改 tag', 12, 1);
INSERT INTO `xadmin_log` VALUES (44, '2021-03-02 07:41:43.891408', '127.0.0.1', '1', 'GET/api/v3/{app}/act/private/buy/books/give', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (45, '2021-03-02 07:42:08.023859', '127.0.0.1', '1', 'GET/api/v3/{app}/act/private/buy/books/give', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (46, '2021-03-02 07:43:59.200494', '127.0.0.1', '1', 'GET/api/v3/{app}/act/private/buy/books/give', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (47, '2021-03-02 08:04:04.855598', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口文档', NULL, 1);
INSERT INTO `xadmin_log` VALUES (48, '2021-03-02 08:04:15.169012', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 接口版本', NULL, 1);
INSERT INTO `xadmin_log` VALUES (49, '2021-03-02 08:04:38.853690', '127.0.0.1', '1', '/api/v3/{app}/act/private', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (50, '2021-03-02 08:05:00.410001', '127.0.0.1', '2', '/api/school', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (51, '2021-03-02 08:05:16.525057', '127.0.0.1', '3', '/api', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (52, '2021-03-02 08:08:02.881931', '127.0.0.1', '4', '/api/v3/{app}/store/private', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (53, '2021-03-02 08:08:07.947384', '127.0.0.1', '2', 'GET/api/v3/{app}/store/private/invoice', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (54, '2021-03-02 08:08:55.555035', '127.0.0.1', '4', 'invoiceCreateApp：个人发票申请成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (55, '2021-03-02 08:09:16.166979', '127.0.0.1', '5', 'invoiceCreateApp：公司普票申请成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (56, '2021-03-02 08:11:03.775073', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (57, '2021-03-02 08:12:06.700765', '127.0.0.1', '2', '/api/school', 'change', '修改 code', 14, 1);
INSERT INTO `xadmin_log` VALUES (58, '2021-03-02 08:13:45.700539', '127.0.0.1', '5', 'invoiceCreateApp：公司普票申请成功', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (59, '2021-03-02 08:14:47.318648', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (60, '2021-03-02 08:15:30.106450', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (61, '2021-03-02 08:17:38.724449', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 desc 和 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (62, '2021-03-02 08:19:23.253827', '127.0.0.1', '3', '新后端_V3.32.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (63, '2021-03-02 08:19:35.027335', '127.0.0.1', '6', '3_2', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (64, '2021-03-02 11:07:46.101461', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (65, '2021-03-02 11:07:59.349027', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (66, '2021-03-02 11:08:21.325244', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (67, '2021-03-02 11:10:11.456669', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (68, '2021-03-02 11:11:10.709176', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (69, '2021-03-02 11:13:52.209196', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (70, '2021-03-02 11:15:49.577260', '127.0.0.1', '6', '3_2', 'change', '修改 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (71, '2021-03-02 11:16:23.713952', '127.0.0.1', '6', '3_2', 'change', '修改 test_date 和 result', 18, 1);
INSERT INTO `xadmin_log` VALUES (72, '2021-03-03 02:47:38.162105', '127.0.0.1', '3', '新后端_V3.32.0', 'change', '没有字段被修改。', 17, 1);
INSERT INTO `xadmin_log` VALUES (73, '2021-03-03 02:49:51.689164', '127.0.0.1', '6', '3_2', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (74, '2021-03-03 02:53:47.234619', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 code', 12, 1);
INSERT INTO `xadmin_log` VALUES (75, '2021-03-03 02:54:21.906878', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (76, '2021-03-03 03:13:47.779404', '127.0.0.1', '6', '3_2', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (77, '2021-03-03 03:14:32.357190', '127.0.0.1', '3', '新后端_V3.32.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (78, '2021-03-03 03:15:38.771521', '127.0.0.1', '3', '新后端_V3.32.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (79, '2021-03-03 03:15:48.534408', '127.0.0.1', '3', '新后端_V3.32.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (80, '2021-03-03 03:32:11.122192', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (81, '2021-03-03 03:33:12.989709', '127.0.0.1', '3', 'GET/api/v3/{app}/act/private1', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (82, '2021-03-03 03:34:53.644505', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口文档', NULL, 1);
INSERT INTO `xadmin_log` VALUES (83, '2021-03-03 03:52:44.811321', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (84, '2021-03-03 03:57:51.286742', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (85, '2021-03-03 03:58:53.972889', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (86, '2021-03-03 04:00:46.442055', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (87, '2021-03-03 04:00:59.863156', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (88, '2021-03-03 04:01:34.769788', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (89, '2021-03-03 04:02:49.507946', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (90, '2021-03-03 04:03:53.679235', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (91, '2021-03-03 04:04:09.166807', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (92, '2021-03-03 04:04:23.307983', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (93, '2021-03-03 04:10:52.364421', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (94, '2021-03-03 04:11:57.874133', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (95, '2021-03-03 04:12:29.860563', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (96, '2021-03-03 05:20:38.030520', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (97, '2021-03-03 05:20:50.446483', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (98, '2021-03-03 05:21:10.221421', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (99, '2021-03-03 05:22:38.054507', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (100, '2021-03-03 05:23:09.510341', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (101, '2021-03-03 05:27:29.282502', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (102, '2021-03-03 05:32:58.005234', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (103, '2021-03-03 05:35:13.860875', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (104, '2021-03-03 05:38:41.913350', '127.0.0.1', '6', 'GET1', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (105, '2021-03-03 05:39:07.489938', '127.0.0.1', '6', 'GET1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (106, '2021-03-03 05:46:34.876778', '127.0.0.1', '6', 'GET1', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (107, '2021-03-03 05:46:58.131605', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口文档', NULL, 1);
INSERT INTO `xadmin_log` VALUES (108, '2021-03-03 05:47:31.056536', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (109, '2021-03-03 05:48:09.984460', '127.0.0.1', '6', 'orderDetail：返回值字段 invoiceStatus 订单开发票状态 0未开票 5审核中  10申请被拒 15开票成功 25已经作废红冲', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (110, '2021-03-03 05:49:02.786150', '127.0.0.1', '7', 'orderDetail：返回值字段 invoiceFlag 是否支持开票 10 可开票 ，20 不可开票（满足以下条件为10，否则为20）\r\n1、2020年9月1号（包括当天）之后已支付成功的订单\r\n2、订单所对应的商品是支持开具发票的\r\n3、在服务期范围内的订单\r\n4、订单支付金额大于0', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (111, '2021-03-03 05:49:40.771586', '127.0.0.1', '7', '3_7', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (112, '2021-03-03 05:50:41.183963', '127.0.0.1', '7', 'orderDetail：返回值字段 invoiceFlag 是否支持开票 10 可开票 ，20 不可开票（满足以下条件为10，否则为20）\r\n1.2020年9月1号（包括当天）之后已支付成功的订单\r\n2.订单所对应的商品是支持开具发票的\r\n3.在服务期范围内的订单\r\n4.订单支付金额大于0', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (113, '2021-03-03 05:53:40.102420', '127.0.0.1', '7', 'orderDetail：返回值字段 invoiceFlag 是否支持开票', 'change', '修改 desc 和 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (114, '2021-03-03 05:53:48.907838', '127.0.0.1', '6', 'orderDetail：返回值字段 invoiceStatus 订单开发票状态', 'change', '修改 desc 和 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (115, '2021-03-03 05:59:10.418862', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (116, '2021-03-03 06:04:16.053351', '127.0.0.1', '6', '3_2', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (117, '2021-03-03 06:13:03.830680', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (118, '2021-03-03 06:29:20.111445', '127.0.0.1', '6', '3_2', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (119, '2021-03-03 06:30:29.183684', '127.0.0.1', '5', 'invoiceCreate：公司普票申请成功', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (120, '2021-03-03 06:30:45.632822', '127.0.0.1', '4', 'invoiceCreate：个人发票申请成功', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (121, '2021-03-03 06:41:09.631614', '127.0.0.1', '4', '康德_V3.12.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (122, '2021-03-03 06:41:30.345221', '127.0.0.1', '8', '4_2', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (123, '2021-03-03 06:59:41.560656', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口测试计划', NULL, 1);
INSERT INTO `xadmin_log` VALUES (124, '2021-03-03 07:38:42.882847', '127.0.0.1', '7', '3_7', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (125, '2021-03-03 07:40:07.852602', '127.0.0.1', '7', '3_7', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (126, '2021-03-03 07:40:33.792187', '127.0.0.1', '7', '3_7', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (127, '2021-03-03 10:13:04.027518', '127.0.0.1', '7', '3_7', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (128, '2021-03-03 10:16:29.853971', '127.0.0.1', '2', 'anan', 'create', '已添加。', 4, 1);
INSERT INTO `xadmin_log` VALUES (129, '2021-03-03 10:17:12.632551', '127.0.0.1', '2', 'anan', 'change', '修改 user_permissions', 4, 1);
INSERT INTO `xadmin_log` VALUES (130, '2021-03-03 10:17:25.767415', '127.0.0.1', '2', 'anan', 'change', '没有字段被修改。', 4, 1);
INSERT INTO `xadmin_log` VALUES (131, '2021-03-03 10:17:37.883007', '127.0.0.1', '2', 'anan', 'change', '修改 is_staff', 4, 1);
INSERT INTO `xadmin_log` VALUES (132, '2021-03-09 05:51:11.267876', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (133, '2021-03-09 05:52:08.066950', '127.0.0.1', '5', '康德_V3.13.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (134, '2021-03-09 05:52:20.203487', '127.0.0.1', '5', '康德_V3.13.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (135, '2021-03-09 05:53:05.404612', '127.0.0.1', '9', '5_8', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (136, '2021-03-09 05:59:32.039419', '127.0.0.1', '8', 'paymentNotify：入参字段 支付方式 paymentType 增加库分期类型', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (137, '2021-03-09 05:59:47.202854', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 接口测试计划', NULL, 1);
INSERT INTO `xadmin_log` VALUES (138, '2021-03-09 06:00:39.986772', '127.0.0.1', '9', '5_8', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (139, '2021-03-09 06:03:31.144854', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (140, '2021-03-09 06:03:34.142866', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (141, '2021-03-09 06:03:37.021136', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (142, '2021-03-09 06:04:46.438459', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (143, '2021-03-09 06:05:00.500845', '127.0.0.1', '8', 'paymentNotify：入参字段 支付方式 paymentType 增加库分期类型', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (144, '2021-03-09 06:05:56.122069', '127.0.0.1', '8', 'paymentNotify：入参字段 支付方式 paymentType 增加库分期类型', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (145, '2021-03-09 06:08:58.986970', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (146, '2021-03-09 06:09:09.631471', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (147, '2021-03-09 06:09:19.182923', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'change', '修改 remark 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (148, '2021-03-09 06:09:22.651644', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (149, '2021-03-09 06:09:28.122011', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 remark 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (150, '2021-03-09 06:13:45.462677', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口版本', NULL, 1);
INSERT INTO `xadmin_log` VALUES (151, '2021-03-09 06:18:20.913900', '127.0.0.1', '5', 'invoiceCreate：公司普票申请成功', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (152, '2021-03-09 06:19:02.752990', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (153, '2021-03-09 06:19:32.559269', '127.0.0.1', '4', 'invoiceCreate：个人发票申请成功', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (154, '2021-03-09 06:22:50.683321', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (155, '2021-03-09 06:30:37.372032', '127.0.0.1', '5', '康德_V3.13.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (156, '2021-03-09 06:30:43.965416', '127.0.0.1', '5', '康德_V3.13.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (157, '2021-03-09 06:35:06.350560', '127.0.0.1', '4', 'invoiceCreate：个人发票申请成功', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (158, '2021-03-09 06:35:09.165031', '127.0.0.1', '5', 'invoiceCreate：公司普票申请成功', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (159, '2021-03-09 07:48:30.437165', '127.0.0.1', '9', 'GET/api/export/finance/order', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (160, '2021-03-09 07:48:59.465548', '127.0.0.1', '10', '5_9', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (161, '2021-03-09 07:51:25.147879', '127.0.0.1', '9', 'POST/api/export/finance/order', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (162, '2021-03-09 08:02:42.434497', '127.0.0.1', '10', 'GET/api/export/{code}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (163, '2021-03-09 08:23:34.487765', '127.0.0.1', '11', 'POST/api/finance/order/clearing/search', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (164, '2021-03-09 08:26:08.463911', '127.0.0.1', '11', 'POST/api/school/finance/order/clearing/search', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (165, '2021-03-09 08:31:46.890687', '127.0.0.1', '9', 'financeOrderSearch：入参字段paymentType支付类型枚举值增加', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (166, '2021-03-09 08:32:11.364224', '127.0.0.1', '9', 'financeOrderSearch：入参字段：paymentType支付方式', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (167, '2021-03-09 08:32:51.687368', '127.0.0.1', '11', '5_11', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (168, '2021-03-09 08:34:54.593623', '127.0.0.1', '10', 'exportFinanceOrder：导出文件表头：支付渠道', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (169, '2021-03-09 08:36:02.990673', '127.0.0.1', '8', 'paymentNotify：入参字段： 支付方式 paymentType', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (170, '2021-03-09 08:36:18.163088', '127.0.0.1', '8', 'paymentNotify：入参字段： paymentType 支付方式', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (171, '2021-03-09 08:37:18.785934', '127.0.0.1', '9', 'financeOrderSearch：入参字段：paymentType支付方式--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (172, '2021-03-09 08:37:23.124328', '127.0.0.1', '9', 'financeOrderSearch：入参字段：paymentType支付方式--枚举', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (173, '2021-03-09 08:37:26.758608', '127.0.0.1', '8', 'paymentNotify：入参字段： paymentType 支付方式--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (174, '2021-03-09 08:37:31.952715', '127.0.0.1', '10', 'exportFinanceOrder：导出文件表头：支付渠道--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (175, '2021-03-09 08:37:53.132064', '127.0.0.1', '10', 'exportFinanceOrder：导出文件表头：支付渠道，对应字段paymentType支付方式--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (176, '2021-03-09 08:39:50.449264', '127.0.0.1', '11', 'exportTask：出参字段：state任务状态1成功，2失败，3有报错记录', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (177, '2021-03-09 08:40:42.401312', '127.0.0.1', '12', 'exportTask：出参字段：filePath报错记录文件下载路径xls', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (178, '2021-03-09 08:42:00.309913', '127.0.0.1', '12', '5_10', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (179, '2021-03-09 08:42:18.427458', '127.0.0.1', '12', '5_10', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (180, '2021-03-09 08:42:37.514399', '127.0.0.1', '11', 'exportTask：出参字段：state任务状态', 'change', '修改 desc 和 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (181, '2021-03-09 08:42:53.103701', '127.0.0.1', '7', 'orderDetail：出参字段 invoiceFlag 是否支持开票', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (182, '2021-03-09 08:43:01.986939', '127.0.0.1', '6', 'orderDetail：出参字段 invoiceStatus 订单开发票状态', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (183, '2021-03-09 08:50:20.201803', '127.0.0.1', '11', 'POST/api/school/finance/order/clearing/search', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (184, '2021-03-09 08:50:36.673743', '127.0.0.1', '9', 'POST/api/export/finance/order', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (185, '2021-03-09 09:14:21.566442', '127.0.0.1', '11', 'POST/api/school/finance/order/clearing/search', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (186, '2021-03-09 09:15:01.236333', '127.0.0.1', '2', 'POST/api/v3/{app}/store/private/invoice', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (187, '2021-03-09 09:15:20.181662', '127.0.0.1', '7', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (188, '2021-03-09 10:41:55.866846', '127.0.0.1', '8', 'paymentNotify：入参字段： paymentType 支付方式--枚举', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (189, '2021-03-10 02:16:04.099082', '127.0.0.1', '5', '/v3/{app}', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (190, '2021-03-10 02:17:08.894767', '127.0.0.1', '12', 'GET/v3/{app}/cool/loan/apply', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (191, '2021-03-10 02:17:31.064507', '127.0.0.1', '5', '/api/v3/{app}', 'change', '修改 test_path 和 prod_path', 14, 1);
INSERT INTO `xadmin_log` VALUES (192, '2021-03-10 02:19:24.685554', '127.0.0.1', '13', '5_12', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (193, '2021-03-10 02:21:21.016171', '127.0.0.1', '3', '新后端_V3.33.0', 'change', '修改 version 和 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (194, '2021-03-10 02:21:30.504791', '127.0.0.1', '13', '3_12', 'change', '修改 version', 18, 1);
INSERT INTO `xadmin_log` VALUES (195, '2021-03-10 02:23:56.677838', '127.0.0.1', '13', 'GET/api/v3/{app}/store/private/prePay', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (196, '2021-03-10 02:24:58.523414', '127.0.0.1', '14', 'POST/api/v3/{app}/store/private/pay', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (197, '2021-03-10 02:25:12.237700', '127.0.0.1', '13', 'POST/api/v3/{app}/store/private/prePay', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (198, '2021-03-10 03:56:27.906440', '127.0.0.1', '12', 'GET/api/v3/{app}/cool/loan/apply', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (199, '2021-03-10 03:57:50.649171', '127.0.0.1', '13', 'POST/api/v3/{app}/store/private/prePay', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (200, '2021-03-10 05:25:22.859454', '127.0.0.1', '12', 'POST/api/v3/{app}/cool/loan/apply', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (201, '2021-03-10 05:27:32.113694', '127.0.0.1', '14', 'POST/api/v3/{app}/store/private/pay', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (202, '2021-03-10 05:28:17.181152', '127.0.0.1', '12', 'POST/api/v3/{app}/cool/loan/apply', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (203, '2021-03-10 10:48:08.917600', '127.0.0.1', '13', 'coolLoanApply：当状态为11或12的分期订单，执行接口返回库分期接口所需参数', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (204, '2021-03-10 10:49:11.138109', '127.0.0.1', '14', 'coolLoanApply：当前订单状态为：0/5/15/25, 不可分期支付', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (205, '2021-03-10 10:49:56.269380', '127.0.0.1', '15', 'coolLoanApply：订单号：***，支付时间超过过期时间，发起支付失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (206, '2021-03-10 10:50:04.676891', '127.0.0.1', '14', 'coolLoanApply：当前订单状态为：0/5/15/25, 不可分期支付，发起支付失败', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (207, '2021-03-10 10:50:23.010851', '127.0.0.1', '13', 'coolLoanApply：当状态为11或12的分期订单，发起支付成功，返回库分期接口所需参数', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (208, '2021-03-10 10:51:32.914872', '127.0.0.1', '16', 'coolLoanApply：分期订单金额在600~50000之间，否则页面二维码有浮层', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (209, '2021-03-10 10:52:22.860278', '127.0.0.1', '17', 'coolLoanApply：入参frontNotifyUrl为支付成功后，页面跳转链接地址', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (210, '2021-03-10 10:53:46.542445', '127.0.0.1', '15', 'coolLoanApply：发起支付失败，出参字段success=false，msg=订单号：***，支付时间超过过期时间', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (211, '2021-03-10 10:53:56.771123', '127.0.0.1', '14', 'coolLoanApply：发起支付失败，出参字段success=false，msg=当前订单状态为：0/5/15/25, 不可分期支付', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (212, '2021-03-10 10:55:34.575480', '127.0.0.1', '18', 'coolLoanApply：发起支付失败，出参字段success=false，msg=当前订单为非分期订单不可分期支付，订单号：***', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (213, '2021-03-10 10:55:56.605552', '127.0.0.1', '13', 'coolLoanApply：发起支付成功，当状态为11或12的分期订单，返回库分期接口所需参数', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (214, '2021-03-10 10:56:13.927249', '127.0.0.1', '16', 'coolLoanApply：分期订单金额在600~50000之间，否则页面二维码有浮层', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (215, '2021-03-10 10:56:51.345135', '127.0.0.1', '19', 'coolLoanApply：发起支付成功后，订单状态变为15，订单对应的支付状态变为15', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (216, '2021-03-10 10:59:13.916785', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (217, '2021-03-11 02:43:08.851710', '127.0.0.1', '3', '/api/export', 'change', '修改 code，test_path 和 prod_path', 14, 1);
INSERT INTO `xadmin_log` VALUES (218, '2021-03-11 02:43:21.964666', '127.0.0.1', '10', 'GET/api/export/{code}', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (219, '2021-03-11 02:43:29.096588', '127.0.0.1', '9', 'POST/api/export/finance/order', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (220, '2021-03-11 02:44:10.342237', '127.0.0.1', '3', '/api/export', 'change', '修改 code', 14, 1);
INSERT INTO `xadmin_log` VALUES (221, '2021-03-11 02:46:43.345985', '127.0.0.1', '12', 'POST/api/v3/{app}/cool/loan/apply', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (222, '2021-03-11 03:20:29.119443', '127.0.0.1', '6', '/api', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (223, '2021-03-11 03:20:58.696337', '127.0.0.1', '5', '/api/v3/{app}', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (224, '2021-03-11 03:21:14.421299', '127.0.0.1', '5', '/api/v3/{app}', 'change', '修改 code', 14, 1);
INSERT INTO `xadmin_log` VALUES (225, '2021-03-11 03:21:20.303537', '127.0.0.1', '5', '/api/v3/{app}', 'change', '修改 code', 14, 1);
INSERT INTO `xadmin_log` VALUES (226, '2021-03-11 03:23:16.489851', '127.0.0.1', '15', 'GET/api/v3/{app}/store/private/invoice', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (227, '2021-03-11 03:25:31.425840', '127.0.0.1', '16', 'GET/api/v3/{app}/store/private/classification/list', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (228, '2021-03-11 03:35:07.657530', '127.0.0.1', '7', '/api/v3/{app}/store/public', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (229, '2021-03-11 03:35:36.162286', '127.0.0.1', '16', 'GET/api/v3/{app}/store/public/classification/list', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (230, '2021-03-11 03:37:50.601689', '127.0.0.1', '16', 'GET/api/v3/{app}/store/public/classification/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (231, '2021-03-11 05:57:20.569536', '127.0.0.1', '19', 'coolLoanApply：发起支付成功，流程走完后，订单状态变为15，订单对应的支付状态变为15', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (232, '2021-03-11 07:28:28.674509', '127.0.0.1', '17', 'coolLoanApply：入参字段：frontNotifyUrl为支付成功后，页面跳转链接地址', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (233, '2021-03-11 07:28:56.474066', '127.0.0.1', '12', 'exportTask：出参字段filePath报错记录文件下载路径xls', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (234, '2021-03-11 07:29:05.648526', '127.0.0.1', '17', 'coolLoanApply：入参字段frontNotifyUrl为支付成功后，页面跳转链接地址', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (235, '2021-03-11 07:29:13.298065', '127.0.0.1', '9', 'financeOrderSearch：入参字段paymentType支付方式--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (236, '2021-03-11 07:29:18.959921', '127.0.0.1', '11', 'exportTask：出参字段state任务状态', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (237, '2021-03-11 07:29:27.072222', '127.0.0.1', '8', 'paymentNotify：入参字段paymentType 支付方式--枚举', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (238, '2021-03-11 07:32:40.821980', '127.0.0.1', '20', 'classificationList：入参字段shopWindow橱窗类型EX/PU', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (239, '2021-03-11 07:36:57.422624', '127.0.0.1', '21', 'classificationList：header参数subchannel渠道枚举，返回对应渠道存在商品的类目', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (240, '2021-03-11 07:37:49.307842', '127.0.0.1', '22', 'classificationList：列表排序：排序值正序>id正序', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (241, '2021-03-11 10:18:59.347342', '127.0.0.1', '8', '/exam', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (242, '2021-03-11 10:20:23.201047', '127.0.0.1', '17', 'GET/api/v3/{app}/exam/questionTypes/chapters', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (243, '2021-03-11 10:21:12.677707', '127.0.0.1', '8', '/api/v3/{app}/exam', 'change', '修改 test_path 和 prod_path', 14, 1);
INSERT INTO `xadmin_log` VALUES (244, '2021-03-11 10:22:00.150755', '127.0.0.1', '17', 'GET/api/v3/{app}/exam/questionTypes/chapters', 'change', '修改 path 和 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (245, '2021-03-11 10:24:29.015543', '127.0.0.1', '17', 'GET/api/v3/{app}/exam/questionTypes/chapters', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (246, '2021-03-11 11:18:06.108201', '127.0.0.1', '18', 'GET/api/v3/{app}/exam/questionTypes/chapters', 'change', '修改 code', 12, 1);
INSERT INTO `xadmin_log` VALUES (247, '2021-03-11 11:21:16.026203', '127.0.0.1', '18', 'GET/api/v3/{app}/exam/examTypes/subjects', 'change', '修改 path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (248, '2021-03-12 08:27:24.813978', '127.0.0.1', '6', '康德_V3.13.1', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (249, '2021-03-12 08:27:56.845296', '127.0.0.1', '7', '新后端_V3.33.1', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (250, '2021-03-12 08:29:44.972078', '127.0.0.1', '20', 'GET/api/commodity', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (251, '2021-03-12 08:30:41.454999', '127.0.0.1', '21', 'PUT/api/commodity/{id}', 'change', '修改 code，mode，path，desc，domain，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (252, '2021-03-12 08:30:55.298968', '127.0.0.1', '20', 'POST/api/commodity', 'change', '修改 mode 和 domain', 12, 1);
INSERT INTO `xadmin_log` VALUES (253, '2021-03-12 08:33:56.021571', '127.0.0.1', '22', 'POST/api/commodity/search', 'change', '修改 code，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (254, '2021-03-12 08:44:18.471153', '127.0.0.1', NULL, '', 'delete', '批量删除 3 个 接口测试计划', NULL, 1);
INSERT INTO `xadmin_log` VALUES (255, '2021-03-12 08:46:25.619058', '127.0.0.1', NULL, '', 'delete', '批量删除 3 个 接口测试计划', NULL, 1);
INSERT INTO `xadmin_log` VALUES (256, '2021-03-12 08:51:59.457109', '127.0.0.1', '9', '/api/im', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (257, '2021-03-12 08:52:01.771097', '127.0.0.1', '23', 'POST/api/im/group/user/wait/list', 'change', '修改 code，path，desc，basepath，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (258, '2021-03-12 08:59:07.999871', '127.0.0.1', '24', 'POST/api/user/', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (259, '2021-03-12 09:00:04.035958', '127.0.0.1', '25', 'POST/api/user/search', 'change', '修改 code，path，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (260, '2021-03-12 09:00:31.815653', '127.0.0.1', '25', 'POST/api/user/search', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (261, '2021-03-12 09:01:04.908158', '127.0.0.1', '26', 'PUT/api/user/{userId}', 'change', '修改 code，mode，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (262, '2021-03-12 09:02:24.288810', '127.0.0.1', '27', 'GET/api/user/{userId}', 'change', '修改 code，mode，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (263, '2021-03-12 09:03:12.225588', '127.0.0.1', '28', 'GET/api/user/{userIds}/batch', 'change', '修改 code，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (264, '2021-03-12 09:04:22.361987', '127.0.0.1', '29', 'GET/api/user', 'change', '修改 code，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (265, '2021-03-12 09:12:44.434045', '127.0.0.1', '23', 'commodityCreate：入参字段imSupport是否支持群聊 0 不支持，1支持', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (266, '2021-03-12 09:13:00.579858', '127.0.0.1', '24', 'commodityCreate：入参字段changeClassSupport是否支持调班 0 不支持，1支持', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (267, '2021-03-12 09:13:28.992859', '127.0.0.1', '24', 'commodityCreate：入参字段changeClassSupport是否支持调班（0不支持1支持）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (268, '2021-03-12 09:13:39.212525', '127.0.0.1', '23', 'commodityCreate：入参字段imSupport是否支持群聊（0不支持1支持）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (269, '2021-03-12 09:13:52.067140', '127.0.0.1', '25', 'commodityEdit：入参字段changeClassSupport是否支持调班（0不支持1支持）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (270, '2021-03-12 09:14:01.189740', '127.0.0.1', '26', 'commodityCreate：入参字段imSupport是否支持群聊（0不支持1支持）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (271, '2021-03-12 09:14:19.185633', '127.0.0.1', '23', 'commodityEdit：入参字段imSupport是否支持群聊（0不支持1支持）', 'change', '修改 api', 16, 1);
INSERT INTO `xadmin_log` VALUES (272, '2021-03-12 09:14:47.674401', '127.0.0.1', '27', 'commoditySearch：入参字段changeClassSupport是否支持调班（0不支持1支持）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (273, '2021-03-12 09:14:53.844896', '127.0.0.1', '28', 'commoditySearch：入参字段imSupport是否支持群聊（0不支持1支持）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (274, '2021-03-12 09:20:05.653871', '127.0.0.1', '29', 'groupUserWaitList：当商品是否加群字段为True时，下单后自动加群，返回对应的学员信息', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (275, '2021-03-12 09:21:11.932596', '127.0.0.1', '30', 'groupUserWaitList：当商品是否支持加群字段为False时，下单时不加群，返回列表为空或不存在下单学员', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (276, '2021-03-12 09:21:44.178337', '127.0.0.1', '29', 'groupUserWaitList：当商品是否支持加群字段为True时，下单后自动加群，返回对应的学员信息', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (277, '2021-03-12 09:22:40.927544', '127.0.0.1', '31', 'userCreate：入参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (278, '2021-03-12 09:22:49.013915', '127.0.0.1', '32', 'userEdit：入参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (279, '2021-03-12 09:22:57.196031', '127.0.0.1', '33', 'userSearch：入参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (280, '2021-03-12 09:23:10.887440', '127.0.0.1', '34', 'userDetail：出参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (281, '2021-03-12 09:23:21.418240', '127.0.0.1', '35', 'userDetailBatch：出参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (282, '2021-03-12 09:23:44.275103', '127.0.0.1', '36', 'userLogin：出参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (283, '2021-03-12 09:24:01.657609', '127.0.0.1', '37', 'userSearch：出参字段name姓名', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (284, '2021-03-12 09:24:39.916275', '127.0.0.1', '33', 'userSearch：入参字段name姓名，模糊搜索', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (285, '2021-03-12 09:36:28.978673', '127.0.0.1', '30', 'groupUserWaitList：当商品是否支持加群字段为False时，下单时不加群，返回列表为空或不返回下单学员', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (286, '2021-03-15 03:43:40.197796', '127.0.0.1', '20', 'POST/api/school/commodity', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (287, '2021-03-15 03:44:19.324175', '127.0.0.1', '20', 'POST/api/school/commodity', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (288, '2021-03-15 05:19:36.494852', '127.0.0.1', '33', 'userSearch：入参字段name姓名，精确搜索', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (289, '2021-03-15 05:21:54.249501', '127.0.0.1', '29', 'GET/api/user', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (290, '2021-03-15 05:23:38.736254', '127.0.0.1', '29', 'GET/api/school/user', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (291, '2021-03-15 05:25:46.585242', '127.0.0.1', '29', 'GET/api/school/user/', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (292, '2021-03-15 05:26:55.093419', '127.0.0.1', '29', 'GET/api/school/user/', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (293, '2021-03-15 05:27:07.451453', '127.0.0.1', '28', 'GET/api/school/user/{userIds}/batch', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (294, '2021-03-15 05:27:20.325948', '127.0.0.1', '25', 'POST/api/school/user/search', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (295, '2021-03-15 05:27:44.548179', '127.0.0.1', '24', 'POST/api/school/user/', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (296, '2021-03-15 05:28:04.746192', '127.0.0.1', '26', 'PUT/api/school/user/{userId}', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (297, '2021-03-15 05:28:37.492607', '127.0.0.1', '27', 'GET/api/school/user/{userId}', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (298, '2021-03-15 05:32:44.877108', '127.0.0.1', '38', 'commodityEdit：当是changeClassSupport是否支持调班字段修改为False时，关联的调班商品全部删除关联关系', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (299, '2021-03-15 05:33:20.714281', '127.0.0.1', '38', 'commodityEdit：当changeClassSupport是否支持调班字段修改为False时，关联的调班商品全部删除关联关系', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (300, '2021-03-15 05:34:14.116516', '127.0.0.1', '38', 'commodityEdit：当changeClassSupport是否支持调班字段修改为False时，删除所有调班商品的关联关系', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (301, '2021-03-15 05:35:56.068868', '127.0.0.1', '21', '6_21', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (302, '2021-03-15 05:42:47.626376', '127.0.0.1', '30', 'GET/api/school/classification', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (303, '2021-03-15 05:43:24.535683', '127.0.0.1', '31', 'GET/api/school/classification/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (304, '2021-03-15 05:44:16.218484', '127.0.0.1', '39', 'classificationCreate：入参字段show是否在加盐学院展示 0：不展示 1：展示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (305, '2021-03-15 05:44:24.061513', '127.0.0.1', '40', 'classificationEdit：入参字段show是否在加盐学院展示 0：不展示 1：展示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (306, '2021-03-15 05:44:46.318996', '127.0.0.1', '41', 'classificationCreate：出参字段show是否在加盐学院展示 0：不展示 1：展示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (307, '2021-03-15 05:44:56.193592', '127.0.0.1', '42', 'classificationEdit：出参字段show是否在加盐学院展示 0：不展示 1：展示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (308, '2021-03-15 05:45:52.128027', '127.0.0.1', '31', '6_31', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (309, '2021-03-15 05:45:55.503998', '127.0.0.1', '30', '6_30', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (310, '2021-03-15 07:42:26.639231', '127.0.0.1', '32', '6_16', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (311, '2021-03-15 07:43:32.771369', '127.0.0.1', '43', 'classificationList：类目中字段show是否在加盐学院展示为0时，不返回该类目', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (312, '2021-03-15 08:08:01.219091', '127.0.0.1', '30', 'GET/api/school/classification', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (313, '2021-03-15 08:09:40.702111', '127.0.0.1', '16', 'GET/api/v3/{app}/store/public/classification/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (314, '2021-03-15 08:10:54.328204', '127.0.0.1', '31', 'GET/api/school/classification/{id}', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (315, '2021-03-15 09:17:04.111742', '127.0.0.1', '10', '/api/v3/{app}/common', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (316, '2021-03-15 09:18:00.666516', '127.0.0.1', '32', 'GET/api/v3/{app}/common/share', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (317, '2021-03-15 09:19:11.528036', '127.0.0.1', '33', 'GET/api/v3/{app}/common/consumeShare', 'change', '修改 code，path，desc 和 tag', 12, 1);
INSERT INTO `xadmin_log` VALUES (318, '2021-03-15 09:19:47.262482', '127.0.0.1', '33', 'GET/api/v3/{app}/common/consumeShare', 'change', '修改 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (319, '2021-03-15 09:25:41.210038', '127.0.0.1', '34', 'GET/api/v3/{app}/common/consumeSuccess/list', 'change', '修改 code，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (320, '2021-03-15 09:26:39.665729', '127.0.0.1', '35', '7_34', 'change', '修改 version，test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (321, '2021-03-15 09:26:46.737998', '127.0.0.1', '34', '7_33', 'change', '修改 version 和 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (322, '2021-03-15 09:26:51.849152', '127.0.0.1', '33', '7_32', 'change', '修改 version 和 test_date', 18, 1);
INSERT INTO `xadmin_log` VALUES (323, '2021-03-15 10:03:44.927747', '127.0.0.1', '33', 'POST/api/v3/{app}/common/consumeShare', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (324, '2021-03-15 10:05:59.715329', '127.0.0.1', '32', 'GET/api/v3/{app}/common/share', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (325, '2021-03-15 10:08:11.578732', '127.0.0.1', '44', 'share：分享题库输入参数：\r\n字段shareType分享类型=SHARE_EXAM；\r\n字段shareId分享id=SHARE_EXAM。', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (326, '2021-03-15 10:08:44.150635', '127.0.0.1', '45', 'shareConsume：分享题库输入参数： 字段type=SHARE_EXAM。', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (327, '2021-03-15 10:08:51.584756', '127.0.0.1', '45', 'shareConsume：分享题库输入参数： 字段type=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (328, '2021-03-15 10:09:53.348776', '127.0.0.1', '46', 'shareConsumeSuccessList：分享题库输入参数： 字段type=SHARE_EXAM； 字段targetId=SHARE_EXAM', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (329, '2021-03-15 10:10:02.713560', '127.0.0.1', '44', 'share：分享题库输入参数：\r\n字段shareType分享类型=SHARE_EXAM；\r\n字段shareId分享id=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (330, '2021-03-15 10:10:11.018353', '127.0.0.1', '44', 'share：分享题库输入参数：字段shareType分享类型=SHARE_EXAM；字段shareId分享id=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (331, '2021-03-15 10:10:24.872308', '127.0.0.1', '46', 'shareConsumeSuccessList：分享题库输入参数：字段type=SHARE_EXAM； 字段targetId=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (332, '2021-03-15 10:10:32.905827', '127.0.0.1', '45', 'shareConsume：分享题库输入参数：字段type=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (333, '2021-03-15 10:10:59.297257', '127.0.0.1', '44', 'share：分享题库输入参数：字段shareType=SHARE_EXAM；字段shareId=SHARE_EXAM', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (334, '2021-03-15 10:13:02.014116', '127.0.0.1', '47', 'share：课程列表页结课报告分享输入参数：shareType=LEARNINGCLASS，shareId=classId，分享成功，通过分享code执行获取结课报告', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (335, '2021-03-15 10:14:04.974762', '127.0.0.1', '48', 'share：每日一练分享输入参数：shareType=DATA，shareId=examtypeId，分享成功，通过分享的code可以执行对应的每日一练', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (336, '2021-03-15 10:15:39.590768', '127.0.0.1', '49', 'share：裂变分享输入参数：shareId=commodityId_tpId_learningClassId；shareType = SHARE_FREE', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (337, '2021-03-15 10:16:40.529964', '127.0.0.1', '32', 'GET/api/v3/{app}/common/share', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (338, '2021-03-15 10:17:06.882346', '127.0.0.1', '33', 'POST/api/v3/{app}/common/consumeShare', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (339, '2021-03-15 10:17:34.132480', '127.0.0.1', '34', 'GET/api/v3/{app}/common/consumeSuccess/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (340, '2021-03-15 10:22:28.070475', '127.0.0.1', '35', 'POST/api/school/student/phoneNumber/decode', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (341, '2021-03-15 10:23:15.677177', '127.0.0.1', '36', 'POST/api/school/student/phoneNumber/encode', 'change', '修改 code，path，desc，tag 和 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (342, '2021-03-15 10:24:26.082913', '127.0.0.1', '35', 'POST/api/school/student/phoneNumber/decode', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (343, '2021-03-15 10:26:02.090199', '127.0.0.1', '37', 'GET/api/v3/{app}/user/devp/token', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (344, '2021-03-15 10:46:25.088651', '127.0.0.1', '46', 'shareConsumeSuccessList：分享题库输入参数：字段type=SHARE_EXAM； 字段targetId=SHARE_EXAM；返回值数量>=3时，题库解锁', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (345, '2021-03-15 10:46:43.392708', '127.0.0.1', '46', 'shareConsumeSuccessList：分享题库输入参数：type=SHARE_EXAM，targetId=SHARE_EXAM；返回值数量>=3时，题库解锁', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (346, '2021-03-16 02:20:37.707719', '127.0.0.1', '38', 'GET/api/v3/{app}/store/private/order/{orderNumber}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (347, '2021-03-16 02:21:02.881376', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口文档', NULL, 1);
INSERT INTO `xadmin_log` VALUES (348, '2021-03-16 02:23:53.787379', '127.0.0.1', '50', 'orderDetail：出参字段bigLessonStatus商品是否有‘大课’标签，字段废弃永远返回true', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (349, '2021-03-16 02:44:10.879913', '127.0.0.1', '51', 'orderDetail：出参字段moveStatus调班状态，当值为0或1时，订单详情页显示‘我要调班’入口', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (350, '2021-03-16 06:13:09.272841', '127.0.0.1', '11', '/api/v3/{app}/user', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (351, '2021-03-16 06:13:48.138915', '127.0.0.1', '37', 'GET/api/v3/{app}/user/devp/token', 'change', '修改 path 和 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (352, '2021-03-16 06:15:31.360903', '127.0.0.1', '39', 'GET/api/v3/{app}/user/me/info', 'change', '修改 code，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (353, '2021-03-17 06:42:19.656734', '127.0.0.1', '7', '新后端_V3.33.2', 'change', '修改 version', 17, 1);
INSERT INTO `xadmin_log` VALUES (354, '2021-03-17 09:30:29.781605', '127.0.0.1', '36', '6_7', 'change', '修改 version', 18, 1);
INSERT INTO `xadmin_log` VALUES (355, '2021-03-17 11:03:53.067600', '127.0.0.1', '6', '康德_V3.13.1', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (356, '2021-03-17 11:05:06.802407', '127.0.0.1', '7', '新后端_V3.33.2', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (357, '2021-03-22 03:55:28.049306', '127.0.0.1', '1', '测试', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (358, '2021-03-22 03:55:52.814160', '127.0.0.1', '2', 'anan', 'change', '修改 user_permissions', 4, 1);
INSERT INTO `xadmin_log` VALUES (359, '2021-03-22 03:56:12.142500', '127.0.0.1', '3', 'yanjiao', 'create', '已添加。', 4, 1);
INSERT INTO `xadmin_log` VALUES (360, '2021-03-22 03:56:29.304635', '127.0.0.1', '3', 'yanjiao', 'change', '修改 groups 和 is_staff', 4, 1);
INSERT INTO `xadmin_log` VALUES (361, '2021-03-22 03:56:35.451206', '127.0.0.1', '3', 'yanjiao', 'change', '没有字段被修改。', 4, 1);
INSERT INTO `xadmin_log` VALUES (362, '2021-03-22 03:58:02.607258', '127.0.0.1', '1', '测试', 'change', '修改 permissions', 3, 1);
INSERT INTO `xadmin_log` VALUES (363, '2021-03-22 03:58:09.707284', '127.0.0.1', '2', 'anan', 'change', '修改 groups 和 user_permissions', 4, 1);
INSERT INTO `xadmin_log` VALUES (364, '2021-03-22 03:58:56.425431', '127.0.0.1', '4', 'zs', 'create', '已添加。', 4, 1);
INSERT INTO `xadmin_log` VALUES (365, '2021-03-22 03:59:03.577318', '127.0.0.1', '4', 'zs', 'change', '修改 groups 和 is_staff', 4, 1);
INSERT INTO `xadmin_log` VALUES (366, '2021-03-22 08:47:18.840000', '127.0.0.1', '40', 'GET/api/v3/{app}/delete/autotest/userInvalid', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (367, '2021-03-22 08:48:59.733395', '127.0.0.1', '40', 'GET/api/v3/{app}/delete/autotest/userInvalid', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (368, '2021-03-26 08:53:44.561180', '172.18.83.50', '8', '康德_V3.14.0', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (369, '2021-03-26 08:54:55.894535', '172.18.83.50', '8', '康德_V3.14.0', 'change', '修改 remark', 17, 2);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'dashboard:home:pos', '', 2);
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 3);
INSERT INTO `xadmin_usersettings` VALUES (4, 'dashboard:home:pos', '', 4);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
