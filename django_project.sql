/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1:3306
 Source Schema         : django_project

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 15/06/2021 10:52:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, '测试');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (5, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (1, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 72);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
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

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$YpBU0T09V1Fm$WERwyxLrLnWtx1u8HLXQ8Tp4EqTKykcYxFjxufuLx5s=', '2021-06-07 09:49:33.139872', 1, 'admin', '', '', '', 1, 1, '2021-02-16 03:21:20.454497');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$36000$MbvfKObVoZSf$O5NhtN25rXwvT+dAfVhYNTlzFK7TJgq2yT6f/HD4GIQ=', '2021-05-13 06:17:58.770528', 0, 'anan', '', '', '', 1, 1, '2021-03-03 10:16:29.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$36000$P4KYMRc4tFSF$Hd6ETIiG6am5hu2oDSML/PGzWm5IF1X7j1P45SZ5ZIs=', '2021-05-18 06:22:36.477684', 0, 'yanjiao', '', '', '', 1, 1, '2021-03-22 03:56:12.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$36000$NhfdqOiTiNxB$btIg3ZyfW8o4Y9eplyOHRCAa4BQUz3v5sU5kEpQZhOM=', '2021-03-22 03:59:17.526041', 0, 'zs', '', '', '', 1, 1, '2021-03-22 03:58:56.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (2, 2, 1);
INSERT INTO `auth_user_groups` VALUES (1, 3, 1);
INSERT INTO `auth_user_groups` VALUES (3, 4, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
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

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
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

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0acbz553gg5hz0vj6xzcp1v9auwo5t38', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-04-12 09:17:19.692936');
INSERT INTO `django_session` VALUES ('2shrlukjun47chko3h7zjsf7d571bs36', 'ZmE2NWNiYmY5N2I0MjAxMmU3ZTc1ZTgwZTY2Mjg3YTg1YmEzZWYyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIl9xXz0mX2NvbHM9dmVyc2lvbi5hcGl0ZXN0My5hcGl0ZXN0LnJlc3VsdC50ZXN0X2RhdGUudGVzdF91c2VyLnByb2RfdXNlci5yZW1hcmsiXX0=', '2021-03-26 10:47:09.100223');
INSERT INTO `django_session` VALUES ('3h3b5dmjywnofsltyqdzer4dvlv2rmoe', 'MTE0NTA1MWU0MDM2OWYxNTViNzY2ZjRmZjI4ZDJmOTRlNWJhMjhlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-03-17 10:18:01.784105');
INSERT INTO `django_session` VALUES ('4hz50t6zegcpxfjrrsngmx5mumbwimz5', 'NGRmNWU0NDYzZTZjMmE1NDU4NmI0NjZmOTQwZGI1ZDliZTQ3YTdmZTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDA3ZTE0NjRhOWUxYmExYmM1YmZmNDUyNGUzZWZlNTI5ZGE5ZTBhIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-04-21 03:34:09.224875');
INSERT INTO `django_session` VALUES ('6vr4s5tno2dt1q7ce1a5b2numw90kugf', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-06-24 03:08:23.189554');
INSERT INTO `django_session` VALUES ('7gvxnb8b8w2o0qffz20mzoqeayxw0ajw', 'ZGYyZTYwZTM2OWVhYTQ0OWFkMjQ2MjNiOTM2MTA2OWZmMGZiYjU2ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIn1dIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwiYXBpdGVzdCJdLCIiXX0=', '2021-03-17 10:30:22.622514');
INSERT INTO `django_session` VALUES ('8paknyu05gjlk15bpmf7ydtq424t74zt', 'YTNhZmI3MThjZWJlMmZhZDdkN2M0M2EwZjlmZDQ3ZWM3OTQ5NTQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDA3ZTE0NjRhOWUxYmExYmM1YmZmNDUyNGUzZWZlNTI5ZGE5ZTBhIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaXRlc3QiXSwiX3JlbF9hcGlfX2lkX19leGFjdD05MyJdfQ==', '2021-06-16 08:43:31.079116');
INSERT INTO `django_session` VALUES ('dni0zgjo883mcrc7zhko1whv3cr5e51y', 'MDY0Nzc5ZGFjYjI4NGJhNzk4ZjI4Mzg3YzE5N2I3YWVlMjBlMTVkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIl9wX3Rlc3RfdXNlcl9faW49JUU4JUI1JUI1JUU3JTg4JUJEIl19', '2021-04-16 10:49:54.138361');
INSERT INTO `django_session` VALUES ('em5nckkzmv9mtbynms0571gey37iahdq', 'MTE0NTA1MWU0MDM2OWYxNTViNzY2ZjRmZjI4ZDJmOTRlNWJhMjhlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-04-23 08:29:35.355337');
INSERT INTO `django_session` VALUES ('hlo7faumqo8p5j2ewvpcmnfofd4o42ui', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-04-08 11:06:37.502134');
INSERT INTO `django_session` VALUES ('j6uow1vv36xfjg01945buhsehr4vmujv', 'MTE0NTA1MWU0MDM2OWYxNTViNzY2ZjRmZjI4ZDJmOTRlNWJhMjhlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-06-03 06:07:00.691441');
INSERT INTO `django_session` VALUES ('jy27wzp6buhyaqthq0m6c7ixa1bsgyza', 'YWUzMDZhMDhiNWYzNTA0Yjc5YTUxNjAzNDY2ZDZmMWY0ZmYwYzVkZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIl9xXz0iXX0=', '2021-04-27 11:28:40.898265');
INSERT INTO `django_session` VALUES ('kg4xf1yeqvqwt5axds4zq1fbgpvavglq', 'MWRkZGNlZmVhNzkyNjUxNWMwOTdiNTZhNTUxNjJmYzE0YmFmOGI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCIiXX0=', '2021-06-16 03:23:18.400468');
INSERT INTO `django_session` VALUES ('mo40zdnpz7rlsqvpe7jh0zvg4rn8ztbl', 'ZGI1OTEzMTk1YWFhN2MyM2Y3MWRjN2NhZWUzYTAwZjFkOTM4ZmY2Yjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDA3ZTE0NjRhOWUxYmExYmM1YmZmNDUyNGUzZWZlNTI5ZGE5ZTBhIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwiYXBpIl0sIl9xXz0lRTglQjUlODQlRTYlOTYlOTkiXSwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSJ9', '2021-05-12 09:47:33.200010');
INSERT INTO `django_session` VALUES ('my137p5e30iywp5vrjibsgyskqdipa89', 'YWUzMDZhMDhiNWYzNTA0Yjc5YTUxNjAzNDY2ZDZmMWY0ZmYwYzVkZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIl9xXz0iXX0=', '2021-05-10 10:14:05.784375');
INSERT INTO `django_session` VALUES ('v1w4y3i985donko66lvbkqeanxtxvr0c', 'OWFjNmNkYzBiMjA5NDA5NGIxY2RiNTYyMzUwNTYxZWI0NDYxYmJhYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb24iXSwiIl19', '2021-04-02 08:18:05.213173');
INSERT INTO `django_session` VALUES ('v3kwkmsavik2x0ubzz6svtqp6v9ltupk', 'MTE0NTA1MWU0MDM2OWYxNTViNzY2ZjRmZjI4ZDJmOTRlNWJhMjhlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-05-27 06:18:23.086536');
INSERT INTO `django_session` VALUES ('vmu7340uvpml8qhgh3mhvyzo0br5pzla', 'ZWNlYjMzYzRlZDZlODA4NTI1YTMxZjBkMjU2YzcxNWNmZDU1ZDkxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXHU1M2Y3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2RvbWFpbi9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC91c2VyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJpbnRlcmZhY2UiLCJhcGkiXSwiIl19', '2021-03-02 11:04:11.274915');
INSERT INTO `django_session` VALUES ('x06ezwfzxvuobgp5vmwdedtvjhna6oht', 'ZGJiMjFjZmEzZjA2YTQzNmY2ZDJhMGFjM2I5MjIzNWUyNzlkNmRkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaSJdLCJfcV89Y29tbW8iXX0=', '2021-06-02 11:53:13.469021');
INSERT INTO `django_session` VALUES ('x7gdj9thpkg6b8wvxi0h5vy10y842cvj', 'YWViZmIxM2RiMGY0ZDRkMDEzMDY2NGEyNWE3OGEwNjdlYzc4OWQxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjdjNWQ1MDgyNTAwMjJkNmU1YmM3ZGE0NzZkZjc5OTAxMmE3ZmE5IiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTUyNGRcdTdhZWZcdTk4NzVcdTk3NjJcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTZkNGJcdThiZDVcdTRlYmFcdTU0NThcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2Zyb250cGFnZS91c2Vycy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2ZDRiXHU4YmQ1XHU4YmExXHU1MjEyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA3fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdTcwYjlcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGl0ZXN0L1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU2NTg3XHU2ODYzXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYXBpL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU2M2E1XHU1M2UzXHU3MjQ4XHU2NzJjXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDEwfSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY4MDdcdTdiN2VcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS90YWcvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMX0sIHtcInRpdGxlXCI6IFwiXHU1N2RmXHU1NDBkXHU1NzMwXHU1NzQwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvZG9tYWluL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTJ9LCB7XCJ0aXRsZVwiOiBcIlx1NTdmYVx1Nzg0MFx1OGRlZlx1NWY4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2Jhc2VwYXRoL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3ZlcnNpb250ZXN0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3VzZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaXRlc3QiXSwiX3JlbF9hcGlfX2lkX19leGFjdD03NSJdfQ==', '2021-05-07 08:58:03.145589');
INSERT INTO `django_session` VALUES ('yllxj4duh50a2dv1oahff9v6400zvx6o', 'NmIxZTY0YjZiYWZkZGFkYjkxYTEzNDc2OTU2MTM1N2RhZjk1YTA2OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImJhc2VwYXRoIl0sIiJdfQ==', '2021-05-27 06:18:59.918119');
INSERT INTO `django_session` VALUES ('yy7006b8dmqlj04o9ulb3odkj036j2hw', 'NGIxMzYxZjgwNzI2OTIzMTU3OTg4NWRhY2NlZmQ3ZjQ2MTc2M2NjYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsImFwaXRlc3QiXSwiX3FfPSVFNCVCRiVBRSVFNiU5NCVCOSVFNSU5NSU4NiVFNSU5MyU4MSJdfQ==', '2021-04-13 12:04:56.078662');
INSERT INTO `django_session` VALUES ('z7bax2tc2l4cn0zlpul4flos2a8zcbhv', 'OGQzYWJmY2QyNjJiNTE4ZDdhMGEzNDA3NTUzMzQ4ODQ1NmYzMzUzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIn1dIiwiTElTVF9RVUVSWSI6W1siaW50ZXJmYWNlIiwidmVyc2lvbnRlc3QiXSwiIl19', '2021-03-29 08:19:45.843947');
INSERT INTO `django_session` VALUES ('zbwz6xczjc1fn5mwem6nlf01cy7t60o6', 'ZDZmNzcyNjQxZThkYTBiNWFjMzU0MWE1MTVkMmE4YTBmNWNhMDVjZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWRmZTNiYTczNjFjNDlmZWIwZThlYTk4Nzc0ZTA0YmU0NDFkMGUzIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTZkNGJcdThiZDVcdThiYTFcdTUyMTJcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9udGVzdC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NmQ0Ylx1OGJkNVx1NzBiOVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL2FwaXRlc3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTY1ODdcdTY4NjNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9hcGkvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTYzYTVcdTUzZTNcdTcyNDhcdTY3MmNcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS92ZXJzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1mb250XCIsIFwib3JkZXJcIjogMTB9LCB7XCJ0aXRsZVwiOiBcIlx1NjNhNVx1NTNlM1x1NjgwN1x1N2I3ZVwiLCBcInVybFwiOiBcIi94YWRtaW4vaW50ZXJmYWNlL3RhZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZm9udFwiLCBcIm9yZGVyXCI6IDExfSwge1widGl0bGVcIjogXCJcdTU3ZGZcdTU0MGRcdTU3MzBcdTU3NDBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2ludGVyZmFjZS9kb21haW4vXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxMn0sIHtcInRpdGxlXCI6IFwiXHU1N2ZhXHU3ODQwXHU4ZGVmXHU1Zjg0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvYmFzZXBhdGgvXCIsIFwiaWNvblwiOiBcImZhIGZhLWZvbnRcIiwgXCJvcmRlclwiOiAxM31dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1mb250XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9pbnRlcmZhY2UvdmVyc2lvbnRlc3QvXCJ9XSIsIkxJU1RfUVVFUlkiOltbImludGVyZmFjZSIsInZlcnNpb250ZXN0Il0sIiJdfQ==', '2021-04-29 10:13:43.532063');

-- ----------------------------
-- Table structure for frontpage_users
-- ----------------------------
DROP TABLE IF EXISTS `frontpage_users`;
CREATE TABLE `frontpage_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frontpage_users
-- ----------------------------
INSERT INTO `frontpage_users` VALUES (1, '2021-02-16 03:25:37.482932', '2021-02-16 03:25:37.482975', 'test', 'test1234', 1, 0);
INSERT INTO `frontpage_users` VALUES (2, '2021-02-16 07:02:50.931479', '2021-02-16 07:02:50.931521', 'test2', 'test1234', 0, 0);

-- ----------------------------
-- Table structure for interface_api
-- ----------------------------
DROP TABLE IF EXISTS `interface_api`;
CREATE TABLE `interface_api`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `del_flag` int(11) NOT NULL,
  `basepath_id` int(11) DEFAULT NULL,
  `domain_id` int(11) NOT NULL,
  `filepath` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `interface_api_domain_id_daa77600_fk_interface_domain_id`(`domain_id`) USING BTREE,
  INDEX `interface_api_basepath_id_2a15c24a_fk_interface_basepath_id`(`basepath_id`) USING BTREE,
  CONSTRAINT `interface_api_basepath_id_2a15c24a_fk_interface_basepath_id` FOREIGN KEY (`basepath_id`) REFERENCES `interface_basepath` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `interface_api_domain_id_daa77600_fk_interface_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `interface_domain` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_api
-- ----------------------------
INSERT INTO `interface_api` VALUES (2, '2021-03-02 08:08:07.945391', '2021-03-09 09:15:01.235338', 'invoiceCreate', 'post', '/invoice', '在app订单详情页创建电子发票', '公司普票：\r\n\"body\": {\r\n	\"orderNumber\": \"20210301164356588KE3tdxftw4\",\r\n	\"buyerType\": 20,\r\n	\"buyerName\": \'公司名称\',\r\n	\"email\": \"zhaoshuang02@jiayans.net\",\r\n	\"invoiceTotalPriceTax\": 100.99,\r\n	\"buyerTaxNo\": \'123456789\',\r\n	\"buyerAddress\": \"北京\",\r\n	\"buyerPhone\": \"010-123456\",\r\n	\"buyerBank\": \"北京银行\",\r\n	\"buyerBankAccount\": \"63256325500000000000000\"\r\n}\r\n个人发票：\r\n\"body\":  {\r\n	\"orderNumber\": \"20210301164356588KE3tdxftw4\",\r\n	\"buyerType\": 10,\r\n	\"buyerName\": \'aaaa\',\r\n	\"email\": \"zhaoshuang02@jiayans.net\",\r\n	\"invoiceTotalPriceTax\": 1.00\r\n}', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4632');
INSERT INTO `interface_api` VALUES (7, '2021-03-03 05:47:31.055539', '2021-03-09 09:15:20.179664', 'orderDetail', 'get', '/order/{orderNumber}', '根据订单编号查询订单详情', '', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3693');
INSERT INTO `interface_api` VALUES (8, '2021-03-09 05:51:11.266879', '2021-06-10 03:08:22.974135', 'paymentNotify', 'put', '/payment/{orderNumber}/payment/notify', '支付成功回调通知', '\"body\": {\"resultCode\": \"SUCCESS\", \"totalFee\": 100, \"paymentType\": 70}, #支付方式 (10微信小程序，15&16微信公众号，20集团支付， 30后台支付，40庆明投放支付，50咖啡金融分期支付，60支付宝61支付宝花呗 62花呗分期，70零零购，80库分期，90百度分期，100先享学，110分付君分期  )\r\n\"path\": {\"orderNumber\": \"20210310153800957Elu3IrREts\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/479');
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
INSERT INTO `interface_api` VALUES (20, '2021-03-12 08:29:44.970084', '2021-04-01 09:10:02.607382', 'commodityCreate', 'post', '/commodity', '创建商品', '\"body\": {\"channel\": \"JYWS\",\r\n	 \"name\": \"名称必填\",  # 必填\r\n	 \"classificationIds\": [2118],  # 必填\r\n	 \"coverImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1594018025987.png\",  # 必填\r\n	 \"shareImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265902175.png\",\r\n	 \"commodityImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265897777.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265898166.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265899575.png\",\r\n	 \"supplierId\": \"0\",  # 0是自营\r\n	 \"resellerCommodityId\": \"\", #武汉加盐商品id\r\n	 \"beiJingResellerCommodityId\": \"\",  #北京加盐商品id\r\n	 \"agreementRuleType\": 1010,  # 必填 规则类型  1000：永久,1005：固定,1010：周期,\r\n	 \"agreementRule\": {\"agreementRuleType\": 1010, \"periodTime\": 120},\r\n	 \"originalPrice\": 100000,  # 必填\r\n	 \"price\": 100000,  # 必填\r\n	 \"costPrice\": 100,  # 必填\r\n	 \"invoice\": True,\r\n	 \"instalments\": True,\r\n	 \"instalmentsPercent\": 10,\r\n	 \"instalmentsType\": \"COOL,ZERO_SHOPPING,COFFEE\",\r\n	 \"sortNumber\": 1,\r\n         \"initBuyerNumber\": 1,\r\n	 \"tag\": \"小课\",\r\n	 \"shopWindow\": \"YC\",\r\n	 \"description\": \"描述必填\",  # 必填\r\n	 \"showApp\": True,\r\n	 \"showMp\": True,\r\n	 \"showPc\": True,\r\n	 \"property\": {\"orderFlow\": \"standard\"},  # standard标准支付/fast快速支付\r\n	 \"type\": 2,\r\n	 \"resellerType\": \"youzan\",\r\n	 \"imSupport\": 0,  # 是否支持群聊:0 不支持，1支持\r\n	 \"changeClassSupport\": 0,  # 是否支持调班:0 不支持，1支持\r\n	 }', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1803');
INSERT INTO `interface_api` VALUES (21, '2021-03-12 08:29:55.926777', '2021-03-12 09:30:44.624752', 'commodityEdit', 'put', '/commodity/{id}', '修改商品', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1827');
INSERT INTO `interface_api` VALUES (22, '2021-03-12 08:33:19.919169', '2021-03-12 09:30:48.033634', 'commoditySearch', 'post', '/commodity/search', '商品列表搜索', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1815');
INSERT INTO `interface_api` VALUES (23, '2021-03-12 08:50:55.653786', '2021-03-12 08:52:01.768924', 'groupUserWaitList', 'post', '/group/user/wait/list', '批量加群用户列表', '', 0, 9, 2, 'http://vuca-fe.jiayans.cn:3001/project/128/interface/api/4107');
INSERT INTO `interface_api` VALUES (24, '2021-03-12 08:59:07.997848', '2021-03-15 05:27:44.545215', 'userCreate', 'post', '/user/', '创建用户信息', '\"body\": {\"channel\": \"JYWS\",\r\n		 \"name\": \"zs\",\r\n		 \"username\": \"test1111\",\r\n		 \"password\": \"test1111\",\r\n		 \"roleIds\": [2],\r\n		 \"masterTeacherIds\": [8377],\r\n		 \"channelIds\": [43],\r\n		 \"status\": 10,\r\n		 \"headImageUrl\": \"https://r-exam-fe.jiayans.net/school/test/JYWS/cms/1615450446836.png\",\r\n		 \"gender\": 2,\r\n		 \"email\": \"zs@163.com\",\r\n		 \"phoneNumber\": \"15510311111\",\r\n		 }', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/771');
INSERT INTO `interface_api` VALUES (25, '2021-03-12 08:59:41.259878', '2021-04-06 11:45:47.676787', 'userSearch', 'post', '/user/search', '用户列表搜索', '\"body\": {\'name\': \"zs\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4857');
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
INSERT INTO `interface_api` VALUES (40, '2021-03-22 08:47:18.838005', '2021-04-08 02:48:19.086134', 'deleteUserIds', 'get', '/v3/delete/autotest/userInvalid', '批量删除用户', '\"query\": {\"userId\": \"多个userId，用逗号隔开\"}', 0, 6, 1, NULL);
INSERT INTO `interface_api` VALUES (41, '2021-03-29 06:55:38.449533', '2021-03-29 07:07:16.365715', 'paymentConfigCreate', 'post', '/payment/config', '支付配置创建', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4209');
INSERT INTO `interface_api` VALUES (42, '2021-03-29 08:08:18.942162', '2021-03-29 08:11:33.154918', 'paymentConfigEdit', 'put', '/payment/config/{id}', '支付配置修改', '\"body\":{}\r\n\"path\":{\"id\":112}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4215');
INSERT INTO `interface_api` VALUES (43, '2021-03-30 02:36:27.053602', '2021-03-31 02:42:55.615093', 'refundRuleDetail', 'post', '/refund/rule/detail/{mainOrderNumber}', '查询订单应退金额详解', '\"path\": {\"mainOrderNumber\": \"主订单\"},\r\n\"body\": {\"orderNumbers\": [\"关联订单\"]}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4727');
INSERT INTO `interface_api` VALUES (44, '2021-03-30 03:35:48.415683', '2021-03-30 03:35:48.415683', 'examQuestionFreezeBatch', 'post', '/examQuestion/freeze/batch', '批量冻结题目(每次最多100个)', '\"headers\":{\"Content-Type\":\"application/json\",\"encryptKey\":\"M5HNl5tCeY\"},\r\n\"body\":{\"type\":\"EXAM_QUESTION_FREEZE\",\"questionIds\":[]}', 0, 8, 1, 'http://vuca-fe.jiayans.cn:3001/project/41/interface/api/4697');
INSERT INTO `interface_api` VALUES (45, '2021-03-30 06:02:49.440928', '2021-03-30 06:15:22.070837', 'OperationUserCreate', 'post', '/im/operation/group/user', '创建运营组-人员', '\"body\":\r\n{\r\n    \"name\": \"安安1\" ,\r\n    \"categoryCode\":\"teacher\",\r\n    \"channel\": \"JYWS\",\r\n    \"role\": 2 , \r\n    \"state\": true,\r\n    \"email\": \"anlijuan@jiayans.net\",\r\n    \"phoneNumber\": \"13800138000\",\r\n    \"userId\":262\r\n         }', 0, 9, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/3975');
INSERT INTO `interface_api` VALUES (46, '2021-03-30 06:10:34.699128', '2021-03-30 09:58:37.282892', 'refundRuleSearch', 'post', '/refund/rule/search', '退费规则搜索', '\"body\":{\r\n				\"id\":1,\r\n				\"ruleName\":\"测试规则修改-接口\",\r\n				\"ruleType\":\"RULE_TYPE_ONE\",\r\n				\"channel\":\"JYWS\",\r\n				\"status\":\"True\",\r\n			}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4737');
INSERT INTO `interface_api` VALUES (47, '2021-03-30 06:10:41.823055', '2021-03-31 02:43:53.476406', 'refundCreate', 'post', '/refund/create', '订单发起退款申请', '\"body\": {\"channel\":\"JYWS\",\"orderNumber\": \"20210330114541836mqfEB7zJp8\"}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4772');
INSERT INTO `interface_api` VALUES (48, '2021-03-30 06:12:48.483439', '2021-03-30 08:02:51.770763', 'refundCommit', 'put', '/refund/commit/{id}', '退款订单提交审批接口', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4777');
INSERT INTO `interface_api` VALUES (49, '2021-03-30 06:13:33.779344', '2021-03-30 10:00:49.199253', 'refundRule', 'get', '/refund/rule/{id}', '退费规则详情', '\"path\": {\"id\": 1}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4707');
INSERT INTO `interface_api` VALUES (50, '2021-03-30 06:14:17.523398', '2021-03-30 06:14:17.523398', 'refundSearch', 'post', '/refund/search', '退款订单搜索接口', '', 0, 6, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4787');
INSERT INTO `interface_api` VALUES (51, '2021-03-30 07:20:16.724812', '2021-03-30 09:59:43.036134', 'refundRuleEdit', 'put', '/refund/rule/{ruleId}', '退费规则修改', '\"path\":{\"ruleId\": 1},\r\n\"body\":{\r\n		\"ruleName\":\"测试规则修改-接口\",\r\n		\"ruleType\":\"RULE_TYPE_ONE\",\r\n		\"channel\":\"JYWS\",\r\n		\"status\":\"True\",\r\n		\"removeProtocolIds\":[],\r\n		\"addProtocolIds\":[94]\r\n	}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4712');
INSERT INTO `interface_api` VALUES (52, '2021-03-30 07:22:46.005750', '2021-03-30 07:22:46.005750', 'OperationUserEdit', 'put', '/im/operation/group/user', '修改运营组-人员', '', 0, 9, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/3981');
INSERT INTO `interface_api` VALUES (53, '2021-03-30 08:53:33.864961', '2021-03-30 09:43:59.759874', 'refundDetail', 'get', '/refund/{id}', '退款详情', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4762');
INSERT INTO `interface_api` VALUES (54, '2021-03-30 08:54:44.293677', '2021-03-30 09:43:41.577483', 'refundDetailInfo', 'get', '/refund/orderInfo/{id}', '退款商品和学员信息', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4757');
INSERT INTO `interface_api` VALUES (55, '2021-03-30 08:57:43.634609', '2021-03-30 09:25:37.052895', 'refundFlowDetail', 'get', '/refund/flow/{id}', '退费流程记录详情', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4752');
INSERT INTO `interface_api` VALUES (56, '2021-03-30 11:26:07.679439', '2021-03-31 08:33:42.827409', 'ManagerCreate', 'post', '/manager', '创建二阶负责人', '“body”:\r\n{\r\n    \"channel\":\"JYWS\",   #渠道，必填\r\n    \"managerName\":\"anan\",   #负责人姓名，必填\r\n    \"userId\":262,    #关联康德用户id，必填\r\n    \"categoryCode\":\"civilServant\"     #sku_code（全局分类）多个用英文逗号分隔，必填\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4682');
INSERT INTO `interface_api` VALUES (57, '2021-03-30 12:11:45.959878', '2021-03-31 08:33:58.288076', 'ManagerEdit', 'put', '/manager/{id}', '修改二阶负责人', '“id” = ManagerCreate.id\r\n\"put\":\r\n{\r\n    \"channel\":\"JYWS\",\r\n    \"managerName\":\"anan\",\r\n    \"userId\":262,\r\n    \"categoryCode\":\"civilServant\"\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4687');
INSERT INTO `interface_api` VALUES (58, '2021-03-31 08:02:37.800400', '2021-03-31 08:02:37.800400', 'ManagerSearch', 'get', '/manager', '查询二阶负责人', '支持左匹配模糊查询\r\n“param”：\r\n key：managerName；value：  //非必填，不传此参数 表示查询所有', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4692');
INSERT INTO `interface_api` VALUES (59, '2021-04-01 03:13:05.888880', '2021-04-01 03:13:05.888880', 'refundAgree', 'put', '/refund/agree/{id}', '退款订单同意退款接口', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4782');
INSERT INTO `interface_api` VALUES (61, '2021-04-01 08:14:47.651633', '2021-04-01 09:39:10.700006', 'configUploadWx', 'post', '/payment/config/upload/wx', '微信证书上传', '', 0, 6, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4842');
INSERT INTO `interface_api` VALUES (62, '2021-04-01 08:58:09.970557', '2021-04-01 09:02:27.221818', 'teachingPlanCreate', 'post', '/teaching/plan', '创建教学计划', '\"body\":{\r\n	\"channel\": \"JYWS\",\r\n	\"name\": \"测试用\",\r\n	\"categoryId\": 1923,\r\n	\"standardPeopleNumber\": 100,\r\n	\"classModeCode\": \"1001\",\r\n	\"supportGiving\": \"false\",\r\n	\"supplierId\": \"0\",\r\n	\"tag\": \"\",\r\n	\"introduction\": \"简介\",\r\n	\"specialtyId\": 1574,\r\n	\"coverImage\": \"https://r-exam-fe.ministudy.com/school/test/JYWS/teaching/1606707941652.png\",\r\n	\"teachingPlanImage\": \"\",\r\n	\"salesLabel\": {\r\n		\"originalPrice\": 1000000,\r\n		\"price\": 10000,\r\n		\"costPrice\": 100\r\n	},\r\n	\"agreementRuleType\": 1000,\r\n	\"agreementRule\": {\r\n		\"agreementRuleType\": 1000\r\n	},\r\n	\"property\": {},\r\n	\"teachingPlanSubjects\": [\r\n		{\r\n			\"subjectId\": 1325,\r\n			\"name\": \"初级会计实务\",\r\n			\"sortNumber\": 0\r\n		}\r\n	],\r\n	\"type\": 1\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1615');
INSERT INTO `interface_api` VALUES (63, '2021-04-01 09:11:10.064042', '2021-04-01 09:11:10.065041', 'commodityPublish', 'post', '/commodity/publish/{id}', '商品上下架', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1811');
INSERT INTO `interface_api` VALUES (64, '2021-04-01 09:29:11.309426', '2021-04-01 09:46:27.426484', 'commodityAddItem', 'post', '/commodity/{id}/item', '商品添加销售项', '\"path\": {\"id\": commodityId},\r\n\"body\": [\r\n	{\"resourceId\": tpId, \"id\": commodityId, \"resourceType\": \"TEACHING_PLAN\", \"channel\": \"JYWS\"}\r\n]', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1831');
INSERT INTO `interface_api` VALUES (65, '2021-04-01 09:34:20.855880', '2021-04-25 07:45:55.795404', 'learningClassCreate', 'post', '/learning/class', '创建学习班', '\"body\":{\r\n				\"channel\":\"JYWS\",\r\n				\"beginDate\":\"\",\r\n				\"name\":\"\",\r\n				\"status\":10,\r\n				\"teachingPlanId\":987,\r\n				\"assistantId\":111,\r\n				\"manuallyClosed\":True,\r\n				\"headTeacher\":\"我的班主任\"\r\n			}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1475');
INSERT INTO `interface_api` VALUES (66, '2021-04-02 10:43:15.627717', '2021-04-02 10:44:32.621911', 'orderSearch2', 'get', '/backstage/order/search', '康德搜索订单', '', 0, 6, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4822');
INSERT INTO `interface_api` VALUES (67, '2021-04-08 02:23:07.670758', '2021-04-08 02:39:43.309004', 'couponCreate', 'post', '/coupon', '创建优惠券活动', '\"body\": {\r\n	\"channel\": \"JYWS\",\r\n	\"discountType\": 10,  # 10优惠卷 20定金卷\r\n	\"name\": \"{}-优惠卷\".format(name),\r\n	\"fullPrice\": 10000,  # 满额\r\n	\"discountPrice\": 20000,  # 减额\r\n	\"term\": 10, #有效期：10：固定20：动态\r\n	\"termTime\": None,\r\n	\"startDate\": time.strftime(\"%Y-%m-%d %H:%M:%S\"),\r\n	\"endDate\": time.strftime(\"%Y-%m-%d %H:%M:%S\", time.localtime(time.time() + 60*60*24*30)),\r\n	\"type\": 10,  # 10全场卷 15单品卷\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1999');
INSERT INTO `interface_api` VALUES (68, '2021-04-08 03:00:13.556290', '2021-04-08 03:00:13.557287', 'refundCheck', 'get', '/refund/check', '校验订单是否可发起退款接口', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4852');
INSERT INTO `interface_api` VALUES (69, '2021-04-13 06:30:29.142964', '2021-04-13 06:30:29.142964', 'StatisticSubjectQuestion', 'get', '/exam/statistic/subject/{id}/question', '查询某个科目下答题统计', '--GET \'http://r-bf-fe.jiayans.net:2002/api/school/exam/statistic/subject/1333/question?studentId=1215213&channel=JYWS\' \\\r\n--\'Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjZXNoaWRlbmdsdSIsImNyZWF0ZWQiOjE2MTgxOTgxMjU0MzIsImV4cCI6MTYxODgwMjkyNX0.zv6GcMlXJom9m3MTEkmn2fG46D5nxY7u1ZAIy68eQD6Bo2kHaMXEcQ_ORezqJrXOEgK84Z_Hp6v3Qxc5LNsUmw\' \\\r\n--header \'channel: JYWS\' \\', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4897');
INSERT INTO `interface_api` VALUES (70, '2021-04-13 08:52:06.153444', '2021-04-13 08:59:26.557435', 'xxxLoanApply', 'post', '/xxx/loan/apply', '先享学分期申请', '', 0, 5, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4902');
INSERT INTO `interface_api` VALUES (71, '2021-04-13 10:29:18.263677', '2021-04-13 10:29:18.263677', 'xxxLoanApplyNotify', 'post', '/enjoy/loan/apply/notify', '先享学回调接口', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4907');
INSERT INTO `interface_api` VALUES (72, '2021-04-19 11:03:35.395814', '2021-04-19 11:04:41.478176', 'orderCancel', 'post', '/order/{orderNumber}/cancel', '取消订单', '\"path\": {\"orderNumber\": \"20210419190046468vihg5HHacr\"}', 0, 4, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3031');
INSERT INTO `interface_api` VALUES (73, '2021-04-23 08:23:46.153783', '2021-04-23 08:31:31.064880', 'paperSearch', 'post', '/exam/paper/search', '搜索试卷', '\"body\": {\r\n	\"channel\": \"JYWS\",\r\n	\"pageIndex\": 1,\r\n	\"pageSize\": 10,\r\n	\"status\": 10,\r\n	\"tag\": \"SCORE\" #随堂考\r\n}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/959');
INSERT INTO `interface_api` VALUES (74, '2021-04-23 08:33:05.985148', '2021-04-23 08:37:30.459071', 'lessonBindPaper', 'put', '/learning/class/theLesson/bind/paper', '课节批量绑定随堂考', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4937');
INSERT INTO `interface_api` VALUES (75, '2021-04-23 08:57:07.989045', '2021-04-23 08:57:50.126394', 'lessonUnbindPaper', 'delete', '/learning/class/theLesson/unbind/paper', '课节批量解绑随堂考', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4932');
INSERT INTO `interface_api` VALUES (76, '2021-04-23 09:35:36.007227', '2021-04-23 09:35:36.007227', 'importLessonPaper', 'post', '/import/exam/question', '上传题目生成试卷并关联课节', '', 0, 6, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4927');
INSERT INTO `interface_api` VALUES (77, '2021-04-25 02:29:55.210029', '2021-04-25 03:42:14.027663', 'classMaterials', 'get', '/class/{learningClassId}/material', '获取学习班课程资料和视频课件接口', '', 0, 12, 7, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4917');
INSERT INTO `interface_api` VALUES (78, '2021-04-25 06:39:18.354800', '2021-04-25 06:42:55.767693', 'lessonBindMaterials', 'post', '/timetable/teacher/workbench/theLesson/materials', '教师工作台数据-关联课节的教学资料', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/3795');
INSERT INTO `interface_api` VALUES (79, '2021-04-25 07:34:45.078080', '2021-04-25 07:53:34.415597', 'lessonDeleteMaterials', 'delete', '/timetable/drop/teacher/workbench/theLesson/materials', '教师工作台数据-移除关联课节的教学资料', '\"body\":{\r\n				\"theLessonIds\":[99],\r\n				\"channel\": \"JYWS\",\r\n				\"materialsId\":111\r\n			}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/3801');
INSERT INTO `interface_api` VALUES (80, '2021-04-25 07:45:05.350235', '2021-04-25 07:53:01.456687', 'learningClassEdit', 'put', '/learning/class/{id}', '修改学习班', '\"path\": {\"id\": 6216},\r\n			\"body\":{\r\n				\"beginDate\":\"2021-05-01 01:00:00\",\r\n				\"name\":\"\",\r\n				\"assistantId\":111,\r\n				\"patch\":1,\r\n				\"manuallyClosed\":1,\r\n				\"headTeacher\":\"我的班主任\"\r\n			}', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1491');
INSERT INTO `interface_api` VALUES (81, '2021-04-25 07:57:18.528556', '2021-04-25 07:57:18.528556', 'classModelMaterials', 'get', '/v3/{app}/course/public/class/{learningClassId}/model/material', '获取学习班课程资料和目录视频课件接口', '', 0, 6, 7, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/4922');
INSERT INTO `interface_api` VALUES (82, '2021-04-26 07:10:09.941117', '2021-04-26 07:10:09.941117', 'lessonPlanIdMaterials', 'get', '/v3/{app}/course/public/lesson/plan/{lessonPlanId}/materials', '课次（兼容课节）获取关联教学资料列表接口', '', 0, 6, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3335');
INSERT INTO `interface_api` VALUES (83, '2021-04-26 07:23:56.144824', '2021-04-26 07:23:56.144824', 'theLessonCreate', 'post', '/learning/class/{id}/theLesson', '创建课节', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1519');
INSERT INTO `interface_api` VALUES (84, '2021-04-26 07:24:55.337613', '2021-04-26 07:24:55.337613', 'theLessonEdit', 'put', '/learning/class/{id}/theLesson', '修改课节', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1523');
INSERT INTO `interface_api` VALUES (85, '2021-04-26 07:28:17.762597', '2021-04-26 07:28:17.762597', 'learningClassTheLessonCopy', 'put', '/learning/class/{id}/theLesson/copy', '学习班套用排课', '', 0, 2, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/1571');
INSERT INTO `interface_api` VALUES (86, '2021-04-26 09:54:40.595708', '2021-04-26 09:54:40.595708', 'fileUpload', 'post', '/common/upload/file', '文件上传', '', 0, 6, 2, 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4912');
INSERT INTO `interface_api` VALUES (87, '2021-04-26 10:12:40.964050', '2021-04-26 10:12:40.964050', 'lessonMaterials', 'get', '/lesson/materials/v2', '课节获取关联教学资料列表接口', '', 0, 12, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/3849');
INSERT INTO `interface_api` VALUES (88, '2021-05-17 08:08:50.271834', '2021-05-17 08:28:28.592397', 'classificationListSaas', 'get', '/classification/sort/list', '商品类目列表saas', '无参数\r\nredis缓存：CLASSIFICATION_SORT_KEY:{0}_{1}_{2}===CLASSIFICATION_SORT_KEY:jyws_APP_EX', 0, 7, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/5202');
INSERT INTO `interface_api` VALUES (89, '2021-05-19 03:13:46.413881', '2021-05-20 06:06:55.375661', 'orderListV2', 'post', '/orderList/v2', '我的订单-带分页', '\"body\": {\r\n		\"pageIndex\": 1,\r\n		\"pageSize\": 10\r\n}', 0, 13, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/5207');
INSERT INTO `interface_api` VALUES (90, '2021-05-19 03:14:22.899363', '2021-05-19 03:15:02.002848', 'orderList', 'get', '/orderList', '我的订单', '', 0, 13, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/2955');
INSERT INTO `interface_api` VALUES (91, '2021-05-19 07:22:40.850928', '2021-05-19 07:38:23.524266', 'phoneLogin', 'post', '/phone/login', '手机号登录', '\"body\": {\r\n	\"phoneNumber\": \"15510311810\",\r\n	\"authCode\":\"2837\"\r\n}', 0, 11, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/5197');
INSERT INTO `interface_api` VALUES (92, '2021-05-19 07:34:35.378059', '2021-05-19 07:47:10.427967', 'sendPhoneCode', 'post', '/phone/SMS', '发送短信验证码', '\"body\": {\r\n	\"phoneNumber\": \"15510311810\"\r\n}', 0, 11, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/287');
INSERT INTO `interface_api` VALUES (93, '2021-05-19 09:21:59.785151', '2021-05-19 09:21:59.785151', 'CouponMe', 'post', '/v3/coupon/me', '我的优惠券', '', 0, 6, 1, 'http://vuca-fe.jiayans.cn:3001/project/23/interface/api/2047');
INSERT INTO `interface_api` VALUES (94, '2021-06-07 09:53:42.188564', '2021-06-07 09:56:37.267272', 'attendanceRecord', 'post', '/attendance/record', '发送心跳', '\"body\": {\r\n	\"teachingPlanId\": tpId,\r\n	\"learningClassId\": classId,\r\n	\"theLessonId\": lessonId,\r\n	# \"finalPosition\": 0   # 回放和点播课节才有该字段\r\n}', 0, 14, 1, 'http://vuca-fe.jiayans.cn:3001/project/77/interface/api/3583');

-- ----------------------------
-- Table structure for interface_api_tag
-- ----------------------------
DROP TABLE IF EXISTS `interface_api_tag`;
CREATE TABLE `interface_api_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `interface_api_tag_api_id_tag_id_38018f22_uniq`(`api_id`, `tag_id`) USING BTREE,
  INDEX `interface_api_tag_tag_id_da9ff573_fk_interface_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `interface_api_tag_api_id_20640249_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `interface_api_tag_tag_id_da9ff573_fk_interface_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `interface_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_api_tag
-- ----------------------------
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
INSERT INTO `interface_api_tag` VALUES (37, 41, 2);
INSERT INTO `interface_api_tag` VALUES (38, 42, 2);
INSERT INTO `interface_api_tag` VALUES (39, 43, 2);
INSERT INTO `interface_api_tag` VALUES (40, 44, 1);
INSERT INTO `interface_api_tag` VALUES (41, 45, 2);
INSERT INTO `interface_api_tag` VALUES (42, 46, 2);
INSERT INTO `interface_api_tag` VALUES (43, 47, 2);
INSERT INTO `interface_api_tag` VALUES (44, 48, 2);
INSERT INTO `interface_api_tag` VALUES (45, 49, 2);
INSERT INTO `interface_api_tag` VALUES (46, 50, 2);
INSERT INTO `interface_api_tag` VALUES (47, 51, 2);
INSERT INTO `interface_api_tag` VALUES (48, 52, 2);
INSERT INTO `interface_api_tag` VALUES (49, 53, 2);
INSERT INTO `interface_api_tag` VALUES (50, 54, 2);
INSERT INTO `interface_api_tag` VALUES (51, 55, 2);
INSERT INTO `interface_api_tag` VALUES (52, 56, 2);
INSERT INTO `interface_api_tag` VALUES (53, 57, 2);
INSERT INTO `interface_api_tag` VALUES (54, 58, 2);
INSERT INTO `interface_api_tag` VALUES (55, 59, 2);
INSERT INTO `interface_api_tag` VALUES (57, 61, 2);
INSERT INTO `interface_api_tag` VALUES (58, 62, 2);
INSERT INTO `interface_api_tag` VALUES (59, 63, 2);
INSERT INTO `interface_api_tag` VALUES (60, 64, 2);
INSERT INTO `interface_api_tag` VALUES (61, 65, 2);
INSERT INTO `interface_api_tag` VALUES (62, 66, 2);
INSERT INTO `interface_api_tag` VALUES (63, 67, 2);
INSERT INTO `interface_api_tag` VALUES (64, 68, 2);
INSERT INTO `interface_api_tag` VALUES (65, 69, 2);
INSERT INTO `interface_api_tag` VALUES (66, 70, 1);
INSERT INTO `interface_api_tag` VALUES (67, 71, 2);
INSERT INTO `interface_api_tag` VALUES (68, 72, 1);
INSERT INTO `interface_api_tag` VALUES (69, 73, 2);
INSERT INTO `interface_api_tag` VALUES (70, 74, 2);
INSERT INTO `interface_api_tag` VALUES (71, 75, 2);
INSERT INTO `interface_api_tag` VALUES (72, 76, 2);
INSERT INTO `interface_api_tag` VALUES (73, 77, 1);
INSERT INTO `interface_api_tag` VALUES (74, 78, 2);
INSERT INTO `interface_api_tag` VALUES (75, 79, 2);
INSERT INTO `interface_api_tag` VALUES (76, 80, 2);
INSERT INTO `interface_api_tag` VALUES (77, 81, 1);
INSERT INTO `interface_api_tag` VALUES (78, 82, 1);
INSERT INTO `interface_api_tag` VALUES (79, 83, 2);
INSERT INTO `interface_api_tag` VALUES (80, 84, 2);
INSERT INTO `interface_api_tag` VALUES (81, 85, 2);
INSERT INTO `interface_api_tag` VALUES (82, 86, 2);
INSERT INTO `interface_api_tag` VALUES (83, 87, 1);
INSERT INTO `interface_api_tag` VALUES (84, 88, 1);
INSERT INTO `interface_api_tag` VALUES (85, 89, 1);
INSERT INTO `interface_api_tag` VALUES (86, 90, 1);
INSERT INTO `interface_api_tag` VALUES (87, 91, 1);
INSERT INTO `interface_api_tag` VALUES (88, 92, 1);
INSERT INTO `interface_api_tag` VALUES (89, 93, 1);
INSERT INTO `interface_api_tag` VALUES (90, 94, 1);

-- ----------------------------
-- Table structure for interface_apitest
-- ----------------------------
DROP TABLE IF EXISTS `interface_apitest`;
CREATE TABLE `interface_apitest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `del_flag` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `interface_apitest_api_id_dae701f8_fk_interface_api_id`(`api_id`) USING BTREE,
  CONSTRAINT `interface_apitest_api_id_dae701f8_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_apitest
-- ----------------------------
INSERT INTO `interface_apitest` VALUES (4, '2021-03-02 08:08:55.554039', '2021-03-09 06:35:06.349562', '个人发票申请成功', '', 0, 2, 1, 0);
INSERT INTO `interface_apitest` VALUES (5, '2021-03-02 08:09:16.164910', '2021-03-09 06:35:09.163065', '公司普票申请成功', '', 0, 2, 1, 0);
INSERT INTO `interface_apitest` VALUES (6, '2021-03-03 05:48:09.982409', '2021-03-09 08:43:01.983954', '出参字段 invoiceStatus 订单开发票状态', '0未开票 5审核中  10申请被拒 15开票成功 25已经作废红冲', 0, 7, 1, 0);
INSERT INTO `interface_apitest` VALUES (7, '2021-03-03 05:49:02.783159', '2021-03-09 08:42:53.103701', '出参字段 invoiceFlag 是否支持开票', '10 可开票 ，20 不可开票，满足以下条件为10，否则为20：\r\n1.2020年9月1号（包括当天）之后已支付成功的订单\r\n2.订单所对应的商品是支持开具发票的\r\n3.在服务期范围内的订单\r\n4.订单支付金额大于0', 0, 7, 1, 0);
INSERT INTO `interface_apitest` VALUES (8, '2021-03-09 05:59:32.038416', '2021-03-11 07:29:27.070227', '入参字段paymentType 支付方式--枚举', '支付方式: 10，微信小程序 15，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(alipay.trade.wap.pay) 61:支付宝花呗支付 70:零零购 80:库分期', 0, 8, 1, 0);
INSERT INTO `interface_apitest` VALUES (9, '2021-03-09 08:31:46.889689', '2021-04-02 08:43:45.047723', '入参字段paymentType支付方式--枚举', '支付方式 (10，微信小程序 15&16，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(wap&app) 61支付宝花呗  62花呗分期 70:零零购信用卡分期，80库分期) 有赞订单 99', 0, 11, 1, 0);
INSERT INTO `interface_apitest` VALUES (10, '2021-03-09 08:34:54.591627', '2021-04-02 08:45:38.761771', '导出文件表头：支付渠道，对应字段paymentType支付方式--枚举', '支付方式 (10，微信小程序 15&16，微信公众号,20集团支付, 30后台支付 40 庆明投放支付 50:咖啡金融分期支付 60:支付宝(wap&app) 61支付宝花呗  62花呗分期 70:零零购信用卡分期，80库分期) 有赞订单 99', 0, 9, 1, 0);
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
INSERT INTO `interface_apitest` VALUES (22, '2021-03-11 07:37:49.305848', '2021-05-17 08:00:24.072805', '列表排序：排序值正序>id正序', '', 0, 16, 0, 10);
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
INSERT INTO `interface_apitest` VALUES (43, '2021-03-15 07:43:32.770370', '2021-05-17 08:00:19.081146', '类目中字段show是否展示，为0时，不返回该类目', '', 0, 16, 0, 10);
INSERT INTO `interface_apitest` VALUES (44, '2021-03-15 10:08:11.576766', '2021-03-15 10:10:59.296259', '分享题库输入参数：字段shareType=SHARE_EXAM；字段shareId=SHARE_EXAM', '', 0, 32, 0, 10);
INSERT INTO `interface_apitest` VALUES (45, '2021-03-15 10:08:44.149638', '2021-03-15 10:10:32.902835', '分享题库输入参数：字段type=SHARE_EXAM', '', 0, 33, 0, 10);
INSERT INTO `interface_apitest` VALUES (46, '2021-03-15 10:09:53.346607', '2021-03-15 10:46:43.391710', '分享题库输入参数：type=SHARE_EXAM，targetId=SHARE_EXAM；返回值数量>=3时，题库解锁', '', 0, 34, 0, 10);
INSERT INTO `interface_apitest` VALUES (47, '2021-03-15 10:13:02.011152', '2021-03-15 10:13:02.011152', '课程列表页结课报告分享输入参数：shareType=LEARNINGCLASS，shareId=classId，分享成功，通过分享code执行获取结课报告', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (48, '2021-03-15 10:14:04.972767', '2021-03-15 10:14:04.972767', '每日一练分享输入参数：shareType=DATA，shareId=examtypeId，分享成功，通过分享的code可以执行对应的每日一练', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (49, '2021-03-15 10:15:39.588767', '2021-03-15 10:15:39.588767', '裂变分享输入参数：shareId=commodityId_tpId_learningClassId；shareType = SHARE_FREE', '', 0, 32, 1, 10);
INSERT INTO `interface_apitest` VALUES (50, '2021-03-16 02:23:53.784393', '2021-03-16 02:23:53.784393', '出参字段bigLessonStatus商品是否有‘大课’标签，字段废弃永远返回true', '', 0, 7, 0, 10);
INSERT INTO `interface_apitest` VALUES (51, '2021-03-16 02:44:10.877919', '2021-03-16 02:44:16.148850', '出参字段moveStatus调班状态，当值为0或1时，订单详情页显示‘我要调班’入口', '0 可调班，1已调班 ，2 不可调班（订单不在服务期或没有配置调班商品），3被调班订单', 0, 7, 1, 10);
INSERT INTO `interface_apitest` VALUES (52, '2021-03-29 07:10:05.781796', '2021-04-01 08:56:37.065929', '当入参paymentType字段为wx，入参字段secret必填', '目前secret字段无任何地方调用，可填任意值\r\n目前接口中，此字段非必填', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (53, '2021-03-29 07:59:16.192125', '2021-04-01 09:53:57.957001', '当入参paymentType字段为wx，入参字段appCert必填', '接口层面未校验必填', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (54, '2021-03-29 07:59:19.787514', '2021-04-01 09:53:52.124621', '当入参paymentType字段为wx，入参字段publicWxAppId必填', '接口层面未校验必填', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (55, '2021-03-29 08:02:55.135829', '2021-03-29 08:02:55.135829', '出参字段code是否提交成功：15 提交成功 ，20 提交失败', '', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (56, '2021-03-29 08:03:22.254299', '2021-03-29 08:03:22.254299', '出参字段code为20时，message字段返回错误信息', '', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (57, '2021-03-29 08:13:23.382235', '2021-04-01 08:47:07.332089', '当入参paymentType字段为wx，入参字段appCert必填', '', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (58, '2021-03-29 08:13:26.415127', '2021-04-01 08:47:18.789433', '当入参paymentType字段为wx，入参字段publicWxAppId必填', '', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (59, '2021-03-29 08:13:29.249550', '2021-04-01 08:47:32.013082', '当入参paymentType字段为wx，入参字段wxAppId必填', '', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (60, '2021-03-29 08:13:39.912068', '2021-03-29 08:13:39.912068', '出参字段code是否提交成功：15 提交成功 ，20 提交失败', '', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (61, '2021-03-29 08:13:51.505081', '2021-03-29 08:13:51.505081', '出参字段code为20时，message字段返回错误信息', '', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (62, '2021-03-30 02:51:30.369664', '2021-03-30 02:51:30.369664', '下单时，增加字段ruleId 、ruleType退费规则类型，将字段存储到数据库表orders中，接口的入参出参不变', '', 0, 13, 1, 10);
INSERT INTO `interface_apitest` VALUES (63, '2021-03-30 03:36:30.616883', '2021-03-30 03:36:30.616883', '接口执行，对应的题目id，置为下架状态', '', 0, 44, 1, 10);
INSERT INTO `interface_apitest` VALUES (64, '2021-03-30 03:37:03.888911', '2021-03-30 03:37:03.888911', '题目id超过100个，会报错', '', 0, 44, 1, 10);
INSERT INTO `interface_apitest` VALUES (65, '2021-03-30 03:37:36.654325', '2021-03-30 03:37:49.507952', '题目id已经为下架状态时，可以执行成功', '', 0, 44, 1, 10);
INSERT INTO `interface_apitest` VALUES (66, '2021-03-30 03:56:34.486419', '2021-03-31 05:46:32.341161', '入参mainOrderNumber为主订单号，当订单没有退费规则时，hasRule返回false；当订单未发起退费申请时，报500给提示', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (67, '2021-03-30 03:57:05.325971', '2021-03-30 03:57:05.325971', '入参orderNumbers为关联订单号数组，可以为空', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (68, '2021-03-30 03:58:39.846279', '2021-03-31 05:46:51.449111', '出参hasRule是否有规则，为false时除字段amount，其他字段均返回null', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (69, '2021-03-30 03:59:03.256697', '2021-03-30 03:59:03.256697', '出参paymentDate为主订单的支付完成时间', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (70, '2021-03-30 03:59:29.843617', '2021-03-30 03:59:29.843617', '出参refundDate为二阶班主任发起退款申请的时间', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (71, '2021-03-30 04:00:18.685042', '2021-03-30 04:00:18.685042', '出参diffCount为时长(refundDate - paymentDate)单位毫秒', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (72, '2021-03-30 04:02:26.795587', '2021-03-30 04:02:26.795587', '出参ruleType、ruleTypeReal为退费规则计算公式和代入值计算公式，退费规则取主订单的退费规则', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (73, '2021-03-30 04:02:51.612211', '2021-03-30 04:06:47.018867', '出参amount为所有订单的实付金额之和', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (74, '2021-03-30 04:04:20.294122', '2021-03-30 04:04:20.294122', '出参refundAmount为应退金额，根据ruleTypeReal得出的值，四舍五入2位小数', '', 0, 43, 0, 10);
INSERT INTO `interface_apitest` VALUES (75, '2021-03-30 06:20:17.924896', '2021-03-30 08:01:31.781581', '入参id为退费规则id', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (76, '2021-03-30 06:20:50.125809', '2021-03-30 06:20:50.125809', '当订单为撤销退费、退费被拒、未进行过退费的订单时，发起成功', '', 0, 47, 0, 10);
INSERT INTO `interface_apitest` VALUES (77, '2021-03-30 06:21:10.136314', '2021-03-30 06:21:10.136314', '当订单为退费中、审核中、退费失败的订单时，发起失败', '', 0, 47, 0, 10);
INSERT INTO `interface_apitest` VALUES (78, '2021-03-30 06:23:37.444497', '2021-03-30 06:23:37.444497', '出参id，为入参传入的id', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (79, '2021-03-30 06:24:39.826724', '2021-03-30 06:38:08.728195', '出参createDate为退费规则创建时间', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (80, '2021-03-30 06:24:59.316620', '2021-03-30 06:38:15.663684', '出参modifiedDate为退费规则修改时间', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (81, '2021-03-30 06:25:40.682032', '2021-03-30 06:25:40.682032', '出参ruleName为退费规则名称', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (82, '2021-03-30 06:26:08.258334', '2021-03-30 06:38:23.119720', '出参channel为退费规则所在渠道', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (83, '2021-03-30 06:26:25.635856', '2021-03-30 06:37:55.812723', '出参status为退费规则当前状态', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (84, '2021-03-30 06:29:57.327911', '2021-04-02 08:42:55.732564', '出参status退费状态，发起成功后置为 0 退费中', '', 0, 47, 0, 10);
INSERT INTO `interface_apitest` VALUES (85, '2021-03-30 06:30:53.703226', '2021-03-30 07:35:25.901206', '入参字段增加“userId”为必填项，创建并关联成功', '数据库表“im_operation_group_user.userId”值=\"user.id\"值', 0, 45, 0, 10);
INSERT INTO `interface_apitest` VALUES (86, '2021-03-30 06:34:04.842203', '2021-03-30 06:34:04.842203', '出参ruleType为退费规则公式', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (87, '2021-03-30 06:37:40.971400', '2021-03-31 08:17:35.437642', '出参protocolList为关联协议列表，类型为object []，返回退费规则已关联的协议；\r\n顺序为关联时间正序；', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (88, '2021-03-30 07:08:07.123340', '2021-03-30 07:48:59.961884', '入参字段userId值为空 / 已关联运营人员 / 值不存在，创建不成功且抛出提示信息', '', 0, 45, 0, 10);
INSERT INTO `interface_apitest` VALUES (89, '2021-03-30 07:15:35.492663', '2021-03-30 07:15:35.492663', '入参orderNumber主订单号，精准搜索', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (90, '2021-03-30 07:15:55.778431', '2021-03-30 07:15:55.778431', '入参relatedOrderNumber关联订单号，精准搜索', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (91, '2021-03-30 07:16:43.977574', '2021-03-30 07:20:53.824629', '入参studentId、phoneNumber主订单对应的学员及手机号，手机号明文输入，精准搜索', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (92, '2021-03-30 07:16:59.658652', '2021-04-02 08:43:10.602810', '入参status退费状态', '0：退费中;5:审核中; 10:撤销退费; 20:自动退费中,  30:退款失败（原因：余额不足，网络超时等等...）; 40:异常退费; 50:退费成功；60:退费被拒;', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (93, '2021-03-30 07:18:37.403340', '2021-03-30 07:18:37.403340', '出参name、company为已关联协议名称和公司主体', '', 0, 49, 0, 10);
INSERT INTO `interface_apitest` VALUES (94, '2021-03-30 07:19:15.791711', '2021-03-30 07:19:15.791711', '入参createBeginDate、createEndDate退款发起的起止时间', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (95, '2021-03-30 07:20:14.440918', '2021-03-30 07:42:45.801172', '入参modifiedBeginDate、modifiedEndDate退款记录状态变更的起止时间，不包含退费中的记录', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (96, '2021-03-30 07:24:11.717607', '2021-03-30 08:01:43.187088', '入参ruleName为退费规则名称，必填，最大30', '长度前端限制', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (97, '2021-03-30 07:24:32.003347', '2021-03-30 07:27:01.975438', '入参submit提交状态（提交true，撤回false），必填，当为false时除字段refundReason外其他字段均不需要给值', '', 0, 48, 0, 10);
INSERT INTO `interface_apitest` VALUES (98, '2021-03-30 07:24:36.230050', '2021-03-31 07:10:04.523196', '入参ruleType为退费公式，必填，可修改退费公式（目前只有一条公式可选）', '测试结果：接口层面，该字段可传不超过数据库长度限制的任何内容', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (99, '2021-03-30 07:24:59.417059', '2021-03-30 07:50:05.995350', '入参status为退费规则状态，必填，boolean', '', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (100, '2021-03-30 07:25:33.610645', '2021-03-30 07:25:33.610645', '入参refundReason必填，当submit=true为退款原因，当submit=false为撤回原因', '', 0, 48, 0, 10);
INSERT INTO `interface_apitest` VALUES (101, '2021-03-30 07:25:50.088593', '2021-03-30 07:29:05.248850', '入参removeProtocolIds为要删除的协议ids，类型为number []，可删除已关联的协议', '', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (102, '2021-03-30 07:26:14.821471', '2021-03-30 07:29:32.097072', '入参addProtocolIds为要添加的协议ids，类型为number []，可添加关联协议', '', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (103, '2021-03-30 07:30:01.610171', '2021-04-02 08:42:46.667805', '出参status退费状态，当submit=true为 5 审核中，当submit=false为 10 撤销退费', '', 0, 48, 0, 10);
INSERT INTO `interface_apitest` VALUES (104, '2021-03-30 07:32:44.614394', '2021-03-30 07:32:44.614394', '入参字段userId值未关联过运营人员时，修改并关联成功', '', 0, 52, 0, 10);
INSERT INTO `interface_apitest` VALUES (105, '2021-03-30 07:32:58.333716', '2021-03-30 07:47:45.128944', '入参字段userId值为空 / 已关联运营人员 / 不存在的值，不允许关联并抛出提示信息', '', 0, 52, 0, 10);
INSERT INTO `interface_apitest` VALUES (106, '2021-03-30 07:40:31.950011', '2021-03-31 07:03:08.777655', '添加已已选协议列表中的协议', '测试结果：重复的协议，忽略', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (107, '2021-03-30 07:40:52.663635', '2021-03-31 07:03:23.650893', '删除不在已选协议列表中的协议', '测试结果：不存在的协议，忽略', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (108, '2021-03-30 07:52:35.606378', '2021-03-31 07:08:09.556549', '添加非当前渠道下的协议', '测试结果：可添加成功，且正常返回协议数据', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (109, '2021-03-30 07:53:00.889786', '2021-03-31 07:08:15.820802', '添加不存在的协议', '测试结果：可添加成功，返回值中无不存在协议数据', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (110, '2021-03-30 08:15:19.663339', '2021-03-30 08:18:25.794735', '入参orderNumber主订单，订单状态应该为15，否则发起失败', '', 0, 47, 0, 1);
INSERT INTO `interface_apitest` VALUES (111, '2021-03-30 08:48:36.393225', '2021-03-30 08:48:43.563084', '入参token有角色限制，非二阶班主任，发起失败', '', 0, 47, 0, 0);
INSERT INTO `interface_apitest` VALUES (112, '2021-03-30 08:49:09.882691', '2021-03-30 08:49:09.882691', '入参token有角色限制，非二阶班主任，提交失败', '', 0, 48, 0, 1);
INSERT INTO `interface_apitest` VALUES (113, '2021-03-30 08:51:09.537804', '2021-03-30 08:51:45.372004', '入参token有角色限制，二阶班主任返回自己提交的记录，业务负责人返回自己sku下的所有记录，财务和超级管理员返回全部记录', '', 0, 50, 0, 1);
INSERT INTO `interface_apitest` VALUES (114, '2021-03-30 08:59:46.855189', '2021-04-02 08:42:19.589214', '出参status退费状态，0：退费中;5:审核中; 10:撤销退费; 20:自动退费中,  30:退款失败（原因：余额不足，网络超时等等...）; 40:异常退费; 50:退费成功；60:退费被拒;', '', 0, 53, 0, 10);
INSERT INTO `interface_apitest` VALUES (115, '2021-03-30 09:06:59.070697', '2021-03-30 09:07:50.021485', '出参orderInfo为主订单相关信息，协议和退费规则应返回id和名称', '', 0, 54, 0, 10);
INSERT INTO `interface_apitest` VALUES (116, '2021-03-30 09:07:40.037206', '2021-03-30 09:07:40.037206', '出参studentInfo主订单学员相关信息，手机号明文显示', '', 0, 54, 0, 10);
INSERT INTO `interface_apitest` VALUES (117, '2021-03-30 09:14:51.831811', '2021-03-30 10:26:40.691444', '出参type审批类型firstApprove、operationApprove、managerApprove，financialOfficerApprove、lastApprove', 'firstApprove初始审批\r\noperationApprove运营审批\r\nmanagerApprove负责人审批\r\nfinancialOfficerApprove财务审批\r\nlastApprove最终审批', 0, 55, 0, 10);
INSERT INTO `interface_apitest` VALUES (118, '2021-03-30 09:15:55.106651', '2021-03-30 09:59:17.091466', '出参approveStatus审批状态 0 初始化（灰色）5进行中（亮色） 10 审批失败 40 审批成功（10和40亮色）', '', 0, 55, 0, 10);
INSERT INTO `interface_apitest` VALUES (119, '2021-03-30 09:16:46.438431', '2021-03-30 10:00:15.952109', '出参approver实际操作人或可审核人姓名，多个/间隔；approveUserIds可以审批的人的id，数组', '', 0, 55, 0, 10);
INSERT INTO `interface_apitest` VALUES (120, '2021-03-30 09:20:16.227566', '2021-03-30 09:21:20.292323', '出参approveNode流程中的节点名称', '', 0, 55, 0, 10);
INSERT INTO `interface_apitest` VALUES (121, '2021-03-30 09:23:59.038899', '2021-03-30 09:26:46.853265', '出参approveRemark流程下面的备注（撤销原因/拒绝原因/退费结果等）', '', 0, 55, 0, 9);
INSERT INTO `interface_apitest` VALUES (122, '2021-03-30 09:55:30.292795', '2021-03-30 09:55:30.292795', '入参ruleName规则名称，支持模糊搜索', '', 0, 46, 0, 10);
INSERT INTO `interface_apitest` VALUES (123, '2021-03-30 11:45:07.193047', '2021-03-30 12:06:16.328121', '入参字段channel必填项，string，不可为空。为空时提示“渠道不可为空”', '{\r\n    \"message\": \"渠道不可为空\",\r\n    \"control\": true\r\n}', 0, 56, 0, 10);
INSERT INTO `interface_apitest` VALUES (124, '2021-03-30 11:46:58.409718', '2021-03-30 12:06:34.787771', '入参字段managerName必填项，string，不可为空。为空时提示“负责人姓名不可为空”', '{\r\n    \"message\": \"负责人姓名不可为空\",\r\n    \"control\": true\r\n}', 0, 56, 0, 10);
INSERT INTO `interface_apitest` VALUES (125, '2021-03-30 11:48:15.796830', '2021-03-30 12:06:44.721215', '入参字段userId必填项，string，不可为空。为空时提示“康德关联用户不可为空”', '{\r\n    \"message\": \"康德关联用户不可为空\",\r\n    \"control\": true\r\n}', 0, 56, 0, 10);
INSERT INTO `interface_apitest` VALUES (126, '2021-03-30 11:49:23.483874', '2021-03-30 12:06:52.372787', '入参字段categoryCode必填项，string，不可为空。为空时提示“SKU不可为空”', '{\r\n    \"message\": \"SKU不可为空\",\r\n    \"control\": true\r\n}', 0, 56, 0, 10);
INSERT INTO `interface_apitest` VALUES (127, '2021-03-30 12:04:26.553594', '2021-03-30 12:04:26.553594', '入参字段categoryCode添加 5 个“sku_code(全局分类)\"用英文逗号分隔', '入参：\"categoryCode\":\"civilServant,english,Financial,chinesepainting\"\r\n 返回值：\"categoryCode\": \"civilServant,english,Financial,chinesepainting\"', 0, 56, 0, 10);
INSERT INTO `interface_apitest` VALUES (128, '2021-03-31 03:10:19.446450', '2021-03-31 03:10:19.446450', '修改入参channel字段值成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (129, '2021-03-31 03:10:27.467036', '2021-03-31 03:10:27.467036', '修改入参managerName字段值成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (130, '2021-03-31 03:10:32.042774', '2021-03-31 03:10:32.042774', '修改入参userId字段值成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (131, '2021-03-31 03:10:44.429660', '2021-03-31 03:10:44.429660', '修改入参categoryCode字段值成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (132, '2021-03-31 03:10:51.292313', '2021-03-31 03:10:51.292313', '修改入参categoryCode字段值>1 修改成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (133, '2021-03-31 03:10:59.280956', '2021-03-31 03:10:59.280956', '修改入参categoryCode字段值为空，修改不成功', '', 0, 57, 0, 10);
INSERT INTO `interface_apitest` VALUES (134, '2021-03-31 07:28:29.923224', '2021-03-31 07:28:29.923224', '修改任意字段后，出参modifiedDate更新', '', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (135, '2021-03-31 08:13:20.896139', '2021-03-31 08:13:20.896139', '入参“managerName” 非必填项，为空时搜索全部', '', 0, 58, 0, 10);
INSERT INTO `interface_apitest` VALUES (136, '2021-03-31 08:16:16.993387', '2021-03-31 08:16:16.993387', '出参protocolList顺序为关联时间正序', '', 0, 51, 0, 10);
INSERT INTO `interface_apitest` VALUES (137, '2021-03-31 08:33:08.738544', '2021-03-31 08:33:08.738544', '入参“managerName” 支持模糊匹配', '', 0, 58, 0, 10);
INSERT INTO `interface_apitest` VALUES (138, '2021-03-31 11:50:14.919366', '2021-03-31 11:50:14.919366', '入参ruleName为空时，搜索全部', '', 0, 46, 0, 10);
INSERT INTO `interface_apitest` VALUES (139, '2021-04-01 02:54:21.810008', '2021-04-01 02:54:21.810008', '出参categoryCode为发起申请的二阶班主任所有的sku', '', 0, 47, 0, 10);
INSERT INTO `interface_apitest` VALUES (140, '2021-04-01 03:38:15.286831', '2021-04-01 03:38:15.286831', '入参orderType增加状态40，查询已退款订单', '', 0, 11, 0, 10);
INSERT INTO `interface_apitest` VALUES (141, '2021-04-01 03:40:17.722514', '2021-04-01 03:40:17.723507', '导出文件：订单状态字段，增加已退费类型', '', 0, 9, 0, 10);
INSERT INTO `interface_apitest` VALUES (142, '2021-04-01 05:27:14.478290', '2021-04-01 05:27:14.478290', '列表排序：优先展示退费中和审核中状态，其次按照发起时间进行倒叙排列', '', 0, 50, 0, 10);
INSERT INTO `interface_apitest` VALUES (143, '2021-04-01 05:29:19.823192', '2021-04-01 05:29:19.823192', '入参agree审核状态，true 通过， false拒绝', '', 0, 59, 0, 10);
INSERT INTO `interface_apitest` VALUES (144, '2021-04-01 05:33:10.699967', '2021-04-01 05:33:10.699967', '当agree=true，当二阶班主任执行时，退费状态变为5审核中；当财务执行时，退费状态变为20自动退费中', '', 0, 59, 0, 10);
INSERT INTO `interface_apitest` VALUES (145, '2021-04-01 05:33:29.740060', '2021-04-02 08:41:53.904883', '当agree=false，退费状态变为60退费被拒', '', 0, 59, 0, 10);
INSERT INTO `interface_apitest` VALUES (146, '2021-04-01 05:34:19.301562', '2021-04-01 05:34:19.301562', '入参remark退费被拒的原因', '', 0, 59, 0, 10);
INSERT INTO `interface_apitest` VALUES (147, '2021-04-01 06:06:02.678326', '2021-04-01 06:06:02.678326', '出参relatedOrderRefundRecords中字段status状态为订单退款状态， 0，退款中 10，退款失败 15，退款完成', '', 0, 53, 0, 10);
INSERT INTO `interface_apitest` VALUES (148, '2021-04-01 08:19:32.397390', '2021-04-01 09:53:46.525590', '当入参paymentType字段为wx，入参字段wxAppId必填', '接口层面未校验必填', 0, 41, 0, 10);
INSERT INTO `interface_apitest` VALUES (149, '2021-04-01 08:48:37.621682', '2021-04-01 08:48:37.621682', '当入参paymentType字段为wx，入参字段secret必填', '目前secret字段无任何地方调用，可填任意值', 0, 42, 0, 10);
INSERT INTO `interface_apitest` VALUES (150, '2021-04-01 10:06:52.860363', '2021-04-26 09:52:45.716752', '上传微信证书，返回赋值给appCent的加密串', '', 0, 61, 1, 10);
INSERT INTO `interface_apitest` VALUES (151, '2021-04-02 10:49:18.683120', '2021-04-02 10:49:18.683120', '排序：支付时间倒序', '', 0, 66, 0, 10);
INSERT INTO `interface_apitest` VALUES (152, '2021-04-13 07:02:31.616396', '2021-04-13 07:02:31.616396', '入参“studentId”和“channel”为必填字段，为空时无法返回数据', '', 0, 69, 0, 10);
INSERT INTO `interface_apitest` VALUES (153, '2021-04-13 07:06:02.851705', '2021-04-13 07:06:02.851705', '入参studentId = {{studentId}}、channel = {{channel}}，subject = {{subjectId}}可正确查询对应的题目统计数', '返回body：\r\n\r\n{\r\n    \"totalQuestionsOfSubject\": 2916,\r\n    \"sumCorrectQuestionsOfSubject\": 5,\r\n    \"sumAnswerQuestionsOfSubject\": 32\r\n}', 0, 69, 0, 10);
INSERT INTO `interface_apitest` VALUES (154, '2021-04-13 07:12:52.815673', '2021-04-13 07:12:52.815673', '套卷 或章节 中题目重复作答，只统计最后一次作答，\r\n统计入totalQuestionsOfSubject 和 sumCorrectQuestionsOfSubject中', '', 0, 69, 0, 10);
INSERT INTO `interface_apitest` VALUES (155, '2021-04-13 08:53:13.524334', '2021-04-13 09:30:24.337327', '入参orderNumber，订单状态应该为11或12，提示“当前订单状态为：*, 不可分期支付，订单号：***”', '', 0, 70, 0, 10);
INSERT INTO `interface_apitest` VALUES (156, '2021-04-13 08:54:05.344823', '2021-04-13 09:29:40.371865', '订单商品应该在先享学系统中有对应的编码（有编码商品id=3017），提示“购买商品没有配置先享学课程编号”', '', 0, 70, 0, 10);
INSERT INTO `interface_apitest` VALUES (157, '2021-04-13 08:54:39.021763', '2021-04-13 08:55:07.821768', '出参loanUrl，先享学分期地址，可申请分期', '', 0, 70, 0, 10);
INSERT INTO `interface_apitest` VALUES (158, '2021-04-13 09:02:13.555981', '2021-04-13 09:21:15.910991', '分期金额应大于1000且小于课程金额（由先享学设置）', '', 0, 70, 0, 10);
INSERT INTO `interface_apitest` VALUES (159, '2021-04-13 11:23:01.305110', '2021-04-13 11:27:12.475627', '入参orderId为payment_number', '', 0, 71, 0, 7);
INSERT INTO `interface_apitest` VALUES (160, '2021-04-13 11:24:05.399759', '2021-04-13 11:27:47.823128', '入参noticeCode=2时，出参respCode返回1，不做任何处理', '', 0, 71, 0, 12);
INSERT INTO `interface_apitest` VALUES (161, '2021-04-13 11:24:57.645086', '2021-04-13 11:26:11.193460', '入参noticeCode=1时，当订单状态为12或15时，出参respCode返回1；否则出参respCode返回2', '', 0, 71, 0, 10);
INSERT INTO `interface_apitest` VALUES (162, '2021-04-13 11:25:53.074928', '2021-04-13 11:27:09.583370', '出参respCode接口执行是否成功，1- 成功      2- 失败', '', 0, 71, 0, 8);
INSERT INTO `interface_apitest` VALUES (163, '2021-04-13 11:26:50.503374', '2021-04-13 11:26:50.503374', '入参noticeCode=1时，订单状态=12时，执行成功后，订单状态变成15', '', 0, 71, 0, 10);
INSERT INTO `interface_apitest` VALUES (164, '2021-04-19 10:37:30.544140', '2021-04-19 12:38:02.432475', '订单支付总金额必须大于500元，首付最低1元，向上取整', '', 0, 13, 0, 10);
INSERT INTO `interface_apitest` VALUES (165, '2021-04-23 08:32:17.677294', '2021-04-23 08:32:17.677294', 'tag=’SCORE‘，status=10 的是随堂考可选套卷', '', 0, 73, 0, 10);
INSERT INTO `interface_apitest` VALUES (166, '2021-04-25 03:09:45.306771', '2021-04-25 03:09:45.306771', '一个课节只能绑定一个试卷，多次执行，试卷id更新', '', 0, 74, 0, 10);
INSERT INTO `interface_apitest` VALUES (167, '2021-04-25 03:10:57.630434', '2021-04-25 03:10:57.630434', '解绑成功', '', 0, 75, 0, 10);
INSERT INTO `interface_apitest` VALUES (168, '2021-04-25 03:11:12.734064', '2021-04-25 03:13:01.157268', '导入成功，新增一条试卷，上架状态，同时与课节关联成功', '', 0, 76, 0, 10);
INSERT INTO `interface_apitest` VALUES (169, '2021-04-25 03:11:35.307730', '2021-04-25 03:11:35.307730', '所属功能默认“套卷模拟”', '', 0, 76, 0, 10);
INSERT INTO `interface_apitest` VALUES (170, '2021-04-25 03:11:56.365445', '2021-04-25 03:11:56.365445', '套卷名称取第一条数据的值', '', 0, 76, 0, 10);
INSERT INTO `interface_apitest` VALUES (171, '2021-04-25 03:12:28.244240', '2021-04-25 03:12:28.244240', '文件不能大于5M，条数不能大于10000条', '', 0, 76, 0, 10);
INSERT INTO `interface_apitest` VALUES (172, '2021-04-25 06:57:31.601749', '2021-04-25 06:57:31.601749', '出参teachingPlanMaterials为教学计划关联资料列表，排序为上传时间正序', '', 0, 77, 0, 10);
INSERT INTO `interface_apitest` VALUES (173, '2021-04-25 06:59:02.240490', '2021-04-25 06:59:02.240490', '出参theLessonMaterials为课次和课节关联资料列表，排序：课节顺序>关联时间正序，同一课节相同资料去重，保留课次关联的资料', '', 0, 77, 0, 10);
INSERT INTO `interface_apitest` VALUES (174, '2021-04-26 02:21:36.563544', '2021-04-26 02:21:36.563544', '下架或不存在的试卷，绑定失败，返回相应提示', '', 0, 74, 0, 10);
INSERT INTO `interface_apitest` VALUES (175, '2021-04-26 03:58:12.889108', '2021-04-26 03:59:06.566600', '入参theLessonIds字段必填，number []，不可为空', '', 0, 78, 0, 10);
INSERT INTO `interface_apitest` VALUES (176, '2021-04-26 03:59:56.202934', '2021-04-26 03:59:56.202934', '入参materialsIds字段，number []，不可为空', '', 0, 78, 0, 10);
INSERT INTO `interface_apitest` VALUES (177, '2021-04-26 07:15:57.619833', '2021-04-26 07:15:57.619833', '创建合班课，不同步合班课已关联的教学资料', '', 0, 65, 0, 10);
INSERT INTO `interface_apitest` VALUES (178, '2021-04-26 07:17:45.940313', '2021-04-26 07:17:45.940313', '创建关联课次的课节，不同步课次关联的教学资料给课节', '', 0, 65, 0, 10);
INSERT INTO `interface_apitest` VALUES (179, '2021-04-26 08:27:41.360761', '2021-04-26 08:27:41.360761', '创建合班课，不同步已关联的教学资料', '', 0, 83, 0, 10);
INSERT INTO `interface_apitest` VALUES (180, '2021-04-26 08:37:57.289465', '2021-04-26 08:37:57.289465', '创建课节，所关联课次关联的教学资料，不同步给课节', '', 0, 83, 0, 10);
INSERT INTO `interface_apitest` VALUES (181, '2021-04-26 08:52:52.301263', '2021-04-26 08:52:52.301263', '修改课节，修改后符合合班逻辑，不同步合班课中已关联的教学资料', '', 0, 84, 0, 10);
INSERT INTO `interface_apitest` VALUES (182, '2021-04-26 08:53:05.399255', '2021-04-26 08:53:05.399255', '修改课节，所关联课次关联的教学资料，不同步给课节', '', 0, 84, 0, 10);
INSERT INTO `interface_apitest` VALUES (183, '2021-04-26 09:33:39.244066', '2021-04-26 09:33:39.244066', '套用排课后，课节符合合班逻辑，不同步合班课中的教学资料', '', 0, 85, 0, 10);
INSERT INTO `interface_apitest` VALUES (184, '2021-04-26 09:56:01.193254', '2021-04-26 09:56:01.193254', '入参file、channel、module字段，必填', '', 0, 86, 0, 10);
INSERT INTO `interface_apitest` VALUES (185, '2021-04-26 09:56:39.212635', '2021-04-26 09:56:56.103489', '文件最大不能超过10M', '', 0, 86, 0, 10);
INSERT INTO `interface_apitest` VALUES (186, '2021-04-26 10:14:01.330247', '2021-04-26 10:14:01.331244', '排序：关联时间正序，相同资料去重，保留课次关联的资料', '', 0, 87, 0, 10);
INSERT INTO `interface_apitest` VALUES (187, '2021-04-27 11:28:50.522162', '2021-04-27 11:28:50.522162', '出参teachingPlanMaterials，按关联时间正序排列，关联时间相同，按资料id正序', '', 0, 81, 0, 10);
INSERT INTO `interface_apitest` VALUES (188, '2021-04-27 11:31:27.569403', '2021-04-27 11:31:27.569403', '出参subjectList，返回教学资料目录结构，同一级资料，按课节id>关联时间>资料id 正序排序', '', 0, 81, 0, 10);
INSERT INTO `interface_apitest` VALUES (189, '2021-05-17 08:11:55.009039', '2021-05-17 08:11:55.009039', '排序：排序值大于0正序（0排后面） >  类目id正序', '', 0, 88, 0, 10);
INSERT INTO `interface_apitest` VALUES (192, '2021-05-17 08:13:55.313489', '2021-05-17 08:13:55.314488', '类目中字段show是否展示，为0时，不返回该类目', '', 0, 88, 0, 10);
INSERT INTO `interface_apitest` VALUES (193, '2021-05-18 07:44:37.309389', '2021-05-18 07:44:37.309389', '存在redis缓存，更新时间为1小时；当对类目进行创建/修改/删除时，缓存更新', '', 0, 88, 0, 10);
INSERT INTO `interface_apitest` VALUES (194, '2021-05-19 07:19:16.619730', '2021-05-19 07:19:24.531586', '分页参数：\"pageIndex\": 1,	\"pageSize\": 10', '', 0, 89, 0, 10);
INSERT INTO `interface_apitest` VALUES (195, '2021-05-19 07:20:34.667125', '2021-05-19 07:20:34.667125', '返回值规则：status in (0,5,15,25) ；sale_type IN ( \"BUY_COUPON\", \"BUY_TEACHING_PLAN\" ) 或 sale_type = \"BACKSTAGE\" AND deal_amount >= 5000', '', 0, 89, 0, 10);
INSERT INTO `interface_apitest` VALUES (196, '2021-05-19 07:20:48.983859', '2021-05-19 07:20:48.983859', '排序：创建时间倒序', '', 0, 89, 0, 10);
INSERT INTO `interface_apitest` VALUES (197, '2021-05-19 07:42:42.991757', '2021-05-19 10:06:56.990656', '老用户登录成功，返回正确的已有学员信息；me接口返回对应的userId和studentId，昵称和头像取自微信；app可以正常登录', '', 0, 91, 0, 10);
INSERT INTO `interface_apitest` VALUES (198, '2021-05-19 07:43:22.719573', '2021-05-19 10:06:19.945649', '新用户登录成功，创建一个新学员且返回正确的学员信息；me接口返回新增的studentId和userId，用户头像随机选取，昵称为用户+手机号；app登录时可以微信登录', '', 0, 91, 0, 10);
INSERT INTO `interface_apitest` VALUES (199, '2021-05-19 09:26:34.854970', '2021-05-19 09:26:34.854970', '入参studentId，按studentId查询优惠券', '', 0, 93, 0, 10);
INSERT INTO `interface_apitest` VALUES (200, '2021-05-19 09:27:19.864669', '2021-05-19 09:27:19.864669', '出参content，返回优惠券信息，按领取时间倒序排列', '', 0, 93, 0, 10);
INSERT INTO `interface_apitest` VALUES (201, '2021-05-19 09:27:50.207538', '2021-05-19 09:27:50.207538', '出参content，返回优惠券信息，不包含已使用和已过期的优惠券', '', 0, 93, 0, 10);

-- ----------------------------
-- Table structure for interface_basepath
-- ----------------------------
DROP TABLE IF EXISTS `interface_basepath`;
CREATE TABLE `interface_basepath`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `test_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prod_path` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_basepath
-- ----------------------------
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
INSERT INTO `interface_basepath` VALUES (12, '2021-04-25 02:28:50.412263', '2021-04-25 03:42:59.085244', 'coursePublic', '/api/v3/{app}/course/public', '/api/v3/{app}/course/public', 0);
INSERT INTO `interface_basepath` VALUES (13, '2021-05-19 03:12:43.015309', '2021-05-19 04:47:55.090013', 'myPrivate', '/api/v3/{app}/my/private', '/api/v3/{app}/my/private', 0);
INSERT INTO `interface_basepath` VALUES (14, '2021-06-07 09:53:08.668227', '2021-06-07 09:53:08.668227', 'classroomPrivate', '/api/v3/{app}/classroom/private', '/api/v3/{app}/classroom/private', 0);

-- ----------------------------
-- Table structure for interface_domain
-- ----------------------------
DROP TABLE IF EXISTS `interface_domain`;
CREATE TABLE `interface_domain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `test_host` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prod_host` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_domain
-- ----------------------------
INSERT INTO `interface_domain` VALUES (1, '2021-02-16 09:03:14.405308', '2021-02-16 11:01:11.433888', 'app域名', 'http://r-bf-fe.jiayans.net:2001', 'https://campus1-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (2, '2021-02-16 11:00:39.088014', '2021-02-16 11:01:19.265267', '烛台域名', 'http://r-bf-fe.jiayans.net:2002', 'https://console-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (3, '2021-02-16 11:01:48.538566', '2021-02-16 11:01:48.538606', '心理域名', 'http://r-bf-fe.jiayans.net:2003', 'https://xinli-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (4, '2021-02-16 11:02:32.882436', '2021-02-16 11:02:32.882478', '直播域名', 'http://r-bf-fe.jiayans.net:2001', 'https://c-campus1-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (5, '2021-02-16 11:03:04.102097', '2021-02-16 11:03:04.102139', '投放域名', 'https://r-bf-fe.jiayans.net:2004', 'https://xinli-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (6, '2021-02-16 11:03:59.349372', '2021-02-16 11:03:59.349486', '飞天拉新', 'http://r-bf-fe.jiayans.net:2007', 'https://t-fe.jiayans.net', 0);
INSERT INTO `interface_domain` VALUES (7, '2021-04-25 03:42:02.936356', '2021-04-25 03:42:02.936356', '测试环境8', 'https://r-bf-fe.jiayans.net:2008', 'https://r-bf-fe.jiayans.net:2008', 0);

-- ----------------------------
-- Table structure for interface_tag
-- ----------------------------
DROP TABLE IF EXISTS `interface_tag`;
CREATE TABLE `interface_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `del_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_tag
-- ----------------------------
INSERT INTO `interface_tag` VALUES (1, '2021-02-16 09:05:22.040786', '2021-02-16 09:32:20.594499', 'app', 'apiV3前端接口', 0);
INSERT INTO `interface_tag` VALUES (2, '2021-02-16 09:33:40.508152', '2021-02-16 09:33:40.508194', 'school', 'school后台接口', 0);

-- ----------------------------
-- Table structure for interface_version
-- ----------------------------
DROP TABLE IF EXISTS `interface_version`;
CREATE TABLE `interface_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `del_flag` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_version
-- ----------------------------
INSERT INTO `interface_version` VALUES (3, '2021-03-02 08:19:23.252830', '2021-03-12 08:26:12.765688', '新后端', 'V3.33.0', '库分期', 0, 20);
INSERT INTO `interface_version` VALUES (5, '2021-03-09 05:52:08.063958', '2021-03-12 08:26:09.109468', '康德', 'V3.13.0', '支付库分期 https://lanhuapp.com/url/4h1wt', 0, 20);
INSERT INTO `interface_version` VALUES (6, '2021-03-12 08:27:24.810982', '2021-04-08 03:00:28.118390', '康德', 'V3.13.1', '调班，增加字段：商品-是否支持群聊/是否支持调班；用户-姓名；类目-是否在加盐学院展示', 0, 20);
INSERT INTO `interface_version` VALUES (7, '2021-03-12 08:27:56.844313', '2021-03-29 09:00:52.824555', '新后端', 'V3.33.2', '题库拉新分享，3人助力解锁章节练习和套卷模拟第4章及以后的题', 0, 30);
INSERT INTO `interface_version` VALUES (8, '2021-03-26 08:53:44.558179', '2021-04-13 08:55:23.044103', '康德', 'V3.14.0', '退费管理 & 二阶负责人  & 群聊-运营人员与康德用户关联', 0, 20);
INSERT INTO `interface_version` VALUES (9, '2021-04-12 03:37:43.947703', '2021-04-19 10:35:01.619279', '康德', 'V3.14.1', '查询学员的在某个科目下的做题数据，先享学分期', 0, 20);
INSERT INTO `interface_version` VALUES (10, '2021-04-12 03:39:46.614762', '2021-04-19 10:36:17.535352', '学院APP', 'V2.14.0', '题库首页优化-章节数据统计接口、题库学习计划页优化-接口开发', 0, 20);
INSERT INTO `interface_version` VALUES (11, '2021-04-19 10:35:45.294544', '2021-04-23 08:22:15.794348', '康德', '3.14.1.1', '商品分期，首付金额最小未0.01', 0, 20);
INSERT INTO `interface_version` VALUES (12, '2021-04-23 08:22:54.757185', '2021-05-17 07:56:19.066615', '康德', 'V3.14.3', '教师工作台课节资料+随堂考', 0, 20);
INSERT INTO `interface_version` VALUES (13, '2021-04-25 03:06:28.476832', '2021-05-17 07:56:16.584255', '新后端', '3.33.5', '课程资料优化', 0, 20);
INSERT INTO `interface_version` VALUES (14, '2021-05-17 07:56:44.958393', '2021-05-17 07:56:52.445404', '新后端', '4.0.0', 'SAAS1.0', 0, 10);

-- ----------------------------
-- Table structure for interface_versiontest
-- ----------------------------
DROP TABLE IF EXISTS `interface_versiontest`;
CREATE TABLE `interface_versiontest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `edit_date` datetime(6) NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `del_flag` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `result` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `prod_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `test_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `interface_versiontes_version_id_f4eac618_fk_interface`(`version_id`) USING BTREE,
  INDEX `interface_versiontest_api_id_ecf5624a_fk_interface_api_id`(`api_id`) USING BTREE,
  CONSTRAINT `interface_versiontes_version_id_f4eac618_fk_interface` FOREIGN KEY (`version_id`) REFERENCES `interface_version` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `interface_versiontest_api_id_ecf5624a_fk_interface_api_id` FOREIGN KEY (`api_id`) REFERENCES `interface_api` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_versiontest
-- ----------------------------
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
INSERT INTO `interface_versiontest` VALUES (37, '2021-03-30 02:36:45.490330', '2021-03-30 03:43:53.867895', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2472\r\nhttp://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2503', 0, 43, 8, 'faild', '2021-03-30', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (38, '2021-03-30 02:48:55.597434', '2021-03-30 03:55:36.133421', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2502', 0, 13, 8, 'faild', '2021-03-30', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (39, '2021-03-30 06:10:52.108557', '2021-03-30 10:18:50.750790', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2473', 0, 47, 8, 'faild', '2021-03-30', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (40, '2021-03-30 06:12:52.822837', '2021-03-30 10:15:30.498147', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2473', 0, 48, 8, 'faild', '2021-03-30', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (41, '2021-03-30 06:14:21.896707', '2021-03-31 07:06:20.682614', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2467', 0, 50, 8, NULL, '2021-03-31', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (42, '2021-03-30 06:19:36.127638', '2021-04-13 06:33:09.754583', '', 0, 45, 8, 'pass', '2021-03-30', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (43, '2021-03-30 06:39:38.100265', '2021-03-31 10:54:09.936361', '', 0, 49, 8, 'pass', '2021-03-30', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (44, '2021-03-30 07:27:01.155644', '2021-04-13 06:33:03.483349', '', 0, 52, 8, 'pass', '2021-03-30', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (45, '2021-03-30 07:59:16.010553', '2021-03-31 11:48:21.179470', '', 0, 51, 8, 'pass', '2021-03-30', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (46, '2021-03-30 08:54:52.085861', '2021-03-30 08:55:16.738937', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2468', 0, 53, 8, NULL, '2021-03-30', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (47, '2021-03-30 08:54:52.090860', '2021-03-30 10:15:41.426930', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2468', 0, 54, 8, 'faild', '2021-03-30', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (48, '2021-03-30 08:57:49.036195', '2021-04-13 06:32:54.608105', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2469', 0, 55, 8, 'pass', '2021-03-30', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (49, '2021-03-30 11:35:10.837352', '2021-04-13 06:32:51.179242', '', 0, 56, 8, 'pass', '2021-03-30', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (50, '2021-03-31 02:13:51.022705', '2021-04-13 06:32:46.467839', '', 0, 57, 8, 'pass', '2021-03-30', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (51, '2021-03-31 07:50:11.021848', '2021-03-31 07:50:11.021848', '', 0, 46, 8, 'pass', '2021-03-30', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (52, '2021-03-31 08:05:33.415906', '2021-04-13 06:32:41.269735', '\"param\"\r\nchannel  // 必填，JYWS\r\nmanagerName //非必填，支持左匹配模糊查询，为空时默认查询所有', 0, 58, 8, 'pass', '2021-03-30', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (53, '2021-04-01 03:13:11.959651', '2021-04-01 03:13:36.277638', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2470', 0, 59, 8, NULL, '2021-04-01', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (54, '2021-04-01 10:03:54.309702', '2021-04-01 10:03:54.309702', '', 0, 41, 8, 'pass', '2021-04-01', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (55, '2021-04-01 10:08:00.214298', '2021-04-01 10:08:00.214298', '', 0, 61, 8, 'pass', '2021-04-01', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (56, '2021-04-02 07:43:56.690939', '2021-04-02 07:43:56.690939', '', 0, 42, 8, 'pass', '2021-04-01', '刘义', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (57, '2021-04-02 10:43:21.319501', '2021-04-02 10:49:49.165628', '', 0, 66, 8, 'pass', '2021-04-01', '建玉', '赵爽');
INSERT INTO `interface_versiontest` VALUES (58, '2021-04-08 03:00:20.510698', '2021-04-08 03:00:20.510698', NULL, 0, 68, 8, NULL, NULL, NULL, NULL);
INSERT INTO `interface_versiontest` VALUES (59, '2021-04-13 06:37:16.486965', '2021-04-13 06:37:16.486965', 'http://vuca-fe.jiayans.cn:3001/project/35/interface/api/4897', 0, 69, 9, NULL, '2021-04-13', '天瑞', '安安');
INSERT INTO `interface_versiontest` VALUES (60, '2021-04-13 08:52:12.640101', '2021-04-13 09:30:49.979801', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2762', 0, 70, 9, 'pass', '2021-04-13', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (61, '2021-04-13 10:29:22.681866', '2021-04-13 11:28:38.159558', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2763', 0, 71, 9, 'pass', '2021-04-13', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (62, '2021-04-19 10:34:50.689497', '2021-04-19 10:36:10.003459', '', 0, 13, 11, NULL, NULL, NULL, NULL);
INSERT INTO `interface_versiontest` VALUES (63, '2021-04-23 08:23:52.026100', '2021-04-25 03:08:55.525834', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2771', 0, 73, 12, 'pass', '2021-04-23', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (64, '2021-04-23 08:34:10.079767', '2021-04-25 03:08:59.731555', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2770', 0, 74, 12, 'pass', '2021-04-23', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (65, '2021-04-23 08:58:00.909567', '2021-04-25 03:09:02.274757', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2769', 0, 75, 12, 'pass', '2021-04-23', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (66, '2021-04-23 09:35:42.340331', '2021-05-13 06:16:18.856608', 'http://cx.sc.jiayans.cn/jira/browse/SCHADMIN-2768', 0, 76, 12, 'pass', '2021-04-23', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (67, '2021-04-25 03:05:34.205917', '2021-04-26 02:03:02.998867', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-334', 0, 77, 13, 'pass', '2021-04-25', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (68, '2021-04-25 06:39:44.588708', '2021-04-26 02:14:46.751895', '', 0, 78, 12, NULL, NULL, NULL, '艳娇');
INSERT INTO `interface_versiontest` VALUES (69, '2021-04-26 08:26:09.632927', '2021-04-26 08:26:09.632927', '只对此次修改的逻辑进行测试\r\n创建学习班，新增课节与已关联教学资料的课节合班，teaching_plan_the_lesson_materials 表中没有新建课节与教学资料的关联\r\n创建学习班，新增课节关联了课次（课次有关联教学资料），teaching_plan_the_lesson_materials 表中没有新建课节与教学资料的关联', 0, 65, 12, 'pass', '2021-04-25', '杨天瑞', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (70, '2021-04-26 08:51:08.424905', '2021-04-26 09:29:18.449093', '只对此次修改的逻辑进行测试\r\n创建课节，符合合班逻辑，合班课里的资料，不同步给新建课节', 0, 83, 12, 'pass', '2021-04-25', '杨天瑞', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (71, '2021-04-26 09:28:13.365051', '2021-04-26 09:44:06.242186', '只对此次修改的逻辑进行测试\r\n修改课节，符合合班逻辑，合班课里的资料，不同步给课节', 0, 84, 12, 'pass', '2021-04-25', '杨天瑞', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (72, '2021-04-26 09:43:07.243877', '2021-04-26 09:43:51.246295', '只对此次修改的逻辑进行测试\r\n学习班套用排课后，符合合班逻辑，合班课里的资料，不同步给套用课节', 0, 85, 12, 'pass', '2021-04-25', '杨天瑞', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (73, '2021-04-26 10:02:17.228210', '2021-04-26 10:02:17.228210', '文件超过10M，接口返回状态码413', 0, 86, 12, 'pass', '2021-04-25', '杨天瑞', '薄艳娇');
INSERT INTO `interface_versiontest` VALUES (74, '2021-04-26 10:12:53.496582', '2021-05-13 06:16:12.094653', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-334', 0, 87, 13, 'pass', '2021-04-26', '振旭', '赵爽');
INSERT INTO `interface_versiontest` VALUES (75, '2021-05-17 07:57:03.055018', '2021-05-17 08:32:45.190585', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-343', 0, 88, 14, 'pass', '2021-05-17', '刘义', '赵爽');
INSERT INTO `interface_versiontest` VALUES (76, '2021-05-19 03:13:52.073755', '2021-05-19 07:21:21.255631', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-359', 0, 89, 14, 'pass', '2021-05-19', '天瑞', '赵爽');
INSERT INTO `interface_versiontest` VALUES (77, '2021-05-19 07:22:51.387695', '2021-05-19 07:35:06.057060', 'http://cx.sc.jiayans.cn/jira/browse/APPBACKEND-342', 0, 91, 14, NULL, '2021-05-19', '天瑞', '赵爽');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 823 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
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
INSERT INTO `xadmin_log` VALUES (370, '2021-03-29 06:55:38.450530', '172.18.87.252', '41', 'POST/payment/config', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (371, '2021-03-29 07:07:16.366712', '172.18.87.252', '41', 'POST/api/school/payment/config', 'change', '修改 tag', 12, 3);
INSERT INTO `xadmin_log` VALUES (372, '2021-03-29 07:10:05.789774', '172.18.87.252', '52', 'paymentConfigCreate：当paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (373, '2021-03-29 07:59:16.194154', '172.18.87.252', '53', 'paymentConfigCreate：当paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (374, '2021-03-29 07:59:19.789602', '172.18.87.252', '54', 'paymentConfigCreate：当paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (375, '2021-03-29 08:02:55.138820', '172.18.87.252', '55', 'paymentConfigCreate：出参字段code是否提交成功：15 提交成功 ，20 提交失败', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (376, '2021-03-29 08:03:22.255296', '172.18.87.252', '56', 'paymentConfigCreate：出参字段code为20时，message字段返回错误信息', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (377, '2021-03-29 08:08:18.944290', '172.18.87.252', '42', 'PUT/api/school/payment/config/{id}', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (378, '2021-03-29 08:09:21.503900', '172.18.87.252', '42', 'PUT/api/school/payment/config/{id}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (379, '2021-03-29 08:10:36.945191', '172.18.87.252', '42', 'PUT/api/school/payment/config/{id}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (380, '2021-03-29 08:11:33.155916', '172.18.87.252', '42', 'PUT/api/school/payment/config/{id}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (381, '2021-03-29 08:13:23.384229', '172.18.87.252', '57', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (382, '2021-03-29 08:13:26.417296', '172.18.87.252', '58', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (383, '2021-03-29 08:13:29.250548', '172.18.87.252', '59', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段xxx必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (384, '2021-03-29 08:13:39.914120', '172.18.87.252', '60', 'paymentConfigEdit：出参字段code是否提交成功：15 提交成功 ，20 提交失败', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (385, '2021-03-29 08:13:51.508046', '172.18.87.252', '61', 'paymentConfigEdit：出参字段code为20时，message字段返回错误信息', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (386, '2021-03-29 08:16:23.406164', '172.18.87.252', '54', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段xxx必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (387, '2021-03-29 08:16:30.182902', '172.18.87.252', '53', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段xxx必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (388, '2021-03-29 08:16:38.858835', '172.18.87.252', '52', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段xxx必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (389, '2021-03-29 08:27:24.957418', '172.18.89.211', '1', '测试', 'change', '修改 permissions', 3, 1);
INSERT INTO `xadmin_log` VALUES (390, '2021-03-30 02:36:27.057622', '127.0.0.1', '43', 'GET/api/school/refund/rule/detail/{mainOrderNumber}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (391, '2021-03-30 02:36:35.787256', '127.0.0.1', '43', 'GET/api/school/refund/rule/detail/{mainOrderNumber}', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (392, '2021-03-30 02:37:10.262088', '127.0.0.1', '37', '8_43', 'change', '修改 test_date，test_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (393, '2021-03-30 02:49:23.355226', '127.0.0.1', '38', '8_13', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (394, '2021-03-30 02:51:30.372655', '127.0.0.1', '62', 'orderCreate：下单时，增加字段ruleId 、ruleType退费规则类型，将字段存储到数据库表orders中，接口的入参出参不变', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (395, '2021-03-30 02:52:20.742996', '127.0.0.1', '37', '8_43', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (396, '2021-03-30 03:13:44.723459', '127.0.0.1', '43', 'GET/api/refund/rule/detail/{mainOrderNumber}', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (397, '2021-03-30 03:14:10.483591', '127.0.0.1', '43', 'POST/api/refund/rule/detail/{mainOrderNumber}', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (398, '2021-03-30 03:35:48.417752', '127.0.0.1', '44', 'POST/api/v3/{app}/exam/examQuestion/freeze/batch', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (399, '2021-03-30 03:36:30.617872', '127.0.0.1', '63', 'examQuestionFreezeBatch：接口执行，对应的题目id，置为下架状态', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (400, '2021-03-30 03:37:03.890905', '127.0.0.1', '64', 'examQuestionFreezeBatch：题目id超过100个，会报错', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (401, '2021-03-30 03:37:36.656309', '127.0.0.1', '65', 'examQuestionFreezeBatch：题目id已经为下架状态时，可以执行成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (402, '2021-03-30 03:39:50.754808', '127.0.0.1', '43', 'POST/api/school/refund/rule/detail/{mainOrderNumber}', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (403, '2021-03-30 03:56:34.487426', '127.0.0.1', '66', 'refundRuleDetail：入参mainOrderNumber为主订单号', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (404, '2021-03-30 03:57:05.326968', '127.0.0.1', '67', 'refundRuleDetail：入参orderNumbers为关联订单号数组，可以为空', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (405, '2021-03-30 03:58:39.848281', '127.0.0.1', '68', 'refundRuleDetail：出参hasRule是否有规则，为否时除字段amount，其他字段均返回null', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (406, '2021-03-30 03:59:03.257691', '127.0.0.1', '69', 'refundRuleDetail：出参paymentDate为主订单的支付完成时间', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (407, '2021-03-30 03:59:29.844613', '127.0.0.1', '70', 'refundRuleDetail：出参refundDate为二阶班主任发起退款申请的时间', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (408, '2021-03-30 04:00:18.685042', '127.0.0.1', '71', 'refundRuleDetail：出参diffCount为时长(refundDate - paymentDate)单位毫秒', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (409, '2021-03-30 04:02:26.796585', '127.0.0.1', '72', 'refundRuleDetail：出参ruleType、ruleTypeReal为退费规则计算公式和代入值计算公式，退费规则取主订单的退费规则', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (410, '2021-03-30 04:02:51.613202', '127.0.0.1', '73', 'refundRuleDetail：出参amount为所有订单的实付总金额', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (411, '2021-03-30 04:04:20.295151', '127.0.0.1', '74', 'refundRuleDetail：出参refundAmount为应退金额，根据ruleTypeReal得出的值，四舍五入2位小数', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (412, '2021-03-30 04:06:47.019864', '127.0.0.1', '73', 'refundRuleDetail：出参amount为所有订单的实付金额之和', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (413, '2021-03-30 04:07:47.706651', '127.0.0.1', '43', 'POST/api/school/refund/rule/detail/{mainOrderNumber}', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (414, '2021-03-30 06:02:49.441924', '172.18.83.50', '45', 'POST/im/operation/group/user', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (415, '2021-03-30 06:10:34.701280', '172.18.87.252', '46', 'POST/api/school/refund/rule/search', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (416, '2021-03-30 06:10:41.826046', '127.0.0.1', '47', 'POST/api/school/refund/create', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (417, '2021-03-30 06:11:22.229036', '127.0.0.1', '39', '8_47', 'change', '修改 test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (418, '2021-03-30 06:12:48.484437', '127.0.0.1', '48', 'PUT/api/school/refund/commit', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (419, '2021-03-30 06:13:16.851630', '127.0.0.1', '40', '8_48', 'change', '修改 test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (420, '2021-03-30 06:13:33.781339', '172.18.87.252', '49', 'GET/api/school/refund/rule/{id}', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (421, '2021-03-30 06:14:17.525425', '127.0.0.1', '50', 'POST/api/refund/search', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (422, '2021-03-30 06:14:43.722383', '127.0.0.1', '41', '8_50', 'change', '修改 test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (423, '2021-03-30 06:15:22.070837', '172.18.83.50', '45', 'POST/api/im/im/operation/group/user', 'change', '修改 remark', 12, 2);
INSERT INTO `xadmin_log` VALUES (424, '2021-03-30 06:19:36.129632', '172.18.83.50', '42', '8_45', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (425, '2021-03-30 06:20:17.926890', '172.18.87.252', '75', 'refundRule：根据入参id，返回对应的退费规则详情', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (426, '2021-03-30 06:20:50.126806', '127.0.0.1', '76', 'refundCreate：当订单为撤销退费、退费被拒、未进行过退费的订单时，发起成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (427, '2021-03-30 06:21:10.138348', '127.0.0.1', '77', 'refundCreate：当订单为退费中、审核中、退费失败的订单时，发起失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (428, '2021-03-30 06:22:05.719872', '172.18.87.252', '75', 'refundRule：入参id为退费规则id', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (429, '2021-03-30 06:23:37.446491', '172.18.87.252', '78', 'refundRule：出参id，为入参传入的id', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (430, '2021-03-30 06:24:39.828855', '172.18.87.252', '79', 'refundRule：出参createDate为规则创建时间', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (431, '2021-03-30 06:24:59.318613', '172.18.87.252', '80', 'refundRule：出参modifiedDate为规则修改时间', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (432, '2021-03-30 06:25:40.684201', '172.18.87.252', '81', 'refundRule：出参ruleName为退费规则名称', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (433, '2021-03-30 06:26:08.260329', '172.18.87.252', '82', 'refundRule：出参channel为规则所在渠道', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (434, '2021-03-30 06:26:25.638846', '172.18.87.252', '83', 'refundRule：出参status未规则当前状态', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (435, '2021-03-30 06:29:57.329907', '127.0.0.1', '84', 'refundCreate：出参status退费状态', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (436, '2021-03-30 06:30:53.705368', '172.18.83.50', '85', 'OperationUserCreate：创建运营人员时，增加“userId”字段为 number 类型为必填字段，创建成功后，数据库表“im_operation_group_user.userId”值=\"user.id\"值', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (437, '2021-03-30 06:34:04.844197', '172.18.87.252', '86', 'refundRule：出参ruleType为退费规则公式', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (438, '2021-03-30 06:37:40.974393', '172.18.87.252', '87', 'refundRule：出参protocolList为关联协议，类型为object []，返回退费规则已关联的协议', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (439, '2021-03-30 06:37:55.813720', '172.18.87.252', '83', 'refundRule：出参status为退费规则当前状态', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (440, '2021-03-30 06:38:08.729193', '172.18.87.252', '79', 'refundRule：出参createDate为退费规则创建时间', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (441, '2021-03-30 06:38:15.664694', '172.18.87.252', '80', 'refundRule：出参modifiedDate为退费规则修改时间', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (442, '2021-03-30 06:38:23.121895', '172.18.87.252', '82', 'refundRule：出参channel为退费规则所在渠道', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (443, '2021-03-30 06:38:39.452057', '172.18.87.252', '87', 'refundRule：出参protocolList为关联协议，类型为object []，返回退费规则已关联的协议', 'change', '没有字段被修改。', 16, 3);
INSERT INTO `xadmin_log` VALUES (444, '2021-03-30 06:39:38.103257', '172.18.87.252', '43', '8_49', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (445, '2021-03-30 07:06:06.873815', '172.18.87.252', '75', 'refundRule：入参id为退费规则id', 'change', '修改 status', 16, 3);
INSERT INTO `xadmin_log` VALUES (446, '2021-03-30 07:08:07.126333', '172.18.83.50', '88', 'OperationUserCreate：创建时，userId字段值不允许为空，当为空时，不能创建成功且抛出提示信息', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (447, '2021-03-30 07:12:15.811523', '172.18.87.252', '87', 'refundRule：出参protocolList为关联协议列表，类型为object []，返回退费规则已关联的协议', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (448, '2021-03-30 07:15:35.494656', '127.0.0.1', '89', 'refundSearch：入参orderNumber主订单号，精准搜索', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (449, '2021-03-30 07:15:55.779427', '127.0.0.1', '90', 'refundSearch：入参relatedOrderNumber关联订单号，精准搜索', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (450, '2021-03-30 07:16:05.619121', '172.18.83.50', '88', 'OperationUserCreate：当userId字段值为空时，不能创建成功且抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (451, '2021-03-30 07:16:43.978724', '127.0.0.1', '91', 'refundSearch：入参phoneNumber主订单对应的学员手机号，明文输入，精准搜索', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (452, '2021-03-30 07:16:45.740861', '172.18.83.50', '85', 'OperationUserCreate：创建运营人员，增加“userId”为 number 类型为必填字段，创建成功，数据库表“im_operation_group_user.userId”值=\"user.id\"值', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (453, '2021-03-30 07:16:59.660751', '127.0.0.1', '92', 'refundSearch：入参status退费状态', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (454, '2021-03-30 07:18:37.405365', '172.18.87.252', '93', 'refundRule：出参name、company为已关联协议名称和公司主体', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (455, '2021-03-30 07:19:15.792833', '127.0.0.1', '94', 'refundSearch：入参createBeginDate、createEndDate退款发起的起止时间', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (456, '2021-03-30 07:20:14.443909', '127.0.0.1', '95', 'refundSearch：入参modifiedBeginDate、modifiedEndDate退款记录状态变更的起止时间，不包含退款中的记录', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (457, '2021-03-30 07:20:16.725809', '172.18.87.252', '51', 'PUT/api/school/refund/rule/{ruleId}', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (458, '2021-03-30 07:20:53.825626', '127.0.0.1', '91', 'refundSearch：入参studentId、phoneNumber主订单对应的学员及手机号，手机号明文输入，精准搜索', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (459, '2021-03-30 07:22:46.007886', '172.18.83.50', '52', 'PUT/api/im/im/operation/group/user', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (460, '2021-03-30 07:24:11.718665', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为规则名称', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (461, '2021-03-30 07:24:32.005342', '127.0.0.1', '97', 'refundCommit：入参submit提交状态，必填：提交true，撤回false', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (462, '2021-03-30 07:24:36.231044', '172.18.87.252', '98', 'refundRuleEdit：入参ruleType为退费公式', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (463, '2021-03-30 07:24:59.419054', '172.18.87.252', '99', 'refundRuleEdit：入参status为退费规则状态', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (464, '2021-03-30 07:25:33.612639', '127.0.0.1', '100', 'refundCommit：入参refundReason必填，当submit=true为退款原因，当submit=false为撤回原因', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (465, '2021-03-30 07:25:50.091585', '172.18.87.252', '101', 'refundRuleEdit：入参removeProtocolIds为要删除的协议ids，类型为number []', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (466, '2021-03-30 07:26:14.823494', '172.18.87.252', '102', 'refundRuleEdit：入参addProtocolIds为要添加的协议ids，类型为number []', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (467, '2021-03-30 07:26:28.098975', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (468, '2021-03-30 07:27:01.158778', '172.18.83.50', '44', '8_52', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (469, '2021-03-30 07:27:01.977404', '127.0.0.1', '97', 'refundCommit：入参submit提交状态（提交true，撤回false），必填，当为false时除字段refundReason外其他字段均不需要给值', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (470, '2021-03-30 07:27:48.694661', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，可修改成功', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (471, '2021-03-30 07:27:58.506279', '172.18.87.252', '98', 'refundRuleEdit：入参ruleType为退费公式，可修改', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (472, '2021-03-30 07:28:08.811727', '172.18.87.252', '99', 'refundRuleEdit：入参status为退费规则状态，可修改成功', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (473, '2021-03-30 07:28:33.830842', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，可修改', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (474, '2021-03-30 07:28:39.207497', '172.18.87.252', '99', 'refundRuleEdit：入参status为退费规则状态，可修改', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (475, '2021-03-30 07:29:05.250845', '172.18.87.252', '101', 'refundRuleEdit：入参removeProtocolIds为要删除的协议ids，类型为number []，可删除已关联的协议', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (476, '2021-03-30 07:29:23.078211', '172.18.87.252', '102', 'refundRuleEdit：入参addProtocolIds为要添加的协议ids，类型为number []，可添加关联协议', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (477, '2021-03-30 07:29:32.100063', '172.18.87.252', '102', 'refundRuleEdit：入参addProtocolIds为要添加的协议ids，类型为number []，可添加关联协议', 'change', '没有字段被修改。', 16, 3);
INSERT INTO `xadmin_log` VALUES (478, '2021-03-30 07:29:50.835158', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，可修改名称', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (479, '2021-03-30 07:30:01.612165', '127.0.0.1', '103', 'refundCommit：出参status退款状态，当submit=true为审核中，当submit=false为撤销退费', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (480, '2021-03-30 07:30:14.237441', '172.18.87.252', '98', 'refundRuleEdit：入参ruleType为退费公式，可修改退费公式（目前只有一条公式可选）', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (481, '2021-03-30 07:30:28.514245', '172.18.87.252', '99', 'refundRuleEdit：入参status为退费规则状态，可修改退费规则状态', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (482, '2021-03-30 07:31:07.839143', '127.0.0.1', '103', 'refundCommit：出参status退费状态，当submit=true为审核中，当submit=false为撤销退费', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (483, '2021-03-30 07:32:44.615390', '172.18.83.50', '104', 'OperationUserEdit：入参字段userId值未关联过运营人员时，修改并关联成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (484, '2021-03-30 07:32:58.335710', '172.18.83.50', '105', 'OperationUserEdit：入参字段userId值已存在时，不允许关联并抛出提示信息', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (485, '2021-03-30 07:33:28.390391', '172.18.83.50', '105', 'OperationUserEdit：入参字段userId值已关联运营人员时，不允许关联并抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (486, '2021-03-30 07:34:25.220463', '172.18.83.50', '85', 'OperationUserCreate：创建运营人员，增加“userId”为 必填字段，创建并关联成功', 'change', '修改 desc 和 remark', 16, 2);
INSERT INTO `xadmin_log` VALUES (487, '2021-03-30 07:35:25.902204', '172.18.83.50', '85', 'OperationUserCreate：入参字段增加“userId”为必填项，创建并关联成功', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (488, '2021-03-30 07:36:42.383737', '172.18.83.50', '88', 'OperationUserCreate：入参字段userId值为空时，创建不成功且抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (489, '2021-03-30 07:37:45.660571', '172.18.83.50', '105', 'OperationUserEdit：入参字段userId值为空或已关联运营人员时，不允许关联并抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (490, '2021-03-30 07:40:31.952006', '172.18.87.252', '106', 'refundRuleEdit：添加已已选协议列表中的协议', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (491, '2021-03-30 07:40:52.665629', '172.18.87.252', '107', 'refundRuleEdit：删除不在已选协议列表中的协议', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (492, '2021-03-30 07:42:45.804165', '127.0.0.1', '95', 'refundSearch：入参modifiedBeginDate、modifiedEndDate退款记录状态变更的起止时间，不包含退费中的记录', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (493, '2021-03-30 07:47:45.131936', '172.18.83.50', '105', 'OperationUserEdit：入参字段userId值为空 / 已关联运营人员 / 不存在的值，不允许关联并抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (494, '2021-03-30 07:48:59.963879', '172.18.83.50', '88', 'OperationUserCreate：入参字段userId值为空 / 已关联运营人员 / 值不存在，创建不成功且抛出提示信息', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (495, '2021-03-30 07:49:13.710130', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，必填，最大30', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (496, '2021-03-30 07:49:28.261259', '172.18.87.252', '98', 'refundRuleEdit：入参ruleType为退费公式，必填，可修改退费公式（目前只有一条公式可选）', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (497, '2021-03-30 07:50:05.996347', '172.18.87.252', '99', 'refundRuleEdit：入参status为退费规则状态，必填，boolean', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (498, '2021-03-30 07:51:21.492516', '172.18.87.252', '106', 'refundRuleEdit：添加已已选协议列表中的协议；添加不存在的协议', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (499, '2021-03-30 07:51:34.830856', '172.18.87.252', '106', 'refundRuleEdit：添加已已选协议列表中的协议', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (500, '2021-03-30 07:52:35.608372', '172.18.87.252', '108', 'refundRuleEdit：添加非当前渠道下的协议', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (501, '2021-03-30 07:53:00.891808', '172.18.87.252', '109', 'refundRuleEdit：添加不存在的协议', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (502, '2021-03-30 07:59:16.012546', '172.18.87.252', '45', '8_51', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (503, '2021-03-30 07:59:32.600201', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，必填，最大30', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (504, '2021-03-30 07:59:58.352358', '172.18.87.252', '96', 'refundRuleEdit：入参ruleName为退费规则名称，必填，最大30', 'change', '修改 status', 16, 3);
INSERT INTO `xadmin_log` VALUES (505, '2021-03-30 08:02:51.772730', '127.0.0.1', '48', 'PUT/api/school/refund/commit/{id}', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (506, '2021-03-30 08:03:57.676542', '127.0.0.1', '84', 'refundCreate：出参status退费状态，创建成功置为退费中', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (507, '2021-03-30 08:04:47.985046', '127.0.0.1', '84', 'refundCreate：出参status退费状态，发起成功后置为退费中', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (508, '2021-03-30 08:12:46.348184', '127.0.0.1', '47', 'POST/api/school/refund/create', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (509, '2021-03-30 08:15:19.665486', '127.0.0.1', '110', 'refundCreate：入参orderNumber主订单，订单状态应该为15', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (510, '2021-03-30 08:18:25.795700', '127.0.0.1', '110', 'refundCreate：入参orderNumber主订单，订单状态应该为15，否则发起失败', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (511, '2021-03-30 08:48:36.396218', '127.0.0.1', '111', 'refundCreate：入参token有角色限制，非二阶班主任，发起失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (512, '2021-03-30 08:49:09.884716', '127.0.0.1', '112', 'refundCommit：入参token有角色限制，非二阶班主任，提交失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (513, '2021-03-30 08:51:09.539826', '127.0.0.1', '113', 'refundSearch：入参token有角色限制，二阶班主任返回自己提交的记录，业务负责人显示自己sku下的所有记录，财务和超级管理员可以看全部记录', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (514, '2021-03-30 08:51:45.374026', '127.0.0.1', '113', 'refundSearch：入参token有角色限制，二阶班主任返回自己提交的记录，业务负责人返回自己sku下的所有记录，财务和超级管理员返回全部记录', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (515, '2021-03-30 08:53:33.866956', '127.0.0.1', '53', 'GET/api/refund/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (516, '2021-03-30 08:54:44.294675', '127.0.0.1', '54', 'GET/api/refund/orderInfo/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (517, '2021-03-30 08:55:16.741929', '127.0.0.1', '46', '8_53', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (518, '2021-03-30 08:55:25.550410', '127.0.0.1', '47', '8_54', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (519, '2021-03-30 08:57:43.636634', '127.0.0.1', '55', 'GET/api/refund/flow/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (520, '2021-03-30 08:58:05.256833', '127.0.0.1', '48', '8_55', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (521, '2021-03-30 08:59:46.858265', '127.0.0.1', '114', 'refundDetail：出参status退费状态，5:审核中; 10:撤销退费; 20:退费中, 25:退费被拒; 30:退款失败（原因：余额不足，网络超时等等...）; 40:异常退费; 50:退费成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (522, '2021-03-30 09:06:59.071837', '127.0.0.1', '115', 'refundDetailInfo：出参orderInfo为订单相关信息，协议和退费规则应返回id和名称', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (523, '2021-03-30 09:07:40.040197', '127.0.0.1', '116', 'refundDetailInfo：出参studentInfo主订单学员相关信息，手机号明文显示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (524, '2021-03-30 09:07:50.024478', '127.0.0.1', '115', 'refundDetailInfo：出参orderInfo为主订单相关信息，协议和退费规则应返回id和名称', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (525, '2021-03-30 09:10:44.026297', '127.0.0.1', '55', 'GET/api/school/refund/flow/{id}', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (526, '2021-03-30 09:14:51.833805', '127.0.0.1', '117', 'refundFlowDetail：出参approveNode为页面上圆圈内的文字：沟通中、撤销退费、审核中、退费被拒、退费成功、异常退费、退费失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (527, '2021-03-30 09:15:55.108645', '127.0.0.1', '118', 'refundFlowDetail：出参approveStatus审批状态 0 初始化 10 审批失败 40 审批成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (528, '2021-03-30 09:16:46.439416', '127.0.0.1', '119', 'refundFlowDetail：出参approver实际操作人，approveUserIds可以审批的人，多个/间隔', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (529, '2021-03-30 09:19:51.390964', '127.0.0.1', '117', 'refundFlowDetail：出参type审批类型：沟通中、撤销退费、审核中、退费被拒、退费成功、异常退费、退费失败', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (530, '2021-03-30 09:20:16.230559', '127.0.0.1', '120', 'refundFlowDetail：出参approveNode节点名称', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (531, '2021-03-30 09:21:20.293292', '127.0.0.1', '120', 'refundFlowDetail：出参approveNode流程中的节点名称', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (532, '2021-03-30 09:23:59.041899', '127.0.0.1', '121', 'refundFlowDetail：出参approveRemark流程下面的备注（如拒绝原因或退费结果等）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (533, '2021-03-30 09:25:37.053865', '127.0.0.1', '55', 'GET/api/school/refund/flow/{id}', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (534, '2021-03-30 09:26:46.854260', '127.0.0.1', '121', 'refundFlowDetail：出参approveRemark流程下面的备注（撤销原因/拒绝原因/退费结果等）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (535, '2021-03-30 09:43:41.579478', '127.0.0.1', '54', 'GET/api/school/refund/orderInfo/{id}', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (536, '2021-03-30 09:43:59.762866', '127.0.0.1', '53', 'GET/api/school/refund/{id}', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (537, '2021-03-30 09:53:13.406777', '172.18.87.252', '46', 'POST/api/school/refund/rule/search', 'change', '修改 desc', 12, 3);
INSERT INTO `xadmin_log` VALUES (538, '2021-03-30 09:55:30.294790', '172.18.87.252', '122', 'refundRuleSearch：入参ruleName规则名称，支持模糊搜索', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (539, '2021-03-30 09:58:37.283888', '172.18.87.252', '46', 'POST/api/school/refund/rule/search', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (540, '2021-03-30 09:59:17.095490', '127.0.0.1', '118', 'refundFlowDetail：出参approveStatus审批状态 0 初始化（灰色）5进行中（亮色） 10 审批失败 40 审批成功（10和40亮色）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (541, '2021-03-30 09:59:43.039099', '172.18.87.252', '51', 'PUT/api/school/refund/rule/{ruleId}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (542, '2021-03-30 10:00:15.953106', '127.0.0.1', '119', 'refundFlowDetail：出参approver实际操作人或可审核人姓名，多个/间隔；approveUserIds可以审批的人的id，数组', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (543, '2021-03-30 10:00:49.202248', '172.18.87.252', '49', 'GET/api/school/refund/rule/{id}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (544, '2021-03-30 10:01:03.485033', '127.0.0.1', '117', 'refundFlowDetail：出参type审批类型（默认，业务负责人，财务）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (545, '2021-03-30 10:17:08.205963', '127.0.0.1', '92', 'refundSearch：入参status退费状态', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (546, '2021-03-30 10:17:34.120654', '127.0.0.1', '84', 'refundCreate：出参status退费状态，发起成功后置为 5 退费中', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (547, '2021-03-30 10:17:49.128531', '127.0.0.1', '84', 'refundCreate：出参status退费状态，发起成功后置为 20 退费中', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (548, '2021-03-30 10:18:26.453757', '127.0.0.1', '103', 'refundCommit：出参status退费状态，当submit=true为 5 审核中，当submit=false为 10 撤销退费', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (549, '2021-03-30 10:26:40.693443', '127.0.0.1', '117', 'refundFlowDetail：出参type审批类型firstApprove、operationApprove、managerApprove，financialOfficerApprove、lastApprove', 'change', '修改 desc 和 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (550, '2021-03-30 10:55:51.157752', '127.0.0.1', '48', '8_55', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (551, '2021-03-30 11:26:07.681499', '172.18.83.50', '56', 'POST/manager', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (552, '2021-03-30 11:33:51.856500', '172.18.83.50', '56', 'POST/api/school/manager', 'change', '修改 basepath 和 remark', 12, 2);
INSERT INTO `xadmin_log` VALUES (553, '2021-03-30 11:35:10.841410', '172.18.83.50', '49', '8_56', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (554, '2021-03-30 11:37:48.523789', '172.18.83.50', '56', 'POST/api/school/manager', 'change', '修改 remark', 12, 2);
INSERT INTO `xadmin_log` VALUES (555, '2021-03-30 11:45:07.194042', '172.18.83.50', '123', 'ManagerCreate：入参字段channel必填项，不可为空。为空时提示“渠道不可为空”', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (556, '2021-03-30 11:45:39.449809', '172.18.83.50', '123', 'ManagerCreate：入参字段channel必填项，不可为空。为空时提示“渠道不可为空”', 'change', '修改 remark', 16, 2);
INSERT INTO `xadmin_log` VALUES (557, '2021-03-30 11:46:58.412708', '172.18.83.50', '124', 'ManagerCreate：入参字段managerName必填项，不可为空。为空时提示“负责人姓名不可为空”', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (558, '2021-03-30 11:48:15.798824', '172.18.83.50', '125', 'ManagerCreate：入参字段userId必填项，不可为空。为空时提示“康德关联用户不可为空”', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (559, '2021-03-30 11:49:23.485868', '172.18.83.50', '126', 'ManagerCreate：入参字段categoryCode必填项，不可为空。为空时提示“SKU不可为空”', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (560, '2021-03-30 12:04:26.555630', '172.18.83.50', '127', 'ManagerCreate：入参字段categoryCode添加 5 个“sku_code(全局分类)\"用英文逗号分隔', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (561, '2021-03-30 12:06:16.331113', '172.18.83.50', '123', 'ManagerCreate：入参字段channel必填项，string，不可为空。为空时提示“渠道不可为空”', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (562, '2021-03-30 12:06:34.790763', '172.18.83.50', '124', 'ManagerCreate：入参字段managerName必填项，string，不可为空。为空时提示“负责人姓名不可为空”', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (563, '2021-03-30 12:06:44.722212', '172.18.83.50', '125', 'ManagerCreate：入参字段userId必填项，string，不可为空。为空时提示“康德关联用户不可为空”', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (564, '2021-03-30 12:06:52.375754', '172.18.83.50', '126', 'ManagerCreate：入参字段categoryCode必填项，string，不可为空。为空时提示“SKU不可为空”', 'change', '修改 desc', 16, 2);
INSERT INTO `xadmin_log` VALUES (565, '2021-03-30 12:11:45.960876', '172.18.83.50', '57', 'PUT/api/school/manager/{id}', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (566, '2021-03-31 02:13:19.195790', '172.18.83.50', '57', 'PUT/api/school/manager/{id}', 'change', '修改 remark', 12, 2);
INSERT INTO `xadmin_log` VALUES (567, '2021-03-31 02:13:51.025710', '172.18.83.50', '50', '8_57', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (568, '2021-03-31 02:30:02.757290', '127.0.0.1', '66', 'refundRuleDetail：入参mainOrderNumber为主订单号,必须是已发起退款的订单号，否则接口报错', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (569, '2021-03-31 02:42:55.616091', '127.0.0.1', '43', 'POST/api/school/refund/rule/detail/{mainOrderNumber}', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (570, '2021-03-31 02:43:53.477403', '127.0.0.1', '47', 'POST/api/school/refund/create', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (571, '2021-03-31 03:10:19.448490', '172.18.83.50', '128', 'ManagerEdit：修改入参channel字段值成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (572, '2021-03-31 03:10:27.469183', '172.18.83.50', '129', 'ManagerEdit：修改入参managerName字段值成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (573, '2021-03-31 03:10:32.044769', '172.18.83.50', '130', 'ManagerEdit：修改入参userId字段值成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (574, '2021-03-31 03:10:44.431653', '172.18.83.50', '131', 'ManagerEdit：修改入参categoryCode字段值成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (575, '2021-03-31 03:10:51.294307', '172.18.83.50', '132', 'ManagerEdit：修改入参categoryCode字段值>1 修改成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (576, '2021-03-31 03:10:59.283122', '172.18.83.50', '133', 'ManagerEdit：修改入参categoryCode字段值为空，修改不成功', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (577, '2021-03-31 05:46:32.344153', '127.0.0.1', '66', 'refundRuleDetail：入参mainOrderNumber为主订单号，当订单没有退费规则时，hasRule返回false；当订单未发起退费申请时，报500给提示', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (578, '2021-03-31 05:46:51.451150', '127.0.0.1', '68', 'refundRuleDetail：出参hasRule是否有规则，为false时除字段amount，其他字段均返回null', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (579, '2021-03-31 07:03:08.778652', '172.18.87.252', '106', 'refundRuleEdit：添加已已选协议列表中的协议', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (580, '2021-03-31 07:03:23.653886', '172.18.87.252', '107', 'refundRuleEdit：删除不在已选协议列表中的协议', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (581, '2021-03-31 07:07:00.881146', '172.18.87.252', '108', 'refundRuleEdit：添加非当前渠道下的协议', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (582, '2021-03-31 07:08:05.539288', '172.18.87.252', '109', 'refundRuleEdit：添加不存在的协议', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (583, '2021-03-31 07:08:09.557579', '172.18.87.252', '108', 'refundRuleEdit：添加非当前渠道下的协议', 'change', '没有字段被修改。', 16, 3);
INSERT INTO `xadmin_log` VALUES (584, '2021-03-31 07:08:15.822825', '172.18.87.252', '109', 'refundRuleEdit：添加不存在的协议', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (585, '2021-03-31 07:10:04.525190', '172.18.87.252', '98', 'refundRuleEdit：入参ruleType为退费公式，必填，可修改退费公式（目前只有一条公式可选）', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (586, '2021-03-31 07:28:29.926216', '172.18.87.252', '134', 'refundRuleEdit：修改任意字段后，出参modifiedDate更新', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (587, '2021-03-31 07:50:11.023842', '172.18.87.252', '51', '8_46', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (588, '2021-03-31 08:02:37.801397', '172.18.83.50', '58', 'GET/api/school/manager', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (589, '2021-03-31 08:05:33.417901', '172.18.83.50', '52', '8_58', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (590, '2021-03-31 08:13:20.899132', '172.18.83.50', '135', 'ManagerSearch：入参“managerName” 非必填项，为空时搜索全部', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (591, '2021-03-31 08:16:16.994518', '172.18.87.252', '136', 'refundRuleEdit：出参protocolList顺序为关联时间正序', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (592, '2021-03-31 08:17:35.438641', '172.18.87.252', '87', 'refundRule：出参protocolList为关联协议列表，类型为object []，返回退费规则已关联的协议；\r\n顺序为关联时间正序；', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (593, '2021-03-31 08:33:08.741536', '172.18.83.50', '137', 'ManagerSearch：入参“managerName” 支持模糊匹配', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (594, '2021-03-31 08:33:42.828436', '172.18.83.50', '56', 'POST/api/school/manager', 'change', '修改 desc', 12, 2);
INSERT INTO `xadmin_log` VALUES (595, '2021-03-31 08:33:58.289073', '172.18.83.50', '57', 'PUT/api/school/manager/{id}', 'change', '修改 desc', 12, 2);
INSERT INTO `xadmin_log` VALUES (596, '2021-03-31 11:50:14.921360', '172.18.87.252', '138', 'refundRuleSearch：入参ruleName为空时，搜索全部', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (597, '2021-04-01 02:54:21.811006', '127.0.0.1', '139', 'refundCreate：出参categoryCode为发起申请的二阶班主任所有的sku', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (598, '2021-04-01 03:13:05.889878', '127.0.0.1', '59', 'PUT/api/school/refund/agree/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (599, '2021-04-01 03:13:36.278635', '127.0.0.1', '53', '8_59', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (600, '2021-04-01 03:35:04.267688', '172.18.87.252', '60', 'POST/api/school/finance/order/clearing/search', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (601, '2021-04-01 03:36:51.551719', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 接口文档', NULL, 1);
INSERT INTO `xadmin_log` VALUES (602, '2021-04-01 03:38:15.288825', '172.18.87.252', '140', 'financeOrderSearch：入参orderType增加状态40，查询已退款订单', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (603, '2021-04-01 03:40:17.725529', '172.18.87.252', '141', 'exportFinanceOrder：导出文件：订单状态字段，增加已退费类型', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (604, '2021-04-01 05:24:38.098387', '127.0.0.1', '114', 'refundDetail：出参status退费状态，0：退费中;5:审核中; 10:撤销退费; 20:自动退费中, 25:退费被拒; 30:退款失败（原因：余额不足，网络超时等等...）; 40:异常退费; 50:退费成功', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (605, '2021-04-01 05:24:57.920375', '127.0.0.1', '84', 'refundCreate：出参status退费状态，发起成功后置为 0 退费中', 'change', '修改 desc 和 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (606, '2021-04-01 05:25:16.853750', '127.0.0.1', '103', 'refundCommit：出参status退费状态，当submit=true为 5 审核中，当submit=false为 10 撤销退费', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (607, '2021-04-01 05:26:37.194963', '127.0.0.1', '92', 'refundSearch：入参status退费状态', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (608, '2021-04-01 05:27:14.479287', '127.0.0.1', '142', 'refundSearch：列表排序：优先展示退费中和审核中状态，其次按照发起时间进行倒叙排列', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (609, '2021-04-01 05:29:19.825185', '127.0.0.1', '143', 'refundAgree：入参agree审核状态，true 通过， false拒绝', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (610, '2021-04-01 05:33:10.700959', '127.0.0.1', '144', 'refundAgree：当agree=true，当二阶班主任执行时，退费状态变为5审核中；当财务执行时，退费状态变为20自动退费中', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (611, '2021-04-01 05:33:29.742055', '127.0.0.1', '145', 'refundAgree：当agree=true，退费状态变为25退费被拒', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (612, '2021-04-01 05:33:41.276219', '127.0.0.1', '145', 'refundAgree：当agree=false，退费状态变为25退费被拒', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (613, '2021-04-01 05:34:19.302559', '127.0.0.1', '146', 'refundAgree：入参remark退费被拒的原因', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (614, '2021-04-01 06:06:02.680309', '127.0.0.1', '147', 'refundDetail：出参relatedOrderRefundRecords中字段status状态为订单退款状态， 0，退款中 10，退款失败 15，退款完成', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (615, '2021-04-01 08:14:47.653684', '172.18.87.252', '61', 'POST/config/upload/wx', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (616, '2021-04-01 08:15:18.716614', '172.18.87.252', '61', 'POST/config/upload/wx', 'change', '修改 code', 12, 3);
INSERT INTO `xadmin_log` VALUES (617, '2021-04-01 08:17:50.254461', '172.18.87.252', '52', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段secret必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (618, '2021-04-01 08:18:17.821794', '172.18.87.252', '53', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段appCert必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (619, '2021-04-01 08:18:44.745783', '172.18.87.252', '54', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段publicWxAppId必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (620, '2021-04-01 08:19:32.399413', '172.18.87.252', '148', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段wxAppId必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (621, '2021-04-01 08:47:07.335057', '172.18.87.252', '57', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段appCert必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (622, '2021-04-01 08:47:18.791427', '172.18.87.252', '58', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段publicWxAppId必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (623, '2021-04-01 08:47:32.016072', '172.18.87.252', '59', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段wxAppId必填', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (624, '2021-04-01 08:48:37.623676', '172.18.87.252', '149', 'paymentConfigEdit：当入参paymentType字段为wx，入参字段secret必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (625, '2021-04-01 08:48:53.153159', '172.18.87.252', '52', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段secret必填', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (626, '2021-04-01 08:56:37.068000', '172.18.87.252', '52', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段secret必填', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (627, '2021-04-01 08:58:09.976540', '127.0.0.1', '62', 'POST/api/school/teaching/plan', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (628, '2021-04-01 09:02:27.223811', '127.0.0.1', '62', 'POST/api/school/teaching/plan', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (629, '2021-04-01 09:10:02.609378', '127.0.0.1', '20', 'POST/api/school/commodity', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (630, '2021-04-01 09:11:10.068032', '127.0.0.1', '63', 'POST/api/school/commodity/publish/{id}', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (631, '2021-04-01 09:29:11.312418', '127.0.0.1', '64', 'POST/api/school/commodity/{id}/item', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (632, '2021-04-01 09:34:20.857876', '127.0.0.1', '65', 'POST/api/school/learning/class', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (633, '2021-04-01 09:39:10.701003', '172.18.87.252', '61', 'POST/api/payment/config/upload/wx', 'change', '修改 path 和 basepath', 12, 3);
INSERT INTO `xadmin_log` VALUES (634, '2021-04-01 09:46:02.643711', '127.0.0.1', '65', 'POST/api/school/learning/class', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (635, '2021-04-01 09:46:27.428631', '127.0.0.1', '64', 'POST/api/school/commodity/{id}/item', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (636, '2021-04-01 09:53:46.526559', '172.18.87.252', '148', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段wxAppId必填', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (637, '2021-04-01 09:53:52.127585', '172.18.87.252', '54', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段publicWxAppId必填', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (638, '2021-04-01 09:53:57.958995', '172.18.87.252', '53', 'paymentConfigCreate：当入参paymentType字段为wx，入参字段appCert必填', 'change', '修改 remark', 16, 3);
INSERT INTO `xadmin_log` VALUES (639, '2021-04-01 10:03:54.312694', '172.18.87.252', '54', '8_41', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (640, '2021-04-01 10:06:52.862357', '172.18.87.252', '150', 'configUploadWx：上传微信证书，返回赋值给appCent的加密串', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (641, '2021-04-01 10:08:00.215295', '172.18.87.252', '55', '8_61', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (642, '2021-04-02 03:06:00.585758', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 desc', 12, 1);
INSERT INTO `xadmin_log` VALUES (643, '2021-04-02 03:08:49.952940', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (644, '2021-04-02 03:09:16.345383', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (645, '2021-04-02 07:43:56.693055', '172.18.87.252', '56', '8_42', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (646, '2021-04-02 08:41:53.906873', '127.0.0.1', '145', 'refundAgree：当agree=false，退费状态变为60退费被拒', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (647, '2021-04-02 08:42:19.591208', '127.0.0.1', '114', 'refundDetail：出参status退费状态，0：退费中;5:审核中; 10:撤销退费; 20:自动退费中,  30:退款失败（原因：余额不足，网络超时等等...）; 40:异常退费; 50:退费成功；60:退费被拒;', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (648, '2021-04-02 08:42:46.668794', '127.0.0.1', '103', 'refundCommit：出参status退费状态，当submit=true为 5 审核中，当submit=false为 10 撤销退费', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (649, '2021-04-02 08:42:55.733561', '127.0.0.1', '84', 'refundCreate：出参status退费状态，发起成功后置为 0 退费中', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (650, '2021-04-02 08:43:10.604810', '127.0.0.1', '92', 'refundSearch：入参status退费状态', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (651, '2021-04-02 08:43:45.050717', '127.0.0.1', '9', 'financeOrderSearch：入参字段paymentType支付方式--枚举', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (652, '2021-04-02 08:45:38.764712', '127.0.0.1', '10', 'exportFinanceOrder：导出文件表头：支付渠道，对应字段paymentType支付方式--枚举', 'change', '修改 remark', 16, 1);
INSERT INTO `xadmin_log` VALUES (653, '2021-04-02 10:43:15.629713', '127.0.0.1', '66', 'GET/api/school/backstage/order/search', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (654, '2021-04-02 10:44:32.623875', '127.0.0.1', '66', 'GET/api/backstage/order/search', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (655, '2021-04-02 10:49:18.684118', '127.0.0.1', '151', 'orderSearch2：排序：支付时间倒序', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (656, '2021-04-02 10:49:49.167650', '127.0.0.1', '57', '8_66', 'change', '修改 result，test_date，test_user 和 prod_user', 18, 1);
INSERT INTO `xadmin_log` VALUES (657, '2021-04-06 11:28:32.147193', '172.18.69.240', '25', 'POST/api/school/user/search', 'change', '修改 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (658, '2021-04-06 11:45:47.681775', '172.18.83.50', '25', 'POST/api/school/user/search', 'change', '修改 filepath', 12, 2);
INSERT INTO `xadmin_log` VALUES (659, '2021-04-08 02:23:07.673750', '172.18.69.240', '67', 'POST/api/coupon', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (660, '2021-04-08 02:38:59.312624', '172.18.69.240', '67', 'POST/api/coupon', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (661, '2021-04-08 02:39:43.311007', '172.18.69.240', '67', 'POST/api/school/coupon', 'change', '修改 basepath 和 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (662, '2021-04-08 02:48:19.089109', '172.18.69.240', '40', 'GET/api/v3/delete/autotest/userInvalid', 'change', '修改 path 和 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (663, '2021-04-08 03:00:13.559281', '172.18.69.240', '68', 'GET/api/school/refund/check', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (664, '2021-04-12 03:37:43.952690', '172.18.83.50', '9', '康德_V3.14.1', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (665, '2021-04-12 03:39:46.616756', '172.18.83.50', '10', '学院APP_V2.14.0', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (666, '2021-04-13 06:30:29.146953', '172.18.83.50', '69', 'GET/api/school/exam/statistic/subject/{id}/question', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (667, '2021-04-13 06:37:16.488035', '172.18.83.50', '59', '9_69', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (668, '2021-04-13 07:02:31.617423', '172.18.83.50', '152', 'StatisticSubjectQuestion：入参“studentId”和“channel”为必填字段，为空时无法返回数据', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (669, '2021-04-13 07:06:02.852691', '172.18.83.50', '153', 'StatisticSubjectQuestion：入参studentId = {{studentId}}、channel = {{channel}}，subject = {{subjectId}}可正确查询对应的题目统计数', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (670, '2021-04-13 07:12:52.816698', '172.18.83.50', '154', 'StatisticSubjectQuestion：套卷 或章节 中题目重复作答，只统计最后一次作答，\r\n统计入totalQuestionsOfSubject 和 sumCorrectQuestionsOfSubject中', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (671, '2021-04-13 08:52:06.154440', '127.0.0.1', '70', 'GET/api/v3/{app}/xxx/loan/apply', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (672, '2021-04-13 08:52:44.486961', '127.0.0.1', '60', '10_70', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (673, '2021-04-13 08:53:13.527325', '127.0.0.1', '155', 'xxxLoanApply：订单状态应该为11或12', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (674, '2021-04-13 08:54:05.348785', '127.0.0.1', '156', 'xxxLoanApply：订单商品应该在先享学系统中有对应的编码（有编码商品id=3017）', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (675, '2021-04-13 08:54:39.022760', '127.0.0.1', '157', 'xxxLoanApply：返回参数loanUrl，先享学分期地址，可申请分期', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (676, '2021-04-13 08:54:53.418303', '127.0.0.1', '155', 'xxxLoanApply：入参orderNumber，订单状态应该为11或12', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (677, '2021-04-13 08:55:07.823764', '127.0.0.1', '157', 'xxxLoanApply：出参loanUrl，先享学分期地址，可申请分期', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (678, '2021-04-13 08:56:07.248896', '127.0.0.1', '9', '康德_V3.14.1', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (679, '2021-04-13 08:56:12.804072', '127.0.0.1', '60', '9_70', 'change', '修改 version', 18, 1);
INSERT INTO `xadmin_log` VALUES (680, '2021-04-13 08:58:55.859533', '127.0.0.1', '70', 'GET/api/v3/{app}/xxx/loan/apply', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (681, '2021-04-13 08:59:26.558433', '127.0.0.1', '70', 'POST/api/v3/{app}/xxx/loan/apply', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (682, '2021-04-13 09:02:13.557973', '127.0.0.1', '158', 'xxxLoanApply：分期金额应大于1000且小于课程金额', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (683, '2021-04-13 09:21:15.913982', '127.0.0.1', '158', 'xxxLoanApply：分期金额应大于1000且小于课程金额（由先享学设置）', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (684, '2021-04-13 09:29:40.374856', '127.0.0.1', '156', 'xxxLoanApply：订单商品应该在先享学系统中有对应的编码（有编码商品id=3017），提示“购买商品没有配置先享学课程编号”', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (685, '2021-04-13 09:30:24.339322', '127.0.0.1', '155', 'xxxLoanApply：入参orderNumber，订单状态应该为11或12，提示“当前订单状态为：*, 不可分期支付，订单号：***”', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (686, '2021-04-13 10:29:18.265672', '127.0.0.1', '71', 'POST/api/school/enjoy/loan/apply/notify', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (687, '2021-04-13 10:29:43.450821', '127.0.0.1', '61', '9_71', 'change', '修改 version，test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (688, '2021-04-13 11:23:01.307104', '127.0.0.1', '159', 'xxxLoanApplyNotify：入参orderId为payment_number', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (689, '2021-04-13 11:24:05.399759', '127.0.0.1', '160', 'xxxLoanApplyNotify：入参noticeCode=2时，接口不做处理，出参respCode返回1', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (690, '2021-04-13 11:24:57.646098', '127.0.0.1', '161', 'xxxLoanApplyNotify：入参noticeCode=1时，当订单状态为12或15时，出参respCode返回1；否则出参respCode返回2', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (691, '2021-04-13 11:25:53.076923', '127.0.0.1', '162', 'xxxLoanApplyNotify：出参respCode接口执行是否成功，1- 成功      2- 失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (692, '2021-04-13 11:26:11.195454', '127.0.0.1', '161', 'xxxLoanApplyNotify：入参noticeCode=1时，当订单状态为12或15时，出参respCode返回1；否则出参respCode返回2', 'change', '没有字段被修改。', 16, 1);
INSERT INTO `xadmin_log` VALUES (693, '2021-04-13 11:26:50.505362', '127.0.0.1', '163', 'xxxLoanApplyNotify：入参noticeCode=1时，订单状态=12时，执行成功后，订单状态变成15', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (694, '2021-04-13 11:27:43.497694', '127.0.0.1', '160', 'xxxLoanApplyNotify：入参noticeCode=2时，出参respCode返回1，不做任何处理', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (695, '2021-04-19 10:35:45.295530', '127.0.0.1', '11', '康德_3.14.1.1', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (696, '2021-04-19 10:36:10.007504', '127.0.0.1', '62', '11_13', 'change', '修改 version', 18, 1);
INSERT INTO `xadmin_log` VALUES (697, '2021-04-19 10:37:30.545137', '127.0.0.1', '164', 'orderCreate：分期下单时，首付和尾款金额小于0.01元时，下单失败', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (698, '2021-04-19 11:03:35.398834', '127.0.0.1', '72', 'POST/api/v3/{app}/store/private/order/{orderNumber}/cancel', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (699, '2021-04-19 11:04:41.480253', '127.0.0.1', '72', 'POST/api/v3/{app}/store/private/order/{orderNumber}/cancel', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (700, '2021-04-19 12:27:21.915872', '127.0.0.1', '164', 'orderCreate：订单总金额必须大于500元，首付最低1元，向上取整', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (701, '2021-04-19 12:38:02.433473', '127.0.0.1', '164', 'orderCreate：订单支付总金额必须大于500元，首付最低1元，向上取整', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (702, '2021-04-23 08:22:54.762171', '127.0.0.1', '12', '康德_V3.14.3', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (703, '2021-04-23 08:23:46.156772', '127.0.0.1', '73', 'GET/api/school/exam/paper/search', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (704, '2021-04-23 08:26:24.479510', '127.0.0.1', '73', 'POST/api/school/exam/paper/search', 'change', '修改 mode', 12, 1);
INSERT INTO `xadmin_log` VALUES (705, '2021-04-23 08:31:31.067872', '127.0.0.1', '73', 'POST/api/school/exam/paper/search', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (706, '2021-04-23 08:32:17.680269', '127.0.0.1', '165', 'paperSearch：tag=’SCORE‘，status=10 的是随堂考可选套卷', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (707, '2021-04-23 08:34:05.497021', '127.0.0.1', '74', 'PUT/api/school/learning/class/theLesson/bind/paper', 'change', '修改 code，mode，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (708, '2021-04-23 08:37:30.460096', '127.0.0.1', '74', 'PUT/api/school/learning/class/theLesson/bind/paper', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (709, '2021-04-23 08:57:50.127391', '127.0.0.1', '75', 'DELETE/api/school/learning/class/theLesson/unbind/paper', 'change', '修改 code，mode，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (710, '2021-04-23 09:35:36.009221', '127.0.0.1', '76', 'POST/api/import/exam/question', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (711, '2021-04-25 02:28:50.414243', '127.0.0.1', '12', '/v3/{app}/course/public', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (712, '2021-04-25 02:29:55.211025', '127.0.0.1', '77', 'GET/v3/{app}/course/public/class{learningClassId}/material', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (713, '2021-04-25 03:06:28.485841', '127.0.0.1', '13', '新后端_3.33.5', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (714, '2021-04-25 03:06:56.417180', '127.0.0.1', '67', '13_77', 'change', '修改 version，test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (715, '2021-04-25 03:07:31.159321', '127.0.0.1', '66', '12_76', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (716, '2021-04-25 03:08:00.879855', '127.0.0.1', '65', '12_75', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (717, '2021-04-25 03:08:29.376689', '127.0.0.1', '64', '12_74', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (718, '2021-04-25 03:08:50.128223', '127.0.0.1', '63', '12_73', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (719, '2021-04-25 03:09:45.309733', '127.0.0.1', '166', 'lessonBindPaper：一个课节只能绑定一个试卷，多次执行，试卷id更新', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (720, '2021-04-25 03:10:57.633426', '127.0.0.1', '167', 'lessonUnbindPaper：解绑成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (721, '2021-04-25 03:11:12.736057', '127.0.0.1', '168', 'importLessonPaper：导入成功', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (722, '2021-04-25 03:11:35.311729', '127.0.0.1', '169', 'importLessonPaper：所属功能默认“套卷模拟”', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (723, '2021-04-25 03:11:56.368467', '127.0.0.1', '170', 'importLessonPaper：套卷名称取第一条数据的值', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (724, '2021-04-25 03:12:28.245237', '127.0.0.1', '171', 'importLessonPaper：文件不能大于5M，条数不能大于10000条', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (725, '2021-04-25 03:13:01.160260', '127.0.0.1', '168', 'importLessonPaper：导入成功，新增一条试卷，上架状态，同时与课节关联成功', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (726, '2021-04-25 03:38:02.903409', '127.0.0.1', '77', 'GET/v3/{app}/course/public/class/{learningClassId}/material', 'change', '修改 path', 12, 1);
INSERT INTO `xadmin_log` VALUES (727, '2021-04-25 03:42:02.938303', '127.0.0.1', '7', '测试环境8', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (728, '2021-04-25 03:42:14.028779', '127.0.0.1', '77', 'GET/v3/{app}/course/public/class/{learningClassId}/material', 'change', '修改 domain', 12, 1);
INSERT INTO `xadmin_log` VALUES (729, '2021-04-25 03:42:59.087256', '127.0.0.1', '12', '/api/v3/{app}/course/public', 'change', '修改 test_path 和 prod_path', 14, 1);
INSERT INTO `xadmin_log` VALUES (730, '2021-04-25 06:39:18.358788', '127.0.0.1', '78', 'POST/api/timetable/teacher/workbench/theLesson/materials', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (731, '2021-04-25 06:39:50.315482', '127.0.0.1', '68', '12_78', 'change', '修改 version', 18, 1);
INSERT INTO `xadmin_log` VALUES (732, '2021-04-25 06:42:55.769688', '127.0.0.1', '78', 'POST/api/school/timetable/teacher/workbench/theLesson/materials', 'change', '修改 basepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (733, '2021-04-25 06:57:31.603745', '127.0.0.1', '172', 'classMaterials：出参teachingPlanMaterials为教学计划关联资料列表，排序为上传时间正序', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (734, '2021-04-25 06:59:02.242484', '127.0.0.1', '173', 'classMaterials：出参theLessonMaterials为课次和课节关联资料列表，排序：课节顺序>关联时间正序，同一课节相同资料去重，保留课次关联的资料', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (735, '2021-04-25 07:34:45.080073', '172.18.87.252', '79', 'DELETE/api/school/timetable/drop/teacher/workbench/theLesson/materials', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (736, '2021-04-25 07:45:05.352378', '172.18.87.252', '80', 'PUT/api/school/learning/class/{id}', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (737, '2021-04-25 07:45:55.797398', '172.18.87.252', '65', 'POST/api/school/learning/class', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (738, '2021-04-25 07:49:50.642844', '172.18.87.252', '79', 'DELETE/api/school/timetable/drop/teacher/workbench/theLesson/materials', 'change', '修改 filepath', 12, 3);
INSERT INTO `xadmin_log` VALUES (739, '2021-04-25 07:53:01.459654', '172.18.87.252', '80', 'PUT/api/school/learning/class/{id}', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (740, '2021-04-25 07:53:34.418591', '172.18.87.252', '79', 'DELETE/api/school/timetable/drop/teacher/workbench/theLesson/materials', 'change', '修改 remark', 12, 3);
INSERT INTO `xadmin_log` VALUES (741, '2021-04-25 07:57:18.530579', '172.18.87.252', '81', 'GET/api/v3/{app}/course/public/class/{learningClassId}/model/material', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (742, '2021-04-26 02:21:36.565568', '127.0.0.1', '174', 'lessonBindPaper：下架或不存在的试卷，绑定失败，返回相应提示', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (743, '2021-04-26 03:58:12.890068', '172.18.87.252', '175', 'lessonBindMaterials：入参theLessonIds字段必填，不可为空；类型number []', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (744, '2021-04-26 03:59:06.569591', '172.18.87.252', '175', 'lessonBindMaterials：入参theLessonIds字段必填，number []，不可为空', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (745, '2021-04-26 03:59:56.204954', '172.18.87.252', '176', 'lessonBindMaterials：入参materialsIds字段，number []，不可为空', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (746, '2021-04-26 07:10:09.944107', '172.18.87.252', '82', 'GET/api/v3/{app}/course/public/lesson/plan/{lessonPlanId}/materials', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (747, '2021-04-26 07:15:57.622825', '172.18.87.252', '177', 'learningClassCreate：创建合班课，不同步合班课已关联的教学资料', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (748, '2021-04-26 07:17:45.942476', '172.18.87.252', '178', 'learningClassCreate：创建关联课次的课节，不同步课次关联的教学资料给课节', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (749, '2021-04-26 07:23:56.146818', '172.18.87.252', '83', 'POST/api/school/learning/class/{id}/theLesson', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (750, '2021-04-26 07:24:55.339686', '172.18.87.252', '84', 'PUT/api/school/learning/class/{id}/theLesson', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (751, '2021-04-26 07:28:17.764564', '172.18.87.252', '85', 'PUT/api/school/learning/class/{id}/theLesson/copy', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (752, '2021-04-26 08:26:09.635966', '172.18.87.252', '69', '12_65', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (753, '2021-04-26 08:27:41.363721', '172.18.87.252', '179', 'theLessonCreate：创建合班课，不同步已关联的教学资料', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (754, '2021-04-26 08:37:57.291487', '172.18.87.252', '180', 'theLessonCreate：创建课节，所关联课次关联的教学资料，不同步给课节', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (755, '2021-04-26 08:51:08.426899', '172.18.87.252', '70', '12_83', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (756, '2021-04-26 08:52:52.303281', '172.18.87.252', '181', 'theLessonEdit：修改课节，修改后符合合班逻辑，不同步合班课中已关联的教学资料', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (757, '2021-04-26 08:53:05.401409', '172.18.87.252', '182', 'theLessonEdit：修改课节，所关联课次关联的教学资料，不同步给课节', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (758, '2021-04-26 09:28:13.367070', '172.18.87.252', '71', '12_84', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (759, '2021-04-26 09:29:18.450090', '172.18.87.252', '70', '12_83', 'change', '修改 remark', 18, 3);
INSERT INTO `xadmin_log` VALUES (760, '2021-04-26 09:29:34.938021', '172.18.87.252', '71', '12_84', 'change', '修改 remark', 18, 3);
INSERT INTO `xadmin_log` VALUES (761, '2021-04-26 09:33:39.246214', '172.18.87.252', '183', 'learningClassTheLessonCopy：套用排课后，课节符合合班逻辑，不同步合班课中的教学资料', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (762, '2021-04-26 09:43:07.244874', '172.18.87.252', '72', '12_85', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (763, '2021-04-26 09:43:51.247264', '172.18.87.252', '72', '12_85', 'change', '修改 remark', 18, 3);
INSERT INTO `xadmin_log` VALUES (764, '2021-04-26 09:44:06.243211', '172.18.87.252', '71', '12_84', 'change', '修改 remark', 18, 3);
INSERT INTO `xadmin_log` VALUES (765, '2021-04-26 09:54:40.598701', '172.18.87.252', '86', 'POST/api/common/upload/file', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (766, '2021-04-26 09:56:01.195407', '172.18.87.252', '184', 'fileUpload：入参file、channel、module字段，必填', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (767, '2021-04-26 09:56:39.215626', '172.18.87.252', '185', 'fileUpload：文件最大不超过10M', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (768, '2021-04-26 09:56:56.107479', '172.18.87.252', '185', 'fileUpload：文件最大不能超过10M', 'change', '修改 desc', 16, 3);
INSERT INTO `xadmin_log` VALUES (769, '2021-04-26 10:02:17.230175', '172.18.87.252', '73', '12_86', 'create', '已添加。', 18, 3);
INSERT INTO `xadmin_log` VALUES (770, '2021-04-26 10:12:40.965048', '127.0.0.1', '87', 'GET/api/v3/{app}/course/public/lesson/materials/v2', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (771, '2021-04-26 10:13:25.401309', '127.0.0.1', '74', '13_87', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (772, '2021-04-26 10:14:01.333261', '127.0.0.1', '186', 'lessonMaterials：排序：关联时间正序，相同资料去重，保留课次关联的资料', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (773, '2021-04-27 11:28:50.548091', '172.18.87.252', '187', 'classModelMaterials：出参teachingPlanMaterials，按关联时间正序排列，关联时间相同，按资料id正序', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (774, '2021-04-27 11:31:27.572395', '172.18.87.252', '188', 'classModelMaterials：出参subjectList，返回教学资料目录结构，同一级资料，按课节id>关联时间>资料id 正序排序', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (775, '2021-05-17 07:56:44.959385', '127.0.0.1', '14', '新后端_4.0.0', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (776, '2021-05-17 07:56:52.485300', '127.0.0.1', '14', '新后端_4.0.0', 'change', '修改 remark', 17, 1);
INSERT INTO `xadmin_log` VALUES (777, '2021-05-17 08:00:19.083140', '127.0.0.1', '43', 'classificationList：类目中字段show是否展示，为0时，不返回该类目', 'change', '修改 desc 和 status', 16, 1);
INSERT INTO `xadmin_log` VALUES (778, '2021-05-17 08:10:33.222638', '127.0.0.1', '88', 'GET/api/v3/{app}/store/public/classification/sort/list', 'change', '修改 code，path，desc，tag，filepath 和 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (779, '2021-05-17 08:11:09.449811', '127.0.0.1', '75', '14_88', 'change', '修改 api，test_date 和 test_user', 18, 1);
INSERT INTO `xadmin_log` VALUES (780, '2021-05-17 08:11:36.958286', '127.0.0.1', '75', '14_88', 'change', '修改 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (781, '2021-05-17 08:11:55.011034', '127.0.0.1', '189', 'classificationListSaas：排序：排序值大于0正序（0排后面） >  类目id正序', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (782, '2021-05-17 08:12:46.052691', '127.0.0.1', '190', 'classificationListSaas：入参字段shopWindow橱窗类型EX/PU', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (783, '2021-05-17 08:13:41.377737', '127.0.0.1', '191', 'classificationListSaas：header参数subchannel渠道枚举，类目下有没有商品，都返回此类目', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (784, '2021-05-17 08:13:55.326453', '127.0.0.1', '192', 'classificationListSaas：类目中字段show是否展示，为0时，不返回该类目', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (785, '2021-05-17 08:20:21.445429', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 接口测试点', NULL, 1);
INSERT INTO `xadmin_log` VALUES (786, '2021-05-17 08:20:44.958584', '127.0.0.1', '88', 'GET/api/v3/{app}/store/public/classification/sort/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (787, '2021-05-17 08:26:49.758563', '127.0.0.1', '88', 'GET/api/v3/{app}/store/public/classification/sort/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (788, '2021-05-17 08:28:28.594391', '127.0.0.1', '88', 'GET/api/v3/{app}/store/public/classification/sort/list', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (789, '2021-05-18 07:44:37.311384', '127.0.0.1', '193', 'classificationListSaas：存在redis缓存，更新时间为1小时；当对类目进行创建/修改/删除时，缓存更新', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (790, '2021-05-19 03:12:43.017303', '127.0.0.1', '13', '/v3/{app}/my/private', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (791, '2021-05-19 03:13:46.427816', '127.0.0.1', '89', 'POST/v3/{app}/my/private/orderList/v2', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (792, '2021-05-19 03:15:02.017779', '127.0.0.1', '90', 'GET/v3/{app}/my/private/orderList', 'change', '修改 code，mode，path，desc，tag 和 filepath', 12, 1);
INSERT INTO `xadmin_log` VALUES (793, '2021-05-19 03:20:12.670483', '127.0.0.1', '76', '14_89', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (794, '2021-05-19 04:47:55.091009', '127.0.0.1', '13', '/api/v3/{app}/my/private', 'change', '修改 test_path 和 prod_path', 14, 1);
INSERT INTO `xadmin_log` VALUES (795, '2021-05-19 07:19:16.634690', '127.0.0.1', '194', 'orderListV2：分页参数\"pageIndex\": 1,	\"pageSize\": 10', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (796, '2021-05-19 07:19:24.596409', '127.0.0.1', '194', 'orderListV2：分页参数：\"pageIndex\": 1,	\"pageSize\": 10', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (797, '2021-05-19 07:20:34.677097', '127.0.0.1', '195', 'orderListV2：返回值规则：status in (0,5,15,25) ；sale_type IN ( \"BUY_COUPON\", \"BUY_TEACHING_PLAN\" ) 或 sale_type = \"BACKSTAGE\" AND deal_amount >= 5000', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (798, '2021-05-19 07:20:48.985882', '127.0.0.1', '196', 'orderListV2：排序：创建时间倒序', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (799, '2021-05-19 07:22:40.870805', '127.0.0.1', '91', 'POST/api/v3/{app}/user/phone/login', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (800, '2021-05-19 07:23:13.695082', '127.0.0.1', '77', '14_91', 'change', '修改 test_date，test_user，prod_user 和 remark', 18, 1);
INSERT INTO `xadmin_log` VALUES (801, '2021-05-19 07:34:35.380053', '127.0.0.1', '92', 'POST/api/v3/{app}/user/phone/SMS', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (802, '2021-05-19 07:35:06.058058', '127.0.0.1', '77', '14_91', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (803, '2021-05-19 07:38:23.544218', '127.0.0.1', '91', 'POST/api/v3/{app}/user/phone/login', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (804, '2021-05-19 07:42:42.993752', '127.0.0.1', '197', 'phoneLogin：老用户登录成功，返回正确的用户信息', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (805, '2021-05-19 07:43:22.722564', '127.0.0.1', '198', 'phoneLogin：新用户登录成功，创建一个新学员且返回正确的学员信息', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (806, '2021-05-19 07:47:10.439918', '127.0.0.1', '92', 'POST/api/v3/{app}/user/phone/SMS', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (807, '2021-05-19 09:21:59.786149', '172.18.87.252', '93', 'POST/api/v3/coupon/me', 'create', '已添加。', 12, 3);
INSERT INTO `xadmin_log` VALUES (808, '2021-05-19 09:26:34.875914', '172.18.87.252', '199', 'CouponMe：入参studentId，按studentId查询优惠券', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (809, '2021-05-19 09:27:19.875611', '172.18.87.252', '200', 'CouponMe：出参content，返回优惠券信息，按领取时间倒序排列', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (810, '2021-05-19 09:27:50.220670', '172.18.87.252', '201', 'CouponMe：出参content，返回优惠券信息，不包含已使用和已过期的优惠券', 'create', '已添加。', 16, 3);
INSERT INTO `xadmin_log` VALUES (811, '2021-05-19 10:04:07.199454', '127.0.0.1', '197', 'phoneLogin：老用户登录成功，返回正确的已有学员信息，me接口返回对应的userId和studentId', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (812, '2021-05-19 10:06:19.962602', '127.0.0.1', '198', 'phoneLogin：新用户登录成功，创建一个新学员且返回正确的学员信息；me接口返回新增的studentId和userId，用户头像随机选取，昵称为用户+手机号；app登录时可以微信登录', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (813, '2021-05-19 10:06:56.992628', '127.0.0.1', '197', 'phoneLogin：老用户登录成功，返回正确的已有学员信息；me接口返回对应的userId和studentId，昵称和头像取自微信；app可以正常登录', 'change', '修改 desc', 16, 1);
INSERT INTO `xadmin_log` VALUES (814, '2021-05-20 06:06:55.377657', '127.0.0.1', '89', 'POST/api/v3/{app}/my/private/orderList/v2', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (815, '2021-06-02 03:20:45.327893', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (816, '2021-06-02 03:23:18.299710', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (817, '2021-06-07 09:52:18.594171', '127.0.0.1', '8', 'classroomPrivate', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (818, '2021-06-07 09:53:08.670226', '127.0.0.1', '14', '/api/v3/{app}/classroom/private', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (819, '2021-06-07 09:53:42.198536', '127.0.0.1', '94', 'POST/api/v3/{app}/classroom/private/attendance/record', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (820, '2021-06-07 09:53:50.885300', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 域名地址', NULL, 1);
INSERT INTO `xadmin_log` VALUES (821, '2021-06-07 09:56:37.271261', '127.0.0.1', '94', 'POST/api/v3/{app}/classroom/private/attendance/record', 'change', '修改 remark', 12, 1);
INSERT INTO `xadmin_log` VALUES (822, '2021-06-10 03:08:22.982109', '127.0.0.1', '8', 'PUT/api/school/payment/{orderNumber}/payment/notify', 'change', '修改 remark', 12, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'dashboard:home:pos', '', 2);
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 3);
INSERT INTO `xadmin_usersettings` VALUES (4, 'dashboard:home:pos', '', 4);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
