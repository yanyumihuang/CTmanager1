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

 Date: 28/06/2019 23:23:09
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of changes
-- ----------------------------
INSERT INTO `changes` VALUES (1, 20100002, '内部调动', '2009-06-06', '工作调动');
INSERT INTO `changes` VALUES (2, 20100006, '公开招聘', '2010-11-12', '校聘');
INSERT INTO `changes` VALUES (3, 2010003, '内部调动', '2008-06-12', '后勤处');
INSERT INTO `changes` VALUES (4, 20100007, '内部调动', '2010-02-02', '从数学系调入');
INSERT INTO `changes` VALUES (5, 20100004, '内部调动', '2008-06-06', '数学学院调入');
INSERT INTO `changes` VALUES (6, 2000, 'ngf', '1998-05-06', '45');

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
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '计算机与信息工程学院', '计算机教学单位', '正常');
INSERT INTO `department` VALUES (2, '校教学办', '教学办公室', '正常');
INSERT INTO `department` VALUES (3, '党办', '党组织', '正常');
INSERT INTO `department` VALUES (4, '宣传部', '校务宣传', '正常');
INSERT INTO `department` VALUES (5, '组织部', '组织学生活动', '正常');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(255) NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `l_id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`l_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (20100004, '登录', '2019-06-27 21:05:44', 'findUser[参数1，类型:String，值:20100004(getBytes:[B@23bdc9ab)][参数2，类型:String，值:123(getBytes:[B@3bc9e953)]', 1);
INSERT INTO `log` VALUES (20100004, '登录', '2019-06-28 17:15:26', 'findUser[参数1，类型:String，值:20100004(getBytes:[B@2374eecc)][参数2，类型:String，值:123(getBytes:[B@11a48031)]', 2);
INSERT INTO `log` VALUES (20100004, '登录', '2019-06-28 17:18:40', 'findUser[参数1，类型:String，值:20100004(getBytes:[B@344ff0fd)][参数2，类型:String，值:123(getBytes:[B@587e364e)]', 3);
INSERT INTO `log` VALUES (20100004, '登录', '2019-06-28 17:20:40', 'findUser[参数1，类型:String，值:20100004(getBytes:[B@2decf115)][参数2，类型:String，值:123(getBytes:[B@39b6f4b4)]', 4);

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
-- Records of main_staff
-- ----------------------------
INSERT INTO `main_staff` VALUES (20100004, '刘泮振', '女', '1972-01-05', 2, '18638217712', 1, 2, '在职');
INSERT INTO `main_staff` VALUES (20100005, '肖会敏', '男', '1962-12-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100006, '刘振', '男', '1985-01-01', 2, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100007, '杨睿', '女', '1975-01-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100008, '张红军', '男', '1982-01-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100009, '吕晓东', '男', '1983-01-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100010, '景丽', '女', '1986-01-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100012, '傅继彬', '男', '1987-01-01', 1, '18638217712', 1, 1, '在职');
INSERT INTO `main_staff` VALUES (20100015, '师文', '男', '1985-05-16', 1, '18638217696', 2, 1, '在职');
INSERT INTO `main_staff` VALUES (20100016, '刘洪', '男', '1989-12-23', 12, '1962587123', 3, 5, '停职');
INSERT INTO `main_staff` VALUES (201634704, '司坤亮', '男', '1989-01-10', 1, '18638217712', 1, 1, '在职');

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
-- Records of staff_post
-- ----------------------------
INSERT INTO `staff_post` VALUES (1, '专业技术岗', '专业教师');
INSERT INTO `staff_post` VALUES (2, '管理岗位', '教学秘书');
INSERT INTO `staff_post` VALUES (3, '专业技术岗', '教学秘书');
INSERT INTO `staff_post` VALUES (4, '专业技术岗位', '行政秘书');
INSERT INTO `staff_post` VALUES (5, '专业技术岗位', '实验人员');
INSERT INTO `staff_post` VALUES (6, '专业技术岗位', '辅导员');
INSERT INTO `staff_post` VALUES (7, '管理岗位', '专业教师');
INSERT INTO `staff_post` VALUES (8, '管理岗位', '辅导员');
INSERT INTO `staff_post` VALUES (9, '管理岗位', '行政秘书');
INSERT INTO `staff_post` VALUES (10, '管理岗位', '实验人员');
INSERT INTO `staff_post` VALUES (11, '工勤技能岗位', '实验人员');
INSERT INTO `staff_post` VALUES (12, '工勤技能岗位', '行政秘书');
INSERT INTO `staff_post` VALUES (13, '工勤技能岗位', '教学秘书');
INSERT INTO `staff_post` VALUES (14, '工勤技能岗位', '辅导员');
INSERT INTO `staff_post` VALUES (15, '工勤技能岗位', '专业教师');

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
-- Records of staff_title
-- ----------------------------
INSERT INTO `staff_title` VALUES (1, '教授', '教授');
INSERT INTO `staff_title` VALUES (2, '副教授', '副教授');
INSERT INTO `staff_title` VALUES (3, '讲师', '讲师');

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
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (20100004, '123', '4');
INSERT INTO `sys_user` VALUES (20100005, '123', '3');
INSERT INTO `sys_user` VALUES (20100006, '123', '2');
INSERT INTO `sys_user` VALUES (20100007, '123', '1');

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

-- ----------------------------
-- Records of uncommon_staff
-- ----------------------------
INSERT INTO `uncommon_staff` VALUES (20100002, '汉', '556688196301016000', '中共党员', '1984-07-01', '1984-06-01', '河南淅川', '研究生\\博士', '1991-07-01', '华南理工大学', '自控理论应用', '二级', '2013-03-27', NULL, '县处级正职', '2015-10-14', '事业单位整建制转入', '1997-04-01', '正高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100003, '汉', '556688197707016000', '中共党员', '2000-07-01', '2000-07-01', '河南封丘', '研究生\\硕士', '2007-07-01', '河南财经学院', '金融学', '六级', '2012-01-30', NULL, '县处级副职', '2015-11-11', '其他', '2005-03-01', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100004, '汉', '556688197201016000', '中共党员', '1996-03-01', '2002-09-01', '河南偃师', '研究生\\博士', '1999-08-01', '哈尔滨工业大学', '水声工程', '四级', '2012-09-14', NULL, '县处级副职', '2011-03-01', '事业单位招聘', '2012-05-01', '正高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100005, '汉', '556688196901016000', '中共党员', '1987-11-01', '2000-10-01', '河北平宁', '本科\\硕士', '2008-12-01', '华中科技大学', '系统工程', '六级', '2012-01-30', NULL, '县处级副职', '2015-10-14', '军转干部安置', NULL, NULL, NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100006, '汉', '556688197101016000', '群众', '1993-07-01', '1993-07-01', '河南沁阳', '研究生\\博士', '2009-06-01', '中国人民解放军信息工程大学', '计算机软件与理论', '四级', '2016-07-28', NULL, NULL, NULL, '其他', '2014-04-11', '正高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100007, '汉', '556688197501016000', '中共党员', '2000-07-02', '2009-07-01', '河南许昌', '研究生\\博士', '2009-06-01', '北京理工大学', '计算机应用与技术', '六级', '2014-10-23', NULL, NULL, NULL, '事业单位招聘', '2011-03-01', '副高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100008, '汉', '556688196901016000', '群众', '1996-03-02', '2001-06-01', '河南新安', '研究生\\硕士', '2001-06-01', '郑州大学', '计算机软件与理论', '八级', '2012-01-30', NULL, NULL, NULL, '其他', '2002-04-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100009, '汉', '556688197001016000', '中共党员', '1987-11-02', '1993-07-01', '河南伊川', '研究生\\硕士', '1984-07-02', '郑州大学', '计算机软件与理论', '五级', '2013-10-08', NULL, NULL, NULL, '其他', '2007-03-01', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100010, '汉', '556688197801016000', '中共党员', '1993-07-02', '2006-12-01', '河南潢川', '本科\\硕士', '1991-07-02', '郑州大学', '计算机应用技术', '六级', '2018-10-31', NULL, NULL, NULL, '从事业单位调入', '2013-04-18', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100011, '汉', '556688197801016000', '中共党员', '2000-07-02', '2005-07-01', '河南新乡', '研究生\\硕士', '2007-07-02', '河南大学', '应用数学', '八级', '2015-03-30', NULL, NULL, NULL, '事业单位招聘', '2008-09-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100012, '汉', '556688198201016000', '中共党员', '1996-03-02', '2006-07-01', '河南济源', '研究生\\硕士', '1999-08-02', '郑州大学', '计算机', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2009-08-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100013, '汉', '556688198101016000', '中共党员', '1987-11-02', '2006-07-01', '河南濮阳', '研究生\\硕士', '2008-12-02', '郑州大学', '计算机', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2009-08-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100014, '汉', '556688198301016000', '中共党员', '1993-07-02', '2009-06-01', '河南新野', '研究生\\硕士', '1984-07-02', '武汉大学', '计算机软件理论', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2012-05-01', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100015, '汉', '556688198201016000', '群众', '2000-07-03', '2006-07-01', '辽宁抚顺', '本科\\学士', '1991-07-02', '齐齐哈尔大学', '英语', '九级', '2014-10-23', NULL, NULL, NULL, '事业单位招聘', '2011-03-01', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100016, '汉', '556688197301016000', '中共党员', '2000-07-02', '2010-07-01', '河南郾城', '研究生\\博士', '2007-07-02', '北京邮电大学', '磁场与微波技术', '六级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2012-05-01', '副高', '已签博士协议', '2010-12-06', '1');
INSERT INTO `uncommon_staff` VALUES (20100017, '汉', '556688198201016000', '中共党员', '1996-03-02', '2011-07-01', '河南开封', '研究生\\博士', '1999-08-02', '中山大学', '计算机软件与理论', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2012-05-01', '中级', '已签博士协议', '2012-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (20100018, '汉', '556688201901016000', '中共党员', '1987-11-02', '2011-11-01', '河南偃师', '研究生\\博士', '2008-12-02', '日本早稻田大学', '计算机科学与应用', '九级', '2016-07-28', NULL, NULL, NULL, '录用', '2012-05-01', '中级', '已签博士协议', '2012-06-20', '0');
INSERT INTO `uncommon_staff` VALUES (20100019, '汉', '556688197707076000', '群众', '1993-07-02', '2006-07-01', '河南渑池', '研究生\\博士', '2009-06-01', '北京交通大学', '计算机应用技术', '四级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2016-03-15', '正高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100020, '汉', '556688197807076000', '中共党员', '2000-07-03', '2002-04-01', '河南中牟', '研究生\\博士', '2009-06-01', '哈尔滨工程大学', '计算机应用技术', '五级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2011-03-01', '副高', '已签博士协议', '2012-06-19', '0');
INSERT INTO `uncommon_staff` VALUES (20100021, '汉', '556688197007076000', '群众', '1996-03-03', '1993-07-01', '河南襄城', '本科\\硕士', '2001-06-02', '北京交通大学', '计算机软件', '八级', '2012-01-30', NULL, NULL, NULL, '其他', '1999-05-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100022, '汉', '556688197401016000', '中共党员', '1987-11-03', '2004-06-01', '河南方城', '研究生\\博士', '1984-07-03', '北京理工大学', '管理科学与工程', '四级', '2018-11-27', NULL, NULL, NULL, '事业单位招聘', '2018-03-27', '正高', '已签博士协议', '2011-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (20100024, '汉', '556688198201016000', '中共党员', '2000-07-03', '2004-07-01', '河南郑州', '本科\\硕士', '2007-07-03', '北京工业大学', '软件工程', '七级', '2018-11-21', NULL, NULL, NULL, '事业单位招聘', '2018-03-27', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100025, '汉', '556688198001016000', '群众', '1996-03-03', '2004-07-01', '河南西华', '研究生\\硕士', '1999-08-03', '河南财经学院', '管理科学与工程', '九级', '2014-10-23', NULL, NULL, NULL, '事业单位招聘', '2011-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100033, '汉', '556688197901016000', '中共党员', '2000-07-04', '2002-07-01', '河南固始', '研究生\\硕士', '2009-06-01', '西北工业大学', '计算机应用技术', '六级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2013-04-18', '副高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100034, '汉', '556688198001016000', '中共党员', '1996-03-04', '2011-11-01', '河南郑州', '研究生\\博士', '2001-06-03', '中国人民解放军信息工程大学', '计算机软件与理论', '九级', '2016-07-28', NULL, NULL, NULL, '从企业单位调入', '2012-05-01', '中级', '已签博士协议', '2010-01-05', '0');
INSERT INTO `uncommon_staff` VALUES (20100035, '汉', '556688197712316000', '中共党员', '1987-11-04', '2006-07-01', '河南开封', '研究生\\硕士', '1984-07-04', '河南大学', '计算机应用', '七级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2014-04-11', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100036, '汉', '556688197407016000', '中共党员', '1993-07-04', '2005-07-01', '河南鄢陵', '研究生\\硕士', '1991-07-04', '中国人民解放军信息工程大学', '计算机应用技术', '八级', '2015-03-30', NULL, NULL, NULL, '事业单位招聘', '2008-04-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100037, '汉', '556688198007016000', '中共党员', '2000-07-04', '2005-06-01', '河南禹州', '研究生\\硕士', '2007-07-04', '哈尔滨工程大学', '计算机软件与理论', '八级', '2015-03-30', NULL, NULL, NULL, '从事业单位调入', '2008-09-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100038, '汉', '556688198012306000', '中共党员', '1996-03-04', '2003-07-01', '河南扶沟', '研究生\\博士', '1999-08-04', '中国传谋大学', '通迅与信息系统', '九级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2012-11-01', '中级', '已签博士协议', '2012-12-29', '0');
INSERT INTO `uncommon_staff` VALUES (20100039, '汉', '556688198101016000', '中共党员', '1987-11-04', '2006-07-01', '河南新乡', '研究生\\硕士', '2008-12-04', '重庆邮电大学', '计算机应用与技术', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2010-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100040, '汉', '556688198007016000', '中共党员', '1993-07-04', '2007-04-01', '河南淮阳', '研究生\\博士', '1984-07-04', '中国人民大学', '计算机软件与理论', '七级', '2018-09-26', NULL, NULL, NULL, '事业单位招聘', '2017-03-20', '副高', '已签博士协议', '2015-05-18', '1');
INSERT INTO `uncommon_staff` VALUES (20100044, '汉', '556688197101016000', '群众', '1987-11-04', '1994-07-01', '河南固始', '研究生\\博士', '2008-12-04', '中国人民解放军信息工程大学', '计算机软件与理论', '五级', '2018-10-31', NULL, NULL, NULL, '其他', '2009-03-01', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100046, '汉', '556688198001016000', '中共党员', '2000-07-05', '2006-07-01', '河南西华', '研究生\\硕士', '2009-06-01', '郑州大学', '物理电子学', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2010-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100047, '汉', '556688197901016000', '中共党员', '1996-03-05', '2006-07-01', '河南郑州', '研究生\\硕士', '2001-06-04', '郑州大学', '电路与系统', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2010-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100048, '汉', '556688197801016000', '中共党员', '1987-11-05', '2005-07-01', '河南宝丰', '研究生\\硕士', '1984-07-05', '河南师范大学', '理论物理', '七级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2016-03-15', '副高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100049, '汉', '556688198107016000', '中共党员', '1993-07-05', '2010-09-01', '河南孟津', '研究生\\硕士', '1991-07-05', '河南大学', '计算机应用技术', '九级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2014-04-11', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100050, '汉', '556688198212316000', '中共党员', '2000-07-05', '2004-07-01', '河南淮阳', '本科\\学士', '2007-07-05', '重庆工学院', '计算机科学与技术', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2011-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100051, '汉', '556688197401016000', '群众', '1996-03-05', '2011-06-01', '湖南邵阳', '研究生\\博士', '1999-08-05', '西安交通大学', '计算机科学与技术', '七级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2015-03-01', '副高', '已签博士协议', '2012-06-19', '1');
INSERT INTO `uncommon_staff` VALUES (20100057, '汉', '556688197712316000', '群众', '1987-11-05', '2015-01-07', '湖北天门', '研究生\\硕士', '2008-12-05', '华中科技大学', '计算机软件与理论', '七级', '2016-12-22', NULL, NULL, NULL, '从事业单位调入', '2016-01-03', '副高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100058, '汉', '556688198201016000', '中共党员', '1993-07-05', '2015-10-30', '河南浚县', '研究生\\博士', '2009-06-01', '澳大利亚伍伦贡大学', '计算机科学', '十级', '2016-10-27', NULL, NULL, NULL, '事业单位招聘', '2016-09-01', '中级', '已签博士协议', '2016-06-08', '1');
INSERT INTO `uncommon_staff` VALUES (20100059, '汉', '556688198212316000', '中共党员', '2000-07-06', '2016-01-13', '安徽合肥', '研究生\\博士', '2009-06-01', '中国人民解放军信息工程大学', '计算机应用技术', '九级', '2018-10-31', NULL, NULL, NULL, '军转干部安置', '2017-11-30', '中级', '已签博士协议', '2016-06-08', '1');
INSERT INTO `uncommon_staff` VALUES (20100060, '汉', '556688198607016000', '中共党员', '1996-03-06', '2016-12-30', '河南安阳', '研究生\\博士', '2001-06-05', '重庆大学', '电路与系统', '十级', '2018-06-15', NULL, NULL, NULL, '事业单位招聘', '2018-01-22', '中级', '已签博士协议', '2017-04-13', '1');
INSERT INTO `uncommon_staff` VALUES (20100061, '汉', '556688198501016000', '中共党员', '1987-11-06', '2017-06-15', '河南洛阳', '研究生\\博士', '1984-07-06', '东南大学', '计算机科学与技术', '十级', '2018-06-29', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100062, '汉', '556688197901016000', '群众', '1993-07-06', '2017-06-15', '河南南阳', '研究生\\博士', '1991-07-06', '郑州大学', '通信与信息系统', '十级', '2018-06-29', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100063, '汉', '556688197311156000', '群众', '2000-07-06', '2017-06-15', '河南新乡', '研究生\\博士', '2007-07-06', '华中科技大学', '计算机系统结构', '十级', '2018-06-15', NULL, NULL, NULL, '事业单位招聘', '2018-01-22', '中级', '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100064, '汉', '556688198301016000', '中共党员', '1996-03-06', '2017-06-15', '河南滑县', '研究生\\博士', '1999-08-06', '西北工业大学                            ', '计算机科学与技术              ', '十级', '2018-06-29', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100065, '汉', '556688199001016000', '中共党员', '1987-11-06', '2017-06-15', '河南扶沟', '研究生\\博士', '2008-12-06', '西安电子科技大学', '密码学', '十级', '2018-06-29', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100066, '汉', '556688198801016000', '中共党员', '1993-07-06', '2017-06-15', '河南濮阳', '研究生\\博士', '1984-07-06', '电子科技大学', '计算机应用技术', '十级', '2018-06-29', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签博士协议', '2017-06-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100067, '汉', '556688197801016000', '中共党员', '2000-07-07', '2004-06-01', '河南宝丰', '研究生\\硕士', '1991-07-06', '河南财经学院', '工商管理', '七级', '2013-12-17', NULL, '乡科级正职', '2012-11-01', '其他', '2009-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100068, '汉', '556688199012316000', '共青团员', '2000-07-06', '2015-10-30', '河南濮阳', '研究生\\硕士', '2007-07-06', '中央财经大学                            ', '社会学                        ', '十一级', '2016-10-27', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签硕士协议', '2015-10-12', '1');
INSERT INTO `uncommon_staff` VALUES (20100069, '汉', '556688198201016000', '中共党员', '1996-03-06', '2016-12-30', '河南商水', '本科', '1999-08-06', '郑州大学', '机械工程及自动化', '九级', '2017-09-27', NULL, NULL, NULL, '军转干部安置', NULL, NULL, '已签军转协议', '2016-12-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100070, '汉', '556688196901016000', '中共党员', '1987-11-06', '2004-03-01', '河南漯河', '研究生\\硕士', '2008-12-06', '河南财经学院', '伦理学', '九级', '2014-10-23', NULL, NULL, NULL, '从企业单位调入', '2008-04-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100071, '汉', '556688196601016000', '中共党员', '1993-07-06', '1988-02-01', '河南偃师', '本科\\学士', '2009-06-01', '山西大学', '计算数学', '八级', '2012-01-30', NULL, NULL, NULL, '其他', '1995-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100072, '汉', '556688197712316000', '中共党员', '2000-07-07', '2006-02-01', '河南濮阳', '本科\\硕士', '2009-06-01', '河南大学', '基础数学', '七级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2014-04-11', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100073, '汉', '556688196501016000', '群众', '1996-03-07', '2006-01-01', '河南郑州', '本科\\学士', '2001-06-06', '河南财经学院', '计算机科学与技术', '七级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2016-03-15', '副高', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100074, '汉', '556688197201016000', '中共党员', '1987-11-07', '1995-08-01', '河南固始', '本科', '1999-07-07', '中共中央党校', '经济管理', '三级', '2012-01-30', NULL, NULL, NULL, '复员军人安置', '2010-09-01', NULL, NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100075, '汉', '556688196101016000', '中共党员', '1993-07-07', '2017-05-10', '河南信阳', '本科\\学士', '2010-07-07', '郑州大学', '临床医学', '七级', '2018-11-27', NULL, NULL, NULL, '从事业单位调入', '2018-01-22', '副高', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20100076, '汉', '556688198201016000', '中共党员', '2000-07-07', '2004-07-01', '河南兰考', '研究生\\博士', '2007-07-07', '郑州大学', '思想政治教育', '九级', '2014-10-23', NULL, '乡科级正职', '2012-11-01', '事业单位招聘', '2011-03-01', '中级', '已签博士协议', '2015-05-18', '1');
INSERT INTO `uncommon_staff` VALUES (20100077, '汉', '556688198312316000', '中共党员', '1996-03-07', '2010-09-01', '河南焦作', '研究生\\硕士', '2006-08-07', '河南财经学院', '伦理学', '九级', '2018-10-31', NULL, '乡科级副职', '2014-12-15', '事业单位招聘', '2015-03-01', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100078, '汉', '556688198507016000', '中共党员', '1987-11-07', '2012-10-01', '河南开封', '研究生\\硕士', '2008-12-07', '郑州大学', '科学技术哲学', '十级', '2017-05-23', NULL, '乡科级副职', '2015-12-03', '事业单位招聘', '2017-03-20', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100079, '汉', '556688198207126000', '中共党员', '1993-07-07', '2017-11-01', '河南商丘', '研究生\\硕士', '2005-07-07', '中山大学        ', '计算机应用', '十级', '2018-04-27', NULL, NULL, NULL, '从企业单位调入', '2018-01-22', '中级', '已签聘用合同', '2017-11-01', '0');
INSERT INTO `uncommon_staff` VALUES (20100080, '汉', '556688198601016000', '中共党员', '2000-07-08', '2015-01-14', '河南驻马店', '研究生\\硕士', '1991-07-07', '河南大学', '体育教育训练学', '十一级', '2015-12-31', NULL, NULL, NULL, '事业单位招聘', '2015-12-22', '初级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20100081, '汉', '556688198801016000', '中共党员', '2000-07-07', '2016-12-30', '江苏徐州', '研究生\\硕士', '2007-07-07', '山东大学                                ', '机械设计及理论                ', '十一级', '2018-01-25', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签硕士协议', '2017-01-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100082, '汉', '556688199001016000', '中共党员', '1996-03-07', '2016-12-30', '河南驻马店', '研究生\\硕士', '1999-08-07', '郑州大学                                ', '经济史                        ', '十一级', '2018-01-25', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签硕士协议', '2017-01-01', '1');
INSERT INTO `uncommon_staff` VALUES (20100083, '汉', '556688199001016000', '共青团员', '1987-11-07', '2018-06-08', '开封尉氏', '研究生\\硕士', '2008-12-07', '密苏里州立大学', '个性化管理研究', NULL, '2018-01-25', NULL, NULL, NULL, '事业单位招聘', NULL, NULL, '已签硕士协议', '2018-06-08', '1');
INSERT INTO `uncommon_staff` VALUES (20110026, '汉', '556688197401016000', '中共党员', '1987-11-03', '2010-11-01', '河南禹州', '本科\\硕士', '2008-12-03', '中国人民解放军信息工程大学', '密码学', '十级', '2012-01-30', NULL, NULL, NULL, '军转干部安置', '2002-12-01', NULL, NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20110027, '汉', '556688198301016000', '中共党员', '1993-07-03', '2010-07-01', '河南南阳', '研究生\\硕士', '1984-07-03', '重庆大学', '计算机系统结构', '九级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2014-04-11', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20110028, '汉', '556688198101016000', '中共党员', '2000-07-04', '2005-09-01', '河南西华', '研究生\\硕士', '1991-07-03', '河南财经学院', '产业经济学', '九级', '2013-10-08', NULL, NULL, NULL, '事业单位招聘', '2010-03-01', '中级', NULL, NULL, '0');
INSERT INTO `uncommon_staff` VALUES (20110029, '汉', '556688197601016000', '群众', '2000-07-03', '2011-04-01', '河南偃师', '研究生\\硕士', '2007-07-03', '郑州大学', '计算机软件与理论', '八级', '2018-10-31', NULL, NULL, NULL, '从事业单位调入', '2012-05-01', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20110030, '汉', '556688198301016000', '中共党员', '1996-03-03', '2011-07-01', '河南信阳', '研究生\\博士', '1999-08-03', '吉林大学', '计算机应用技术', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2011-10-01', '中级', '已签博士协议', '2012-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (20110031, '汉', '556688197501016000', '群众', '1987-11-03', '2011-07-01', '河南郑州', '研究生\\博士', '2008-12-03', '英国约克大学', '计算机科学', '九级', '2016-07-28', NULL, NULL, NULL, '录用', '2012-05-01', '中级', '已签博士协议', '2012-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (20110032, '汉', '556688198107016000', '群众', '1993-07-03', '2011-10-01', '河南安阳', '研究生\\博士', '2009-06-01', '东华大学', '控制理论与控制工程', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2010-03-01', '中级', '已签博士协议', '2012-06-19', '1');
INSERT INTO `uncommon_staff` VALUES (20110041, '汉', '556688197007016000', '群众', '2000-07-05', '2011-06-01', '河南西平', '研究生\\博士', '1991-07-04', '武汉大学', '计算机应用技术', '七级', '2016-07-28', NULL, NULL, NULL, '从事业单位调入', '2014-04-11', '副高', '已签博士协议', '2012-06-29', '1');
INSERT INTO `uncommon_staff` VALUES (20110042, '汉', '556688197801016000', '中共党员', '2000-07-04', '2010-07-01', '河南许昌', '研究生\\博士', '2007-07-04', '华中科技大学', '计算机系统结构', '八级', '2018-10-31', NULL, NULL, NULL, '事业单位招聘', '2010-12-01', '中级', '已签博士协议', '2010-12-06', '1');
INSERT INTO `uncommon_staff` VALUES (20110043, '汉', '556688198601016000', '中共党员', '1996-03-04', '2012-05-01', '河南鲁山', '研究生\\硕士', '1999-08-04', '爱尔兰国立考克大学', '交互式多媒体', '十级', '2017-05-23', NULL, NULL, NULL, '录用', '2017-03-20', '中级', NULL, NULL, '1');
INSERT INTO `uncommon_staff` VALUES (20110052, '汉', '556688197601016000', '群众', '1987-11-05', '2011-05-01', '吉林德惠', '研究生\\博士', '2008-12-05', '西安电子科技大学', '计算机应用技术', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2011-10-01', '中级', '已签博士协议', '2012-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (20110053, '汉', '556688197701016000', '群众', '1993-07-05', '2011-06-01', '河南安阳', '研究生\\博士', '1999-07-05', '西安交通大学', '信息与通信工程', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2011-06-01', '中级', '已签博士协议', '2012-06-19', '1');
INSERT INTO `uncommon_staff` VALUES (20110054, '汉', '556688197712316000', '中共党员', '2000-07-06', '2012-05-01', '河南襄城', '研究生\\博士', '1991-07-05', '北京科技大学', '通信与信息系统', '九级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2012-11-01', '中级', '已签博士协议', '2014-04-22', '1');
INSERT INTO `uncommon_staff` VALUES (20110055, '汉', '556688197901016000', '中共党员', '2000-07-05', '2003-07-01', '河南南阳', '研究生\\博士', '2007-07-05', '北京科技大学', '控制科学与工程', '七级', '2016-07-28', NULL, NULL, NULL, '事业单位招聘', '2015-03-01', '副高', '已签博士协议', '2012-06-20', '1');
INSERT INTO `uncommon_staff` VALUES (201634704, '汉', '4646', '党员', '2016-05-06', '2016-05-06', '汉', '本科', '2016-05-06', '财大', '计算机', '无极', '2016-05-06', 'WU ', '圆转', '2016-05-06', '招聘', '2016-05-06', '无', NULL, '2016-05-06', 'W');

SET FOREIGN_KEY_CHECKS = 1;
