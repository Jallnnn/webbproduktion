-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 22 feb 2015 kl 21:58
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

--
-- Dumpning av Data i tabell `footer`
--

INSERT INTO `footer` (`name`, `street`, `postalcode`, `city`, `phone`, `email`, `info`) VALUES
('Julius Bergqvist', 'Handelsgatan 3', 31144, 'Malmö', '11111111', 'hej@mail.com', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumpning av Data i tabell `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `menu`, `plid`, `weight`) VALUES
(83, 'News', 'news', 'my-menu-machine-name', NULL, 0),
(84, 'Supercars', 'supercars', 'my-menu-machine-name', NULL, 0),
(85, 'European Supercars', 'european', 'my-menu-machine-name', 84, 0),
(86, 'American Supercars', 'american', 'my-menu-machine-name', 84, 0),
(87, 'Asian Supercars', 'asian', 'my-menu-machine-name', 84, 0),
(88, 'Best Supercars', 'bestcars', 'my-menu-machine-name', NULL, 0),
(89, '80''s Supercars', '80''s', 'my-menu-machine-name', 88, 0),
(90, '90''s Supercars', '90''s', 'my-menu-machine-name', 88, 0),
(91, '2000''s Supercars', '2000''s', 'my-menu-machine-name', 88, 0),
(94, 'Ferrari Laferrari', 'laferrari', 'my-menu-machine-name', 91, 0),
(96, 'Lamborhgini Countach', 'countach', 'my-menu-machine-name', 89, 0),
(97, 'Koenigsegg One', 'koenigsegg', 'my-menu-machine-name', 85, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Dumpning av Data i tabell `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(141, 'News', '<p>Here are some supercar news</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu.\n\nIn quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:26:00'),
(142, 'Supercars', '<p>Here are some supercars</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu.\n\nIn quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:26:42'),
(143, 'European Supercars', '<p>Here are some european supercars</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:35:00'),
(144, 'American Supercars', '<p>Here are some american supercars</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:37:08'),
(145, 'Asian Supercars', '<p>Here are some asian supercars</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:37:40'),
(146, 'Best Supercars', '<p>Here are some of the best supercars ever made</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:38:09'),
(147, '80''s Supercars', '<p>Here are some of the best supercars 80''s ever made</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:38:37'),
(148, '90''s Supercars', '<p>Here are some of the best supercars 90''s ever made</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:38:49'),
(149, '2000''s Supercars', '<p>Here are some of the best supercars 2000''s ever made</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu. In quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:38:59'),
(152, 'Ferrari Laferrari', '<p>Here are some info about the Ferrari Laferrari</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu.\n\nIn quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>\n<iframe width="560" height="315" src="https://www.youtube.com/embed/y598aoSnSdg" frameborder="0" allowfullscreen></iframe>', NULL, 1, NULL, '2015-02-22 21:43:51'),
(154, 'Lamborghini Countach', '<p>Here are some info about the Lamborghini Countach</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu.\n\nIn quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:50:15'),
(155, 'Koenigsegg One', '<p>Here is some info about the Koenigsegg One</p>\n<br></br>\n<p>Aenean fermentum at lacus ultrices facilisis. Vivamus aliquam tempus fringilla. Vestibulum venenatis sapien eget tristique vulputate. Suspendisse nec varius urna. Curabitur ac eros est. Aliquam erat volutpat. Pellentesque hendrerit, odio vitae bibendum gravida, augue metus dapibus sem, at eleifend est felis id urna. Pellentesque eleifend vitae magna vel vestibulum. Cras quam velit, gravida ut cursus ac, placerat vel augue. Sed suscipit elementum sem. Fusce rutrum dolor elit, a sagittis nibh semper in. Nulla egestas neque sed congue finibus. Integer quis ultrices tortor, eget commodo est. In in dolor ullamcorper, dapibus libero ut, pellentesque arcu.\n\nIn quam nisl, finibus non nisi ac, ornare consectetur tellus. Nulla fermentum ac sapien in facilisis. Proin vehicula sapien sapien, sit amet blandit arcu sodales cursus. Donec accumsan viverra ante, non gravida magna mollis id. Mauris dictum nisi orci, sed interdum quam auctor ultricies. Vestibulum facilisis nisi a orci accumsan, id luctus neque euismod. Morbi sagittis nibh id turpis ultricies euismod non in nisi. Morbi et urna ac dui eleifend interdum. Donec sed arcu vehicula, tincidunt ante in, venenatis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi finibus ornare erat at facilisis</p>', NULL, 1, NULL, '2015-02-22 21:54:57');

-- --------------------------------------------------------

--
-- Tabellstruktur `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumpning av Data i tabell `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(133, 'news', 141),
(134, 'supercars', 142),
(135, 'european', 143),
(136, 'american', 144),
(137, 'asian', 145),
(138, 'bestcars', 146),
(139, '80''s', 147),
(140, '90''s', 148),
(141, '2000''s', 149),
(144, 'laferrari', 152),
(146, 'countach', 154),
(147, 'koenigsegg', 155);

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
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT för tabell `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT för tabell `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
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
