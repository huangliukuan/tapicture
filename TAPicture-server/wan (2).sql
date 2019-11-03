SET NAMES UTF8;
DROP DATABASE IF EXISTS wan;
CREATE DATABASE wan CHARSET=UTF8;
USE wan;
-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-10-25 15:27:53
-- 服务器版本： 10.3.16-MariaDB
-- PHP 版本： 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `wan`
--

-- --------------------------------------------------------

--
-- 表的结构 `wan_flw`
--

CREATE TABLE `wan_flw` (
  `wid` int(11) NOT NULL,
  `wuid` int(32) DEFAULT NULL,
  `wuname` varchar(32) DEFAULT NULL,
  `wupic` varchar(128) DEFAULT NULL,
  `lwuid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wan_flw`
--

INSERT INTO `wan_flw` (`wid`, `wuid`, `wuname`, `wupic`, `lwuid`) VALUES
(7, 10000007, '当当', 'image/avater/dangdang.png', '10000001'),
(8, 10000002, '轩轩', 'image/avater/xuanxuan.png', '10000001'),
(9, 10000001, '玲玲', 'image/avater/lingling.png', '10000002');

-- --------------------------------------------------------

--
-- 表的结构 `wan_food`
--

CREATE TABLE `wan_food` (
  `fid` int(11) NOT NULL,
  `fname` varchar(256) DEFAULT NULL,
  `ftype` int(11) NOT NULL,
  `fintrd` varchar(256) DEFAULT NULL,
  `fpic` int(11) DEFAULT NULL,
  `fuid` int(11) DEFAULT NULL,
  `lnum` int(11) DEFAULT NULL,
  `ftime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wan_food`
--

INSERT INTO `wan_food` (`fid`, `fname`, `ftype`, `fintrd`, `fpic`, `fuid`, `lnum`, `ftime`) VALUES
(1, '咖啡轻乳酪', 1, '奶酪是牛奶经浓缩、发酵而成的奶制品。每公斤奶酪制品浓缩了10公斤牛奶的蛋白质、钙和磷等人体所需的营养成分，独特的发酵工艺，使蛋白质的吸收率达到了96%～98%。250毫升牛奶酪奶=200毫升酸奶=40克奶酪。奶酪能增进人体抵抗疾病的能力，增进代谢加强活力，保护眼睛健康，并保持肌肤健美。奶酪中的乳酸菌及其代谢产物对人体有一定的保健作用，有利于维持人体肠道内正常菌群的稳定和平衡，防止便秘和腹泻。奶酪中的脂肪和热能都比较多，但是其胆固醇含量却相对比较低，对心血管健康也有有利的一面。', 1, 10000001, 180, 1230000000000),
(2, '豹纹吐司', 1, '吐司（toast） 是音译，粤语广东话叫(多士)，面包切成片，经过烤的之后，才能被叫做吐司，吐司应该是面包再加工后的产物。 国内说的土司面包在美国就叫 bread, 所谓的土司面包 (toast) 指的是在面包上涂上一层蒜泥或是奶油下去烤的面包才叫 toast，或者用面包机烤一下，再涂上酱。 严格地说切片面包有两种，薄一点，软一点的是三明治面包，厚一点硬一点的就是吐司。在香港\"多士\"可以衍生出很多美味的小吃式食物，例如：奶油多、鲜油多、油占多……', 2, 10000002, 80, 1240000000000),
(3, '南瓜包', 1, '南瓜包是由中国劳动人民经过长期的食物烹饪合饮食习惯形成的一种美味小吃', 3, 10000003, 233, 1250000000000);

-- --------------------------------------------------------

--
-- 表的结构 `wan_pic`
--

CREATE TABLE `wan_pic` (
  `pid` int(11) NOT NULL,
  `ppic` varchar(128) DEFAULT NULL,
  `puid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wan_pic`
--

INSERT INTO `wan_pic` (`pid`, `ppic`, `puid`) VALUES
(1, 'image/food/1.png', 1),
(2, 'image/food/2.png', 1),
(3, 'image/food/3.png', 1),
(4, 'image/food/4.png', 1),
(5, 'image/food/5.png', 1),
(6, 'image/food/6.png', 1),
(7, 'image/food/7.png', 1),
(8, 'image/food/8.png', 2),
(9, 'image/food/9.png', 2),
(10, 'image/food/10.png', 2),
(11, 'image/food/11.png', 2),
(12, 'image/food/12.png', 2),
(13, 'image/food/13.png', 3),
(14, 'image/food/14.png', 3),
(15, 'image/food/15.png', 3);

-- --------------------------------------------------------

--
-- 表的结构 `wan_user`
--

CREATE TABLE `wan_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `avater` varchar(128) DEFAULT NULL,
  `intro` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wan_user`
--

INSERT INTO `wan_user` (`uid`, `uname`, `upwd`, `phone`, `avater`, `intro`) VALUES
(10000001, '玲玲', 'e10adc3949ba59abbe56e057f20f883e', '15812345678', 'image/avater/lingling.png', '世界这么大我想去看看'),
(10000002, '轩轩', 'e10adc3949ba59abbe56e057f20f883e', '15812345698', 'image/avater/xuanxuan.png', '遇到你是我这辈子最幸运的事'),
(10000003, '珊珊', 'e10adc3949ba59abbe56e057f20f883e', '15812345668', 'image/avater/shanshan.png', '天要下雨,人要吃饭'),
(10000004, '菲菲', 'e10adc3949ba59abbe56e057f20f883e', '15812345658', 'image/avater/feifei.png', '给自己对好的照顾就是不饿肚子'),
(10000005, '娇娇', 'e10adc3949ba59abbe56e057f20f883e', '15812345648', 'image/avater/jiaojiao.png', '人生只有美食才是不会辜负人的'),
(10000006, '丁丁', 'e10adc3949ba59abbe56e057f20f883e', '15812345638', 'image/avater/dingding.png', '甜品我的最爱'),
(10000007, '当当', 'e10adc3949ba59abbe56e057f20f883e', '15812345628', 'image/avater/dangdang.png', '这个人很懒,什么也没写');

--
-- 转储表的索引
--

--
-- 表的索引 `wan_flw`
--
ALTER TABLE `wan_flw`
  ADD PRIMARY KEY (`wid`);

--
-- 表的索引 `wan_food`
--
ALTER TABLE `wan_food`
  ADD PRIMARY KEY (`fid`);

--
-- 表的索引 `wan_pic`
--
ALTER TABLE `wan_pic`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `wan_user`
--
ALTER TABLE `wan_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wan_flw`
--
ALTER TABLE `wan_flw`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `wan_food`
--
ALTER TABLE `wan_food`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `wan_pic`
--
ALTER TABLE `wan_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `wan_user`
--
ALTER TABLE `wan_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
