-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2023 at 04:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `filepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `continent`, `filepath`) VALUES
(1, 'africa', 'assets/images/africa/africa.jpg'),
(2, 'africa', 'assets/images/africa/benin.jpg'),
(3, 'africa', 'assets/images/africa/boy.jpg'),
(4, 'africa', 'assets/images/africa/deadvlei.jpg'),
(5, 'africa', 'assets/images/africa/desert.jpg'),
(6, 'africa', 'assets/images/africa/elephants.jpg'),
(7, 'africa', 'assets/images/africa/giraffe.jpg'),
(8, 'africa', 'assets/images/africa/giraffe1.jpg'),
(9, 'africa', 'assets/images/africa/leopard.jpg'),
(10, 'africa', 'assets/images/africa/lion.jpg'),
(11, 'africa', 'assets/images/africa/woman.jpg'),
(12, 'africa', 'assets/images/africa/zebra.jpg'),
(13, 'america', 'assets/images/america/chile.jpg'),
(14, 'america', 'assets/images/america/church.jpg'),
(15, 'america', 'assets/images/america/horseshoe.jpg'),
(16, 'america', 'assets/images/america/la-paz.jpg'),
(17, 'america', 'assets/images/america/machu-picchu.jpg'),
(18, 'america', 'assets/images/america/mountains.jpg'),
(19, 'america', 'assets/images/america/NY.jpg'),
(20, 'america', 'assets/images/america/peru.jpg'),
(21, 'america', 'assets/images/america/rio.jpg'),
(22, 'america', 'assets/images/america/usa.jpg'),
(23, 'america', 'assets/images/america/valparaiso.jpg'),
(24, 'asia', 'assets/images/asia/boy.jpg'),
(25, 'asia', 'assets/images/asia/boys.jpg'),
(26, 'asia', 'assets/images/asia/buddhism.jpg'),
(27, 'asia', 'assets/images/asia/buildings.jpg'),
(28, 'asia', 'assets/images/asia/girl.jpg'),
(29, 'asia', 'assets/images/asia/grand-palace.jpg'),
(30, 'asia', 'assets/images/asia/salt-harvesting.jpg'),
(31, 'asia', 'assets/images/asia/temple-of-heaven.jpg'),
(32, 'asia', 'assets/images/asia/terracotta-army.jpg'),
(33, 'asia', 'assets/images/asia/the-great-wall.jpg'),
(34, 'asia', 'assets/images/asia/vietnam.jpg'),
(35, 'asia', 'assets/images/asia/wall.jpg'),
(36, 'europe', 'assets/images/europe/bar.jpg'),
(37, 'europe', 'assets/images/europe/bordeaux.jpg'),
(38, 'europe', 'assets/images/europe/greece.jpg'),
(39, 'europe', 'assets/images/europe/landscape.jpg'),
(40, 'europe', 'assets/images/europe/malaga.jpg'),
(41, 'europe', 'assets/images/europe/panorama.jpg'),
(42, 'europe', 'assets/images/europe/paris.jpg'),
(43, 'europe', 'assets/images/europe/rome.jpg'),
(44, 'europe', 'assets/images/europe/santorini.jpg'),
(45, 'europe', 'assets/images/europe/trees.jpg'),
(46, 'europe', 'assets/images/europe/tuscany.jpg'),
(47, 'europe', 'assets/images/europe/vatican.jpg'),
(48, 'oceania', 'assets/images/oceania/australia.jpg'),
(49, 'oceania', 'assets/images/oceania/australia1.jpg'),
(50, 'oceania', 'assets/images/oceania/fiji.jpg'),
(51, 'oceania', 'assets/images/oceania/koala.jpg'),
(52, 'oceania', 'assets/images/oceania/maori.jpg'),
(53, 'oceania', 'assets/images/oceania/maori1.jpg'),
(54, 'oceania', 'assets/images/oceania/new-zealand.jpg'),
(55, 'oceania', 'assets/images/oceania/sydney.jpg'),
(56, 'oceania', 'assets/images/oceania/tree.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
