/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengxinxiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengxinxiguanli` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `xueshengxinxiguanli`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业  ',
  `banji_name` varchar(200) DEFAULT NULL COMMENT '班级名称   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`zhuanye_types`,`banji_name`,`create_time`) values (1,4,'班级1','2021-03-13 15:35:04'),(2,3,'班级2','2021-03-13 15:35:11'),(3,4,'班级3','2021-03-13 15:35:17'),(4,1,'班级4','2021-03-13 15:35:25'),(5,2,'班级66','2021-03-13 19:22:06');

/*Table structure for table `banji_kecheng` */

DROP TABLE IF EXISTS `banji_kecheng`;

CREATE TABLE `banji_kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_id` int(11) DEFAULT NULL COMMENT '班级',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='班级_课程';

/*Data for the table `banji_kecheng` */

insert  into `banji_kecheng`(`id`,`banji_id`,`kecheng_id`,`create_time`) values (1,4,3,'2021-03-13 16:36:40'),(2,3,2,'2021-03-13 16:36:50'),(3,4,1,'2021-03-13 17:03:16'),(4,5,3,'2021-03-13 19:23:05');

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `exam_name` varchar(200) DEFAULT NULL COMMENT '考试名称  ',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '分数   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`exam_name`,`kecheng_id`,`fraction`,`create_time`) values (1,1,'第一次考试',3,'10.0000','2021-03-13 17:19:15'),(2,2,'第一次考试',2,'99.0000','2021-03-13 17:19:44'),(3,2,'第一次考试',3,'87.0000','2021-03-13 19:20:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-13 15:59:39'),(2,'sex_types','性别',2,'女',NULL,'2021-03-13 15:59:39'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-13 15:59:39'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-13 15:59:39'),(5,'wupin_types','是否领取过物品',1,'已领取',NULL,'2021-03-13 15:59:39'),(6,'wupin_types','是否领取过物品',2,'未领取',NULL,'2021-03-13 15:59:39'),(7,'yonghu_types','用户状态',1,'新增',NULL,'2021-03-13 15:59:40'),(8,'yonghu_types','用户状态',2,'预报到',NULL,'2021-03-13 15:59:40'),(9,'yonghu_types','用户状态',3,'已报到',NULL,'2021-03-13 15:59:40'),(10,'zhuanye_types','专业类型',1,'法学',NULL,'2021-03-13 15:59:40'),(11,'zhuanye_types','专业类型',2,'哲学',NULL,'2021-03-13 15:59:40'),(12,'zhuanye_types','专业类型',3,'经济学',NULL,'2021-03-13 15:59:40'),(13,'zhuanye_types','专业类型',4,'教育学',NULL,'2021-03-13 15:59:40'),(14,'zhuanye_types','专业类型',5,'aaaa',NULL,'2021-03-13 19:23:59'),(15,'jiangcheng_types','奖惩类型名称',1,'奖励1',NULL,'2021-04-06 11:13:35'),(16,'jiangcheng_types','奖惩类型名称',2,'奖励2',NULL,'2021-04-06 11:13:35'),(17,'jiangcheng_types','奖惩类型名称',3,'奖励3',NULL,'2021-04-06 11:13:35'),(18,'jiangcheng_types','奖惩类型名称',4,'惩罚1',NULL,'2021-04-06 11:13:35'),(19,'jiangcheng_types','奖惩类型名称',5,'惩罚2',NULL,'2021-04-06 11:13:35'),(20,'jiangcheng_types','奖惩类型名称',6,'惩罚3',NULL,'2021-04-06 11:13:36'),(21,'jiangcheng_types','奖惩类型名称',7,'奖励9',NULL,'2021-04-06 11:42:18');

/*Table structure for table `jiangcheng` */

DROP TABLE IF EXISTS `jiangcheng`;

CREATE TABLE `jiangcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiangcheng_name` varchar(200) DEFAULT NULL COMMENT '奖惩名称   ',
  `jiangcheng_types` int(11) DEFAULT NULL COMMENT '奖惩类型  ',
  `jiangcheng_content` varchar(200) DEFAULT NULL COMMENT '奖惩详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '奖惩时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生奖惩';

/*Data for the table `jiangcheng` */

insert  into `jiangcheng`(`id`,`yonghu_id`,`jiangcheng_name`,`jiangcheng_types`,`jiangcheng_content`,`insert_time`,`create_time`) values (1,9,'学历造假惩罚',5,'该学生在12月12日考试 学历造假\r\n','2021-04-06 11:21:26','2021-04-06 11:21:26'),(2,8,'发现火灾及时上报',3,'该学生发现火灾  及时上报 避免了一起重大事故\r\n','2021-04-06 11:38:46','2021-04-06 11:38:46'),(3,7,'萨达撒多',1,'上方萨法啊\r\n','2021-04-06 11:40:42','2021-04-06 11:40:42'),(4,9,'1111',7,'奋斗终生在111\r\n','2021-04-06 11:42:49','2021-04-06 11:42:49');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称   ',
  `kecheng_content` varchar(200) DEFAULT NULL COMMENT '课程内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_name`,`kecheng_content`,`create_time`) values (1,2,'课程名字1','课程名字1的课程内容\r\n','2021-03-13 16:21:13'),(2,1,'课程名字2','课程名字2的课程内容详情\r\n','2021-03-13 16:21:40'),(3,2,'课程3','课程3的课程内容详情\r\n','2021-03-13 16:22:18');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '老师姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '老师性别  ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a11','123456','张11','17703789911','410224199610232011',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615626579239.jpg','汉',2,'审犯罪','2021-03-13 16:17:28'),(2,'a22','123456','a22','17703789922','410224199610232022',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615626568795.jpg','汉',2,'河南开封1','2021-03-13 16:18:02'),(3,'a33','123456','张a333','17703789933','410224199610232033',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615634506375.jpg','汉',2,'审犯罪','2021-03-13 19:21:49');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','v80syv6fkjufk8r9nyrvo72df9orzqnu','2021-03-13 15:30:37','2021-04-06 12:42:09'),(2,1,'a11','laoshi','老师','ieogqdbxlc6ssalqkmvqabotkoglc33v','2021-03-13 19:28:08','2021-04-06 12:42:35'),(3,2,'a2','yonghu','用户','6hxarjpjfoxh12q8lylaiqasemze5pjr','2021-03-13 19:29:54','2021-03-13 20:39:58'),(4,8,'a8','yonghu','用户','uutlcadqfgdhggzhpo8olw8vrr95gvf3','2021-04-06 11:38:57','2021-04-06 12:38:58'),(5,7,'a7','yonghu','用户','z1vg0zzc08uedfu9ulxq9lkstw5hjgal','2021-04-06 11:43:21','2021-04-06 12:43:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `wupin_types` int(11) DEFAULT NULL COMMENT '是否领取过物品  ',
  `banji_id` int(11) DEFAULT NULL COMMENT '班级',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '用户状态  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`wupin_types`,`banji_id`,`yonghu_types`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232011',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615626556858.jpg','汉',2,'河南开封',2,4,1,'2021-03-13 16:09:51'),(2,'a2','123456','张2','17703789992','410224199610232012',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615635342128.jpg','汉111',1,'浙江杭州',2,4,2,'2021-03-13 16:14:38'),(3,'a3','123456','张三','17703789993','410224199610232013',1,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615626539665.jpg','汉',1,'审犯罪',2,4,1,'2021-03-13 16:15:18'),(4,'a4','123456','张4','17703789994','410224199610232014',1,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615626528193.jpg','汉',2,'浙江温州',2,2,1,'2021-03-13 16:16:17'),(5,'a5','123456','张5','17703789995','410224199610232015',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615633586889.jpg','汉',2,'审犯罪',2,3,2,'2021-03-13 19:06:39'),(6,'a6','123456','张6','17703789996','410224199610232016',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615633626496.jpg','汉',2,'审犯罪',2,3,2,'2021-03-13 19:07:36'),(7,'a7','123456','张7','17703789997','410224199610232017',2,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615633758494.jpg','8578',2,'审犯罪',1,1,3,'2021-03-13 19:09:23'),(8,'a8','123456','a8','17703789998','410224199610232018',1,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615634236995.jpg','汉',2,'审犯罪',2,3,1,'2021-03-13 19:17:24'),(9,'a10','123456','张10','17703789910','410224199610232010',1,'http://localhost:8080/xueshengxinxiguanli/file/download?fileName=1615634295982.jpg','汉11',2,'审犯罪',2,4,1,'2021-03-13 19:18:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
