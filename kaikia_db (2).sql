-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018 m. Rgs 18 d. 23:14
-- Server version: 10.0.36-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaikia_db`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `orders`
--

INSERT INTO `orders` (`id`, `customer_email`, `product_id`) VALUES
(1, 'pip.pop@gmail.com', 1),
(2, 'tip.top@gmail.com', 2),
(15, 'firstpr@att.net', 6),
(14, 'mdielmann@live.com', 25),
(13, 'dkeeler@hotmail.com', 27),
(12, 'keutzer@msn.com', 7),
(11, 'shawnce@verizon.net', 8),
(10, 'keutzer@att.net', 29),
(9, 'hahsler@aol.com', 9),
(8, 'guialbu`@aol.com', 19),
(7, 'drjlaw@optonline.com', 31),
(6, 'quinn@optonline.com', 33),
(5, 'eabrown@sbcgloba.com', 9),
(3, 'tip14.top2@gmail.com', 6),
(4, 'jones.m@ztx.com', 5),
(16, 'lstaf@yahoo.ca', 21),
(17, 'leocharre@sbcglo.com', 20),
(18, 'dpitts@verizon.net', 32),
(19, 'isaacson@yahoo.com', 17),
(20, 'duchamp@gmail.com', 18),
(21, 'ilial@comcast.net', 19),
(22, 'nasor@live.com', 11),
(23, 'grinder@hotmail.net', 9),
(24, 'amichalo@yahoo.cn', 33),
(25, 'morain@comcast.nl', 26),
(26, 'larry@yahoo.ca', 21),
(27, 'boomzilla@msn.co', 25),
(28, 'jmgomez@comcast.net', 26),
(29, 'sburke@aol.com', 1),
(30, 'mobileip@sbcglob.com', 3),
(31, 'chrisk@sbcglobal.com', 4),
(32, 'sblack@aol.com', 6),
(33, 'sinkou@outlook.cn', 8),
(34, 'pemungkah@mac.co', 10),
(35, 'aracne@me.com', 12),
(36, 'kuparine@verizon.net', 17),
(37, 'thaljef@comcast.net', 19),
(38, 'haddawy@msn.com', 23),
(39, 'malvar@live.com', 25),
(40, 'report@aol.com', 27),
(41, 'heidrich@yahoo.cn', 31),
(42, 'goresky@icloud.cn', 33),
(43, 'oevans@yahoo.ca', 16),
(44, 'hampton@outlook.uk', 18),
(45, 'manuals@optonlin.de', 20),
(46, 'naoya@me.com', 22),
(47, 'rddesign@mac.com', 1),
(48, 'houle@aol.com', 7),
(49, 'mano@gmail.com', 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `products`
--

INSERT INTO `products` (`id`, `title`, `price`) VALUES
(1, 'Nokia 5610', '600'),
(2, 'Nokia 7610', '700'),
(3, 'Samsung J3', '159'),
(4, 'Samsung S6', '255'),
(5, 'Samsung S7+', '555'),
(6, 'SONY X', '139'),
(7, 'SONY ZX', '539'),
(8, 'LG G5', '239'),
(9, 'LG P710', '59'),
(10, 'iPhone 6', '539'),
(11, 'iPhone 7', '739'),
(12, 'CAT B25', '45'),
(13, 'Motorola T192', '29'),
(14, 'Motorola V60', '29'),
(15, 'SamsungS5', '149'),
(16, 'Samsung S7', '249'),
(17, 'Samung S8', '349'),
(18, 'Samsung S9', '449'),
(19, 'Samsung A3', '99'),
(20, 'Samsung A5', '139'),
(21, 'Samsung A7', '189'),
(22, 'Samsung J1', '69'),
(23, 'Sony Xperia ZX', '199'),
(24, 'Sony Xperia ZX2', '249'),
(25, 'Sony Xperia ZX Ultra', '349'),
(26, 'IPhone 6s', '229'),
(27, 'Iphone 7', '349'),
(28, 'IPhone X', '519'),
(29, 'Xiaomi 4', '89'),
(30, 'Xiaomi 5A', '119'),
(31, 'BlackBery 9900', '149'),
(32, 'BlackBery 8900', '99'),
(33, 'BlackBery 8560', '89');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
