-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 10 月 05 日 16:04
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f01_php05`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_ajax_table`
--

CREATE TABLE IF NOT EXISTS `gs_ajax_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_ajax_table`
--

INSERT INTO `gs_ajax_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(1, 'kodama', 'kodama@gs.gs', 'test01', '2018-10-05 23:00:51'),
(2, 'yuki', 'yuki@gs.gs', 'test02', '2018-10-05 23:01:46'),
(3, 'osg', 'osg@gs.gs', 'test03', '2018-10-05 23:02:10');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_data_table`
--

CREATE TABLE IF NOT EXISTS `gs_data_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_data_table`
--

INSERT INTO `gs_data_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(1, 'こだま', 'kdm@gs.fuk', '来週は任意授業！', '2018-10-04 15:19:05'),
(2, 'たろう', 'taro@gs.fuk', 'ajax使おう！', '2018-10-04 15:20:01'),
(3, 'ゆうき', 'yuki@gs.fuk', '認証できなくて詰んだ', '2018-10-04 15:21:30'),
(4, 'いせき', 'isk@gs.fuk', 'ラズパイ買ったぞ―', '2018-10-04 15:22:15');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'ohsugi', 'osg', 'osg', 1, 0),
(2, 'kodama', 'kdm', 'kdm', 0, 0),
(3, 'yamasaki', 'ymsk', 'ymsk', 0, 0),
(4, 'iseki', 'isk', 'isk', 0, 0),
(5, 'morita', 'mrt', 'mrt', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_ajax_table`
--
ALTER TABLE `gs_ajax_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_ajax_table`
--
ALTER TABLE `gs_ajax_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
