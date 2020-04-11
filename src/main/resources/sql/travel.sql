/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 11/04/2020 23:52:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for click
-- ----------------------------
DROP TABLE IF EXISTS `click`;
CREATE TABLE `click`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeId` int(11) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of click
-- ----------------------------
INSERT INTO `click` VALUES (21, 21, 'zhang3');
INSERT INTO `click` VALUES (22, 21, 'li4');
INSERT INTO `click` VALUES (23, 21, 'li4');
INSERT INTO `click` VALUES (24, 21, 'li4');
INSERT INTO `click` VALUES (25, 21, 'li4');
INSERT INTO `click` VALUES (26, 21, 'li4');
INSERT INTO `click` VALUES (27, 21, 'li4');
INSERT INTO `click` VALUES (28, 21, 'li4');
INSERT INTO `click` VALUES (29, 42, 'li4');
INSERT INTO `click` VALUES (30, 22, 'li4');
INSERT INTO `click` VALUES (31, 22, 'li4');
INSERT INTO `click` VALUES (32, 27, 'li4');
INSERT INTO `click` VALUES (33, 27, 'li4');
INSERT INTO `click` VALUES (34, 42, 'li4');
INSERT INTO `click` VALUES (35, 42, 'li4');
INSERT INTO `click` VALUES (36, 42, 'li4');
INSERT INTO `click` VALUES (37, 42, 'li4');
INSERT INTO `click` VALUES (38, 42, 'li4');
INSERT INTO `click` VALUES (39, 42, 'li4');
INSERT INTO `click` VALUES (40, 42, 'li4');
INSERT INTO `click` VALUES (41, 42, 'li4');
INSERT INTO `click` VALUES (42, 42, 'li4');
INSERT INTO `click` VALUES (43, 42, 'li4');
INSERT INTO `click` VALUES (44, 42, 'li4');
INSERT INTO `click` VALUES (45, 42, 'li4');

-- ----------------------------
-- Table structure for collectiontravel
-- ----------------------------
DROP TABLE IF EXISTS `collectiontravel`;
CREATE TABLE `collectiontravel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeId` int(11) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk1`(`noticeId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1114 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collectiontravel
-- ----------------------------
INSERT INTO `collectiontravel` VALUES (1113, 1113, 'zhang3');
INSERT INTO `collectiontravel` VALUES (42, 42, 'li4');
INSERT INTO `collectiontravel` VALUES (22, 22, 'li4');
INSERT INTO `collectiontravel` VALUES (31, 118, 'zhang3');
INSERT INTO `collectiontravel` VALUES (21, 21, 'li4');
INSERT INTO `collectiontravel` VALUES (3, 3, '3');
INSERT INTO `collectiontravel` VALUES (28, 1113, 'zhang3');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `click` int(255) DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `picture` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `type` int(255) DEFAULT NULL,
  `other3` int(255) DEFAULT NULL,
  `other4` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (22, '自驾游在西藏', '2020-03-15', 0, '<p><img src=\"http://localhost:8080/test/backiee-76681-landscape.jpg\" style=\"max-width:100%;\"><br></p>', 'zhang3', NULL, 1, NULL, NULL);
INSERT INTO `notice` VALUES (21, '乌镇的秋季笔记，纸短情长', '2020-03-15', 0, '<p>走过中秋的小长假，转眼秋分时节，两场台风的来临，送走了夏日的闷热，行走在乌镇的流水畔、街巷间，感觉到的是秋天的来临。&nbsp;</p><p><img src=\"http://localhost:8080/test/3259b06e-bbb8-4744-adef-71889cb4ed81_720_.jpg\" style=\"max-width: 100%;\">&nbsp;<br></p>', 'wang2', '<p><img src=\"http://localhost:8080/test/17-1Q225113139234.jpg\" style=\"max-width:100%;\"><br></p>', 1, NULL, NULL);
INSERT INTO `notice` VALUES (27, '上的', '2020-03-30', 0, '<p>一直对mysql最大字段数不明确有人说是1024</p><p>还有人说</p><p>Max columns per row&nbsp;4096&nbsp;<br>InnoDB is limited to&nbsp;1000&nbsp;columns &nbsp;</p><p>实践是检验真理的唯一方法</p><p>mysql&gt; use test;<br></p><p>mysql&gt; create table t0008(id int) engine=innodb DEFAULT CHARSET=latin1;<br></p><p>[root@localhost ~]# vim add.sh&nbsp;<br>#/bin/bash<br>&nbsp;num=2<br>while((num&lt;2000))<br>do<br>&nbsp;echo $num<br>&nbsp;mysql -p123456 -D test -e \"alter table t0008 add column(col$num char(1))\"<br>num=$(($num+1))<br>done<br></p><p>[root@localhost ~]# ./add.sh<br></p><p>Warning: Using a password on the command line interface can be insecure.<br>1017<br>Warning: Using a password on the command line interface can be insecure.<br>1018<br>Warning: Using a password on the command line interface can be insecure.<br>ERROR 1117 (HY000) at line 1: Too many columns<br></p><p><br></p><p>mysql&gt; desc t0008;<br>+---------+------------+------+-----+---------+-------+<br>| Field &nbsp; | Type &nbsp; &nbsp; &nbsp; | Null | Key | Default | Extra |<br>+---------+------------+------+-----+---------+-------+<br>| id &nbsp; &nbsp; &nbsp;| int(11) &nbsp; &nbsp;| YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col2 &nbsp; &nbsp;| varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col3 &nbsp; &nbsp;| varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br></p><p>...............................................................................</p><p>...............................................................................</p><p>| col1014 | varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col1015 | varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col1016 | varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col1017 | varchar(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>+---------+------------+------+-----+---------+-------+<br>1017 rows in set (0.01 sec)<br></p><p>mysql innodb引擎支持最大字段上线为1017</p><p><br></p><p>mysql&gt; create table t0011(col1 char(1)) engine=myisam DEFAULT CHARSET=latin1;<br>Query OK, 0 rows affected (0.00 sec)<br><br>[root@localhost ~]# ./add.sh&nbsp;<br></p><p>Warning: Using a password on the command line interface can be insecure.<br>2410<br>Warning: Using a password on the command line interface can be insecure.<br>2411<br>Warning: Using a password on the command line interface can be insecure.<br>ERROR 1117 (HY000) at line 1: Too many columns<br>2412<br>Warning: Using a password on the command line interface can be insecure.<br>ERROR 1117 (HY000) at line 1: Too many columns<br></p><p><br></p><p>mysql&gt; desc t0011;<br>+---------+---------+------+-----+---------+-------+<br>| Field &nbsp; | Type &nbsp; &nbsp;| Null | Key | Default | Extra |<br>+---------+---------+------+-----+---------+-------+<br>| col1 &nbsp; &nbsp;| char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col2 &nbsp; &nbsp;| char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col3 &nbsp; &nbsp;| char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br></p><p>.........................................................................</p><p>........................................................................</p><p>| col2408 | char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col2409 | char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>| col2410 | char(1) | YES &nbsp;| &nbsp; &nbsp; | NULL &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>+---------+---------+------+-----+---------+-------+<br>2410 rows in set (0.04 sec)<br><br>mysql myisam引擎最大字段上限为2410 &nbsp;&nbsp;<br></p><p>-----------------------------------------------------------------------------------------------------------------</p><p>varchar字段的长度</p><p>mysql&gt; create table t0008(col1 varchar(65535))charset=latin1;<br>ERROR 1118 (42000): Row size too large. The maximum row size for the used table type, not counting BLOBs, is 65535. This includes storage overhead, check the manual. You have to change some columns to TEXT or BLOBs<br>mysql&gt; create table t0008(col1 varchar(65534))charset=latin1;<br>ERROR 1118 (42000): Row size too large. The maximum row size for the used table type, not counting BLOBs, is 65535. This includes storage overhead, check the manual. You have to change some columns to TEXT or BLOBs<br>mysql&gt; create table t0008(col1 varchar(65533))charset=latin1;<br>ERROR 1118 (42000): Row size too large. The maximum row size for the used table type, not counting BLOBs, is 65535. This includes storage overhead, check the manual. You have to change some columns to TEXT or BLOBs<br>mysql&gt; create table t0008(col1 varchar(65532))charset=latin1;<br>Query OK, 0 rows affected (0.02 sec)</p><p>latin1字符集下的表varchar上限为65532，即一个字符一个字节</p><p><br>mysql&gt; create table t0009(col1 varchar(65533))charset=utf8;<br>ERROR 1074 (42000): Column length too big for column \'col1\' (max = 21845); use BLOB or TEXT instead<br>mysql&gt; create table t0009(col1 varchar(21845))charset=utf8;<br>ERROR 1118 (42000): Row size too large. The maximum row size for the used table type, not counting BLOBs, is 65535. This includes storage overhead, check the manual. You have to change some columns to TEXT or BLOBs<br>mysql&gt; create table t0009(col1 varchar(21844))charset=utf8;<br>Query OK, 0 rows affected (0.00 sec)<br></p><p><br></p><p>utf8字符集下的表varchar上限为21844，即一个字符三个字节 65535-1-2 结果除以3 ==21844</p><p>&nbsp;-1表示第一个字节不存数据，-2表示两个字节存放varchar的长度，除以3是utf8字符特性，一个字符三个字节。</p><p>varchar 字段是将实际内容单独存储在聚簇索引之外，内容开头用1到2个字节表示实际长度（长度超过255时需要2个字节），因此最大长度不能超过65535即 2的16次方（0-65535）<br></p><p><br></p><p>mysql&gt; create table t0012(id int,name char(20),col3 varchar(N))chaset=utf8;</p><p>N的值为：(65535-1-2-4-20*3)/3=21822</p><p><br>mysql&gt; create table t0012(id int,name char(20),col3 varchar(N))charset=latin1;<br></p><p>N的值为：65535-1-2-4-20=65508</p><p><br></p><p>char_length:在任何编码下, 不管汉字还是数字或者是字母都算是一个字符<br></p><p>length: 是计算字段的长度, utf8编码下,一个汉字是算三个字符,一个数字或字母算一个字符。其他编码下,一个汉字算两个字符, 一个数字或字母算一个字符。 CHARACTER_LENGTH(str) CHARACTER_LENGTH()是CHAR_LENGTH()的同义词。 BIT_LENGTH(str) 返回2进制长度<br></p><p><br></p>', 'zhang3', '<p><img src=\"http://localhost:8080/test/17-1Q225113139234.jpg\" style=\"max-width:100%;\"><br></p>', 1, NULL, NULL);
INSERT INTO `notice` VALUES (41, '日本樱花', '2020-04-02', 0, '<p>1上档次在的v消愁ZD从ZC</p>', 'zhang3', '<p><img src=\"http://localhost:8080/test/17-1Q225113139234.jpg\" style=\"max-width:100%;\"><br></p>', 1, NULL, NULL);
INSERT INTO `notice` VALUES (42, '长白山', '2020-04-02', 0, '<p><br></p><p>sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利 sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利</p><p>sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利</p><p>sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利</p><p>sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利</p><p>sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利sad紫峰大厦副科级aljfsdlaidfklasdfjkahlksdjfh阿卡丽时代峻峰阿萨德合肥会计阿萨德和法律框架阿斯顿发生加速度李开复哈利</p><p>vvvv&nbsp;</p>', 'zhang3', '<p><img src=\"http://localhost:8080/test/17-1Q225113139234.jpg\" style=\"max-width:100%;\"><br></p>', 1, NULL, NULL);
INSERT INTO `notice` VALUES (118, '118', '2020-04-07', 0, '<p>118</p>', 'zhang3', '<p><img src=\"http://localhost:8080/test/raact三大框架27.png\" style=\"max-width:100%;\"><br></p>', 3, NULL, NULL);
INSERT INTO `notice` VALUES (111, '伪数据type2', '2020-04-02', 0, '<p>1上档次在的v消愁ZD从ZC</p>', 'zhang3', '1234', 2, NULL, NULL);
INSERT INTO `notice` VALUES (222, '伪数据type3', '2020-04-02', 0, '少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃鹅鹅鹅鹅鹅鹅饿鹅鹅鹅饿呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', 'li4', '呃呃呃呃呃呃鹅鹅鹅鹅鹅鹅饿', 3, NULL, NULL);
INSERT INTO `notice` VALUES (1113, '你离青海旅游只差这篇干货纯攻略！', '2020-04-04', 0, '<div><h2>前言</h2><p></p></div><p></p><div><p><span style=\"font-weight: bold; color: rgb(194, 79, 74);\">景点：</span></p><p></p></div><p></p><div><p>1.&nbsp;青海湖—中国内陆最大的咸水湖</p><p></p></div><p></p><div><p>被评为中国最美湖泊，在青海湖看油菜花，骑牦牛，看日出，骑行青海湖。所有文艺青年想做的事，这里都可以完成。</p><p></p></div><p></p><div><p>2.&nbsp;茶卡盐湖—天空之境</p><p></p></div><p></p><div><p>茶卡盐湖被誉为中国的天空之境，媲美玻利维亚，茶卡盐湖与其他盐湖不同的是，茶卡盐湖是固液并存的卤水湖。漫步湖上，犹如天空之境湖面倒映着天地倒映着你。如果你足够幸运，白天可以看到湖面形成的海市蜃楼。随着景区的管理越来越规范，可以乘坐小火车去到更深处，也可以泛舟在茶卡盐湖，景区门票70元。</p><p></p></div><p></p><div><p>3.&nbsp;祁连</p><p></p></div><p></p><div><p>国家级摄影基地，有“东方小瑞士”的美誉。</p><p></p></div><p></p><div><p>4.&nbsp;门源油菜花海</p><p></p></div><p></p><div><p>百里油菜花，高原绝版奇迹。</p><p></p></div><p></p><div><p>5.&nbsp;黑马河</p><p></p></div><p></p><div><p>观看最美震撼日出</p><p></p></div><p></p><div><p>&nbsp;<img src=\"http://localhost:8080/test/d5049714-d55f-41ad-b09b-4b5efd8064c0_720_.jpg\" style=\"max-width: 100%;\"></p><p></p></div><p></p><div><p>必带物品：</p><p></p></div><p></p><div><p>1.&nbsp;防晒霜：青海地处高原地带，紫外线很强烈，防晒霜是必备的。</p><p></p></div><p></p><div><p>2.&nbsp;墨镜：墨镜也是必须的啊，不然在沙漠戈壁盐湖，眼睛根本睁不开。</p><p></p></div><p></p><div><p>3.&nbsp;披肩或者围巾：色彩艳丽的披肩，旅行中的一天披肩有巨大的用处，可以做头巾，可以是拍照的道具，还可以防晒。</p><p></p></div><p></p><div><p>4.&nbsp;红景天：或者是其他高反药物，提前一周服用。</p><p></p></div><p></p><div><p>&nbsp;</p><p></p></div><p></p><div><p>青海旅游穿搭：</p><p></p></div><p></p><div><p>1.&nbsp;建议穿红色、黄色、白色、绿色、橙色、蓝色。或者颜色明亮的衣服、连衣裙。</p><p></p></div><p></p><div><p>2.&nbsp;因为紫外线很强，墨镜超重要，带上又帅又酷。</p><p></p></div><p></p><div><p>3.&nbsp;披肩、开衫！！在青海有个披肩保暖有遮阳，而且拍照真的超好看的。</p><p></p></div><p></p><div><p>4.&nbsp;马丁靴！百搭又保暖~</p><p></p></div><p></p><div><p>5.&nbsp;还就是在寺庙，千万不能穿的太暴露啦。</p><p><img src=\"http://localhost:8080/test/8cd84fd7-f05e-47e1-8a3b-edb6aa6ded8f_720_.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:8080/test/8515785a-447f-4768-bc23-1241ecf4a6de_720_.jpg\" style=\"max-width:100%;\"><img src=\"http://localhost:8080/test/d1cdb578-a063-4949-b2fb-48e84c57d82d_720_.jpg\" style=\"max-width: 100%;\"><br></p></div>', 'wang2', '<p><img src=\"http://localhost:8080/test/6249d489-b84b-480a-b2e5-6b970824bff7_720_.jpg\" style=\"max-width:100%;\"><br></p>', 2, NULL, NULL);
INSERT INTO `notice` VALUES (1115, '年终泰国自由行——摩托环游普吉岛', '2020-04-08', 0, '<p>总行程八天的泰国自由行，第四天按计划，从泰北小城清迈飞往了普吉岛 。</p><p>二小姐情绪一直很high，和同行的“小米粒”竟然不约而同的有件一模一样的外套，真是太有缘分了。<img src=\"http://www.iqingyi.com/static/lib/ueditor/dialogs/emotion/images/qingyi/05.png\" alt=\"年终泰国自由行——之摩托环游普吉岛-神仙半岛,卡伦海滩,芭东海滩\"></p><p><br></p><p><img src=\"http://localhost:8080/test/6mrul6w36bo8nomnbdwnnj982rqwgmmj.jpg\" style=\"max-width:100%;\"><br>其中又以芭东海滩（Batong Beach）、卡伦海滩（Karon Beach）和卡塔海滩（Kata Beach）最为知名。这三个海滩相对来说交通方便，景色优美，周边商业设施完善。</p><p><br></p><p>芭东海滩在吃喝玩乐上绝对是普吉岛10个海滩中具有压倒性优势。但是从海水水质和沙滩来说，芭东海滩由于游客最多，所以海水水质和沙滩并不是很好。</p><p><br></p><p>此行，东哥将我们的住宿就安排在芭东海滩附近。</p><p>常为游人们津津乐道的人妖表演——西蒙人妖秀SimonCabaret，和非常有特色的泰拳馆都在芭东区域。附近离住处最近的购物中心就是“江西冷”（类似于国内的万达广场），商场对面就是新鲜水果（感觉泰国的水果和云南售卖的品种、价位都差别不大，和内陆地区相比，可能对那些游客才更有点吸引力）蔬菜、海产和其他本地特产丰富的“班赞市场”。</p><p>￼和清迈小城悠闲、清净的感觉完全不同，普吉岛因为旅游业开发得早，繁华之中多是抵不住的喧闹和嘈杂。</p><p>重庆磁器口火锅和川菜馆依旧标识醒目，不过在用餐高峰期反倒显得有点门可罗雀的赶脚。</p><p>普吉日常消费普遍高于清迈，芭东附近，因为配套设施更完善，各类消费更是不便宜。但诸如肯德基、麦当劳等快餐消费却都是低于国内，且单品口感和品质还胜于国内。至于DQ，在泰国，真的是卖出了白菜价。</p><p>班赞市场内海产丰富，海鲜大排档深受亚洲人、尤其是中国人的热情光顾；而欧美老外们貌似更喜欢本地的夜市小吃。</p><p>我们去班赞市场的一楼，挑选一些新鲜海产，拿去市场二楼（大多都是中国老板开的餐馆）付费加工，算下来比在国内的价位更低。</p><p><br></p><p>这一趟，既然是纯自由行，我们还是希望能去看到多数游人眼中不一样的普吉。用自己喜欢的方式，来一趟闹中取静的随心之旅。</p><p>为此，我们决定开启普吉『环岛摩托骑行』二日游。</p><p><img src=\"http://localhost:8080/test/47v0or0crid9u5seeryr37chi050cwzh.jpg\" style=\"max-width:100%;\"><br></p><p>『环岛摩托骑行』第一日<br></p><p>细长型的普吉岛，南北跨度较大，地势也并不平坦，岛上车多人多，遵循的是不同于国内的左行交通规则，就算租车我们一下子也会感觉极不适应。</p><p>但这里，真的可谓是各国机车爱好者的天堂！</p><p>因为就算你骑得震天响、飚得飞快，也不会有当地交警干预。只是，如果你骑行时不戴安全帽、或禁停区（红白线）域停车，或不幸被抽查到无证驾驶，还是会被处罚的。</p><p><br></p><p>『中国车行』的摩托租赁，老板是中国人。</p><p><img src=\"http://localhost:8080/test/doz6tyl80bqq0j0h1ybu7cl6pj10fuzv.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:8080/test/dz06yzairbc2zsqceajbf7iwixjmb9zb.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:8080/test/kbjngnsfvnzdt2i5xe5dfnki0yoml1a4.jpg\" style=\"max-width:100%;\"><img src=\"http://localhost:8080/test/ujeq4fjode2xlgobrj4en587gkz1futa.jpg\" style=\"max-width: 100%;\"><img src=\"http://localhost:8080/test/yz6a7an47oo5qk9hr9yv57mh653z2ian.jpg\" style=\"max-width: 100%;\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 'li4', '<p><img src=\"http://localhost:8080/test/1111111111113.jpg\" style=\"max-width:100%;\"><br></p>', 2, NULL, NULL);
INSERT INTO `notice` VALUES (1116, '嵊泗旅行一定要吃“洋山四宝”，每一道肯定都是你的菜', '2020-04-09', 0, '<p>说是有三个姑娘贪恋海上美色，留在了洋山，成为了圣姑礁三岛。圣姑婷婷玉立，秀色可人，三姑前后相拥，周围金波曼舞，构成一幅绝美的“海上丽人行”图。而礁上的圣姑礁宫建于清朝，至今已经有170多年的历史，可见圣姑的传说已经很久远了。&nbsp;&nbsp;</p><p>从东海大桥过来要坐船，掐不好航班的时候就坐渔船，经过圣姑礁就到大洋山了。海上烽燧是古代战争的一种报警方式，南宋时，嵊泗列岛就出现了烽火台，自宁波镇海招宝山至嵊泗列岛漫长的海道上，曾出现过烽燧12个，其中有8个在嵊泗列岛境内，而在洋山的那一个就设在圣姑礁上面。&nbsp;&nbsp;&nbsp;&nbsp;<br></p><p><img src=\"http://localhost:8080/test/fcenekepduwzgvacig0km5n7jz08cxb1.jpg\" style=\"max-width: 100%;\"><br></p><p><br>跟一群吃货到洋山，更愿意知道洋山的美食。在洋山鸿盛酒店点了洋山四宝：凤尾鱼、海瓜子、水白虾、海蜇，再配几个当地的季节性美食，一桌就齐了。老板拿出陈年白酒，喝了好几杯。下面我来介绍一下传说中的“洋山四宝”。&nbsp;&nbsp;<br></p><p><br></p><p><br></p><p><img src=\"http://localhost:8080/test/s58h7psjgys4r9qgn5w8rqdinq4iln7g.jpg\" style=\"max-width:100%;\"></p><p>白虾各地多有养殖，但是洋山海域野生的白虾肉质细嫩紧凑，造型却粗犷些，洋山人的说法是：清水加姜片、葱段、少许红椒少许盐，水开将洗净活白虾入锅加盖，约5分钟拌匀起锅连汤装盘，趁热吃，清香鲜嫩！<img src=\"http://localhost:8080/test/ymvvwyp36kw9bzwnid7sn7c2my7g6ckx.jpg\" style=\"max-width: 100%;\"><br></p><p>海蜇在海里的时候，其实就是漂亮的大水母，8~9月间，海蜇常成群浮游于东海海面，捕获后用石灰、明矾浸制，榨去体中水分，洗净，盐渍。口腕部称“海蜇头”，伞部称“海蜇皮” 。洋山居民喜欢凉拌蘸醋吃，口感脆响。&nbsp;&nbsp;<br></p><p><img src=\"http://localhost:8080/test/gdwguwzbvs7pwgqz63au3fk3m331ju9u.jpg\" style=\"max-width:100%;\"><br></p><p>白虾各地多有养殖，但是洋山海域野生的白虾肉质细嫩紧凑，造型却粗犷些，洋山人的说法是：清水加姜片、葱段、少许红椒少许盐，水开将洗净活白虾入锅加盖，约5分钟拌匀起锅连汤装盘，趁热吃，清香鲜嫩！&nbsp;&nbsp;<br></p><p><img src=\"http://localhost:8080/test/aspotirpu94mbi35kf81hfquciipmmsq.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:8080/test/7u72l4gpqtud7ausmj9lzfj89t7ejau9.jpg\" style=\"max-width:100%;\"><br></p><p><br>墨鱼是早年舟山渔场的四大经济鱼类之一，曾经有人煮起来当饭吃，现在产量很少了，大都晒起来慢慢吃。新鲜的墨鱼加浓汤慢慢炖烤，让汤汁入味，吃起来有嚼劲，特别香。&nbsp;&nbsp;<br></p><p><img src=\"http://localhost:8080/test/5xtf45c8o7ew41hk3jccjwuv2ysqc7ip.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><br></p>', 'zhang3', '<p><img src=\"http://localhost:8080/test/xpvn1l7iivj7cb8uhufpv83adoycqctj.jpg\" style=\"max-width:100%;\"><br></p>', 3, NULL, NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (10, 'listNotice', '查看所有文章', '/notice/listAll');
INSERT INTO `permission` VALUES (11, 'userEditer', '用户管理', '/user/list');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'superAdmin', '超级管理员');
INSERT INTO `role` VALUES (2, 'admin', '普通管理员');
INSERT INTO `role` VALUES (3, 'user', '用户');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (57, 1, 11);
INSERT INTO `role_permission` VALUES (58, 1, 10);
INSERT INTO `role_permission` VALUES (59, 2, 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mailbox` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhang3', 'a7d59dfc5332749cb801f86a24f5f590', 'e5ykFiNwShfCXvBRPr3wXg==', NULL);
INSERT INTO `user` VALUES (2, 'li4', '43e28304197b9216e45ab1ce8dac831b', 'jPz19y7arvYIGhuUjsb6sQ==', NULL);
INSERT INTO `user` VALUES (3, 'wang2', '003035c23de3061201868522958a07da', 'TmY+8gpFzB+HoA98xdI0Hw==', NULL);
INSERT INTO `user` VALUES (4, 'user', '3e7cf445f1b885cb8b79ccbd2920870a', 'wfA5g8ZPVKpe8wx7uFCzVg==', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (43, 2, 2);
INSERT INTO `user_role` VALUES (45, 1, 1);
INSERT INTO `user_role` VALUES (46, 3, 2);
INSERT INTO `user_role` VALUES (47, 4, 3);

SET FOREIGN_KEY_CHECKS = 1;
