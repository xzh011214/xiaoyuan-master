

USE `aaa`;



DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activity_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `activity_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `activity_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `activity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `activity_locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `activity_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `activity_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createtime` bigint DEFAULT NULL,
  `activity_statetime` bigint DEFAULT NULL,
  `activity_endtime` bigint DEFAULT NULL,
  `updatetime` bigint DEFAULT NULL,
  `activity_favour_num` int DEFAULT NULL,
  `activity_num` int DEFAULT NULL,
  `activity_read_num` int DEFAULT NULL,
  `activity_state` int DEFAULT NULL,
  `activity_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `activity_impose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `activity`(`activity_id`,`user_id`,`activity_title`,`activity_lable`,`activity_type`,`activity_locale`,`activity_content`,`activity_img`,`createtime`,`activity_statetime`,`activity_endtime`,`updatetime`,`activity_favour_num`,`activity_num`,`activity_read_num`,`activity_state`,`activity_istop`,`ispublic`,`activity_impose`,`admin`) values ('1119a140-91b2-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','篮球','体育','线下','篮球场','<p>篮球场打篮球，去的联系</p><h2>QQ1143578963</h2>',NULL,1703161231000,1703161231000,1703161231000,1703161231000,0,10,0,0,0,0,'false',NULL),('307c9a60-91b2-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','志愿者','志愿者','线下','西门 ','<p>xxx志愿者，捡垃圾</p>',NULL,1703161231000,1703161231000,1703161231000,1703161231000,0,0,2,0,0,0,'false',NULL),('0aad8200-91b6-11ea-b4b2-534983822470','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','跑步','体育','线下','北门','<p>后山跑步</p>',NULL,1703161231000,1703161231000,1703161231000,1703161231000,0,0,0,0,0,0,'false',NULL),('32a57000-91c1-11ea-b4b2-534983822470','6c96acc2dc85322d50bde057dbb79538','图书馆志愿者','志愿者','线下','学校图书馆','<p>图书馆志愿者</p><p>主要任务：整理图书，帮助管理员整理图书馆</p>',NULL,1703161231000,1703161231000,1703161231000,1703161231000,0,50,1,0,0,0,'true',NULL),('938bf4c0-91c1-11ea-b4b2-534983822470','570395c0-5842-11ea-8396-f196e3bde291','志愿服务','志愿者','线下','12栋宿舍 ','<p>通知：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;为持续做好全校防疫志愿服务工作，现需招募至16号之前的16级毕业生志愿者（包括16号），每班1-2人，一班两小时，同时为了避免志愿者的物资多次传递，造成不必要的接触，自愿连续几天值班的志愿者优先考虑。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有意向参加的同学加入下群。并将上岗时间按格式发送到春季开学防疫志愿者通知群里。希望可以积极参与，谢谢~</p><p class=\"ql-align-center\"><img src=\"http://oss.guoang.xyz/7908398272acf68af2f35e5ef1b0fa62.jpg\"></p>',NULL,1703161231000,1703161231000,1703161231000,1703161231000,0,0,9,0,0,0,'true',NULL),('7c6059c0-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','志愿者服务','志愿者','线下','西校区','<p>参加西校区捡垃圾行动</p>',NULL,1704284401884,1704284385000,1704284387000,1704284401884,0,15,0,0,0,0,'false',NULL);



DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_createtime` bigint DEFAULT NULL,
  `isfk` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `isgl` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `issh` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `isyh` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_state` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `admin`(`user_id`,`username`,`password`,`nickname`,`user_createtime`,`isfk`,`isgl`,`issh`,`isyh`,`user_state`) values ('93661680-853a-11ea-9804-d96c09cf498f','aaaaaaa','ae4d7705edefee4ee30c17364375ae28','管理员',1587629692776,'1','1','1','1','1'),('98313980-8542-11ea-81ae-6fb1319a1ba1','aaaa44444','89a51fdab129724eb5371967b67251f6','管理员',1587633136792,'1','1','1','1','1'),('333fc190-8547-11ea-81ae-6fb1319a1ba1','aaaaaaa1','334dd8cc47b2b5b916b5d650c1f081fa','管理员',1587635114921,'0','1','1','1','1'),('69941670-b1d3-11ea-b59c-0367d155e2d0','admin','3e1a8c4d35c7041a2704e9f1a044c50e','超级管理员',1703157981685,'1','1','1','1','1'),('d59e6160-9ff3-11ee-8138-1f16da620801','aaa123','10d71c71c65e88bbba9200bd5e758cb2','管理员',1703157981685,'1','1','1','1','1');


DROP TABLE IF EXISTS `announcement`;

CREATE TABLE `announcement` (
  `announcement_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `announcement_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `announcement_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `announcement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `announcement_createtime` bigint DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `announcement`(`announcement_id`,`announcement_name`,`announcement_content`,`announcement_type`,`content_id`,`announcement_createtime`) values ('820ca1a0-95d5-11ea-b59c-0367d155e2d0','关于防疫志愿者活动的在通知','由于疫情已经结束，防疫志愿者活动取消','activity','938bf4c0-91c1-11ea-b4b2-534983822470',1589455454266);



DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `article_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `article_introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `article_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `article_createtime` bigint DEFAULT NULL,
  `article_updatetime` bigint DEFAULT NULL,
  `article_favour_num` int DEFAULT NULL,
  `article_read_num` int DEFAULT NULL,
  `article_state` int DEFAULT NULL,
  `article_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


insert  into `article`(`article_id`,`user_id`,`article_title`,`article_introduction`,`article_lable`,`article_content`,`article_createtime`,`article_updatetime`,`article_favour_num`,`article_read_num`,`article_state`,`article_istop`,`ispublic`,`admin`) values ('8f8d50e0-91b6-11ea-b4b2-534983822470','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','你好，2023','在我年轻的时候，唔…我的意思是说，在我更年轻的时候，我总觉得，2023年，是一个充满了科幻感的年份，会有很多很多很神奇的事情发生在这一年。\n\n现在，2023年，这个在年少的记忆里充满了科幻感的年份终于来到了身边。只不过，当她真的到来的时候，你我都心知肚明，这只不过是普普通通、平平无奇的一年罢了。','好文','<p><img src=\"http://oss.guoang.xyz/118fb14c9128c0dcec6014d3db45c0c4.webp\"></p><p>在我年轻的时候，唔…我的意思是说，在我更年轻的时候，我总觉得，2020年，是一个充满了科幻感的年份，会有很多很多很神奇的事情发生在这一年。</p><p>现在，2020年，这个在年少的记忆里充满了科幻感的年份终于来到了身边。只不过，当她真的到来的时候，你我都心知肚明，这只不过是普普通通、平平无奇的一年罢了。</p><p>但是也许，就像平凡人也可以扮演一个特别的角色一样，普通的一年也可以成为标注人生的一页书签。更何况，她还有一个回环的名字。</p><p>1999年，我注册了QQ和邮箱，并开始以“门”为代号；2009年，我重新规划人生，决定回到自己的专业，以律师为业；2019年，我们律师团队经受住了更多的考验，无论这个考验是来自业务，来自客户，还是来自其他方面；接下来，希望我们有能力、也有机会去迎接更大的挑战，挑战更大的搏击。</p><p>竟然只一转眼，我们就已经站在了2020年的门口。回头一望，距离我来到上海，已经整整9年。这9年，我的状态可以用三个字来概括：埋头跑。下一个9年，我要换一个关键词。这个关键词是什么呢？我想用时间来告诉自己，用行动来告诉大家。</p><p>当你抬眼他正踏过江面，你好，2020。</p><p><br></p><p><br></p>',1703157981685,1589002357870,0,13,0,0,0,NULL),('ad02bbc0-91bf-11ea-b4b2-534983822470','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','《让岁月变成诗》名人语录','海子说：生命中有很多东西，能忘掉的叫过去，忘不掉的叫记忆。\n一个人的寂寞，有时候，很难隐藏得太久，时间太久了，人就会变得沉默，那时候，有些往日的情怀，就找不回来了。三毛说：如果有来生，要做一棵树，站成永恒，没有悲伤的姿势：一半在尘土里安详，一半在空中飞扬；一半散落阴凉，一半沐浴阳光。非常沉默非常骄傲，从不依靠从不寻找。','好文','<p><br></p><p><img src=\"http://oss.guoang.xyz/b43f4f19889bfad3279aa1d810253ed4.webp\"></p><p><br></p><p><span style=\"color: rgb(64, 64, 64);\">村上春树说：最纯粹的爱情观，如若相爱，便携手到老；如若错过，便护他安好。</span></p><p><br></p><p><img src=\"http://oss.guoang.xyz/1f1c80f1ac916b5459d9388697fc1f14.webp\"></p><p><br></p><p><span style=\"color: rgb(64, 64, 64);\">三毛说：如果有来生，要做一棵树，站成永恒，没有悲伤的姿势：一半在尘土里安详，一半在空中飞扬；一半散落阴凉，一半沐浴阳光。非常沉默非常骄傲，从不依靠从不寻找。</span></p>',1703157981685,1589006272764,0,5,0,0,0,NULL),('38b02e00-91c0-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','细读《挪威的森林》','花了六天时间读完，基本上是小半天小半天的样子下看完的，算是细读些了。小说我是很少会细读的，基本是凭语感一气而下，遇到生字或不通顺也不停顿，其实个别地方跳过一般也不影响对小说主旨的把握。《挪威的森林》，村上春树的代表作。因它的名气特别响亮，特定网购了一本，放在书架上放好几个月了，最近才有时间打开阅读。','好文','<p><br></p><p><img src=\"http://oss.guoang.xyz/0d766e70174073eeae85de95738404e6.webp\"></p><p>《挪威的森林》，村上春树的代表作。因它的名气特别响亮，特定网购了一本，放在书架上放好几个月了，最近才有时间打开阅读。</p><p>花了六天时间读完，基本上是小半天小半天的样子下看完的，算是细读些了。小说我是很少会细读的，基本是凭语感一气而下，遇到生字或不通顺也不停顿，其实个别地方跳过一般也不影响对小说主旨的把握</p><h2>书中故事</h2><p>小说主人翁叫“渡边君”，故事围绕他的中学生活到大学生活的描写，重点写他青春里的感情生活，又或者说爱情吧。其他的主人翁分别有中学时的朋友：木月、直子（女），大学认识的朋友：绿子（女）、永泽、室友“敢死队（记不起叫啥了）”、初美（永泽女友），包括直子疗养院的室友：玲子（女）。</p><p>以心相交的好友木月中学时自杀了。渡边一下子失去了能谈心的伙伴，后面选择离家很远没有人认识的地方读大学，也想重新开始自己的人生。本来单调乏味的大学生活他一直无感的持续着，在地铁上再次遇到好友木月的女朋友直子，让渡边的生活发生了大的变化，并在种种纠结中同直子自然而然的睡了，可心理又总觉得愧疚于木月。</p><p>同直子甜蜜的大学生活还未能怎么样，她就突然消失了，令渡边十分忐忑迷茫，一下子也不知所错了。</p><p>故事中的渡边是一个十分笃定坦诚又真实的人，有自己思考，绝不是个人云亦云的家伙。他的内心波澜不惊，仿佛对什么都不感兴趣，也不好奇，一切按自己的节奏生活着，其他人的高低贵贱完全无视，他是那么的纯真。</p><p>因为一本《了不起的盖茨比》认识了身为富家子弟的同学永泽。这位富二代心气十分高，一副看透世事一般，大多数人在他眼里全是阿谀奉承的废材，根本就是没有思想只是活着而已。因渡边把《了不起的盖茨比》看了三遍，便认定他配成为自己的朋友。一定程度上他们确实成了好友，那种彼此看透相互认可尊重但却完全不同的朋友。</p><p>看似完全不同的两类人，一般来说是完全没有可能成为朋友的，但他们却一起鬼混泡妞谈天，彼此成为对方的知己。应该说他们俩都是内心孤独的人，也都是十分坚定的人，就好像武侠小说里那些顶尖强者们的心心相惜，但又选择保持距离。</p><p>通过永泽认识了初美，一位华贵高雅的完美“梦中型”女人。第一次见到她，渡边便直言十分喜欢，是心中理想的女友。故事结尾，在得知初美自杀后，断然与永泽绝交了。</p><p>在失去直子联系的日子里，渡边认识了上同一门选修课的同学绿子。后面的故事，直子与绿子两个人都走进了渡边心里，但他们又不是三角恋（青春少年本就该有如此的烦恼，那才叫青春），在渡边搞不懂自己，纠结中发生了很多故事...</p><p>后来给直子老家寄信才联系上了她，去疗养院看望直子又认识了她的病室友玲子，一个大自己十几岁的女人，两次深夜散步中了解了她的故事。</p><p>直子最终病情加重自杀了，渡边因此独自流浪了一个多月，深夜里独自痛哭。</p><p>故事结局，渡边在同看望自己的玲子睡了后，明白了自己的内心，其实早已离不开来绿子了，而绿子也深爱着他，在公用电话亭拨通了绿子电话诉说着，故事结束，留下想象空间给读者。</p><p><br></p><p><img src=\"http://oss.guoang.xyz/30aae2c3e0a38cfd925727344fd566bb.webp\"></p><h2>摘抄书中喜欢的句子</h2><ul><li><strong>死并非生的对立面，而作为生的一部分永存。死迟早会将我们俘获在手。但反言之，在死俘获我们之前，我们并未被死俘获。生在此侧，死在彼侧。我在此侧，不在彼侧。</strong></li></ul><p>渡边在木月死后，明悟的一段对生死的感受，那年他才17岁。</p><ul><li><strong>对死后不足三十年的作家，原则上是不屑一顾的，那种书不足为信。不是我不相信现代文学。我只是不愿意在阅读未经过时间洗礼的书籍上面浪费时间。人生短暂。</strong></li></ul><p>渡边与永泽刚认识时，永泽发表自己对文学作品的态度，说的一段经典。这句话在真实世界也很有借鉴意义，但也不能绝对。</p><ul><li><strong>哪里会有人喜欢孤独！不过是不乱交朋友罢了。那样只能落得失望。</strong></li></ul><p>这段话是绿子刚认识渡边时，问他怎么老是一个人待着，一个人干这干那的，而渡边自嘲回答是喜欢孤独，绿子解读出了他的“喜欢孤独”。</p><ul><li><strong>绅士就是，所做的，不是自己想做之事，而是自己应做之事。</strong></li></ul><p>这段话是永泽自己的理解，是向渡边的解答他的提问。永泽就是这样一个对别人狠，对自己更狠的人，有时候你会觉得只这样的人才能成大事，有时候。</p><p><br></p>',1703157981685,1589006507104,0,9,0,0,0,NULL),('36eb4d60-95ae-11ea-b59c-0367d155e2d0','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','VUE.js','这是一本以 Vue.js 的 3.0 版本为核心技术栈，围绕 “前端工程化” 和 TypeScript 的知识点展开讲解的前端入门书籍，主要面向以下读者人群：\r\n\r\n掌握了基础的 HTML 页面编写知识，想学习一个主流前端框架的新手前端工程师\r\n已经学会了 Vue 2 ，面对 Vue 3 的大版本更新，想快速上手使用的前端工程师\r\n非职业前端开发，但涉及前端的工作，需要掌握一个主流前端框架的全栈工程师\r\n书里面的知识点是按照工程师做项目的顺序梳理的，比较循序渐进的一个过程，读者可以收获到这些知识：\r\n\r\n了解如何入门前端工程化开发，掌握 Node.js 和 npm 的使用\r\n掌握前端领域多年来趋势走高、带有类型支持的 TypeScript 语言\r\n上手主流前端框架 Vue.js 的全新版本，并且在遇到常见问题时知道如何解决','技术文章','<p>	C语言是一门面向过程的计算机编程语言，与C++、Java等面向对象编程语言有所不同。C语言的设计目标是提供一种能以简易的方式<a href=\"https://baike.baidu.com/item/%E7%BC%96%E8%AF%91/1258343\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">编译</a>、处理低级<a href=\"https://baike.baidu.com/item/%E5%AD%98%E5%82%A8%E5%99%A8/1583185\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">存储器</a>、仅产生少量的<a href=\"https://baike.baidu.com/item/%E6%9C%BA%E5%99%A8%E7%A0%81/86125\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">机器码</a>以及不需要任何运行环境支持便能运行的编程语言。C语言描述问题比汇编语言迅速、工作量小、可读性好、易于<a href=\"https://baike.baidu.com/item/%E8%B0%83%E8%AF%95\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">调试</a>、修改和移植，而<a href=\"https://baike.baidu.com/item/%E4%BB%A3%E7%A0%81%E8%B4%A8%E9%87%8F/8863758\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">代码质量</a>与<a href=\"https://baike.baidu.com/item/%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80/61826\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">汇编语言</a>相当。C语言一般只比汇编语言代码生成的<a href=\"https://baike.baidu.com/item/%E7%9B%AE%E6%A0%87%E7%A8%8B%E5%BA%8F/8082041\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">目标程序</a>效率低10%～20%。因此，C语言可以编写系统软件。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[2]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span></p><p>	当前阶段，在编程领域中，C语言的运用非常之多，它兼顾了<a href=\"https://baike.baidu.com/item/%E9%AB%98%E7%BA%A7%E8%AF%AD%E8%A8%80/299113\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">高级语言</a>和汇编语言的优点，相较于其它编程语言具有较大优势。计算机系统设计以及应用程序编写是C语言应用的两大领域。同时，C语言的普适较强，在许多计算机操作系统中都能够得到适用，且效率显著。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[3]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span></p><p>	冯.诺依曼在1945年提出了现代计算机的若干思想，被后人称为冯.诺依曼思想，这是计算机发展史上的里程碑。自1945 年至今大多采用其结构，因此冯.诺依曼被称为计算机之父。他的体系结构计算机由运算器、控制器、存储器、输入设备、输出设备五大部件构成。 C语言拥有一套完整的理论体系经过了漫长的发展历史，在编程语言中具有举足轻重的地位</p>',1703157981685,1589438577846,0,20,0,0,0,NULL),('296e1c30-9ff5-11ee-8138-1f16da620801','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','你好，2024','未来已来，我们准备好了吗？','好文','<p>随着时间的推移，我们越来越接近2024年。这是一个充满希望和挑战的年份，也是一个充满机遇和竞争的年份。在这个年份里，我们将面临许多新的挑战和机遇，需要我们做好充分的准备。</p><p>首先，2024年将是一个数字化、智能化、绿色化的时代。随着互联网、人工智能、大数据等技术的不断发展，我们的生活方式、工作方式、思维方式都将发生深刻的变化。我们需要不断学习新知识、新技能，以适应这个时代的变化。</p><p>其次，2024年将是一个经济全球化的时代。随着国际贸易的不断深入，各国之间的经济联系将更加紧密。我们需要加强与其他国家的合作，推动全球经济的发展。同时，我们也需要加强自身的创新能力，提高自身的竞争力。</p><p>最后，2024年将是一个社会变革的时代。随着社会的发展，人们的需求和价值观也在不断变化。我们需要关注社会问题，推动社会进步，为人们创造更加美好的生活。</p><p>在面对这些挑战和机遇时，我们需要做好充分的准备。首先，我们需要加强学习，提高自身的素质和能力。其次，我们需要加强合作，与其他国家、企业、个人建立良好的合作关系。最后，我们需要关注社会问题，积极参与社会公益事业，为社会做出贡献。</p><p>总之，2024年是一个充满希望和挑战的年份。我们需要做好充分的准备，以应对这个时代的挑战和机遇。同时，我们也需要保持开放的心态和创新的精神，不断探索新的领域和机会。只有这样，我们才能在这个时代中立于不败之地。</p>',1703157981685,1703158551795,0,30,0,0,0,NULL),('59d18610-a977-11ee-827d-456f8b70c24b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4',NULL,NULL,NULL,NULL,1704204028017,1704204028017,0,0,0,0,0,NULL),('ac497d30-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','你好VUE','你好VUE','技术文章','<p>你好VUE</p>',1704285770755,1704285770755,0,0,0,0,0,NULL);



DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `carousel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `carousel_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `carousel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `carousel_createtime` bigint DEFAULT NULL,
  `carousel_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


insert  into `carousel`(`carousel_id`,`carousel_img`,`carousel_url`,`carousel_createtime`,`carousel_title`) values ('3defcd70-91b7-11ea-b4b2-534983822470','https://img0.baidu.com/it/u=281123071,1981457246&fm=253&fmt=auto&app=138&f=JPEG?w=660&h=372','',1589002650439,'【二手信息】蓝牙耳机'),('52b77960-91b7-11ea-b4b2-534983822470','https://img14.360buyimg.com/pop/jfs/t1/119033/35/21952/84203/6231a635Ee448a329/ba68c9d27df9df7c.jpg','',1589002685302,'【二手信息】vue书本'),('0a9d3610-91fd-11ea-8bd5-6984a2cebda2','https://img1.baidu.com/it/u=4274866509,691686076&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','',1589032629105,'【二手信息】篮球'),('d05cc1e0-932e-11ea-b59c-0367d155e2d0','http://localhost:3006/uplodes/e0155d25ebf32fa95b072b834308a07b','https://img3.027art.cn/img/2021/07/12/1626072980452781.jpg',1589163957374,'【校内活动】抗疫志愿者');



DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `comment_createtime` bigint DEFAULT NULL,
  `comment_favour_num` int DEFAULT NULL,
  `comment_state` int DEFAULT NULL,
  `comment_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `comment`(`comment_id`,`content_id`,`user_id`,`comment_content`,`comment_createtime`,`comment_favour_num`,`comment_state`,`comment_istop`,`ispublic`,`admin`) values ('e4da6870-5233-11ea-8739-8519ff0c1c57','0b5a7060-4d45-11ea-af90-1ff1bd6c4005','ef2d60f0-4baf-11ea-ad08-2db5b0f053ed','<ol><li>阿萨大大</li><li>啊大大大</li><li>阿达哒哒哒</li><li>阿达哒哒哒                  <img src=\"http://127.0.0.1:3000/uplodes/75f54773bea6ec3c12a361e3e8b38f9d\"></li></ol>',1703155776158,NULL,0,0,0,NULL),('a53aac70-523d-11ea-93cc-fdbc57a3abb4','0b5a7060-4d45-11ea-af90-1ff1bd6c4005','ef2d60f0-4baf-11ea-ad08-2db5b0f053ed','<p>哈哈哈哈<img src=\"http://127.0.0.1:3000/uplodes/97a24ab18cd8e4a9cf96f2f431a237ee\"></p>',1702470031000,NULL,0,0,0,NULL),('09ee3760-5241-11ea-9adb-6502ff385798','0b5a7060-4d45-11ea-af90-1ff1bd6c4005','ef2d60f0-4baf-11ea-ad08-2db5b0f053ed','<p>哈哈哈哈哈哈</p>',1703155776158,NULL,0,0,0,NULL),('ea8f27e0-52da-11ea-a725-c5f5b263ec86','0b5a7060-4d45-11ea-af90-1ff1bd6c4005','ef2d60f0-4baf-11ea-ad08-2db5b0f053ed','<p>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('d5ce6610-5846-11ea-8396-f196e3bde291','65c65010-5843-11ea-8396-f196e3bde291','50a224e0-5846-11ea-8396-f196e3bde291','<p>哈哈哈哈哈</p><p><img src=\"http://127.0.0.1:3000/uplodes/5fdca8a194547f94726bcf10e14d1ef4\"></p>',1702470031000,NULL,0,0,0,NULL),('26eb2a50-5ac3-11ea-85fc-9d393dff764e','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('9f47b200-5c4b-11ea-8568-310572df330f','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('4c17e7c0-601b-11ea-97d2-33185b67ad31','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','570395c0-5842-11ea-8396-f196e3bde291','<p>杀了喀什的卡拉数量的哈佛</p>',1702470031000,NULL,0,0,0,NULL),('0bd3f550-604d-11ea-abd5-890bf2483d5d','2d8a46d0-5d38-11ea-8568-310572df330f','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('89228d00-60ed-11ea-b242-8b4ea86bb2e7','65c65010-5843-11ea-8396-f196e3bde291','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('899b1860-60ed-11ea-b242-8b4ea86bb2e7','65c65010-5843-11ea-8396-f196e3bde291','570395c0-5842-11ea-8396-f196e3bde291','',1702470031000,NULL,0,0,0,NULL),('c3375340-60ed-11ea-b242-8b4ea86bb2e7','b744da80-60ed-11ea-b242-8b4ea86bb2e7','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('220916e0-60f0-11ea-a042-cf63f42fc32a','b744da80-60ed-11ea-b242-8b4ea86bb2e7','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('db9c90f0-60f0-11ea-a042-cf63f42fc32a','b744da80-60ed-11ea-b242-8b4ea86bb2e7','570395c0-5842-11ea-8396-f196e3bde291','<p>12211</p>',1702470031000,NULL,0,0,0,NULL),('0cbc18e0-60f1-11ea-a042-cf63f42fc32a','b744da80-60ed-11ea-b242-8b4ea86bb2e7','570395c0-5842-11ea-8396-f196e3bde291','<p>哈韩的哈的哈</p>',1702470031000,NULL,0,0,0,NULL),('fbd45380-6122-11ea-a042-cf63f42fc32a','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','570395c0-5842-11ea-8396-f196e3bde291','<p>阿达地点</p>',1702470031000,NULL,0,0,0,NULL),('9c7c6650-61d8-11ea-a0a1-bb2c8f812934','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','570395c0-5842-11ea-8396-f196e3bde291','<p>hhhh</p>',1702470031000,NULL,0,0,0,NULL),('2eee5760-61dd-11ea-a0a1-bb2c8f812934','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>噶大大大</p>',1702470031000,NULL,0,0,0,NULL),('3bcda120-61dd-11ea-a0a1-bb2c8f812934','2b6a84f0-5b94-11ea-a46b-cbe26efd8e4f','570395c0-5842-11ea-8396-f196e3bde291','<p>阿达</p>',1702470031000,NULL,0,0,0,NULL),('e8c5c6b0-681c-11ea-b318-afe3df0494a9','943db920-5a09-11ea-98fa-f7a3304a43c7','570395c0-5842-11ea-8396-f196e3bde291','<p>活动测试</p>',1702470031000,NULL,0,0,0,NULL),('2cbfb740-6822-11ea-b318-afe3df0494a9','943db920-5a09-11ea-98fa-f7a3304a43c7','570395c0-5842-11ea-8396-f196e3bde291','',1702470031000,NULL,0,0,0,NULL),('8c677a70-6822-11ea-b318-afe3df0494a9','943db920-5a09-11ea-98fa-f7a3304a43c7','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('98675b70-68f8-11ea-a8b8-d301b78e9562','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈哈哈</p>',1702470031000,NULL,0,0,0,NULL),('ffb6f560-68f8-11ea-bb22-0d6616b5d098','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','570395c0-5842-11ea-8396-f196e3bde291','<p>啊大大大</p>',1702470031000,NULL,0,0,0,NULL),('b84e86d0-709a-11ea-9fe5-dd9d1fb2dad4','6db2a8e0-6e47-11ea-9638-4de92af8af26','570395c0-5842-11ea-8396-f196e3bde291','<p>hhhhh</p>',1702470031000,NULL,0,0,0,NULL),('53ef9f30-70d1-11ea-8d8f-c371111050c6','b85915c0-6d87-11ea-827d-23e4ddad9fb3','570395c0-5842-11ea-8396-f196e3bde291','<p>adsssssssssssss</p>',1702470031000,NULL,0,0,1,'guoang'),('e82eeb50-70d7-11ea-8e29-1986fe3e9d16','f02a6f50-6b50-11ea-afea-b322b44b18bc','570395c0-5842-11ea-8396-f196e3bde291','<p>撒啊啊啊啊啊啊啊啊啊啊啊啊</p>',1702470031000,NULL,0,0,1,'guoang'),('656aa210-734b-11ea-a4dd-7140befad870','943db920-5a09-11ea-98fa-f7a3304a43c7','570395c0-5842-11ea-8396-f196e3bde291','<p>hhhhhhhhhhhhhh </p>',1702470031000,NULL,0,0,1,'guoang'),('b014b3f0-73f5-11ea-a86c-61a0af1a4ce5','279b2410-6f35-11ea-8c99-176f159370fc','570395c0-5842-11ea-8396-f196e3bde291','<p>assssssssss</p>',1702470031000,NULL,0,0,1,'guoang'),('2dfffa11-7b97-11ea-bed2-6772578f48eb','7c4ac520-5b8e-11ea-aad3-6f8edfac198f','87231090-7161-11ea-94ab-add3cfa01434','<h1>评论审核中心测试</h1><blockquote>测试新潟县内潇洒啊撒旦艰苦撒旦就挨打不是大手笔大苏打大</blockquote><blockquote>啊大苏打撒旦撒dd</blockquote><p>s飒飒的撒大大大撒</p><p><img src=\"http://oss.guoang.xyz/94d05070d671f649b201a657e90192c2.jpg\"></p><p><br></p><p>测试信息撒低级哈加达回答后多久啊大噶技术的撒旦撒旦把实打实大大啊</p><p>撒大大</p><ol><li>飒飒打撒dd</li><li>asdsadasdasdaadad</li></ol><p>ad</p><p>阿三大苏打实打实的aa</p>',1702470031000,NULL,0,0,1,'guoang'),('5680c090-8539-11ea-9804-d96c09cf498f','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈</p>',1702470031000,NULL,0,0,1,'guoang'),('c8d9d600-853d-11ea-81ae-6fb1319a1ba1','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>hhhhh</p><p> <img src=\"http://oss.guoang.xyz/ec70c9074938563905a1a2acab0368ca.jpg\"></p>',1702470031000,NULL,0,0,1,'guoang'),('6183f320-8540-11ea-81ae-6fb1319a1ba1','2a4024e0-5856-11ea-9645-71502aa5b5bb','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈哈哈</p>',1702470031000,NULL,0,0,-1,'guoang'),('add28e80-8540-11ea-81ae-6fb1319a1ba1','7ae3d360-5b94-11ea-a46b-cbe26efd8e4f','570395c0-5842-11ea-8396-f196e3bde291','<p>哈哈哈哈</p>',1702470031000,NULL,0,0,1,'guoang'),('1a6db850-8544-11ea-81ae-6fb1319a1ba1','2a4024e0-5856-11ea-9645-71502aa5b5bb','fc5ab440-8542-11ea-81ae-6fb1319a1ba1','<p>hhhhh </p>',1702470031000,NULL,0,0,0,NULL),('934a1e80-8544-11ea-81ae-6fb1319a1ba1','1e93d960-7490-11ea-8595-ad478ec34a48','570395c0-5842-11ea-8396-f196e3bde291','<p>adasdasd a</p>',1702470031000,NULL,0,0,1,'guoang'),('f25d8060-91ba-11ea-b4b2-534983822470','b9702320-91ba-11ea-b4b2-534983822470','570395c0-5842-11ea-8396-f196e3bde291','<p>15块钱卖不卖</p>',1702470031000,NULL,0,0,0,NULL),('039d7a40-91bd-11ea-b4b2-534983822470','b9702320-91ba-11ea-b4b2-534983822470','570395c0-5842-11ea-8396-f196e3bde291','<p>书本的新旧程度怎么样</p>',1702470031000,NULL,0,0,0,NULL),('c6f5af60-92b4-11ea-b59c-0367d155e2d0','42b94190-91a5-11ea-953f-dfe0b5c8db9e','570395c0-5842-11ea-8396-f196e3bde291','<p>这是一条违规的评论</p>',1702470031000,NULL,0,0,1,'guoang'),('65d5ed61-9e38-11ee-b2bc-df943c6a5fb4','4e4770e0-91be-11ea-b4b2-534983822470','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','<p>sadsadsadsad</p>',1702470031000,NULL,0,0,1,'admin'),('84f7d731-9feb-11ee-a0f2-39d3e2402d6b','048e4c40-91a4-11ea-8324-6be411376f9e','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','<p>阿斯顿撒</p>',1702470031000,NULL,0,0,1,'admin'),('0b5bfc21-9fec-11ee-a0f2-39d3e2402d6b','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','<p>水水水水</p>',1702470031000,NULL,0,0,1,'admin'),('b30583e1-9fee-11ee-8a6b-09f1b6b91023','913560a0-932c-11ea-b59c-0367d155e2d0','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','<p>haogui</p>',1702470031000,NULL,0,0,1,'admin'),('98114fc0-aa24-11ee-a14a-bf3199a0357a','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','83392910-aa24-11ee-a14a-bf3199a0357a','<p>asdsadasd</p>',1704278435387,NULL,0,0,1,'admin'),('9c508011-aa24-11ee-a14a-bf3199a0357a','5eeef180-9fec-11ee-a0f2-39d3e2402d6b','83392910-aa24-11ee-a14a-bf3199a0357a','<p>you</p>',1704278442513,NULL,0,0,-1,'admin'),('a60f9e10-aa24-11ee-a14a-bf3199a0357a','b98be8a313e728555aed05091234fb57','83392910-aa24-11ee-a14a-bf3199a0357a','<p>asdas56465</p>',1704278458864,NULL,0,0,1,'admin'),('7d5aab31-aa25-11ee-a14a-bf3199a0357a','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','628bb920-aa25-11ee-a14a-bf3199a0357a','<p>有</p>',1704278820067,NULL,0,0,0,NULL),('815aafa1-aa25-11ee-a14a-bf3199a0357a','5eeef180-9fec-11ee-a0f2-39d3e2402d6b','628bb920-aa25-11ee-a14a-bf3199a0357a','<p>有</p>',1704278826778,NULL,0,0,0,NULL),('852b8dc1-aa25-11ee-a14a-bf3199a0357a','892a1590-9ff3-11ee-8a6b-09f1b6b91023','628bb920-aa25-11ee-a14a-bf3199a0357a','<p>有</p>',1704278833180,NULL,0,0,0,NULL),('f0a28a40-aa25-11ee-a14a-bf3199a0357a','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','d5896fd0-aa25-11ee-a14a-bf3199a0357a','<p>有</p>',1704279013475,NULL,0,0,0,NULL),('fbc249b0-aa25-11ee-a14a-bf3199a0357a','296e1c30-9ff5-11ee-8138-1f16da620801','d5896fd0-aa25-11ee-a14a-bf3199a0357a','<p>2024加油</p>',1704279032138,NULL,0,0,0,NULL),('536e70d1-aa26-11ee-a14a-bf3199a0357a','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','3bd9c230-aa26-11ee-a14a-bf3199a0357a','<p>有</p>',1704279179229,NULL,0,0,1,'admin'),('56cf2800-aa26-11ee-a14a-bf3199a0357a','892a1590-9ff3-11ee-8a6b-09f1b6b91023','3bd9c230-aa26-11ee-a14a-bf3199a0357a','<p>有</p>',1704279184895,NULL,0,0,-1,'admin'),('627380c1-aa26-11ee-a14a-bf3199a0357a','296e1c30-9ff5-11ee-8138-1f16da620801','3bd9c230-aa26-11ee-a14a-bf3199a0357a','<p>2024 加油</p>',1704279204428,NULL,0,0,1,'admin'),('63e45100-aa35-11ee-90de-257c31fdfe30','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','361f3eb0-aa35-11ee-90de-257c31fdfe30','<p>有</p>',1704285649295,NULL,0,0,-1,'admin'),('7d9eece0-aa35-11ee-90de-257c31fdfe30','296e1c30-9ff5-11ee-8138-1f16da620801','361f3eb0-aa35-11ee-90de-257c31fdfe30','<p>加油2024</p>',1704285692461,NULL,0,0,1,'admin');



DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `company_scale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `company_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `company_createtime` bigint DEFAULT NULL,
  `company_updatetime` bigint DEFAULT NULL,
  `company_favour_num` int DEFAULT NULL,
  `company_read_num` int DEFAULT NULL,
  `company_state` int DEFAULT NULL,
  `company_istop` int DEFAULT NULL,
  `company_ispublic` int DEFAULT NULL,
  `company_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `company`(`company_id`,`user_id`,`company_name`,`company_scale`,`company_content`,`company_createtime`,`company_updatetime`,`company_favour_num`,`company_read_num`,`company_state`,`company_istop`,`company_ispublic`,`company_mail`) values ('55b1bde0-91c8-11ea-8697-f18fb1c10827','041170c0-91c8-11ea-a343-5d12af3b45a7','哈哈哈信息平台','333人','<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>',1703155776158,1703155776158,0,9,0,0,0,'邮箱54674@qq.com'),('7f956c70-932a-11ea-b59c-0367d155e2d0','85a1b110-9329-11ea-b59c-0367d155e2d0','中国网络有限公司','100人','<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>',1703155776158,1703155776158,0,7,0,0,0,'邮箱 3647637446@qq.com'),('cd527ca0-92c1-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','xxxx信息技术有限公司','1000人','<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>',1703155776158,1703155776158,0,12,0,0,0,'简历发送至邮箱354654366@qq.com'),('d5291620-91b1-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','666网络有限公司','100人','<p><span style=\"color: rgb(0, 0, 0);\">666有限公司是一家集研发、生产、销售和服务于一体的专业标牌生产厂家。注册资金500万人民币。主要生产塑料基材、软塑透明树脂、金属、模内复合等标牌产品，洗衣机顶盖板总成，平衡板，以及塑印、彩印、顶盖板、吸音垫等产品。公司位于长江三角洲经济快速增长、风景秀丽的太湖之畔——无锡。 公司自1984年成立至今，已经过了3次跨越式的发展。2004年至今公司投入5000多万元资金建设新的生产基地，目前已竣工并投入生产，占地面积达40000m2，厂房面积近15000m2。公司2004年的年产值达4350多万元，并且每年以平均30%的速度快速增长。目前，本公司的产品已具备国际及国内多项质量认证证书，并为知名家用电器企业：小天鹅电器有限公司、三星电子有限公司、海尔集团、惠尔普等配套生产各类标牌。可以说客户是我们的老师，和他们合作使我们得到很多的学习机会来提高自身的技术水平和管理水平，是我们生产和发展的动力。 公司本着“千方百计生产出满足顾客期望和要求的产品”的宗旨，坚持“工厂出产的不仅仅是产品，更重要的是信誉和质量”的经营理念，不断吸收新技术、引进新设备，使公司的经济效益蒸蒸日上。相信公司将会永不停止探索和发展的脚步，和中国国内以及世界国际性大公司同步发展。</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span class=\"ql-cursor\">﻿</span></span></p>',1703155776158,1703155776158,0,21,0,0,0,'邮箱384767366@qq.com');


DROP TABLE IF EXISTS `fankui`;

CREATE TABLE `fankui` (
  `fankui_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fankui_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fankui_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fankui_createtime` bigint DEFAULT NULL,
  `fankui_state` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `fankui`(`fankui_id`,`fankui_content`,`fankui_user`,`fankui_createtime`,`fankui_state`,`admin`) values ('930a26d0-9e37-11ee-b2bc-df943c6a5fb4','阿萨法杀害饭卡上','15357865@qq.com',1589111842624,2,'xzh'),('f28a33d0-92b9-11ea-b59c-0367d155e2d0','意见内容','546456432@qq.com',1589113763597,2,'asda');



DROP TABLE IF EXISTS `help`;

CREATE TABLE `help` (
  `help_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `help_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `help_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `help_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `help_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `help_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createtime` bigint DEFAULT NULL,
  `updatetime` bigint DEFAULT NULL,
  `help_favour_num` int DEFAULT NULL,
  `help_read_num` int DEFAULT NULL,
  `help_state` int DEFAULT NULL,
  `help_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`help_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `help`(`help_id`,`user_id`,`help_title`,`help_tag`,`help_lable`,`help_content`,`help_img`,`createtime`,`updatetime`,`help_favour_num`,`help_read_num`,`help_state`,`help_istop`,`ispublic`,`admin`) values ('404a4540-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','有人卖车吗','卖车','寻找资源','<p>有人卖车吗</p>',NULL,1704284301076,1704284301076,0,1,0,0,1,'admin'),('5bd41b80-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','有人去广州南站吗','拼车','其他','<p>有人去广州南站吗</p>',NULL,1704285635768,1704285635768,0,0,0,0,1,'admin'),('5eeef180-9fec-11ee-a0f2-39d3e2402d6b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','有什么可以买的书吗','书本','学习','<p>有什么可以买的书吗</p>',NULL,1703154776088,1703154776088,0,3,0,0,1,'admin'),('852fde10-aa26-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','有人去广州白云站吗','乘车','其他','<p>明天下午有人去广州白云站吗</p>',NULL,1704279262705,1704279262705,0,2,0,0,1,'admin'),('892a1590-9ff3-11ee-8a6b-09f1b6b91023','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','有什么鞋可以买的吗','鞋子','其他','<p>想买鞋了</p>',NULL,1703157853417,1703157853417,0,3,0,0,1,'aaa123'),('a64eff30-9feb-11ee-a0f2-39d3e2402d6b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','有什么好看的电影吗','电视剧','娱乐','<p>有什么好看的电影吗</p>',NULL,1703154466339,1703154466339,0,11,0,0,1,'admin');



DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `job_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `job_createtime` bigint DEFAULT NULL,
  `job_updatetime` bigint DEFAULT NULL,
  `job_favour_num` int DEFAULT NULL,
  `job_read_num` int DEFAULT NULL,
  `job_state` int DEFAULT NULL,
  `job_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `job`(`job_id`,`user_id`,`company_id`,`job_name`,`job_salary`,`job_num`,`job_lable`,`job_content`,`job_createtime`,`job_updatetime`,`job_favour_num`,`job_read_num`,`job_state`,`job_istop`,`ispublic`,`admin`) values ('a5469ab0-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','Java开发经理','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001535323,0,19,0,0,0,NULL),('cd099700-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','Java开发经理','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001602032,0,4,0,0,0,NULL),('ceac7190-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','Java开发经理','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001604777,0,0,0,0,0,NULL),('d02492a0-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','Java开发经理','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001607242,0,0,0,0,0,NULL),('d41295b0-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','Web前端开发工程师（红云智汇）','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001613834,0,3,0,0,0,NULL),('dc7a8820-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','后台开发工程师（红云智汇）','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001627938,0,0,0,0,0,NULL),('e4ac4f60-91b4-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','d5291620-91b1-11ea-b4b2-534983822470','大数据开发工程师','10k','5','计算机类','<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>',1703164936000,1589001641686,0,1,0,0,0,NULL),('c9a657b0-91c8-11ea-8697-f18fb1c10827','041170c0-91c8-11ea-a343-5d12af3b45a7','55b1bde0-91c8-11ea-8697-f18fb1c10827','室内设计师','10k','3','设计类','<p><span style=\"color: rgb(51, 51, 51);\">招 室内设计师 熟练3ds Max</span></p><p><span style=\"color: rgb(51, 51, 51);\">有责任有想法 也欢迎大学生</span></p><p><span style=\"color: rgb(51, 51, 51);\">发信息：234234</span></p><p>联系我时，请说是在58同城上看到的，谢谢！</p>',1703164936000,1589010186283,0,2,0,0,0,NULL),('4265cce0-92c2-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','cd527ca0-92c1-11ea-b59c-0367d155e2d0','小程序开发工程师 ','14k-30k','3','计算机类','<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>',1703164936000,1589117333550,0,1,0,0,0,NULL),('574f58b0-92c2-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','cd527ca0-92c1-11ea-b59c-0367d155e2d0','大数据开发工程师','19k','3','计算机类','<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>',1703164936000,1589117368635,0,1,0,0,0,NULL),('65164350-92c2-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','cd527ca0-92c1-11ea-b59c-0367d155e2d0','网络工程师','30k','3','计算机类','<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>',1703164936000,1589117391749,0,0,0,0,0,NULL),('79a83940-92c2-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','cd527ca0-92c1-11ea-b59c-0367d155e2d0','算法工程师','40k','3','计算机类','<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>',1703164936000,1589117426260,0,0,0,0,0,NULL);



DROP TABLE IF EXISTS `joins`;

CREATE TABLE `joins` (
  `join_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jions_createtime` bigint DEFAULT NULL,
  PRIMARY KEY (`join_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `joins`(`join_id`,`type`,`user_id`,`name`,`describe`,`content_id`,`jions_createtime`) values ('5b2effb1-aa26-11ee-a14a-bf3199a0357a','oldstuffcontent','3bd9c230-aa26-11ee-a14a-bf3199a0357a','866','123456789','b98be8a313e728555aed05091234fb57',1704279192234),('759917a1-aa35-11ee-90de-257c31fdfe30','oldstuffcontent','361f3eb0-aa35-11ee-90de-257c31fdfe30','25','123456','7641d030-aa34-11ee-90de-257c31fdfe30',1704285679001),('8ba062c1-aa25-11ee-a14a-bf3199a0357a','oldstuffcontent','628bb920-aa25-11ee-a14a-bf3199a0357a','866','18822','b98be8a313e728555aed05091234fb57',1704278844011),('a3c3b241-aa24-11ee-a14a-bf3199a0357a','oldstuffcontent','83392910-aa24-11ee-a14a-bf3199a0357a','522','2323','b98be8a313e728555aed05091234fb57',1704278455011),('ac3b62f1-9fee-11ee-8a6b-09f1b6b91023','oldstuffcontent','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','6667','1223213','913560a0-932c-11ea-b59c-0367d155e2d0',1703155764766),('c80d2441-93f0-11ea-b59c-0367d155e2d0','activitycontent','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','','','938bf4c0-91c1-11ea-b4b2-534983822470',2222222222),('f69a8e22-aa25-11ee-a14a-bf3199a0357a','oldstuffcontent','d5896fd0-aa25-11ee-a14a-bf3199a0357a','866','231213456','b98be8a313e728555aed05091234fb57',1704279023490);



DROP TABLE IF EXISTS `jubao`;

CREATE TABLE `jubao` (
  `jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jubao_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jubao_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jubao_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jubao_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jubao_createtime` bigint DEFAULT NULL,
  `jubao_state` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;





DROP TABLE IF EXISTS `lable`;

CREATE TABLE `lable` (
  `lable_id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lable_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inputshow` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `lable`(`lable_id`,`lable_name`,`lable`,`inputshow`) values ('1','问答分类','[\"娱乐\",\"失物认领\",\"学习\",\"寻找资源\",\"其他\"]',0),('2','活动分类','[\"体育\",\"志愿者\",\"学习\"]',0),('3','二手分类','[\"数码\",\"书本\",\"运动器材\"]',0),('4','招聘分类','[\"计算机类\",\"设计类\",\"兼职\"]',0),('5','文章分类','[\"新闻\",\"好文\",\"技术文章\",\"其他\"]',0);



DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `notice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createtime` bigint DEFAULT NULL,
  `state` int DEFAULT NULL,
  `content_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `notice`(`notice_id`,`user_from`,`user_to`,`action`,`content_id`,`router`,`createtime`,`state`,`content_name`,`nickname`) values ('039d5330-91bd-11ea-b4b2-534983822470','570395c0-5842-11ea-8396-f196e3bde291','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','评论了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589005129571,0,'c语言程序设计','哈哈哈哈'),('0b5bfc20-9fec-11ee-a0f2-39d3e2402d6b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1703154635874,1,'有什么好看的电影吗','该用户还没没有设置昵称'),('0d09f650-91bb-11ea-b4b2-534983822470','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','570395c0-5842-11ea-8396-f196e3bde291','回复了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589004286389,0,'c语言程序设计','吴昆'),('2ca65700-9e38-11ee-b2bc-df943c6a5fb4','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','570395c0-5842-11ea-8396-f196e3bde291','回复了你','42b94190-91a5-11ea-953f-dfe0b5c8db9e','helpcontent',1702967431152,0,'昨天在三食堂遗失一本《c语言程序设计》','该用户还没没有设置昵称'),('536e70d0-aa26-11ee-a14a-bf3199a0357a','3bd9c230-aa26-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704279179229,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('56cf00f0-aa26-11ee-a14a-bf3199a0357a','3bd9c230-aa26-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','892a1590-9ff3-11ee-8a6b-09f1b6b91023','helpcontent',1704279184895,0,'有什么鞋可以买的吗','该用户还没没有设置昵称'),('5b2ed8a0-aa26-11ee-a14a-bf3199a0357a','','3bd9c230-aa26-11ee-a14a-bf3199a0357a','你已经成功参与','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704279192234,0,'蓝牙耳机','系统通知'),('5b2effb0-aa26-11ee-a14a-bf3199a0357a','','0a2afba0-91a2-11ea-bda1-53a75d166860','有一位用户参加了你发布的内容','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704279192235,0,'蓝牙耳机','系统通知'),('627380c0-aa26-11ee-a14a-bf3199a0357a','3bd9c230-aa26-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','296e1c30-9ff5-11ee-8138-1f16da620801','newscontent',1704279204428,0,'你好，2024','该用户还没没有设置昵称'),('63e429f0-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704285649295,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('65d5ed60-9e38-11ee-b2bc-df943c6a5fb4','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','570395c0-5842-11ea-8396-f196e3bde291','评论了你','4e4770e0-91be-11ea-b4b2-534983822470','oldstuffcontent',1702967527094,0,'MySQL必知必会','该用户还没没有设置昵称'),('67472b10-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','回复了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704285654977,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('7598f090-aa35-11ee-90de-257c31fdfe30','','361f3eb0-aa35-11ee-90de-257c31fdfe30','你已经成功参与','7641d030-aa34-11ee-90de-257c31fdfe30','oldstuffcontent',1704285679001,0,'VUE.JS','系统通知'),('759917a0-aa35-11ee-90de-257c31fdfe30','','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','有一位用户参加了你发布的内容','7641d030-aa34-11ee-90de-257c31fdfe30','oldstuffcontent',1704285679002,0,'VUE.JS','系统通知'),('796fe1a0-92b6-11ea-b59c-0367d155e2d0','','570395c0-5842-11ea-8396-f196e3bde291','你已经成功参与','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589112271930,1,'c语言程序设计','系统通知'),('797008b0-92b6-11ea-b59c-0367d155e2d0','','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','有一位用户参加了你发布的内容','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589112271931,0,'c语言程序设计','系统通知'),('7d5aab30-aa25-11ee-a14a-bf3199a0357a','628bb920-aa25-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704278820067,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('7d9ec5d0-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','296e1c30-9ff5-11ee-8138-1f16da620801','newscontent',1704285692461,0,'你好，2024','该用户还没没有设置昵称'),('815aafa0-aa25-11ee-a14a-bf3199a0357a','628bb920-aa25-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','5eeef180-9fec-11ee-a0f2-39d3e2402d6b','helpcontent',1704278826778,0,'有什么可以买的书吗','该用户还没没有设置昵称'),('820e9d70-95d5-11ea-b59c-0367d155e2d0',NULL,'1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','发布新的活动通知','938bf4c0-91c1-11ea-b4b2-534983822470','activitycontent',1589455454279,0,'防疫志愿服务','杜欣'),('84e0b630-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','回复了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704284416147,0,'有什么好看的电影吗','hhh'),('84f7d730-9feb-11ee-a0f2-39d3e2402d6b','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','0a2afba0-91a2-11ea-bda1-53a75d166860','评论了你','048e4c40-91a4-11ea-8324-6be411376f9e','helpcontent',1703154410403,0,'最近有什么好看的电影吗','该用户还没没有设置昵称'),('852b8dc0-aa25-11ee-a14a-bf3199a0357a','628bb920-aa25-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','892a1590-9ff3-11ee-8a6b-09f1b6b91023','helpcontent',1704278833180,0,'有什么鞋可以买的吗','该用户还没没有设置昵称'),('87e23660-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','回复了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704284421190,0,'有什么好看的电影吗','hhh'),('8ba03bb0-aa25-11ee-a14a-bf3199a0357a','','628bb920-aa25-11ee-a14a-bf3199a0357a','你已经成功参与','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704278844011,0,'蓝牙耳机','系统通知'),('8ba062c0-aa25-11ee-a14a-bf3199a0357a','','0a2afba0-91a2-11ea-bda1-53a75d166860','有一位用户参加了你发布的内容','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704278844012,0,'蓝牙耳机','系统通知'),('981128b0-aa24-11ee-a14a-bf3199a0357a','83392910-aa24-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704278435387,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('9c508010-aa24-11ee-a14a-bf3199a0357a','83392910-aa24-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','5eeef180-9fec-11ee-a0f2-39d3e2402d6b','helpcontent',1704278442513,0,'有什么可以买的书吗','该用户还没没有设置昵称'),('a3c38b30-aa24-11ee-a14a-bf3199a0357a','','83392910-aa24-11ee-a14a-bf3199a0357a','你已经成功参与','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704278455011,0,'蓝牙耳机','系统通知'),('a3c3b240-aa24-11ee-a14a-bf3199a0357a','','0a2afba0-91a2-11ea-bda1-53a75d166860','有一位用户参加了你发布的内容','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704278455012,0,'蓝牙耳机','系统通知'),('a60f7700-aa24-11ee-a14a-bf3199a0357a','83392910-aa24-11ee-a14a-bf3199a0357a','0a2afba0-91a2-11ea-bda1-53a75d166860','评论了你','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704278458864,0,'蓝牙耳机','该用户还没没有设置昵称'),('ac3b3be0-9fee-11ee-8a6b-09f1b6b91023','','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','你已经成功参与','913560a0-932c-11ea-b59c-0367d155e2d0','oldstuffcontent',1703155764766,0,'14proax','系统通知'),('ac3b62f0-9fee-11ee-8a6b-09f1b6b91023','','85a1b110-9329-11ea-b59c-0367d155e2d0','有一位用户参加了你发布的内容','913560a0-932c-11ea-b59c-0367d155e2d0','oldstuffcontent',1703155764767,0,'14proax','系统通知'),('b30583e0-9fee-11ee-8a6b-09f1b6b91023','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','85a1b110-9329-11ea-b59c-0367d155e2d0','评论了你','913560a0-932c-11ea-b59c-0367d155e2d0','oldstuffcontent',1703155776158,0,'14proax','xxxx'),('b30c84d0-91bd-11ea-b4b2-534983822470','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','回复了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589005423901,0,'c语言程序设计','吴昆'),('b6201530-95d5-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','回复了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589455541635,0,'c语言程序设计','郭昂'),('c66f4f10-92b9-11ea-b59c-0367d155e2d0','','570395c0-5842-11ea-8396-f196e3bde291','你已经成功参与','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589113689601,1,'c语言程序设计','系统通知'),('c66f4f11-92b9-11ea-b59c-0367d155e2d0','','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','有一位用户参加了你发布的内容','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589113689601,0,'c语言程序设计','系统通知'),('c6f58850-92b4-11ea-b59c-0367d155e2d0','570395c0-5842-11ea-8396-f196e3bde291','0a2afba0-91a2-11ea-bda1-53a75d166860','评论了你','42b94190-91a5-11ea-953f-dfe0b5c8db9e','helpcontent',1589111542997,0,'昨天在三食堂遗失一本《c语言程序设计》','哈哈哈哈'),('c80cfd30-93f0-11ea-b59c-0367d155e2d0','','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','你已经成功参与','938bf4c0-91c1-11ea-b4b2-534983822470','activitycontent',1589247265795,0,'防疫志愿服务','系统通知'),('c80d2440-93f0-11ea-b59c-0367d155e2d0','','570395c0-5842-11ea-8396-f196e3bde291','有一位用户参加了你发布的内容','938bf4c0-91c1-11ea-b4b2-534983822470','activitycontent',1589247265796,0,'防疫志愿服务','系统通知'),('ec485f00-95d5-11ea-b59c-0367d155e2d0','c0bdab90-92d0-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','回复了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589455632496,0,'c语言程序设计','于志文'),('f0a26330-aa25-11ee-a14a-bf3199a0357a','d5896fd0-aa25-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','a64eff30-9feb-11ee-a0f2-39d3e2402d6b','helpcontent',1704279013475,0,'有什么好看的电影吗','该用户还没没有设置昵称'),('f25d5950-91ba-11ea-b4b2-534983822470','570395c0-5842-11ea-8396-f196e3bde291','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','评论了你','b9702320-91ba-11ea-b4b2-534983822470','oldstuffcontent',1589004241637,1,'c语言程序设计','哈哈哈哈'),('f69a8e20-aa25-11ee-a14a-bf3199a0357a','','d5896fd0-aa25-11ee-a14a-bf3199a0357a','你已经成功参与','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704279023490,0,'蓝牙耳机','系统通知'),('f69a8e21-aa25-11ee-a14a-bf3199a0357a','','0a2afba0-91a2-11ea-bda1-53a75d166860','有一位用户参加了你发布的内容','b98be8a313e728555aed05091234fb57','oldstuffcontent',1704279023490,0,'蓝牙耳机','系统通知'),('fbc222a0-aa25-11ee-a14a-bf3199a0357a','d5896fd0-aa25-11ee-a14a-bf3199a0357a','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','评论了你','296e1c30-9ff5-11ee-8138-1f16da620801','newscontent',1704279032138,0,'你好，2024','该用户还没没有设置昵称');



DROP TABLE IF EXISTS `oldstuff`;

CREATE TABLE `oldstuff` (
  `oldstuff_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `oldstuff_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `oldstuff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `oldstuff_price` int DEFAULT NULL,
  `oldstuff_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `createtime` bigint DEFAULT NULL,
  `oldstuff_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `updatetime` bigint DEFAULT NULL,
  `oldstuff_favour_num` int DEFAULT NULL,
  `oldstuff_read_num` int DEFAULT NULL,
  `oldstuff_state` int DEFAULT NULL,
  `oldstuff_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


insert  into `oldstuff`(`oldstuff_id`,`user_id`,`oldstuff_img`,`oldstuff_name`,`oldstuff_price`,`oldstuff_content`,`createtime`,`oldstuff_lable`,`updatetime`,`oldstuff_favour_num`,`oldstuff_read_num`,`oldstuff_state`,`oldstuff_istop`,`ispublic`,`admin`) values ('dca2ed20-91b3-11ea-b4b2-534983822470','0a2afba0-91a2-11ea-bda1-53a75d166860','https://img0.baidu.com/it/u=281123071,1981457246&fm=253&fmt=auto&app=138&f=JPEG?w=660&h=372','蓝牙耳机',899,'<p>AirPods Pro介绍\r\n续航方面，非主动降噪模式下AirPods Pro耳机本体聆听时间最长可达5小时；在主动降噪模式下，AirPods Pro单次充电聆听时间最长4.5小时，通话时间最长可达3.5小时。配合无线充电盒，可提供超过24小时的聆听时间或18小时以上的通话时间。<p>',1589000952761,'数码',1589000952761,0,62,0,0,1,'guoang'),('a60fee60-aa33-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','http://localhost:3006/uplodes/4d8cea775e45a31d3773b7a01f1a78c5','java高级程序设计',30,'<p>java书本</p>',1704284901318,'书本',1704284901318,0,1,0,0,0,NULL),('f7c4ade0-aa33-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','http://localhost:3006/uplodes/f6ca065873a973fc3d2eabded0ba8369','14promax',7799,'<p>14promax 品牌：苹果 内存容量：256GB</p>',1704285038398,'数码',1704285038398,0,0,0,0,0,NULL),('2f21a720-aa34-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','http://localhost:3006/uplodes/9921df454bf11bd3e40d21e654d050e2','MySQL',20,'<p>MySQL非纸质版的，无水印内容截图在下面 需要的，可以直接拍发另有其他计算机类的需要可以私聊</p>',1704285131282,'书本',1704285131282,0,1,0,0,0,NULL),('51408bf0-aa34-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','http://localhost:3006/uplodes/e0c65e88d0a05178c165c55e6e4f66fc','篮球',90,'<p>篮球</p>',1704285188527,'运动器材',1704285188527,0,0,0,0,0,NULL),('7641d030-aa34-11ee-90de-257c31fdfe30','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','http://localhost:3006/uplodes/a2d6db005acfe196580e72b50d6ab3a9','VUE.JS',30,'<p>vuej</p>',1704285250611,'书本',1704285250611,0,2,0,0,0,NULL);



DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `reply_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `comment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `reply_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `tousernickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `touserid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createtime` bigint DEFAULT NULL,
  `reply_state` int DEFAULT NULL,
  `reply_istop` int DEFAULT NULL,
  `ispublic` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


insert  into `reply`(`reply_id`,`user_id`,`comment_id`,`reply_content`,`tousernickname`,`touserid`,`createtime`,`reply_state`,`reply_istop`,`ispublic`,`admin`) values ('be3b8e30-709a-11ea-9fe5-dd9d1fb2dad4','570395c0-5842-11ea-8396-f196e3bde291','b84e86d0-709a-11ea-9fe5-dd9d1fb2dad4','<p>hhhhh</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1585362021907,0,0,0,NULL),('4caca580-7165-11ea-b5fe-0d149302d6e6','87231090-7161-11ea-94ab-add3cfa01434','8c677a70-6822-11ea-b318-afe3df0494a9','<p>哈哈哈哈哈哈哈哈哈</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1585449019224,0,0,0,NULL),('9da9ec10-723a-11ea-986d-a72e1738d1e0','570395c0-5842-11ea-8396-f196e3bde291','e8c5c6b0-681c-11ea-b318-afe3df0494a9','<p>哈哈哈哈VB</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1585540637905,0,0,0,NULL),('108dde91-74bf-11ea-8595-ad478ec34a48','570395c0-5842-11ea-8396-f196e3bde291','c3375340-60ed-11ea-b242-8b4ea86bb2e7','<p>手机测试</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1585817426553,0,0,0,NULL),('48d64941-74bf-11ea-8595-ad478ec34a48','570395c0-5842-11ea-8396-f196e3bde291','b014b3f0-73f5-11ea-a86c-61a0af1a4ce5','<p>昊昊昊</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1585817520980,0,0,0,NULL),('cd4f8ff0-7bd7-11ea-a85b-43eaec03f5b0','87231090-7161-11ea-94ab-add3cfa01434','2dfffa11-7b97-11ea-bed2-6772578f48eb','<p>水水水水水水水水水水水水水水水水水水水</p>','guoang','87231090-7161-11ea-94ab-add3cfa01434',1586597709295,0,0,1,'guoang'),('d0e97f90-7bd7-11ea-a85b-43eaec03f5b0','87231090-7161-11ea-94ab-add3cfa01434','2dfffa11-7b97-11ea-bed2-6772578f48eb','<p>啊水水水水水水水水水水水水水水水水水水水水水水</p>','guoang','87231090-7161-11ea-94ab-add3cfa01434',1586597715337,0,0,1,'guoang'),('e2581570-7bd7-11ea-a85b-43eaec03f5b0','87231090-7161-11ea-94ab-add3cfa01434','2dfffa11-7b97-11ea-bed2-6772578f48eb','<h1>阿三水水水水水水水水水水水水</h1><p><img src=\"http://oss.guoang.xyz/63fd71419e8fbca7a662b8521aa34679.jpg\"></p>','guoang','87231090-7161-11ea-94ab-add3cfa01434',1586597744583,0,0,1,'guoang'),('b592dc60-8ced-11ea-b614-a3ab0b6a0716','570395c0-5842-11ea-8396-f196e3bde291','26eb2a50-5ac3-11ea-85fc-9d393dff764e','<p>adadad</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1588476288166,0,0,0,NULL),('c128b971-910f-11ea-bbe1-2f74fe856f0b','570395c0-5842-11ea-8396-f196e3bde291','934a1e80-8544-11ea-81ae-6fb1319a1ba1','<p>asdadadada </p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1588930715143,0,0,0,NULL),('0d0a4470-91bb-11ea-b4b2-534983822470','acb43a80-91a7-11ea-953f-dfe0b5c8db9e','f25d8060-91ba-11ea-b4b2-534983822470','<p>可以</p>','哈哈哈哈','570395c0-5842-11ea-8396-f196e3bde291',1589004286391,0,0,1,'guoang'),('b6203c40-95d5-11ea-b59c-0367d155e2d0','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0','f25d8060-91ba-11ea-b4b2-534983822470','<p>还有没有其他软件开发书籍</p>','吴昆','acb43a80-91a7-11ea-953f-dfe0b5c8db9e',1589455541636,0,0,0,NULL),('ec488610-95d5-11ea-b59c-0367d155e2d0','c0bdab90-92d0-11ea-b59c-0367d155e2d0','f25d8060-91ba-11ea-b4b2-534983822470','<p>我有</p>','郭昂','1cc9ebc0-92c1-11ea-b59c-0367d155e2d0',1589455632497,0,0,0,NULL),('2ca65701-9e38-11ee-b2bc-df943c6a5fb4','930a26d0-9e37-11ee-b2bc-df943c6a5fb4','c6f5af60-92b4-11ea-b59c-0367d155e2d0','<p>sadas</p>','guaong','570395c0-5842-11ea-8396-f196e3bde291',1702967431152,0,0,0,NULL),('84e10450-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','0b5bfc21-9fec-11ee-a0f2-39d3e2402d6b','<p>有有有</p>','许泽鸿','930a26d0-9e37-11ee-b2bc-df943c6a5fb4',1704284416149,0,0,0,NULL),('87e25d70-aa32-11ee-90de-257c31fdfe30','17e67510-aa32-11ee-90de-257c31fdfe30','0b5bfc21-9fec-11ee-a0f2-39d3e2402d6b','<p>12346</p>','许泽鸿','930a26d0-9e37-11ee-b2bc-df943c6a5fb4',1704284421191,0,0,0,NULL),('67475220-aa35-11ee-90de-257c31fdfe30','361f3eb0-aa35-11ee-90de-257c31fdfe30','0b5bfc21-9fec-11ee-a0f2-39d3e2402d6b','<p>有</p>','许泽鸿','930a26d0-9e37-11ee-b2bc-df943c6a5fb4',1704285654978,0,0,0,NULL);



DROP TABLE IF EXISTS `shensu`;

CREATE TABLE `shensu` (
  `shensu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `shensu_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `shensu_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `shensu_jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `shensu_createtime` bigint DEFAULT NULL,
  `shensu_state` int DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `shensu`(`shensu_id`,`shensu_content`,`shensu_user`,`shensu_jubao_id`,`shensu_createtime`,`shensu_state`,`admin`) values ('8902dce0-92ba-11ea-b59c-0367d155e2d0','账号被盗','qqqqqqqq','3d8462c0-92ba-11ea-b59c-0367d155e2d0',1589114016046,1,'guoang');



DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `studentid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `studentcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `realstate` int DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `synopsis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `companyimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `companystate` int DEFAULT NULL,
  `user_state` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_createtime` bigint DEFAULT NULL,
  `activationdate` bigint DEFAULT NULL,
  `jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



insert  into `user`(`user_id`,`username`,`password`,`nickname`,`realname`,`studentid`,`studentcard`,`realstate`,`avatar`,`qq`,`mail`,`synopsis`,`phone`,`companyname`,`companyimg`,`companystate`,`user_state`,`user_createtime`,`activationdate`,`jubao_id`) values ('041170c0-91c8-11ea-a343-5d12af3b45a7','zhanghao3','b98be8a313e728555aed05091234fb57','测试账号',NULL,NULL,NULL,1,'http://oss.guoang.xyz/morentouxiang.jpg','3424242424','4343434@qq.com','','13345446545','哈哈哈信息平台','[{\"url\":\"http://oss.guoang.xyz/932bf045f95f62bf1e058efa69fceac6.jpg\",\"uid\":1589009947643,\"status\":\"success\"}]',3,'2',1703161231000,1703161231000,NULL),('0a2afba0-91a2-11ea-bda1-53a75d166860','zhanghao1','b98be8a313e728555aed05091234fb57','账号1','sss','16045656','[{\"url\":\"http://oss.guoang.xyz/16c9096049edd554222cd895e482f861.jpg\",\"uid\":1588993826851,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/0c6fced491a8f206f1bfb99ae417eb12.jpg\",\"uid\":1588993833680,\"status\":\"success\"}]',3,'http://oss.guoang.xyz/morentouxiang.jpg','232846836','38401928@qq.com','测试账号专用个人简介，测试账号1，之后省略很多个字','13356557876','南昌网络有限公司','[{\"url\":\"http://oss.guoang.xyz/80cf5aaeb62e325c82cc6b5d830a7c8c.jpg\",\"uid\":1588993927957,\"status\":\"success\"}]',3,'2',1703161231000,1703161231000,NULL),('17e67510-aa32-11ee-90de-257c31fdfe30','aa123456','10d71c71c65e88bbba9200bd5e758cb2','hhh','hhh','123456789','[]',3,'http://oss.guoang.xyz/morentouxiang.jpg','123456789','123456789@qq.com','I love code and vue.js','123456789',NULL,NULL,1,'2',1704284233313,NULL,NULL),('361f3eb0-aa35-11ee-90de-257c31fdfe30','aaa123456','200ebc8f10f16119bccef67bc522509f','hhh','hhh','123456789','[]',3,'http://oss.guoang.xyz/morentouxiang.jpg','123456789','123456789@qq.com','i love code and vue.js','123456789',NULL,NULL,1,'2',1704285572507,NULL,NULL),('930a26d0-9e37-11ee-b2bc-df943c6a5fb4','aaa123','10d71c71c65e88bbba9200bd5e758cb2','许泽鸿','许泽鸿','0222','[{\"url\":\"http://localhost:3000/uplodes/dbbae089ddd8a3e3853be0a25c023fb6\",\"uid\":1702967806456,\"status\":\"success\"}]',3,'http://localhost:3006/uplodes/e12f3a83e74c012f2fc4eb9315942bec','1143578963','1143578963@qq.com','i llove code','18814050438',NULL,NULL,1,'2',1702967173436,NULL,NULL),('b538f440-73cd-11ea-a86c-61a0af1a4ce5','gggggggl','29c369a8ed1c27687454088b6708ea67','该用户还没没有设置昵称',NULL,NULL,NULL,1,'http://oss.guoang.xyz/morentouxiang.jpg',NULL,NULL,NULL,NULL,NULL,NULL,1,'1',1703161231000,1703161231000,NULL),('bb4ff790-67f5-11ea-919f-ffff75fee783','zzzzzzzz','b8208329c6e7ec2a34b8d0b9b18058a7','该用户还没没有设置昵称','哈哈哈哈','160462','[{\"url\":\"http://127.0.0.1:3000/uplodes/da7995ae9e2d359b353f554a7a11bd88\",\"uid\":1584412586297,\"status\":\"success\"},{\"url\":\"http://127.0.0.1:3000/uplodes/9e11d072e21368f007d4be856b03f557\",\"uid\":1584412590978,\"status\":\"success\"}]',3,'http://127.0.0.1:3000/uplodes/7e54e5dcebac50ed92e216a0481c83f2','','','','','XXXXX有限公司','[{\"url\":\"http://127.0.0.1:3000/uplodes/caf30e878eab7151af747746b0fa5359\",\"uid\":1585446618103,\"status\":\"success\"}]',3,'1',1703161231000,1703161231000,NULL);

