/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chuanbo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuanbo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuanbo`;

/*Table structure for table `cailiaocankao` */

DROP TABLE IF EXISTS `cailiaocankao`;

CREATE TABLE `cailiaocankao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cailiaocankao_uuid_number` varchar(200) DEFAULT NULL COMMENT '材料编号',
  `cailiaocankao_name` varchar(200) DEFAULT NULL COMMENT '材料名称  Search111 ',
  `cailiao_types` int(11) DEFAULT NULL COMMENT '材料类型 Search111',
  `cailiaocankao_danwei` varchar(200) DEFAULT NULL COMMENT '单价单位',
  `cailiaocankao_danjia` decimal(10,2) DEFAULT NULL COMMENT '参考单价',
  `cailiaocankao_guige` varchar(200) DEFAULT NULL COMMENT '材料规格',
  `cailiaocankao_file` varchar(200) DEFAULT NULL COMMENT '执行标准',
  `cailiaocankao_gongsi` varchar(200) DEFAULT NULL COMMENT '推荐公司',
  `cailiaocankao_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='材料参考';

/*Data for the table `cailiaocankao` */

insert  into `cailiaocankao`(`id`,`cailiaocankao_uuid_number`,`cailiaocankao_name`,`cailiao_types`,`cailiaocankao_danwei`,`cailiaocankao_danjia`,`cailiaocankao_guige`,`cailiaocankao_file`,`cailiaocankao_gongsi`,`cailiaocankao_content`,`insert_time`,`create_time`) values (1,'1380000000042','材料名称1',2,'个','93.37','材料规格1','upload/file.rar','推荐公司1','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,'1380000000058','材料名称2',1,'个','241.31','材料规格2','upload/file.rar','推荐公司2','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,'1380000000060','材料名称3',3,'个','979.41','材料规格3','upload/file.rar','推荐公司3','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,'1380000000052','材料名称4',4,'个','561.74','材料规格4','upload/file.rar','推荐公司4','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,'1380000000016','材料名称5',1,'个','533.79','材料规格5','upload/file.rar','推荐公司5','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,'1380000000046','材料名称6',4,'个','18.97','材料规格6','upload/file.rar','推荐公司6','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,'1380000000029','材料名称7',1,'个','838.24','材料规格7','upload/file.rar','推荐公司7','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,'1380000000084','材料名称8',1,'个','636.46','材料规格8','upload/file.rar','推荐公司8','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,'1380000000099','材料名称9',2,'个','747.30','材料规格9','upload/file.rar','推荐公司9','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,'1380000000053','材料名称10',1,'个','918.76','材料规格10','upload/file.rar','推荐公司10','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,'1380000000023','材料名称11',1,'个','157.66','材料规格11','upload/file.rar','推荐公司11','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,'1380000000037','材料名称12',1,'个','140.85','材料规格12','upload/file.rar','推荐公司12','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,'1380000000038','材料名称13',3,'个','827.83','材料规格13','upload/file.rar','推荐公司13','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,'1380000000038','材料名称14',4,'个','933.18','材料规格14','upload/file.rar','推荐公司14','备注14','2023-04-10 17:16:36','2023-04-10 17:16:36');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-10 17:15:56'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-10 17:15:56'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-10 17:15:56'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-10 17:15:56'),(5,'bumen_types','部门',1,'部门1',NULL,NULL,'2023-04-10 17:15:56'),(6,'bumen_types','部门',2,'部门2',NULL,NULL,'2023-04-10 17:15:56'),(7,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2023-04-10 17:15:57'),(8,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2023-04-10 17:15:57'),(9,'xiangmu_types','项目类型',1,'项目类型1',NULL,NULL,'2023-04-10 17:15:57'),(10,'xiangmu_types','项目类型',2,'项目类型2',NULL,NULL,'2023-04-10 17:15:57'),(11,'xiangmu_types','项目类型',3,'项目类型3',NULL,NULL,'2023-04-10 17:15:57'),(12,'xiangmu_types','项目类型',4,'项目类型4',NULL,NULL,'2023-04-10 17:15:57'),(13,'cailiao_types','材料类型',1,'材料类型1',NULL,NULL,'2023-04-10 17:15:57'),(14,'cailiao_types','材料类型',2,'材料类型2',NULL,NULL,'2023-04-10 17:15:57'),(15,'cailiao_types','材料类型',3,'材料类型3',NULL,NULL,'2023-04-10 17:15:57'),(16,'cailiao_types','材料类型',4,'材料类型4',NULL,NULL,'2023-04-10 17:15:57'),(17,'xiangmu_tuzhi_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-10 17:15:57'),(18,'xiangmu_tuzhi_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-10 17:15:57'),(19,'xiangmu_tuzhi_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-10 17:15:57'),(20,'xiangmu_tuzhi_types','图纸类型',1,'图纸类型1',NULL,NULL,'2023-04-10 17:15:57'),(21,'xiangmu_tuzhi_types','图纸类型',2,'图纸类型2',NULL,NULL,'2023-04-10 17:15:57'),(22,'xiangmu_tuzhi_types','图纸类型',3,'图纸类型3',NULL,NULL,'2023-04-10 17:15:57'),(23,'xiangmu_tuzhi_types','图纸类型',4,'图纸类型4',NULL,NULL,'2023-04-10 17:15:57'),(24,'jianzaocaiwu_types','消费类型',1,'材料花费',NULL,NULL,'2023-04-10 17:15:57'),(25,'jianzaocaiwu_types','消费类型',2,'员工花费',NULL,NULL,'2023-04-10 17:15:57'),(26,'hege_types','是否合格',1,'不合格',NULL,NULL,'2023-04-10 17:15:57'),(27,'hege_types','是否合格',2,'合格',NULL,NULL,'2023-04-10 17:15:57'),(28,'jianzaojindu_types','进度类型',1,'刚开工',NULL,NULL,'2023-04-10 17:15:57'),(29,'jianzaojindu_types','进度类型',2,'监造主体',NULL,NULL,'2023-04-10 17:15:57'),(30,'jianzaojindu_types','进度类型',3,'监造船身',NULL,NULL,'2023-04-10 17:15:57'),(31,'jianzaojindu_types','进度类型',4,'监造龙骨',NULL,NULL,'2023-04-10 17:15:57'),(32,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-10 17:15:58'),(33,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-10 17:15:58'),(34,'xiangmu_tuzhi_types','图纸类型',5,'图纸类型5',NULL,'','2023-04-11 09:20:16');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',2,'2023-04-10 17:16:36','公告详情1','2023-04-10 17:16:36'),(2,'公告名称2',1,'2023-04-10 17:16:36','公告详情2','2023-04-10 17:16:36'),(3,'公告名称3',2,'2023-04-10 17:16:36','公告详情3','2023-04-10 17:16:36'),(4,'公告名称4',1,'2023-04-10 17:16:36','公告详情4','2023-04-10 17:16:36'),(5,'公告名称5',2,'2023-04-10 17:16:36','公告详情5','2023-04-10 17:16:36'),(6,'公告名称6',1,'2023-04-10 17:16:36','公告详情6','2023-04-10 17:16:36'),(7,'公告名称7',2,'2023-04-10 17:16:36','公告详情7','2023-04-10 17:16:36'),(8,'公告名称8',1,'2023-04-10 17:16:36','公告详情8','2023-04-10 17:16:36'),(9,'公告名称9',2,'2023-04-10 17:16:36','公告详情9','2023-04-10 17:16:36'),(10,'公告名称10',1,'2023-04-10 17:16:36','公告详情10','2023-04-10 17:16:36'),(11,'公告名称11',1,'2023-04-10 17:16:36','公告详情11','2023-04-10 17:16:36'),(12,'公告名称12',2,'2023-04-10 17:16:36','公告详情12','2023-04-10 17:16:36'),(13,'公告名称13',2,'2023-04-10 17:16:36','公告详情13','2023-04-10 17:16:36'),(14,'公告名称14',2,'2023-04-10 17:16:36','公告详情14','2023-04-10 17:16:36');

/*Table structure for table `jianzaocaiwu` */

DROP TABLE IF EXISTS `jianzaocaiwu`;

CREATE TABLE `jianzaocaiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jianzaocaiwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '监造财务编号',
  `jianzaocaiwu_name` varchar(200) DEFAULT NULL COMMENT '花费标题 Search111 ',
  `jianzaocaiwu_types` int(11) DEFAULT NULL COMMENT '消费类型 Search111',
  `jianzaojindu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jianzaocaiwu_mingcheng` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `jianzaocaiwu_danjia` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `jianzaocaiwu_number` int(11) DEFAULT NULL COMMENT '数量',
  `jianzaocaiwu_zongjine` decimal(10,2) DEFAULT NULL COMMENT '应金额',
  `jianzaocaiwu_shiji_zongjine` decimal(10,2) DEFAULT NULL COMMENT '实际金额',
  `hege_types` int(11) DEFAULT NULL COMMENT '是否合格 Search111',
  `jianzaocaiwu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='监造财务';

/*Data for the table `jianzaocaiwu` */

insert  into `jianzaocaiwu`(`id`,`xiangmu_id`,`yuangong_id`,`jianzaocaiwu_uuid_number`,`jianzaocaiwu_name`,`jianzaocaiwu_types`,`jianzaojindu_file`,`jianzaocaiwu_mingcheng`,`jianzaocaiwu_danjia`,`jianzaocaiwu_number`,`jianzaocaiwu_zongjine`,`jianzaocaiwu_shiji_zongjine`,`hege_types`,`jianzaocaiwu_content`,`insert_time`,`create_time`) values (1,1,2,'1380000000096','花费标题1',1,'upload/file.rar','名称1','217.59',424,'53.85','892.28',2,'备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,1,'1380000000055','花费标题2',2,'upload/file.rar','名称2','779.36',17,'738.39','234.31',1,'备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,3,'1380000000042','花费标题3',2,'upload/file.rar','名称3','693.09',244,'812.00','559.00',2,'备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,1,'1380000000045','花费标题4',2,'upload/file.rar','名称4','169.81',276,'837.12','119.90',2,'备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,2,'1380000000063','花费标题5',2,'upload/file.rar','名称5','615.80',440,'810.73','828.26',2,'备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,2,'1380000000091','花费标题6',2,'upload/file.rar','名称6','489.56',121,'407.21','727.28',2,'备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,1,'1380000000084','花费标题7',2,'upload/file.rar','名称7','460.05',125,'221.88','320.90',1,'备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,2,'1380000000045','花费标题8',2,'upload/file.rar','名称8','913.18',74,'967.69','343.58',2,'备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,3,'1380000000032','花费标题9',1,'upload/file.rar','名称9','556.31',393,'849.99','507.49',1,'备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,3,'1380000000074','花费标题10',2,'upload/file.rar','名称10','950.49',85,'567.28','279.46',2,'备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,2,'1380000000045','花费标题11',1,'upload/file.rar','名称11','895.19',84,'705.48','737.40',1,'备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,1,'1380000000010','花费标题12',1,'upload/file.rar','名称12','909.78',238,'566.41','829.62',1,'备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,1,'1380000000015','花费标题13',2,'upload/file.rar','名称13','857.68',3,'2573.04','605.36',2,'<p>备注13</p>','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,3,'1380000000078','花费标题14',1,'upload/file.rar','名称14','638.76',2,'1277.52','30.10',1,'<p>备注14</p>','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,15,1,'1380000000040','花费1111',1,'/upload/1380000000043.doc','标题1111','200.00',4,'800.00','801.00',2,'<p>挂是懂法守法撒发的</p>','2023-04-11 09:17:02','2023-04-11 09:17:02');

/*Table structure for table `jianzaojindu` */

DROP TABLE IF EXISTS `jianzaojindu`;

CREATE TABLE `jianzaojindu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jianzaojindu_uuid_number` varchar(200) DEFAULT NULL COMMENT '监造进度编号',
  `jianzaojindu_name` varchar(200) DEFAULT NULL COMMENT '进度标题 Search111 ',
  `jianzaojindu_types` int(11) DEFAULT NULL COMMENT '进度类型 Search111',
  `jianzaojindu_zhengchang_number` int(11) DEFAULT NULL COMMENT '正常进度(%)',
  `jianzaojindu_xianzai_number` int(11) DEFAULT NULL COMMENT '现在进度(%)',
  `jianzaojindu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jianzaojindu_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `jianzaojindu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='监造进度';

/*Data for the table `jianzaojindu` */

insert  into `jianzaojindu`(`id`,`xiangmu_id`,`yuangong_id`,`jianzaojindu_uuid_number`,`jianzaojindu_name`,`jianzaojindu_types`,`jianzaojindu_zhengchang_number`,`jianzaojindu_xianzai_number`,`jianzaojindu_file`,`jianzaojindu_time`,`jianzaojindu_content`,`insert_time`,`create_time`) values (1,1,3,'1380000000056','进度标题1',2,207,168,'upload/file.rar','2023-04-10 17:16:36','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,3,'1380000000086','进度标题2',2,269,22,'upload/file.rar','2023-04-10 17:16:36','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,1,'1380000000099','进度标题3',1,456,137,'upload/file.rar','2023-04-10 17:16:36','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,3,'1380000000060','进度标题4',2,192,486,'upload/file.rar','2023-04-10 17:16:36','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,1,'1380000000087','进度标题5',1,483,189,'upload/file.rar','2023-04-10 17:16:36','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,1,'1380000000022','进度标题6',3,142,467,'upload/file.rar','2023-04-10 17:16:36','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,1,'1380000000048','进度标题7',3,426,145,'upload/file.rar','2023-04-10 17:16:36','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,3,'1380000000038','进度标题8',1,2,167,'upload/file.rar','2023-04-10 17:16:36','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,2,'1380000000044','进度标题9',3,377,326,'upload/file.rar','2023-04-10 17:16:36','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,3,'1380000000078','进度标题10',3,381,149,'upload/file.rar','2023-04-10 17:16:36','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,3,'1380000000080','进度标题11',4,205,484,'upload/file.rar','2023-04-10 17:16:36','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,2,'1380000000015','进度标题12',1,104,217,'upload/file.rar','2023-04-10 17:16:36','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,2,'1380000000022','进度标题13',1,200,154,'upload/file.rar','2023-04-10 17:16:36','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,2,'1380000000052','进度标题14',1,381,202,'upload/file.rar','2023-04-10 17:16:36','备注14','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,15,1,'1380000000003','刚开工111',1,10,11,'/upload/1380000000055.doc','2023-04-11 09:17:41','<p>噶事的第三方</p>','2023-04-11 09:17:43','2023-04-11 09:17:43');

/*Table structure for table `jingfeiyugu` */

DROP TABLE IF EXISTS `jingfeiyugu`;

CREATE TABLE `jingfeiyugu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jingfeiyugu_uuid_number` varchar(200) DEFAULT NULL COMMENT '经费预估编号',
  `jingfeiyugu_name` varchar(200) DEFAULT NULL COMMENT '材料名称  Search111 ',
  `jingfeiyugu_danwei` varchar(200) DEFAULT NULL COMMENT '单价单位',
  `jingfeiyugu_danjia` decimal(10,2) DEFAULT NULL COMMENT '材料单价',
  `cailiao_types` int(11) DEFAULT NULL COMMENT '材料类型 Search111',
  `jingfeiyugu_number` int(11) DEFAULT NULL COMMENT '所需数量',
  `jingfeiyugu_zongjia` decimal(10,2) DEFAULT NULL COMMENT '预计总价',
  `jingfeiyugu_gongsi` varchar(200) DEFAULT NULL COMMENT '推荐公司',
  `jingfeiyugu_file` varchar(200) DEFAULT NULL COMMENT '执行标准',
  `jingfeiyugu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='经费预估';

/*Data for the table `jingfeiyugu` */

insert  into `jingfeiyugu`(`id`,`xiangmu_id`,`yuangong_id`,`jingfeiyugu_uuid_number`,`jingfeiyugu_name`,`jingfeiyugu_danwei`,`jingfeiyugu_danjia`,`cailiao_types`,`jingfeiyugu_number`,`jingfeiyugu_zongjia`,`jingfeiyugu_gongsi`,`jingfeiyugu_file`,`jingfeiyugu_content`,`insert_time`,`create_time`) values (1,1,1,'1380000000036','材料名称1','个','333.19',4,442,'971.33','推荐公司1','upload/file.rar','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,2,'1380000000020','材料名称2','个','495.41',4,127,'199.34','推荐公司2','upload/file.rar','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,3,'1380000000008','材料名称3','个','395.21',4,430,'387.11','推荐公司3','upload/file.rar','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,1,'1380000000078','材料名称4','个','502.15',2,236,'457.61','推荐公司4','upload/file.rar','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,1,'1380000000016','材料名称5','个','743.27',1,323,'974.18','推荐公司5','upload/file.rar','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,3,'1380000000002','材料名称6','个','904.34',1,196,'571.51','推荐公司6','upload/file.rar','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,2,'1380000000096','材料名称7','个','738.50',2,292,'291.84','推荐公司7','upload/file.rar','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,3,'1380000000041','材料名称8','个','818.44',1,421,'388.51','推荐公司8','upload/file.rar','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,2,'1380000000090','材料名称9','个','790.41',1,310,'958.05','推荐公司9','upload/file.rar','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,2,'1380000000081','材料名称10','个','254.28',4,166,'977.75','推荐公司10','upload/file.rar','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,1,'1380000000051','材料名称11','个','396.09',2,299,'721.38','推荐公司11','upload/file.rar','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,2,'1380000000032','材料名称12','个','956.36',4,383,'463.16','推荐公司12','upload/file.rar','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,3,'1380000000071','材料名称13','个','813.48',4,24,'439.56','推荐公司13','upload/file.rar','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,2,'1380000000042','材料名称14','个','160.29',2,2,'320.58','推荐公司14','upload/file.rar','<p>备注14</p>','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,15,1,'1380000000082','材料111','吨','99.00',4,3,'297.00','公司1111','/upload/1380000000039.doc','<p>灌砂法撒发放干热风</p>','2023-04-11 09:16:11','2023-04-11 09:16:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','vh6zkm5wru4gz3g73ufsed71ekuhoid2','2023-04-10 17:21:40','2023-04-11 10:23:51'),(2,1,'a1','yonghu','用户','jeunbgmlij8nu1a9hafrluy8nlr5x183','2023-04-11 09:10:54','2023-04-11 10:15:02'),(3,4,'a5','yonghu','用户','39nh60hyzxp6eglmgcgxyn57eb9zhpcf','2023-04-11 09:11:05','2023-04-11 10:21:14'),(4,1,'a1','yuangong','员工','fk1bhfd83eh97m9plt3vgdcyv2mgz586','2023-04-11 09:15:28','2023-04-11 10:15:29');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-10 17:15:56');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `xiangmu_address` varchar(200) DEFAULT NULL COMMENT '监造地点',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '建造资料',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `xiangmu_kucun_number` int(11) DEFAULT NULL COMMENT '监造数量',
  `shenqing_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `nachuan_time` timestamp NULL DEFAULT NULL COMMENT '拿船时间',
  `xiangmu_content` longtext COMMENT '监造要求',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`yonghu_id`,`xiangmu_uuid_number`,`xiangmu_name`,`xiangmu_address`,`xiangmu_file`,`xiangmu_types`,`xiangmu_kucun_number`,`shenqing_time`,`nachuan_time`,`xiangmu_content`,`insert_time`,`create_time`) values (1,2,'1380000000066','项目名称1','监造地点1','upload/file.rar',3,101,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,1,'1380000000086','项目名称2','监造地点2','upload/file.rar',1,102,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,2,'1380000000074','项目名称3','监造地点3','upload/file.rar',1,103,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,1,'1380000000057','项目名称4','监造地点4','upload/file.rar',4,104,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,2,'1380000000057','项目名称5','监造地点5','upload/file.rar',4,105,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,1,'1380000000067','项目名称6','监造地点6','upload/file.rar',1,106,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,1,'1380000000098','项目名称7','监造地点7','upload/file.rar',2,107,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,3,'1380000000009','项目名称8','监造地点8','upload/file.rar',3,108,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,1,'1380000000072','项目名称9','监造地点9','upload/file.rar',4,109,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,2,'1380000000074','项目名称10','监造地点10','upload/file.rar',2,1010,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,2,'1380000000005','项目名称11','监造地点11','upload/file.rar',3,1011,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,2,'1380000000054','项目名称12','监造地点12','upload/file.rar',2,1012,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,1,'1380000000087','项目名称13','监造地点13','upload/file.rar',1,1013,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,1,'1380000000031','项目名称14','监造地点14','upload/file.rar',2,1014,'2023-04-10 17:16:36','2023-04-10 17:16:36','监造要求14','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,4,'1380000000003','项目1111','地点11111','/upload/1380000000024.doc',2,1,'2023-04-11 09:11:30','2025-04-18 00:00:00','<p>广大撒gas发</p>','2023-04-11 09:11:39','2023-04-11 09:11:39');

/*Table structure for table `xiangmu_tuzhi` */

DROP TABLE IF EXISTS `xiangmu_tuzhi`;

CREATE TABLE `xiangmu_tuzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xiangmu_tuzhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '图纸编号',
  `xiangmu_tuzhi_name` varchar(200) DEFAULT NULL COMMENT '图纸名称  Search111 ',
  `xiangmu_tuzhi_file` varchar(200) DEFAULT NULL COMMENT '图纸文件',
  `xiangmu_tuzhi_types` int(11) DEFAULT NULL COMMENT '图纸类型 Search111',
  `xiangmu_tuzhi_content` longtext COMMENT '图纸介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `xiangmu_tuzhi_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `xiangmu_tuzhi_yesno_text` longtext COMMENT '审核回复',
  `xiangmu_tuzhi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目图纸';

/*Data for the table `xiangmu_tuzhi` */

insert  into `xiangmu_tuzhi`(`id`,`xiangmu_id`,`yuangong_id`,`xiangmu_tuzhi_uuid_number`,`xiangmu_tuzhi_name`,`xiangmu_tuzhi_file`,`xiangmu_tuzhi_types`,`xiangmu_tuzhi_content`,`insert_time`,`xiangmu_tuzhi_yesno_types`,`xiangmu_tuzhi_yesno_text`,`xiangmu_tuzhi_shenhe_time`,`create_time`) values (1,1,1,'1380000000024','图纸名称1','upload/file.rar',3,'图纸介绍1','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(2,2,2,'1380000000006','图纸名称2','upload/file.rar',2,'图纸介绍2','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(3,3,3,'1380000000086','图纸名称3','upload/file.rar',3,'图纸介绍3','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(4,4,2,'1380000000028','图纸名称4','upload/file.rar',1,'图纸介绍4','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(5,5,1,'1380000000022','图纸名称5','upload/file.rar',4,'图纸介绍5','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(6,6,3,'1380000000076','图纸名称6','upload/file.rar',2,'图纸介绍6','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(7,7,1,'1380000000006','图纸名称7','upload/file.rar',2,'图纸介绍7','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(8,8,2,'1380000000059','图纸名称8','upload/file.rar',1,'图纸介绍8','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(9,9,3,'1380000000072','图纸名称9','upload/file.rar',3,'图纸介绍9','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(10,10,1,'1380000000046','图纸名称10','upload/file.rar',3,'图纸介绍10','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(11,11,1,'1380000000088','图纸名称11','upload/file.rar',2,'图纸介绍11','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(12,12,2,'1380000000049','图纸名称12','upload/file.rar',4,'图纸介绍12','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(13,13,3,'1380000000009','图纸名称13','upload/file.rar',1,'图纸介绍13','2023-04-10 17:16:36',1,NULL,NULL,'2023-04-10 17:16:36'),(14,14,3,'1380000000033','图纸名称14','upload/file.rar',3,'图纸介绍14','2023-04-10 17:16:36',2,'噶三顿饭大飒飒发','2023-04-10 17:56:17','2023-04-10 17:16:36'),(15,15,1,'1380000000075','图纸1111','/upload/1380000000089.doc',3,'<p>打个发生大法师发发发</p>','2023-04-11 09:14:52',2,'嘎山东高速','2023-04-11 09:16:31','2023-04-11 09:14:52');

/*Table structure for table `yanshou_cailiao` */

DROP TABLE IF EXISTS `yanshou_cailiao`;

CREATE TABLE `yanshou_cailiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yanshou_cailiao_name` varchar(200) DEFAULT NULL COMMENT '材料名称  Search111 ',
  `yanshou_cailiao_buwei` varchar(200) DEFAULT NULL COMMENT '监造部位',
  `yanshou_cailiao_biaozhun` varchar(200) DEFAULT NULL COMMENT '使用标准',
  `yanshou_cailiao_shijishiyong` varchar(200) DEFAULT NULL COMMENT '实际使用',
  `jianzaojindu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `hege_types` int(11) DEFAULT NULL COMMENT '是否合格 Search111',
  `yanshou_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `yanshou_cailiao_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='材料验收';

/*Data for the table `yanshou_cailiao` */

insert  into `yanshou_cailiao`(`id`,`xiangmu_id`,`yuangong_id`,`yanshou_cailiao_name`,`yanshou_cailiao_buwei`,`yanshou_cailiao_biaozhun`,`yanshou_cailiao_shijishiyong`,`jianzaojindu_file`,`hege_types`,`yanshou_time`,`yanshou_cailiao_content`,`insert_time`,`create_time`) values (1,1,3,'材料名称1','监造部位1','使用标准1','实际使用1','upload/file.rar',1,'2023-04-10 17:16:36','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,2,'材料名称2','监造部位2','使用标准2','实际使用2','upload/file.rar',2,'2023-04-10 17:16:36','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,1,'材料名称3','监造部位3','使用标准3','实际使用3','upload/file.rar',1,'2023-04-10 17:16:36','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,1,'材料名称4','监造部位4','使用标准4','实际使用4','upload/file.rar',2,'2023-04-10 17:16:36','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,1,'材料名称5','监造部位5','使用标准5','实际使用5','upload/file.rar',2,'2023-04-10 17:16:36','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,3,'材料名称6','监造部位6','使用标准6','实际使用6','upload/file.rar',1,'2023-04-10 17:16:36','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,1,'材料名称7','监造部位7','使用标准7','实际使用7','upload/file.rar',1,'2023-04-10 17:16:36','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,3,'材料名称8','监造部位8','使用标准8','实际使用8','upload/file.rar',1,'2023-04-10 17:16:36','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,1,'材料名称9','监造部位9','使用标准9','实际使用9','upload/file.rar',1,'2023-04-10 17:16:36','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,2,'材料名称10','监造部位10','使用标准10','实际使用10','upload/file.rar',2,'2023-04-10 17:16:36','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,2,'材料名称11','监造部位11','使用标准11','实际使用11','upload/file.rar',1,'2023-04-10 17:16:36','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,2,'材料名称12','监造部位12','使用标准12','实际使用12','upload/file.rar',2,'2023-04-10 17:16:36','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,2,'材料名称13','监造部位13','使用标准13','实际使用13','upload/file.rar',1,'2023-04-10 17:16:36','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,1,'材料名称14','监造部位14','使用标准14','实际使用14','upload/file.rar',1,'2023-04-10 17:16:36','备注14','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,15,1,'材料11111','船骨','标准1112','高大上放荡是多个','/upload/1380000000073.doc',2,'2023-04-11 09:18:17','<p>噶三顿饭人萨芬撒</p>','2023-04-11 09:18:19','2023-04-11 09:18:19');

/*Table structure for table `yanshou_chengguo` */

DROP TABLE IF EXISTS `yanshou_chengguo`;

CREATE TABLE `yanshou_chengguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yanshou_chengguo_buwei` varchar(200) DEFAULT NULL COMMENT '验收部位  Search111 ',
  `yanshou_chengguo_chuandong` varchar(200) DEFAULT NULL COMMENT '船东要求',
  `yanshou_chengguo_shiji` varchar(200) DEFAULT NULL COMMENT '实际结果',
  `jianzaojindu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `hege_types` int(11) DEFAULT NULL COMMENT '是否合格 Search111',
  `yanshou_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `yanshou_chengguo_content` longtext COMMENT '缘由',
  `yanshou_chengguo_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='成果验收';

/*Data for the table `yanshou_chengguo` */

insert  into `yanshou_chengguo`(`id`,`xiangmu_id`,`yuangong_id`,`yanshou_chengguo_buwei`,`yanshou_chengguo_chuandong`,`yanshou_chengguo_shiji`,`jianzaojindu_file`,`hege_types`,`yanshou_time`,`yanshou_chengguo_content`,`yanshou_chengguo_beizhu_content`,`insert_time`,`create_time`) values (1,1,1,'验收部位1','船东要求1','实际结果1','upload/file.rar',2,'2023-04-10 17:16:36','缘由1','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,1,'验收部位2','船东要求2','实际结果2','upload/file.rar',2,'2023-04-10 17:16:36','缘由2','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,1,'验收部位3','船东要求3','实际结果3','upload/file.rar',1,'2023-04-10 17:16:36','缘由3','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,3,'验收部位4','船东要求4','实际结果4','upload/file.rar',2,'2023-04-10 17:16:36','缘由4','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,2,'验收部位5','船东要求5','实际结果5','upload/file.rar',1,'2023-04-10 17:16:36','缘由5','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,3,'验收部位6','船东要求6','实际结果6','upload/file.rar',1,'2023-04-10 17:16:36','缘由6','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,2,'验收部位7','船东要求7','实际结果7','upload/file.rar',1,'2023-04-10 17:16:36','缘由7','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,2,'验收部位8','船东要求8','实际结果8','upload/file.rar',2,'2023-04-10 17:16:36','缘由8','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,3,'验收部位9','船东要求9','实际结果9','upload/file.rar',2,'2023-04-10 17:16:36','缘由9','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,1,'验收部位10','船东要求10','实际结果10','upload/file.rar',2,'2023-04-10 17:16:36','缘由10','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,2,'验收部位11','船东要求11','实际结果11','upload/file.rar',2,'2023-04-10 17:16:36','缘由11','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,3,'验收部位12','船东要求12','实际结果12','upload/file.rar',2,'2023-04-10 17:16:36','缘由12','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,2,'验收部位13','船东要求13','实际结果13','upload/file.rar',1,'2023-04-10 17:16:36','缘由13','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,1,'验收部位14','船东要求14','实际结果14','upload/file.rar',2,'2023-04-10 17:16:36','缘由14','备注14','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,12,1,'部位111','高10米','高10米','/upload/1380000000005.doc',2,'2023-04-11 09:19:22','<p>发撒撒发</p>','<p>呵呵叫姐姐</p>','2023-04-11 09:19:26','2023-04-11 09:19:26');

/*Table structure for table `yanshou_gongyi` */

DROP TABLE IF EXISTS `yanshou_gongyi`;

CREATE TABLE `yanshou_gongyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yanshou_gongyi_name` varchar(200) DEFAULT NULL COMMENT '工艺名称  Search111 ',
  `yanshou_gongyi_buwei` varchar(200) DEFAULT NULL COMMENT '验收部位',
  `yanshou_gongyi_biaozhun` varchar(200) DEFAULT NULL COMMENT '使用标准',
  `yanshou_gongyi_shijishiyong` varchar(200) DEFAULT NULL COMMENT '实际使用',
  `jianzaojindu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `hege_types` int(11) DEFAULT NULL COMMENT '是否合格 Search111',
  `yanshou_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `yanshou_gongyi_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='工艺验收';

/*Data for the table `yanshou_gongyi` */

insert  into `yanshou_gongyi`(`id`,`xiangmu_id`,`yuangong_id`,`yanshou_gongyi_name`,`yanshou_gongyi_buwei`,`yanshou_gongyi_biaozhun`,`yanshou_gongyi_shijishiyong`,`jianzaojindu_file`,`hege_types`,`yanshou_time`,`yanshou_gongyi_content`,`insert_time`,`create_time`) values (1,1,1,'工艺名称1','验收部位1','使用标准1','实际使用1','upload/file.rar',2,'2023-04-10 17:16:36','备注1','2023-04-10 17:16:36','2023-04-10 17:16:36'),(2,2,2,'工艺名称2','验收部位2','使用标准2','实际使用2','upload/file.rar',2,'2023-04-10 17:16:36','备注2','2023-04-10 17:16:36','2023-04-10 17:16:36'),(3,3,1,'工艺名称3','验收部位3','使用标准3','实际使用3','upload/file.rar',2,'2023-04-10 17:16:36','备注3','2023-04-10 17:16:36','2023-04-10 17:16:36'),(4,4,1,'工艺名称4','验收部位4','使用标准4','实际使用4','upload/file.rar',1,'2023-04-10 17:16:36','备注4','2023-04-10 17:16:36','2023-04-10 17:16:36'),(5,5,3,'工艺名称5','验收部位5','使用标准5','实际使用5','upload/file.rar',1,'2023-04-10 17:16:36','备注5','2023-04-10 17:16:36','2023-04-10 17:16:36'),(6,6,1,'工艺名称6','验收部位6','使用标准6','实际使用6','upload/file.rar',2,'2023-04-10 17:16:36','备注6','2023-04-10 17:16:36','2023-04-10 17:16:36'),(7,7,1,'工艺名称7','验收部位7','使用标准7','实际使用7','upload/file.rar',1,'2023-04-10 17:16:36','备注7','2023-04-10 17:16:36','2023-04-10 17:16:36'),(8,8,2,'工艺名称8','验收部位8','使用标准8','实际使用8','upload/file.rar',1,'2023-04-10 17:16:36','备注8','2023-04-10 17:16:36','2023-04-10 17:16:36'),(9,9,1,'工艺名称9','验收部位9','使用标准9','实际使用9','upload/file.rar',2,'2023-04-10 17:16:36','备注9','2023-04-10 17:16:36','2023-04-10 17:16:36'),(10,10,2,'工艺名称10','验收部位10','使用标准10','实际使用10','upload/file.rar',2,'2023-04-10 17:16:36','备注10','2023-04-10 17:16:36','2023-04-10 17:16:36'),(11,11,3,'工艺名称11','验收部位11','使用标准11','实际使用11','upload/file.rar',1,'2023-04-10 17:16:36','备注11','2023-04-10 17:16:36','2023-04-10 17:16:36'),(12,12,3,'工艺名称12','验收部位12','使用标准12','实际使用12','upload/file.rar',1,'2023-04-10 17:16:36','备注12','2023-04-10 17:16:36','2023-04-10 17:16:36'),(13,13,2,'工艺名称13','验收部位13','使用标准13','实际使用13','upload/file.rar',2,'2023-04-10 17:16:36','备注13','2023-04-10 17:16:36','2023-04-10 17:16:36'),(14,14,1,'工艺名称14','验收部位14','使用标准14','实际使用14','upload/file.rar',2,'2023-04-10 17:16:36','备注14','2023-04-10 17:16:36','2023-04-10 17:16:36'),(15,15,1,'工艺1111','不为1111','标准111','实际1111','/upload/1380000000021.doc',2,'2023-04-11 09:18:49','<p>撒发顺丰</p>','2023-04-11 09:18:52','2023-04-11 09:18:52');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1380000000014','用户姓名1','13800000000','100000000000000000','upload/yonghu1.jpg',1,'user1@example.com',1,'2023-04-10 17:16:36'),(2,'a2','123456','1380000000099','用户姓名2','13800000000','100000000000000000','upload/yonghu2.jpg',1,'user2@example.com',1,'2023-04-10 17:16:36'),(3,'a3','123456','1380000000018','用户姓名3','13800000000','100000000000000000','upload/yonghu3.jpg',2,'user3@example.com',1,'2023-04-10 17:16:36'),(4,'a5','123456','1380000000072','张5','13800000000','100000000000000000','/upload/1380000000005.jpg',2,'user4@example.com',1,'2023-04-11 09:10:48');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`zhiwei_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1380000000027','员工姓名1','13800000000','100000000000000000','upload/yuangong1.jpg',2,2,2,'user1@example.com',1,'2023-04-10 17:16:36'),(2,'a2','123456','1380000000072','员工姓名2','13800000000','100000000000000000','upload/yuangong2.jpg',1,2,1,'user2@example.com',1,'2023-04-10 17:16:36'),(3,'a3','123456','1380000000094','员工姓名3','13800000000','100000000000000000','upload/yuangong3.jpg',1,2,1,'user3@example.com',2,'2023-04-10 17:16:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
