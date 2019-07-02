/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : ctmanager

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 02/07/2019 19:48:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for changes
-- ----------------------------
DROP TABLE IF EXISTS `changes`;
CREATE TABLE `changes`  (
  `c_id` int(20) NOT NULL AUTO_INCREMENT,
  `s_id` int(20) NOT NULL,
  `c_situation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_changetime` date NULL DEFAULT NULL,
  `c_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `d_id` int(15) NOT NULL,
  `d_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_statue` enum('正常','撤销') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '正常',
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(255) NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `l_id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`l_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for main_staff
-- ----------------------------
DROP TABLE IF EXISTS `main_staff`;
CREATE TABLE `main_staff`  (
  `s_id` int(15) NOT NULL,
  `s_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_gender` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_birthday` date NULL DEFAULT NULL,
  `s_post` int(15) NOT NULL,
  `s_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` int(15) NOT NULL,
  `s_department` int(15) NOT NULL,
  `s_statue` enum('在职','离职','退休','休假','停职') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '在职',
  PRIMARY KEY (`s_id`) USING BTREE,
  INDEX `deparment`(`s_department`) USING BTREE,
  INDEX `title`(`s_title`) USING BTREE,
  INDEX `post`(`s_post`) USING BTREE,
  CONSTRAINT `deparment` FOREIGN KEY (`s_department`) REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post` FOREIGN KEY (`s_post`) REFERENCES `staff_post` (`p_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `title` FOREIGN KEY (`s_title`) REFERENCES `staff_title` (`t_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staff_post
-- ----------------------------
DROP TABLE IF EXISTS `staff_post`;
CREATE TABLE `staff_post`  (
  `p_id` int(15) NOT NULL,
  `p_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staff_title
-- ----------------------------
DROP TABLE IF EXISTS `staff_title`;
CREATE TABLE `staff_title`  (
  `t_id` int(15) NOT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_decription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `sys_id` int(15) NOT NULL,
  `sys_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sys_purview` enum('1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '4',
  PRIMARY KEY (`sys_id`) USING BTREE,
  CONSTRAINT `main_statff` FOREIGN KEY (`sys_id`) REFERENCES `main_staff` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uncommon_staff
-- ----------------------------
DROP TABLE IF EXISTS `uncommon_staff`;
CREATE TABLE `uncommon_staff`  (
  `id` int(15) NOT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `political` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `worktime` date NULL DEFAULT NULL,
  `entrytime` date NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduationtime` date NULL DEFAULT NULL,
  `university` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postgrade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `positiontime` date NULL DEFAULT NULL,
  `postlegacy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `onjobtime` date NULL DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schooltime` date NULL DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agreement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signtime` date NULL DEFAULT NULL,
  `ischange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `CF ` FOREIGN KEY (`id`) REFERENCES `main_staff` (`s_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
