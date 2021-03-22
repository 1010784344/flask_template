/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_hengcai

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-25 18:12:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ihc_site_about
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_about`;
CREATE TABLE `ihc_site_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_about
-- ----------------------------
INSERT INTO `ihc_site_about` VALUES ('1', '企业简介', '海南华宇天地劳务服务有限公司是一个家经工商行政部门批准成立，为各类星级酒店、大型展会、餐饮娱乐活动及大众宴会提供服务人员为主要项目的服务企业，是一个专业的商业咨询、劳务派遣团队的朝气蓬勃的创业公司。公司特别致力于协助各大酒店服务工作，专注酒店客房清扫服务，宴会帮工服务，礼仪服务，物业开荒等服务内容。我们始终信守着“规范化管理，专业化服务，职业化培训，雇主式派遣”这劳务派遣管理服务模式不断创新和提升的事业理念，从而铸就了公司良好的品牌优势，塑造了一批忠诚的用户，公司在正式注册前，是以团队形式与劳务公司合作', '20180116\\9cd03e85853aaadd12944b5145e57043.jpg', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: 微软雅黑, \">海南华宇天地劳务服务有限公司是一个家经工商行政部门批准成立，为各类星级酒店、大型展会、餐饮娱乐活动及大众宴会提供服务人员为主要项目的服务企业，是一个专业的商业咨询、劳务派遣团队的朝气蓬勃的创业公司。公司特别致力于协助各大酒店服务工作，专注酒店客房清扫服务，宴会帮工服务，礼仪服务，物业开荒等服务内容。我们始终信守着“规范化管理，专业化服务，职业化培训，雇主式派遣”这劳务派遣管理服务模式不断创新和提升的事业理念，从而铸就了公司良好的品牌优势，塑造了一批忠诚的用户，公司在正式注册前，是以团队形式与劳务公司合作，派遣员工到三亚亚龙湾金茂丽思卡尔顿酒店，三亚亚龙湾瑞吉度假酒店，三亚湾唐拉雅秀酒店，凤凰岛隐居海上度假酒店，三亚大东海海上时光度假酒店，三亚南田温泉好汉波凯莱度假酒店，三亚湾鲁能物业，别墅开荒，餐饮等四、五星级酒店和知名物业及饮食建立了合作关系，至今输送酒店清扫服务和酒店宴会帮工等数千人。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: 微软雅黑, \">团队各方面工作出色 ，服务得到各个用人单位的肯定和好评，我们团队既有来自海南大爷、三亚学院等海南本地大专院校的创业型年轻大学生人才，更有很多来自海南各个高星级酒店，从事过多年酒店高级管理的专家和培训团队，公司管理团队具有非常丰富的市场运营经验，从酒店下单到人员安排等一些类工作都有专人管理，不断实现管理的专业化，在管理，运营，以及人员安排上无不体现着丰富的经验和精湛的管理技术和人文关怀</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: 微软雅黑, \">同时，海量的人力资源储备让我们具备强大的调遣能力，而且所有员工皆经过公司专业培训，同事具有多家五星级酒店的实践经验，公司，员工的高素质服务也赢得了多家酒店集团旗下的高端酒店品牌的青睐，我们将一如既往秉承专一、高标准的市场服务，为合作伙伴创造更大更多的优异顾客价值，未来，我们将通过整合现有资源及各行业需求，积极发挥团队优势，向建设成为海南区域高效率，高质量的part-time集散中心的目标搞个奋进，我们以最理想的心态和最专业的服务，以锐意进取，追求卓越的精神，立足于三亚，辐射海口，博鳌，兴隆等海南区域，服务于各大酒店！</p><p><br/></p>');

-- ----------------------------
-- Table structure for ihc_site_admin
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_admin`;
CREATE TABLE `ihc_site_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `login_ip` varchar(250) DEFAULT NULL,
  `login_num` int(11) DEFAULT NULL,
  `login_last` int(11) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT NULL,
  `islock` tinyint(1) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_admin
-- ----------------------------
INSERT INTO `ihc_site_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '/public/uploads/20180122/1516630198936672.jpg', '113.16.62.89', '131', '1511317061', '1', '0', '1479611947');
INSERT INTO `ihc_site_admin` VALUES ('4', 'ddddddddss', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '/public/uploads/20180122/1516630198120785.png', '', '0', '0', '0', '0', '1517116402');
INSERT INTO `ihc_site_admin` VALUES ('6', 'fengyeliudan', '532400', '/public/uploads/20180122/1516630198894157.jpg', '', '0', '0', '0', '1', '1517117318');

-- ----------------------------
-- Table structure for ihc_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_article`;
CREATE TABLE `ihc_site_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(4) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `isbold` tinyint(2) DEFAULT NULL,
  `isitalic` tinyint(2) DEFAULT NULL,
  `isthrough` tinyint(2) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `intro` varchar(250) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `img` text,
  `file` text,
  `content` text,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `isexamine` tinyint(2) DEFAULT NULL,
  `isrecommend` tinyint(2) DEFAULT NULL,
  `istop` tinyint(2) DEFAULT NULL,
  `click` int(6) DEFAULT NULL,
  `adminid` tinyint(4) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_article
-- ----------------------------
INSERT INTO `ihc_site_article` VALUES ('1', '6', '钟丽缇19岁混血女儿曝光，网友：还以为是当年的钟丽缇呢', '', '0', '0', '0', '', '', '  对于钟丽缇这性感美女，大家都不陌生。她和张伦硕结婚之前有过两段婚姻，而且有三个女儿，如今大女儿严书琴已经19岁啦，出落的亭亭玉立。  ', '', '', '', '', '<p>严书琴是一位混血儿，但她完全继承了妈妈钟丽缇活泼开朗的性格，也继承了妈妈的一部分美貌，脸型和眼睛和妈妈钟丽缇长的很像。因为身材高挑和长得漂亮，也被星探发现进入了娱乐圈。也许将来能在娱乐圈超过妈妈的地位大红呢！</p><p><br/></p><p>和钟丽缇一样，严书琴也非常爱笑，穿着也和妈妈如出一辙，喜欢凸显身材的性感衣服。她会经常在微博发一些自己的美照，一眼看过去，还以为是当年的钟丽缇呢！</p><p><br/></p><p>穿上白色衣服，带点搞怪的表情，严书琴仿佛就是当年的钟丽缇。由于混血的关系，严书琴比普通的中国女孩看起来成熟一些，所以很多网友说她比钟丽缇看着还老。</p><p><br/></p>', '0', '0', '1', '0', '0', '28', '1', '1511426228');
INSERT INTO `ihc_site_article` VALUES ('36', '6', '组图：Hebe与Ella相约爬山心情大好 渔夫帽登山鞋装备齐全', '', '1', '1', '1', '', '', '新浪娱乐讯 4月19日，田馥甄Hebe在微博晒出与陈嘉桦Ella一起爬山的照片。两人戴着渔夫帽，身穿登山鞋，装备齐全，在山石之间穿行，享受大自然的好风景。', '', '', '', '', '<p>新浪娱乐讯 4月19日，田馥甄Hebe在微博晒出与陈嘉桦Ella一起爬山的照片。两人戴着渔夫帽，身穿登山鞋，装备齐全，在山石之间穿行，享受大自然的好风景。</p><p><br/></p><p><img src=\"http://localhost:5000/mysite/public/uploads/20200420/158735227094372.png\" width=\"800\"/></p><p><br/></p><p><span class=\"num\"></span></p><p>新浪娱乐讯 4月19日，田馥甄Hebe在微博晒出与陈嘉桦Ella一起爬山的照片。两人戴着渔夫帽，身穿登山鞋，装备齐全，在山石之间穿行，享受大自然的好风景。</p><p><br/></p>', '0', '0', '1', '0', '0', '0', '1', '1587352271');
INSERT INTO `ihc_site_article` VALUES ('37', '6', '董璇带女儿骑车，小酒窝穿牛仔装又甜又飒', '', '1', '1', '1', '小酒窝穿牛仔装又甜又飒，简直是爸爸高云翔翻版', '董璇,小助理', '此前在直播时携带女儿小酒窝一起出镜的董璇就有夸赞女儿是自己“小助理”', '未知', '腾讯娱乐', '[\"http://localhost:5000/mysite/public/uploads/20200420/158737396658885.png\"]', '', '<p>此前在直播时携带女儿小酒窝一起出镜的董璇就有夸赞女儿是自己“小助理”，言辞之中满含对女儿的喜爱。4月20日早，董璇又在个人社交平台晒出一组小酒窝最新写真，依旧附文“小助理上线”。照片中，4岁小酒窝半脱掉外套坐在自行车上，满满初夏感！</p><p><br/></p><p style=\"text-align: center;\"><img src=\"http://localhost:5000/mysite/public/uploads/20200420/158736590149657.png\" title=\"1.png\" alt=\"1.png\"/></p><p><br/></p><p>妈妈镜头下的小酒窝长发披肩头戴黑色棒球帽，牛仔上衣运动裤加身的她，变身为骑行小高手的她，一身装扮又甜又飒，超可爱。</p><p>小酒窝坐在台阶上享受妈妈的镜头记录，坐姿淑女秀出一双小长腿，模特范十足。小酒窝单手托把，戴上衣帽侧脸看向镜头，白皙的小脸蛋看起来Q弹十足，很是招人喜欢，看的直叫人想上手捏一捏。</p><p><br/></p><p style=\"text-align: center;\"><img src=\"http://localhost:5000/mysite/public/uploads/20200420/158736598843675.png\" title=\"2.png\" alt=\"2.png\"/></p>', '1587312000', '1588176000', '1', '1', '1', '0', '1', '1587366011');
INSERT INTO `ihc_site_article` VALUES ('39', '6', '组图：刘诗诗穿粉色上衣元气又减龄 对镜甜笑少女感满满', '#ff0000', '1', '1', '0', '刘诗诗身穿粉色上衣， 对镜甜笑宛若少女', '刘诗诗', '新浪娱乐讯 近日，刘诗诗在微博分享了一组照片，照片中刘诗诗身穿粉色上衣，皮肤保养得很好， 对镜甜笑宛若少女', '未知', '新浪娱乐讯', '[\"http://localhost:5000/mysite/public/uploads/20200425/158780170847008.jpg\", \"http://localhost:5000/mysite/public/uploads/20200425/158780170822954.jpg\"]', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; background-color: rgb(255, 255, 255);\">新浪娱乐讯 近日，刘诗诗在微博分享了一组照片，照片中刘诗诗身穿粉色上衣，皮肤保养得很好， 对镜甜笑宛若少女。</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"http://localhost:5000/mysite/public/uploads/20200425/158780179080979.jpg\" title=\"QQtp20200408230534.jpg\" alt=\"QQtp20200408230534.jpg\"/></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p>', '1588176000', '1588953600', '1', '1', '0', '0', '1', '1587801879');
INSERT INTO `ihc_site_article` VALUES ('23', '2', '公司介绍', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-indent: 2em;\">广西富轩隆木屋有限公司坐落在广西最大的侨乡-容县。是一家集木结构房屋、木结构景观建造研发、设计、生产、安装、销售专业大型生产制造企业。富轩隆木屋公司厂房占地面积约10000平方米，注册资金2000万元，拥有全套先进木屋生产线设备，年生产木屋能力达50000平方米，是中国木结构与木屋产业知名品牌企业，广西木屋生产行业领军品牌。</p><p style=\"text-indent: 2em;\">公司引进了加拿大和芬兰、美国木屋制作技术和工艺，产品设计新颖，做工细腻，种类多样。公司拥有一批专业的研发设计团队和经验丰富的生产安装团队，专注于木质住宅、度假别墅、休闲生态园、休闲会所、园林木结构景观建筑工程。公司生产的木屋产品投放市场，深受客户的赞誉和好评。目前公司研发生产有多种不同风格的木屋、木别墅版样方案供客户参考，也可以根据客户的要求提供个性化的设计、量身订造，以过硬的品质满足客户个性方案。</p><p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625290934306.jpg\" title=\"1517625290934306.jpg\" alt=\"auto_1112.jpg\"/></p><p><br/></p>', null, null, '1', '0', '0', '0', '1', '1517625300');
INSERT INTO `ihc_site_article` VALUES ('24', '3', '企业面貌', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625290934306.jpg\" alt=\"1517625290934306.jpg\"/></p><p style=\"text-align: center;\"><span style=\"line-height: 25.6px;\">富轩隆木屋构件生产车间</span></p><p><br/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625417138859.jpg\" title=\"1517625417138859.jpg\" alt=\"auto_1111.jpg\"/></p><p style=\"text-align: center;\">总装车间一角</p>', null, null, '1', '0', '0', '0', '1', '1517625426');
INSERT INTO `ihc_site_article` VALUES ('25', '4', '服务承诺', null, '0', '0', '0', null, null, null, null, null, null, null, '<p>我们承诺：为每一位客户提供值得信赖的木结构产品和服务，不断致力提供高品质、高品位健康木质建筑家居。在未来的发展道路上，我们始终秉承“讲究品质，追求完美，健康环保”的经营准则，为人类缔造绿色健康木制建筑家居典范。</p>', null, null, '1', '0', '0', '0', '1', '1517625488');
INSERT INTO `ihc_site_article` VALUES ('27', '6', '竹山湖景区60栋木屋开始建设', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630199119757.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198939297.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198936672.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198894157.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198695436.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198131513.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198120785.png\"/></p><p><br/></p>', null, null, '1', '0', '0', '0', '1', '1517625736');

-- ----------------------------
-- Table structure for ihc_site_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_article_category`;
CREATE TABLE `ihc_site_article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fatherid` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_article_category
-- ----------------------------
INSERT INTO `ihc_site_article_category` VALUES ('1', '0', '关于我们');
INSERT INTO `ihc_site_article_category` VALUES ('2', '1', '公司介绍');
INSERT INTO `ihc_site_article_category` VALUES ('3', '1', '企业面貌');
INSERT INTO `ihc_site_article_category` VALUES ('4', '1', '服务承诺');
INSERT INTO `ihc_site_article_category` VALUES ('5', '0', '新闻资讯');
INSERT INTO `ihc_site_article_category` VALUES ('6', '5', '公司新闻');
INSERT INTO `ihc_site_article_category` VALUES ('7', '5', '行业新闻');
INSERT INTO `ihc_site_article_category` VALUES ('8', '0', '客服案例');
INSERT INTO `ihc_site_article_category` VALUES ('9', '8', '私家住宅');
INSERT INTO `ihc_site_article_category` VALUES ('10', '8', '景区渡假');
INSERT INTO `ihc_site_article_category` VALUES ('11', '8', '楼盘小区');
INSERT INTO `ihc_site_article_category` VALUES ('12', '8', '农家田园');
INSERT INTO `ihc_site_article_category` VALUES ('13', '0', '精英团队');
INSERT INTO `ihc_site_article_category` VALUES ('14', '13', '设计团队');
INSERT INTO `ihc_site_article_category` VALUES ('15', '13', '制作团队');
INSERT INTO `ihc_site_article_category` VALUES ('16', '0', '产品展示');
INSERT INTO `ihc_site_article_category` VALUES ('17', '16', '木屋/别墅屋');
INSERT INTO `ihc_site_article_category` VALUES ('18', '16', '廊架/栈道');
INSERT INTO `ihc_site_article_category` VALUES ('19', '16', '水车/风车');
INSERT INTO `ihc_site_article_category` VALUES ('20', '0', '联系我们');
INSERT INTO `ihc_site_article_category` VALUES ('21', '20', '联系方式');
INSERT INTO `ihc_site_article_category` VALUES ('26', '5', '公司公告');

-- ----------------------------
-- Table structure for ihc_site_article_copy
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_article_copy`;
CREATE TABLE `ihc_site_article_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(4) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `isbold` tinyint(2) DEFAULT NULL,
  `isitalic` tinyint(2) DEFAULT NULL,
  `isthrough` tinyint(2) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `intro` varchar(250) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `img` text,
  `file` text,
  `content` text,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `isexamine` tinyint(2) DEFAULT NULL,
  `isrecommend` tinyint(2) DEFAULT NULL,
  `istop` tinyint(2) DEFAULT NULL,
  `click` int(6) DEFAULT NULL,
  `adminid` tinyint(4) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_article_copy
-- ----------------------------
INSERT INTO `ihc_site_article_copy` VALUES ('1', '6', '钟丽缇19岁混血女儿曝光，网友：还以为是当年的钟丽缇呢', '', '0', '0', '0', '', '', '  对于钟丽缇这性感美女，大家都不陌生。她和张伦硕结婚之前有过两段婚姻，而且有三个女儿，如今大女儿严书琴已经19岁啦，出落的亭亭玉立。  ', '', '', '', '', '<p>严书琴是一位混血儿，但她完全继承了妈妈钟丽缇活泼开朗的性格，也继承了妈妈的一部分美貌，脸型和眼睛和妈妈钟丽缇长的很像。因为身材高挑和长得漂亮，也被星探发现进入了娱乐圈。也许将来能在娱乐圈超过妈妈的地位大红呢！</p><p><br/></p><p>和钟丽缇一样，严书琴也非常爱笑，穿着也和妈妈如出一辙，喜欢凸显身材的性感衣服。她会经常在微博发一些自己的美照，一眼看过去，还以为是当年的钟丽缇呢！</p><p><br/></p><p>穿上白色衣服，带点搞怪的表情，严书琴仿佛就是当年的钟丽缇。由于混血的关系，严书琴比普通的中国女孩看起来成熟一些，所以很多网友说她比钟丽缇看着还老。</p><p><br/></p>', '0', '0', '1', '0', '0', '28', '1', '1511426228');
INSERT INTO `ihc_site_article_copy` VALUES ('2', '6', '马苏蹲地捡废纸 2小露事业线不惧走光', '', '0', '0', '0', '', '', ' 视觉中国讯 2017年11月22日，北京，2017 时尚先生年度盛典红毯。马苏黑色深V纱裙现身，仙气儿足，蹲地捡废纸小露事业线不惧走光。 ', '', '', 'a:3:{i:0;s:45:\"/public/uploads/20180122/1516630198695436.jpg\";i:1;s:46:\"/public/uploads/20180122/1516630197119602.jpeg\";i:2;s:45:\"/public/uploads/20180122/1516630199136505.jpg\";}', '', '<p>马苏蹲地捡废纸，小露事业线不惧走光。</p>', '0', '0', '1', '0', '0', '10', '1', '1511426320');
INSERT INTO `ihc_site_article_copy` VALUES ('3', '6', '女星安以轩现身2017上海维密秀，鸽子蛋钻戒耀眼', '', '0', '0', '0', '小龙女', '', '女星安以轩现身2017上海维密秀。安以轩，1980年9月29日出生于台湾省台北市，毕业于台湾观光学院，中国台湾女演员、歌手。', '', '', 'a:2:{i:0;s:46:\"/public/uploads/20180121/1516523773843552.jpeg\";i:1;s:45:\"/public/uploads/20180121/1516523773461128.jpg\";}', '', '<p>安以轩长的不错！气质很好！喜欢这样的！有机会认识一下、改天我家举办30周年庆典的时候请上安以轩！然后面对面聊聊人生吧</p><p style=\"text-align: center\"><img src=\"/public/uploads/20180121/1516523773205864.jpeg\" alt=\"1516523773205864.jpeg\"/></p><p><br/></p>', '0', '0', '1', '0', '0', '27', '1', '1511429318');
INSERT INTO `ihc_site_article_copy` VALUES ('9', '6', '奚梦瑶维密跌倒后再登台走秀 礼服造型大胆(图)', '#1c1919', '1', '0', '0', '奚梦瑶现身巴黎时装周，受邀为某奢侈品牌走秀', '奚梦瑶,维密', '新浪娱乐讯 奚梦瑶现身巴黎时装周，受邀为某奢侈品牌走秀，共演绎2套造型，献出了2018年的开年第一秀。这是她在维密秀跌倒后首度登台走秀。她还在微博晒出幕后工作照，看上去状态满满。', 'admin', '新浪娱乐', 'a:4:{i:0;s:45:\"/public/uploads/20180122/1516630199111065.jpg\";i:1;s:45:\"/public/uploads/20180122/1516630198894157.jpg\";i:2;s:45:\"/public/uploads/20180122/1516630198695436.jpg\";i:3;s:45:\"/public/uploads/20180122/1516630198131513.jpg\";}', 'a:1:{i:0;s:50:\"/public/uploads/file/20180121/1516512014392621.txt\";}', '<p>1月19日晚，谢霆锋抵达台湾出席某颁奖典礼，而张柏芝则在1月20日抵达台湾，张柏芝此行是为林志颖拍MV。林志颖出道即将满25周年，为了纪念，特意准备发行新的专辑，而上一次发行专辑还是在11年前。新专辑林志颖邀请了好友林俊杰担任歌曲制作人，邀请了张柏芝和任贤齐担任MV演员。</p><p><br/></p><p>据港媒报道，张柏芝和任贤齐此次是零片酬出演林志颖新专辑MV，林志颖经纪公司和林志颖本人对两位巨星友情演出是非常感激，经纪公司表示：“这是无价的，因为能把这2位好友邀来一起入镜是非常难得。非常谢谢他们力挺。”在拍摄结束后，林志颖会款待张柏芝和任贤齐吃大餐以示谢意。</p><p><br/></p><p>1月21日，张柏芝穿着米色长大衣，现身台北东区街头开拍MV。港媒报道，因为剧情需要，张柏芝拖着行李箱来回走动，眼神若有所思，跟女临演在花店门口临别拥抱，走到一半回眸眼带泪光，戏味十足，演技惊艳。接着林志颖也感到现场，而任贤齐垫后，由此可见MV男女主角分别是张柏芝和林志颖，而任贤齐仅是配角。</p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198695436.jpg\" alt=\"1516630198695436.jpg\"/></p><p>MV台北东区街头的戏份拍了两个小时便结束了，接着去某公寓拍摄内景。在拍摄公寓内景时，林志颖开着自己1580万台币（约344.5万人民币）的豪车前去盯场，引发路人围观，同样热爱赛车的任贤齐更是激动地试乘了一番。</p>', '0', '0', '1', '1', '1', '0', '1', '1516529843');
INSERT INTO `ihc_site_article_copy` VALUES ('23', '2', '公司介绍', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-indent: 2em;\">广西富轩隆木屋有限公司坐落在广西最大的侨乡-容县。是一家集木结构房屋、木结构景观建造研发、设计、生产、安装、销售专业大型生产制造企业。富轩隆木屋公司厂房占地面积约10000平方米，注册资金2000万元，拥有全套先进木屋生产线设备，年生产木屋能力达50000平方米，是中国木结构与木屋产业知名品牌企业，广西木屋生产行业领军品牌。</p><p style=\"text-indent: 2em;\">公司引进了加拿大和芬兰、美国木屋制作技术和工艺，产品设计新颖，做工细腻，种类多样。公司拥有一批专业的研发设计团队和经验丰富的生产安装团队，专注于木质住宅、度假别墅、休闲生态园、休闲会所、园林木结构景观建筑工程。公司生产的木屋产品投放市场，深受客户的赞誉和好评。目前公司研发生产有多种不同风格的木屋、木别墅版样方案供客户参考，也可以根据客户的要求提供个性化的设计、量身订造，以过硬的品质满足客户个性方案。</p><p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625290934306.jpg\" title=\"1517625290934306.jpg\" alt=\"auto_1112.jpg\"/></p><p><br/></p>', null, null, '1', '0', '0', '0', '1', '1517625300');
INSERT INTO `ihc_site_article_copy` VALUES ('24', '3', '企业面貌', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625290934306.jpg\" alt=\"1517625290934306.jpg\"/></p><p style=\"text-align: center;\"><span style=\"line-height: 25.6px;\">富轩隆木屋构件生产车间</span></p><p><br/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180203/1517625417138859.jpg\" title=\"1517625417138859.jpg\" alt=\"auto_1111.jpg\"/></p><p style=\"text-align: center;\">总装车间一角</p>', null, null, '1', '0', '0', '0', '1', '1517625426');
INSERT INTO `ihc_site_article_copy` VALUES ('25', '4', '服务承诺', null, '0', '0', '0', null, null, null, null, null, null, null, '<p>我们承诺：为每一位客户提供值得信赖的木结构产品和服务，不断致力提供高品质、高品位健康木质建筑家居。在未来的发展道路上，我们始终秉承“讲究品质，追求完美，健康环保”的经营准则，为人类缔造绿色健康木制建筑家居典范。</p>', null, null, '1', '0', '0', '0', '1', '1517625488');
INSERT INTO `ihc_site_article_copy` VALUES ('26', '6', '装修公司教你装修如何搭配颜色 装修公司教你装修如何搭配颜色', null, '0', '0', '0', null, null, '广西富轩隆木屋有限公司座落在中国江南四大名楼之举世无双全纯木结构真武阁的故乡—容县，占地面积约10000平方米，注册资金2000万元，中国木结构与木屋产业知名品牌企业，中国木结构与木屋产业广西领军品牌。富轩隆木屋公司汇集了全国知...... ', null, '富轩隆木屋', 'a:1:{i:0;s:45:\"/public/uploads/20180203/1517625585140791.jpg\";}', null, '<p>&nbsp; &nbsp;广西富轩隆木屋有限公司座落在中国江南四大名楼之举世无双全纯木结构真武阁的故乡—容县，占地面积约10000平方米，注册资金2000万元，中国木结构与木屋产业知名品牌企业，中国木结构与木屋产业广西领军品牌。富轩隆木屋公司汇集了全国知......</p><p><br/></p><p>&nbsp; &nbsp; &nbsp;广西富轩隆木屋有限公司座落在中国江南四大名楼之举世无双全纯木结构真武阁的故乡—容县，占地面积约10000平方米，注册资金2000万元，中国木结构与木屋产业知名品牌企业，中国木结构与木屋产业广西领军品牌。富轩隆木屋公司汇集了全国知......</p><p><br/></p><p>&nbsp; &nbsp; &nbsp;广西富轩隆木屋有限公司座落在中国江南四大名楼之举世无双全纯木结构真武阁的故乡—容县，占地面积约10000平方米，注册资金2000万元，中国木结构与木屋产业知名品牌企业，中国木结构与木屋产业广西领军品牌。富轩隆木屋公司汇集了全国知......</p><p><br/></p>', null, null, '1', '0', '0', '0', '1', '1517625630');
INSERT INTO `ihc_site_article_copy` VALUES ('27', '6', '竹山湖景区60栋木屋开始建设', null, '0', '0', '0', null, null, null, null, null, null, null, '<p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630199119757.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198939297.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198936672.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198894157.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198695436.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198131513.jpg\"/></p><p style=\"text-align: center\"><img src=\"/public/uploads/20180122/1516630198120785.png\"/></p><p><br/></p>', null, null, '1', '0', '0', '0', '1', '1517625736');

-- ----------------------------
-- Table structure for ihc_site_book
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_book`;
CREATE TABLE `ihc_site_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `qq` varchar(250) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telephone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  `isread` tinyint(4) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_book
-- ----------------------------
INSERT INTO `ihc_site_book` VALUES ('1', '你们还有货吗?', '272144215', '李冰冰', '272144215@qq.com', '13321601019', '广西南宁民族大道76号', '收到请回复', '1', '1517836645');

-- ----------------------------
-- Table structure for ihc_site_job
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_job`;
CREATE TABLE `ihc_site_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) DEFAULT NULL,
  `persontotal` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `worklife` varchar(255) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  `fulltime` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `census` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `starttostop` varchar(255) DEFAULT NULL,
  `welfare` varchar(255) DEFAULT NULL,
  `content` text,
  `isshow` tinyint(4) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_job
-- ----------------------------

-- ----------------------------
-- Table structure for ihc_site_job_contact
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_job_contact`;
CREATE TABLE `ihc_site_job_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contacter` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `isshow` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_job_contact
-- ----------------------------
INSERT INTO `ihc_site_job_contact` VALUES ('1', '罗先生', '18607712277', '332788912@qq.com', 'http://www.gxfxl.com/', '南宁市发展大道189号华尔街工谷2号楼10楼', '0');

-- ----------------------------
-- Table structure for ihc_site_links
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_links`;
CREATE TABLE `ihc_site_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `isshow` int(2) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_links
-- ----------------------------

-- ----------------------------
-- Table structure for ihc_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_slide`;
CREATE TABLE `ihc_site_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `isshow` int(2) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ihc_site_system
-- ----------------------------
DROP TABLE IF EXISTS `ihc_site_system`;
CREATE TABLE `ihc_site_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_site_system
-- ----------------------------
INSERT INTO `ihc_site_system` VALUES ('4', 'a:7:{s:4:\"site\";s:33:\"广西富轩隆木屋有限公司\";s:8:\"keywords\";s:23:\"广西,富轩隆,木屋\";s:6:\"domain\";s:20:\"http://www.gxfxl.com\";s:8:\"descript\";s:330:\"广西富轩隆木屋有限公司座落在中国江南四大名楼之举世无双全纯木结构真武阁的故乡—容县，占地面积约10000平方米，注册资金2000万元，中国木结构与木屋产业知名品牌企业，中国木结构与木屋产业广西领军品牌。富轩隆木屋公司汇集了全国知......\";s:9:\"maxupload\";s:1:\"2\";s:9:\"allowfile\";s:11:\"doc,jpg,xsl\";s:8:\"pagesize\";s:2:\"20\";}');

-- ----------------------------
-- Table structure for ihc_test
-- ----------------------------
DROP TABLE IF EXISTS `ihc_test`;
CREATE TABLE `ihc_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ihc_test
-- ----------------------------
INSERT INTO `ihc_test` VALUES ('1', '{\"id\":1,\"intro\":\"\\u6d77\\u5357\\u534e\\u5b87\\u5929\\u5730\\u52b3\\u52a1\\u670d\\u52a1\\u6709\\u9650\\u516c\\u53f8\\u4f5c\\u4e3a\\u56fd\\u5185\\u77e5\\u540d\\u91d1\\u878d\\u4fe1\\u606f\\u54a8\\u8be2\\u670d\\u52a1\\u673a\\u6784\\uff0c\\u6c47\\u96c6\\u94f6\\u884c\\u3001\\u8bc1\\u5238\\u3001\\u57fa\\u91d1\\u3001\\u4fe1\\u6258\\u7b49\\u4e1a\\u754c\\u7cbe\\u82f1\\uff0c\\u6df1\\u5ea6\\u94bb\\u7814\\u4e8e\\u5404\\u91d1\\u878d\\u9886\\u57df\\u3002 \\u8d2f\\u5f7b\\u548c\\u843d\\u5b9e\\u56fd\\u5bb6\\u548c\\u5730\\u65b9\\u653f\\u5e9c\\u76f8\\u5173\\u653f\\u7b56\\u4e0e\\u5236\\u5ea6\\uff0c\\u53d1\\u6325\\u4e13\\u4e1a\\u673a\\u6784\\u4f18\\u52bf\\uff0c\\u4fc3\\u8fdb\\u57ce\\u5e02\\u53d1\\u5c55\\u4e0e\\u91d1\\u878d\\u7684\\u9ad8\\u5ea6\\u878d\\u5408\\u3002\",\"img\":\"20171124\\\\50653c9821b16664cc5d6c33b224af51.jpg\",\"content\":\"&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &amp;quot;Times New Roman&amp;quot;, Georgia, serif; letter-spacing: 1px; white-space: normal; background-color: rgb(236, 237, 241);&quot;&gt;\\u6d77\\u5357\\u534e\\u5b87\\u5929\\u5730\\u52b3\\u52a1\\u670d\\u52a1\\u6709\\u9650\\u516c\\u53f8\\u662f\\u4e00\\u4e2a\\u5bb6\\u7ecf\\u5de5\\u5546\\u884c\\u653f\\u90e8\\u95e8\\u6279\\u51c6\\u6210\\u7acb\\uff0c\\u4e3a\\u5404\\u7c7b\\u661f\\u7ea7\\u9152\\u5e97\\u3001\\u5927\\u578b\\u5c55\\u4f1a\\u3001\\u9910\\u996e\\u5a31\\u4e50\\u6d3b\\u52a8\\u53ca\\u5927\\u4f17\\u5bb4\\u4f1a\\u63d0\\u4f9b\\u670d\\u52a1\\u4eba\\u5458\\u4e3a\\u4e3b\\u8981\\u9879\\u76ee\\u7684\\u670d\\u52a1\\u4f01\\u4e1a\\uff0c\\u662f\\u4e00\\u4e2a\\u4e13\\u4e1a\\u7684\\u5546\\u4e1a\\u54a8\\u8be2\\u3001\\u52b3\\u52a1\\u6d3e\\u9063\\u56e2\\u961f\\u7684\\u671d\\u6c14\\u84ec\\u52c3\\u7684\\u521b\\u4e1a\\u516c\\u53f8\\u3002\\u516c\\u53f8\\u7279\\u522b\\u81f4\\u529b\\u4e8e\\u534f\\u52a9\\u5404\\u5927\\u9152\\u5e97\\u670d\\u52a1\\u5de5\\u4f5c\\uff0c\\u4e13\\u6ce8\\u9152\\u5e97\\u5ba2\\u623f\\u6e05\\u626b\\u670d\\u52a1\\uff0c\\u5bb4\\u4f1a\\u5e2e\\u5de5\\u670d\\u52a1\\uff0c\\u793c\\u4eea\\u670d\\u52a1\\uff0c\\u7269\\u4e1a\\u5f00\\u8352\\u7b49\\u670d\\u52a1\\u5185\\u5bb9\\u3002\\u6211\\u4eec\\u59cb\\u7ec8\\u4fe1\\u5b88\\u7740\\u201c\\u89c4\\u8303\\u5316\\u7ba1\\u7406\\uff0c\\u4e13\\u4e1a\\u5316\\u670d\\u52a1\\uff0c\\u804c\\u4e1a\\u5316\\u57f9\\u8bad\\uff0c\\u96c7\\u4e3b\\u5f0f\\u6d3e\\u9063\\u201d\\u8fd9\\u52b3\\u52a1\\u6d3e\\u9063\\u7ba1\\u7406\\u670d\\u52a1\\u6a21\\u5f0f\\u4e0d\\u65ad\\u521b\\u65b0\\u548c\\u63d0\\u5347\\u7684\\u4e8b\\u4e1a\\u7406\\u5ff5\\uff0c\\u4ece\\u800c\\u94f8\\u5c31\\u4e86\\u516c\\u53f8\\u826f\\u597d\\u7684\\u54c1\\u724c\\u4f18\\u52bf\\uff0c\\u5851\\u9020\\u4e86\\u4e00\\u6279\\u5fe0\\u8bda\\u7684\\u7528\\u6237\\uff0c\\u516c\\u53f8\\u5728\\u6b63\\u5f0f\\u6ce8\\u518c\\u524d\\uff0c\\u662f\\u4ee5\\u56e2\\u961f\\u5f62\\u5f0f\\u4e0e\\u52b3\\u52a1\\u516c\\u53f8\\u5408\\u4f5c\\uff0c\\u6d3e\\u9063\\u5458\\u5de5\\u5230\\u4e09\\u4e9a\\u4e9a\\u9f99\\u6e7e\\u91d1\\u8302\\u4e3d\\u601d\\u5361\\u5c14\\u987f\\u9152\\u5e97\\uff0c\\u4e09\\u4e9a\\u4e9a\\u9f99\\u6e7e\\u745e\\u5409\\u5ea6\\u5047\\u9152\\u5e97\\uff0c\\u4e09\\u4e9a\\u6e7e\\u5510\\u62c9\\u96c5\\u79c0\\u9152\\u5e97\\uff0c\\u51e4\\u51f0\\u5c9b\\u9690\\u5c45\\u6d77\\u4e0a\\u5ea6\\u5047\\u9152\\u5e97\\uff0c\\u4e09\\u4e9a\\u5927\\u4e1c\\u6d77\\u6d77\\u4e0a\\u65f6\\u5149\\u5ea6\\u5047\\u9152\\u5e97\\uff0c\\u4e09\\u4e9a\\u5357\\u7530\\u6e29\\u6cc9\\u597d\\u6c49\\u6ce2\\u51ef\\u83b1\\u5ea6\\u5047\\u9152\\u5e97\\uff0c\\u4e09\\u4e9a\\u6e7e\\u9c81\\u80fd\\u7269\\u4e1a\\uff0c\\u522b\\u5885\\u5f00\\u8352\\uff0c\\u9910\\u996e\\u7b49\\u56db\\u3001\\u4e94\\u661f\\u7ea7\\u9152\\u5e97\\u548c\\u77e5\\u540d\\u7269\\u4e1a\\u53ca\\u996e\\u98df\\u5efa\\u7acb\\u4e86\\u5408\\u4f5c\\u5173\\u7cfb\\uff0c\\u81f3\\u4eca\\u8f93\\u9001\\u9152\\u5e97\\u6e05\\u626b\\u670d\\u52a1\\u548c\\u9152\\u5e97\\u5bb4\\u4f1a\\u5e2e\\u5de5\\u7b49\\u6570\\u5343\\u4eba\\u3002&lt;\\/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &amp;quot;Times New Roman&amp;quot;, Georgia, serif; letter-spacing: 1px; white-space: normal; background-color: rgb(236, 237, 241);&quot;&gt;\\u56e2\\u961f\\u5404\\u65b9\\u9762\\u5de5\\u4f5c\\u51fa\\u8272 \\uff0c\\u670d\\u52a1\\u5f97\\u5230\\u5404\\u4e2a\\u7528\\u4eba\\u5355\\u4f4d\\u7684\\u80af\\u5b9a\\u548c\\u597d\\u8bc4\\uff0c\\u6211\\u4eec\\u56e2\\u961f\\u65e2\\u6709\\u6765\\u81ea\\u6d77\\u5357\\u5927\\u7237\\u3001\\u4e09\\u4e9a\\u5b66\\u9662\\u7b49\\u6d77\\u5357\\u672c\\u5730\\u5927\\u4e13\\u9662\\u6821\\u7684\\u521b\\u4e1a\\u578b\\u5e74\\u8f7b\\u5927\\u5b66\\u751f\\u4eba\\u624d\\uff0c\\u66f4\\u6709\\u5f88\\u591a\\u6765\\u81ea\\u6d77\\u5357\\u5404\\u4e2a\\u9ad8\\u661f\\u7ea7\\u9152\\u5e97\\uff0c\\u4ece\\u4e8b\\u8fc7\\u591a\\u5e74\\u9152\\u5e97\\u9ad8\\u7ea7\\u7ba1\\u7406\\u7684\\u4e13\\u5bb6\\u548c\\u57f9\\u8bad\\u56e2\\u961f\\uff0c\\u516c\\u53f8\\u7ba1\\u7406\\u56e2\\u961f\\u5177\\u6709\\u975e\\u5e38\\u4e30\\u5bcc\\u7684\\u5e02\\u573a\\u8fd0\\u8425\\u7ecf\\u9a8c\\uff0c\\u4ece\\u9152\\u5e97\\u4e0b\\u5355\\u5230\\u4eba\\u5458\\u5b89\\u6392\\u7b49\\u4e00\\u4e9b\\u7c7b\\u5de5\\u4f5c\\u90fd\\u6709\\u4e13\\u4eba\\u7ba1\\u7406\\uff0c\\u4e0d\\u65ad\\u5b9e\\u73b0\\u7ba1\\u7406\\u7684\\u4e13\\u4e1a\\u5316\\uff0c\\u5728\\u7ba1\\u7406\\uff0c\\u8fd0\\u8425\\uff0c\\u4ee5\\u53ca\\u4eba\\u5458\\u5b89\\u6392\\u4e0a\\u65e0\\u4e0d\\u4f53\\u73b0\\u7740\\u4e30\\u5bcc\\u7684\\u7ecf\\u9a8c\\u548c\\u7cbe\\u6e5b\\u7684\\u7ba1\\u7406\\u6280\\u672f\\u548c\\u4eba\\u6587\\u5173\\u6000&lt;\\/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; border: 0px; line-height: 40px; text-indent: 2rem; color: rgb(51, 51, 51); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1, &amp;quot;Times New Roman&amp;quot;, Georgia, serif; letter-spacing: 1px; white-space: normal; background-color: rgb(236, 237, 241);&quot;&gt;\\u540c\\u65f6\\uff0c\\u6d77\\u91cf\\u7684\\u4eba\\u529b\\u8d44\\u6e90\\u50a8\\u5907\\u8ba9\\u6211\\u4eec\\u5177\\u5907\\u5f3a\\u5927\\u7684\\u8c03\\u9063\\u80fd\\u529b\\uff0c\\u800c\\u4e14\\u6240\\u6709\\u5458\\u5de5\\u7686\\u7ecf\\u8fc7\\u516c\\u53f8\\u4e13\\u4e1a\\u57f9\\u8bad\\uff0c\\u540c\\u4e8b\\u5177\\u6709\\u591a\\u5bb6\\u4e94\\u661f\\u7ea7\\u9152\\u5e97\\u7684\\u5b9e\\u8df5\\u7ecf\\u9a8c\\uff0c\\u516c\\u53f8\\uff0c\\u5458\\u5de5\\u7684\\u9ad8\\u7d20\\u8d28\\u670d\\u52a1\\u4e5f\\u8d62\\u5f97\\u4e86\\u591a\\u5bb6\\u9152\\u5e97\\u96c6\\u56e2\\u65d7\\u4e0b\\u7684\\u9ad8\\u7aef\\u9152\\u5e97\\u54c1\\u724c\\u7684\\u9752\\u7750\\uff0c\\u6211\\u4eec\\u5c06\\u4e00\\u5982\\u65e2\\u5f80\\u79c9\\u627f\\u4e13\\u4e00\\u3001\\u9ad8\\u6807\\u51c6\\u7684\\u5e02\\u573a\\u670d\\u52a1\\uff0c\\u4e3a\\u5408\\u4f5c\\u4f19\\u4f34\\u521b\\u9020\\u66f4\\u5927\\u66f4\\u591a\\u7684\\u4f18\\u5f02\\u987e\\u5ba2\\u4ef7\\u503c\\uff0c\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5c06\\u901a\\u8fc7\\u6574\\u5408\\u73b0\\u6709\\u8d44\\u6e90\\u53ca\\u5404\\u884c\\u4e1a\\u9700\\u6c42\\uff0c\\u79ef\\u6781\\u53d1\\u6325\\u56e2\\u961f\\u4f18\\u52bf\\uff0c\\u5411\\u5efa\\u8bbe\\u6210\\u4e3a\\u6d77\\u5357\\u533a\\u57df\\u9ad8\\u6548\\u7387\\uff0c\\u9ad8\\u8d28\\u91cf\\u7684part-time\\u96c6\\u6563\\u4e2d\\u5fc3\\u7684\\u76ee\\u6807\\u641e\\u4e2a\\u594b\\u8fdb\\uff0c\\u6211\\u4eec\\u4ee5\\u6700\\u7406\\u60f3\\u7684\\u5fc3\\u6001\\u548c\\u6700\\u4e13\\u4e1a\\u7684\\u670d\\u52a1\\uff0c\\u4ee5\\u9510\\u610f\\u8fdb\\u53d6\\uff0c\\u8ffd\\u6c42\\u5353\\u8d8a\\u7684\\u7cbe\\u795e\\uff0c\\u7acb\\u8db3\\u4e8e\\u4e09\\u4e9a\\uff0c\\u8f90\\u5c04\\u6d77\\u53e3\\uff0c\\u535a\\u9ccc\\uff0c\\u5174\\u9686\\u7b49\\u6d77\\u5357\\u533a\\u57df\\uff0c\\u670d\\u52a1\\u4e8e\\u5404\\u5927\\u9152\\u5e97\\uff01&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\"}');
