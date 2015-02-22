-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 15 feb 2015 kl 09:09
-- Serverversion: 5.6.17
-- PHP-version: 5.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `supercar_kiddos`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`iid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menu_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `machine_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
`mlid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `plid` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `menu`, `plid`, `weight`) VALUES
(3, 'fafa', 'hterbfhtre', 'efefa', NULL, 0),
(4, 'fefeaf', 'ergrwgwr', 'sfljnasf', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumpning av Data i tabell `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(1, 'ngklsdggmsx', 'fjsoelknfslk', NULL, 1, NULL, '2015-01-26 09:34:19'),
(2, 'gwdgw', 'yjsth', NULL, 1, NULL, '2015-01-26 10:14:21'),
(3, 'sepkgnskeg', 'krnglk', NULL, 1, NULL, '2015-01-26 10:14:49'),
(4, 'ehrger', 'egrherhr', NULL, 1, NULL, '2015-01-26 12:13:34'),
(5, 'nkwelgmgwr', 'agoprdljfm', NULL, 1, NULL, '2015-01-26 12:14:25'),
(6, 'egwnjslkgnrs', 'efnoweklgnwelk', NULL, 1, NULL, '2015-01-26 12:15:20'),
(7, 'egpkrwm', 'w4esjitgkwelsgn', NULL, 1, NULL, '2015-01-26 12:16:24'),
(8, 'gioewnklgwelk', 'w4gjnokwegln', NULL, 1, NULL, '2015-01-26 12:21:08'),
(9, 'gwrhreg', '5erygs4g', NULL, 1, NULL, '2015-01-26 12:21:55'),
(10, 'gnoelkghewknl', 'egwegewg', NULL, 1, NULL, '2015-01-26 12:26:20'),
(11, 'jytrher', 'grgsvrwsg', NULL, 1, NULL, '2015-01-26 12:27:20'),
(12, 'gnoiwsrkgld', 'esdngioklwrsdg', NULL, 1, NULL, '2015-01-26 12:28:00'),
(13, 'ewnglweg', 'wrgwrhsgd', NULL, 1, NULL, '2015-01-26 12:28:18'),
(14, 'rewrhethf', 'hergherg', NULL, 1, NULL, '2015-01-26 12:35:25'),
(15, 'rglskngrlkg', 'vw ejolsdnwklev', NULL, 1, NULL, '2015-01-26 12:57:25'),
(16, 'rgnwsklgwsv', 'vrneioskglnrsklv', NULL, 1, NULL, '2015-01-26 12:59:18'),
(17, 'eiokvnsdlkv', 'ewsngiklwrsgonlwkds', NULL, 1, NULL, '2015-01-26 13:02:42'),
(18, 'rgoiwrlkgn', 'vewgnko', NULL, 1, NULL, '2015-01-26 13:02:56'),
(19, 'gnweiklgewn', 'ewgnoweklsgn', NULL, 1, NULL, '2015-01-26 13:03:25'),
(20, 'wgniowelgkrw', 'wegiforwlkenf', NULL, 1, NULL, '2015-01-26 13:03:55'),
(21, 'wgniowelgkrw', 'wegiforwlkenf', NULL, 1, NULL, '2015-01-26 13:11:52'),
(22, 'vkldgnksgl', 'tberv', NULL, 1, NULL, '2015-01-26 13:12:06'),
(23, 'ndvklsdnvwsfw', 'erhgefregs', NULL, 1, NULL, '2015-01-26 13:13:20'),
(24, 'ewglkwegn', 'wegowkrlsgn', NULL, 1, NULL, '2015-01-26 13:14:06'),
(25, 'rgkrlwngwr', 'hterg', NULL, 1, NULL, '2015-01-26 13:19:11'),
(26, 'regnklregnr', 'ter', NULL, 1, NULL, '2015-01-26 13:19:44'),
(27, 'gwklgnweg', 'rgwrgrwgreg', NULL, 1, NULL, '2015-01-26 13:20:16'),
(28, 'gwiglknwrlk', 'ewtgiw4eklngw', NULL, 1, NULL, '2015-01-26 13:20:41'),
(29, '4wgegrw', 'gregerger', NULL, 1, NULL, '2015-01-26 13:21:53'),
(30, 'grnlkngsd', 'rgkjrgns', NULL, 1, NULL, '2015-01-26 13:25:30'),
(31, 'vndsionlkdv', 'gsrfgsrfgrg', NULL, 1, NULL, '2015-01-26 13:29:15'),
(32, 'ewlkngwlkgw', 'wegnklwegnwlk', NULL, 1, NULL, '2015-01-26 13:29:41'),
(33, 'wegwrg', 'rgergerg', NULL, 1, NULL, '2015-01-26 13:30:08'),
(34, 'gwenogklweng', 'rgwwefac', NULL, 1, NULL, '2015-01-26 13:31:17'),
(35, 'ewkglweng', 'gerwwe', NULL, 1, NULL, '2015-01-26 13:33:10'),
(36, 'gregwe', 'gwrgweg', NULL, 1, NULL, '2015-01-26 13:33:26'),
(37, 'frgweg', 'gwregewgg', NULL, 1, NULL, '2015-01-26 13:37:28'),
(38, 'ewwegwe', 'gewgewge', NULL, 1, NULL, '2015-01-26 13:40:44'),
(39, 'gwegewg', 'wgewgwegew', NULL, 1, NULL, '2015-01-26 13:41:01'),
(40, 'h5ersgerg', 'gwregewgwegrwg', NULL, 1, NULL, '2015-01-26 14:08:50'),
(41, 'grwegf', 'rwgewgrwegew', NULL, 1, NULL, '2015-01-26 14:44:35'),
(42, 'gwgw', 'grwgwrg', NULL, 1, NULL, '2015-01-26 14:45:38'),
(43, 'hergrg', 'grwgrwgerg', NULL, 1, NULL, '2015-01-26 14:55:08'),
(44, 'tdrherher', 'rwgergergre', NULL, 1, NULL, '2015-01-26 14:56:04'),
(45, 'fwegweg', 'wegwegewgw', NULL, 1, NULL, '2015-01-26 14:56:42'),
(46, 'rgwrgw', 'fsdfsdbthdryrg4wrtg', NULL, 1, NULL, '2015-01-26 14:57:00'),
(47, 'hregwr', 'gewewgwegewg', NULL, 1, NULL, '2015-01-26 14:57:39'),
(48, 'herdsgwe', 'ewgewgewgewg', NULL, 1, NULL, '2015-01-26 14:58:08'),
(49, 'geweg', 'gewgewgewgegw', NULL, 1, NULL, '2015-01-26 14:59:59'),
(50, 'rgwegew', 'gewgwegewgre', NULL, 1, NULL, '2015-01-26 15:00:34'),
(51, 'gwegwe', 'ewdscdsfs', NULL, 1, NULL, '2015-01-26 15:01:04'),
(52, 'regweg', 'vgdgs', NULL, 1, NULL, '2015-01-26 15:01:28'),
(53, 'grwgwee', 'hregsedfhgrs', NULL, 1, NULL, '2015-01-26 15:04:41'),
(54, 'hej', 'bvlkjn', NULL, 1, NULL, '2015-02-15 09:06:54');

-- --------------------------------------------------------

--
-- Tabellstruktur `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumpning av Data i tabell `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(2, 'gwhrgeta', 2),
(3, 'gklnks', 3),
(4, 'gerergs', 4),
(5, 'etnokwelg', 5),
(6, 'nweogklnewlk', 6),
(7, 'rgklwengsd', 7),
(8, 'ewjgnklweng', 8),
(9, 'westfwesfd', 9),
(10, 'egwniolewv', 10),
(11, 'efwsecs', 11),
(12, 'rnoglk w.ns', 12),
(13, 'wesdgweg', 13),
(14, 'hterbfhtre', 14),
(15, 'nvowkldnvl', 15),
(16, 'wngklesnslv', 16),
(17, 'gnowielkagnweklv', 17),
(18, 'gwenoi', 18),
(19, 'weniogklwegn', 19),
(20, 'fiowlkengweklf', 20),
(22, 'thegrwef', 22),
(23, 'erhwge', 23),
(24, 'wgengklrwg', 24),
(25, 'htergw', 25),
(26, 'ntergef', 26),
(27, 'erherwgwe', 27),
(28, 'grgklnwegwe', 28),
(29, 'rgerger', 29),
(30, 'gw jrdsgm ,sd', 30),
(31, 'dfgsrgsr', 31),
(32, 'gweolknwrlkg', 32),
(33, 'thergrwg', 33),
(34, 'egweklgwendg', 34),
(35, 'tehrgrwegf', 35),
(36, 'grwgwrgw', 36),
(37, 'rwgrwgwr', 37),
(38, 'gewgew', 38),
(39, 'gewewge', 39),
(40, 'ergrwgwr', 40),
(41, 'wegweg', 41),
(42, 'grgrw', 42),
(43, 'rgregr', 43),
(44, 'ergrg', 44),
(45, 'wegewg', 45),
(46, 'rgwegew', 46),
(47, 'grwgew', 47),
(48, 'gregweg', 48),
(49, 'wegew', 49),
(50, 'gwegew', 50),
(51, 'gewgewf', 51),
(52, 'weged', 52),
(53, 'fdbfhdsgd', 53),
(54, 'skldjf', 54);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `description` text,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `pass`, `description`, `joined`) VALUES
(1, 'Julius', 'Bergqvist', 'julius.bergqvist@webbprod.se', '1111', NULL, '2015-01-23 09:24:05');

-- --------------------------------------------------------

--
-- Tabellstruktur `video`
--

CREATE TABLE IF NOT EXISTS `video` (
`vid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`iid`), ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`machine_name`);

--
-- Index för tabell `menu_links`
--
ALTER TABLE `menu_links`
 ADD PRIMARY KEY (`mlid`), ADD KEY `plid` (`plid`), ADD KEY `path` (`path`);

--
-- Index för tabell `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`), ADD KEY `video_id` (`video_id`);

--
-- Index för tabell `url_alias`
--
ALTER TABLE `url_alias`
 ADD PRIMARY KEY (`aid`), ADD UNIQUE KEY `path` (`path`), ADD KEY `pid` (`pid`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- Index för tabell `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`vid`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `images`
--
ALTER TABLE `images`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `menu_links`
--
ALTER TABLE `menu_links`
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT för tabell `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `video`
--
ALTER TABLE `video`
MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Restriktioner för tabell `menu_links`
--
ALTER TABLE `menu_links`
ADD CONSTRAINT `menu_links_ibfk_1` FOREIGN KEY (`plid`) REFERENCES `menu_links` (`mlid`);

--
-- Restriktioner för tabell `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`),
ADD CONSTRAINT `pages_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `video` (`vid`);

--
-- Restriktioner för tabell `url_alias`
--
ALTER TABLE `url_alias`
ADD CONSTRAINT `url_alias_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pages` (`pid`);

--
-- Restriktioner för tabell `video`
--
ALTER TABLE `video`
ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
