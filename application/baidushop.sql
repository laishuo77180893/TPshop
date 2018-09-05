-- ----------------------------------------------
-- Table structure for category(生活服务分类表)
-- ----------------------------------------------
DROP TABLE IF EXITS `category`;
CREATE TABLE `category`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(32) NOT NULL DEFAULT '' COMMENT '栏目名称',
	`parent_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '父类id',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY parent_id(`parent_id`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of category
--------------------------
INSERT INTO `category` VALUES(1,'娱乐',0,'','1','145854655','184545421');

-- ----------------------------------
-- Table structure for city(城市表)
-- ----------------------------------
DROP TABLE IF EXITS `city`;
CREATE TABLE `city`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(32) NOT NULL DEFAULT '' COMMENT '城市名称',
	`uname` varchar(32) NOT NULL DEFAULT '' COMMENT '城市英文名称',
	`parent_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '父类id',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY parent_id(`parent_id`),
	UNIQUE KEY uname(`uname`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of city 
--------------------------
INSERT INTO `city` VALUES(1,'广东','guangdong',0,'','1','145854655','184545421');

-- ----------------------------------
-- Table structure for bis(商户表)
-- ----------------------------------
DROP TABLE IF EXITS `bis`;
CREATE TABLE `bis`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(32) NOT NULL DEFAULT '' COMMENT '商户名称',
	`email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
	`logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商家招牌',
	`licence_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商家营业执照',
	`description` text NOT NULL COMMENT '商家介绍',
	`city_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '城市id',
	`city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '根据上一层省市对应下一级地区',
	`bank_info` varchar(50) NOT NULL DEFAULT '' COMMENT '银行信息',
	`money` decimal(20,2) NOT NULL DEFAULT 0.00 COMMENT '提现金额',
	`bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '银行种类',
	`bank_user` varchar(50) NOT NULL DEFAULT '' COMMENT '银行用户',
	`faren` varchar(20) NOT NULL DEFAULT '' COMMENT '法人姓名',
	`faren_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '法人电话'
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY city_id(`city_id`),
	KEY name(`name`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of bis 
--------------------------


-- ----------------------------------------------
-- Table structure for bis_account(商户账号表)
-- ----------------------------------------------
DROP TABLE IF EXITS `bis_account`;
CREATE TABLE `bis_account`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`username` varchar(32) NOT NULL DEFAULT '' COMMENT '商家用户名',
	`password` varchar(32) NOT NULL DEFAULT '' COMMENT '商家用户密码',
	`code` varchar(10) NOT NULL DEFAULT '' COMMENT '提示状态',
	`last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '登录ip地址'
	`last_login_time` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '最后一次登录时间',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY bis_id(`bis_id`),
	KEY username(`username`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of bis_account 
--------------------------


-- ---------------------------------------------
-- Table structure for bis_location(商户门店表)
-- ---------------------------------------------
DROP TABLE IF EXITS `bis_location`;
CREATE TABLE `bis_location`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(32) NOT NULL DEFAULT '' COMMENT '商户名称',
	`logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商家招牌',
	`address` varchar(255) NOT NULL DEFAULT '' COMMENT '商家地址',
	`tel` varchar(32) NOT NULL DEFAULT '' COMMENT '商家联系方式',
	`contact` varchar(32) NOT NULL DEFAULT '' COMMENT '商家联系人',
	`xpoint` varchar(32) NOT NULL DEFAULT '' COMMENT '纬度',
	`ypoint` varchar(32) NOT NULL DEFAULT '' COMMENT '经度',
	`bis_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '商户id',
	`open_time` int(11) unsigned NOT NULL DEFAULT '' COMMENT '营业时间',
	`content` text NOT NULL COMMENT '门店介绍',
	`city_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '城市id',
	`city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '根据上一层省市对应下一级地区',
	`category_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '栏目id',
	`category_path` varchar(50) NOT NULL DEFAULT '' COMMENT '根据上一层栏目对应下一级栏目',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY city_id(`city_id`),
	KEY category_id(`category_id`),
	KEY bis_id(`bis_id`),
	KEY name(`name`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

---------------------------
-- Records of bis_location 
---------------------------

-- ---------------------------------------------
-- Table structure for goods_info(商品表)
-- ---------------------------------------------
DROP TABLE IF EXITS `goods_info`;
CREATE TABLE `goods_info`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
	`category_id` int(11) NOT NULL DEFAULT '' COMMENT '商家招牌',
	`address` varchar(255) NOT NULL DEFAULT '' COMMENT '商家地址',
	`tel` varchar(32) NOT NULL DEFAULT '' COMMENT '商家联系方式',
	`contact` varchar(32) NOT NULL DEFAULT '' COMMENT '商家联系人',
	`xpoint` varchar(32) NOT NULL DEFAULT '' COMMENT '纬度',
	`ypoint` varchar(32) NOT NULL DEFAULT '' COMMENT '经度',
	`bis_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '商户id',
	`open_time` int(11) unsigned NOT NULL DEFAULT '' COMMENT '营业时间',
	`content` text NOT NULL COMMENT '门店介绍',
	`city_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '城市id',
	`city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '根据上一层省市对应下一级地区',
	`category_id` int(11) unsigned NOT NULL DEFAULT '' COMMENT '栏目id',
	`category_path` varchar(50) NOT NULL DEFAULT '' COMMENT '根据上一层栏目对应下一级栏目',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	KEY city_id(`city_id`),
	KEY category_id(`category_id`),
	KEY bis_id(`bis_id`),
	KEY name(`name`) 
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

---------------------------
-- Records of goods_info 
---------------------------

-- ----------------------------------------------
-- Table structure for user(用户注册表)
-- ----------------------------------------------
DROP TABLE IF EXITS `user`;
CREATE TABLE `user`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
	`password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
	`code` varchar(10) NOT NULL DEFAULT '' COMMENT '提示状态',
	`last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '登录ip地址'
	`last_login_time` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '最后一次登录时间',
	`email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
	`mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '联系方式',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	UNIQUE KEY username(`username`)
	UNIQUE KEY email(`email`)  
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of user 
--------------------------

-- ----------------------------------------------
-- Table structure for user(用户注册表)
-- ----------------------------------------------
DROP TABLE IF EXITS `user`;
CREATE TABLE `user`(
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
	`password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
	`code` varchar(10) NOT NULL DEFAULT '' COMMENT '提示状态',
	`last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '登录ip地址'
	`last_login_time` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '最后一次登录时间',
	`email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
	`mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '联系方式',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
	`status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY(`id`),
	UNIQUE KEY username(`username`)
	UNIQUE KEY email(`email`)  
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 

--------------------------
-- Records of user 
--------------------------