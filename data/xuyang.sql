/*
Navicat MySQL Data Transfer

Source Server         : xuyang
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xuyang

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-29 11:10:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fenye
-- ----------------------------
DROP TABLE IF EXISTS `fenye`;
CREATE TABLE `fenye` (
  `﻿name` varchar(255) NOT NULL,
  `connet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fenye
-- ----------------------------
INSERT INTO `fenye` VALUES ('张1', '这个是1，这个是2，这个是3');
INSERT INTO `fenye` VALUES ('张2', '这个是1，这个是2，这个是4');
INSERT INTO `fenye` VALUES ('张3', '这个是1，这个是2，这个是5');
INSERT INTO `fenye` VALUES ('张4', '这个是1，这个是2，这个是6');
INSERT INTO `fenye` VALUES ('张5', '这个是1，这个是2，这个是7');
INSERT INTO `fenye` VALUES ('张6', '这个是1，这个是2，这个是8');
INSERT INTO `fenye` VALUES ('张7', '这个是1，这个是2，这个是9');
INSERT INTO `fenye` VALUES ('张8', '这个是1，这个是2，这个是10');
INSERT INTO `fenye` VALUES ('张9', '这个是1，这个是2，这个是11');
INSERT INTO `fenye` VALUES ('张10', '这个是1，这个是2，这个是12');
INSERT INTO `fenye` VALUES ('张11', '这个是1，这个是2，这个是13');
INSERT INTO `fenye` VALUES ('张12', '这个是1，这个是2，这个是14');
INSERT INTO `fenye` VALUES ('张13', '这个是1，这个是2，这个是15');
INSERT INTO `fenye` VALUES ('张14', '这个是1，这个是2，这个是16');
INSERT INTO `fenye` VALUES ('张15', '这个是1，这个是2，这个是17');
INSERT INTO `fenye` VALUES ('张16', '这个是1，这个是2，这个是18');
INSERT INTO `fenye` VALUES ('张17', '这个是1，这个是2，这个是19');
INSERT INTO `fenye` VALUES ('张18', '这个是1，这个是2，这个是20');
INSERT INTO `fenye` VALUES ('张19', '这个是1，这个是2，这个是21');
INSERT INTO `fenye` VALUES ('张20', '这个是1，这个是2，这个是22');
INSERT INTO `fenye` VALUES ('张21', '这个是1，这个是2，这个是23');
INSERT INTO `fenye` VALUES ('张22', '这个是1，这个是2，这个是24');
INSERT INTO `fenye` VALUES ('张23', '这个是1，这个是2，这个是25');
INSERT INTO `fenye` VALUES ('张24', '这个是1，这个是2，这个是26');
INSERT INTO `fenye` VALUES ('张25', '这个是1，这个是2，这个是27');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `﻿gid` int(10) unsigned DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', '运动套装休闲吸汗时尚韩版潮流外套1', '1', '999', '299', '../img/good1.jpg', '1');
INSERT INTO `good` VALUES ('2', '运动套装休闲吸汗时尚韩版潮流外套2', '2', '1000', '300', '../img/good2.jpg', '1');
INSERT INTO `good` VALUES ('3', '运动套装休闲吸汗时尚韩版潮流外套3', '3', '1001', '301', '../img/good3.jpg', '1');
INSERT INTO `good` VALUES ('4', '运动套装休闲吸汗时尚韩版潮流外套4', '4', '1002', '302', '../img/good4.jpg', '1');
INSERT INTO `good` VALUES ('5', '运动套装休闲吸汗时尚韩版潮流外套5', '5', '1003', '303', '../img/good5.jpg', '1');
INSERT INTO `good` VALUES ('6', '运动套装休闲吸汗时尚韩版潮流外套6', '6', '1004', '304', '../img/good6.jpg', '1');
INSERT INTO `good` VALUES ('7', '运动套装休闲吸汗时尚韩版潮流外套7', '7', '1005', '305', '../img/good7.jpg', '1');
INSERT INTO `good` VALUES ('8', '运动套装休闲吸汗时尚韩版潮流外套8', '8', '1006', '306', '../img/good8.jpg', '1');
INSERT INTO `good` VALUES ('9', '运动套装休闲吸汗时尚韩版潮流外套9', '9', '1007', '307', '../img/good9.jpg', '1');
INSERT INTO `good` VALUES ('10', '运动套装休闲吸汗时尚韩版潮流外套10', '10', '1008', '308', '../img/good10.jpg', '1');
INSERT INTO `good` VALUES ('11', '运动套装休闲吸汗时尚韩版潮流外套11', '11', '1009', '309', '../img/good11.jpg', '1');
INSERT INTO `good` VALUES ('12', '运动套装休闲吸汗时尚韩版潮流外套12', '12', '1010', '310', '../img/good12.jpg', '1');
INSERT INTO `good` VALUES ('13', '运动套装休闲吸汗时尚韩版潮流外套13', '13', '1011', '311', '../img/good13.jpg', '1');
INSERT INTO `good` VALUES ('14', '运动套装休闲吸汗时尚韩版潮流外套14', '14', '1012', '312', '../img/good14.jpg', '1');
INSERT INTO `good` VALUES ('15', '运动套装休闲吸汗时尚韩版潮流外套15', '15', '1013', '313', '../img/good15.jpg', '1');
INSERT INTO `good` VALUES ('16', '运动套装休闲吸汗时尚韩版潮流外套16', '16', '1014', '314', '../img/good16.jpg', '1');
INSERT INTO `good` VALUES ('17', '运动套装休闲吸汗时尚韩版潮流外套17', '17', '1015', '315', '../img/good17.jpg', '1');
INSERT INTO `good` VALUES ('18', '运动套装休闲吸汗时尚韩版潮流外套18', '18', '1016', '316', '../img/good18.jpg', '1');
INSERT INTO `good` VALUES ('19', '运动套装休闲吸汗时尚韩版潮流外套19', '19', '1017', '317', '../img/good19.jpg', '1');
INSERT INTO `good` VALUES ('20', '运动套装休闲吸汗时尚韩版潮流外套20', '20', '1018', '318', '../img/good20.jpg', '1');
INSERT INTO `good` VALUES ('21', '运动套装休闲吸汗时尚韩版潮流外套21', '21', '1019', '319', '../img/good21.jpg', '1');
INSERT INTO `good` VALUES ('22', '运动套装休闲吸汗时尚韩版潮流外套22', '22', '1020', '320', '../img/good22.jpg', '1');
INSERT INTO `good` VALUES ('23', '运动套装休闲吸汗时尚韩版潮流外套23', '23', '1021', '321', '../img/good23.jpg', '1');
INSERT INTO `good` VALUES ('24', '运动套装休闲吸汗时尚韩版潮流外套24', '24', '1022', '322', '../img/good24.jpg', '1');
INSERT INTO `good` VALUES ('25', '运动套装休闲吸汗时尚韩版潮流外套25', '25', '1023', '323', '../img/good25.jpg', '1');
INSERT INTO `good` VALUES ('26', '运动套装休闲吸汗时尚韩版潮流外套26', '26', '1024', '324', '../img/good26.jpg', '1');
INSERT INTO `good` VALUES ('27', '运动套装休闲吸汗时尚韩版潮流外套27', '27', '1025', '325', '../img/good27.jpg', '1');
INSERT INTO `good` VALUES ('28', '运动套装休闲吸汗时尚韩版潮流外套28', '28', '1026', '326', '../img/good28.jpg', '1');
INSERT INTO `good` VALUES ('29', '运动套装休闲吸汗时尚韩版潮流外套29', '29', '1027', '327', '../img/good29.jpg', '1');
INSERT INTO `good` VALUES ('30', '运动套装休闲吸汗时尚韩版潮流外套30', '30', '1028', '328', '../img/good30.jpg', '1');
INSERT INTO `good` VALUES ('31', '运动套装休闲吸汗时尚韩版潮流外套31', '31', '1029', '329', '../img/good31.jpg', '1');

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `hot` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------

-- ----------------------------
-- Table structure for gouwuche
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nums` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES ('22', '1', '26', '$324', ' 运动套装休闲吸汗时尚韩版潮流外套26', 'http://localhost/php/aolaigou/img/good26.jpg');
INSERT INTO `gouwuche` VALUES ('23', '3', '8', '$306', ' 运动套装休闲吸汗时尚韩版潮流外套8', 'http://localhost/php/aolaigou/img/good8.jpg');
INSERT INTO `gouwuche` VALUES ('24', '2', '9', '$307', ' 运动套装休闲吸汗时尚韩版潮流外套9', 'http://localhost/php/aolaigou/img/good9.jpg');
INSERT INTO `gouwuche` VALUES ('25', '1', '22', '$320', ' 运动套装休闲吸汗时尚韩版潮流外套22', 'http://localhost/php/aolaigou/img/good22.jpg');

-- ----------------------------
-- Table structure for ordercar
-- ----------------------------
DROP TABLE IF EXISTS `ordercar`;
CREATE TABLE `ordercar` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `num` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordercar
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin');
INSERT INTO `user` VALUES ('2', 'ad123', 'ad123');
INSERT INTO `user` VALUES ('4', 'admin2', 'admin2');
INSERT INTO `user` VALUES ('5', 'admin3', 'admin3');
INSERT INTO `user` VALUES ('6', 'admin4', 'admin4');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(10) unsigned NOT NULL,
  `gid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', 'lizongwei', '123456', '18', '2018-11-12 15:19:05');
INSERT INTO `user_inf` VALUES ('2', 'qiuguijian', '12345', '18', '2018-11-12 15:19:34');
INSERT INTO `user_inf` VALUES ('3', 'yanzihao', '1234', '18', '2018-11-12 15:19:52');
INSERT INTO `user_inf` VALUES ('4', 'malin', '123456', null, '2018-11-17 15:42:45');
INSERT INTO `user_inf` VALUES ('5', 'mmmm', '123123', null, '2018-11-23 10:34:21');
INSERT INTO `user_inf` VALUES ('6', '', '', null, '2018-11-23 10:35:13');
INSERT INTO `user_inf` VALUES ('7', '', '', null, '2018-11-23 16:48:45');
INSERT INTO `user_inf` VALUES ('8', '13826016185', 'xy123456', null, '2018-11-23 16:51:21');
INSERT INTO `user_inf` VALUES ('9', '13826016185', 'xy123456', null, '2018-11-23 16:51:37');
INSERT INTO `user_inf` VALUES ('10', '13826016186', 'xy123456', null, '2018-11-23 16:53:55');
INSERT INTO `user_inf` VALUES ('11', '13826016188', 'xy123456', null, '2018-11-23 16:56:31');
INSERT INTO `user_inf` VALUES ('12', '13826016189', 'xy123456', null, '2018-11-23 16:58:11');
INSERT INTO `user_inf` VALUES ('13', '13826016189', 'xy123456', null, '2018-11-23 16:58:32');
INSERT INTO `user_inf` VALUES ('14', '13826016181', 'xy123456', null, '2018-11-23 17:15:01');
SET FOREIGN_KEY_CHECKS=1;
