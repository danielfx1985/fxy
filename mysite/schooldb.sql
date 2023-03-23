/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : schooldb

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 23/03/2023 21:13:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (9, 'Can add user', 3, 'add_user');
INSERT INTO `auth_permission` VALUES (10, 'Can change user', 3, 'change_user');
INSERT INTO `auth_permission` VALUES (11, 'Can delete user', 3, 'delete_user');
INSERT INTO `auth_permission` VALUES (12, 'Can view user', 3, 'view_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add redirect', 5, 'add_redirect');
INSERT INTO `auth_permission` VALUES (18, 'Can change redirect', 5, 'change_redirect');
INSERT INTO `auth_permission` VALUES (19, 'Can delete redirect', 5, 'delete_redirect');
INSERT INTO `auth_permission` VALUES (20, 'Can view redirect', 5, 'view_redirect');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add site', 7, 'add_site');
INSERT INTO `auth_permission` VALUES (26, 'Can change site', 7, 'change_site');
INSERT INTO `auth_permission` VALUES (27, 'Can delete site', 7, 'delete_site');
INSERT INTO `auth_permission` VALUES (28, 'Can view site', 7, 'view_site');
INSERT INTO `auth_permission` VALUES (29, 'Can add Setting', 8, 'add_setting');
INSERT INTO `auth_permission` VALUES (30, 'Can change Setting', 8, 'change_setting');
INSERT INTO `auth_permission` VALUES (31, 'Can delete Setting', 8, 'delete_setting');
INSERT INTO `auth_permission` VALUES (32, 'Can view Setting', 8, 'view_setting');
INSERT INTO `auth_permission` VALUES (33, 'Can add Site permission', 9, 'add_sitepermission');
INSERT INTO `auth_permission` VALUES (34, 'Can change Site permission', 9, 'change_sitepermission');
INSERT INTO `auth_permission` VALUES (35, 'Can delete Site permission', 9, 'delete_sitepermission');
INSERT INTO `auth_permission` VALUES (36, 'Can view Site permission', 9, 'view_sitepermission');
INSERT INTO `auth_permission` VALUES (37, 'Can add assigned keyword', 10, 'add_assignedkeyword');
INSERT INTO `auth_permission` VALUES (38, 'Can change assigned keyword', 10, 'change_assignedkeyword');
INSERT INTO `auth_permission` VALUES (39, 'Can delete assigned keyword', 10, 'delete_assignedkeyword');
INSERT INTO `auth_permission` VALUES (40, 'Can view assigned keyword', 10, 'view_assignedkeyword');
INSERT INTO `auth_permission` VALUES (41, 'Can add Keyword', 11, 'add_keyword');
INSERT INTO `auth_permission` VALUES (42, 'Can change Keyword', 11, 'change_keyword');
INSERT INTO `auth_permission` VALUES (43, 'Can delete Keyword', 11, 'delete_keyword');
INSERT INTO `auth_permission` VALUES (44, 'Can view Keyword', 11, 'view_keyword');
INSERT INTO `auth_permission` VALUES (45, 'Can add Rating', 12, 'add_rating');
INSERT INTO `auth_permission` VALUES (46, 'Can change Rating', 12, 'change_rating');
INSERT INTO `auth_permission` VALUES (47, 'Can delete Rating', 12, 'delete_rating');
INSERT INTO `auth_permission` VALUES (48, 'Can view Rating', 12, 'view_rating');
INSERT INTO `auth_permission` VALUES (49, 'Can add Comment', 13, 'add_threadedcomment');
INSERT INTO `auth_permission` VALUES (50, 'Can change Comment', 13, 'change_threadedcomment');
INSERT INTO `auth_permission` VALUES (51, 'Can delete Comment', 13, 'delete_threadedcomment');
INSERT INTO `auth_permission` VALUES (52, 'Can view Comment', 13, 'view_threadedcomment');
INSERT INTO `auth_permission` VALUES (53, 'Can add Page', 14, 'add_page');
INSERT INTO `auth_permission` VALUES (54, 'Can change Page', 14, 'change_page');
INSERT INTO `auth_permission` VALUES (55, 'Can delete Page', 14, 'delete_page');
INSERT INTO `auth_permission` VALUES (56, 'Can view Page', 14, 'view_page');
INSERT INTO `auth_permission` VALUES (57, 'Can add Link', 15, 'add_link');
INSERT INTO `auth_permission` VALUES (58, 'Can change Link', 15, 'change_link');
INSERT INTO `auth_permission` VALUES (59, 'Can delete Link', 15, 'delete_link');
INSERT INTO `auth_permission` VALUES (60, 'Can view Link', 15, 'view_link');
INSERT INTO `auth_permission` VALUES (61, 'Can add Rich text page', 16, 'add_richtextpage');
INSERT INTO `auth_permission` VALUES (62, 'Can change Rich text page', 16, 'change_richtextpage');
INSERT INTO `auth_permission` VALUES (63, 'Can delete Rich text page', 16, 'delete_richtextpage');
INSERT INTO `auth_permission` VALUES (64, 'Can view Rich text page', 16, 'view_richtextpage');
INSERT INTO `auth_permission` VALUES (65, 'Can add Blog Category', 17, 'add_blogcategory');
INSERT INTO `auth_permission` VALUES (66, 'Can change Blog Category', 17, 'change_blogcategory');
INSERT INTO `auth_permission` VALUES (67, 'Can delete Blog Category', 17, 'delete_blogcategory');
INSERT INTO `auth_permission` VALUES (68, 'Can view Blog Category', 17, 'view_blogcategory');
INSERT INTO `auth_permission` VALUES (69, 'Can add Blog post', 18, 'add_blogpost');
INSERT INTO `auth_permission` VALUES (70, 'Can change Blog post', 18, 'change_blogpost');
INSERT INTO `auth_permission` VALUES (71, 'Can delete Blog post', 18, 'delete_blogpost');
INSERT INTO `auth_permission` VALUES (72, 'Can view Blog post', 18, 'view_blogpost');
INSERT INTO `auth_permission` VALUES (73, 'Can add Field', 19, 'add_field');
INSERT INTO `auth_permission` VALUES (74, 'Can change Field', 19, 'change_field');
INSERT INTO `auth_permission` VALUES (75, 'Can delete Field', 19, 'delete_field');
INSERT INTO `auth_permission` VALUES (76, 'Can view Field', 19, 'view_field');
INSERT INTO `auth_permission` VALUES (77, 'Can add Form field entry', 20, 'add_fieldentry');
INSERT INTO `auth_permission` VALUES (78, 'Can change Form field entry', 20, 'change_fieldentry');
INSERT INTO `auth_permission` VALUES (79, 'Can delete Form field entry', 20, 'delete_fieldentry');
INSERT INTO `auth_permission` VALUES (80, 'Can view Form field entry', 20, 'view_fieldentry');
INSERT INTO `auth_permission` VALUES (81, 'Can add Form', 21, 'add_form');
INSERT INTO `auth_permission` VALUES (82, 'Can change Form', 21, 'change_form');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Form', 21, 'delete_form');
INSERT INTO `auth_permission` VALUES (84, 'Can view Form', 21, 'view_form');
INSERT INTO `auth_permission` VALUES (85, 'Can add Form entry', 22, 'add_formentry');
INSERT INTO `auth_permission` VALUES (86, 'Can change Form entry', 22, 'change_formentry');
INSERT INTO `auth_permission` VALUES (87, 'Can delete Form entry', 22, 'delete_formentry');
INSERT INTO `auth_permission` VALUES (88, 'Can view Form entry', 22, 'view_formentry');
INSERT INTO `auth_permission` VALUES (89, 'Can add Gallery', 23, 'add_gallery');
INSERT INTO `auth_permission` VALUES (90, 'Can change Gallery', 23, 'change_gallery');
INSERT INTO `auth_permission` VALUES (91, 'Can delete Gallery', 23, 'delete_gallery');
INSERT INTO `auth_permission` VALUES (92, 'Can view Gallery', 23, 'view_gallery');
INSERT INTO `auth_permission` VALUES (93, 'Can add Image', 24, 'add_galleryimage');
INSERT INTO `auth_permission` VALUES (94, 'Can change Image', 24, 'change_galleryimage');
INSERT INTO `auth_permission` VALUES (95, 'Can delete Image', 24, 'delete_galleryimage');
INSERT INTO `auth_permission` VALUES (96, 'Can view Image', 24, 'view_galleryimage');
INSERT INTO `auth_permission` VALUES (97, 'Can add student_base info', 25, 'add_student_baseinfo');
INSERT INTO `auth_permission` VALUES (98, 'Can change student_base info', 25, 'change_student_baseinfo');
INSERT INTO `auth_permission` VALUES (99, 'Can delete student_base info', 25, 'delete_student_baseinfo');
INSERT INTO `auth_permission` VALUES (100, 'Can view student_base info', 25, 'view_student_baseinfo');
INSERT INTO `auth_permission` VALUES (101, 'Can add student_info', 26, 'add_student_info');
INSERT INTO `auth_permission` VALUES (102, 'Can change student_info', 26, 'change_student_info');
INSERT INTO `auth_permission` VALUES (103, 'Can delete student_info', 26, 'delete_student_info');
INSERT INTO `auth_permission` VALUES (104, 'Can view student_info', 26, 'view_student_info');
INSERT INTO `auth_permission` VALUES (105, 'Can add student_religion info', 27, 'add_student_religioninfo');
INSERT INTO `auth_permission` VALUES (106, 'Can change student_religion info', 27, 'change_student_religioninfo');
INSERT INTO `auth_permission` VALUES (107, 'Can delete student_religion info', 27, 'delete_student_religioninfo');
INSERT INTO `auth_permission` VALUES (108, 'Can view student_religion info', 27, 'view_student_religioninfo');
INSERT INTO `auth_permission` VALUES (109, 'Can add student_school ifo', 28, 'add_student_schoolifo');
INSERT INTO `auth_permission` VALUES (110, 'Can change student_school ifo', 28, 'change_student_schoolifo');
INSERT INTO `auth_permission` VALUES (111, 'Can delete student_school ifo', 28, 'delete_student_schoolifo');
INSERT INTO `auth_permission` VALUES (112, 'Can view student_school ifo', 28, 'view_student_schoolifo');
INSERT INTO `auth_permission` VALUES (113, 'Can add student_family', 29, 'add_student_family');
INSERT INTO `auth_permission` VALUES (114, 'Can change student_family', 29, 'change_student_family');
INSERT INTO `auth_permission` VALUES (115, 'Can delete student_family', 29, 'delete_student_family');
INSERT INTO `auth_permission` VALUES (116, 'Can view student_family', 29, 'view_student_family');
INSERT INTO `auth_permission` VALUES (117, 'Can add news', 30, 'add_news');
INSERT INTO `auth_permission` VALUES (118, 'Can change news', 30, 'change_news');
INSERT INTO `auth_permission` VALUES (119, 'Can delete news', 30, 'delete_news');
INSERT INTO `auth_permission` VALUES (120, 'Can view news', 30, 'view_news');
INSERT INTO `auth_permission` VALUES (121, 'Can add log entry', 31, 'add_logentry');
INSERT INTO `auth_permission` VALUES (122, 'Can change log entry', 31, 'change_logentry');
INSERT INTO `auth_permission` VALUES (123, 'Can delete log entry', 31, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (124, 'Can view log entry', 31, 'view_logentry');
INSERT INTO `auth_permission` VALUES (125, 'Can add comment', 32, 'add_comment');
INSERT INTO `auth_permission` VALUES (126, 'Can change comment', 32, 'change_comment');
INSERT INTO `auth_permission` VALUES (127, 'Can delete comment', 32, 'delete_comment');
INSERT INTO `auth_permission` VALUES (128, 'Can view comment', 32, 'view_comment');
INSERT INTO `auth_permission` VALUES (129, 'Can moderate comments', 32, 'can_moderate');
INSERT INTO `auth_permission` VALUES (130, 'Can add comment flag', 33, 'add_commentflag');
INSERT INTO `auth_permission` VALUES (131, 'Can change comment flag', 33, 'change_commentflag');
INSERT INTO `auth_permission` VALUES (132, 'Can delete comment flag', 33, 'delete_commentflag');
INSERT INTO `auth_permission` VALUES (133, 'Can view comment flag', 33, 'view_commentflag');
INSERT INTO `auth_permission` VALUES (134, 'Can add books', 34, 'add_books');
INSERT INTO `auth_permission` VALUES (135, 'Can change books', 34, 'change_books');
INSERT INTO `auth_permission` VALUES (136, 'Can delete books', 34, 'delete_books');
INSERT INTO `auth_permission` VALUES (137, 'Can view books', 34, 'view_books');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$390000$JkmQCWnMXi7GaEmQyXPMix$vEphh0J9J/tWHaeiMSQ+/eemkmXlDKbV/1icaCDyoZQ=', '2023-03-14 19:22:36.418802', 1, 'wzr', '', '', '', 1, 1, '2022-11-18 15:10:16.229535');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blogcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcategory`;
CREATE TABLE `blog_blogcategory`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blogcategory_site_id_42b9c96d_fk_django_site_id`(`site_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogcategory
-- ----------------------------
INSERT INTO `blog_blogcategory` VALUES (1, '师资', '师资', 1);
INSERT INTO `blog_blogcategory` VALUES (2, '学院公告', '学院公告', 1);
INSERT INTO `blog_blogcategory` VALUES (3, 'gg', 'gg', 1);
INSERT INTO `blog_blogcategory` VALUES (4, 'tz', 'tz', 1);
INSERT INTO `blog_blogcategory` VALUES (5, 'lll', 'lll', 1);
INSERT INTO `blog_blogcategory` VALUES (6, '学院动态', '学院动态', 1);

-- ----------------------------
-- Table structure for blog_blogpost
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost`;
CREATE TABLE `blog_blogpost`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comments_count` int NOT NULL,
  `keywords_string` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rating_count` int NOT NULL,
  `rating_sum` int NOT NULL,
  `rating_average` double NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_meta_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `updated` datetime(6) NULL DEFAULT NULL,
  `status` int NOT NULL,
  `publish_date` datetime(6) NULL DEFAULT NULL,
  `expiry_date` datetime(6) NULL DEFAULT NULL,
  `short_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blogpost_site_id_7995688f_fk_django_site_id`(`site_id` ASC) USING BTREE,
  INDEX `blog_blogpost_user_id_12ed6b16_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  INDEX `blog_blogpost_publish_date_703abc16`(`publish_date` ASC) USING BTREE,
  CONSTRAINT `blog_blogpost_site_id_7995688f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogpost
-- ----------------------------
INSERT INTO `blog_blogpost` VALUES (1, 0, '', 0, 0, 0, '院长简介', '院长简介', NULL, '帕松列龙庄勐\n云南佛学院西双版纳分院 院长\n', 1, '2023-02-02 15:19:41.230486', '2023-03-16 16:51:12.145080', 2, '2023-02-02 15:19:41.221489', NULL, 'unset', 1, '<h4 style=\"text-align: center;\">帕松列龙庄勐</h4>\n<h4 style=\"text-align: center;\">云南佛学院西双版纳分院 院长</h4>\n<p><img height=\"1125\" src=\"http://127.0.0.1:9000/media/uploads/.thumbnails/mmexport1610622584732.jpg/mmexport1610622584732-750x1125.jpg\" width=\"750\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>\n<h4>帕松列龙庄勐 ,1960年6月1日出生，傣族，俗名：艾仔龙庄，勐海县人。</h4>\n<h4>现任全国政协常委，&ldquo;中宗和&rdquo;副主席，曾任云南省政协常委，西双版纳州政协副主席；</h4>\n<h4>中国佛教协会副会长，云南省佛教协会副会长，西双版纳州佛教协会会长。</h4>\n<h4>曾任中国佛教协会南传上座部佛教工作委员会主任。</h4>\n<h4>曾任云南佛学院副院长，西双版纳总佛寺住持，<u>云南佛学院西双版纳分院院长</u>。</h4>\n<h4>&nbsp;</h4>\n<h4>1973年,缅甸勐养龙&ldquo;旺坝岗&rdquo;佛寺剃度出家为沙玛内帕仔龙庄。</h4>\n<h4>1973年-1976年,就读于缅甸景栋&ldquo;旺贺弘&rdquo;佛寺中级佛学院。</h4>\n<h4>1977年-1979年,研读于缅甸仰光&ldquo;旺朵拐凿&rdquo;佛寺和&ldquo;嘎喊&rdquo;高级佛学院。</h4>\n<h4>1980年6月,于缅甸景栋&ldquo;旺贺弘&rdquo;佛寺受比库戒。称名都龙庄。巴利法名宛纳西利(Vannasiri)同年,回勐养龙佛学院担任教师。</h4>\n<h4>1981年-1983年，到泰国清迈府&ldquo;旺勐满&rdquo;佛寺参学。</h4>\n<h4>1983年-1984年，到缅甸大其力&ldquo;旺功吞&rdquo;佛寺担任教职员。</h4>\n<h4>1985年初，回缅甸景栋照料病危的父亲，并在&ldquo;旺贺弘&rdquo;佛寺中级佛学院担任教职员。</h4>\n<h4>1986年4月,回到中国.在西双版纳傣族自治州勐海县勐遮镇曼吕村佛寺担任住持，并于该寺弘扬佛法。</h4>\n<h4>1990年3月，当选勐海县第八届政协委员、常委、西双版纳傣族自治州佛教协会第四届副会长。</h4>\n<h4>1992年,当选西双版纳傣族自治州第七届政协常委。</h4>\n<h4>1993年, 受邀到西双版纳总佛寺担任住持。</h4>\n<h4>1997年5月，当选西双版纳傣族自治州第八届政协副主席。</h4>\n<h4>1998年12月，当选云南佛教协会副会长、中国佛教协会第？届常务理事。</h4>\n<h4>同年12月，当选西双版纳傣族自治州第五届佛教协会会长。</h4>\n<h4>2002年6月，当选西双版纳傣族自治州第九届政协副主席。</h4>\n<h4>2002年8月，任云南佛学院西双版纳分院院长。</h4>\n<h4>2002年10月，当选为中国佛教协会<u>第七届</u>理事会副会长。</h4>\n<h4>2004年1月,经国家政府批准,晋升为祜巴勐。全名祜巴龙庄勐长老。</h4>\n<h4>2008年5月11日（佛历2551年5月11日），因倡导支持宗教和非宗教教育机构的教育计划，在佛教界的善举及卓越的学术成就，被泰国朱拉隆功佛教大学授于教育管理学科荣誉博士学位。</h4>\n<h4>2010年2月，当选为中国佛教协会<u>第八届</u>理事会副会长。</h4>\n<h4>2015年4月21日，当选为中国佛教协会<u>第九届</u>理事会副会长。中国南传上座部佛教工作委员会主任</h4>\n<h4>2015年12月9日，当选为云南省佛教协会第七届理事会副会长。</h4>\n<h4>2016年2月19日，经国家政府批准,晋升为帕松列龙庄勐。</h4>\n<h4>2020年, 当选为中国佛教协会<u>第十届</u>理事会副会长。</h4>\n<h4>长老幽默随和，佛法渊博,精通多种语言文字,诸如傣语、缅甸语、泰语、巴利语等。</h4>\n<h4>为南传上座部佛教培养了一批优秀的弘法人才。</h4>\n<h4>长老一直以来致力于祖国的统一和民族的团结，积极联系国内外三大语系佛教各教派，并曾到访泰国、缅甸、老挝、斯里兰卡、日本、韩国、蒙古等国家，受到海内外佛教界人士的敬仰。</h4>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (2, 0, '', 0, 0, 0, '院长简介', '院长简介-1', NULL, '111', 1, '2023-02-02 15:20:26.904496', '2023-02-02 15:20:26.904496', 2, '2023-02-02 15:20:25.000000', NULL, NULL, 1, '<p>111</p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (7, 0, '', 0, 0, 0, '公告1', '公告1', NULL, '公告内容1', 1, '2023-03-16 11:55:31.736315', '2023-03-16 20:02:59.142389', 2, '2023-03-16 11:55:31.000000', NULL, 'unset', 1, '<h2><strong>公告内容1</strong></h2>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (8, 0, '', 0, 0, 0, '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', '聚焦两会-开局谱新篇-奋斗新征程-云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', NULL, '\n\n聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议\n3月4日下午3时，中国人民政治协商会议第十四届全国委员会第一次会议在北京人民大会堂开幕。云南佛学院西双版纳分院组织师生观看直播\n', 1, '2023-03-16 21:59:07.630900', '2023-03-16 22:55:42.081731', 2, '2023-03-16 21:59:07.000000', NULL, NULL, 1, '<section>\n<section>\n<h3>聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议</h3>\n<h5>3月4日下午3时，中国人民政治协商会议第十四届全国委员会第一次会议在北京人民大会堂开幕。<span>云南佛学院西双版纳分</span><span>院</span><span>组织</span><span>师生</span><span>观看直播</span></h5>\n<p style=\"text-align: center;\"><span><img src=\"/media/uploads/640.jpg\" alt=\"\" width=\"789\"></span></p>\n<p style=\"text-align: center;\"><span><img src=\"/media/uploads/640_(5).jpg\" alt=\"\" width=\"800\" height=\"492\"></span></p>\n<p><span></span></p>\n<p>&nbsp; &nbsp; &nbsp;汪洋代表中国人民政治协商会议第十三届全国委员会常务委员会，向大会报告过去五年工作，提出今后工作建议，（五）充分发挥作为最广泛的爱国统一战线组织作用，凝聚海内外中华儿女共同致力民族复兴的强大力量。适应新时代统一战线形势任务，坚持大团结大联合，落实中央统战工作会议精神，促进政党关系、<span>民族关系</span>、<span>宗教关系</span>、阶层关系、海内外同胞关系和谐。</p>\n<p><span>&nbsp; &nbsp; &nbsp;新的社会阶层人士等参加政协相关活动。</span><span>围绕铸牢中华民族共同体意识</span><span>、</span><span>坚持我国宗教中国化方向等深入视察调研</span><span>，</span><span>开展少数民族界和宗教界委员专题学习考察</span><span>、</span><span>界别主题协商</span><span>。</span><span>创新拓展对外交往平台</span><span>、</span><span>渠道和领域</span><span>，举办社会主义国家统一战线组织专题研讨会等，</span><span>支持中国宗教界和平委员会加强国际交流</span><span>。让我们更加紧密地团结在以习近平同志为核心的中共中央周围，以习近平新时代中国特色社会主义思想为指导，踔厉奋发、埋头苦干、勇毅前行，为全面建设社会主义现代化国家、全面推进中华民族伟大复兴而不懈奋斗！</span></p>\n<section><span>&nbsp; &nbsp; 3月5日上午9时，中华人民共和国第</span>十四届全国人民代表大会第一次会议在北京人民大会隆重开幕，为了贯彻本次会议的全面精神，云南佛学院西双版纳分院组织师生观看直播。</section>\n<p><img src=\"/media/uploads/640.jpg\" alt=\"\" width=\"899\" height=\"674\"></p>\n<p><img src=\"/media/uploads/640_(4).jpg\" alt=\"\" width=\"1080\" height=\"810\"></p>\n<p><img src=\"/media/uploads/640_(5).jpg\" alt=\"\" width=\"800\" height=\"492\"></p>\n<p><img src=\"/media/uploads/640_(6).jpg\" alt=\"\" width=\"1080\" height=\"810\"></p>\n<section>国务院总理李克强在政府工作报告中表示：<span>我们要以铸牢中华民族共同体意识为主线，坚持和完善民族区域自治制度，促进各民族共同团结奋斗、共同繁荣发展。坚持党的宗教工作基本方针，坚持我国宗教中国化方向，积极引导宗教与社会主义社会相适应</span>。</section>\n<section>云南佛学院西双版纳分院组织师生聚焦两会，深入观听领会两会精神，明确各自所载负之使命，踔厉前行，守正创新，为国家的强大、社会稳定久安、人民幸福安康作出应尽的贡献。</section>\n</section>\n</section>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (9, 0, '', 0, 0, 0, '趣味课堂 | 云南佛学院西双版纳分院到西双版纳南药园开展傣医药学前趣味课堂', '趣味课堂-云南佛学院西双版纳分院到西双版纳南药园开展傣医药学前趣味课堂', NULL, '2月18日清晨，佛学院16班学生在班主任都比温光的带领下前往西双版纳南药园参观学习，南药园的工作人员对学生们乐观好学的学习态度颇为敬佩，在工作人员的陪同下参观并了解到南药园的创建历史和传承民族医药所作的各项成果。\n', 1, '2023-03-16 22:17:33.463371', '2023-03-16 22:17:33.463371', 2, '2023-03-16 22:17:33.459546', NULL, NULL, 1, '<section>2月18日清晨，佛学院16班学生在班主任都比温光的带领下前往西双版纳南药园参观学习，南药园的工作人员对学生们乐观好学的学习态度颇为敬佩，在工作人员的陪同下参观并了解到南药园的创建历史和传承民族医药所作的各项成果。</section>\n<p><img class=\"rich_pages wxw-img\" src=\"https://mmbiz.qpic.cn/mmbiz_jpg/d0MKVzibbp5fNYGV39LEcH6j7qMPIvr1kRxLPAx6PYYk7lDHIASEh59AM1XFOfia9CpylgLZPh2GGs95tGR1iaib0g/640?wx_fmt=jpeg&amp;tp=wxpic&amp;wxfrom=5&amp;wx_lazy=1&amp;wx_co=1\" alt=\"图片\"></p>\n<p><img class=\"rich_pages wxw-img\" src=\"https://mmbiz.qpic.cn/mmbiz_jpg/d0MKVzibbp5fNYGV39LEcH6j7qMPIvr1kj5T1TlKyymTHiaMe4zzSlOYMSicTkwEKbsvKkV5UU8icpiaqzn6P5icNQFw/640?wx_fmt=jpeg&amp;tp=wxpic&amp;wxfrom=5&amp;wx_lazy=1&amp;wx_co=1\" alt=\"图片\"></p>\n<p><span>学</span><span>僧们在南药园工作人员的引领下通过近距离观看、辨识，工作人员细心讲解每一种药物的生长环境与药用价值，学生们议论纷纷，各抒己见，感触颇深。</span></p>\n<p></p>\n<p></p>\n<section>南药园的领导和工作人员对佛学院开展这样的课外知识学习非常赞同，希望常来学习和了解，傣族医药学是我国四大民族医药学的其中之一，每个人都有义务学习并传承好民族医药学，为民造福。</section>\n<p></p>\n<section>云南佛学院西双版纳分院不仅仅是培养佛教人才的摇篮，更是培养民族文化人才的基地和中心，借此契机，我院将会增设傣医药学课程，逐步完善我院孵化人才的创院宗旨。</section>\n<p></p>\n<p></p>\n<p><img width=\"auto\" class=\"rich_pages wxw-img\" src=\"https://mmbiz.qpic.cn/mmbiz_jpg/d0MKVzibbp5erQDhw9WibkfVRFLcl7ibkhpZfCLwz0jkiboM5ENYKzRqxSczb7E6Zx6atf8bqjbPpAPwVXUibX3wjibA/640?wx_fmt=jpeg&amp;wxfrom=5&amp;wx_lazy=1&amp;wx_co=1&amp;tp=wxpic\" alt=\"图片\"></p>\n<p>终&nbsp; &nbsp; &nbsp; &nbsp;审：康南扁&nbsp;</p>\n<p>责&nbsp; &nbsp; &nbsp; &nbsp;编：都&nbsp; &nbsp;迪 尊者</p>\n<p>图片来源：西双版纳南药园</p>\n<p><span><img class=\"rich_pages wxw-img\" src=\"https://mmbiz.qpic.cn/mmbiz_jpg/BiaFVXiauHqmZJibLticULYQfd1wo0iazAe5PVlnDDpbtv1gTK8hMphQEu4U3va4ibjShb6n4F8ZzcXW4yiardT3LdzLg/640?wx_fmt=jpeg&amp;wxfrom=5&amp;wx_lazy=1&amp;wx_co=1&amp;tp=wxpic\" alt=\"图片\"></span></p>\n<p></p>', 1, '', 1, 1);
INSERT INTO `blog_blogpost` VALUES (10, 0, '', 0, 0, 0, '西双版纳总佛寺解夏安居法会', '西双版纳总佛寺解夏安居法会', NULL, '西双版纳总佛寺解夏安居法会\n为进一步传承南传上座部佛教优良传统，弘扬佛法，引导广大信教群众正信正行，增进僧俗二众间的良性互动，促进民族团结、社会和谐、边疆稳定，西双版纳总佛寺将于2017年10月5日-6日举行&ldquo;南传佛教解夏安居法会&rdquo;。诚邀广大信众共沐法喜！', 1, '2023-03-19 09:57:44.615565', '2023-03-19 09:57:44.615565', 2, '2023-03-19 09:57:44.606565', NULL, NULL, 1, '<h1 class=\"rich_media_title \" id=\"activity-name\">西双版纳总佛寺解夏安居法会</h1>\n<p><span>为进一步传承南传上座部佛教优良传统，弘扬佛法，引导广大信教群众正信正行，增进僧俗二众间的良性互动，促进民族团结、社会和谐、边疆稳定，</span><strong>西双版纳总佛寺将于2017年10月5日-6日举行&ldquo;南传佛教解夏安居法会&rdquo;。</strong><span>诚邀广大信众共沐法喜！</span></p>', 1, '', 1, 1);

-- ----------------------------
-- Table structure for blog_blogpost_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost_categories`;
CREATE TABLE `blog_blogpost_categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blogpost_id` bigint NOT NULL,
  `blogcategory_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq`(`blogpost_id` ASC, `blogcategory_id` ASC) USING BTREE,
  INDEX `blog_blogpost_categories_blogcategory_id_f6695246_fk`(`blogcategory_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogpost_categories_blogcategory_id_f6695246_fk` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogpost_categories_blogpost_id_daeea608_fk` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogpost_categories
-- ----------------------------
INSERT INTO `blog_blogpost_categories` VALUES (1, 1, 1);
INSERT INTO `blog_blogpost_categories` VALUES (2, 2, 1);
INSERT INTO `blog_blogpost_categories` VALUES (3, 7, 3);
INSERT INTO `blog_blogpost_categories` VALUES (4, 7, 4);
INSERT INTO `blog_blogpost_categories` VALUES (5, 7, 5);
INSERT INTO `blog_blogpost_categories` VALUES (6, 8, 6);
INSERT INTO `blog_blogpost_categories` VALUES (7, 9, 6);
INSERT INTO `blog_blogpost_categories` VALUES (8, 10, 2);

-- ----------------------------
-- Table structure for blog_blogpost_related_posts
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost_related_posts`;
CREATE TABLE `blog_blogpost_related_posts`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_blogpost_id` bigint NOT NULL,
  `to_blogpost_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq`(`from_blogpost_id` ASC, `to_blogpost_id` ASC) USING BTREE,
  INDEX `blog_blogpost_related_posts_to_blogpost_id_35f7acdd_fk`(`to_blogpost_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogpost_related_posts_from_blogpost_id_27ea4c18_fk` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogpost_related_posts_to_blogpost_id_35f7acdd_fk` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogpost_related_posts
-- ----------------------------

-- ----------------------------
-- Table structure for conf_setting
-- ----------------------------
DROP TABLE IF EXISTS `conf_setting`;
CREATE TABLE `conf_setting`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conf_setting_site_id_b235f7ed_fk_django_site_id`(`site_id` ASC) USING BTREE,
  CONSTRAINT `conf_setting_site_id_b235f7ed_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conf_setting
-- ----------------------------
INSERT INTO `conf_setting` VALUES (1, 'ADMIN_MENU_COLLAPSED', 'False', 1);
INSERT INTO `conf_setting` VALUES (2, 'AKISMET_API_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (3, 'BITLY_ACCESS_TOKEN', '', 1);
INSERT INTO `conf_setting` VALUES (4, 'BLOG_POST_PER_PAGE', '5', 1);
INSERT INTO `conf_setting` VALUES (5, 'COMMENTS_ACCOUNT_REQUIRED', 'True', 1);
INSERT INTO `conf_setting` VALUES (6, 'COMMENTS_DEFAULT_APPROVED', 'True', 1);
INSERT INTO `conf_setting` VALUES (7, 'COMMENTS_DISQUS_API_PUBLIC_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (8, 'COMMENTS_DISQUS_API_SECRET_KEY', '', 1);
INSERT INTO `conf_setting` VALUES (9, 'COMMENTS_DISQUS_SHORTNAME', '', 1);
INSERT INTO `conf_setting` VALUES (10, 'COMMENTS_NOTIFICATION_EMAILS', '', 1);
INSERT INTO `conf_setting` VALUES (11, 'COMMENTS_NUM_LATEST', '5', 1);
INSERT INTO `conf_setting` VALUES (12, 'COMMENTS_REMOVED_VISIBLE', 'True', 1);
INSERT INTO `conf_setting` VALUES (13, 'COMMENTS_UNAPPROVED_VISIBLE', 'True', 1);
INSERT INTO `conf_setting` VALUES (14, 'GOOGLE_ANALYTICS_ID', '', 1);
INSERT INTO `conf_setting` VALUES (15, 'MAX_PAGING_LINKS', '10', 1);
INSERT INTO `conf_setting` VALUES (16, 'RATINGS_ACCOUNT_REQUIRED', 'False', 1);
INSERT INTO `conf_setting` VALUES (17, 'RICHTEXT_FILTER_LEVEL', '1', 1);
INSERT INTO `conf_setting` VALUES (18, 'SEARCH_PER_PAGE', '10', 1);
INSERT INTO `conf_setting` VALUES (19, 'SITE_TAGLINE', '一个开源的内容管理平台。', 1);
INSERT INTO `conf_setting` VALUES (20, 'SITE_TITLE', '佛学院网站', 1);
INSERT INTO `conf_setting` VALUES (21, 'TAG_CLOUD_SIZES', '4', 1);

-- ----------------------------
-- Table structure for core_sitepermission
-- ----------------------------
DROP TABLE IF EXISTS `core_sitepermission`;
CREATE TABLE `core_sitepermission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `core_sitepermission_user_id_0a3cbb11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_sitepermission
-- ----------------------------

-- ----------------------------
-- Table structure for core_sitepermission_sites
-- ----------------------------
DROP TABLE IF EXISTS `core_sitepermission_sites`;
CREATE TABLE `core_sitepermission_sites`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sitepermission_id` bigint NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq`(`sitepermission_id` ASC, `site_id` ASC) USING BTREE,
  INDEX `core_sitepermission_sites_site_id_38038b76_fk_django_site_id`(`site_id` ASC) USING BTREE,
  CONSTRAINT `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `core_sitepermission_sites_sitepermission_id_d33bc79e_fk` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_sitepermission_sites
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-11-18 15:12:38.942944', '1', '基于类的视图APIView, GenericAPIView和视图集(ViewSet)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-11-18 15:13:14.635154', '1', '学院简介', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Description\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (3, '2023-02-02 14:49:39.529835', '1', '关于学院', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Description\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (4, '2023-02-02 14:56:02.991900', '1', '关于学院', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (5, '2023-02-02 14:59:07.281820', '2', '师长简介', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (6, '2023-02-02 15:10:44.990460', '2', '教育教学', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (7, '2023-02-02 15:12:50.888784', '3', '教育教学 / 师资', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (8, '2023-02-02 15:13:53.182034', '4', '佛院动态', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (9, '2023-02-02 15:15:34.327079', '5', '教育教学 / 招生简章', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (10, '2023-02-02 15:17:29.537697', '6', '弘法利生', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (11, '2023-02-02 15:17:48.602656', '7', '其它', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (12, '2023-02-02 15:19:26.048095', '1', '师资', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (13, '2023-02-02 15:19:41.277812', '1', '院长简介', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (14, '2023-02-02 15:20:26.916497', '2', '院长简介', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (15, '2023-02-02 15:21:38.989609', '3', '1', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (16, '2023-02-02 23:31:47.878609', '4', '11', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (17, '2023-02-02 23:32:01.266335', '5', '111122', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (18, '2023-03-14 19:22:58.430969', '6', '11', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (19, '2023-03-16 11:54:33.670597', '2', '学院公告', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (20, '2023-03-16 11:55:29.153172', '3', 'gg', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (21, '2023-03-16 11:55:31.767325', '7', '公告1', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (22, '2023-03-16 18:41:09.267575', '4', 'tz', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (23, '2023-03-16 18:41:19.779859', '7', '公告1', 2, '[{\"changed\": {\"fields\": [\"Categories\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (24, '2023-03-16 18:42:29.275609', '5', 'lll', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (25, '2023-03-16 18:42:32.884185', '7', '公告1', 2, '[{\"changed\": {\"fields\": [\"Categories\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (26, '2023-03-16 21:57:26.727119', '6', '11', 3, '', 18, 1);
INSERT INTO `django_admin_log` VALUES (27, '2023-03-16 21:57:26.735119', '5', '111122', 3, '', 18, 1);
INSERT INTO `django_admin_log` VALUES (28, '2023-03-16 21:57:26.739118', '4', '11', 3, '', 18, 1);
INSERT INTO `django_admin_log` VALUES (29, '2023-03-16 21:57:26.743120', '3', '1', 3, '', 18, 1);
INSERT INTO `django_admin_log` VALUES (30, '2023-03-16 21:57:59.406187', '6', '学院动态', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (31, '2023-03-16 21:59:07.652900', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (32, '2023-03-16 22:17:33.479576', '9', '趣味课堂 | 云南佛学院西双版纳分院到西双版纳南药园开展傣医药学前趣味课堂', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (33, '2023-03-16 22:24:43.272282', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (34, '2023-03-16 22:30:50.643687', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (35, '2023-03-16 22:31:35.776531', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (36, '2023-03-16 22:40:32.733326', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (37, '2023-03-16 22:44:20.822058', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (38, '2023-03-16 22:50:28.045556', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (39, '2023-03-16 22:52:21.871601', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (40, '2023-03-16 22:55:42.097731', '8', '聚焦两会 开局谱新篇 奋斗新征程 | 云南佛学院西双版纳分院组织观看第十四届全国人大一次会议开幕会公报曁全国政协十四届一次会议', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Description\", \"Keywords\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (41, '2023-03-17 22:05:50.384621', '8', '校园采风', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Image\", \"object\": \"640  7 \"}}, {\"added\": {\"name\": \"Image\", \"object\": \"640  6 \"}}, {\"added\": {\"name\": \"Image\", \"object\": \"640  2 \"}}, {\"added\": {\"name\": \"Image\", \"object\": \"Mmexport1610622584732\"}}, {\"added\": {\"name\": \"Image\", \"object\": \"Img 20210209 184338\"}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (42, '2023-03-17 22:07:10.959703', '8', '校园采风', 2, '[{\"changed\": {\"fields\": [\"Keywords\"]}}, {\"changed\": {\"name\": \"Image\", \"object\": \"\\u5b66\\u4e60\\u62a5\\u544a\", \"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"Image\", \"object\": \"\\u5b66\\u4e60\\u62a5\\u544a\", \"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"Image\", \"object\": \"640  2\", \"fields\": [\"Description\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (43, '2023-03-17 22:18:55.698588', '7', '供养培福', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (44, '2023-03-17 22:32:57.693152', '9', '页面10', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (45, '2023-03-17 22:33:04.984053', '10', '页面10', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (46, '2023-03-17 22:42:27.995563', '4', '学院动态', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (47, '2023-03-17 22:43:20.537274', '1', '学院概况', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Description\", \"Keywords\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (48, '2023-03-17 22:44:28.759064', '9', '页面10', 3, '', 14, 1);
INSERT INTO `django_admin_log` VALUES (49, '2023-03-17 22:44:33.108065', '10', '页面10', 3, '', 14, 1);
INSERT INTO `django_admin_log` VALUES (50, '2023-03-19 09:57:44.668571', '10', '西双版纳总佛寺解夏安居法会', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (51, '2023-03-19 16:32:18.636359', '11', '弘法利生 / 对内教学', 1, '[{\"added\": {}}]', 16, 1);

-- ----------------------------
-- Table structure for django_comment_flags
-- ----------------------------
DROP TABLE IF EXISTS `django_comment_flags`;
CREATE TABLE `django_comment_flags`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_comment_flags_user_id_comment_id_flag_537f77a7_uniq`(`user_id` ASC, `comment_id` ASC, `flag` ASC) USING BTREE,
  INDEX `django_comment_flags_comment_id_d8054933_fk_django_comments_id`(`comment_id` ASC) USING BTREE,
  INDEX `django_comment_flags_flag_8b141fcb`(`flag` ASC) USING BTREE,
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_comment_flags
-- ----------------------------

-- ----------------------------
-- Table structure for django_comments
-- ----------------------------
DROP TABLE IF EXISTS `django_comments`;
CREATE TABLE `django_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `site_id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_comments_content_type_id_c4afe962_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_comments_site_id_9dcf666e_fk_django_site_id`(`site_id` ASC) USING BTREE,
  INDEX `django_comments_user_id_a0a440a1_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  INDEX `django_comments_submit_date_514ed2d9`(`submit_date` ASC) USING BTREE,
  INDEX `django_comments_is_removed_52a03ae3`(`is_removed` ASC) USING BTREE,
  INDEX `django_comments_object_pk_7fc98e83`(`object_pk` ASC) USING BTREE,
  CONSTRAINT `django_comments_content_type_id_c4afe962_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_comments
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (31, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (17, 'blog', 'blogcategory');
INSERT INTO `django_content_type` VALUES (18, 'blog', 'blogpost');
INSERT INTO `django_content_type` VALUES (8, 'conf', 'setting');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'core', 'sitepermission');
INSERT INTO `django_content_type` VALUES (32, 'django_comments', 'comment');
INSERT INTO `django_content_type` VALUES (33, 'django_comments', 'commentflag');
INSERT INTO `django_content_type` VALUES (19, 'forms', 'field');
INSERT INTO `django_content_type` VALUES (20, 'forms', 'fieldentry');
INSERT INTO `django_content_type` VALUES (21, 'forms', 'form');
INSERT INTO `django_content_type` VALUES (22, 'forms', 'formentry');
INSERT INTO `django_content_type` VALUES (23, 'galleries', 'gallery');
INSERT INTO `django_content_type` VALUES (24, 'galleries', 'galleryimage');
INSERT INTO `django_content_type` VALUES (10, 'generic', 'assignedkeyword');
INSERT INTO `django_content_type` VALUES (11, 'generic', 'keyword');
INSERT INTO `django_content_type` VALUES (12, 'generic', 'rating');
INSERT INTO `django_content_type` VALUES (13, 'generic', 'threadedcomment');
INSERT INTO `django_content_type` VALUES (30, 'mysite1', 'news');
INSERT INTO `django_content_type` VALUES (15, 'pages', 'link');
INSERT INTO `django_content_type` VALUES (14, 'pages', 'page');
INSERT INTO `django_content_type` VALUES (16, 'pages', 'richtextpage');
INSERT INTO `django_content_type` VALUES (5, 'redirects', 'redirect');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'sites', 'site');
INSERT INTO `django_content_type` VALUES (34, 'stuManage', 'books');
INSERT INTO `django_content_type` VALUES (25, 'stuManage', 'student_baseinfo');
INSERT INTO `django_content_type` VALUES (29, 'stuManage', 'student_family');
INSERT INTO `django_content_type` VALUES (26, 'stuManage', 'student_info');
INSERT INTO `django_content_type` VALUES (27, 'stuManage', 'student_religioninfo');
INSERT INTO `django_content_type` VALUES (28, 'stuManage', 'student_schoolifo');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'stuManage', '0001_initial', '2022-11-09 09:15:02.244672');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2022-11-09 09:16:06.036713');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2022-11-09 09:16:06.753156');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0001_initial', '2022-11-09 09:16:07.033266');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0002_logentry_remove_auto_add', '2022-11-09 09:16:07.043261');
INSERT INTO `django_migrations` VALUES (6, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-09 09:16:07.053273');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2022-11-09 09:16:07.198358');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2022-11-09 09:16:07.277386');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2022-11-09 09:16:07.364412');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2022-11-09 09:16:07.375416');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2022-11-09 09:16:07.439457');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2022-11-09 09:16:07.443451');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-09 09:16:07.454464');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2022-11-09 09:16:07.525485');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-09 09:16:07.603502');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2022-11-09 09:16:07.682525');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2022-11-09 09:16:07.696531');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-09 09:16:07.792561');
INSERT INTO `django_migrations` VALUES (19, 'sites', '0001_initial', '2022-11-09 09:16:07.855584');
INSERT INTO `django_migrations` VALUES (20, 'blog', '0001_initial', '2022-11-09 09:16:08.599195');
INSERT INTO `django_migrations` VALUES (21, 'blog', '0002_auto_20150527_1555', '2022-11-09 09:16:08.646245');
INSERT INTO `django_migrations` VALUES (22, 'blog', '0003_auto_20170411_0504', '2022-11-09 09:16:08.983455');
INSERT INTO `django_migrations` VALUES (23, 'blog', '0004_alter_blogcategory_id_alter_blogpost_id_and_more', '2022-11-09 09:16:10.226543');
INSERT INTO `django_migrations` VALUES (24, 'blog', '0005_auto_20220916_2225', '2022-11-09 09:16:11.174902');
INSERT INTO `django_migrations` VALUES (25, 'blog', '0006_alter_blogcategory_id_alter_blogpost_id_and_more', '2022-11-09 09:16:12.753695');
INSERT INTO `django_migrations` VALUES (26, 'conf', '0001_initial', '2022-11-09 09:16:12.893739');
INSERT INTO `django_migrations` VALUES (27, 'conf', '0002_alter_setting_id', '2022-11-09 09:16:13.002774');
INSERT INTO `django_migrations` VALUES (28, 'conf', '0003_auto_20220916_2225', '2022-11-09 09:16:13.218844');
INSERT INTO `django_migrations` VALUES (29, 'conf', '0004_alter_setting_id', '2022-11-09 09:16:13.374894');
INSERT INTO `django_migrations` VALUES (30, 'core', '0001_initial', '2022-11-09 09:16:13.758015');
INSERT INTO `django_migrations` VALUES (31, 'core', '0002_auto_20150414_2140', '2022-11-09 09:16:13.911065');
INSERT INTO `django_migrations` VALUES (32, 'core', '0003_alter_sitepermission_id_alter_sitepermission_user', '2022-11-09 09:16:14.471243');
INSERT INTO `django_migrations` VALUES (33, 'core', '0004_auto_20220916_2225', '2022-11-09 09:16:15.261497');
INSERT INTO `django_migrations` VALUES (34, 'core', '0005_alter_sitepermission_id', '2022-11-09 09:16:15.876386');
INSERT INTO `django_migrations` VALUES (35, 'django_comments', '0001_initial', '2022-11-09 09:16:16.728658');
INSERT INTO `django_migrations` VALUES (36, 'django_comments', '0002_update_user_email_field_length', '2022-11-09 09:16:16.853698');
INSERT INTO `django_migrations` VALUES (37, 'django_comments', '0003_add_submit_date_index', '2022-11-09 09:16:16.919718');
INSERT INTO `django_migrations` VALUES (38, 'django_comments', '0004_add_object_pk_is_removed_index', '2022-11-09 09:16:17.227817');
INSERT INTO `django_migrations` VALUES (39, 'pages', '0001_initial', '2022-11-09 09:16:17.888027');
INSERT INTO `django_migrations` VALUES (40, 'forms', '0001_initial', '2022-11-09 09:16:18.692283');
INSERT INTO `django_migrations` VALUES (41, 'forms', '0002_auto_20141227_0224', '2022-11-09 09:16:18.702291');
INSERT INTO `django_migrations` VALUES (42, 'forms', '0003_emailfield', '2022-11-09 09:16:18.786315');
INSERT INTO `django_migrations` VALUES (43, 'forms', '0004_auto_20150517_0510', '2022-11-09 09:16:18.800319');
INSERT INTO `django_migrations` VALUES (44, 'forms', '0005_auto_20151026_1600', '2022-11-09 09:16:18.814323');
INSERT INTO `django_migrations` VALUES (45, 'forms', '0006_auto_20170425_2225', '2022-11-09 09:16:18.989380');
INSERT INTO `django_migrations` VALUES (46, 'forms', '0007_alter_field_id_alter_fieldentry_id_and_more', '2022-11-09 09:16:19.538606');
INSERT INTO `django_migrations` VALUES (47, 'forms', '0008_auto_20220916_2225', '2022-11-09 09:16:19.961741');
INSERT INTO `django_migrations` VALUES (48, 'forms', '0009_alter_field_id_alter_fieldentry_id_and_more', '2022-11-09 09:16:20.531012');
INSERT INTO `django_migrations` VALUES (49, 'galleries', '0001_initial', '2022-11-09 09:16:21.234236');
INSERT INTO `django_migrations` VALUES (50, 'galleries', '0002_auto_20141227_0224', '2022-11-09 09:16:21.248241');
INSERT INTO `django_migrations` VALUES (51, 'galleries', '0003_alter_galleryimage_id', '2022-11-09 09:16:21.339271');
INSERT INTO `django_migrations` VALUES (52, 'galleries', '0004_auto_20220916_2225', '2022-11-09 09:16:21.418295');
INSERT INTO `django_migrations` VALUES (53, 'galleries', '0005_alter_galleryimage_id', '2022-11-09 09:16:21.547345');
INSERT INTO `django_migrations` VALUES (54, 'generic', '0001_initial', '2022-11-09 09:16:22.251571');
INSERT INTO `django_migrations` VALUES (55, 'generic', '0002_auto_20141227_0224', '2022-11-09 09:16:22.265575');
INSERT INTO `django_migrations` VALUES (56, 'generic', '0003_auto_20170411_0504', '2022-11-09 09:16:22.491648');
INSERT INTO `django_migrations` VALUES (57, 'generic', '0004_alter_assignedkeyword_id_alter_keyword_id_and_more', '2022-11-09 09:16:22.985806');
INSERT INTO `django_migrations` VALUES (58, 'generic', '0005_auto_20220916_2225', '2022-11-09 09:16:23.765247');
INSERT INTO `django_migrations` VALUES (59, 'generic', '0006_alter_assignedkeyword_id_alter_keyword_id_and_more', '2022-11-09 09:16:24.220395');
INSERT INTO `django_migrations` VALUES (60, 'mysite1', '0001_initial', '2022-11-09 09:16:24.278413');
INSERT INTO `django_migrations` VALUES (61, 'mysite1', '0002_alter_news_id', '2022-11-09 09:16:24.466473');
INSERT INTO `django_migrations` VALUES (62, 'pages', '0002_auto_20141227_0224', '2022-11-09 09:16:24.501483');
INSERT INTO `django_migrations` VALUES (63, 'pages', '0003_auto_20150527_1555', '2022-11-09 09:16:24.563504');
INSERT INTO `django_migrations` VALUES (64, 'pages', '0004_auto_20170411_0504', '2022-11-09 09:16:24.752563');
INSERT INTO `django_migrations` VALUES (65, 'pages', '0005_alter_page_id', '2022-11-09 09:16:26.999742');
INSERT INTO `django_migrations` VALUES (66, 'pages', '0006_auto_20220916_2225', '2022-11-09 09:16:28.639376');
INSERT INTO `django_migrations` VALUES (67, 'pages', '0007_alter_page_id', '2022-11-09 09:16:30.770290');
INSERT INTO `django_migrations` VALUES (68, 'redirects', '0001_initial', '2022-11-09 09:16:30.946368');
INSERT INTO `django_migrations` VALUES (69, 'redirects', '0002_alter_redirect_new_path_help_text', '2022-11-09 09:16:30.962371');
INSERT INTO `django_migrations` VALUES (70, 'sessions', '0001_initial', '2022-11-09 09:16:31.030393');
INSERT INTO `django_migrations` VALUES (71, 'sites', '0002_alter_domain_unique', '2022-11-09 09:16:31.100434');
INSERT INTO `django_migrations` VALUES (72, 'stuManage', '0002_student_info_fml_name4_student_info_fml_name5_and_more', '2022-11-09 09:19:36.489456');
INSERT INTO `django_migrations` VALUES (73, 'stuManage', '0003_alter_student_info_fml_name4_and_more', '2022-11-09 09:25:46.977706');
INSERT INTO `django_migrations` VALUES (74, 'stuManage', '0004_alter_student_info_fml_name2_and_more', '2022-11-09 09:37:59.852363');
INSERT INTO `django_migrations` VALUES (75, 'stuManage', '0005_alter_student_info_fml_name2_and_more', '2022-11-09 09:39:47.587624');
INSERT INTO `django_migrations` VALUES (76, 'stuManage', '0006_alter_student_info_fml_name2_and_more', '2022-11-09 09:41:15.029861');
INSERT INTO `django_migrations` VALUES (77, 'stuManage', '0007_alter_student_info_fml_name5_and_more', '2022-11-09 09:49:50.045121');
INSERT INTO `django_migrations` VALUES (78, 'stuManage', '0008_alter_student_info_fml_name1_and_more', '2022-11-09 09:52:06.903394');
INSERT INTO `django_migrations` VALUES (79, 'stuManage', '0009_alter_student_info_fml_tel2', '2022-11-09 09:53:16.177059');
INSERT INTO `django_migrations` VALUES (80, 'stuManage', '0010_alter_student_info_fml_name4_and_more', '2022-11-09 09:54:27.222976');
INSERT INTO `django_migrations` VALUES (81, 'stuManage', '0011_alter_student_info_fml_tel2', '2022-11-09 10:36:20.746858');
INSERT INTO `django_migrations` VALUES (82, 'stuManage', '0012_alter_student_info_fml_tel2', '2022-11-09 10:37:47.554982');
INSERT INTO `django_migrations` VALUES (83, 'stuManage', '0013_alter_student_info_fml_tel2', '2022-11-09 10:40:43.054927');
INSERT INTO `django_migrations` VALUES (84, 'stuManage', '0014_alter_student_info_fml_tel1_and_more', '2022-11-09 10:42:44.447347');
INSERT INTO `django_migrations` VALUES (85, 'stuManage', '0015_student_info_familyac_m_photo_and_more', '2022-11-10 08:40:58.875257');
INSERT INTO `django_migrations` VALUES (86, 'stuManage', '0016_alter_student_info_familyac_m_photo_and_more', '2022-11-10 08:42:34.541132');
INSERT INTO `django_migrations` VALUES (87, 'stuManage', '0017_alter_student_info_familyac_m_photo_and_more', '2022-11-10 09:16:25.334732');
INSERT INTO `django_migrations` VALUES (88, 'stuManage', '0018_student_info_sfid', '2022-11-11 15:12:32.007278');
INSERT INTO `django_migrations` VALUES (89, 'stuManage', '0019_alter_student_info_sfid', '2022-11-12 13:53:44.853027');
INSERT INTO `django_migrations` VALUES (90, 'stuManage', '0020_alter_student_info_sfid', '2022-11-12 13:55:00.986705');
INSERT INTO `django_migrations` VALUES (91, 'stuManage', '0021_alter_student_info_relationship1_and_more', '2022-11-19 11:56:34.270315');
INSERT INTO `django_migrations` VALUES (92, 'stuManage', '0022_alter_student_info_relationship1_and_more', '2022-11-19 12:03:41.602514');
INSERT INTO `django_migrations` VALUES (93, 'stuManage', '0023_alter_student_info_adress_alter_student_info_age_and_more', '2023-02-06 19:19:27.164666');
INSERT INTO `django_migrations` VALUES (94, 'stuManage', '0024_student_info_fml_id1_student_info_fml_id2_and_more', '2023-02-06 19:23:51.838513');
INSERT INTO `django_migrations` VALUES (95, 'stuManage', '0025_rename_fml_id1_student_info_fml_id_b1_and_more', '2023-02-06 19:39:12.160002');
INSERT INTO `django_migrations` VALUES (96, 'stuManage', '0026_books', '2023-02-09 09:57:19.023405');
INSERT INTO `django_migrations` VALUES (97, 'stuManage', '0027_alter_student_info_name', '2023-02-09 13:07:55.656072');

-- ----------------------------
-- Table structure for django_redirect
-- ----------------------------
DROP TABLE IF EXISTS `django_redirect`;
CREATE TABLE `django_redirect`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `old_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `new_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_redirect_site_id_old_path_ac5dd16b_uniq`(`site_id` ASC, `old_path` ASC) USING BTREE,
  INDEX `django_redirect_old_path_c6cc94d3`(`old_path` ASC) USING BTREE,
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_redirect
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5me23h78d3jod020puujluic8xreyvu5', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbBv:lBqiIQGEktUjDVAeaI_Zm9cJ_qtT7cw7DQ62Hh1dn_U', '2023-02-16 15:07:59.780637');
INSERT INTO `django_session` VALUES ('6bkpleioqdl9ehdeiqzi5i3hp9m3ymmg', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbP2:fOQx8CGZMBDyBbVyoj3hCelMGSPqJkGuazauE-LK_x4', '2023-02-16 15:21:32.768155');
INSERT INTO `django_session` VALUES ('720og1akvudnuznl86q872ptb4lxi3fe', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1ow30z:p5dgwwyONycOQno7AA9tm-3UsO3KgmGqw-Xw_LqWDQI', '2022-12-02 15:10:49.208894');
INSERT INTO `django_session` VALUES ('8bglc4mpz0bgvfjnolpjok6t3f8oca1c', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbGS:Gkxh6KxpZnQvSrIIBlc9t8-3DzTTLnVGmFIL2yRgKhY', '2023-02-16 15:12:40.143286');
INSERT INTO `django_session` VALUES ('az9sv1navk9lhfqlbm9cwz7k8komz9f0', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbEF:qHMafJTNd86K-HZ0LaGgHF13axAd5_WeNcnsjaSDrHk', '2023-02-16 15:10:23.392040');
INSERT INTO `django_session` VALUES ('b6yl43axi7qny2g07e8m435nmnked4sc', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pc2jk:TPBagnP1TTep50ntgGW6GuGuCRquc4Y1Nc8zSsHn6e4', '2023-03-28 19:22:36.428803');
INSERT INTO `django_session` VALUES ('dw5q6ddwyogukm90q1yw3qjdgmwq7rk1', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbCd:qdtTt2r0_WDJO8SUoN9_mwRFZ-w_ggWY4XSKR9soUBo', '2023-02-16 15:08:43.160175');
INSERT INTO `django_session` VALUES ('eqol9qt3v12gd0i5vz1zkqhed78yg7a6', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbMu:43KzeRpMWGUw2uO7X-jYA2__M8g4GG5HX_MqUVNy9ho', '2023-02-16 15:19:20.709311');
INSERT INTO `django_session` VALUES ('puqmumrwgim2v2ueulng7mtx3je3v9rx', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNbJ2:lbq1qteoCOXx-Zdckevl2CLpq8e2zt9S89QIMtR7Njw', '2023-02-16 15:15:20.024398');
INSERT INTO `django_session` VALUES ('z1nnf1xdra4s4uthu4cmxghj243jaysp', '.eJxVjMsKwjAQAP8lZwnZvJr16N1vCNtkQ4oYobGXiv9ulQp6nRnmISIt9xqXznOcsjgKEIdfNlK6cHuLK68rtamxTLeZ5SfZbZfnrzzt_d-kUq_bQXuvtQlpBI1oSGUImQBzKjg6mwNtqChLaEoZTPFE4EBZHNAqh4HF8wUQnDl8:1pNalC:Vw3Fw4qYxHFvPpYBSs_VNhJUhlO0NuxAWg5dEoFJGiE', '2023-02-16 14:40:22.695107');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_site_domain_a2e37b91_uniq`(`domain` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');

-- ----------------------------
-- Table structure for forms_field
-- ----------------------------
DROP TABLE IF EXISTS `forms_field`;
CREATE TABLE `forms_field`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `_order` int NULL DEFAULT NULL,
  `label` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_type` int NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `help_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `form_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `forms_field_form_id_9ca5dc7e_fk`(`form_id` ASC) USING BTREE,
  CONSTRAINT `forms_field_form_id_9ca5dc7e_fk` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forms_field
-- ----------------------------

-- ----------------------------
-- Table structure for forms_fieldentry
-- ----------------------------
DROP TABLE IF EXISTS `forms_fieldentry`;
CREATE TABLE `forms_fieldentry`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `field_id` int NOT NULL,
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entry_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `forms_fieldentry_entry_id_c4fdc570_fk`(`entry_id` ASC) USING BTREE,
  CONSTRAINT `forms_fieldentry_entry_id_c4fdc570_fk` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forms_fieldentry
-- ----------------------------

-- ----------------------------
-- Table structure for forms_form
-- ----------------------------
DROP TABLE IF EXISTS `forms_form`;
CREATE TABLE `forms_form`  (
  `page_ptr_id` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `button_text` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_copies` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`page_ptr_id`) USING BTREE,
  CONSTRAINT `forms_form_page_ptr_id_d3bcbf3a_fk` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forms_form
-- ----------------------------

-- ----------------------------
-- Table structure for forms_formentry
-- ----------------------------
DROP TABLE IF EXISTS `forms_formentry`;
CREATE TABLE `forms_formentry`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_time` datetime(6) NOT NULL,
  `form_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `forms_formentry_form_id_d0f23912_fk`(`form_id` ASC) USING BTREE,
  CONSTRAINT `forms_formentry_form_id_d0f23912_fk` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forms_formentry
-- ----------------------------

-- ----------------------------
-- Table structure for galleries_gallery
-- ----------------------------
DROP TABLE IF EXISTS `galleries_gallery`;
CREATE TABLE `galleries_gallery`  (
  `page_ptr_id` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zip_import` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`page_ptr_id`) USING BTREE,
  CONSTRAINT `galleries_gallery_page_ptr_id_8562ba87_fk` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galleries_gallery
-- ----------------------------
INSERT INTO `galleries_gallery` VALUES (8, '<p>校园采风</p>', '');

-- ----------------------------
-- Table structure for galleries_galleryimage
-- ----------------------------
DROP TABLE IF EXISTS `galleries_galleryimage`;
CREATE TABLE `galleries_galleryimage`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `_order` int NULL DEFAULT NULL,
  `file` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gallery_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `galleries_galleryimage_gallery_id_af12d3f5_fk`(`gallery_id` ASC) USING BTREE,
  CONSTRAINT `galleries_galleryimage_gallery_id_af12d3f5_fk` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galleries_galleryimage
-- ----------------------------
INSERT INTO `galleries_galleryimage` VALUES (1, 0, 'uploads/640_(7).jpg', '学习报告', 8);
INSERT INTO `galleries_galleryimage` VALUES (2, 1, 'uploads/640_(6).jpg', '学习报告', 8);
INSERT INTO `galleries_galleryimage` VALUES (3, 2, 'uploads/640_(2).jpg', '640  2', 8);
INSERT INTO `galleries_galleryimage` VALUES (4, 3, 'uploads/mmexport1610622584732.jpg', 'Mmexport1610622584732', 8);
INSERT INTO `galleries_galleryimage` VALUES (5, 4, 'uploads/img_20210209_184338.jpg', 'Img 20210209 184338', 8);

-- ----------------------------
-- Table structure for generic_assignedkeyword
-- ----------------------------
DROP TABLE IF EXISTS `generic_assignedkeyword`;
CREATE TABLE `generic_assignedkeyword`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `_order` int NULL DEFAULT NULL,
  `object_pk` int NOT NULL,
  `content_type_id` int NOT NULL,
  `keyword_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `generic_assignedkeyword_keyword_id_44c17f9d_fk`(`keyword_id` ASC) USING BTREE,
  CONSTRAINT `generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `generic_assignedkeyword_keyword_id_44c17f9d_fk` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generic_assignedkeyword
-- ----------------------------

-- ----------------------------
-- Table structure for generic_keyword
-- ----------------------------
DROP TABLE IF EXISTS `generic_keyword`;
CREATE TABLE `generic_keyword`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `generic_keyword_site_id_c5be0acc_fk_django_site_id`(`site_id` ASC) USING BTREE,
  CONSTRAINT `generic_keyword_site_id_c5be0acc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generic_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for generic_rating
-- ----------------------------
DROP TABLE IF EXISTS `generic_rating`;
CREATE TABLE `generic_rating`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `rating_date` datetime(6) NULL DEFAULT NULL,
  `object_pk` int NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `generic_rating_content_type_id_eaf475fa_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `generic_rating_user_id_60020469_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `generic_rating_content_type_id_eaf475fa_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `generic_rating_user_id_60020469_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generic_rating
-- ----------------------------

-- ----------------------------
-- Table structure for generic_threadedcomment
-- ----------------------------
DROP TABLE IF EXISTS `generic_threadedcomment`;
CREATE TABLE `generic_threadedcomment`  (
  `comment_ptr_id` int NOT NULL,
  `rating_count` int NOT NULL,
  `rating_sum` int NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`) USING BTREE,
  INDEX `generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t`(`replied_to_id` ASC) USING BTREE,
  CONSTRAINT `generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generic_threadedcomment
-- ----------------------------

-- ----------------------------
-- Table structure for mysite1_news
-- ----------------------------
DROP TABLE IF EXISTS `mysite1_news`;
CREATE TABLE `mysite1_news`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mysite1_news
-- ----------------------------

-- ----------------------------
-- Table structure for pages_link
-- ----------------------------
DROP TABLE IF EXISTS `pages_link`;
CREATE TABLE `pages_link`  (
  `page_ptr_id` bigint NOT NULL,
  PRIMARY KEY (`page_ptr_id`) USING BTREE,
  CONSTRAINT `pages_link_page_ptr_id_37d469f7_fk` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages_link
-- ----------------------------

-- ----------------------------
-- Table structure for pages_page
-- ----------------------------
DROP TABLE IF EXISTS `pages_page`;
CREATE TABLE `pages_page`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keywords_string` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_meta_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `updated` datetime(6) NULL DEFAULT NULL,
  `status` int NOT NULL,
  `publish_date` datetime(6) NULL DEFAULT NULL,
  `expiry_date` datetime(6) NULL DEFAULT NULL,
  `short_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int NULL DEFAULT NULL,
  `in_menus` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `titles` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pages_page_site_id_47a43e5b_fk_django_site_id`(`site_id` ASC) USING BTREE,
  INDEX `pages_page_publish_date_eb7c8d46`(`publish_date` ASC) USING BTREE,
  INDEX `pages_page_parent_id_133fa4d3_fk`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `pages_page_parent_id_133fa4d3_fk` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pages_page_site_id_47a43e5b_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages_page
-- ----------------------------
INSERT INTO `pages_page` VALUES (1, '', '学院概况', '基于类的视图apiview-genericapiview和视图集viewset', NULL, '\n\n云南佛学院西双版纳分院简介\n', 1, '2022-11-18 15:12:38.915929', '2023-03-17 22:43:20.529274', 2, '2022-11-18 15:12:38.000000', NULL, NULL, 1, 0, '1,2,3', '学院概况', 'richtextpage', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (2, '', '教育教学', '师长简介', NULL, '云南佛学院西双版纳分院简介\n', 1, '2023-02-02 14:59:07.269819', '2023-02-02 15:10:44.978464', 2, '2023-02-02 14:59:07.000000', NULL, NULL, 1, 2, '1,2,3', '教育教学', 'richtextpage', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (3, '', '师资', '师长简介/师资', NULL, '', 1, '2023-02-02 15:12:50.876782', '2023-02-02 15:12:50.876782', 2, '2023-02-02 15:12:50.868780', NULL, NULL, 1, 0, '1,2,3', '教育教学 / 师资', 'richtextpage', 0, 2, 1);
INSERT INTO `pages_page` VALUES (4, '', '学院动态', 'blog', '佛院动态', '佛院动态:', 1, '2023-02-02 15:13:53.172026', '2023-03-17 22:42:27.983560', 2, '2023-02-02 15:13:53.000000', NULL, NULL, 1, 1, '1,2,3', '学院动态', 'richtextpage', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (5, '', '招生简章', '师长简介/招生简章', NULL, '\n云南佛学院西双版纳分院2020年招生简章\n云南佛学院西双版纳分院&nbsp;2020-07-31\n\n\n', 1, '2023-02-02 15:15:34.316268', '2023-02-02 15:15:34.316268', 2, '2023-02-02 15:15:34.313270', NULL, NULL, 1, 1, '1,2,3', '教育教学 / 招生简章', 'richtextpage', 0, 2, 1);
INSERT INTO `pages_page` VALUES (6, '', '弘法利生', '弘法利生', NULL, '111', 1, '2023-02-02 15:17:29.528697', '2023-02-02 15:17:29.528697', 2, '2023-02-02 15:17:29.525701', NULL, NULL, 1, 3, '1,2,3', '弘法利生', 'richtextpage', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (7, '', '供养培福', '其它', NULL, '111', 1, '2023-02-02 15:17:48.591655', '2023-03-17 22:18:55.687590', 2, '2023-02-02 15:17:48.000000', NULL, NULL, 1, 4, '1,2,3', '供养培福', 'richtextpage', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (8, '', '校园采风', '校园采风', NULL, '校园采风', 1, '2023-03-17 22:05:50.320621', '2023-03-17 22:07:10.941704', 2, '2023-03-17 22:05:50.000000', NULL, NULL, 1, 5, '1,2,3', '校园采风', 'gallery', 0, NULL, 1);
INSERT INTO `pages_page` VALUES (11, '', '对内教学', '弘法利生/对内教学', NULL, '111', 1, '2023-03-19 16:32:18.620357', '2023-03-19 16:32:18.620357', 2, '2023-03-19 16:32:18.617355', NULL, NULL, 1, 0, '1,2,3', '弘法利生 / 对内教学', 'richtextpage', 0, 6, 1);

-- ----------------------------
-- Table structure for pages_richtextpage
-- ----------------------------
DROP TABLE IF EXISTS `pages_richtextpage`;
CREATE TABLE `pages_richtextpage`  (
  `page_ptr_id` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`page_ptr_id`) USING BTREE,
  CONSTRAINT `pages_richtextpage_page_ptr_id_8ca99b83_fk` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages_richtextpage
-- ----------------------------
INSERT INTO `pages_richtextpage` VALUES (1, '<section>\n<div class=\"section-content\">\n<h3 style=\"text-align: center;\"><strong>云南佛学院西双版纳分院简介</strong></h3>\n<p><strong><img src=\"/media/uploads/img_20210209_184338.jpg\" width=\"800\" height=\"600\" style=\"display: block; margin-left: auto; margin-right: auto;\"></strong></p>\n<p>1995年5月13日，经国家宗教局批准，云南佛学院西双版纳分院正式挂牌成立，帕松列龙庄勐大长老任佛学院首任院长，同年九月开始正式招生，创办了中国第一所具有里程碑意义的&ldquo;巴利语系佛学院&rdquo;。云南佛学院西双版纳分院高举爱国爱教的进步旗帜，秉持忍耐、勤奋、真诚、知恩的办学理念，倡导学僧精进学修、个性发展，力争为佛教界培养更多现代化优秀僧才。&nbsp;</p>\n<p>自2005年起，佛学院与西双版纳州职业技术学院和西双版纳州民族中学签署联合办学协议，达成了三校联合办学的共识。&nbsp;</p>\n<p>2008年3月，佛学院迁入新址南联山勐泐大佛寺旁，新址占地面积60亩，建筑面积8188.58平方米。建筑功能为：1幢办公楼、 1幢教学楼、1幢图书馆、3幢学僧宿舍、2幢教师宿舍、1幢接待楼和1幢食堂，可同时容纳200名学僧，图书馆藏书6000余册，傣文教材8000余册。学院行政设有院长1名，常务副院长1名，副院长2名；下设办公室、教务处、院务处三个平等职能处（室），各处（室）设主任1名。&nbsp;</p>\n<p>截止2018年9月，佛学院招收了35个教学班级，共计招收1293名学僧，已毕业学僧1076名。现有教职员工20名（其中僧侣17名），目前学院共设有4个教学班，其中1个为初中班，其余3个为中专班，在校学僧人数130人。&nbsp;</p>\n<p>我院僧源主要来自西双版纳州、普洱市和德宏州等地区的佛教寺院，学僧入学无须交纳任何费用，教学及食宿等费用由佛学院承担。学僧入学后需要学习语文、数学、英语、政治、写作、民俗学、教育学、计算机基础等国民教育课程及佛教传记学、南传戒律学、佛法基础、佛教写作、傣文基础、巴利基础、早晚课诵、经腔唱诵等佛学教育课程。</p>\n<p>我院学僧毕业后可获得由合作院校颁发的毕业证书和佛学院颁发的结业证书。&nbsp;</p>\n<p>为进一步促进僧才的培养，我院还将优秀毕业学僧选送到云南省佛学院、广东佛学院、苏州寒山学院、江西佛学院、上海佛学院及泰国、斯里兰卡、新加坡、缅甸等国内外佛学院继续深造。据统计，我院被选送继续深造的学僧共有200余人，其中选送到国内汉传佛学院学习的有160余人，选送到海外留学的有50余人。&nbsp;</p>\n<p>二十年来，云南佛学院西双版纳分院为云南省南传佛教界培养出了一大批爱国爱教的中青年弘法骨干和寺院管理人员，推动了云南省南传佛教教育事业的不断发展。&nbsp;</p>\n<p>未来，云南佛学院西双版纳分院将会继续在实践中探索，贯彻落实党的宗教政策，结合&ldquo;一带一路&rdquo;战略中的有利条件，力争开创更富有区域性、时代性和民族性特色的教育教学模式，继续培养在政治上靠得住、宗教上有造诣、品德上能服众、关键时起作用的新型僧才，为中国巴利语系高级佛学院的开办打牢基础，为南传佛教事业及传统民族文化的传承与发展做出应有的贡献。</p>\n<p></p>\n</div>\n</section>');
INSERT INTO `pages_richtextpage` VALUES (2, '<h3><strong>云南佛学院西双版纳分院简介</strong></h3>\n<p><strong><img height=\"600\" src=\"http://127.0.0.1:9999/media/uploads/.thumbnails/img_20210209_184338.jpg/img_20210209_184338-800x600.jpg\" width=\"800\"></strong></p>\n<p>1995年5月13日，经国家宗教局批准，云南佛学院西双版纳分院正式挂牌成立，帕松列龙庄勐大长老任佛学院首任院长，同年九月开始正式招生，创办了中国第一所具有里程碑意义的&ldquo;巴利语系佛学院&rdquo;。云南佛学院西双版纳分院高举爱国爱教的进步旗帜，秉持忍耐、勤奋、真诚、知恩的办学理念，倡导学僧精进学修、个性发展，力争为佛教界培养更多现代化优秀僧才。&nbsp;</p>\n<p>自2005年起，佛学院与西双版纳州职业技术学院和西双版纳州民族中学签署联合办学协议，达成了三校联合办学的共识。&nbsp;</p>\n<p>2008年3月，佛学院迁入新址南联山勐泐大佛寺旁，新址占地面积60亩，建筑面积8188.58平方米。建筑功能为：1幢办公楼、 1幢教学楼、1幢图书馆、3幢学僧宿舍、2幢教师宿舍、1幢接待楼和1幢食堂，可同时容纳200名学僧，图书馆藏书6000余册，傣文教材8000余册。学院行政设有院长1名，常务副院长1名，副院长2名；下设办公室、教务处、院务处三个平等职能处（室），各处（室）设主任1名。&nbsp;</p>\n<p>截止2018年9月，佛学院招收了35个教学班级，共计招收1293名学僧，已毕业学僧1076名。现有教职员工20名（其中僧侣17名），目前学院共设有4个教学班，其中1个为初中班，其余3个为中专班，在校学僧人数130人。&nbsp;</p>\n<p>我院僧源主要来自西双版纳州、普洱市和德宏州等地区的佛教寺院，学僧入学无须交纳任何费用，教学及食宿等费用由佛学院承担。学僧入学后需要学习语文、数学、英语、政治、写作、民俗学、教育学、计算机基础等国民教育课程及佛教传记学、南传戒律学、佛法基础、佛教写作、傣文基础、巴利基础、早晚课诵、经腔唱诵等佛学教育课程。</p>\n<p>我院学僧毕业后可获得由合作院校颁发的毕业证书和佛学院颁发的结业证书。&nbsp;</p>\n<p>为进一步促进僧才的培养，我院还将优秀毕业学僧选送到云南省佛学院、广东佛学院、苏州寒山学院、江西佛学院、上海佛学院及泰国、斯里兰卡、新加坡、缅甸等国内外佛学院继续深造。据统计，我院被选送继续深造的学僧共有200余人，其中选送到国内汉传佛学院学习的有160余人，选送到海外留学的有50余人。&nbsp;</p>\n<p>二十年来，云南佛学院西双版纳分院为云南省南传佛教界培养出了一大批爱国爱教的中青年弘法骨干和寺院管理人员，推动了云南省南传佛教教育事业的不断发展。&nbsp;</p>\n<p>未来，云南佛学院西双版纳分院将会继续在实践中探索，贯彻落实党的宗教政策，结合&ldquo;一带一路&rdquo;战略中的有利条件，力争开创更富有区域性、时代性和民族性特色的教育教学模式，继续培养在政治上靠得住、宗教上有造诣、品德上能服众、关键时起作用的新型僧才，为中国巴利语系高级佛学院的开办打牢基础，为南传佛教事业及传统民族文化的传承与发展做出应有的贡献。</p>');
INSERT INTO `pages_richtextpage` VALUES (3, '<p><img src=\"/media/uploads/mmexport1610622584732.jpg\" width=\"750\" height=\"1125\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>\n<h2 style=\"text-align: center;\">院长简介</h2>\n<h4>帕松列龙庄勐</h4>\n<h4>云南佛学院西双版纳分院 院长</h4>\n<h4>帕松列龙庄勐 ,1960年6月1日出生，傣族，俗名：艾仔龙庄，勐海县人。</h4>\n<h4>现任全国政协常委，&ldquo;中宗和&rdquo;副主席，曾任云南省政协常委，西双版纳州政协副主席；</h4>\n<h4>中国佛教协会副会长，云南省佛教协会副会长，西双版纳州佛教协会会长。</h4>\n<h4>曾任中国佛教协会南传上座部佛教工作委员会主任。</h4>\n<h4>曾任云南佛学院副院长，西双版纳总佛寺住持，<u>云南佛学院西双版纳分院院长</u>。</h4>\n<h4>&nbsp;</h4>\n<h4>1973年,缅甸勐养龙&ldquo;旺坝岗&rdquo;佛寺剃度出家为沙玛内帕仔龙庄。</h4>\n<h4>1973年-1976年,就读于缅甸景栋&ldquo;旺贺弘&rdquo;佛寺中级佛学院。</h4>\n<h4>1977年-1979年,研读于缅甸仰光&ldquo;旺朵拐凿&rdquo;佛寺和&ldquo;嘎喊&rdquo;高级佛学院。</h4>\n<h4>1980年6月,于缅甸景栋&ldquo;旺贺弘&rdquo;佛寺受比库戒。称名都龙庄。巴利法名宛纳西利(Vannasiri)同年,回勐养龙佛学院担任教师。</h4>\n<h4>1981年-1983年，到泰国清迈府&ldquo;旺勐满&rdquo;佛寺参学。</h4>\n<h4>1983年-1984年，到缅甸大其力&ldquo;旺功吞&rdquo;佛寺担任教职员。</h4>\n<h4>1985年初，回缅甸景栋照料病危的父亲，并在&ldquo;旺贺弘&rdquo;佛寺中级佛学院担任教职员。</h4>\n<h4>1986年4月,回到中国.在西双版纳傣族自治州勐海县勐遮镇曼吕村佛寺担任住持，并于该寺弘扬佛法。</h4>\n<h4>1990年3月，当选勐海县第八届政协委员、常委、西双版纳傣族自治州佛教协会第四届副会长。</h4>\n<h4>1992年,当选西双版纳傣族自治州第七届政协常委。</h4>\n<h4>1993年, 受邀到西双版纳总佛寺担任住持。</h4>\n<h4>1997年5月，当选西双版纳傣族自治州第八届政协副主席。</h4>\n<h4>1998年12月，当选云南佛教协会副会长、中国佛教协会第？届常务理事。</h4>\n<h4>同年12月，当选西双版纳傣族自治州第五届佛教协会会长。</h4>\n<h4>2002年6月，当选西双版纳傣族自治州第九届政协副主席。</h4>\n<h4>2002年8月，任云南佛学院西双版纳分院院长。</h4>\n<h4>2002年10月，当选为中国佛教协会<u>第七届</u>理事会副会长。</h4>\n<h4>2004年1月,经国家政府批准,晋升为祜巴勐。全名祜巴龙庄勐长老。</h4>\n<h4>2008年5月11日（佛历2551年5月11日），因倡导支持宗教和非宗教教育机构的教育计划，在佛教界的善举及卓越的学术成就，被泰国朱拉隆功佛教大学授于教育管理学科荣誉博士学位。</h4>\n<h4>2010年2月，当选为中国佛教协会<u>第八届</u>理事会副会长。</h4>\n<h4>2015年4月21日，当选为中国佛教协会<u>第九届</u>理事会副会长。中国南传上座部佛教工作委员会主任</h4>\n<h4>2015年12月9日，当选为云南省佛教协会第七届理事会副会长。</h4>\n<h4>2016年2月19日，经国家政府批准,晋升为帕松列龙庄勐。</h4>\n<h4>2020年, 当选为中国佛教协会<u>第十届</u>理事会副会长。</h4>\n<h4>长老幽默随和，佛法渊博,精通多种语言文字,诸如傣语、缅甸语、泰语、巴利语等。</h4>\n<h4>为南传上座部佛教培养了一批优秀的弘法人才。</h4>\n<h4>长老一直以来致力于祖国的统一和民族的团结，积极联系国内外三大语系佛教各教派，并曾到访泰国、缅甸、老挝、斯里兰卡、日本、韩国、蒙古等国家，受到海内外佛教界人士的敬仰。</h4>\n<p></p>');
INSERT INTO `pages_richtextpage` VALUES (4, '<p>佛院动态:</p>');
INSERT INTO `pages_richtextpage` VALUES (5, '<div class=\"zx_mbx\">\n<h1 style=\"text-align: center;\">云南佛学院西双版纳分院2020年招生简章</h1>\n<h5 style=\"text-align: center;\">云南佛学院西双版纳分院<span>&nbsp;</span><span>2020-07-31</span></h5>\n</div>\n<div class=\"zw_conxw\">\n<p style=\"text-align: center;\"><img src=\"https://img.pusa123.com/cms/ContentMap/2020-06-17/6372800320784542835099468.jpg\"><br><br></p>\n<p><strong>一、学院简介</strong></p>\n<p>云南佛学院西双版纳分院在云南省民族宗教事务局及西双版纳傣族自治州民族宗教事务局的领导下，经国家宗教局批准，于1995年5月正式挂牌成立，是我国南传上座部佛教重点佛学院校之一，以学修并重为宗旨的巴利语系佛学院。现招收爱国爱教，遵纪守法，信仰纯正，有志研习佛法的南传年轻僧侣。学院除了招收州内学僧外，周边信仰南传上座部佛教的景谷、思茅、德宏、临沧、保山等地的学僧也可报名。</p>\n<p></p>\n<p>为全面贯彻落实党的宗教政策，继续培养新的南传佛教僧才，确保佛学院2020年秋季招生工作顺利开展，保证佛学院僧源质量，相关招生计划如下：</p>\n<p></p>\n<p>云南佛学院西双版纳分院拟定2020年计划开设两个2020级&ldquo;傣汉双语&rdquo;中专教学班。&ldquo;傣汉双语&rdquo;中专教学班的招生面向云南省南传佛教界招收符合条件的学僧。</p>\n<p></p>\n<p><strong>二、招生名额</strong></p>\n<p>2020年拟招&ldquo;傣汉双语&rdquo;中专班80名初中毕业僧；&nbsp;</p>\n<p></p>\n<p><strong>三、教学学制</strong></p>\n<p>中专学制三年，入学后学籍挂靠于西双版纳职业技术学院，顺利完成学业且通过毕业考核者可获得中专毕业证书。</p>\n<p></p>\n<p><strong>四、报考条件</strong></p>\n<p>1.爱国爱教，遵纪守法，品行端正，历史清白。</p>\n<p>2.具有坚定的佛教信仰，严持戒仪，自愿报考。</p>\n<p>3.身体健康，无传染病、癫痫病、精神病，无不良嗜好。</p>\n<p>4.报考中专需要具有初中毕业证和成绩单。</p>\n<p></p>\n<p><strong>五、费用说明</strong></p>\n<p>学僧在校就读期间的学费、住宿费、伙食费全免，重大节庆活动会发放相应的生活补助，为保证学僧的教学质量，学僧在毕业前不得中途退学，我院将会向学僧收取1000元押金，并在学僧毕业时退还。&nbsp;</p>\n<p></p>\n<p><strong>六、毕业考核</strong></p>\n<p>学僧就读中专阶段，按要求修学完全部文化课程，掌握傣文拼写，基础佛学常识，熟练诵读一、二级经典课诵。</p>\n<p></p>\n<p><strong>七、报名须知</strong></p>\n<p>即日起可以预报名，正式报名时间为7月1日&mdash;7月31日，报名时请各位学僧带上户口簿（原件）、身份证（原件）、毕业证书（原件）、成绩单（原件）、体检报告单（原件），于2020年8月1日前，到云南佛学院西双版纳分院招生办公室填表报名。</p>\n<p></p>\n<p><strong>八、其他事项</strong></p>\n<p>1.详细地址：云南省西双版纳傣族自治州景洪市曼弄枫旅游度假区云南佛学院西双版纳分院。</p>\n<p>招生办电话：</p>\n<p>0691-8998552</p>\n<p>18288009270（都温香真）</p>\n<p>15887629050（都罕养）</p>\n<p>18988184829（玉光叫）</p>\n<p>咨询时间：</p>\n<p>每周一至周五&nbsp;</p>\n<p>上午 9:00-11:30</p>\n<p>下午 15:00-17:30</p>\n</div>');
INSERT INTO `pages_richtextpage` VALUES (6, '<p>111</p>');
INSERT INTO `pages_richtextpage` VALUES (7, '<p>111</p>');
INSERT INTO `pages_richtextpage` VALUES (11, '<p>111</p>');

-- ----------------------------
-- Table structure for sql_python
-- ----------------------------
DROP TABLE IF EXISTS `sql_python`;
CREATE TABLE `sql_python`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sql_python
-- ----------------------------

-- ----------------------------
-- Table structure for stumanage_books
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_books`;
CREATE TABLE `stumanage_books`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_name` varchar(900) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_books
-- ----------------------------
INSERT INTO `stumanage_books` VALUES (1, 'book1');
INSERT INTO `stumanage_books` VALUES (2, 'book2');

-- ----------------------------
-- Table structure for stumanage_student_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_student_baseinfo`;
CREATE TABLE `stumanage_student_baseinfo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` datetime(6) NOT NULL,
  `age` int NOT NULL,
  `tel` int NOT NULL,
  `adress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `born_place` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_student_baseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for stumanage_student_family
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_student_family`;
CREATE TABLE `stumanage_student_family`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `relationship` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` int NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stuManage_student_fa_student_id_a25e87a0_fk_stuManage`(`student_id` ASC) USING BTREE,
  CONSTRAINT `stuManage_student_fa_student_id_a25e87a0_fk_stuManage` FOREIGN KEY (`student_id`) REFERENCES `stumanage_student_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_student_family
-- ----------------------------

-- ----------------------------
-- Table structure for stumanage_student_info
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_student_info`;
CREATE TABLE `stumanage_student_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` datetime(6) NOT NULL,
  `age` int NOT NULL,
  `tel` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dhamma_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `monk_date` datetime(6) NOT NULL,
  `monk_temple` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sila_teacher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` int NOT NULL,
  `base_id` int NOT NULL,
  `religion_id` int NOT NULL,
  `study_level` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_lenth` int NOT NULL,
  `enrol_date` datetime(6) NOT NULL,
  `middle_exam` tinyint(1) NOT NULL,
  `graduate_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationship1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_name1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_tel1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationship2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_name2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_tel2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationship3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_name3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_tel3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_name4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_name5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_tel4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_tel5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_info5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minzhu5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationship4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationship5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FamilyAc_m_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FamilyAc_p_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID_b_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID_f_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clothes_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiasha_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_b1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_b2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_b3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_b5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_f1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hukou` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fml_id_f2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_f3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_f4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_f5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fml_id_n4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_student_info
-- ----------------------------
INSERT INTO `stumanage_student_info` VALUES (1, '艾叫', '傣', '1985-05-04 16:00:00.000000', 18, '125', '景洪', '都比发', '沙马内拉', 1, '2021-05-04 16:00:00.000000', '曼弄', '马哈国', 1, 1, 1, '1', '全日制', 3, '2022-05-04 16:00:00.000000', 1, '景洪', '父亲', '岩丙国', '傣', '农民', '', '母亲', '玉香', '傣', '农民', '', '哥哥', '岩有', '傣', '农民', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '漫画蚁人三元素_为设计而生_3png.com.png', '', '', '211002198507222016', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `stumanage_student_info` VALUES (2, '王宗仁', '汉', '1985-05-04 16:00:00.000000', 18, '125', '景洪', '都比', '沙马内拉', 1, '2021-05-04 16:00:00.000000', '曼弄', '马哈国', 1, 1, 1, '1', '全日制', 3, '2021-05-04 16:00:00.000000', 1, '景洪', '父亲', '岩丙国', '傣', '农民', '', '母亲', '玉香', '傣', '农民', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `stumanage_student_info` VALUES (3, '艾叫3', '傣', '1985-05-04 16:00:00.000000', 18, '125', '景洪', '都比', '沙马内拉', 1, '2021-05-04 16:00:00.000000', '曼弄', '马哈国', 1, 1, 1, '1', '全日制', 3, '2021-05-04 16:00:00.000000', 1, '景洪', '父亲', '岩丙国', '傣', '农民', '', '母亲', '玉香', '傣', '农民', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `stumanage_student_info` VALUES (4, '王加超', '汉', '1985-05-04 16:00:00.000000', 18, '125', '景洪', '都比', '沙马内拉', 1, '2021-05-04 16:00:00.000000', '曼弄', '马哈国', 1, 1, 1, '1', '全日制', 3, '2021-05-04 16:00:00.000000', 1, '景洪', '父亲', '岩丙国', '傣', '农民', '', '母亲', '玉香', '傣', '农民', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `stumanage_student_info` VALUES (5, '小李', '傣', '1985-05-04 16:00:00.000000', 18, '125', '景洪', '都比', '沙马内拉', 1, '2021-05-04 16:00:00.000000', '曼弄', '马哈国', 1, 1, 1, '1', '全日制', 3, '2021-05-04 16:00:00.000000', 1, '景洪', '父亲', '岩丙国', '傣', '农民', '', '母亲', '玉香', '傣', '农民', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for stumanage_student_religioninfo
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_student_religioninfo`;
CREATE TABLE `stumanage_student_religioninfo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dhamma_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `monk_date` datetime(6) NOT NULL,
  `monk_temple` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sila_teacher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_student_religioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for stumanage_student_schoolifo
-- ----------------------------
DROP TABLE IF EXISTS `stumanage_student_schoolifo`;
CREATE TABLE `stumanage_student_schoolifo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grade` int NOT NULL,
  `base_id` int NOT NULL,
  `religion_id` int NOT NULL,
  `study_level` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_lenth` int NOT NULL,
  `enrol_date` datetime(6) NOT NULL,
  `middle_exam` tinyint(1) NOT NULL,
  `graduate_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stumanage_student_schoolifo
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
