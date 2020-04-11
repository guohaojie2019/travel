/*
Navicat MySQL Data Transfer

Source Server         : 132.232.68.142_3306
Source Server Version : 50723
Source Host           : 132.232.68.142:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-04-21 17:49:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `message_content` varchar(1024) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_head` varchar(255) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('3', '2019-04-18 23:04:42', 'hello world', '你在干什么73', 'http://javawebs.cn/app/wang/1.jpg', '1');
INSERT INTO `message` VALUES ('5', '2019-04-19 14:10:45', '测试666', '你在干什么73', 'http://javawebs.cn/app/wang/3.jpg', '3');
INSERT INTO `message` VALUES ('7', '2019-04-19 14:24:01', '留言成功', '你在干什么73', 'http://javawebs.cn/app/wang/5.jpg', '3');
INSERT INTO `message` VALUES ('11', '2019-04-19 14:36:41', '哈哈，感觉还不错', 'test', 'http://javawebs.cn/app/wang/1.jpg', '1');
INSERT INTO `message` VALUES ('13', '2019-04-19 20:32:30', '提交嘿嘿 苦笑 呲牙 强颜欢笑 憨笑嘿嘿 苦笑 呲牙 强颜欢笑 憨笑嘿嘿 苦笑 呲牙 强颜欢笑 憨笑嘿嘿 苦笑 呲牙 强颜欢笑 憨笑', '你在干什么73', 'http://javawebs.cn/app/wang/1.jpg', '2');
INSERT INTO `message` VALUES ('14', '2019-04-19 21:02:09', '你好，陌生人！', 'test', 'http://javawebs.cn/app/wang/4.jpg', '2');
INSERT INTO `message` VALUES ('15', '2019-04-20 14:18:07', '路过！！！！', '你在干什么73', 'http://javawebs.cn/app/wang/5.jpg', '3');
INSERT INTO `message` VALUES ('16', '2019-04-20 14:59:04', 'who are you', '你在干什么73', 'http://javawebs.cn/app/wang/5.jpg', '2');
INSERT INTO `message` VALUES ('17', '2019-04-20 23:25:04', '666', '你在干什么73', 'http://javawebs.cn/app/wang/8.jpg', '1');

-- ----------------------------
-- Table structure for scenery
-- ----------------------------
DROP TABLE IF EXISTS `scenery`;
CREATE TABLE `scenery` (
  `scenery_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenery_city` varchar(255) DEFAULT NULL,
  `scenery_title` varchar(255) DEFAULT NULL,
  `scenery_introduce` varchar(1024) DEFAULT NULL,
  `scenery_price` varchar(64) DEFAULT NULL,
  `scenery_route` varchar(1024) DEFAULT NULL,
  `scenery_cover` varchar(255) DEFAULT NULL,
  `scenery_imgs` varchar(1024) DEFAULT NULL,
  `scenery_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scenery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenery
-- ----------------------------
INSERT INTO `scenery` VALUES ('1', '厦门', '在风姿绰约的海上花园漫步， 聆听鼓浪屿的天籁， 骑行在沿海环岛， 感受最美校园', '一天留给曾厝垵和厦大，厦大的白城沙滩值得一去，厦大的校园是中国最美的大学，有好看的建筑楼，当然也有现代的芙蓉隧道，里面有无数来自历届的厦大毕业生的涂鸦作品。\r\n曾厝垵，逛逛村子逛逛沙滩吃吃道地的农家海鲜餐。', '1700', '家 - 厦门 - 曾厝垵 - 厦门大学/南普陀 - 厦门大学/南普陀', 'https://my-1257305470.file.myqcloud.com/travel/images/xia.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/xia_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/xia_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('2', '北京', '探访帝王的痕迹，抚摸北海的碧幽，漫步在北京胡同，领略798的艺术气氛。', '北京，一个具有无穷历史魅力的古都，宽敞的大道、辉煌的门楼牌坊、宏伟的宫殿，一切的一切都像在诉说遥远、漫长的历史故事~', '1999', '出发地>北京>D2天安门广场>毛主席纪念堂>故宫>故宫角楼、南大库>景山公园>天坛>D3八达岭长城>奥林匹克公园>前门商业街', 'https://my-1257305470.file.myqcloud.com/travel/images/bei.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/bei_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/bei_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('3', '武汉', '武大的樱花烂漫、黄鹤楼的千古绝唱、户部港的繁华溢彰、热干面的乡情弥漫', '武汉饮食，可谓一早一晚，过早和宵夜为经典，有“早尝户部巷，夜吃吉庆街”之美谈。 特色小吃有热干面、三鲜豆皮、面窝、米粑、豆丝、欢喜坨、鸭脖子、武昌鱼、排骨藕汤、洪山菜薹炒腊肉、糍粑等。', '1569', ' \r\nD1出发地>武汉高铁站/汉口火车站/武昌火车站>D2汉口>宜昌>三峡人家>宜昌>D3宜昌>三峡大坝>西陵峡>汉口>D4武汉>出发地', 'https://my-1257305470.file.myqcloud.com/travel/images/wu.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/wu_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/wu_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('4', '张家界', '三千奇峰 秀水八百', '长沙进出， 高端住宿，保障睡眠质量；优质旅游巴士，保障舒适空间；双重挑战玻璃桥+玻璃栈道，大门票全含，全程无购物，嗨游大湘西。', '4040', ' \r\nD1出发地>长沙>D2长沙>韶山>张家界>D3张家界>张家界大峡谷玻璃桥>张家界国家森林公园>D4天门山国家森林公园>凤凰古城>D5凤凰古城>长沙', 'https://my-1257305470.file.myqcloud.com/travel/images/zhang.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/zhang_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/zhang_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('5', '桂林', '桂林山水 富甲天下', '全程0进店、6大热门景点、漓江精华美景，阳朔连住2晚挂四酒店、3种桂林地道美味、自带优质服务和快乐属性的专业牛导们……山水桂林，等你前行', '4050', ' \r\nD1成都>桂林>D2桂林>兴坪镇>兴坪漓江>银子岩>西街>D3阳朔>十里画廊>蝴蝶泉>大榕树>遇龙河多人漂>D4阳朔>侗情水庄', 'https://my-1257305470.file.myqcloud.com/travel/images/gui.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/gui_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/gui_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('6', '成都', '大熊猫，成都青城山、宽窄巷子等你来玩', '都江堰-青城山1日游>自营发团，0差评导游，7点/9点出发可选，真纯玩无购物无猫腻，网红川菜美食，上门接早集合', '2800', ' \r\nD1成都>都江堰>青城山>成都', 'https://my-1257305470.file.myqcloud.com/travel/images/cheng.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/cheng_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/cheng_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('7', '丽江', '纯玩0购物/古城纳西风情精品酒店/洱海海景房/大型表演丽江千古情/玉龙雪山/一天商务车出行鲜果随享 ', '云南四季如春，年平均温差不大，年平均气温为15摄氏度，但早晚温差极大，早晚温度低，中午阳光灿烂的时候，温度可在15——20度左右，故在出行前请带好厚衣物。', '3500', ' \r\nD1各地>丽江>丽江机场接机、入住酒店>D2丽江 >大理>游蝴蝶泉公园>洱海大游船>南诏风情岛>洱海骑行>入住酒店>D3大理>逛大理古城', 'https://my-1257305470.file.myqcloud.com/travel/images/li.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/li_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/li_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('8', '三亚', '海南三亚国光豪生双飞3-8日自由行>臻选三亚湾国际五星临海海景酒店，畅游4500平泳池，享酒店网红打卡点旅拍，挑战高空玻璃栈道 ', '★三亚湾国际五星品牌海景酒店\r\n★酒店提供至海棠湾免税店的免费穿梭巴士，建议您尽早预约\r\n★3000平米的海景大堂，1分钟直达泳池，3分钟直达海滩，免费借用挖沙工具\r\n★牛人可享专属国光豪生网红打卡拍摄点旅拍，专业摄影师跟拍，5张电子版免费简修', '4400', ' \r\nD1出发地>三亚>D2亚龙湾沙滩>亚龙湾天堂森林公园>D3蜈支洲岛一天>D4大小洞天>天涯海角>D5三亚>出发地', 'https://my-1257305470.file.myqcloud.com/travel/images/san.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/san_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/san_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('9', '成都', '大熊猫，成都青城山、宽窄巷子等你来玩', '都江堰-青城山1日游>自营发团，0差评导游，7点/9点出发可选，真纯玩无购物无猫腻，网红川菜美食，上门接早集合', '1999', ' \r\nD1成都>桂林>D2桂林>兴坪镇>兴坪漓江>银子岩>西街>D3阳朔>十里画廊>蝴蝶泉>大榕树>遇龙河多人漂>D4阳朔>侗情水庄', 'https://my-1257305470.file.myqcloud.com/travel/images/cheng.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/cheng_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/cheng_detail2.jpg', '1');
INSERT INTO `scenery` VALUES ('10', '墨尔本', '考拉的乐园', '海航西安起止、黄金海岸直升机巡游、悉尼观景游船、墨尔本有轨电车、天阁露玛海豚岛度假村、天堂农庄、赫里奇牧场、特色餐', '7888', 'D1全国联运（上海集散）>D2墨尔本【自由活动】（入住市中心酒店）>D3墨尔本【市区游】>菲利普企鹅岛>D4企鹅岛>十二使徒岩（大洋路）>墨尔本>D5墨尔本', 'https://my-1257305470.file.myqcloud.com/travel/images/mo.jpeg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/mo_detail1.jpeg,https://my-1257305470.file.myqcloud.com/travel/images/detail/mo_detail2.jpeg', '2');
INSERT INTO `scenery` VALUES ('11', '新加坡', '夏天欣赏百花盛开的场景', '独特四飞/不长途拉车劳累，升级一晚五星酒店，波德申保证入住海边水上屋，多顿特色风味餐，含樟宜机场200元现金券', '2999', '\r\nD1成都>新加坡>D2市政广场-鱼尾狮>珠宝（或生物科技）-百货>花芭山>珠宝>百货>圣淘沙>乌节路DFS>马来西亚>D3马六甲', 'https://my-1257305470.file.myqcloud.com/travel/images/ma.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/ma_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/ma_detail2.jpg', '2');
INSERT INTO `scenery` VALUES ('12', '普吉岛', '岛上环境纯净，是一座著名的度假岛', '座落于普吉岛繁华商业区中心，数分钟之遥即是当地市场及 Jungceylon 购物中心！', '12999', '\r\nD1萨瓦迪卡，泰国之旅开始啦>普吉岛（24小时接机）>D2【缤纷 · 撒欢】>珊瑚岛+帆船环游>神仙半岛>西蒙人妖秀（比别的地方人妖漂亮，嘿嘿）>D3【惬意 · 漫游】>睡到自然醒', 'https://my-1257305470.file.myqcloud.com/travel/images/pu.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/pu_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/pu_detail2.jpg', '2');
INSERT INTO `scenery` VALUES ('13', '悉尼', '澳大利亚面积最大、人口最多的城市', '双学府，海豚岛企鹅岛深度游，直升飞机体验，墨尔本&海豚岛自由活动，悉尼天空塔\r\n歌剧院入内含下午茶，中式团餐升级八菜一汤\r\n坐轮渡去大洋路看十二门徒，动物农庄亲密互动：喂袋鼠海豚，与考拉合影', '7899', 'D1全国联运（上海集散）>D2墨尔本【自由活动】（入住市中心酒店）>D3墨尔本【市区游】>菲利普企鹅岛>D4企鹅岛>十二使徒岩（大洋路）>墨尔本>D5墨尔本', 'https://my-1257305470.file.myqcloud.com/travel/images/xi.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/xi_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/xi_detail2.jpg', '2');
INSERT INTO `scenery` VALUES ('14', '东京', '位于日本关东平原中部面向东京湾的国际大都市', '千人好评，浅草寺祈福，秋叶原圣地巡礼，六本木赏璀璨夜景，可自由搭配富士山/镰仓一日游，乐游霓虹', '12789', '\r\nD1成都>关西>D2大阪>奈良>京都>岐阜>D3岐阜>白川乡>高山>长野地区>D4长野地区>富士山地区>东京地区', 'https://my-1257305470.file.myqcloud.com/travel/images/dong.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/dong_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/dong_detail2.jpg', '2');
INSERT INTO `scenery` VALUES ('15', '迪拜', '拥有世界上面积最大的人工岛项目棕榈岛', '迪拜必玩之经典：乘坐陆地巡洋舰沙漠四驱冲沙，感受惊险刺激的阿拉伯沙漠风情，体验特色沙漠娱乐项目\r\n★ 好莱坞大片速度激情7取景地-卓美亚联合大厦阿提哈德塔300米74层观景台，360度无死角俯瞰阿布扎比', '4639', '1成都>阿布扎比>D2阿布扎比>迪拜>D3迪拜（全天自由活动）>D4迪拜>沙迦>迪拜>D5迪拜>阿布扎比>D6阿布扎比', 'https://my-1257305470.file.myqcloud.com/travel/images/di.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/di_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/di_detail2.jpg', '2');
INSERT INTO `scenery` VALUES ('16', '埃及', '地中海沿岸的避暑胜地，素称“地中海明珠”', '沙漠冲沙：坐越野四驱车进入金色的沙漠地带，穿梭于起伏不定的沙丘。进行冒险家的游戏。沙漠游-冲沙、观沙漠日落、沙漠饲养场、骆驼、滑沙、沿途安排前往沙漠中央的营地。穿着民族服装摄影留念、纹身、欣赏肚皮舞表演、品阿拉伯咖啡、享受烧烤晚宴。\r\n沙漠冲沙：坐越野四驱车进入金色的沙漠地带，穿梭于起伏不定的沙丘。进行冒险家的游戏。沙漠游-冲沙、观沙漠日落、沙漠饲养场、骆驼、滑沙、沿途安排前往沙漠中央的营地。穿着民族服装摄影留念、纹身、欣赏肚皮舞表演、品阿拉伯咖啡、享受烧烤晚宴。\r\n沙漠冲沙：坐越野四驱车进入金色的沙漠地带，穿梭于起伏不定的沙丘。进行冒险家的游戏。沙漠游-冲沙、观沙漠日落、沙漠饲养场、骆驼、滑沙、沿途安排前往沙漠中央的营地。穿着民族服装摄影留念、纹身、欣赏肚皮舞表演、品阿拉伯咖啡、享受烧烤晚宴。\r\n沙漠冲沙：坐越野四驱车进入金色的沙漠地带，穿梭于起伏不定的沙丘。进行冒险家的游戏。沙漠游-冲沙、观沙漠日落、沙漠饲养场、骆驼、滑沙、沿途安排前往沙漠中央的营地。穿着民族服装摄影留念、纹身、欣赏肚皮舞表演、品阿拉伯咖啡、享受烧烤晚宴。\r\n沙漠冲沙：坐越野四驱车进入金色的沙漠地带，穿梭于起伏不定的沙丘。进行冒险家的游戏。沙漠游-冲沙、观沙漠日落、沙漠饲养场、骆驼、滑沙、沿途安排前往沙漠中央的营地。穿着民族服装摄影留念、纹身、欣赏肚皮舞表演、品阿拉伯咖啡、享受烧烤晚宴。\r\n', '7899', ' \r\nD1联运地>成都>D2成都>开罗>D3开罗>亚历山大>开罗>D4开罗>阿斯旺>尼罗河游轮>D5阿斯旺>康孟波>艾德福>D6', 'https://my-1257305470.file.myqcloud.com/travel/images/ai.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/ai_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/ai_detail2.jpg', null);
INSERT INTO `scenery` VALUES ('17', '芝加哥', '美国最大的商业中心区和最大的期货市场之一', '芝加哥、布法罗、华盛顿、纽约、旧金山、雷诺、普克泰罗、蒂巴、拉斯维加斯、洛杉矶、夏威夷，带您开启美国之旅！', '3468', ' \r\nD1联运地>上海>夏威夷>D2夏威夷>D3夏威夷>旧金山>D4旧金山>沙加缅度加州州府大厦>太浩湖>雷诺', 'https://my-1257305470.file.myqcloud.com/travel/images/zhi.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/detail/zhi_detail1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/detail/zhi_detail2.jpg', null);

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
CREATE TABLE `travel` (
  `travel_id` int(11) NOT NULL AUTO_INCREMENT,
  `travel_name` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `travel_title` varchar(512) DEFAULT NULL,
  `travel_cover` varchar(255) DEFAULT NULL,
  `travel_imgs` varchar(1024) DEFAULT NULL,
  `travel_detail` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel
-- ----------------------------
INSERT INTO `travel` VALUES ('1', '天龙屯堡', '2019-04-20 14:16:50', '春分 贵阳平坝赏樱攻略', 'https://my-1257305470.file.myqcloud.com/travel/images/cover/yinghuacover.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/travel/yinghua1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/travel/yinghua2.jpg', '\r\n          贵阳自驾租车因为樱花节时期也是异常火爆，贵阳高铁站内无租车服务点均设在站外，大意了没有提前网上租车，差点都没车租，到达贵阳当天下午幸好决定提前去园区，撞见塞车长龙的恐怖，无法进入园区，却无意中为第二天早上顺利进入做好认知准备。\r\n          当天下午因无法进入樱花园区只能在贵安大道上往前开，搜了周边发现往安顺方向距离红枫湖25公里左右有个天龙屯堡，这一带以前是军事要地，明朝时就有大量屯兵，贵州喀斯特地貌拥有大量石材，形成独特的明朝兵团驻军后代村落，石头城堡为防御高点发展出来的屯堡文化，保留不少古汉族民俗。');
INSERT INTO `travel` VALUES ('2', '中禅寺湖123', '2019-04-20 14:16:50', '冬日的日光(日本，日光市)\r\n', 'https://my-1257305470.file.myqcloud.com/travel/images/cover/dongricover.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/travel/dongri1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/travel/dongri2.jpg', '日本枥木县日光，是德川家康家族的世袭领地，日本最重要的历史古迹之一，周围有漂亮的湖光山色，以及众多的温柔温泉乡。\r\n\r\n我们的行程:\r\n12月24日， 上午，广州飞东京，住浅草寺。在东武车站游客中心买4 days Nikko Pass.\r\n\r\n12月25日，在浅草寺乘东武火车，到日光东武站。乘巴士到日照宫。在东照宫游览3小时，乘巴士到中禅寺湖。步行到星野界日光酒店。\r\n');
INSERT INTO `travel` VALUES ('3', '你在干什么73', '2019-04-20 14:16:50', '关东秋摄，文艺东京\r\n', 'https://my-1257305470.file.myqcloud.com/travel/images/cover/guandongcover.jpg', 'https://my-1257305470.file.myqcloud.com/travel/images/travel/guandong1.jpg,https://my-1257305470.file.myqcloud.com/travel/images/travel/guandong2.jpg', '借着要去横滨看演唱会的机会，去日本玩儿了几天,上海浦东和东京羽田往返，坐的乐桃廉价航空半夜的航班，既省钱又省时间，就是一去一返旅途上劳累些,这趟是以看演唱会为主，白天在东京、横滨和镰仓玩耍，不是特地去摄影因此就只带了个小微单。关东的秋色比关西要来的晚一些，那年去京都赏红叶，11月底是最佳的时候，而12月初的关东正迎来秋天最美的时刻,感谢我亚麻开演唱会的时间，让我得以有机会欣赏一下关东秋色,东京以及附近的横滨、镰仓、日光都有非常想打卡的赏枫的名所，但这趟因为晚上要在横滨看演唱会中心，所以舍弃了比较远的日光。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '你在干什么73test', '123456', '2019-04-20 21:21:48', 'user');
INSERT INTO `user` VALUES ('4', '你在干什么74', '123456', '2019-04-18 23:14:05', 'user');
INSERT INTO `user` VALUES ('5', 'test', '123456', '2019-04-19 14:26:47', 'user');
INSERT INTO `user` VALUES ('9', 'admin', '123456', '2019-04-21 16:41:20', 'admin');
INSERT INTO `user` VALUES ('10', 'abc', 'test', '2019-04-21 14:14:36', 'user');
