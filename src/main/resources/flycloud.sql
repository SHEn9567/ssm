/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17-log : Database - flycloud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flycloud` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `flycloud`;

/*Table structure for table `adminlog` */

DROP TABLE IF EXISTS `adminlog`;

CREATE TABLE `adminlog` (
  `logId` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `empId` int(11) DEFAULT NULL COMMENT '员工编号',
  `companyId` int(11) DEFAULT NULL COMMENT '公司编号',
  `logContent` varchar(50) NOT NULL COMMENT '操作内容',
  `logTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`logId`),
  KEY `FK_companyId_log` (`companyId`),
  KEY `FK_empId_log` (`empId`),
  CONSTRAINT `FK_companyId_log` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`),
  CONSTRAINT `FK_empId_log` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='日志表';

/*Data for the table `adminlog` */

insert  into `adminlog`(`logId`,`empId`,`companyId`,`logContent`,`logTime`) values (177,1,1,'登录系统','2020-07-17 00:00:51'),(178,1,1,'访问首页','2020-07-17 00:00:51'),(179,1,1,'查询了所有的客户资料','2020-07-17 00:01:57'),(180,1,1,'查询了所有销售订单','2020-07-17 00:02:05'),(181,1,1,'查询了库存','2020-07-17 00:02:12'),(182,1,1,'查询了收款信息','2020-07-17 00:02:16'),(183,1,1,'查询了所有的订单','2020-07-17 00:02:20'),(184,1,1,'查询了所有的员工','2020-07-17 00:02:31'),(185,1,1,'查询了所有的员工','2020-07-17 00:02:36'),(186,1,1,'访问首页','2020-07-17 00:02:42'),(187,1,1,'查询了所有的客户资料','2020-07-17 00:02:45'),(188,1,1,'查询了所有的客户资料','2020-07-17 00:02:49'),(189,1,1,'查询了所有销售订单','2020-07-17 00:02:55'),(190,1,1,'查询了库存','2020-07-17 00:02:59'),(191,1,1,'查询了收款信息','2020-07-17 00:03:03'),(192,1,1,'查询了所有的客户资料','2020-07-17 00:03:05');

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `carId` int(11) NOT NULL AUTO_INCREMENT COMMENT '汽车编号',
  `seriesId` int(11) NOT NULL COMMENT '车系编号',
  `carName` varchar(32) NOT NULL COMMENT '汽车名称',
  `carPrice` decimal(10,2) DEFAULT NULL COMMENT '汽车价格',
  `carTime` date NOT NULL COMMENT '出厂日期',
  PRIMARY KEY (`carId`),
  KEY `FK_seriesId` (`seriesId`),
  CONSTRAINT `FK_seriesId` FOREIGN KEY (`seriesId`) REFERENCES `carseries` (`seriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='汽车表';

/*Data for the table `car` */

insert  into `car`(`carId`,`seriesId`,`carName`,`carPrice`,`carTime`) values (1,1,'2018款 30周年版 40 TFSI 进取版','309800.00','2018-01-01'),(2,1,'2018款 30周年版 40 TFSI 运动版','369800.00','2018-01-01'),(4,2,'2018款 30周年纪念版 TFSI 进取版','406000.00','2018-01-01'),(5,2,'2018款 30周年纪念版 45 运动版','512800.00','2018-01-01'),(8,3,'2018款 55 投放精英版','937800.00','2018-01-01'),(9,3,'2018款 55 尊贵版','999800.00','2018-01-01'),(10,4,'2013款 40 TFSI Hybrid','608000.00','2013-11-07'),(11,4,'2013款 45 TFSI quattro 运动版','588000.00','2013-05-22'),(12,7,'2018款 C 180 旅行轿车','380800.00','2018-03-01'),(13,7,'2018款 C 200 轿跑车','380800.00','2018-03-01'),(14,9,'2018款 CLA 260 4MATIC','383800.00','2018-03-01'),(15,9,'2018款 CLA 180','252800.00','2018-03-01'),(16,10,'2018款 320i M运动套装','316800.00','2018-04-05'),(17,10,'2018款 xDrive 25i M运动套装','399800.00','2018-04-05'),(18,11,'2018款 改款 540Li 行政版','659900.00','2018-03-07'),(19,11,'2018款 xDrive28i','751900.00','2018-03-07'),(20,12,'途观','199800.00','2018-03-01'),(21,12,'POLO','75900.00','2018-03-01'),(22,12,'朗逸','139900.00','2018-03-01'),(23,13,'宝来','127800.00','2018-04-11'),(24,13,'大众CC','252800.00','2018-04-19');

/*Table structure for table `carbrand` */

DROP TABLE IF EXISTS `carbrand`;

CREATE TABLE `carbrand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌编号',
  `brandName` varchar(32) NOT NULL COMMENT '品牌名称',
  `brandNum` varchar(2) NOT NULL COMMENT '品牌序号',
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='汽车品牌表';

/*Data for the table `carbrand` */

insert  into `carbrand`(`brandId`,`brandName`,`brandNum`) values (1,'奥迪','A'),(2,'奔驰','B'),(3,'宝马','B'),(4,'大众','D');

/*Table structure for table `carorder` */

DROP TABLE IF EXISTS `carorder`;

CREATE TABLE `carorder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `carId` int(11) DEFAULT NULL COMMENT '汽车编号',
  `companyId` int(11) DEFAULT NULL COMMENT '公司编号',
  `orderNum` int(11) DEFAULT NULL COMMENT '车辆数量',
  `orderType` varchar(1) DEFAULT NULL COMMENT '订单状态（1：未审核、2：已审核）',
  `orderTotalPrice` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  PRIMARY KEY (`orderId`),
  KEY `FK_carId_order` (`carId`),
  KEY `FK_companyId_order` (`companyId`),
  CONSTRAINT `FK_carId_order` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  CONSTRAINT `FK_companyId_order` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单表';

/*Data for the table `carorder` */

insert  into `carorder`(`orderId`,`carId`,`companyId`,`orderNum`,`orderType`,`orderTotalPrice`) values (2,12,1,1,'2','380800.00'),(3,19,1,1,'2','751900.00'),(4,21,1,3,'2','227700.00');

/*Table structure for table `carseries` */

DROP TABLE IF EXISTS `carseries`;

CREATE TABLE `carseries` (
  `seriesId` int(11) NOT NULL AUTO_INCREMENT COMMENT '车系编号',
  `brandId` int(11) NOT NULL COMMENT '品牌编号',
  `seriesName` varchar(32) NOT NULL COMMENT '车系名称',
  PRIMARY KEY (`seriesId`),
  KEY `FK_brandId` (`brandId`),
  CONSTRAINT `FK_brandId` FOREIGN KEY (`brandId`) REFERENCES `carbrand` (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='汽车车系表';

/*Data for the table `carseries` */

insert  into `carseries`(`seriesId`,`brandId`,`seriesName`) values (1,1,'奥迪A4'),(2,1,'奥迪A6'),(3,1,'奥迪A8L'),(4,1,'奥迪Q5'),(7,2,'奔驰C级'),(9,2,'奔驰CLA级'),(10,3,'宝马3系'),(11,3,'宝马5系'),(12,4,'一汽大众'),(13,4,'上汽大众');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司编号',
  `companyName` varchar(40) NOT NULL DEFAULT '' COMMENT '公司名称',
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公司表';

/*Data for the table `company` */

insert  into `company`(`companyId`,`companyName`) values (1,'湖南闪电汽车服务有限公司'),(2,'湖南汽车AAA公司'),(3,'湖南汽车BBB公司'),(4,'湖南汽车CCC公司');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `customerName` varchar(10) NOT NULL COMMENT '客户姓名',
  `customerPhone` varchar(11) NOT NULL COMMENT '客户电话',
  `customerSex` varchar(2) NOT NULL COMMENT '客户性别',
  `customerType` varchar(1) NOT NULL COMMENT '客户类型（1：个人、2：公司）',
  `customerBirthday` date DEFAULT NULL COMMENT '客户生日',
  `customerCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`customerId`),
  KEY `FK_companyId_cus` (`companyId`),
  CONSTRAINT `FK_companyId_cus` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='客户表';

/*Data for the table `customer` */

insert  into `customer`(`customerId`,`companyId`,`customerName`,`customerPhone`,`customerSex`,`customerType`,`customerBirthday`,`customerCreateTime`) values (1,1,'张三','18612344321','男','1','1996-01-01','2018-05-03 12:36:34'),(2,1,'李四','18609877890','男','1','1996-01-02','2018-05-03 12:43:42'),(3,2,'王五','13511223344','男','1','1997-01-01','2018-05-05 19:30:40'),(4,2,'赵六','13555667788','女','1','1997-01-01','2018-05-05 19:31:16'),(5,1,'七哥','13200775431','女','2','1996-02-22','2018-05-06 16:43:52'),(6,1,'AAA','13309809124','女','2','1980-06-07','2018-05-06 17:27:57'),(7,1,'BBB','18512340991','男','1','1981-08-02','2018-05-06 17:30:18'),(8,1,'CCC','17798204214','女','2','1997-04-22','2018-05-06 19:41:05'),(9,1,'DDD','15192740187','男','1','1986-05-20','2018-05-06 20:17:10'),(10,1,'EEE','18710295231','男','1','1990-03-31','2018-05-06 20:47:48'),(11,1,'FFF','15239401111','女','1','1989-12-04','2018-05-06 20:48:33'),(12,1,'GGG','17529402873','男','1','1984-11-29','2018-05-06 20:49:26'),(13,1,'HHH','15698232342','男','1','1997-01-20','2018-05-06 20:49:55'),(14,1,'大i','16738293331','男','1','1984-01-31','2018-05-06 20:50:53');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `positionId` int(11) NOT NULL COMMENT '职务编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `empName` varchar(10) NOT NULL COMMENT '员工姓名',
  `empPhone` varchar(11) NOT NULL COMMENT '登录手机',
  `empPassword` varchar(50) NOT NULL COMMENT '登录密码',
  `empSalery` decimal(10,2) DEFAULT NULL COMMENT '员工工资',
  PRIMARY KEY (`empId`),
  KEY `FK_companyId_emp` (`companyId`),
  KEY `FK_positionId` (`positionId`),
  CONSTRAINT `FK_companyId_emp` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`),
  CONSTRAINT `FK_positionId` FOREIGN KEY (`positionId`) REFERENCES `position` (`positionId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='员工表';

/*Data for the table `employee` */

insert  into `employee`(`empId`,`positionId`,`companyId`,`empName`,`empPhone`,`empPassword`,`empSalery`) values (1,1,1,'万宇','18673615878','123456','10000.00'),(2,1,2,'赵一','18673615878','123456',NULL),(3,1,3,'王一','18673615878','123456',NULL),(4,2,1,'万二','18673615789','123456','3000.00'),(5,2,2,'赵二','18123456789','123456',NULL),(7,3,1,'万销1','18809572241','123456','4000.00'),(8,3,1,'万销2','17682941111','123456','4000.00'),(9,1,4,'平安','13077265111','123456',NULL);

/*Table structure for table `financing` */

DROP TABLE IF EXISTS `financing`;

CREATE TABLE `financing` (
  `financingId` int(11) NOT NULL AUTO_INCREMENT COMMENT '财务编号',
  `saleId` int(11) DEFAULT NULL COMMENT '销售编号',
  `repertoryId` int(11) DEFAULT NULL COMMENT '库存编号',
  `companyId` int(11) DEFAULT NULL COMMENT '公司编号',
  `financingMoney` decimal(10,2) DEFAULT NULL COMMENT '涉及金额',
  `financingType` varchar(1) DEFAULT NULL COMMENT '财务状态（1：收入，2：支出）',
  `financingTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`financingId`),
  KEY `FK_companyId_financing` (`companyId`),
  KEY `FK_repertoryId` (`repertoryId`),
  KEY `FK_saleId` (`saleId`),
  CONSTRAINT `FK_companyId_financing` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`),
  CONSTRAINT `FK_repertoryId` FOREIGN KEY (`repertoryId`) REFERENCES `repertory` (`repertoryId`),
  CONSTRAINT `FK_saleId` FOREIGN KEY (`saleId`) REFERENCES `sale` (`saleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='财务表';

/*Data for the table `financing` */

insert  into `financing`(`financingId`,`saleId`,`repertoryId`,`companyId`,`financingMoney`,`financingType`,`financingTime`) values (2,NULL,NULL,1,'380800.00','2','2018-05-09 00:27:27'),(3,NULL,NULL,1,'227700.00','2','2018-05-09 10:51:14'),(4,NULL,NULL,1,'751900.00','2','2018-05-09 10:51:38');

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `positionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '职务编号',
  `positionName` varchar(20) NOT NULL COMMENT '职务名称（经理、操作员、销售员）',
  `positionLevel` varchar(1) NOT NULL COMMENT '职务等级（1：经理、2：操作员、3：销售员）',
  PRIMARY KEY (`positionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='职务表';

/*Data for the table `position` */

insert  into `position`(`positionId`,`positionName`,`positionLevel`) values (1,'经理','1'),(2,'操作员','2'),(3,'销售员','3');

/*Table structure for table `repertory` */

DROP TABLE IF EXISTS `repertory`;

CREATE TABLE `repertory` (
  `repertoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '库存编号',
  `carId` int(11) NOT NULL COMMENT '汽车编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `purchasePrice` decimal(10,2) DEFAULT NULL COMMENT '含税价格',
  `inTime` date NOT NULL COMMENT '入库时间',
  `repertoryNum` int(11) NOT NULL COMMENT '库存数量',
  PRIMARY KEY (`repertoryId`),
  KEY `FK_carId_repertory` (`carId`),
  KEY `FK_companyId_repertory` (`companyId`),
  CONSTRAINT `FK_carId_repertory` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  CONSTRAINT `FK_companyId_repertory` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='库存表';

/*Data for the table `repertory` */

insert  into `repertory`(`repertoryId`,`carId`,`companyId`,`purchasePrice`,`inTime`,`repertoryNum`) values (1,20,1,'259740.00','2018-05-05',3),(3,21,1,'91080.00','2018-05-09',3),(4,19,1,'902280.00','2018-05-09',1);

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `saleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售编号',
  `customerId` int(11) NOT NULL COMMENT '客户编号',
  `carId` int(11) NOT NULL COMMENT '汽车编号',
  `empId` int(11) NOT NULL COMMENT '员工编号',
  `companyId` int(11) DEFAULT NULL COMMENT '公司编号',
  `saleCurPrice` decimal(10,2) NOT NULL COMMENT '销售价格',
  `saleNum` int(11) NOT NULL COMMENT '销售数量',
  `saleType` varchar(1) NOT NULL COMMENT '销售状态（1、未付款，2、已付款）',
  `saleTotalPrice` decimal(10,2) DEFAULT NULL COMMENT '销售总价',
  `saleTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '销售时间',
  PRIMARY KEY (`saleId`),
  KEY `FK_carId_sale` (`carId`),
  KEY `FK_companyId_sale` (`companyId`),
  KEY `FK_customerId` (`customerId`),
  KEY `FK_empId_sale` (`empId`),
  CONSTRAINT `FK_carId_sale` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  CONSTRAINT `FK_companyId_sale` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`),
  CONSTRAINT `FK_customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `FK_empId_sale` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sale` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
