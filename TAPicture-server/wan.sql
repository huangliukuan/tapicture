SET NAMES UTF8;
DROP DATABASE IF EXISTS wan;
CREATE DATABASE wan CHARSET=UTF8;
USE wan;


-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-10-21 14:44:41
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wan`
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
(1, '咖啡轻乳酪', 1, '甜味，成品的味道刚刚好，没有了纯咖啡特有的苦涩，却留下了咖啡独有', 1, 10000001, 180, 1230000000000),
(2, '豹纹吐司', 1, '甜味，在微信朋友圈里看到的作品，觉得很好看！周末休息在家就除了草', 2, 10000001, 80, 152000000000),
(3, '南瓜包', 1, '甜味，第一眼看到南瓜包，就被萌萌的造型吸引，没想到这做出来不仅造', 3, 10000001, 180, 1542000000000),
(4, '椰蓉小花冠', 2, '甜味，用猴子面包的方子，加新买的汉堡模具，做了个椰蓉小花圈，乍一', 4, 10000002, 80, 48976200000),
(5, '千层蛋糕', 2, '甜味，弟弟最喜欢的蛋糕就是这个，所以每次他上来我都会做两个', 5, 10000002, 280, 186460000000),
(6, '葱香曲奇', 2, '葱香味，一款酥脆咸香的曲奇饼干，烘烤的时候满屋子的葱香味儿。', 6, 10000003, 85, 124500050000),
(7, '韩国部队火锅', 3, '补钙，有点微甜、我不喜欢吃甜的也还可以接受这个味道。', 7, 10000002, 30, 15646460000),
(8, '辣年糕', 3, '香辣味，正好家中没菜，于是就做了这个简单省事又好吃的韩式辣年糕', 8, 10000002, 63, 1549630031000),
(9, '石锅拌饭', 3, '香辣味，铺上各种蔬菜，淋上韩式辣酱，拌匀一起吃，口感和风味都不错', 9, 10000003, 83, 12796497960000);

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
(7, 'image/food/7.jpg', 1),
(8, 'image/food/8.jpg', 2),
(9, 'image/food/9.jpg', 2),
(10, 'image/food/10.jpg', 2),
(11, 'image/food/11.jpg', 2),
(12, 'image/food/12.jpg', 2),
(13, 'image/food/13.jpg', 3),
(14, 'image/food/14.jpg', 3),
(15, 'image/food/15.jpg', 3);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `wan_flw`
--
ALTER TABLE `wan_flw`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `wan_food`
--
ALTER TABLE `wan_food`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `wan_pic`
--
ALTER TABLE `wan_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `wan_user`
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
