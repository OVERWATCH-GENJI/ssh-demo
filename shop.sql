/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2019-01-06 21:02:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`auid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin', '0');

-- ----------------------------
-- Table structure for `billitem`
-- ----------------------------
DROP TABLE IF EXISTS `billitem`;
CREATE TABLE `billitem` (
  `billid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `ptotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`billid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `FK3510439A73B4E627` (`pid`),
  CONSTRAINT `FK3510439A73B4E627` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billitem
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '笔记本');
INSERT INTO `category` VALUES ('2', '台式机');
INSERT INTO `category` VALUES ('3', '平板电脑');
INSERT INTO `category` VALUES ('4', '一体机');
INSERT INTO `category` VALUES ('5', '电脑配件');

-- ----------------------------
-- Table structure for `categorysecond`
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF2418BCBAF` (`cid`),
  CONSTRAINT `FK936FCAF2418BCBAF` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '联想', '1');
INSERT INTO `categorysecond` VALUES ('2', '戴尔', '1');
INSERT INTO `categorysecond` VALUES ('3', '华硕', '1');
INSERT INTO `categorysecond` VALUES ('4', 'ThinkPad', '1');
INSERT INTO `categorysecond` VALUES ('5', '宏基', '1');
INSERT INTO `categorysecond` VALUES ('6', '神舟', '1');
INSERT INTO `categorysecond` VALUES ('7', '惠普', '1');
INSERT INTO `categorysecond` VALUES ('8', '索尼', '1');
INSERT INTO `categorysecond` VALUES ('9', '富士通', '1');
INSERT INTO `categorysecond` VALUES ('10', 'LG', '1');
INSERT INTO `categorysecond` VALUES ('11', '苹果', '1');
INSERT INTO `categorysecond` VALUES ('13', '海尔', '1');
INSERT INTO `categorysecond` VALUES ('14', 'LifeBook', '1');
INSERT INTO `categorysecond` VALUES ('15', 'iPad air2', '1');
INSERT INTO `categorysecond` VALUES ('16', '其他类型', '1');
INSERT INTO `categorysecond` VALUES ('17', '品牌机', '2');
INSERT INTO `categorysecond` VALUES ('18', '组装机', '2');
INSERT INTO `categorysecond` VALUES ('19', 'iPad', '3');
INSERT INTO `categorysecond` VALUES ('20', 'Android', '3');
INSERT INTO `categorysecond` VALUES ('21', 'windows', '3');
INSERT INTO `categorysecond` VALUES ('22', '其他', '3');
INSERT INTO `categorysecond` VALUES ('23', '一体机', '4');
INSERT INTO `categorysecond` VALUES ('24', '耳机音箱', '5');
INSERT INTO `categorysecond` VALUES ('25', '移动存储', '5');
INSERT INTO `categorysecond` VALUES ('26', '电源设配器', '5');
INSERT INTO `categorysecond` VALUES ('27', '路由器上网卡', '5');
INSERT INTO `categorysecond` VALUES ('28', '鼠标键盘', '5');
INSERT INTO `categorysecond` VALUES ('29', '耳机', '5');
INSERT INTO `categorysecond` VALUES ('30', '数据线', '5');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `messagedate` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `FK38EB0007FC32F8E` (`uid`),
  CONSTRAINT `FK38EB0007FC32F8E` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '大家好，这个商品很潮流', '2019-01-08', '3');
INSERT INTO `message` VALUES ('4', '<p>好物一起分享哦</p>\r\n', '2019-01-08 04:55:42', '3');
INSERT INTO `message` VALUES ('6', '<p>快点发货哦</p>\r\n', '2019-01-06 19:08:56', '4');
INSERT INTO `message` VALUES ('7', '<p>快快快发发发货</p>\r\n', '2019-01-05 23:37:52', '6');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `oiid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oiid`),
  KEY `FKE8B2AB61E818A405` (`oid`),
  KEY `FKE8B2AB6173B4E627` (`pid`),
  CONSTRAINT `FKE8B2AB6173B4E627` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `FKE8B2AB61E818A405` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('18', '1', '540', '68', '7');
INSERT INTO `orderitem` VALUES ('19', '1', '5888', '60', '7');
INSERT INTO `orderitem` VALUES ('20', '1', '5999', '62', '7');
INSERT INTO `orderitem` VALUES ('21', '1', '2090', '63', '7');
INSERT INTO `orderitem` VALUES ('22', '1', '1399', '67', '8');
INSERT INTO `orderitem` VALUES ('23', '1', '7960', '58', '8');
INSERT INTO `orderitem` VALUES ('24', '1', '3399', '67', '9');
INSERT INTO `orderitem` VALUES ('25', '1', '7980', '57', '9');
INSERT INTO `orderitem` VALUES ('26', '1', '7282', '59', '9');
INSERT INTO `orderitem` VALUES ('27', '1', '5888', '60', '9');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `receiveInfo` varchar(255) DEFAULT NULL,
  `phoNum` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `accepter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5FC32F8E` (`uid`),
  CONSTRAINT `FKC3DF62E5FC32F8E` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('7', '14517', '2', '北京市海淀区龙华路1号', '13813888888', '2019-01-05 21:22:03', '1', '娃哈哈');
INSERT INTO `orders` VALUES ('8', '9359', '3', '北京市海淀区龙华路1号', '13813888888', '2019-01-05 23:37:27', '6', '娃哈哈');
INSERT INTO `orders` VALUES ('9', '24549', '1', '北京市海淀区龙华路1号', '13813888888', '2019-01-06 20:44:53', '1', '娃哈哈');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(5000) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` timestamp NULL DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEF5F778050` (`csid`),
  CONSTRAINT `FKED8DCCEF5F778050` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('57', '苹果笔记本电脑', '7989', '7980', 'products/3024101f-a875-4dbc-859d-7334a6124e37apple.jpg', '苹果笔记本电脑', '1', '2019-01-06 20:13:17', '11', null);
INSERT INTO `product` VALUES ('58', '弘基笔记本电脑', '2999', '2222', 'products/a74cb936-db58-43e8-80b2-11ceeb71fe6eacer.jpg', '弘基笔记本电脑', '1', '2019-01-06 20:12:11', '5', null);
INSERT INTO `product` VALUES ('59', '戴尔台式机', '7289', '7282', 'products/7a201d42-a789-45b5-bb71-474455a9cd06501.jpg', '戴尔台式机', '1', '2019-01-06 20:14:01', '17', null);
INSERT INTO `product` VALUES ('60', 'iPad Air 2', '5889', '5888', 'products/eec72832-4ae4-40fb-b669-8925015aa1f420150922062127.jpg', 'iPad Air 2', '1', '2019-01-06 20:11:07', '15', null);
INSERT INTO `product` VALUES ('62', '华硕笔记本电脑', '6000', '5999', 'products/cc3121d2-1519-4dc0-9a8d-91fc0d536428huashuo2.jpg', '华硕笔记本电脑', '0', '2019-01-06 20:15:49', '17', null);
INSERT INTO `product` VALUES ('63', '戴尔笔记本电脑', '2099', '2090', 'products/3df6622f-1797-4339-984a-8e9968025915dell3.jpg', '戴尔笔记本电脑', '0', '2019-01-06 20:16:36', '2', null);
INSERT INTO `product` VALUES ('64', '神舟笔记本电脑', '1199', '1198', 'products/5bd8d752-544d-4b87-a247-df6d4804a12ashenzhou.jpg', '神舟笔记本电脑', '0', '2019-01-06 20:17:22', '6', null);
INSERT INTO `product` VALUES ('65', '联想一体机', '3199', '3198', 'products/f7a3d33c-93c0-4b78-b7e1-68c13564542aLenovo9.jpg', '联想一体机', '0', '2019-01-06 20:18:39', '7', null);
INSERT INTO `product` VALUES ('66', '神舟电脑', '2599', '2499', 'products/8271c44b-a1fe-41e7-9453-f3a576c8d4cehasee1.jpg', '神舟电脑', '0', '2019-01-06 20:20:11', '6', null);
INSERT INTO `product` VALUES ('67', '弘基电脑', '3499', '3399', 'products/03533e58-b1d2-45e5-8d24-34f829b94887acer3.jpg', '弘基电脑', '0', '2019-01-06 20:23:38', '2', null);
INSERT INTO `product` VALUES ('68', '华硕电脑', '3549', '3540', 'products/c21a1ac0-0ddd-4d94-8fcf-c62009c45dddsmall_08.jpg', '华硕电脑', '0', '2019-01-06 20:25:04', '3', null);
INSERT INTO `product` VALUES ('70', '华硕台式机', '7888', '7666', 'products/5914511e-01c2-4b7f-9bb5-1c1101fef48abig_03.jpg', '华硕台式机', '0', '2019-01-06 20:15:06', '17', null);

-- ----------------------------
-- Table structure for `shopcartitem`
-- ----------------------------
DROP TABLE IF EXISTS `shopcartitem`;
CREATE TABLE `shopcartitem` (
  `cartitemid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pcount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ptotal` double DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcartitem
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '1',
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'hikitty', '123456', '张三', 'hikitty@qq.com', '13555512345', '上海市', '1', null);
INSERT INTO `user` VALUES ('2', 'jack', '123456', '马云', 'jack@qq.com', '13812312312', '中国', '1', null);
INSERT INTO `user` VALUES ('3', 'hellokitty', '123456', '张三', 'aodamao@qq.com', '13555512345', '上海市', '0', 'ca0f6f5a-36da-402d-8c0f-22587423de20');
INSERT INTO `user` VALUES ('4', 'wahaha', '123456', '娃哈哈', 'wahaha@qq.com', '13813813888', '北京市海淀区龙华路1号', '0', '7614ec6c-b987-4c26-a681-7a6d32c4d0fd');
INSERT INTO `user` VALUES ('5', 'wakaka', '123456', '娃哈哈', 'wakaka@qq.com', '13713613555', '中国北京西城区', '0', 'f9d268bd-1ace-41ff-b46d-f6c7a0303fd1');
INSERT INTO `user` VALUES ('6', 'damao', '123456', '大猫说', 'damao@qq.com', '13713812312', '中国北京市', '0', 'b28e5bcc-1c86-454e-9ada-c80fbf686ddb');
