-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-21 12:18:46
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
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- 表的结构 `bargains`
--

CREATE TABLE `bargains` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bargains`
--

INSERT INTO `bargains` (`id`, `title`, `img_url`, `price_old`, `price_new`) VALUES
(1, 'vivo Z1 AI双摄 公开版4G智能手机', 'http://127.0.0.1:3000/images/004.png', '5199.00', '4999.00'),
(2, 'vivo Z1 AI双摄 公开版4G智能手机', 'http://127.0.0.1:3000/images/001.png', '5099.00', '4999.00'),
(3, 'vivo Z1 AI双摄 公开版4G智能手机', 'http://127.0.0.1:3000/images/002.png', '4899.00', '4599.00'),
(4, 'vivo Z1 AI双摄 公开版4G智能手机', 'http://127.0.0.1:3000/images/003.png', '5399.00', '5099.00');

-- --------------------------------------------------------

--
-- 表的结构 `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`) VALUES
(1, '三星', 'http://127.0.0.1:3000/images/sy_phg_1.jpg'),
(2, '苹果', 'http://127.0.0.1:3000/images/sy_phg_2.jpg'),
(3, '摩托罗拉', 'http://127.0.0.1:3000/images/sy_phg_3.jpg'),
(4, '酷派', 'http://127.0.0.1:3000/images/sy_phg_4.jpg'),
(5, '飞利浦', 'http://127.0.0.1:3000/images/sy_phg_5.jpg'),
(6, '先锋', 'http://127.0.0.1:3000/images/sy_phg_6.jpg'),
(7, '联想', 'http://127.0.0.1:3000/images/sy_phg_7.jpg'),
(8, 'HTC', 'http://127.0.0.1:3000/images/sy_phg_8.jpg'),
(9, '诺基亚', 'http://127.0.0.1:3000/images/sy_phg_9.jpg'),
(10, '索尼', 'http://127.0.0.1:3000/images/sy_phg_10.jpg'),
(11, '华为', 'http://127.0.0.1:3000/images/sy_phg_11.jpg'),
(12, '步步高', 'http://127.0.0.1:3000/images/sy_phg_12.jpg'),
(13, '天语', 'http://127.0.0.1:3000/images/sy_phg_13.jpg'),
(14, '中兴', 'http://127.0.0.1:3000/images/sy_phg_14.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `m_table` varchar(32) NOT NULL,
  `m_count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `pid`, `uid`, `m_table`, `m_count`, `price`, `img_url`, `title`, `alive`) VALUES
(12, 3, 1, 'ppj', 3, 199, 'http://127.0.0.1:3000/images/sy_sjpj_img3.jpg', '苹果 手机iPhone5S（16G）(金)充电宝', 0),
(14, 1, 1, 'newproduct', 4, 4899, 'http://127.0.0.1:3000/images/00.png', '华为xxx（128G） (金)4968抢购中！货源有限', 0),
(15, 4, 1, 'sale', 6, 4899, 'http://127.0.0.1:3000/images/sy_xptj_img4.jpg', '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 0),
(16, 2, 1, 'bargains', 1, 4999, 'http://127.0.0.1:3000/images/001.png', 'vivo Z1 AI双摄 公开版4G智能手机', NULL),
(17, 2, 1, 'newproduct', 1, 4899, 'http://127.0.0.1:3000/images/01.png', '华为xxx（128G）(金)4968抢购中！货源有限', 1),
(18, 3, 1, 'sale', 3, 4899, 'http://127.0.0.1:3000/images/sy_xptj_img3.jpg', '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 1),
(19, 2, 1, 'ppj', 4, 199, 'http://127.0.0.1:3000/images/sy_sjpj_img2.jpg', '苹果 手机iPhone5S（16G）(金)蓝牙耳机', 1),
(20, 1, 1, 'ppj', 3, 199, 'http://127.0.0.1:3000/images/sy_sjpj_img1.jpg', '苹果 手机iPhone5S（16G）(金)有限耳机', 1),
(21, 5, 1, 'sale', 1, 4899, 'http://127.0.0.1:3000/images/sy_xptj_img5.jpg', '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 1),
(22, 1, 8, 'newproduct', 9, 4899, 'http://127.0.0.1:3000/images/00.png', '华为xxx（128G） (金)4968抢购中！货源有限', 1),
(23, 4, 8, 'newproduct', 4, 4899, 'http://127.0.0.1:3000/images/03.png', '华为xxx（128G）(金)4968抢购中！货源有限', 1),
(24, 2, 1, 'sale', 3, 4899, 'http://127.0.0.1:3000/images/sy_xptj_img2.jpg', '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comd`
--

CREATE TABLE `comd` (
  `id` int(11) NOT NULL,
  `c_jian` varchar(255) DEFAULT NULL,
  `c_jie` varchar(255) DEFAULT NULL,
  `chan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comd`
--

INSERT INTO `comd` (`id`, `c_jian`, `c_jie`, `chan`) VALUES
(1, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg'),
(2, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg'),
(3, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg'),
(4, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg'),
(5, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg'),
(6, 'D轮及以上/500-2000人/移动互联网,文化娱乐', '涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡', 'http://127.0.0.1:3000/images/cd/0.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `c_img` varchar(255) DEFAULT NULL,
  `hr_img` varchar(255) DEFAULT NULL,
  `hrName` varchar(50) DEFAULT NULL,
  `puguang` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `company`
--

INSERT INTO `company` (`id`, `cname`, `c_img`, `hr_img`, `hrName`, `puguang`, `address`) VALUES
(1, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(2, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(3, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(4, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(5, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(6, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(7, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(8, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(9, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(10, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(11, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(12, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(13, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(14, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(15, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(16, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(17, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(18, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(19, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(20, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(21, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(22, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(23, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(24, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(25, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(26, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(27, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(28, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(29, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(30, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(31, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(32, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(33, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(34, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(35, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(36, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(37, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(38, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(39, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(40, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(41, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(42, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(43, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(44, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(45, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(46, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(47, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(48, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(49, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(50, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(51, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(52, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(53, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(54, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(55, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(56, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(57, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(58, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(59, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(60, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(61, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(62, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(63, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(64, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(65, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(66, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(67, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(68, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(69, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(70, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(71, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(72, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(73, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(74, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(75, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(76, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(77, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(78, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(79, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(80, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(81, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(82, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(83, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(84, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(85, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(86, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(87, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(88, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(89, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(90, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(91, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(92, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(93, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(94, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(95, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(96, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(97, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(98, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(99, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(100, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(101, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(102, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(103, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(104, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(105, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(106, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/ty.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(107, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/lb.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京'),
(108, '人人行(借贷宝)', 'http://127.0.0.1:3000/images/gt/Rokid.png', 'http://127.0.0.1:3000/images/gt/avatar.png', 'ddkgd', '4151', '北京');

-- --------------------------------------------------------

--
-- 表的结构 `job_details`
--

CREATE TABLE `job_details` (
  `id` int(11) NOT NULL,
  `zid` int(11) DEFAULT NULL,
  `job_tempt` varchar(255) DEFAULT NULL,
  `company_jian` varchar(255) DEFAULT NULL,
  `job_miao` varchar(255) DEFAULT NULL,
  `job_fabuzhe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `job_details`
--

INSERT INTO `job_details` (`id`, `zid`, `job_tempt`, `company_jian`, `job_miao`, `job_fabuzhe`) VALUES
(1, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(2, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(3, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(4, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(5, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(6, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(7, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(8, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(9, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(10, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(11, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(12, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(13, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(14, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(15, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(16, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(17, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(18, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(19, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(20, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(21, 1, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(22, 2, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(23, 3, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao'),
(24, 4, '技术氛围好，福利好，不加班，急需2位', 'D轮及以上/500-2000人/移动互联网,文化娱乐', '速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好', 'hexiaomiao');

-- --------------------------------------------------------

--
-- 表的结构 `luser`
--

CREATE TABLE `luser` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `luser`
--

INSERT INTO `luser` (`id`, `uname`, `upwd`, `tel`) VALUES
(1, '曹国防', '123456', '18810794825'),
(2, '曹国防', '123456', '18810794825'),
(3, '曹国防', '123456', '18810794825');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE `manager` (
  `AdminId` int(11) NOT NULL,
  `AdminName` varchar(20) NOT NULL,
  `AdminPwd` varchar(20) NOT NULL,
  `AdminTrueName` varchar(20) NOT NULL,
  `AdminSex` tinyint(1) NOT NULL,
  `AdminPhone` varchar(20) NOT NULL,
  `AdminEmail` varchar(20) NOT NULL,
  `AdminIdCard` varchar(20) NOT NULL,
  `AdminAdrr` varchar(20) NOT NULL,
  `AdminFlag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `newproduct`
--

CREATE TABLE `newproduct` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newproduct`
--

INSERT INTO `newproduct` (`id`, `title`, `img_url`, `price_old`, `price_new`) VALUES
(1, '华为xxx（128G） (金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/00.png', '4999.00', '4899.00'),
(2, '华为xxx（128G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/01.png', '4999.00', '4899.00'),
(3, '华为xxx（128G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/02.png', '4999.00', '4899.00'),
(4, '华为xxx（128G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/03.png', '4999.00', '4899.00'),
(5, '华为xxx（128G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/04.png', '4999.00', '4899.00');

-- --------------------------------------------------------

--
-- 表的结构 `ppj`
--

CREATE TABLE `ppj` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ppj`
--

INSERT INTO `ppj` (`id`, `title`, `img_url`, `price_old`, `price_new`) VALUES
(1, '苹果 手机iPhone5S（16G）(金)有限耳机', 'http://127.0.0.1:3000/images/sy_sjpj_img1.jpg', '222.00', '199.00'),
(2, '苹果 手机iPhone5S（16G）(金)蓝牙耳机', 'http://127.0.0.1:3000/images/sy_sjpj_img2.jpg', '222.00', '199.00'),
(3, '苹果 手机iPhone5S（16G）(金)充电宝', 'http://127.0.0.1:3000/images/sy_sjpj_img3.jpg', '222.00', '199.00'),
(4, '苹果 手机iPhone5S（16G）(金)充电宝', 'http://127.0.0.1:3000/images/sy_sjpj_img4.jpg', '222.00', '199.00'),
(5, '苹果 手机iPhone5S（16G）(金)入耳式', 'http://127.0.0.1:3000/images/sy_sjpj_img5.jpg', '222.00', '199.00');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price_old` varchar(10) NOT NULL,
  `price_new` varchar(10) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `stock` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price_old`, `price_new`, `img_url`, `stock`) VALUES
(1, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(2, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(3, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(4, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(5, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(6, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(7, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(8, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(9, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(10, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(11, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(12, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(13, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/02.png', '561'),
(14, '华为', '4999', '4666', 'http://127.0.0.1:3000/images/01.png', '561'),
(15, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(16, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(17, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(18, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(19, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(20, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(21, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(22, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(23, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(24, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(25, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(26, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(27, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(28, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(29, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(30, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(31, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(32, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(33, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/03.png', '561'),
(34, 'vivo', '4999', '4666', 'http://127.0.0.1:3000/images/04.png', '561'),
(35, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(36, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(37, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(38, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(39, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(40, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(41, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(42, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(43, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(44, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(45, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(46, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(47, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(48, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(49, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(50, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(51, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(52, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(53, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(54, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(55, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(56, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(57, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(58, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(59, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(60, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(61, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(62, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(63, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(64, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(65, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(66, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(67, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(68, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(69, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(70, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(71, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(72, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(73, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(74, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(75, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(76, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(77, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/003.png', '561'),
(78, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/004.png', '561'),
(79, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(80, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561'),
(81, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/001.png', '561'),
(82, '荣耀', '4999', '4666', 'http://127.0.0.1:3000/images/002.png', '561');

-- --------------------------------------------------------

--
-- 表的结构 `qijian`
--

CREATE TABLE `qijian` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qijian`
--

INSERT INTO `qijian` (`id`, `title`, `img_url`) VALUES
(1, '中国移动', 'http://127.0.0.1:3000/images/sy_qjd_img1.jpg'),
(2, '普泰', 'http://127.0.0.1:3000/images/sy_qjd_img2.jpg'),
(3, '松联通讯', 'http://127.0.0.1:3000/images/sy_qjd_img3.jpg'),
(4, '天音通讯', 'http://127.0.0.1:3000/images/sy_qjd_img4.jpg'),
(5, '安徽鸿讯', 'http://127.0.0.1:3000/images/sy_qjd_img5.jpg'),
(6, 'DESAY', 'http://127.0.0.1:3000/images/sy_qjd_img6.jpg'),
(7, '爱施德', 'http://127.0.0.1:3000/images/sy_qjd_img7.jpg'),
(8, '天宇', 'http://127.0.0.1:3000/images/sy_qjd_img8.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sale`
--

INSERT INTO `sale` (`id`, `title`, `img_url`, `price_old`, `price_new`) VALUES
(1, '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/sy_xptj_img1.jpg', '4999.00', '4899.00'),
(2, '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/sy_xptj_img2.jpg', '4999.00', '4899.00'),
(3, '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/sy_xptj_img3.jpg', '4999.00', '4899.00'),
(4, '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/sy_xptj_img4.jpg', '4999.00', '4899.00'),
(5, '苹果 手机iPhone5S（16G）(金)4968抢购中！货源有限', 'http://127.0.0.1:3000/images/sy_xptj_img5.jpg', '4999.00', '4899.00');

-- --------------------------------------------------------

--
-- 表的结构 `swipe1`
--

CREATE TABLE `swipe1` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `swipe1`
--

INSERT INTO `swipe1` (`id`, `title`, `img_url`) VALUES
(1, '轮播1', 'http://127.0.0.1:3000/images/01swipe.png'),
(2, '轮播2', 'http://127.0.0.1:3000/images/02swipe.png'),
(3, '轮播3', 'http://127.0.0.1:3000/images/03swipe.png'),
(4, '轮播4', 'http://127.0.0.1:3000/images/04swipe.png'),
(5, '轮播5', 'http://127.0.0.1:3000/images/05swipe.png');

-- --------------------------------------------------------

--
-- 表的结构 `swipe2`
--

CREATE TABLE `swipe2` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `swipe2`
--

INSERT INTO `swipe2` (`id`, `title`, `img_url`) VALUES
(1, '轮播1', 'http://127.0.0.1:3000/images/syggt1.jpg'),
(2, '轮播2', 'http://127.0.0.1:3000/images/syggt1.jpg'),
(3, '轮播3', 'http://127.0.0.1:3000/images/syggt1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `top`
--

CREATE TABLE `top` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `imgGif_url` varchar(255) DEFAULT NULL,
  `price_new` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `top`
--

INSERT INTO `top` (`id`, `img_url`, `imgGif_url`, `price_new`) VALUES
(1, 'http://127.0.0.1:3000/images/sy_top_img1.jpg', 'http://127.0.0.1:3000/images/sy_top1.gif', '5452'),
(2, 'http://127.0.0.1:3000/images/sy_top_img2.jpg', 'http://127.0.0.1:3000/images/sy_top2.gif', '5524'),
(3, 'http://127.0.0.1:3000/images/sy_top_img3.jpg', 'http://127.0.0.1:3000/images/sy_top3.gif', '3345'),
(4, 'http://127.0.0.1:3000/images/sy_top_img4.jpg', 'http://127.0.0.1:3000/images/sy_top4.gif', '4453'),
(5, 'http://127.0.0.1:3000/images/sy_top_img5.jpg', 'http://127.0.0.1:3000/images/sy_top5.gif', '4512'),
(6, 'http://127.0.0.1:3000/images/sy_top_img6.jpg', 'http://127.0.0.1:3000/images/sy_top6.gif', '5421'),
(7, 'http://127.0.0.1:3000/images/sy_top_img7.jpg', 'http://127.0.0.1:3000/images/sy_top7.gif', '4521'),
(8, 'http://127.0.0.1:3000/images/sy_top_img8.jpg', 'http://127.0.0.1:3000/images/sy_top8.gif', '4512');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uName` varchar(20) NOT NULL,
  `uPwd` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `uName`, `uPwd`, `phone`, `Email`) VALUES
(1, '曹国防', '123123', '18810794825', '474430040@qq.com'),
(3, '1231', '212345', '18810794826', '4584564@qq.com'),
(4, 'caoking', '123123', '15612344567', '4564564@qq.com'),
(5, 'caoking', '123123', '15645641234', '4564561@qq.com'),
(6, 'dafsdfg', '123123', '12345678912', '123341564@qq.com'),
(7, '4541', '1212', '123456478945', '121525@54'),
(8, 'df', '', '', ''),
(10, '', '', 'fghdfhfg', ''),
(11, 'fdgfdg', '123123', '12315646548', '15645652'),
(12, 'cdsf', 'sdfads', 'fdgfdhgfdsh', 'dsgdfg'),
(13, '45645', '5456456', '61213251231', '546514'),
(14, '1231564', '5465465', '52456416541', '41564564'),
(15, '456416546', '56416541', '41456416541', '41564165'),
(16, 'dsgf', 'fdg', '45646545641', 'dfsh'),
(17, '45354', '5463453', '45364535435', '4536453'),
(19, 'fdg', 'fdghf', 'hgjghkjhhjk', 'jdfghjghj'),
(20, '5463', '65345644', '67376376378', '768376'),
(21, 'trhyht', 'fygtjugd', 'hgkjghkjjhk', 'ghdkjfghk'),
(22, 'fghjghjk', 'hgfkj', 'hgkjgh', 'ghkghfkhgffkhjghk'),
(23, 'fdgdfq', '123123', '18654563123', '21456456@qq.com'),
(24, 'caoguofan', '123123', '15465465451', '456452132@df.dg'),
(25, 'caoking', '123123', '18511545445', '56465412@dd.con'),
(26, '123', '123123', '16551216454', '123132@DF.CD');

-- --------------------------------------------------------

--
-- 表的结构 `zhilist`
--

CREATE TABLE `zhilist` (
  `id` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `c_require` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `r_time` varchar(50) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zhilist`
--

INSERT INTO `zhilist` (`id`, `cid`, `job`, `company`, `c_require`, `salary`, `r_time`, `img_url`) VALUES
(1, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(2, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(3, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(4, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(5, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(6, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(7, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(8, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(9, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(10, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(11, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(12, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(13, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(14, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(15, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(16, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(17, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(18, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(19, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(20, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(21, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(22, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(23, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(24, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(25, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(26, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(27, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(28, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(29, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(30, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(31, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(32, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(33, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(34, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(35, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(36, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(37, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(38, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(39, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(40, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(41, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(42, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(43, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(44, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(45, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(46, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(47, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(48, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(49, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(50, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(51, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(52, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(53, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(54, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(55, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(56, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(57, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(58, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(59, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(60, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(61, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(62, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(63, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(64, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(65, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(66, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(67, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(68, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(69, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(70, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(71, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(72, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(73, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(74, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(75, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(76, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(77, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(78, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(79, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(80, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(81, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(82, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(83, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(84, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(85, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(86, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(87, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(88, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(89, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(90, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(91, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(92, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(93, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(94, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(95, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(96, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(97, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(98, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(99, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(100, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(101, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(102, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(103, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png'),
(104, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(105, 3, 'web前端工程师', '跟谁学', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/gen.png'),
(106, 4, 'web前端工程师', '掌阅', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/yue.png'),
(107, 2, 'web前端工程师', '新东方', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/dong.png'),
(108, 1, 'web前端工程师', '人人行(借贷宝)', '1-3年|本科', '12000.00', '9:10', 'http://127.0.0.1:3000/images/gt/jie.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bargains`
--
ALTER TABLE `bargains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comd`
--
ALTER TABLE `comd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luser`
--
ALTER TABLE `luser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`AdminId`),
  ADD UNIQUE KEY `AdminPhone` (`AdminPhone`),
  ADD UNIQUE KEY `AdminIdCard` (`AdminIdCard`);

--
-- Indexes for table `newproduct`
--
ALTER TABLE `newproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppj`
--
ALTER TABLE `ppj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qijian`
--
ALTER TABLE `qijian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swipe1`
--
ALTER TABLE `swipe1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swipe2`
--
ALTER TABLE `swipe2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top`
--
ALTER TABLE `top`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `zhilist`
--
ALTER TABLE `zhilist`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bargains`
--
ALTER TABLE `bargains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `comd`
--
ALTER TABLE `comd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- 使用表AUTO_INCREMENT `job_details`
--
ALTER TABLE `job_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `luser`
--
ALTER TABLE `luser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `AdminId` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `newproduct`
--
ALTER TABLE `newproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `ppj`
--
ALTER TABLE `ppj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- 使用表AUTO_INCREMENT `qijian`
--
ALTER TABLE `qijian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `swipe1`
--
ALTER TABLE `swipe1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `swipe2`
--
ALTER TABLE `swipe2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `top`
--
ALTER TABLE `top`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `zhilist`
--
ALTER TABLE `zhilist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
