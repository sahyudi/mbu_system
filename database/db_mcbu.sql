/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : db_mcbu

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-12-28 05:39:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO groups VALUES ('1', 'Administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO groups VALUES ('2', 'User', '0000-00-00 00:00:00', '2017-05-24 09:40:23');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `is_have_child` int(1) NOT NULL,
  `title` varchar(45) NOT NULL,
  `link` varchar(150) NOT NULL,
  `icon` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO menus VALUES ('1', '0', '3', 'Settings', '', 'fa fa-cog');
INSERT INTO menus VALUES ('2', '1', '0', 'Users', 'user', 'i i-dot');
INSERT INTO menus VALUES ('3', '1', '0', 'Groups', 'group', 'i i-dot');
INSERT INTO menus VALUES ('4', '1', '0', 'Privileges', 'privilege', 'i i-dot');
INSERT INTO menus VALUES ('5', '0', '0', 'Project', 'project', 'fa fa-tasks');
INSERT INTO menus VALUES ('10', '0', '0', 'Vendor', 'vendor', 'fa fa-parachute-box');
INSERT INTO menus VALUES ('12', '0', '2', 'Material', '', 'fa fa-clipboard-list');
INSERT INTO menus VALUES ('13', '12', '0', 'Stock', 'material', 'i i-idot');
INSERT INTO menus VALUES ('14', '12', '0', 'Pengadaan', 'pengadaan', 'i i-idot');
INSERT INTO menus VALUES ('15', '0', '0', 'Mesin', 'mesin', 'fa fa-cogs');
INSERT INTO menus VALUES ('16', '0', '0', 'Laboratorium', 'laboratorium', 'fa fa-house-damage');
INSERT INTO menus VALUES ('17', '0', '0', 'Pelanggan', 'pelanggan', 'fa fa-users');
INSERT INTO menus VALUES ('18', '0', '0', 'Employee', 'employee', 'fa fa-users-cog');
INSERT INTO menus VALUES ('59', '0', '0', 'Products', 'product', 'fa fa-database');
INSERT INTO menus VALUES ('60', '0', '0', 'Transactions', 'transaction', 'fa fa-dollar');
INSERT INTO menus VALUES ('83', '0', '2', 'Menu Styles', '', 'fa fa-random');
INSERT INTO menus VALUES ('84', '83', '0', 'Fixed Menu', 'template/fixed_menu', 'i i-dot');
INSERT INTO menus VALUES ('85', '83', '0', 'Compact Menu', 'template/compact_menu', 'i i-dot');
INSERT INTO menus VALUES ('86', '0', '6', 'Forms', '', 'fa fa-window-restore');
INSERT INTO menus VALUES ('87', '86', '0', 'Form Elements', 'template/form_element', 'i i-dot');
INSERT INTO menus VALUES ('88', '86', '0', 'Form Validation', 'template/form_validation', 'i i-dot');
INSERT INTO menus VALUES ('89', '86', '0', 'Form Buttons', 'template/form_button', 'i i-dot');
INSERT INTO menus VALUES ('90', '86', '0', 'Form Wizards', 'template/form_wizard', 'i i-dot');
INSERT INTO menus VALUES ('91', '86', '0', 'File Upload', 'template/file_upload', 'i i-dot');
INSERT INTO menus VALUES ('92', '86', '0', 'Wysiwyg Editor', 'template/wysiwyg_editor', 'i i-dot');
INSERT INTO menus VALUES ('93', '0', '2', 'Tables', '', 'fa fa-calendar');
INSERT INTO menus VALUES ('94', '93', '0', 'Basic Table', 'template/basic_table', 'i i-dot');
INSERT INTO menus VALUES ('95', '93', '0', 'Datatable', 'template/datatable', 'i i-dot');
INSERT INTO menus VALUES ('96', '0', '0', 'Charts', 'template/chart', 'fa fa-signal');
INSERT INTO menus VALUES ('97', '0', '10', 'Pages', '', 'fa fa-paper-plane');
INSERT INTO menus VALUES ('98', '97', '0', 'Landing Page', 'template/landing_page', 'i i-dot');
INSERT INTO menus VALUES ('99', '97', '0', 'Invoice', 'template/invoice', 'i i-dot');
INSERT INTO menus VALUES ('100', '97', '0', 'Login', 'template/login_form', 'i i-dot');
INSERT INTO menus VALUES ('101', '97', '0', 'Register', 'template/register_form', 'i i-dot');
INSERT INTO menus VALUES ('102', '97', '0', 'Lock Screen', 'template/lock_screen', 'i i-dot');
INSERT INTO menus VALUES ('103', '97', '0', 'Media', 'template/media', 'i i-dot');
INSERT INTO menus VALUES ('104', '97', '0', 'Chat', 'template/chat', 'i i-dot');
INSERT INTO menus VALUES ('105', '97', '0', 'Error 404', 'template/error_404', 'i i-dot');
INSERT INTO menus VALUES ('106', '97', '0', 'Error 500', 'template/error_500', 'i i-dot');
INSERT INTO menus VALUES ('107', '97', '0', 'Blank Layout', 'template/blank_layout', 'i i-dot');
INSERT INTO menus VALUES ('108', '0', '0', 'Calendar', 'template/calendar', 'fa fa-calendar-alt');
INSERT INTO menus VALUES ('109', '0', '11', 'Icons', '', 'fa fa-paper-plane');
INSERT INTO menus VALUES ('110', '109', '0', 'Font Awesome', 'template/font_awesome', 'i i-dot');
INSERT INTO menus VALUES ('111', '109', '0', 'Batch', 'template/batch', 'i i-dot');
INSERT INTO menus VALUES ('112', '109', '0', 'Dashicon', 'template/dashicon', 'i i-dot');
INSERT INTO menus VALUES ('113', '109', '0', 'Dripicon', 'template/dripicon', 'i i-dot');
INSERT INTO menus VALUES ('114', '109', '0', 'Eightyshades', 'template/eightyshades', 'i i-dot');
INSERT INTO menus VALUES ('115', '109', '0', 'Foundation', 'template/foundation', 'i i-dot');
INSERT INTO menus VALUES ('116', '109', '0', 'Metrize', 'template/metrize', 'i i-dot');
INSERT INTO menus VALUES ('117', '109', '0', 'Simple Line', 'template/simple_line', 'i i-dot');
INSERT INTO menus VALUES ('118', '109', '0', 'Themify', 'template/themify', 'i i-dot');
INSERT INTO menus VALUES ('119', '109', '0', 'Typeicon', 'template/typeicon', 'i i-dot');
INSERT INTO menus VALUES ('120', '109', '0', 'Weather Icon', 'template/weather_icon', 'i i-dot');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO migrations VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO migrations VALUES ('2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `privileges`
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `privileges_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `privileges_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3109 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of privileges
-- ----------------------------
INSERT INTO privileges VALUES ('3059', '2', '5');
INSERT INTO privileges VALUES ('3064', '2', '10');
INSERT INTO privileges VALUES ('3065', '2', '12');
INSERT INTO privileges VALUES ('3066', '2', '13');
INSERT INTO privileges VALUES ('3067', '2', '14');
INSERT INTO privileges VALUES ('3068', '2', '15');
INSERT INTO privileges VALUES ('3069', '2', '16');
INSERT INTO privileges VALUES ('3070', '2', '59');
INSERT INTO privileges VALUES ('3071', '2', '60');
INSERT INTO privileges VALUES ('3090', '1', '1');
INSERT INTO privileges VALUES ('3091', '1', '2');
INSERT INTO privileges VALUES ('3092', '1', '3');
INSERT INTO privileges VALUES ('3093', '1', '4');
INSERT INTO privileges VALUES ('3094', '1', '5');
INSERT INTO privileges VALUES ('3099', '1', '10');
INSERT INTO privileges VALUES ('3100', '1', '12');
INSERT INTO privileges VALUES ('3101', '1', '13');
INSERT INTO privileges VALUES ('3102', '1', '14');
INSERT INTO privileges VALUES ('3103', '1', '15');
INSERT INTO privileges VALUES ('3104', '1', '16');
INSERT INTO privileges VALUES ('3105', '1', '17');
INSERT INTO privileges VALUES ('3106', '1', '18');
INSERT INTO privileges VALUES ('3107', '1', '59');
INSERT INTO privileges VALUES ('3108', '1', '60');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `images` text NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO products VALUES ('1', 'Microsoft Lumia 950 XL Dual SIM', '220', '24', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:22:00', '2017-05-27 00:22:00');
INSERT INTO products VALUES ('2', 'Samsung B130', '221', '50', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:02', '2017-05-27 00:24:02');
INSERT INTO products VALUES ('3', 'Samsung M260 Factor', '232', '89', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:02', '2017-05-27 00:24:02');
INSERT INTO products VALUES ('5', 'Samsung Galaxy J2', '212', '35', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('6', 'Samsung Galaxy S Duos 2 S7582', '245', '82', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('7', 'Samsung Ativ Odyssey L930', '401', '40', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('8', 'Samsung Galaxy S4 Active LTE-A', '324', '14', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('9', 'Samsung Galaxy J7', '413', '99', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', 'Test 123', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('10', 'Samsung Galaxy Tab 2', '482', '43', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('11', 'Samsung Galaxy Star 2 Plus', '474', '26', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('12', 'Microsoft Lumia 535 Dual SIM', '396', '23', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('13', 'Microsoft Lumia 430 Dual SIM', '227', '44', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('14', 'Microsoft Lumia 940 XL', '366', '75', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('15', 'Microsoft Lumia 1030', '329', '57', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('16', 'Microsoft Lumia 535', '202', '85', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-05-27 00:24:03');
INSERT INTO products VALUES ('17', 'Microsoft Lumia 540 Dual SIM', '200000', '17', '[{\"file_name\":\"nokia-lumia-930-new.27-05-2017_00-15-27.jpg\",\"file_size\":7518,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/nokia-lumia-930-new.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\",\"file_size\":7217,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_web/public/product_images/microsoft-lumia-950-1.27-05-2017_00-15-27.jpg\"},{\"file_name\":\"microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\",\"file_size\":7649,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/pongo_laravel/public/product_images/microsoft-lumia-540-ds1.27-05-2017_00-15-27.jpg\"}]', '-', '2017-05-27 00:24:03', '2017-07-15 13:12:34');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(150) NOT NULL,
  `meta_value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO settings VALUES ('1', 'company_name', 'Native Theme Inc', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO settings VALUES ('2', 'company_address', '1 Infinite Loop 95014 Cuperino, CA United States', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO settings VALUES ('3', 'company_phone_number', '800-692-7753', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO settings VALUES ('4', 'company_email', 'mail@native-theme.com', '0000-00-00 00:00:00', '2017-06-04 06:33:43');

-- ----------------------------
-- Table structure for `tbl_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO tbl_employee VALUES ('3', 'Aldi', '829001', 'legenda');
INSERT INTO tbl_employee VALUES ('4', 'muhamad', '899022', 'Tiban masyeba');

-- ----------------------------
-- Table structure for `tbl_material`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_material`;
CREATE TABLE `tbl_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(62) COLLATE utf8_bin DEFAULT NULL,
  `nama` varchar(62) COLLATE utf8_bin DEFAULT NULL,
  `jumlah` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `satuan` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `harga_unit` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `ukuran` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_material
-- ----------------------------
INSERT INTO tbl_material VALUES ('2', 'K001', 'Stainless', '10000', 'PCS', '700000', '4 x 4 Meter');
INSERT INTO tbl_material VALUES ('4', 'K003', 'Besi Baja', '20000', 'KG', '1000000', '6 Meter');

-- ----------------------------
-- Table structure for `tbl_mesin`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mesin`;
CREATE TABLE `tbl_mesin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_mesin
-- ----------------------------
INSERT INTO tbl_mesin VALUES ('2', 'CNC 125', 'Test 1234');

-- ----------------------------
-- Table structure for `tbl_pasok`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pasok`;
CREATE TABLE `tbl_pasok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `no_pembelian` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `tgl_beli` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `material_id` (`material_id`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `tbl_pasok_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `tbl_material` (`id`),
  CONSTRAINT `tbl_pasok_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_pasok
-- ----------------------------
INSERT INTO tbl_pasok VALUES ('1', '2', '1', '1574623359', '2019-11-25', '10000');
INSERT INTO tbl_pasok VALUES ('3', '2', '1', '1576855771', '2019-12-20', '10000');
INSERT INTO tbl_pasok VALUES ('5', '4', '1', '1576855811', '2019-12-20', '20000');

-- ----------------------------
-- Table structure for `tbl_pelanggan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pelanggan`;
CREATE TABLE `tbl_pelanggan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `alamat` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pelanggan
-- ----------------------------
INSERT INTO tbl_pelanggan VALUES ('1', 'PT Sahyudi', '085374131481', 'Tiban dongs');

-- ----------------------------
-- Table structure for `tbl_produk`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `qty` varchar(128) NOT NULL,
  `no_proyek` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_produk
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_proyek`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proyek`;
CREATE TABLE `tbl_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyek_no` varchar(11) COLLATE utf8_bin NOT NULL,
  `nama` varchar(126) COLLATE utf8_bin DEFAULT NULL,
  `tgl_mulai` varchar(62) COLLATE utf8_bin DEFAULT NULL,
  `tgl_selesai` varchar(62) COLLATE utf8_bin DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tgl_input` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_proyek
-- ----------------------------
INSERT INTO tbl_proyek VALUES ('1', '1575127003', 'Testing aja dulu', '2019-11-30', '2019-12-01', 'Okey', '2019-11-30 22:19:58');

-- ----------------------------
-- Table structure for `tbl_proyek_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proyek_employee`;
CREATE TABLE `tbl_proyek_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `proyek_no` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `tbl_proyek_employee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_proyek_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_proyek_material`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proyek_material`;
CREATE TABLE `tbl_proyek_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyek_no` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `qty` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `harga_unit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tgl_input` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `material_id` (`material_id`),
  CONSTRAINT `tbl_proyek_material_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `tbl_material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_proyek_material
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_proyek_mesin`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proyek_mesin`;
CREATE TABLE `tbl_proyek_mesin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesin_id` int(11) NOT NULL,
  `proyek_no` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `mesin_id` (`mesin_id`),
  CONSTRAINT `tbl_proyek_mesin_ibfk_1` FOREIGN KEY (`mesin_id`) REFERENCES `tbl_mesin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_proyek_mesin
-- ----------------------------
INSERT INTO tbl_proyek_mesin VALUES ('1', '2', '1575127003');

-- ----------------------------
-- Table structure for `tbl_proyek_ruangan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proyek_ruangan`;
CREATE TABLE `tbl_proyek_ruangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyek_no` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `ruangan_id` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ruangan_id` (`ruangan_id`),
  CONSTRAINT `tbl_proyek_ruangan_ibfk_1` FOREIGN KEY (`ruangan_id`) REFERENCES `tbl_ruangan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_proyek_ruangan
-- ----------------------------
INSERT INTO tbl_proyek_ruangan VALUES ('1', '1575127003', '2', 'Testing aja dulu');

-- ----------------------------
-- Table structure for `tbl_ruangan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ruangan`;
CREATE TABLE `tbl_ruangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) DEFAULT NULL,
  `deskripsi` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_ruangan
-- ----------------------------
INSERT INTO tbl_ruangan VALUES ('2', 'lab 101', 'Test 123');
INSERT INTO tbl_ruangan VALUES ('3', 'Ruangan 403', '12345');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO tbl_user VALUES ('3', 'Poetra Geranting', 'sahyudi', 'profile.jpg', '$2y$10$T5ZqS.TkqHNpAQZqHMPbd.VAO82D/g6zAzO986NiijgnqWI3Pg4/6', '1', '1', '1564673261');
INSERT INTO tbl_user VALUES ('4', 'Admin yudi', 'user', 'default.jpg', '$2y$10$55tT6STVQcVSL1nzK3DSvOeCXCuW/r8NCQolG8UfzsPTRw3l3NzWm', '2', '1', '1570747573');
INSERT INTO tbl_user VALUES ('6', 'Imam Hidayat', 'imam', 'default.jpg', '$2y$10$2NI/Xy.nXE2jxkGuWS64MegZ7h9o8e8FGnfBt4f5TWsueAguF3FkS', '2', '1', '1574674365');

-- ----------------------------
-- Table structure for `tbl_user_access_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_access_menu`;
CREATE TABLE `tbl_user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_user_access_menu
-- ----------------------------
INSERT INTO tbl_user_access_menu VALUES ('1', '1', '1');
INSERT INTO tbl_user_access_menu VALUES ('8', '1', '2');
INSERT INTO tbl_user_access_menu VALUES ('9', '1', '3');
INSERT INTO tbl_user_access_menu VALUES ('14', '2', '2');
INSERT INTO tbl_user_access_menu VALUES ('15', '1', '5');
INSERT INTO tbl_user_access_menu VALUES ('16', '1', '6');
INSERT INTO tbl_user_access_menu VALUES ('18', '1', '7');
INSERT INTO tbl_user_access_menu VALUES ('19', '1', '8');
INSERT INTO tbl_user_access_menu VALUES ('20', '1', '9');
INSERT INTO tbl_user_access_menu VALUES ('21', '1', '11');
INSERT INTO tbl_user_access_menu VALUES ('22', '2', '7');
INSERT INTO tbl_user_access_menu VALUES ('23', '2', '11');
INSERT INTO tbl_user_access_menu VALUES ('24', '2', '9');
INSERT INTO tbl_user_access_menu VALUES ('25', '2', '8');
INSERT INTO tbl_user_access_menu VALUES ('26', '1', '12');

-- ----------------------------
-- Table structure for `tbl_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_menu`;
CREATE TABLE `tbl_user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `order_` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_user_menu
-- ----------------------------
INSERT INTO tbl_user_menu VALUES ('1', 'Admin', 'fa fa-fw fa-users-cog', '9');
INSERT INTO tbl_user_menu VALUES ('2', 'UserProfile', 'fas fa-fw fa-user', '2');
INSERT INTO tbl_user_menu VALUES ('3', 'Menu', 'fas fa-fw fa-list', '8');
INSERT INTO tbl_user_menu VALUES ('5', 'Users', 'fas fa-fw fa-users', '7');
INSERT INTO tbl_user_menu VALUES ('7', 'Dashboard', 'fas fa-fw fa-tachometer-alt', '3');
INSERT INTO tbl_user_menu VALUES ('8', 'Material', 'fas fa-fw fa-clipboard-list', '5');
INSERT INTO tbl_user_menu VALUES ('9', 'Vendor', 'fas fa-fw fa-parachute-box', '6');
INSERT INTO tbl_user_menu VALUES ('11', 'Project', 'fas fa-fw fa-tasks', '4');
INSERT INTO tbl_user_menu VALUES ('12', 'Produk', 'fas fa-fw fa-box-open', '4');

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO tbl_user_role VALUES ('1', 'Administrator');
INSERT INTO tbl_user_role VALUES ('2', 'Member');

-- ----------------------------
-- Table structure for `tbl_user_sub_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_sub_menu`;
CREATE TABLE `tbl_user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_user_sub_menu
-- ----------------------------
INSERT INTO tbl_user_sub_menu VALUES ('2', '2', 'My Profile', 'userProfile', 'fas fa-fw fa-user', '1');
INSERT INTO tbl_user_sub_menu VALUES ('3', '2', 'Edit Profile', 'userProfile/edit', 'fas fa-fw fa-user-edit', '1');
INSERT INTO tbl_user_sub_menu VALUES ('4', '3', 'Menu Managament', 'menu', 'fas fa-fw fa-folder', '1');
INSERT INTO tbl_user_sub_menu VALUES ('5', '3', 'Submenu Managament', 'menu/submenu', 'fas fa-fw fa-folder-open', '1');
INSERT INTO tbl_user_sub_menu VALUES ('7', '1', 'Role', 'admin/role', 'fas fa-fw fa-user-tie', '1');
INSERT INTO tbl_user_sub_menu VALUES ('8', '2', 'Change Password', 'userProfile/changepassword', 'fas fa-fw fa-key', '1');
INSERT INTO tbl_user_sub_menu VALUES ('9', '5', 'List', 'users', 'fas fa-fw fa-users', '1');
INSERT INTO tbl_user_sub_menu VALUES ('10', '6', 'List Buku', 'book', 'fas fa-fw fa-book', '1');
INSERT INTO tbl_user_sub_menu VALUES ('12', '7', 'Home', 'dashboard', 'fab fa-fw fa-wpforms', '1');
INSERT INTO tbl_user_sub_menu VALUES ('13', '5', 'Add User', 'users/addUser', 'fas fa-fw fa-group', '1');
INSERT INTO tbl_user_sub_menu VALUES ('14', '8', 'Stock', 'material', 'fas fa-fw fa-th-list', '1');
INSERT INTO tbl_user_sub_menu VALUES ('15', '8', 'Pasok Material', 'material/pasok', 'fas fa-fw fa-th-list', '1');
INSERT INTO tbl_user_sub_menu VALUES ('16', '9', 'List', 'vendor', 'fas fa-fw fa-circle', '1');
INSERT INTO tbl_user_sub_menu VALUES ('21', '11', 'List Project', 'project', '', '1');
INSERT INTO tbl_user_sub_menu VALUES ('22', '5', 'Employee', 'users/employee', '', '1');
INSERT INTO tbl_user_sub_menu VALUES ('23', '11', 'List Ruangan', 'project/ruangan', '', '1');
INSERT INTO tbl_user_sub_menu VALUES ('24', '11', 'List Mesin', 'project/mesin', '', '1');
INSERT INTO tbl_user_sub_menu VALUES ('25', '12', 'List', 'produk', '', '1');

-- ----------------------------
-- Table structure for `tbl_vendor`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_vendor`;
CREATE TABLE `tbl_vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `alamat` text COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_vendor
-- ----------------------------
INSERT INTO tbl_vendor VALUES ('1', 'VEN001', 'PT Angin Ribut', '085374131481', 0x546962616E204D617379656261205065726D6169205461686170203120426C6F6B204B32);

-- ----------------------------
-- Table structure for `transactions`
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(20) NOT NULL,
  `client_name` varchar(150) NOT NULL,
  `client_address` text NOT NULL,
  `client_phone` varchar(50) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO transactions VALUES ('1', 'TR27052017969', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '19842', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('2', 'TR2705201764', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '68916', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('3', 'TR27052017802', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '76730', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('4', 'TR27052017483', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '44612', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('5', 'TR27052017390', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '47982', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('6', 'TR27052017935', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '24009', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('7', 'TR27052017564', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '29378', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('8', 'TR27052017888', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '51905', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('9', 'TR27052017133', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '24549', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('10', 'TR27052017412', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '37306', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('11', 'TR27052017699', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '75418', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('12', 'TR27052017108', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '72122', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transactions VALUES ('13', 'TR27052017622', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '78264', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('14', 'TR27052017514', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '20216', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('15', 'TR27052017565', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '83556', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('16', 'TR27052017856', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '67095', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('17', 'TR27052017288', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '78546', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('18', 'TR27052017301', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '22938', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('19', 'TR2705201758', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '65936', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('20', 'TR27052017439', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '61971', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('21', 'TR27052017653', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '7981', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('22', 'TR27052017453', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '70566', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('23', 'TR27052017806', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '18772', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('24', 'TR27052017854', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '50720', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('25', 'TR27052017184', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '15134', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('26', 'TR27052017152', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '26041', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('27', 'TR27052017444', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '59162', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('28', 'TR2705201794', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '44473', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('29', 'TR2705201727', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '13720', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('30', 'TR27052017574', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '65849', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('31', 'TR27052017240', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '73738', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('32', 'TR27052017995', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '77566', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('33', 'TR27052017853', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '56332', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('34', 'TR27052017296', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '36412', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('35', 'TR27052017964', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '60700', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('36', 'TR27052017331', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '51715', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('37', 'TR27052017638', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '56294', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('38', 'TR27052017931', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '20526', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('39', 'TR27052017471', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '43673', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('40', 'TR27052017851', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '65520', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('41', 'TR27052017113', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '31110', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('42', 'TR27052017562', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '84255', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('43', 'TR27052017694', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '34333', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('44', 'TR27052017697', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '59192', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('45', 'TR27052017121', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '4119', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('46', 'TR27052017355', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '86857', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('47', 'TR27052017918', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '75824', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('48', 'TR27052017286', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '11664', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('49', 'TR27052017256', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '10827', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transactions VALUES ('50', 'TR27052017387', 'Apple Inc', '2nd Floor St John Street, Aberdeenshire 2541 United Kingdom', '800-692-7753', '21433', '2017-05-27 01:03:11', '2017-05-27 01:03:11');

-- ----------------------------
-- Table structure for `transaction_details`
-- ----------------------------
DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction_details
-- ----------------------------
INSERT INTO transaction_details VALUES ('1', '1', '4', '243', '28', '6804', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('2', '1', '12', '396', '3', '1188', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('3', '1', '11', '474', '25', '11850', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('4', '2', '3', '232', '84', '19488', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('5', '2', '4', '243', '26', '6318', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('6', '2', '2', '221', '31', '6851', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('7', '2', '12', '396', '3', '1188', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('8', '2', '1', '220', '8', '1760', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('9', '2', '9', '413', '32', '13216', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('10', '2', '16', '202', '27', '5454', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('11', '2', '7', '401', '15', '6015', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('12', '2', '13', '227', '38', '8626', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('13', '3', '9', '413', '2', '826', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('14', '3', '14', '366', '29', '10614', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('15', '3', '3', '232', '66', '15312', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('16', '3', '6', '245', '14', '3430', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('17', '3', '10', '482', '41', '19762', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('18', '3', '15', '329', '41', '13489', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('19', '3', '16', '202', '16', '3232', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('20', '3', '13', '227', '20', '4540', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('21', '3', '2', '221', '25', '5525', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('22', '4', '11', '474', '9', '4266', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('23', '4', '14', '366', '75', '27450', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('24', '4', '1', '220', '15', '3300', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('25', '4', '15', '329', '7', '2303', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('26', '4', '2', '221', '33', '7293', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('27', '5', '7', '401', '40', '16040', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('28', '5', '9', '413', '54', '22302', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('29', '5', '10', '482', '20', '9640', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('30', '6', '7', '401', '23', '9223', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('31', '6', '1', '220', '21', '4620', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('32', '6', '2', '221', '46', '10166', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('33', '7', '13', '227', '16', '3632', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('34', '7', '4', '243', '2', '486', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('35', '7', '3', '232', '17', '3944', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('36', '7', '2', '221', '38', '8398', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('37', '7', '5', '212', '33', '6996', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('38', '7', '15', '329', '18', '5922', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('39', '8', '9', '413', '94', '38822', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('40', '8', '6', '245', '4', '980', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('41', '8', '16', '202', '42', '8484', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('42', '8', '15', '329', '11', '3619', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('43', '9', '4', '243', '43', '10449', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('44', '9', '9', '413', '15', '6195', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('45', '9', '12', '396', '2', '792', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('46', '9', '15', '329', '1', '329', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('47', '9', '5', '212', '32', '6784', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('48', '10', '17', '231', '16', '3696', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('49', '10', '12', '396', '20', '7920', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('50', '10', '13', '227', '43', '9761', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('51', '10', '8', '324', '2', '648', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('52', '10', '9', '413', '37', '15281', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('53', '11', '15', '329', '19', '6251', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('54', '11', '1', '220', '18', '3960', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('55', '11', '9', '413', '89', '36757', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('56', '11', '3', '232', '67', '15544', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('57', '11', '11', '474', '17', '8058', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('58', '11', '16', '202', '24', '4848', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('59', '12', '5', '212', '33', '6996', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('60', '12', '11', '474', '11', '5214', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('61', '12', '7', '401', '24', '9624', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('62', '12', '6', '245', '2', '490', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('63', '12', '8', '324', '1', '324', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('64', '12', '17', '231', '16', '3696', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('65', '12', '2', '221', '24', '5304', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('66', '12', '9', '413', '98', '40474', '2017-05-27 01:03:10', '2017-05-27 01:03:10');
INSERT INTO transaction_details VALUES ('67', '13', '17', '231', '15', '3465', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('68', '13', '7', '401', '36', '14436', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('69', '13', '2', '221', '26', '5746', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('70', '13', '11', '474', '26', '12324', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('71', '13', '14', '366', '25', '9150', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('72', '13', '13', '227', '3', '681', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('73', '13', '5', '212', '14', '2968', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('74', '13', '9', '413', '62', '25606', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('75', '13', '8', '324', '12', '3888', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('76', '14', '16', '202', '8', '1616', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('77', '14', '10', '482', '20', '9640', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('78', '14', '2', '221', '35', '7735', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('79', '14', '6', '245', '5', '1225', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('80', '15', '16', '202', '42', '8484', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('81', '15', '14', '366', '34', '12444', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('82', '15', '3', '232', '70', '16240', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('83', '15', '4', '243', '27', '6561', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('84', '15', '9', '413', '30', '12390', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('85', '15', '13', '227', '41', '9307', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('86', '15', '6', '245', '74', '18130', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('87', '16', '6', '245', '32', '7840', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('88', '16', '11', '474', '17', '8058', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('89', '16', '12', '396', '6', '2376', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('90', '16', '14', '366', '56', '20496', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('91', '16', '16', '202', '9', '1818', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('92', '16', '8', '324', '11', '3564', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('93', '16', '13', '227', '41', '9307', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('94', '16', '10', '482', '8', '3856', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('95', '16', '1', '220', '8', '1760', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('96', '16', '7', '401', '20', '8020', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('97', '17', '4', '243', '46', '11178', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('98', '17', '9', '413', '52', '21476', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('99', '17', '12', '396', '2', '792', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('100', '17', '17', '231', '8', '1848', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('101', '17', '2', '221', '32', '7072', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('102', '17', '13', '227', '34', '7718', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('103', '17', '15', '329', '32', '10528', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('104', '17', '14', '366', '49', '17934', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('105', '18', '8', '324', '1', '324', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('106', '18', '3', '232', '87', '20184', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('107', '18', '4', '243', '10', '2430', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('108', '19', '12', '396', '4', '1584', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('109', '19', '6', '245', '70', '17150', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('110', '19', '16', '202', '69', '13938', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('111', '19', '7', '401', '24', '9624', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('112', '19', '15', '329', '50', '16450', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('113', '19', '10', '482', '13', '6266', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('114', '19', '17', '231', '4', '924', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('115', '20', '2', '221', '31', '6851', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('116', '20', '4', '243', '50', '12150', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('117', '20', '5', '212', '18', '3816', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('118', '20', '1', '220', '16', '3520', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('119', '20', '9', '413', '18', '7434', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('120', '20', '11', '474', '19', '9006', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('121', '20', '6', '245', '77', '18865', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('122', '20', '15', '329', '1', '329', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('123', '21', '11', '474', '8', '3792', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('124', '21', '2', '221', '9', '1989', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('125', '21', '1', '220', '10', '2200', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('126', '22', '8', '324', '4', '1296', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('127', '22', '17', '231', '5', '1155', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('128', '22', '9', '413', '44', '18172', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('129', '22', '6', '245', '14', '3430', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('130', '22', '14', '366', '50', '18300', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('131', '22', '15', '329', '43', '14147', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('132', '22', '11', '474', '19', '9006', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('133', '22', '1', '220', '23', '5060', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('134', '23', '1', '220', '16', '3520', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('135', '23', '17', '231', '2', '462', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('136', '23', '11', '474', '23', '10902', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('137', '23', '8', '324', '12', '3888', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('138', '24', '6', '245', '21', '5145', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('139', '24', '2', '221', '27', '5967', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('140', '24', '4', '243', '37', '8991', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('141', '24', '15', '329', '28', '9212', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('142', '24', '7', '401', '36', '14436', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('143', '24', '8', '324', '2', '648', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('144', '24', '13', '227', '23', '5221', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('145', '24', '1', '220', '5', '1100', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('146', '25', '15', '329', '46', '15134', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('147', '26', '7', '401', '2', '802', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('148', '26', '5', '212', '9', '1908', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('149', '26', '15', '329', '3', '987', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('150', '26', '11', '474', '3', '1422', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('151', '26', '3', '232', '11', '2552', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('152', '26', '13', '227', '20', '4540', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('153', '26', '4', '243', '30', '7290', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('154', '26', '1', '220', '15', '3300', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('155', '26', '8', '324', '10', '3240', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('156', '27', '13', '227', '16', '3632', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('157', '27', '14', '366', '60', '21960', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('158', '27', '4', '243', '37', '8991', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('159', '27', '17', '231', '1', '231', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('160', '27', '1', '220', '1', '220', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('161', '27', '6', '245', '20', '4900', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('162', '27', '15', '329', '20', '6580', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('163', '27', '8', '324', '14', '4536', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('164', '27', '5', '212', '8', '1696', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('165', '27', '7', '401', '16', '6416', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('166', '28', '7', '401', '2', '802', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('167', '28', '5', '212', '30', '6360', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('168', '28', '13', '227', '20', '4540', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('169', '28', '14', '366', '32', '11712', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('170', '28', '11', '474', '6', '2844', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('171', '28', '17', '231', '5', '1155', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('172', '28', '4', '243', '59', '14337', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('173', '28', '9', '413', '6', '2478', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('174', '28', '6', '245', '1', '245', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('175', '29', '5', '212', '11', '2332', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('176', '29', '12', '396', '15', '5940', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('177', '29', '13', '227', '24', '5448', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('178', '30', '15', '329', '51', '16779', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('179', '30', '9', '413', '27', '11151', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('180', '30', '12', '396', '21', '8316', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('181', '30', '1', '220', '8', '1760', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('182', '30', '3', '232', '3', '696', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('183', '30', '10', '482', '14', '6748', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('184', '30', '14', '366', '39', '14274', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('185', '30', '6', '245', '25', '6125', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('186', '31', '11', '474', '15', '7110', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('187', '31', '1', '220', '22', '4840', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('188', '31', '14', '366', '25', '9150', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('189', '31', '9', '413', '45', '18585', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('190', '31', '2', '221', '4', '884', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('191', '31', '15', '329', '51', '16779', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('192', '31', '6', '245', '30', '7350', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('193', '31', '3', '232', '4', '928', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('194', '31', '5', '212', '8', '1696', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('195', '31', '7', '401', '16', '6416', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('196', '32', '12', '396', '6', '2376', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('197', '32', '13', '227', '10', '2270', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('198', '32', '10', '482', '2', '964', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('199', '32', '14', '366', '38', '13908', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('200', '32', '11', '474', '10', '4740', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('201', '32', '9', '413', '51', '21063', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('202', '32', '3', '232', '77', '17864', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('203', '32', '1', '220', '15', '3300', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('204', '32', '16', '202', '10', '2020', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('205', '32', '2', '221', '41', '9061', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('206', '33', '3', '232', '14', '3248', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('207', '33', '9', '413', '43', '17759', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('208', '33', '7', '401', '34', '13634', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('209', '33', '14', '366', '45', '16470', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('210', '33', '13', '227', '23', '5221', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('211', '34', '13', '227', '19', '4313', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('212', '34', '9', '413', '50', '20650', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('213', '34', '16', '202', '14', '2828', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('214', '34', '15', '329', '25', '8225', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('215', '34', '12', '396', '1', '396', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('216', '35', '12', '396', '6', '2376', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('217', '35', '14', '366', '56', '20496', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('218', '35', '1', '220', '20', '4400', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('219', '35', '4', '243', '13', '3159', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('220', '35', '17', '231', '12', '2772', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('221', '35', '11', '474', '9', '4266', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('222', '35', '9', '413', '45', '18585', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('223', '35', '16', '202', '23', '4646', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('224', '36', '13', '227', '31', '7037', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('225', '36', '4', '243', '17', '4131', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('226', '36', '2', '221', '23', '5083', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('227', '36', '1', '220', '13', '2860', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('228', '36', '15', '329', '48', '15792', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('229', '36', '12', '396', '12', '4752', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('230', '36', '8', '324', '10', '3240', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('231', '36', '6', '245', '36', '8820', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('232', '37', '13', '227', '37', '8399', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('233', '37', '7', '401', '27', '10827', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('234', '37', '2', '221', '19', '4199', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('235', '37', '8', '324', '13', '4212', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('236', '37', '1', '220', '15', '3300', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('237', '37', '3', '232', '22', '5104', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('238', '37', '10', '482', '13', '6266', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('239', '37', '5', '212', '25', '5300', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('240', '37', '9', '413', '13', '5369', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('241', '37', '11', '474', '7', '3318', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('242', '38', '10', '482', '3', '1446', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('243', '38', '11', '474', '14', '6636', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('244', '38', '14', '366', '34', '12444', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('245', '39', '10', '482', '14', '6748', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('246', '39', '16', '202', '34', '6868', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('247', '39', '7', '401', '21', '8421', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('248', '39', '11', '474', '6', '2844', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('249', '39', '3', '232', '81', '18792', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('250', '40', '5', '212', '20', '4240', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('251', '40', '6', '245', '35', '8575', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('252', '40', '12', '396', '12', '4752', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('253', '40', '1', '220', '23', '5060', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('254', '40', '3', '232', '29', '6728', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('255', '40', '9', '413', '21', '8673', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('256', '40', '16', '202', '2', '404', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('257', '40', '7', '401', '38', '15238', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('258', '40', '11', '474', '25', '11850', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('259', '41', '3', '232', '87', '20184', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('260', '41', '11', '474', '21', '9954', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('261', '41', '8', '324', '3', '972', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('262', '42', '15', '329', '36', '11844', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('263', '42', '14', '366', '57', '20862', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('264', '42', '4', '243', '17', '4131', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('265', '42', '17', '231', '2', '462', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('266', '42', '5', '212', '35', '7420', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('267', '42', '9', '413', '24', '9912', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('268', '42', '7', '401', '20', '8020', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('269', '42', '16', '202', '61', '12322', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('270', '42', '2', '221', '42', '9282', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('271', '43', '17', '231', '10', '2310', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('272', '43', '8', '324', '9', '2916', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('273', '43', '6', '245', '71', '17395', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('274', '43', '14', '366', '32', '11712', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('275', '44', '1', '220', '14', '3080', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('276', '44', '7', '401', '32', '12832', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('277', '44', '13', '227', '30', '6810', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('278', '44', '14', '366', '65', '23790', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('279', '44', '17', '231', '13', '3003', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('280', '44', '6', '245', '17', '4165', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('281', '44', '5', '212', '26', '5512', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('282', '45', '8', '324', '12', '3888', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('283', '45', '17', '231', '1', '231', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('284', '46', '10', '482', '25', '12050', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('285', '46', '15', '329', '25', '8225', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('286', '46', '6', '245', '23', '5635', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('287', '46', '3', '232', '85', '19720', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('288', '46', '12', '396', '8', '3168', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('289', '46', '2', '221', '22', '4862', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('290', '46', '1', '220', '22', '4840', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('291', '46', '5', '212', '35', '7420', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('292', '46', '11', '474', '17', '8058', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('293', '46', '4', '243', '53', '12879', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('294', '47', '1', '220', '20', '4400', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('295', '47', '12', '396', '1', '396', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('296', '47', '14', '366', '60', '21960', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('297', '47', '17', '231', '7', '1617', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('298', '47', '7', '401', '22', '8822', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('299', '47', '4', '243', '47', '11421', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('300', '47', '15', '329', '28', '9212', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('301', '47', '16', '202', '70', '14140', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('302', '47', '10', '482', '8', '3856', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('303', '48', '4', '243', '48', '11664', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('304', '49', '8', '324', '13', '4212', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('305', '49', '6', '245', '27', '6615', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('306', '50', '7', '401', '3', '1203', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('307', '50', '16', '202', '35', '7070', '2017-05-27 01:03:11', '2017-05-27 01:03:11');
INSERT INTO transaction_details VALUES ('308', '50', '15', '329', '40', '13160', '2017-05-27 01:03:11', '2017-05-27 01:03:11');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('1', '1', 'John Doe', 'johndoe@native-theme.com', '123456', '0000-00-00 00:00:00', '2017-07-15 13:18:04');
INSERT INTO users VALUES ('2', '1', 'Imam Hidayat', 'imam@gmail.com', '123456', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
DELIMITER ;;
CREATE TRIGGER `menambah_stock_jika_insert_data` AFTER INSERT ON `tbl_pasok` FOR EACH ROW UPDATE tbl_material
 SET jumlah = jumlah + NEW.qty WHERE id = New.material_id
;;
DELIMITER ;
DELIMITER ;;
CREATE TRIGGER `menambahkan_stock_jika_dihapus` AFTER DELETE ON `tbl_pasok` FOR EACH ROW UPDATE tbl_material SET jumlah = jumlah + OLD.qty WHERE id = OLD.material_id
;;
DELIMITER ;
DELIMITER ;;
CREATE TRIGGER `mengurangi_stock` AFTER INSERT ON `tbl_proyek_material` FOR EACH ROW UPDATE tbl_material
 SET jumlah = jumlah - REPLACE(NEW.qty, ',', '')  WHERE id = New.material_id
;;
DELIMITER ;
