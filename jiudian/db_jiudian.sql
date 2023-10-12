/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : db_jiudian

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-10-27 21:11:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_admin` VALUES ('2', 's', 's');

-- ----------------------------
-- Table structure for `t_canyinxiaofei`
-- ----------------------------
DROP TABLE IF EXISTS `t_canyinxiaofei`;
CREATE TABLE `t_canyinxiaofei` (
  `id` int(11) NOT NULL auto_increment,
  `shijian` varchar(50) default NULL,
  `kehuname` varchar(50) default NULL,
  `jine` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_canyinxiaofei
-- ----------------------------
INSERT INTO `t_canyinxiaofei` VALUES ('1', '2011-03-07', '4', '4', 'yes');
INSERT INTO `t_canyinxiaofei` VALUES ('2', '2011-03-08', '2', '2', 'yes');
INSERT INTO `t_canyinxiaofei` VALUES ('3', '2011-03-08', '地方', '200', 'yes');
INSERT INTO `t_canyinxiaofei` VALUES ('5', '2016-10-27', 'dfd', '100', 'no');

-- ----------------------------
-- Table structure for `t_canzhuoyuding`
-- ----------------------------
DROP TABLE IF EXISTS `t_canzhuoyuding`;
CREATE TABLE `t_canzhuoyuding` (
  `id` int(11) NOT NULL auto_increment,
  `shijian` varchar(50) default NULL,
  `kehuname` varchar(50) default NULL,
  `zhuohao` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_canzhuoyuding
-- ----------------------------
INSERT INTO `t_canzhuoyuding` VALUES ('4', '2016-10-27', 'dd', '1', 'no');
INSERT INTO `t_canzhuoyuding` VALUES ('2', '2011-03-08', '录用', '102', 'yes');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `name1` varchar(50) default NULL,
  `miaoshu` varchar(5000) default NULL,
  `pic` varchar(500) default NULL,
  `jiage` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('5', '海米拌芹黄', '请输入内容', '/upload/1300745702906.jpg', '22', 'no');
INSERT INTO `t_goods` VALUES ('6', '三文鱼刺身', '请输入内容', '/upload/1300745729953.jpg', '50', 'no');
INSERT INTO `t_goods` VALUES ('7', 'dfdf', '请输入内容df', '/upload/1300910000296.gif', '33', 'yes');
INSERT INTO `t_goods` VALUES ('9', 'dd', '<p>dd</p>', '/upload/300745729953.jpg', '21', 'no');

-- ----------------------------
-- Table structure for `t_kefang`
-- ----------------------------
DROP TABLE IF EXISTS `t_kefang`;
CREATE TABLE `t_kefang` (
  `id` int(11) NOT NULL auto_increment,
  `fangjianhao` varchar(50) default NULL,
  `fangjianmianji` varchar(50) default NULL,
  `fangjianjianjie` varchar(50) default NULL,
  `fujian` varchar(50) default NULL,
  `fujianYuanshiming` varchar(50) default NULL,
  `kefangleixingId` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kefang
-- ----------------------------
INSERT INTO `t_kefang` VALUES ('1', '111', '12', '请输入内容d', '/upload/1295510614515.jpg', '1.jpg', '2', 'no');
INSERT INTO `t_kefang` VALUES ('2', '112', '12', '请输入内容', '/upload/1295510664390.jpg', '1.jpg', '2', 'no');
INSERT INTO `t_kefang` VALUES ('3', '113', '11', '\"迷冓入宅¹<br />', null, null, null, null);
INSERT INTO `t_kefang` VALUES ('4', '123', '11', '请输入内容', '', '', '2', 'yes');

-- ----------------------------
-- Table structure for `t_kefangleixing`
-- ----------------------------
DROP TABLE IF EXISTS `t_kefangleixing`;
CREATE TABLE `t_kefangleixing` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `beizhu` varchar(500) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kefangleixing
-- ----------------------------
INSERT INTO `t_kefangleixing` VALUES ('2', '单人间', '', 'no');
INSERT INTO `t_kefangleixing` VALUES ('3', '双人间', '', 'no');
INSERT INTO `t_kefangleixing` VALUES ('4', '豪华间', '', 'no');
INSERT INTO `t_kefangleixing` VALUES ('6', 'd', '', 'yes');

-- ----------------------------
-- Table structure for `t_kefangruzhu`
-- ----------------------------
DROP TABLE IF EXISTS `t_kefangruzhu`;
CREATE TABLE `t_kefangruzhu` (
  `id` int(11) NOT NULL auto_increment,
  `kefang_id` int(11) default NULL,
  `shijian` varchar(50) default NULL,
  `kehuname` varchar(50) default NULL,
  `kehutel` varchar(50) default NULL,
  `tianshu` varchar(50) default NULL,
  `xiaofeijine` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kefangruzhu
-- ----------------------------
INSERT INTO `t_kefangruzhu` VALUES ('1', '1', '2011-03-07', 'd', '', '', '0', 'yes');
INSERT INTO `t_kefangruzhu` VALUES ('2', '1', '2011-03-08', 'erer', '123445522', '3', '333', 'no');
INSERT INTO `t_kefangruzhu` VALUES ('4', '2', '2016-10-27', 'd', 'dd', '1', '100', 'no');

-- ----------------------------
-- Table structure for `t_kefangyuding`
-- ----------------------------
DROP TABLE IF EXISTS `t_kefangyuding`;
CREATE TABLE `t_kefangyuding` (
  `id` int(11) NOT NULL auto_increment,
  `kefang_id` int(11) default NULL,
  `shijian` varchar(50) default NULL,
  `kehuname` varchar(50) default NULL,
  `kehutel` varchar(50) default NULL,
  `tianshu` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kefangyuding
-- ----------------------------
INSERT INTO `t_kefangyuding` VALUES ('1', '1', '2010-11', '', '', '', 'yes');
INSERT INTO `t_kefangyuding` VALUES ('2', '1', '2011-03-08', '', '', '', 'no');
INSERT INTO `t_kefangyuding` VALUES ('3', '1', '2011-03-02', 'rr', '132222', '2', 'no');
INSERT INTO `t_kefangyuding` VALUES ('5', '2', '2016-10-27', 'dd', '1111', '1', 'no');

-- ----------------------------
-- Table structure for `t_kehu`
-- ----------------------------
DROP TABLE IF EXISTS `t_kehu`;
CREATE TABLE `t_kehu` (
  `id` int(11) NOT NULL auto_increment,
  `mingcheng` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `lianxiren` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `youbian` varchar(50) default NULL,
  `chuanzhen` varchar(50) default NULL,
  `youxiang` varchar(50) default NULL,
  `kahuhang` varchar(50) default NULL,
  `zhanghao` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kehu
-- ----------------------------
INSERT INTO `t_kehu` VALUES ('1', 'qqq', 'qq', 'q', '1', '1', '1', '1', '', '', 'kehu', 'no');
INSERT INTO `t_kehu` VALUES ('2', '刘光亮', '的', '的', '132545555', '12566', '4556', 'liu @yaho.cn', '', '', 'kehu', 'no');
INSERT INTO `t_kehu` VALUES ('4', 'dddd', 'dd', 'dd', '111', '11', '111', '11', '', '', 'kehu', 'yes');

-- ----------------------------
-- Table structure for `t_yuangong`
-- ----------------------------
DROP TABLE IF EXISTS `t_yuangong`;
CREATE TABLE `t_yuangong` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `sex` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `zhiwei` varchar(50) default NULL,
  `quanxian` int(11) default NULL,
  `loginName` varchar(50) default NULL,
  `loginPw` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yuangong
-- ----------------------------
INSERT INTO `t_yuangong` VALUES ('1', '1', '3', '3', '3', '3', '3', '3', '0', '', '');
