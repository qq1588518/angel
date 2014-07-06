/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.16-log : Database - angel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`angel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `angel`;

/*Table structure for table `t_achieve` */

DROP TABLE IF EXISTS `t_achieve`;

CREATE TABLE `t_achieve` (
  `achieve_date` datetime DEFAULT NULL COMMENT '计算日期',
  `PPV` double DEFAULT '0' COMMENT '个人业绩',
  `DBV` double DEFAULT '0' COMMENT '直接业绩',
  `IBV` double DEFAULT '0' COMMENT '间接业绩',
  `ATNPV` double DEFAULT '0' COMMENT '累计整网业绩',
  `TNPV` double DEFAULT '0' COMMENT '整网业绩',
  `GPV` double DEFAULT '0' COMMENT '小组业绩',
  `APPV` double DEFAULT '0' COMMENT '累计个人业绩',
  `purchaser_code` varchar(8) NOT NULL COMMENT '会员编码(主键)',
  `tier` int(11) DEFAULT NULL COMMENT '层级',
  `rank_name` varchar(255) DEFAULT NULL COMMENT '等级名称',
  `rank_code` varchar(11) DEFAULT NULL COMMENT '等级编码',
  `upper_codes` longtext COMMENT '保存所有上线编码',
  PRIMARY KEY (`purchaser_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_achieve` */

insert  into `t_achieve`(`achieve_date`,`PPV`,`DBV`,`IBV`,`ATNPV`,`TNPV`,`GPV`,`APPV`,`purchaser_code`,`tier`,`rank_name`,`rank_code`,`upper_codes`) values (NULL,73000,NULL,NULL,73000,73000,73000,73000,'001002',NULL,NULL,'102007',NULL),(NULL,500,NULL,NULL,500,500,500,500,'000042',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000044',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000046',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000047',NULL,NULL,'102003',NULL),(NULL,73000,NULL,NULL,73000,73000,73000,73000,'001000',NULL,NULL,'102007',NULL),(NULL,16000,NULL,NULL,89000,89000,16000,16000,'001001',NULL,NULL,'102006',NULL),(NULL,1000,NULL,NULL,1500,1500,1500,1000,'000041',NULL,NULL,'102004',NULL),(NULL,300,NULL,NULL,500,500,300,300,'000043',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,600,600,200,200,'000045',NULL,NULL,'102003',NULL),(NULL,2000,NULL,NULL,2000,2000,2000,2000,'000050',NULL,NULL,'102004',NULL),(NULL,280000,NULL,NULL,353000,353000,353000,280000,'000100',NULL,NULL,'102008',NULL),(NULL,1000,NULL,NULL,1000,1000,1000,1000,'000101',NULL,NULL,'102004',NULL),(NULL,10,NULL,NULL,10,10,10,10,'000102',NULL,NULL,'102001',NULL),(NULL,50,NULL,NULL,50,50,50,50,'000103',NULL,NULL,'102001',NULL),(NULL,300,NULL,NULL,89300,89300,300,300,'000105',NULL,NULL,'102003',NULL),(NULL,500,NULL,NULL,500,500,500,500,'000106',NULL,NULL,'102003',NULL),(NULL,1000,NULL,NULL,1000,1000,1000,1000,'000108',NULL,NULL,'102004',NULL),(NULL,3000,NULL,NULL,8100,4000,4000,7100,'000099',NULL,NULL,'102005',NULL),(NULL,200,NULL,NULL,3900,700,700,3400,'000009',NULL,NULL,'102004',NULL),(NULL,200,NULL,NULL,2200,1200,200,1200,'000008',NULL,NULL,'102004',NULL),(NULL,200,NULL,NULL,354000,353200,200,1000,'000007',NULL,NULL,'102004',NULL),(NULL,100,NULL,NULL,2200,2100,100,200,'012345',NULL,NULL,'102003',NULL),(NULL,300,NULL,NULL,1700,1400,300,600,'099999',NULL,NULL,'102003',NULL),(NULL,50,NULL,NULL,1550,1550,50,50,'000010',NULL,NULL,'102003',NULL),(NULL,7000,NULL,NULL,14000,7000,7000,14000,'000094',NULL,NULL,'102005',NULL),(NULL,2000,NULL,NULL,5500,2000,2000,5500,'000097',NULL,NULL,'102005',NULL),(NULL,200,NULL,NULL,400,200,200,400,'000031',NULL,NULL,'102003',NULL),(NULL,20,NULL,NULL,80,80,20,20,'000021',NULL,NULL,'102001',NULL),(NULL,100,NULL,NULL,89400,89400,100,100,'000022',NULL,NULL,'102003',NULL),(NULL,300,NULL,NULL,300,300,300,300,'000025',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000026',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000028',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000030',NULL,NULL,'102003',NULL),(NULL,200,NULL,NULL,200,200,200,200,'000029',NULL,NULL,'102003',NULL),(NULL,100,NULL,NULL,1065,700,700,265,'000005',NULL,NULL,'102004',NULL),(NULL,200,NULL,NULL,20270,9600,600,370,'000004',NULL,NULL,'102005',NULL),(NULL,120,NULL,NULL,12740,5120,1120,440,'000003',NULL,NULL,'102005',NULL),(NULL,200,NULL,NULL,451480,449130,23130,350,'000002',NULL,NULL,'102007',NULL),(NULL,100,NULL,NULL,485855,464650,15520,300,'000001',NULL,NULL,'102006',NULL);

/*Table structure for table `t_achieve_his` */

DROP TABLE IF EXISTS `t_achieve_his`;

CREATE TABLE `t_achieve_his` (
  `achieve_date` datetime DEFAULT NULL COMMENT '计算日期',
  `PPV` double DEFAULT '0' COMMENT '个人业绩',
  `DBV` double DEFAULT '0' COMMENT '直接业绩',
  `IBV` double DEFAULT '0' COMMENT '间接业绩',
  `ATNPV` double DEFAULT '0' COMMENT '累计整网业绩',
  `TNPV` double DEFAULT '0' COMMENT '整网业绩',
  `GPV` double DEFAULT '0' COMMENT '小组业绩',
  `APPV` double DEFAULT '0' COMMENT '累计个人业绩',
  `purchaser_code` varchar(8) DEFAULT NULL COMMENT '会员编码',
  `tier` int(11) DEFAULT NULL COMMENT '层级',
  `rank_name` varchar(255) DEFAULT NULL COMMENT '等级名称',
  `rank_code` varchar(11) DEFAULT NULL COMMENT '等级编码',
  `upper_codes` longtext COMMENT '保存所有上线编码',
  `id` int(255) NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_achieve_his` */

/*Table structure for table `t_bouns` */

DROP TABLE IF EXISTS `t_bouns`;

CREATE TABLE `t_bouns` (
  `bouns_date` datetime DEFAULT NULL COMMENT '计算日期',
  `direct_bouns` double DEFAULT '0' COMMENT '直接奖',
  `indirect_bouns` double DEFAULT '0' COMMENT '间接奖',
  `leader_bouns` double DEFAULT '0' COMMENT '领导奖',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `rank_name` varchar(255) DEFAULT NULL COMMENT '等级名称',
  `rank_code` varchar(11) DEFAULT NULL COMMENT '等级编码',
  `purchaser_code` varchar(8) NOT NULL COMMENT '会员编码(主键)',
  `purchaser_name` varchar(255) DEFAULT NULL COMMENT '会员姓名',
  PRIMARY KEY (`purchaser_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_bouns` */

insert  into `t_bouns`(`bouns_date`,`direct_bouns`,`indirect_bouns`,`leader_bouns`,`remark`,`rank_name`,`rank_code`,`purchaser_code`,`purchaser_name`) values ('2014-07-06 03:46:49',29200,0,0,NULL,NULL,'102007','001002',NULL),('2014-07-06 03:46:49',110,0,0,NULL,NULL,'102003','000042',NULL),('2014-07-06 03:46:49',44,0,0,NULL,NULL,'102003','000044',NULL),('2014-07-06 03:46:49',44,0,0,NULL,NULL,'102003','000046',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000047',NULL),('2014-07-06 03:46:50',29200,0,0,NULL,NULL,'102007','001000',NULL),('2014-07-06 03:46:50',5440,0,730,NULL,NULL,'102006','001001',NULL),('2014-07-06 03:46:50',260,20.000000000000004,0,NULL,NULL,'102004','000041',NULL),('2014-07-06 03:46:50',66,0,0,NULL,NULL,'102003','000043',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000045',NULL),('2014-07-06 03:46:50',520,0,0,NULL,NULL,'102004','000050',NULL),('2014-07-06 03:46:50',120400,2189.9999999999977,0,NULL,NULL,'102008','000100',NULL),('2014-07-06 03:46:50',260,0,0,NULL,NULL,'102004','000101',NULL),('2014-07-06 03:46:50',0.5,0,0,NULL,NULL,'102001','000102',NULL),('2014-07-06 03:46:50',2.5,0,0,NULL,NULL,'102001','000103',NULL),('2014-07-06 03:46:50',66,0,0,NULL,NULL,'102003','000105',NULL),('2014-07-06 03:46:50',110,0,0,NULL,NULL,'102003','000106',NULL),('2014-07-06 03:46:50',260,0,0,NULL,NULL,'102004','000108',NULL),('2014-07-06 03:46:50',900,39.99999999999998,0,NULL,NULL,'102005','000099',NULL),('2014-07-06 03:46:50',52,20.000000000000004,0,NULL,NULL,'102004','000009',NULL),('2014-07-06 03:46:50',52,0,0,NULL,NULL,'102004','000008',NULL),('2014-07-06 03:46:50',52,0,0,NULL,NULL,'102004','000007',NULL),('2014-07-06 03:46:50',22,0,0,NULL,NULL,'102003','012345',NULL),('2014-07-06 03:46:50',66,0,0,NULL,NULL,'102003','099999',NULL),('2014-07-06 03:46:50',11,0,0,NULL,NULL,'102003','000010',NULL),('2014-07-06 03:46:50',2100,0,0,NULL,NULL,'102005','000094',NULL),('2014-07-06 03:46:50',600,0,0,NULL,NULL,'102005','000097',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000031',NULL),('2014-07-06 03:46:50',1,0,0,NULL,NULL,'102001','000021',NULL),('2014-07-06 03:46:50',22,0,0,NULL,NULL,'102003','000022',NULL),('2014-07-06 03:46:50',66,0,0,NULL,NULL,'102003','000025',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000026',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000028',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000030',NULL),('2014-07-06 03:46:50',44,0,0,NULL,NULL,'102003','000029',NULL),('2014-07-06 03:46:50',26,24.000000000000007,0,NULL,NULL,'102004','000005',NULL),('2014-07-06 03:46:50',60,31.999999999999996,90,NULL,NULL,'102005','000004',NULL),('2014-07-06 03:46:50',36,51.999999999999986,40,NULL,NULL,'102005','000003',NULL),('2014-07-06 03:46:50',80,4085.000000000001,4625,NULL,NULL,'102007','000002',NULL),('2014-07-06 03:46:51',34,644.8000000000005,1996.3,NULL,NULL,'102006','000001',NULL);

/*Table structure for table `t_bouns_his` */

DROP TABLE IF EXISTS `t_bouns_his`;

CREATE TABLE `t_bouns_his` (
  `bouns_date` datetime DEFAULT NULL COMMENT '计算日期',
  `direct_bouns` double DEFAULT '0' COMMENT '直接奖',
  `indirect_bouns` double DEFAULT '0' COMMENT '间接奖',
  `leader_bouns` double DEFAULT '0' COMMENT '领导奖',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `rank_name` varchar(255) DEFAULT NULL COMMENT '等级名称',
  `rank_code` varchar(11) DEFAULT NULL COMMENT '等级编码',
  `purchaser_code` varchar(8) DEFAULT NULL COMMENT '会员编码',
  `purchaser_name` varchar(255) DEFAULT NULL COMMENT '会员姓名',
  `id` int(255) NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_bouns_his` */

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `BV` double DEFAULT '0' COMMENT 'BV值',
  `PV` double DEFAULT '0' COMMENT 'PV值',
  `book` int(11) DEFAULT NULL COMMENT 'BOOK',
  `purchaser_code` varchar(255) DEFAULT NULL COMMENT '经销商编码',
  `purchaser_name` varchar(255) DEFAULT NULL COMMENT '经销商姓名',
  `floors` int(11) DEFAULT NULL COMMENT '层级',
  `order_code` varchar(255) NOT NULL COMMENT '订单流水号(主键)',
  `product_code` varchar(255) DEFAULT NULL COMMENT '产品编码',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `product_price` double DEFAULT '0' COMMENT '产品价格',
  `sale_number` int(11) DEFAULT '0' COMMENT '购买数量',
  `sale_time` datetime DEFAULT NULL COMMENT '购买时间',
  `shop_code` varchar(255) DEFAULT NULL COMMENT '店铺编码',
  `shop_name` varchar(255) DEFAULT NULL COMMENT '店铺名称',
  `sum_price` double DEFAULT '0' COMMENT '累计价格',
  PRIMARY KEY (`order_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`BV`,`PV`,`book`,`purchaser_code`,`purchaser_name`,`floors`,`order_code`,`product_code`,`product_name`,`product_price`,`sale_number`,`sale_time`,`shop_code`,`shop_name`,`sum_price`) values (200,200,NULL,'000001','ANGEL',NULL,'201406080219217965','A01','1',10,20,'2014-06-08 02:41:54','CG982000','Company1',200),(320,320,NULL,'000003','alex',NULL,'201406080219325941','A01','1',10,32,'2014-06-08 02:40:25','CG982000','Company1',320),(150,150,NULL,'000002','quentin',NULL,'201406080219741652','A01','1',10,15,'2014-06-08 02:41:47','CG982000','Company1',150),(165,165,NULL,'000005','A',NULL,'201406080220650283','A02','2',5,33,'2014-06-08 02:41:51','CG982002','Koufoutila',165),(170,170,NULL,'000004','milandou',NULL,'201406080220985243','A01','1',10,17,'2014-06-08 02:38:44','CG982001','Milandou',170),(800,800,NULL,'000007','E',NULL,'201406080221283470','A01','1',10,80,'2014-06-08 02:41:24','CG982006','Company3',800),(100,100,NULL,'012345','D',NULL,'201406080221570916','A01','1',10,10,'2014-06-08 02:41:20','CG982005','Company2',100),(300,300,NULL,'099999','C',NULL,'201406080221758623','A01','1',10,30,'2014-06-08 02:39:43','CG982004','Gladiss',300),(1000,1000,NULL,'000008','F',NULL,'201406080222415682','A01','1',10,100,'2014-06-08 02:41:28','CG982007','Company4',1000),(3200,3200,NULL,'000009','G',NULL,'20140608022369173','A01','1',10,320,'2014-06-08 02:41:36','CG982003','Mm',3200),(4100,4100,NULL,'000099','H',NULL,'201406080223735620','A01','1',10,410,'2014-06-08 02:41:32','CG982002','Koufoutila',4100),(7000,7000,NULL,'000094','I',NULL,'201406080224162753','A01','1',10,700,'2014-06-08 02:41:39','CG982001','Milandou',7000),(3500,3500,NULL,'000097','J',NULL,'201406080224917340','A01','1',10,350,'2014-06-08 02:41:44','CG982000','Company1',3500),(200,200,NULL,'000031','K',NULL,'201406080226347812','A01','1',10,20,'2014-06-08 02:41:57','CG982000','Company1',200),(100,100,NULL,'000001','ANGEL',NULL,'201407051852380275','A01','1',10,10,'2014-07-05 18:52:41','CG982000','Company1',100),(200,200,NULL,'000002','quentin',NULL,'201407051853576018','A01','1',10,20,'2014-07-05 18:53:10','CG982000','Company1',200),(120,120,NULL,'000003','alex',NULL,'201407051853903516','A01','1',10,12,'2014-07-05 18:53:47','CG982000','Company1',120),(200,200,NULL,'000004','milandou',NULL,'201407051856316598','A01','1',10,20,'2014-07-05 18:56:07','CG982001','Milandou',200),(100,100,NULL,'000005','A',NULL,'201407051856354809','A01','1',10,10,'2014-07-05 18:56:44','CG982002','Koufoutila',100),(50,50,NULL,'000010','B',NULL,'201407051857823159','A01','1',10,5,'2014-07-05 18:57:28','CG982003','Mm',50),(300,300,NULL,'099999','C',NULL,'201407051858401327','A01','1',10,30,'2014-07-05 18:58:23','CG982004','Gladiss',300),(200,200,NULL,'000007','E',NULL,'201407051859165307','A01','1',10,20,'2014-07-05 18:59:32','CG982006','Company3',200),(100,100,NULL,'012345','D',NULL,'201407051859251793','A01','1',10,10,'2014-07-05 18:59:00','CG982005','Company2',100),(200,200,NULL,'000008','F',NULL,'20140705190018629','A01','1',10,20,'2014-07-05 19:00:15','CG982007','Company4',200),(200,200,NULL,'000009','G',NULL,'201407051900689370','A01','1',10,20,'2014-07-05 19:00:48','CG982003','Mm',200),(7000,7000,NULL,'000094','I',NULL,'201407051901651243','A01','1',10,700,'2014-07-05 19:01:39','CG982001','Milandou',7000),(3000,3000,NULL,'000099','H',NULL,'201407051901802941','A01','1',10,300,'2014-07-05 19:01:15','CG982002','Koufoutila',3000),(2000,2000,NULL,'000097','J',NULL,'201407051902231657','A01','1',10,200,'2014-07-05 19:02:04','CG982000','Company1',2000),(1000,1000,NULL,'000041','L',NULL,'201407051902248197','A01','1',10,100,'2014-07-05 19:02:56','CG982000','Company1',1000),(200,200,NULL,'000031','K',NULL,'201407051902978156','A01','1',10,20,'2014-07-05 19:02:33','CG982000','Company1',200),(500,500,NULL,'000042','M',NULL,'201407051903750134','A01','1',10,50,'2014-07-05 19:03:51','CG982000','Company1',500),(300,300,NULL,'000043','N',NULL,'20140705190457412','A01','1',10,30,'2014-07-05 19:04:37','CG982000','Company1',300),(200,200,NULL,'000044','O',NULL,'201407051905345201','A01','1',10,20,'2014-07-05 19:05:05','CG982001','Milandou',200),(200,200,NULL,'000045','P',NULL,'201407051905873605','A01','1',10,20,'2014-07-05 19:05:35','CG982002','Koufoutila',200),(200,200,NULL,'000046','Q',NULL,'201407051906578164','A01','1',10,20,'2014-07-05 19:06:13','CG982003','Mm',200),(200,200,NULL,'000047','R',NULL,'201407051906983026','A01','1',10,20,'2014-07-05 19:06:38','CG982004','Gladiss',200),(280000,280000,NULL,'000100','T',NULL,'201407051907372495','A01','1',10,28000,'2014-07-05 19:07:41','CG982006','Company3',280000),(2000,2000,NULL,'000050','S',NULL,'201407051907637904','A01','1',10,200,'2014-07-05 19:07:14','CG982005','Company2',2000),(1000,1000,NULL,'000101','U',NULL,'201407051908235081','A01','1',10,100,'2014-07-05 19:08:32','CG982007','Company4',1000),(73000,73000,NULL,'001000','TT',NULL,'201407051908437108','A01','1',10,7300,'2014-07-05 19:08:08','CG982006','Company3',73000),(20,20,NULL,'000021','V',NULL,'201407051908942865','A01','1',10,2,'2014-07-05 19:08:57','CG982003','Mm',20),(10,10,NULL,'000102','W',NULL,'201407051909703159','A01','1',10,1,'2014-07-05 19:09:15','CG982002','Koufoutila',10),(50,50,NULL,'000103','X',NULL,'201407051909710459','A01','1',10,5,'2014-07-05 19:25:49','CG982001','Milandou',50),(300,300,NULL,'000105','Z',NULL,'201407051910374912','A01','1',10,30,'2014-07-05 19:10:23','CG982000','Company1',300),(100,100,NULL,'000022','Y',NULL,'201407051910738016','A01','1',10,10,'2014-07-05 19:10:00','CG982000','Company1',100),(73000,73000,NULL,'001002','II',NULL,'201407051911508946','A01','1',10,7300,'2014-07-05 19:11:38','CG982000','Company1',73000),(16000,16000,NULL,'001001','HH',NULL,'201407051911926108','A01','1',10,1600,'2014-07-05 19:11:04','CG982000','Company1',16000),(1000,1000,NULL,'000108','BB',NULL,'201407051912689354','A01','1',10,100,'2014-07-05 19:12:39','CG982003','Mm',1000),(500,500,NULL,'000106','AA',NULL,'201407051912895740','A01','1',10,50,'2014-07-05 19:12:10','CG982007','Company4',500),(200,200,NULL,'000026','DD',NULL,'20140705191339715','A01','1',10,20,'2014-07-05 19:13:44','CG982001','Milandou',200),(300,300,NULL,'000025','CC',NULL,'201407051913841630','A01','1',10,30,'2014-07-05 19:13:19','CG982002','Koufoutila',300),(200,200,NULL,'000028','EE',NULL,'201407051914243178','A01','1',10,20,'2014-07-05 19:14:10','CG982000','Company1',200),(200,200,NULL,'000030','FF',NULL,'201407051914273490','A01','1',10,20,'2014-07-05 19:14:37','CG982001','Milandou',200),(200,200,NULL,'000029','GG',NULL,'201407051915609518','A01','1',10,20,'2014-07-05 19:15:01','CG982000','Company1',200);

/*Table structure for table `t_product` */

DROP TABLE IF EXISTS `t_product`;

CREATE TABLE `t_product` (
  `product_code` varchar(15) NOT NULL COMMENT '产品编码(主键)',
  `product_name` varchar(64) NOT NULL COMMENT '产品名称',
  `product_price` double NOT NULL DEFAULT '0' COMMENT '产品价格',
  `product_pv` double NOT NULL DEFAULT '0' COMMENT 'PV值',
  `product_bv` double NOT NULL DEFAULT '0' COMMENT 'BV值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '产品状态(上架/下架)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`product_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_product` */

insert  into `t_product`(`product_code`,`product_name`,`product_price`,`product_pv`,`product_bv`,`remark`,`status`,`create_time`) values ('A02','2',5,5,5,NULL,'1','2014-06-08 00:31:23'),('A01','1',10,10,10,NULL,'1','2014-06-08 00:30:45');

/*Table structure for table `t_purchaser` */

DROP TABLE IF EXISTS `t_purchaser`;

CREATE TABLE `t_purchaser` (
  `shop_code` varchar(11) DEFAULT NULL COMMENT '所属店铺编码',
  `rank_code` varchar(11) DEFAULT NULL COMMENT '等级编码',
  `purchaser_code` varchar(8) NOT NULL COMMENT '经销商编码(主键)',
  `purchaser_name` varchar(255) DEFAULT NULL COMMENT '经销商名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `phone` varchar(40) DEFAULT NULL COMMENT '联系号码',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sponsor_code` varchar(8) DEFAULT NULL COMMENT '上级经销商编码',
  `floors` int(11) DEFAULT '0' COMMENT '层级 最上面是第一层 以此类推',
  `bankAcc` int(255) DEFAULT '0' COMMENT '银行账户',
  `rank_name` varchar(11) DEFAULT NULL COMMENT '等级名称',
  `shop_name` varchar(11) DEFAULT NULL COMMENT '所属店铺名称',
  `sponsor_name` varchar(255) DEFAULT NULL COMMENT '上级经销商名称',
  `purchaser_pass` varchar(255) DEFAULT '0000' COMMENT '经销商登陆密码',
  `purchaser_gender` varchar(255) DEFAULT NULL COMMENT '经销商性别',
  `purchaser_age` int(3) DEFAULT '0' COMMENT '经销商年龄',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `upper_codes` longtext COMMENT '所有上线编号集合',
  PRIMARY KEY (`purchaser_code`),
  KEY `FK_Reference_2` (`shop_code`),
  KEY `FK_Reference_4` (`rank_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_purchaser` */

insert  into `t_purchaser`(`shop_code`,`rank_code`,`purchaser_code`,`purchaser_name`,`create_time`,`address`,`phone`,`remark`,`sponsor_code`,`floors`,`bankAcc`,`rank_name`,`shop_name`,`sponsor_name`,`purchaser_pass`,`purchaser_gender`,`purchaser_age`,`update_time`,`upper_codes`) values ('CG982000','102006','000001','ANGEL','2012-02-06 17:59:11','锁定','锁定',NULL,'00000000',0,0,'','LOCKED','LOCKED','0000','男',26,'2014-06-03 00:21:10',NULL),('CG982002','102005','000099','H','2014-06-08 00:27:55',NULL,NULL,NULL,'000003',2,NULL,NULL,NULL,'alex','',NULL,NULL,'2014-06-08 02:58:58','999,000001,000003'),('CG982003','102004','000009','G','2014-06-08 00:27:22',NULL,NULL,NULL,'000003',2,NULL,NULL,NULL,'alex','',NULL,NULL,'2014-06-08 02:58:43','999,000001,000003'),('CG982007','102004','000008','F','2014-06-08 00:26:53',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-06-08 02:58:39','999,000001,000002'),('CG982006','102004','000007','E','2014-06-08 00:26:21',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-06-08 02:58:36','999,000001,000002'),('CG982005','102003','012345','D','2014-06-08 00:25:45',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-06-08 02:59:01','999,000001,000002'),('CG982004','102003','099999','C','2014-06-08 00:24:45',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-06-08 02:59:04','999,000001,000002'),('CG982003','102003','000010','B','2014-06-08 00:23:50',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-06-08 02:58:47','999,000001,000002'),('CG982002','102004','000005','A','2014-06-08 00:23:14',NULL,NULL,NULL,'000001',1,NULL,NULL,NULL,'ANGEL','',NULL,NULL,'2014-06-08 02:58:32','999,000001'),('CG982001','102005','000004','milandou','2014-06-08 00:22:36',NULL,NULL,NULL,'000001',1,NULL,NULL,NULL,'ANGEL','',NULL,NULL,'2014-06-08 02:58:29','999,000001'),('CG982000','102005','000003','alex','2014-06-08 00:21:44',NULL,NULL,NULL,'000001',1,NULL,NULL,NULL,'ANGEL','',NULL,NULL,'2014-06-08 02:58:24','999,000001'),('CG982000','102007','000002','quentin','2014-06-08 00:15:20',NULL,NULL,NULL,'000001',1,NULL,NULL,NULL,'ANGEL','',NULL,NULL,'2014-06-08 02:58:17','999,000001'),('CG982001','102005','000094','I','2014-06-08 00:28:31',NULL,NULL,NULL,'000004',2,NULL,NULL,NULL,'milandou','',NULL,NULL,'2014-06-08 02:58:53','999,000001,000004'),('CG982000','102005','000097','J','2014-06-08 00:29:11',NULL,NULL,NULL,'000004',2,NULL,NULL,NULL,'milandou','',NULL,NULL,'2014-06-08 14:43:47','999,000001,000004'),('CG982000','102003','000031','K','2014-06-08 00:29:40',NULL,NULL,NULL,'000005',2,NULL,NULL,NULL,'A','',NULL,NULL,'2014-06-08 02:58:50','999,000001,000005'),('CG982000','102004','000041','L','2014-07-05 18:33:40',NULL,NULL,NULL,'000010',3,NULL,NULL,NULL,'B','',NULL,NULL,'2014-07-05 18:33:40','999,000001,000002,000010'),('CG982000','102003','000042','M','2014-07-05 18:34:28',NULL,NULL,NULL,'000041',4,NULL,NULL,NULL,'L','',NULL,NULL,'2014-07-05 18:34:28','999,000001,000002,000010,000041'),('CG982000','102003','000043','N','2014-07-05 18:34:59',NULL,NULL,NULL,'099999',3,NULL,NULL,NULL,'C','',NULL,NULL,'2014-07-05 18:34:59','999,000001,000002,099999'),('CG982001','102003','000044','O','2014-07-05 18:35:23',NULL,NULL,NULL,'000043',4,NULL,NULL,NULL,'N','',NULL,NULL,'2014-07-05 18:35:23','999,000001,000002,099999,000043'),('CG982002','102003','000045','P','2014-07-05 18:36:15',NULL,NULL,NULL,'099999',3,NULL,NULL,NULL,'C','',NULL,NULL,'2014-07-05 18:36:15','999,000001,000002,099999'),('CG982003','102003','000046','Q','2014-07-05 18:37:49',NULL,NULL,NULL,'000045',4,NULL,NULL,NULL,'P','',NULL,NULL,'2014-07-05 18:37:49','999,000001,000002,099999,000045'),('CG982004','102003','000047','R','2014-07-05 18:38:25',NULL,NULL,NULL,'000045',4,NULL,NULL,NULL,'P','',NULL,NULL,'2014-07-05 18:38:25','999,000001,000002,099999,000045'),('CG982005','102004','000050','S','2014-07-05 18:39:00',NULL,NULL,NULL,'012345',3,NULL,NULL,NULL,'D','',NULL,NULL,'2014-07-05 18:39:00','999,000001,000002,012345'),('CG982006','102008','000100','T','2014-07-05 18:39:34',NULL,NULL,NULL,'000007',3,NULL,NULL,NULL,'E','',NULL,NULL,'2014-07-05 18:39:34','999,000001,000002,000007'),('CG982006','102007','001000','TT','2014-07-05 18:40:06',NULL,NULL,NULL,'000100',4,NULL,NULL,NULL,'T','',NULL,NULL,'2014-07-05 18:40:06','999,000001,000002,000007,000100'),('CG982007','102004','000101','U','2014-07-05 18:40:36',NULL,NULL,NULL,'000008',3,NULL,NULL,NULL,'F','',NULL,NULL,'2014-07-05 18:40:36','999,000001,000002,000008'),('CG982003','102001','000021','V','2014-07-05 18:42:13',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-07-05 18:42:13','999,000001,000002'),('CG982002','102001','000102','W','2014-07-05 18:43:04',NULL,NULL,NULL,'000021',3,NULL,NULL,NULL,'V','',NULL,NULL,'2014-07-05 18:43:04','999,000001,000002,000021'),('CG982001','102001','000103','X','2014-07-05 18:43:38',NULL,NULL,NULL,'000021',3,NULL,NULL,NULL,'V','',NULL,NULL,'2014-07-05 18:43:38','999,000001,000002,000021'),('CG982000','102003','000022','Y','2014-07-05 18:44:07',NULL,NULL,NULL,'000002',2,NULL,NULL,NULL,'quentin','',NULL,NULL,'2014-07-05 18:44:07','999,000001,000002'),('CG982000','102003','000105','Z','2014-07-05 18:44:47',NULL,NULL,NULL,'000022',3,NULL,NULL,NULL,'Y','',NULL,NULL,'2014-07-05 18:44:47','999,000001,000002,000022'),('CG982000','102006','001001','HH','2014-07-05 18:45:22',NULL,NULL,NULL,'000105',4,NULL,NULL,NULL,'Z','',NULL,NULL,'2014-07-05 18:46:22','999,000001,000002,000022,000105'),('CG982000','102007','001002','II','2014-07-05 18:45:58',NULL,NULL,NULL,'001001',5,NULL,NULL,NULL,'H','',NULL,NULL,'2014-07-05 18:45:58','999,000001,000002,000022,000105,001001'),('CG982007','102003','000106','AA','2014-07-05 18:47:29',NULL,NULL,NULL,'000009',3,NULL,NULL,NULL,'G','',NULL,NULL,'2014-07-05 18:47:29','999,000001,000003,000009'),('CG982003','102004','000108','BB','2014-07-05 18:48:15',NULL,NULL,NULL,'000099',3,NULL,NULL,NULL,'H','',NULL,NULL,'2014-07-05 18:48:15','999,000001,000003,000099'),('CG982002','102003','000025','CC','2014-07-05 18:48:52',NULL,NULL,NULL,'000003',2,NULL,NULL,NULL,'alex','',NULL,NULL,'2014-07-05 18:48:52','999,000001,000003'),('CG982001','102003','000026','DD','2014-07-05 18:49:43',NULL,NULL,NULL,'000004',2,NULL,NULL,NULL,'milandou','',NULL,NULL,'2014-07-05 18:49:43','999,000001,000004'),('CG982000','102003','000028','EE','2014-07-05 18:50:34',NULL,NULL,NULL,'000004',2,NULL,NULL,NULL,'milandou','',NULL,NULL,'2014-07-05 18:50:34','999,000001,000004'),('CG982001','102003','000030','FF','2014-07-05 18:51:21',NULL,NULL,NULL,'000005',2,NULL,NULL,NULL,'A','',NULL,NULL,'2014-07-05 18:51:21','999,000001,000005'),('CG982000','102003','000029','GG','2014-07-05 18:51:55',NULL,NULL,NULL,'000005',2,NULL,NULL,NULL,'A','',NULL,NULL,'2014-07-05 18:51:55','999,000001,000005');

/*Table structure for table `t_rank` */

DROP TABLE IF EXISTS `t_rank`;

CREATE TABLE `t_rank` (
  `rank_code` varchar(11) NOT NULL COMMENT '等级编码',
  `rank_name` varchar(64) DEFAULT NULL COMMENT '等级名称',
  `direct_bouns_rate` double DEFAULT NULL COMMENT '直接奖比例',
  `indirect_bouns_rate` double DEFAULT NULL COMMENT '间接奖比例',
  `leader_bouns_rate` double DEFAULT NULL COMMENT '领导奖比例',
  PRIMARY KEY (`rank_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_rank` */

insert  into `t_rank`(`rank_code`,`rank_name`,`direct_bouns_rate`,`indirect_bouns_rate`,`leader_bouns_rate`) values ('102001','1',5,NULL,NULL),('102002','2',15,NULL,NULL),('102003','3',22,NULL,NULL),('102004','4',26,NULL,NULL),('102005','5',30,NULL,NULL),('102006','6',32,NULL,NULL),('102007','7',37,NULL,NULL),('102008','8',43,NULL,NULL),('102009','9',45,NULL,NULL);

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `shop_code` varchar(8) NOT NULL COMMENT '店铺编码(主键)',
  `shop_name` varchar(64) DEFAULT NULL COMMENT '店铺名称',
  `shop_owner` varchar(8) DEFAULT NULL COMMENT '店主',
  `shop_country` varchar(64) DEFAULT NULL COMMENT '所在国家',
  `shop_city` varchar(64) DEFAULT NULL COMMENT '所在城市',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `shop_street` varchar(255) DEFAULT NULL COMMENT '店铺街道',
  PRIMARY KEY (`shop_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_shop` */

insert  into `t_shop`(`shop_code`,`shop_name`,`shop_owner`,`shop_country`,`shop_city`,`create_time`,`shop_street`) values ('CG982002','Koufoutila','00000002','cg','cg','2012-02-03 23:41:52','cg'),('CG982001','Milandou','00000001','cg','cg','2012-02-03 23:34:27','cg'),('CG982003','Mm','00000003','cg','cg','2012-02-03 23:43:30','cg'),('CG982004','Gladiss','00010000','cg','cg','2012-02-03 23:43:57','cg'),('CG982000','Company1','000000','cg','cg','2012-02-03 23:59:48','cg'),('CG982005','Company2','000000','cg','cg','2012-02-03 23:59:48','cg'),('CG982006','Company3','000000','cg','cg','2012-02-03 23:59:48','cg'),('CG982007','Company4','000000','cg','cg','2012-02-03 23:59:48','cg'),('CG982008','Company5','000000','cg','cg','2012-02-03 23:59:48','cg');

/* Procedure structure for procedure `proc_network` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_network` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_network`(
	p_distributorCode CHAR(8),
	p_date VARCHAR(100)
    )
BEGIN
	DECLARE v_id INT(8);
	DECLARE v_floor INT(11);
	SELECT u.res_id ,u.floors INTO v_id ,v_floor FROM t_distributor u WHERE u.distributor_code=p_distributorCode;
	SELECT t.floors AS FLOOR ,t.sponsor_code AS SPONSOR_CODE ,s.shop_code AS SHOP_CODE ,
	t.distributor_name AS NAME,t.sponsor_name AS SPONSOR_NAME,t.distributor_code AS CODE,r.rank_name AS RANK,
	g.accu_achieve AS ACCU_PV , g.accu_p_achieve AS PERSONAL_APV ,g.net_achieve AS TNPV ,g.person_achieve AS PERSONAL_PV,
	g.bonus_achieve AS PERSONAL_BV ,g.cell_achieve AS GPV 
	FROM t_distributor t 
	LEFT JOIN t_shop_info s ON s.res_id=t.shop_id 
	LEFT  JOIN t_distributor_rank r ON r.res_id=t.rank_id 
	LEFT JOIN t_distributor_grade_his g ON g.distributor_code=t.distributor_code 
	WHERE FIND_IN_SET(t.res_id,getChildLst(v_id)) 
	AND t.floors>v_floor-1 AND DATE_FORMAT(g.achieve_date,'%Y-%m-%d')= p_date
	ORDER BY t.floors ASC; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `test_procedure` */

/*!50003 DROP PROCEDURE IF EXISTS  `test_procedure` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `test_procedure`()
BEGIN
	SELECT VERSION();
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
