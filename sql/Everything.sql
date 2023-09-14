/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - rongxiaotong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rongxiaotong` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `rongxiaotong`;
set global log_bin_trust_function_creators=TRUE;
SET SESSION innodb_strict_mode = OFF;
/*Table structure for table `tb_address` */

DROP TABLE IF EXISTS `tb_address`;

CREATE TABLE `tb_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属于哪个用户的地址',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  `is_default` tinyint DEFAULT '0' COMMENT '是否默认，0，不是，默认是1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_address` */

insert  into `tb_address`(`id`,`own_name`,`consignee`,`phone`,`address_detail`,`is_default`) values 
(121,'zwr','张文瑞','15030589961','青岛市即墨区青岛湾琴湾C区',1),
(129,'zhangxukun','张绪昆','18354648787','山东省青岛市',0),
(146,'zhangxu','张绪昆','18396833008','山东省青岛市',0),
(147,'zhangxukun','张绪昆','18354648787','山东省济南市',1),
(153,'gaoge','高歌','18977771439','山东省枣庄市',0),
(154,'gaoge','高歌','18977771439','山东省德州市夏津县',1),
(171,'gaoge','高歌','18977771439','山东省德州市夏津县',0),
(172,'admin','成吉思汗','18766661438','山东青岛市崂山区',1),
(173,'admin','不朽大帝','18766661438','山东青岛市崂山区',0),
(178,'lzh','11','11','11',1),
(184,'wyn3','李增虎','11111111111','海信财智谷',0),
(186,'lisi','李四','15623652365','山东省临沂市河东区',1),
(187,'lisi','李四','15623652365','山东省青岛市崂山区',0),
(188,'lisi','李四','15662352365','山东省青岛市黄岛区',0),
(189,'wangya','王娅','13792449255','青岛市李沧区',0),
(190,'admin001','aaa','15266884488','aaa',0);

/*Table structure for table `tb_bank` */

DROP TABLE IF EXISTS `tb_bank`;

CREATE TABLE `tb_bank` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` decimal(65,2) NOT NULL,
  `rate` decimal(65,2) NOT NULL,
  `repayment` int NOT NULL,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_bank` */

insert  into `tb_bank`(`bank_id`,`bank_name`,`introduce`,`bank_phone`,`money`,`rate`,`repayment`) values 
(1001,'青岛银行','“青易贷”，是青岛银行小微企业融资产品服务品牌。为助力小微企业成长发展，青岛银行为广大小微企业打造全面金融服务品牌体系——“青易贷”，紧贴小微企业融资需求特点，紧跟市场经济发展变化，不断创新完善融资产品，形成特色产品体系，力争全方位地满足不同行业、不同成长阶段的小微企业各类融资需求。','96588',100000.00,1.10,24),
(1002,'中国银行','中国银行金融市场业务，包括国内、国际本外币金融市场相关交易、投资、理财、托管等业务，为公司、个人以及金融同业提供全面、完善、专业的各项金融市场服务。','95566',100000.00,1.20,36),
(1004,'中国工商银行','工商银行向小微企业主发放的，用于满足其生产经营资金需求或置换生产经营过程中产生的负债性资金的人民币贷款。','95588',150000.00,1.10,30),
(1005,'日照银行','“阳光”系列个人消费贷款业务是日照银行向符合规定条件的自然人发放的用于个人消费用途的人民币贷款业务，旨在以快捷方便的审批流程和优质的服务满足客户在大件商品或服务消费等个人资金需求，如住房装修、购家具家电、购车、婚庆、学习进修、旅游等。“阳光”系列个人消费贷款业务包含“阳光贷”、“金领贷”、“阳光·房易贷”、“阳光·保易贷”、“阳光·车易贷”“阳光·出国贷”等。','96588',100000.00,2.00,24),
(1006,'华夏银行','华夏银行作为债务融资工具全国首批主承销商之一，已从业十余载，连续十三年获“全国银行间同业拆借中心优秀交易成员”称号，承销团队经验丰富，专业高效，竭诚为广大企业服务。','95577',160000.00,1.80,36),
(1007,'中国建设银行','“诚贷通”小额无抵押贷款“诚贷通”小额无抵押贷款是建设银行为小企业客户发放，由企业主或企业实际控制人提供个人连带责任保证，无需抵（质）押物，用于小企业客户生产经营资金周转的人民币循环额度贷款。','95533',200000.00,3.60,36),
(1008,'浦发银行','点贷是我行面向符合条件的客户通过互联网在线受理、在线签约，并即时发放贷款的业务模式。','95528',150000.00,1.10,24),
(1009,'中国平安银行','“数保贷”平安银行与担保公司、担保基金、保险公司等联合开发的面向诚信纳税的中小企业法人或企业主的互联网信用贷款','95511',160000.00,1.20,36),
(1010,'中国民生银行','为进一步丰富金融服务乡村振兴的内涵，民生银行在持续迭代“农贷通”产品的基础上，通过与中国银联强强联合，将借记卡产品与贷款产品相融合，以科技赋能，将现代金融服务延伸到广大农村区域。“农贷通”卡满载10项特色涉农权益，为农户提供多样化增值服务。','95568',200000.00,1.60,24);

/*Table structure for table `tb_bank_user` */

DROP TABLE IF EXISTS `tb_bank_user`;

CREATE TABLE `tb_bank_user` (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  KEY `bank_id` (`bank_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_bank_user` */

insert  into `tb_bank_user`(`user_name`,`bank_id`,`password`,`real_name`,`phone`,`role`,`create_time`,`update_time`) values 
('buser01',1001,'$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','王家明','13236963696','user','2022-04-02 16:19:10','2022-04-02 16:19:13'),
('buser02',1006,'$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','刘璐','13236963696','user','2022-04-02 16:19:10','2022-04-02 16:19:13'),
('buser03',1001,'$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','李涵','13236963696','user','2022-04-02 16:19:10','2022-04-02 16:19:13');

/*Table structure for table `tb_discuss` */

DROP TABLE IF EXISTS `tb_discuss`;

CREATE TABLE `tb_discuss` (
  `discuss_id` int NOT NULL AUTO_INCREMENT,
  `knowledge_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`discuss_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_discuss` */

insert  into `tb_discuss`(`discuss_id`,`knowledge_id`,`own_name`,`content`,`create_time`) values 
(100,100,'wyn','评论内容123','2022-03-29 14:35:06'),
(101,22,'zhangxukun','1111','2022-07-22 09:56:49'),
(102,22,'admin','22','2022-07-29 14:59:21'),
(103,22,'admin','44444444','2022-07-29 15:31:06'),
(104,22,'wyn3','22','2022-08-19 16:09:12'),
(105,23,'gaoge','不错不错','2022-08-31 16:24:10'),
(106,23,'gaoge','学到了，感谢！','2022-08-31 16:24:18'),
(107,23,'gaoge','长知识了','2022-08-31 16:26:02'),
(108,22,'wyn3','太简单','2022-09-06 16:19:37');

/*Table structure for table `tb_expert` */

DROP TABLE IF EXISTS `tb_expert`;

CREATE TABLE `tb_expert` (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `belong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_expert` */

insert  into `tb_expert`(`user_name`,`real_name`,`phone`,`profession`,`position`,`belong`) values 
('gaoge','高歌','15649599256','生物学','高级职称','山东省农科院'),
('wyn','王玉娜','17892322499','生物化学','高级工程师','青岛生物研究所'),
('wyn2','王艳安','13192924932','生物化学','高级工程师','青岛生物研究所'),
('zhangxu','张旭','18224995956','生物学','中级职称','山东省农科院');

/*Table structure for table `tb_finance` */

DROP TABLE IF EXISTS `tb_finance`;

CREATE TABLE `tb_finance` (
  `finance_id` int NOT NULL AUTO_INCREMENT,
  `bank_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `money` decimal(65,2) NOT NULL,
  `rate` decimal(65,2) NOT NULL,
  `repayment` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `combination_name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `combination_phone1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `combination_idnum1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `combination_name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `combination_phone2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `combination_idnum2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`finance_id`) USING BTREE,
  KEY `bank_id` (`bank_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_finance` */

insert  into `tb_finance`(`finance_id`,`bank_id`,`own_name`,`real_name`,`phone`,`id_num`,`status`,`remark`,`money`,`rate`,`repayment`,`create_time`,`update_time`,`combination_name1`,`combination_phone1`,`combination_idnum1`,`combination_name2`,`combination_phone2`,`combination_idnum2`,`file_info`) values 
(100,1001,'wyn','王亚楠','22222222222','222222222222222222',1,'re',100.00,12.00,1,'2022-03-28 17:14:32','2022-03-28 17:14:36',NULL,NULL,NULL,NULL,'','','dd4f92b790dc4f36964888c98169ce66.jpg'),
(102,1001,'wyn','王亚楠','22222222222','222222222222222222',2,'re',109.00,12.00,1,'2022-03-28 17:14:32','2022-03-28 17:14:36',NULL,NULL,NULL,NULL,'','','dd4f92b790dc4f36964888c98169ce66.jpg'),
(103,1004,'zhangxukun','张旭坤','22222222222','222222222222222222',0,NULL,160000.00,1.80,36,'2022-07-22 09:59:12','2022-07-22 09:59:12','张龙',NULL,NULL,'赵虎','22222222222','222222222222222222','dd4f92b790dc4f36964888c98169ce66.jpg'),
(104,1006,'zhangxukun','张旭坤','13176879739','370827199001142213',2,NULL,150000.00,1.10,30,'2022-07-22 10:02:04','2022-07-22 10:02:04',NULL,NULL,NULL,NULL,'','','dd4f92b790dc4f36964888c98169ce66.jpg 45f9675d11a34dd3a6df296b8bc4b7e5.jpg dd4f92b790dc4f36964888c98169ce66.jpg dd4f92b790dc4f36964888c98169ce66.jpg dd4f92b790dc4f36964888c98169ce66.jpg'),
(105,1005,'zhangxukun','张旭坤','22222222222','222222222222222222',0,NULL,100000.00,2.00,24,'2022-07-22 10:02:29','2022-07-22 10:02:29',NULL,NULL,NULL,NULL,'','','dd4f92b790dc4f36964888c98169ce66.jpg'),
(106,1004,'zhangxukun','张旭坤','22222222222','222222222222222222',0,NULL,150000.00,1.10,30,'2022-07-22 10:26:02','2022-07-22 10:26:02',NULL,NULL,NULL,NULL,'','','dd4f92b790dc4f36964888c98169ce66.jpg'),
(133,1006,'lzh','李增虎','15621367568','373312199801032719',2,NULL,60000.00,1.00,6,'2022-08-17 17:18:14','2022-08-17 17:18:14','冯德林','22222222222','222222222222222222','李思','22222222222','222222222222222222','dd4f92b790dc4f36964888c98169ce66.jpg'),
(137,1007,'lisi','李思','15623652365','371323199601062719',0,NULL,100000.00,1.20,6,'2022-08-29 14:38:27','2022-08-29 14:38:27','李增虎','17814382372','372823199005162816','何海涵','13176852739','373833198910073526','dd4f92b790dc4f36964888c98169ce66.jpg'),
(141,1006,'wyn3','王亚楠','13696859685','370201196501026352',2,NULL,120000.00,1.80,36,'2022-09-08 10:12:35','2022-09-08 10:12:35','沙发','13754125623','370203199802036513','的撒','13895212195','370213199009160203','47fc92e1068d4c20833e4e197aec0b0d.jpg 20e7a0d77ecf4731b28ebc1d6ca22587.jpg ');

/*Table structure for table `tb_financing_intention` */

DROP TABLE IF EXISTS `tb_financing_intention`;

CREATE TABLE `tb_financing_intention` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `application` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repayment_period` int NOT NULL,
  `area` int NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_financing_intention` */

insert  into `tb_financing_intention`(`id`,`user_name`,`real_name`,`address`,`amount`,`application`,`item`,`repayment_period`,`area`,`phone`,`create_time`,`update_time`) values 
(5,'zhangxukun','张旭坤','山东省菏泽市',80000,'种植农作物','苹果',60,90,'13176879739','2022-08-09 14:56:31','2022-08-10 14:56:35'),
(6,'wyn3','王亚楠','威海市',1000000,'芒果种植','芒果',36,1,'13792499256','2022-09-08 09:58:14','2022-09-08 10:01:15');

/*Table structure for table `tb_knowledge` */

DROP TABLE IF EXISTS `tb_knowledge`;

CREATE TABLE `tb_knowledge` (
  `knowledge_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布者名字',
  `create_time` time NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`knowledge_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_knowledge` */

insert  into `tb_knowledge`(`knowledge_id`,`title`,`content`,`pic_path`,`own_name`,`create_time`,`update_time`) values 
(22,'水稻种植全过程','水稻种植第一步：晒种\n水稻种植第二步：选种\n水稻种植第三步：整秧版\n水稻种植第四步：播种\n水稻种植第五步：插秧\n水稻种植第六步：缓苗\n水稻种植第七步：田间管理（关键）','2cc2479866734c8980d88c86db7dbdc7.webp','gaoge','16:33:59','2021-08-27 16:33:59'),
(23,'玉米种植过程详解 ','玉米一直都被誉为长寿食品，含有丰富的蛋白质、脂肪、维生素、微量元素、纤维素等，具有开发高营养、高生物学功能食品的巨大潜力。但由于其遗传性较为复杂，变异种类丰富，在常规的育种过程中存在着周期过长、变异系数过大、影响子代生长发育的缺点，而现代生物育种技术不但克服了上述缺点和不足，同时也提高了育种速度和质量。玉米出苗后，要及时检查出苗情况，发现缺苗断垄要及时补种、补栽。3叶期前缺苗，用饱满种子浸种催芽后浇水补种。3叶期后缺苗用带土移栽法补苗(播种时可在行间播预备苗)，另外，缺苗处也可在附近留双株补救。','cb0d06358f8c40628b6dca273f881875.jpeg','gaoge','09:31:37','2021-08-30 09:31:37'),
(24,'大豆种植','大豆可分为黄豆、青豆和黑豆。可大家都认为大豆只是黄豆。富含蛋白质,大豆磷脂由大豆提取出来的精华,大豆中提取的纯磷脂精华物质,对人体健康有着极大的帮助，并无副作用。对于黄大豆，它需要较长的生产时间，也非常得能耐寒冷，北方地区的气候条件适合种植;然而青豆的生长时间较短，适宜把','12be19984e374bcfbf06561571365d07.jpg','gaoge','09:37:43','2021-08-30 09:37:43'),
(25,'永泰李干的制作过程','福州特色农产品，永泰李干的制作过程，100％还原！暑期在家帮父母晒李干，永泰李干虽是福建名产，但是市场占有率很低，“养在深山人未识”。我家李干的口感、品质都是不错的，欢迎大家购买品尝！','7765f8705bc54a2086bc295f3bd7217c.jpg','zhangxukun','09:39:56','2021-08-30 09:39:56'),
(26,'葡萄种植','葡萄是我们生活中最常见的水果之一。如今，市场上出现了许多葡萄品种，一些葡萄正处于管理的关键阶段。这种葡萄管理说简单其实也简单，说复杂也复杂，会者不难，难者不会。掌握基本要点，就能实现“一年树，两年果，三年高产”的愿望。','d50a95115e7d4b2d832fbcc50e35944b.jpg','gaoge','09:44:24','2021-08-30 09:44:24'),
(27,'【农业种植 • 园艺】《天天学农（农技知识）》','天天学农创始团队在过去的数年中走遍中国广大农村，与农民深入交谈，了解越多就越觉得必须要去为农民做点实事。我们中很多人是农民的孩子，知道中国农民真是一群非常勤劳的人，但缺乏生产技术，往往事倍功半，他们也渴望学习。农民是朴实的，像庄稼地一样，种下什么就收获什么。视频涵盖了大棚草莓、猕猴桃、苹果树等方方面面，是农民朋友切实需要的教学视频，我们将提供大量的农业技术教学视频，方便大家学习，不断提高农业技术，创造美好生活。','5722cfcd93c84a9083720d2cb072c5a0.jpg','zhangxukun','09:46:37','2021-08-30 09:46:37'),
(28,'西瓜种植','西瓜露地早春栽培，一般以地温稳定在15℃左右时为露地播种的适宜时间。播种的最佳时间，还应根据品种、栽培季节、栽培方式以及消费季节等条件来确定。一般月中下旬播种育苗，4月中下旬定植，6月下旬开始收获上市；秋西瓜7月上中旬播种，9月下旬开始采收上市。','da482ad921d64a798140138a0607eb76.jpg','gaoge','09:54:19','2021-08-30 09:54:19'),
(29,'生姜的一生｜现代农业种植和收获生姜','两千多年来生姜一直活跃在餐桌上。一般做酱菜和小吃用嫩姜，做调料和药用以老姜为佳。传说，神农氏四处尝百草。有一次，误食毒蘑菇，吃了一株长着尖细叶子的青草，神农氏一阵腹泻，感觉死而复生。神农氏姓姜，他将这株救命的植物，叫做生姜。','4265868e71a44832a3e39a4547dc307c.jpg','zhangxukun','09:55:54','2021-08-30 09:55:54'),
(30,'人工种植蘑菇','黄伞伞，白杆杆，吃完一起开厂厂！一天卖2吨蘑菇的奥地利现代种植工厂赚钱全过程','1aff704b6fa94e91b58bdda36f9db166.jpg','zhangxukun','10:00:02','2021-08-30 10:00:02'),
(33,'草莓','草莓','5fe8fbf29a24484dab19ff992aa97c23.mp4','gaoge','16:21:54','2022-09-07 16:21:54');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求标题',
  `price` decimal(65,2) DEFAULT NULL COMMENT '期望价格',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `order_status` int NOT NULL DEFAULT '0' COMMENT '订单状态，0表示待合作，1表示待发货，2表示完成，3表示完成但未评价',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1销售订单，2需求订单',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'picture', 
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发起订单人',
  `cooperation_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作人名字',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单收货地址',
  `category_id`integer DEFAULT NULL COMMENT 'category_id',
  `child_id`integer DEFAULT NULL COMMENT 'order_id',

  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_order` */

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('草莓订单1', 15.50, '新鲜草莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '水果供应商', NOW(), NOW(), '135号街道', 0, 0),
('草莓订单2', 14.00, '红宝石草莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '水果供应商', NOW(), NOW(), '136号街道', 0, 0),
('草莓订单3', 16.00, '白草莓', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '水果供应商', NOW(), NOW(), '137号街道', 0, 0),
('草莓订单4', 15.00, '蓝莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '水果供应商', NOW(), NOW(), '138号街道', 0, 0),
('草莓订单5', 17.00, '黑莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '水果供应商', NOW(), NOW(), '139号街道', 0, 0),
('草莓订单6', 18.00, '覆盆子', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '水果供应商', NOW(), NOW(), '140号街道', 0, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('西瓜订单1', 30.00, '新鲜西瓜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '水果供应商', NOW(), NOW(), '141号街道', 0, 1),
('西瓜订单2', 28.50, '甜瓜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '水果供应商', NOW(), NOW(), '142号街道', 0, 1),
('西瓜订单3', 32.00, '哈密瓜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '水果供应商', NOW(), NOW(), '143号街道', 0, 1),
('西瓜订单4', 33.00, '蜜瓜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '水果供应商', NOW(), NOW(), '144号街道', 0, 1),
('西瓜订单5', 29.00, '苦瓜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '水果供应商', NOW(), NOW(), '145号街道', 0, 1),
('西瓜订单6', 31.50, '南瓜', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '水果供应商', NOW(), NOW(), '146号街道', 0, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('大蒜订单1', 5.50, '新鲜大蒜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '147号街道', 1, 0),
('大蒜订单2', 6.00, '小蒜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '148号街道', 1, 0),
('大蒜订单3', 7.00, '蓝蒜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '149号街道', 1, 0),
('大蒜订单4', 5.50, '独蒜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '150号街道', 1, 0),
('大蒜订单5', 6.50, '蒜头', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '151号街道', 1, 0),
('大蒜订单6', 5.75, '蒜苗', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '152号街道', 1, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('菠菜订单1', 2.50, '新鲜菠菜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '159号街道', 1, 1),
('菠菜订单2', 2.75, '有机菠菜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '160号街道', 1, 1),
('菠菜订单3', 2.60, '嫩菠菜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '161号街道', 1, 1),
('菠菜订单4', 2.40, '大叶菠菜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '162号街道', 1, 1),
('菠菜订单5', 2.30, '红根菠菜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '163号街道', 1, 1),
('菠菜订单6', 2.55, '菠菜苗', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '164号街道', 1, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('胡萝卜订单1', 3.50, '新鲜胡萝卜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '153号街道', 2, 0),
('胡萝卜订单2', 4.00, '红胡萝卜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '154号街道', 2, 0),
('胡萝卜订单3', 3.75, '黄胡萝卜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '155号街道', 2, 0),
('胡萝卜订单4', 3.25, '白胡萝卜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '156号街道', 2, 0),
('胡萝卜订单5', 3.60, '紫胡萝卜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '157号街道', 2, 0),
('胡萝卜订单6', 3.40, '彩色胡萝卜', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '158号街道', 2, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('豆角订单1', 4.50, '新鲜豆角', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '165号街道', 2, 1),
('豆角订单2', 4.25, '四季豆', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '166号街道', 2, 1),
('豆角订单3', 4.75, '毛豆', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '167号街道', 2, 1),
('豆角订单4', 4.10, '豆苗', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '168号街道', 2, 1),
('豆角订单5', 4.65, '豇豆', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '169号街道', 2, 1),
('豆角订单6', 4.30, '蚕豆', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '170号街道', 2, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('菠菜订单1', 2.50, '新鲜菠菜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '159号街道', 3, 0),
('菠菜订单2', 2.75, '有机菠菜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '160号街道', 3, 0),
('菠菜订单3', 2.60, '嫩菠菜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '161号街道', 3, 0),
('菠菜订单4', 2.40, '大叶菠菜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '162号街道', 3, 0),
('菠菜订单5', 2.30, '红根菠菜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '163号街道', 3, 0),
('菠菜订单6', 2.55, '菠菜苗', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '164号街道', 3, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('鸡蛋订单1', 12.00, '新鲜鸡蛋', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '禽畜供应商', NOW(), NOW(), '177号街道', 3, 1),
('鸡蛋订单2', 13.00, '土鸡蛋', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '禽畜供应商', NOW(), NOW(), '178号街道', 3, 1),
('鸡蛋订单3', 11.50, '白鸡蛋', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '禽畜供应商', NOW(), NOW(), '179号街道', 3, 1),
('鸡蛋订单4', 12.50, '红鸡蛋', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '禽畜供应商', NOW(), NOW(), '180号街道', 3, 1),
('鸡蛋订单5', 13.50, '松花蛋', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '禽畜供应商', NOW(), NOW(), '181号街道', 3, 1),
('鸡蛋订单6', 14.00, '鹅蛋', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '禽畜供应商', NOW(), NOW(), '182号街道', 3, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('豆角订单1', 4.50, '新鲜豆角', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '165号街道', 4, 0),
('豆角订单2', 4.25, '四季豆', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '166号街道', 4, 0),
('豆角订单3', 4.75, '毛豆', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '167号街道', 4, 0),
('豆角订单4', 4.10, '豆苗', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '168号街道', 4, 0),
('豆角订单5', 4.65, '豇豆', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '169号街道', 4, 0),
('豆角订单6', 4.30, '蚕豆', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '170号街道', 4, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('草莓订单1', 15.50, '新鲜草莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '水果供应商', NOW(), NOW(), '135号街道', 4, 1),
('草莓订单2', 14.00, '红宝石草莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '水果供应商', NOW(), NOW(), '136号街道', 4, 1),
('草莓订单3', 16.00, '白草莓', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '水果供应商', NOW(), NOW(), '137号街道', 4, 1),
('草莓订单4', 15.00, '蓝莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '水果供应商', NOW(), NOW(), '138号街道', 4, 1),
('草莓订单5', 17.00, '黑莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '水果供应商', NOW(), NOW(), '139号街道', 4, 1),
('草莓订单6', 18.00, '覆盆子', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '水果供应商', NOW(), NOW(), '140号街道', 4, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('猪苗订单1', 300.00, '新鲜猪苗', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '禽畜供应商', NOW(), NOW(), '171号街道', 5, 0),
('猪苗订单2', 350.00, '黑猪苗', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '禽畜供应商', NOW(), NOW(), '172号街道', 5, 0),
('猪苗订单3', 325.00, '土猪苗', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '禽畜供应商', NOW(), NOW(), '173号街道', 5, 0),
('猪苗订单4', 330.00, '白猪苗', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '禽畜供应商', NOW(), NOW(), '174号街道', 5, 0),
('猪苗订单5', 340.00, '杂交猪苗', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '禽畜供应商', NOW(), NOW(), '175号街道', 5, 0),
('猪苗订单6', 335.00, '长白猪苗', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '禽畜供应商', NOW(), NOW(), '176号街道', 5, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('草莓订单1', 15.50, '新鲜草莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '水果供应商', NOW(), NOW(), '135号街道', 5, 1),
('草莓订单2', 14.00, '红宝石草莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '水果供应商', NOW(), NOW(), '136号街道', 5, 1),
('草莓订单3', 16.00, '白草莓', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '水果供应商', NOW(), NOW(), '137号街道', 5, 1),
('草莓订单4', 15.00, '蓝莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '水果供应商', NOW(), NOW(), '138号街道', 5, 1),
('草莓订单5', 17.00, '黑莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '水果供应商', NOW(), NOW(), '139号街道', 5, 1),
('草莓订单6', 18.00, '覆盆子', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '水果供应商', NOW(), NOW(), '140号街道', 5, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('鸡蛋订单1', 12.00, '新鲜鸡蛋', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '禽畜供应商', NOW(), NOW(), '177号街道', 6, 0),
('鸡蛋订单2', 13.00, '土鸡蛋', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '禽畜供应商', NOW(), NOW(), '178号街道', 6, 0),
('鸡蛋订单3', 11.50, '白鸡蛋', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '禽畜供应商', NOW(), NOW(), '179号街道', 6, 0),
('鸡蛋订单4', 12.50, '红鸡蛋', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '禽畜供应商', NOW(), NOW(), '180号街道', 6, 0),
('鸡蛋订单5', 13.50, '松花蛋', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '禽畜供应商', NOW(), NOW(), '181号街道', 6, 0),
('鸡蛋订单6', 14.00, '鹅蛋', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '禽畜供应商', NOW(), NOW(), '182号街道', 6, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('草莓订单1', 15.50, '新鲜草莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '水果供应商', NOW(), NOW(), '135号街道', 6, 1),
('草莓订单2', 14.00, '红宝石草莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '水果供应商', NOW(), NOW(), '136号街道', 6, 1),
('草莓订单3', 16.00, '白草莓', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '水果供应商', NOW(), NOW(), '137号街道', 6, 1),
('草莓订单4', 15.00, '蓝莓', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '水果供应商', NOW(), NOW(), '138号街道', 6, 1),
('草莓订单5', 17.00, '黑莓', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '水果供应商', NOW(), NOW(), '139号街道', 6, 1),
('草莓订单6', 18.00, '覆盆子', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '水果供应商', NOW(), NOW(), '140号街道', 6, 1);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('胡萝卜订单1', 3.50, '新鲜胡萝卜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '153号街道', 7, 0),
('胡萝卜订单2', 4.00, '红胡萝卜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '154号街道', 7, 0),
('胡萝卜订单3', 3.75, '黄胡萝卜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '155号街道', 7, 0),
('胡萝卜订单4', 3.25, '白胡萝卜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '156号街道', 7, 0),
('胡萝卜订单5', 3.60, '紫胡萝卜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '157号街道', 7, 0),
('胡萝卜订单6', 3.40, '彩色胡萝卜', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '158号街道', 7, 0);

INSERT INTO tb_order (title, price, content, order_status, type, picture, own_name, cooperation_name, create_time, update_time, address, category_id, child_id) VALUES
('大蒜订单1', 5.50, '新鲜大蒜', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '阿丽', '蔬菜供应商', NOW(), NOW(), '147号街道', 7, 1),
('大蒜订单2', 6.00, '小蒜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '张三', '蔬菜供应商', NOW(), NOW(), '148号街道', 7, 1),
('大蒜订单3', 7.00, '蓝蒜', 'Pending', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '李四', '蔬菜供应商', NOW(), NOW(), '149号街道', 7, 1),
('大蒜订单4', 5.50, '独蒜', 'Completed', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '王五', '蔬菜供应商', NOW(), NOW(), '150号街道', 7, 1),
('大蒜订单5', 6.50, '蒜头', 'Pending', 'Online', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '赵六', '蔬菜供应商', NOW(), NOW(), '151号街道', 7, 1),
('大蒜订单6', 5.75, '蒜苗', 'Completed', 'Offline', 'https://image.cnhnb.com/image/jpeg/head/2020/04/16/2a470819a0f6425d90a4b11c02a058c7.jpeg?imageView2/1/w/525/h/525/format/jpg/interlace/1/quality/100/ignore-error/1', '孙七', '蔬菜供应商', NOW(), NOW(), '152号街道', 7, 1);


/*Table structure for table `tb_purchase` */

DROP TABLE IF EXISTS `tb_purchase`;

CREATE TABLE `tb_purchase` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_type` int NOT NULL,
  `total_price` decimal(65,2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单收货地址',
  `purchase_status` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`purchase_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_purchase` */

insert  into `tb_purchase`(`purchase_id`,`own_name`,`purchase_type`,`total_price`,`address`,`purchase_status`,`create_time`,`update_time`) values 
(120,'wyn3',1,15.80,'184',1,'2022-09-07 16:09:34','2022-09-07 16:09:34'),
(121,'wyn3',1,265.00,'184',1,'2022-09-07 16:09:55','2022-09-07 16:09:55'),
(122,'zhangxukun',1,324.00,'147',1,'2022-09-08 10:13:44','2022-09-08 10:13:44'),
(123,'admin001',1,131.60,'190',1,'2023-06-30 10:15:27','2023-06-30 10:15:27');

/*Table structure for table `tb_purchase_detail` */

DROP TABLE IF EXISTS `tb_purchase_detail`;

CREATE TABLE `tb_purchase_detail` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `order_id` int NOT NULL,
  `unin_price` decimal(65,2) NOT NULL,
  `sum_price` decimal(65,2) NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `purchase_id` (`purchase_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_purchase_detail` */

insert  into `tb_purchase_detail`(`detail_id`,`purchase_id`,`order_id`,`unin_price`,`sum_price`,`count`) values 
(123,120,78,15.80,15.80,1),
(124,121,97,69.00,69.00,1),
(125,121,89,98.00,196.00,2),
(126,122,80,324.00,324.00,1),
(127,123,77,65.80,131.60,2);

/*Table structure for table `tb_question` */

DROP TABLE IF EXISTS `tb_question`;

CREATE TABLE `tb_question` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专家',
  `questioner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `plant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农作物名称',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题标题',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回答',
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_question` */

insert  into `tb_question`(`id`,`expert_name`,`questioner`,`phone`,`plant_name`,`title`,`question`,`answer`,`status`) values 
(101,'zhangxu','wyn3','13792499999','玉米','玉米苗灌溉','专家您好，我想请问玉米苗新技术灌溉，对玉米苗有没有影响','',0),
(103,'zhangxu','wyn3','13792499999','新疆哈密瓜','新疆哈密瓜甜度控制','新疆哈密瓜甜度是否跟日晒有关','哈密瓜性喜充足的阳光和较大的昼夜温差,白天可以充分发挥光合作用,而夜晚的呼吸消耗较小,有利于养分沉淀',0),
(108,'gaoge','lzh','15621367568','苹果树','苹果果树种植方法','苹果果树种植多久浇一次水比较好呀','aaaaa',1),
(110,'gaoge','wyn3','13596488256','这是测试提问','这是测试提问','这是测试提问','aaaaa',1),
(111,'gaoge','wyn3','13792499275','草莓','北方草莓种植品种','北方草莓种植品种有哪些','红颜，甜宝',1),
(112,'gaoge','admin001','15566554488','aaaa','aaaa','aaaa','aaaaa',1);

/*Table structure for table `tb_reserve` */

DROP TABLE IF EXISTS `tb_reserve`;

CREATE TABLE `tb_reserve` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专家',
  `questioner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '面积',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '土地地址',
  `plant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农作物名称',
  `soil_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '土壤条件',
  `plant_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物条件',
  `plant_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '留言',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回答',
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_reserve` */

insert  into `tb_reserve`(`id`,`expert_name`,`questioner`,`area`,`address`,`plant_name`,`soil_condition`,`plant_condition`,`plant_detail`,`phone`,`message`,`answer`,`status`) values 
(210,'gaoge','wyn3','2','青岛崂山区北宅','草莓','沙地','越冬植物','红颜草莓','13785964152',NULL,'已处理',1);

/*Table structure for table `tb_sell_purchase` */

DROP TABLE IF EXISTS `tb_sell_purchase`;

CREATE TABLE `tb_sell_purchase` (
  `sell_purchase_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_type` int NOT NULL,
  `unin_pricee` decimal(65,2) NOT NULL,
  `sum_price` decimal(65,2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单收货地址',
  `purchase_status` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`sell_purchase_id`) USING BTREE,
  KEY `purchase_id` (`purchase_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_sell_purchase` */

insert  into `tb_sell_purchase`(`sell_purchase_id`,`purchase_id`,`own_name`,`purchase_type`,`unin_pricee`,`sum_price`,`address`,`purchase_status`,`create_time`,`update_time`,`order_id`) values 
(15,120,'zhangxukun',2,15.80,15.80,'184',1,'2022-09-07 16:09:34','2022-09-07 16:09:34',78),
(16,121,'zwr',2,69.00,69.00,'184',1,'2022-09-07 16:09:55','2022-09-07 16:09:55',97),
(17,121,'zwr',2,98.00,196.00,'184',1,'2022-09-07 16:09:55','2022-09-07 16:09:55',89),
(18,122,'wyn3',2,324.00,324.00,'147',1,'2022-09-08 10:13:44','2022-09-08 10:13:44',80),
(19,123,'wyn3',2,65.80,131.60,'190',1,'2023-06-30 10:15:27','2023-06-30 10:15:27',77);

/*Table structure for table `tb_shoppingcart` */

DROP TABLE IF EXISTS `tb_shoppingcart`;

CREATE TABLE `tb_shoppingcart` (
  `shopping_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `count` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`shopping_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_shoppingcart` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identity_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user' COMMENT 'user普通用户，expert专家，admin管理员',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `integral` int DEFAULT '500' COMMENT '积分500',
  `credit` int DEFAULT '5' COMMENT '信誉1，2，3，4，5',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `tb_user` */

insert  into `tb_user`(`user_name`,`password`,`nick_name`,`phone`,`identity_num`,`address`,`role`,`create_time`,`update_time`,`integral`,`credit`,`avatar`,`real_name`) values 
('admin','$2a$10$y8Ty.JI2YU33pSgILAJWxuUMVCY8WOvWWCzxMcQmmnTBAt/ZjoKSu','管理员','17894286579','370343199612012718','山东省青岛市','admin','2021-09-01 09:00:51','2022-09-01 16:35:24',0,0,'2ae82e5cf7ca47c9ab516d37dccab5dd.jpg',''),
('admin001','$2a$10$y8Ty.JI2YU33pSgILAJWxuUMVCY8WOvWWCzxMcQmmnTBAt/ZjoKSu','gxh',NULL,NULL,NULL,'user','2023-06-30 10:12:45','2023-06-30 10:33:40',0,0,'d2259878e3724a6d8d7cd2962efc1074.jpg',NULL),
('gaoge','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','高歌','18766661439','370343199612016352','山东省临沂市','expert','2021-08-27 16:05:20','2022-09-01 11:21:11',0,0,'f1bd96ecafba46cca7a0c6af92d84fbd.jpg','高歌'),
('lisi','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','lisi','15623652365','371323199601062719','山东省临沂市','user','2022-08-19 16:39:11','2022-09-01 17:20:04',0,0,'2ae82e5cf7ca47c9ab516d37dccab5d2.jpg','李思'),
('lzh','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','llllzzzzhhhh','15621367568','373312199801032719','山东省威海市','user','2022-07-22 11:05:54','2022-09-07 16:45:53',0,0,'ac10c6dc98d14afda5f09ba81f286197.jpg','李增虎'),
('tyy','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','帅气的小公举','15236983695','370343199613652415','山东省青岛市','user','2021-08-30 09:59:50','2022-08-10 15:44:36',0,0,'39557b8fb7a54f81833c8d4a7309b05c.jpg','唐艳艳'),
('wangya','$2a$10$nLKfTbJqrA5IoRdY.PsZBOACe2s4H3k2NPKLy5LdWL0wKWno0.oDG','wangya','13792449255','370213198911120506','山东省青岛市','user','2022-09-08 10:14:22','2022-09-08 10:19:34',0,0,'rongxiaotong.gif','王娅'),
('wyn','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','wanayuna','18711236658','370123200008123456','山东省威海市','expert','2021-08-27 16:05:20','2022-09-01 11:21:11',0,0,'f1bd96ecafba46cca7a0c6af92d84fbd.jpg','李玉娜'),
('wyn3','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','wyn3','15630429628','324624861233056852','山东省青岛市','user','2022-04-11 11:36:03','2022-08-18 15:04:18',0,0,'bd12eba3a9a24d89845ebbdb7fbff448.jpg','王亚楠'),
('zhangsan','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','zhangsan','13792499274','370343199609176060','山东省青岛市','user','2022-08-19 16:37:10','2022-08-19 16:37:10',0,0,'bd12eba3a9a24d89845ebbdb7fbff448.jpg','张三'),
('zhangxu','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','张旭','13456567878','370123200001012233','山东省青岛市','expert','2021-08-31 10:13:42','2022-08-10 15:43:58',0,0,'2ae82e5cf7ca47c9ab516d37dccab5dd.jpg','张旭'),
('zhangxukun','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','kelven','13544545454','370123200008083422','山东省临沂市','user','2021-08-27 16:05:25','2022-08-23 15:19:28',0,0,'2ae82e5cf7ca47c9ab516d37dccab5dd.jpg','张旭坤'),
('zwr','$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq','张文瑞','15623652222','111111111111111111','山东省威海市','user','2021-08-30 09:20:24','2022-08-23 15:23:34',0,0,'bd12eba3a9a24d89845ebbdb7fbff449.jpg','张文瑞');

/* Function  structure for function  `sfn_GetSimilar_Rate` */

/*!50003 DROP FUNCTION IF EXISTS `sfn_GetSimilar_Rate` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `sfn_GetSimilar_Rate`(s1 VARCHAR(64),s2 VARCHAR(64)) RETURNS float
BEGIN
declare l1 int default 0;
declare l2 int default 0;
declare i int default 0;
declare _ss varchar(2) ;
declare j int default 0;
declare sum int default 0;

set l1=CHAR_LENGTH(s1);
set l2=CHAR_LENGTH(S2);
IF l1=0 THEN RETURN 0;
END IF;
IF l2=0 THEN RETURN 0;
END IF;

SET i=0;
set sum=0;
myloop1:LOOP
	SET i=i+1;
	IF i>l1 THEN LEAVE myloop1;
	end if;
	SET _ss=substr(s1,i,1);
	SET j=0;
	myloop2:LOOP
		set j=j+1;
		if j>l2 then 
		   LEAVE myloop2;
		end if;
		if _ss=substr(s2,j,1) then 
		  set sum=sum+1;
		end if;
	END LOOP myloop2;

END LOOP myloop1;

RETURN sum/l2;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
