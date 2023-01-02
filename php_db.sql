-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 02 jan. 2023 à 22:29
-- Version du serveur : 8.0.31-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `php_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `Cart`
--

CREATE TABLE `Cart` (
  `id` smallint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo_id` int NOT NULL,
  `quantity` int NOT NULL,
  `size` varchar(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Orders`
--

CREATE TABLE `Orders` (
  `id` smallint NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `photo_id` int NOT NULL,
  `price` float NOT NULL,
  `size` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Orders`
--

INSERT INTO `Orders` (`id`, `email_user`, `order_id`, `photo_id`, `price`, `size`, `quantity`, `date`) VALUES
(25, 'nbousquet99@gmail.com', 'c1f663fa0027abb246ea152a5ff5a947', 5, 59.99, '60x90', 1, '30 Dec, 2022'),
(26, 'nbousquet99@gmail.com', 'c1f663fa0027abb246ea152a5ff5a947', 11, 59.99, '60x90', 1, '30 Dec, 2022'),
(27, 'nbousquet99@gmail.com', '1d2cc35059cf404cd1c9794a1a4b1509', 14, 39.99, '50x70', 1, '30 Dec, 2022'),
(28, 'nbousquet99@gmail.com', '1cab315677d5450c9e492fb6037a93fe', 13, 59.99, '60x90', 1, '30 Dec, 2022'),
(29, 'nbousquet99@gmail.com', '66364882cb08aa0664b7d688f5cd4541', 4, 59.99, '60x90', 1, '01 Jan, 2023'),
(30, 'nbousquet99@gmail.com', '66364882cb08aa0664b7d688f5cd4541', 9, 39.99, '50x70', 1, '01 Jan, 2023'),
(31, 'nbousquet99@gmail.com', '66364882cb08aa0664b7d688f5cd4541', 19, 59.99, '60x90', 1, '01 Jan, 2023'),
(32, 'nbousquet99@gmail.com', '29d9dc570d105fb2319fbc47b3aad16a', 18, 39.99, '50x70', 1, '01 Jan, 2023'),
(33, 'nbousquet@gmail.com', 'c33e2eb1afdce1a5de4dd73a36df6d2e', 9, 119.98, '60x90', 2, '01 Jan, 2023'),
(34, 'nbousquet@gmail.com', '54951b320da7178d8de48e13d7f79544', 19, 79.98, '50x70', 2, '01 Jan, 2023'),
(35, 'lburgueno@uma.es', '76937c2b7b304088f0e8ed652af0e529', 7, 179.97, '60x90', 3, '01 Jan, 2023'),
(36, 'lburgueno@uma.es', '76937c2b7b304088f0e8ed652af0e529', 9, 99.99, '120x180', 1, '01 Jan, 2023');

-- --------------------------------------------------------

--
-- Structure de la table `Photos`
--

CREATE TABLE `Photos` (
  `id` int NOT NULL,
  `continent` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Photos`
--

INSERT INTO `Photos` (`id`, `continent`, `url`) VALUES
(9, 'America', 'https://c0.wallpaperflare.com/preview/975/999/628/mexico-tequila-field-mountain.jpg'),
(14, 'Europe', 'https://wallpapercave.com/wp/wp2874210.jpg'),
(20, 'America', 'https://cdn.pixabay.com/photo/2015/03/11/12/31/buildings-668616_1280.jpg'),
(21, 'America', 'https://cdn.pixabay.com/photo/2014/09/10/00/59/mountains-440520__480.jpg'),
(22, 'America', 'https://cdn.pixabay.com/photo/2016/10/28/13/09/usa-1777986_1280.jpg'),
(23, 'America', 'https://cdn.pixabay.com/photo/2016/12/15/07/54/horseshoe-bend-1908283__480.jpg'),
(24, 'America', 'https://cdn.pixabay.com/photo/2016/04/03/02/28/rio-1303951_1280.jpg'),
(25, 'America', 'https://cdn.pixabay.com/photo/2019/08/19/10/44/peru-4416038_1280.jpg'),
(26, 'America', 'https://cdn.pixabay.com/photo/2015/12/01/12/22/machu-picchu-1072063_1280.jpg'),
(27, 'America', 'https://cdn.pixabay.com/photo/2017/09/11/15/52/peru-2739451__480.jpg'),
(28, 'America', 'https://cdn.pixabay.com/photo/2020/01/12/17/21/chile-4760542_1280.jpg'),
(29, 'America', 'https://cdn.pixabay.com/photo/2014/03/26/22/21/valparaiso-299087__480.jpg'),
(30, 'America', 'https://cdn.pixabay.com/photo/2017/09/21/22/24/la-paz-2773765__480.jpg'),
(31, 'America', 'https://cdn.pixabay.com/photo/2017/05/28/15/35/church-2351271_1280.jpg'),
(32, 'Europe', 'https://cdn.pixabay.com/photo/2014/07/30/23/01/vatican-405784__480.jpg'),
(33, 'Europe', 'https://cdn.pixabay.com/photo/2020/11/26/07/56/rome-5778178__480.jpg'),
(34, 'Europe', 'https://cdn.pixabay.com/photo/2018/03/01/21/52/paris-3191828__480.jpg'),
(35, 'Europe', 'https://cdn.pixabay.com/photo/2017/12/01/03/40/panorama-2990086__480.jpg'),
(36, 'Europe', 'https://cdn.pixabay.com/photo/2016/11/11/02/36/tuscany-1815676__480.jpg'),
(37, 'Europe', 'https://cdn.pixabay.com/photo/2015/10/05/23/31/malaga-973522__480.jpg'),
(38, 'Europe', 'https://cdn.pixabay.com/photo/2021/01/03/10/24/bordeaux-5884058_1280.jpg'),
(39, 'Europe', 'https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416136__480.jpg'),
(40, 'Europe', 'https://cdn.pixabay.com/photo/2018/05/09/01/00/greece-3384386__480.jpg'),
(41, 'Europe', 'https://cdn.pixabay.com/photo/2018/10/06/11/19/landscape-3727641__480.jpg'),
(42, 'Europe', 'https://cdn.pixabay.com/photo/2018/06/09/17/25/trees-3464777__480.jpg'),
(43, 'Europe', 'https://cdn.pixabay.com/photo/2013/11/12/01/29/bar-209148__480.jpg'),
(44, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/08/05/16/boy-1807518__480.jpg'),
(45, 'Asia', 'https://cdn.pixabay.com/photo/2018/01/04/07/59/salt-harvesting-3060093__480.jpg'),
(46, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/14/03/46/girl-1822525__480.jpg'),
(47, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/03/04/02/boys-1793421__480.jpg'),
(48, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/14/03/43/buddhism-1822518_1280.jpg'),
(49, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/14/03/29/grand-palace-1822487__480.jpg'),
(50, 'Asia', 'https://cdn.pixabay.com/photo/2018/01/04/00/19/vietnam-3059529__480.jpg'),
(51, 'Asia', 'https://cdn.pixabay.com/photo/2015/02/24/13/23/buildings-647400__480.jpg'),
(52, 'Asia', 'https://cdn.pixabay.com/photo/2018/09/13/21/43/temple-of-heaven-3675835__480.jpg'),
(53, 'Asia', 'https://cdn.pixabay.com/photo/2017/03/30/23/36/the-great-wall-2190047__480.jpg'),
(54, 'Asia', 'https://cdn.pixabay.com/photo/2019/03/14/18/15/wall-4055548__480.jpg'),
(55, 'Asia', 'https://cdn.pixabay.com/photo/2016/11/28/13/14/terracotta-army-1864972_1280.jpg'),
(56, 'Africa', 'https://cdn.pixabay.com/photo/2019/12/10/13/31/woman-4685862_1280.jpg'),
(57, 'Africa', 'https://cdn.pixabay.com/photo/2017/06/23/17/46/desert-2435404__480.jpg'),
(58, 'Africa', 'https://cdn.pixabay.com/photo/2017/12/11/15/34/lion-3012515__480.jpg'),
(59, 'Africa', 'https://cdn.pixabay.com/photo/2016/01/30/17/41/elephants-1170108__480.jpg'),
(60, 'Africa', 'https://cdn.pixabay.com/photo/2017/10/27/20/25/leopard-2895448_1280.jpg'),
(61, 'Africa', 'https://cdn.pixabay.com/photo/2016/01/13/22/46/boy-1139042__480.jpg'),
(62, 'Africa', 'https://cdn.pixabay.com/photo/2017/04/11/23/16/benin-2223164__480.jpg'),
(63, 'Africa', 'https://cdn.pixabay.com/photo/2017/04/11/21/34/giraffe-2222908__480.jpg'),
(64, 'Africa', 'https://cdn.pixabay.com/photo/2017/01/20/13/01/africa-1994846__480.jpg'),
(65, 'Africa', 'https://cdn.pixabay.com/photo/2016/01/30/17/58/zebra-1170177__480.jpg'),
(66, 'Africa', 'https://cdn.pixabay.com/photo/2017/04/15/20/14/giraffe-2233366__480.jpg'),
(67, 'Africa', 'https://cdn.pixabay.com/photo/2017/01/26/18/56/deadvlei-2011373__480.jpg'),
(68, 'Oceania', 'https://cdn.pixabay.com/photo/2019/12/18/20/54/sydney-4704883__480.jpg'),
(69, 'Oceania', 'https://cdn.pixabay.com/photo/2016/02/05/04/49/australia-1180394__480.jpg'),
(70, 'Oceania', 'https://cdn.pixabay.com/photo/2020/04/28/05/57/tree-5102896__480.jpg'),
(71, 'Oceania', 'https://cdn.pixabay.com/photo/2019/09/04/00/16/koala-4450420__480.jpg'),
(72, 'Oceania', 'https://cdn.pixabay.com/photo/2015/02/09/21/10/australia-630219__480.jpg'),
(73, 'Oceania', 'https://cdn.pixabay.com/photo/2013/03/02/11/32/maori-89317__480.jpg'),
(74, 'Oceania', 'https://cdn.pixabay.com/photo/2014/12/29/18/45/maori-583175__480.jpg'),
(75, 'Oceania', 'https://cdn.pixabay.com/photo/2013/01/01/15/56/new-zealand-73230_1280.jpg'),
(76, 'Oceania', 'https://cdn.pixabay.com/photo/2017/01/31/06/30/fiji-2023050_1280.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Requests`
--

CREATE TABLE `Requests` (
  `id` smallint NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `ip_addr` varchar(100) NOT NULL,
  `port` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Requests`
--

INSERT INTO `Requests` (`id`, `email_user`, `ip_addr`, `port`, `date`, `method`, `url`) VALUES
(1, 'nbousquet@gmail.com', '', '', '01/01/2023 21/41/46', 'GET', ''),
(2, 'nbousquet@gmail.com', '', '', '01/01/2023 21/42/04', 'GET', ''),
(3, 'nbousquet@gmail.com', '', '', '01/01/2023 21:43:46', 'GET', ''),
(4, 'nbousquet@gmail.com', '', '', '01/01/2023 21:43:58', 'GET', ''),
(5, 'nbousquet@gmail.com', '', '', '01/01/2023 21:46:30', 'GET', ''),
(6, 'nbousquet@gmail.com', '', '', '01/01/2023 21:46:51', 'GET', ''),
(7, 'nbousquet@gmail.com', '', '', '01/01/2023 21:50:41', 'GET', ''),
(8, 'nbousquet@gmail.com', '', '', '01/01/2023 21:56:58', 'GET', 'http://127.0.0.1:5000/'),
(9, 'nbousquet@gmail.com', '', '', '01/01/2023 21:57:00', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(10, 'nbousquet@gmail.com', '', '', '01/01/2023 21:57:01', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(11, 'nbousquet@gmail.com', '', '', '01/01/2023 21:57:03', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(12, 'Unknown', '', '', '01/01/2023 21:57:04', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(13, 'Unknown', '', '', '01/01/2023 21:57:05', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(14, 'Unknown', '', '', '01/01/2023 21:57:06', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(15, 'Unknown', '', '', '01/01/2023 21:57:14', 'GET', 'http://127.0.0.1:5000/adminpage'),
(16, 'Unknown', '', '', '01/01/2023 22:01:44', 'GET', 'http://127.0.0.1:5000/adminpage'),
(17, 'Unknown', '', '', '01/01/2023 22:03:05', 'GET', 'http://127.0.0.1:5000/adminpage'),
(18, 'Unknown', '', '', '01/01/2023 22:03:20', 'GET', 'http://127.0.0.1:5000/posterdescription/1'),
(19, 'Unknown', '', '', '01/01/2023 22:03:25', 'GET', 'http://127.0.0.1:5000/adm'),
(20, 'Unknown', '', '', '01/01/2023 22:03:29', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(21, 'Unknown', '', '', '01/01/2023 22:03:33', 'GET', 'http://127.0.0.1:5000/adminpage'),
(22, 'Unknown', '', '', '01/01/2023 22:04:03', 'GET', 'http://127.0.0.1:5000/posterdescription/5'),
(23, 'Unknown', '', '', '01/01/2023 22:04:09', 'GET', 'http://127.0.0.1:5000/adminpage'),
(24, 'Unknown', '', '', '01/01/2023 22:04:37', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(25, 'Unknown', '', '', '01/01/2023 22:04:40', 'GET', 'http://127.0.0.1:5000/adminpage'),
(26, 'Unknown', '', '', '01/01/2023 22:04:41', 'GET', 'http://127.0.0.1:5000/None'),
(27, 'Unknown', '', '', '01/01/2023 22:04:52', 'GET', 'http://127.0.0.1:5000/posterdescription/4'),
(28, 'Unknown', '', '', '01/01/2023 22:04:56', 'GET', 'http://127.0.0.1:5000/adminpage'),
(29, 'Unknown', '', '', '01/01/2023 22:06:54', 'GET', 'http://127.0.0.1:5000/adminpage'),
(30, 'Unknown', '', '', '01/01/2023 22:06:54', 'GET', 'http://127.0.0.1:5000/myaccount'),
(31, 'Unknown', '', '', '01/01/2023 22:06:56', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(32, 'Unknown', '', '', '01/01/2023 22:07:02', 'GET', 'http://127.0.0.1:5000/adminpage'),
(33, 'Unknown', '', '', '01/01/2023 22:07:03', 'GET', 'http://127.0.0.1:5000/myaccount'),
(34, 'Unknown', '', '', '01/01/2023 22:07:36', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(35, 'nbousquet@gmail.com', '', '', '01/01/2023 22:07:36', 'GET', 'http://127.0.0.1:5000/myaccount'),
(36, 'nbousquet@gmail.com', '', '', '01/01/2023 22:07:38', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(37, 'nbousquet@gmail.com', '', '', '01/01/2023 22:08:03', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(38, 'Unknown', '', '', '01/01/2023 22:08:03', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(39, 'Unknown', '', '', '01/01/2023 22:08:07', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(40, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:08:07', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(41, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:08:12', 'GET', 'http://127.0.0.1:5000/adminpage'),
(42, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:36', 'GET', 'http://127.0.0.1:5000/home'),
(43, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:38', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(44, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:39', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(45, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:40', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(46, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:43', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(47, 'Unknown', '', '', '01/01/2023 22:14:43', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(48, 'Unknown', '', '', '01/01/2023 22:14:45', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(49, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:14:46', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(50, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:16:02', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(51, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:17:16', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(52, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:17:18', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(53, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:17:21', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(54, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:17:23', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(55, 'Unknown', '', '', '01/01/2023 22:17:23', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(56, 'Unknown', '', '', '01/01/2023 22:17:25', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(57, 'Unknown', '', '', '01/01/2023 22:17:26', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(58, 'Unknown', '', '', '01/01/2023 22:17:28', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(59, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:17:28', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(60, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:19:53', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(61, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:20:49', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(62, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:20:53', 'GET', 'http://127.0.0.1:5000/adminpage'),
(63, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:20:58', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(64, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:21:00', 'GET', 'http://127.0.0.1:5000/adminpage'),
(65, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:21:06', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(66, 'Unknown', '', '', '01/01/2023 22:21:07', 'GET', 'http://127.0.0.1:5000/adminpage'),
(67, 'Unknown', '', '', '01/01/2023 22:22:12', 'GET', 'http://127.0.0.1:5000/adminpage'),
(68, 'Unknown', '', '', '01/01/2023 22:22:20', 'GET', 'http://127.0.0.1:5000/adminpage'),
(69, 'Unknown', '', '', '01/01/2023 22:22:32', 'GET', 'http://127.0.0.1:5000/adminpage'),
(70, 'Unknown', '', '', '01/01/2023 22:23:43', 'GET', 'http://127.0.0.1:5000/adminpage'),
(71, 'Unknown', '', '', '01/01/2023 22:24:10', 'GET', 'http://127.0.0.1:5000/adminpage'),
(72, 'Unknown', '', '', '01/01/2023 22:24:10', 'GET', 'http://127.0.0.1:5000/myaccount'),
(73, 'Unknown', '', '', '01/01/2023 22:25:03', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(74, 'Unknown', '', '', '01/01/2023 22:25:05', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(75, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:06', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(76, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:07', 'GET', 'http://127.0.0.1:5000/adminpage'),
(77, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:11', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(78, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:23', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(79, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:26', 'GET', 'http://127.0.0.1:5000/posterdescription/12'),
(80, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:31', 'GET', 'http://127.0.0.1:5000/mycart'),
(81, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:25:35', 'POST', 'http://127.0.0.1:5000/myorders'),
(82, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:38:55', 'GET', 'http://127.0.0.1:5000/adminpage'),
(83, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:40:32', 'GET', 'http://127.0.0.1:5000/adminpage'),
(84, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:42:00', 'GET', 'http://127.0.0.1:5000/adminpage'),
(85, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:44:11', 'GET', 'http://127.0.0.1:5000/adminpage'),
(86, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:44:42', 'GET', 'http://127.0.0.1:5000/adminpage'),
(87, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:45:37', 'GET', 'http://127.0.0.1:5000/adminpage'),
(88, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:46:20', 'GET', 'http://127.0.0.1:5000/adminpage'),
(89, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:48:47', 'GET', 'http://127.0.0.1:5000/adminpage'),
(90, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:48:53', 'GET', 'http://127.0.0.1:5000/adminpage'),
(91, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:20', 'GET', 'http://127.0.0.1:5000/adminpage'),
(92, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:29', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(93, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:36', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(94, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:38', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(95, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:40', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(96, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:41', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(97, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:49:42', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(98, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:50:19', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(99, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:51:07', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(100, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:51:09', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(101, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:51:11', 'GET', 'http://127.0.0.1:5000/adminpage'),
(102, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:51:52', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(103, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:51:54', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(104, 'Unknown', '', '', '01/01/2023 22:51:56', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(105, 'Unknown', '', '', '01/01/2023 22:51:59', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(106, 'nbousquet@gmail.com', '', '', '01/01/2023 22:52:00', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(107, 'nbousquet@gmail.com', '', '', '01/01/2023 22:52:02', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(108, 'nbousquet@gmail.com', '', '', '01/01/2023 22:52:05', 'POST', 'http://127.0.0.1:5000/myorders'),
(109, 'nbousquet@gmail.com', '', '', '01/01/2023 22:52:12', 'GET', 'http://127.0.0.1:5000/mycart'),
(110, 'nbousquet@gmail.com', '', '', '01/01/2023 22:52:17', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(111, 'Unknown', '', '', '01/01/2023 22:52:17', 'GET', 'http://127.0.0.1:5000/mycart'),
(112, 'Unknown', '', '', '01/01/2023 22:52:19', 'GET', 'http://127.0.0.1:5000/myaccount'),
(113, 'Unknown', '', '', '01/01/2023 22:52:30', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(114, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:52:30', 'GET', 'http://127.0.0.1:5000/myaccount'),
(115, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:52:33', 'GET', 'http://127.0.0.1:5000/adminpage'),
(116, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:53:05', 'GET', 'http://127.0.0.1:5000/adminpage'),
(117, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:53:14', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(118, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:53:16', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(119, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:53:17', 'GET', 'http://127.0.0.1:5000/posterdescription/2'),
(120, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:53:23', 'GET', 'http://127.0.0.1:5000/adminpage'),
(121, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:55:25', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(122, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:55:28', 'GET', 'http://127.0.0.1:5000/adminpage'),
(123, 'nbousquet99@gmail.com', '', '', '01/01/2023 22:55:45', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(124, 'unknown', '', '', '01/01/2023 22:55:48', 'GET', 'http://127.0.0.1:5000/adminpage'),
(125, 'unknown', '', '', '01/01/2023 22:55:50', 'GET', 'http://127.0.0.1:5000/myaccount'),
(126, 'unknown', '', '', '01/01/2023 22:56:05', 'GET', 'http://127.0.0.1:5000/home'),
(127, 'unknown', '', '', '01/01/2023 22:58:31', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(128, 'unknown', '', '', '01/01/2023 23:00:54', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(129, 'unknown', '', '', '01/01/2023 23:00:55', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(130, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:00:58', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(131, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:01:01', 'POST', 'http://127.0.0.1:5000/myorders'),
(132, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:01:18', 'GET', 'http://127.0.0.1:5000/adminpage'),
(133, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:13:43', 'GET', 'http://127.0.0.1:5000/'),
(134, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:13:47', 'GET', 'http://127.0.0.1:5000/favicon.ico'),
(135, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:13:51', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(136, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:13:53', 'GET', 'http://127.0.0.1:5000/adminpage'),
(137, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:14:04', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(138, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:14:06', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(139, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:14:09', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(140, 'unknown', '', '', '01/01/2023 23:14:09', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(141, 'unknown', '', '', '01/01/2023 23:14:58', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(142, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:00', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(143, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:02', 'GET', 'http://127.0.0.1:5000/adminpage'),
(144, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:31', 'GET', 'http://127.0.0.1:5000/adminpage'),
(145, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:48', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(146, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:50', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(147, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:15:54', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(148, 'unknown', '', '', '01/01/2023 23:15:56', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(149, 'unknown', '', '', '01/01/2023 23:27:18', 'GET', 'http://127.0.0.1:5000/'),
(150, 'unknown', '', '', '01/01/2023 23:27:45', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(151, 'unknown', '', '', '01/01/2023 23:27:53', 'GET', 'http://127.0.0.1:5000/posterdescription/13'),
(152, 'unknown', '', '', '01/01/2023 23:28:05', 'POST', 'http://127.0.0.1:5000/mycart/add_to_cart/13'),
(153, 'unknown', '', '', '01/01/2023 23:28:07', 'GET', 'http://127.0.0.1:5000/myaccount'),
(154, 'unknown', '', '', '01/01/2023 23:28:39', 'POST', 'http://127.0.0.1:5000/myaccount/add_new_user'),
(155, 'lburgueno@uma.es', '', '', '01/01/2023 23:28:40', 'GET', 'http://127.0.0.1:5000/home'),
(156, 'lburgueno@uma.es', '', '', '01/01/2023 23:28:47', 'POST', 'http://127.0.0.1:5000/myorders'),
(157, 'lburgueno@uma.es', '', '', '01/01/2023 23:28:51', 'GET', 'http://127.0.0.1:5000/mycart'),
(158, 'lburgueno@uma.es', '', '', '01/01/2023 23:28:54', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(159, 'lburgueno@uma.es', '', '', '01/01/2023 23:28:57', 'GET', 'http://127.0.0.1:5000/posterdescription/13'),
(160, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:02', 'POST', 'http://127.0.0.1:5000/mycart/add_to_cart/13'),
(161, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:03', 'GET', 'http://127.0.0.1:5000/mycart'),
(162, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:09', 'GET', 'http://127.0.0.1:5000/mycart/remove_item/13/2/50x70'),
(163, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:09', 'GET', 'http://127.0.0.1:5000/mycart'),
(164, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:12', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(165, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:16', 'GET', 'http://127.0.0.1:5000/posterdescription/7'),
(166, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:22', 'POST', 'http://127.0.0.1:5000/mycart/add_to_cart/7'),
(167, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:23', 'GET', 'http://127.0.0.1:5000/mycart'),
(168, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:25', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(169, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:28', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(170, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:31', 'GET', 'http://127.0.0.1:5000/posterdescription/9'),
(171, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:36', 'POST', 'http://127.0.0.1:5000/mycart/add_to_cart/9'),
(172, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:36', 'GET', 'http://127.0.0.1:5000/mycart'),
(173, 'lburgueno@uma.es', '', '', '01/01/2023 23:29:42', 'GET', 'http://127.0.0.1:5000/paymentform'),
(174, 'lburgueno@uma.es', '', '', '01/01/2023 23:30:02', 'POST', 'http://127.0.0.1:5000/umapal/callumapal'),
(175, 'lburgueno@uma.es', '', '', '01/01/2023 23:30:05', 'POST', 'http://127.0.0.1:5000/umapal/processpayment'),
(176, 'lburgueno@uma.es', '', '', '01/01/2023 23:30:56', 'POST', 'http://127.0.0.1:5000/paymentsuccess'),
(177, 'lburgueno@uma.es', '', '', '01/01/2023 23:31:02', 'GET', 'http://127.0.0.1:5000/myorders'),
(178, 'lburgueno@uma.es', '', '', '01/01/2023 23:31:22', 'GET', 'http://127.0.0.1:5000/mycart'),
(179, 'lburgueno@uma.es', '', '', '01/01/2023 23:31:28', 'POST', 'http://127.0.0.1:5000/myorders'),
(180, 'lburgueno@uma.es', '', '', '01/01/2023 23:31:32', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(181, 'unknown', '', '', '01/01/2023 23:31:32', 'GET', 'http://127.0.0.1:5000/myorders'),
(182, 'unknown', '', '', '01/01/2023 23:31:34', 'GET', 'http://127.0.0.1:5000/myaccount'),
(183, 'unknown', '', '', '01/01/2023 23:31:40', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(184, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:31:41', 'GET', 'http://127.0.0.1:5000/myaccount'),
(185, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:31:45', 'GET', 'http://127.0.0.1:5000/adminpage'),
(186, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:32:07', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(187, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:36:31', 'GET', 'http://127.0.0.1:5000/posterdescription/2'),
(188, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:36:33', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(189, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:36:36', 'GET', 'http://127.0.0.1:5000/adminpage'),
(190, 'nbousquet99@gmail.com', '', '', '01/01/2023 23:37:18', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(191, 'nbousquet99@gmail.com', '127.0.0.1', '5000', '01/01/2023 23:47:27', 'GET', 'http://127.0.0.1:5000/home'),
(192, 'nbousquet99@gmail.com', '127.0.0.1', '5000', '01/01/2023 23:47:28', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(193, 'nbousquet99@gmail.com', '127.0.0.1', '5000', '01/01/2023 23:47:31', 'GET', 'http://127.0.0.1:5000/adminpage'),
(194, 'nbousquet99@gmail.com', '127.0.0.1', '46096', '01/01/2023 23:48:37', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(195, 'nbousquet99@gmail.com', '127.0.0.1', '46102', '01/01/2023 23:48:39', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(196, 'nbousquet99@gmail.com', '127.0.0.1', '48848', '01/01/2023 23:48:41', 'GET', 'http://127.0.0.1:5000/adminpage'),
(197, 'nbousquet99@gmail.com', '127.0.0.1', '49214', '01/01/2023 23:49:28', 'GET', 'http://127.0.0.1:5000/adminpage'),
(198, 'nbousquet99@gmail.com', '127.0.0.1', '42112', '01/01/2023 23:50:38', 'GET', 'http://127.0.0.1:5000/adminpage'),
(199, 'nbousquet99@gmail.com', '127.0.0.1', '42114', '01/01/2023 23:50:51', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(200, 'nbousquet99@gmail.com', '127.0.0.1', '59522', '01/01/2023 23:50:52', 'GET', 'http://127.0.0.1:5000/posterdescription/3'),
(201, 'nbousquet99@gmail.com', '127.0.0.1', '59538', '01/01/2023 23:50:54', 'GET', 'http://127.0.0.1:5000/adminpage'),
(202, 'nbousquet99@gmail.com', '127.0.0.1', '59554', '01/01/2023 23:51:40', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(203, 'unknown', '127.0.0.1', '56076', '01/01/2023 23:51:41', 'GET', 'http://127.0.0.1:5000/adminpage'),
(204, 'unknown', '127.0.0.1', '56080', '01/01/2023 23:51:42', 'GET', 'http://127.0.0.1:5000/myaccount'),
(205, 'unknown', '127.0.0.1', '56088', '01/01/2023 23:51:45', 'GET', 'http://127.0.0.1:5000/home'),
(206, 'unknown', '127.0.0.1', '56096', '01/01/2023 23:51:46', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(207, 'unknown', '127.0.0.1', '56112', '01/01/2023 23:51:52', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(208, 'unknown', '127.0.0.1', '38032', '01/01/2023 23:52:13', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(209, 'unknown', '127.0.0.1', '36338', '02/01/2023 00:03:42', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(210, 'unknown', '127.0.0.1', '36354', '02/01/2023 00:03:44', 'GET', 'http://127.0.0.1:5000/posterdescription/15'),
(211, 'unknown', '127.0.0.1', '36360', '02/01/2023 00:03:51', 'GET', 'http://127.0.0.1:5000/'),
(212, 'unknown', '127.0.0.1', '57930', '02/01/2023 00:06:37', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(213, 'unknown', '127.0.0.1', '57944', '02/01/2023 00:06:43', 'GET', 'http://127.0.0.1:5000/posterdescription/4'),
(214, 'unknown', '127.0.0.1', '60408', '02/01/2023 00:06:45', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(215, 'unknown', '127.0.0.1', '60412', '02/01/2023 00:06:46', 'GET', 'http://127.0.0.1:5000/posterdescription/11'),
(216, 'unknown', '127.0.0.1', '60422', '02/01/2023 00:06:49', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(217, 'nbousquet99@gmail.com', '127.0.0.1', '38668', '02/01/2023 00:06:50', 'GET', 'http://127.0.0.1:5000/posterdescription/11'),
(218, 'nbousquet99@gmail.com', '127.0.0.1', '38676', '02/01/2023 00:06:53', 'GET', 'http://127.0.0.1:5000/mycart'),
(219, 'nbousquet99@gmail.com', '127.0.0.1', '38692', '02/01/2023 00:06:55', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(220, 'unknown', '127.0.0.1', '38698', '02/01/2023 00:06:55', 'GET', 'http://127.0.0.1:5000/mycart'),
(221, 'unknown', '127.0.0.1', '38714', '02/01/2023 00:06:55', 'GET', 'http://127.0.0.1:5000/myaccount'),
(222, 'unknown', '127.0.0.1', '38728', '02/01/2023 00:06:59', 'GET', 'http://127.0.0.1:5000/mycart'),
(223, 'unknown', '127.0.0.1', '38742', '02/01/2023 00:06:59', 'GET', 'http://127.0.0.1:5000/myaccount'),
(224, 'unknown', '127.0.0.1', '60122', '02/01/2023 00:07:04', 'GET', 'http://127.0.0.1:5000/myaccount'),
(225, 'unknown', '127.0.0.1', '51824', '02/01/2023 00:12:05', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(226, 'unknown', '127.0.0.1', '51828', '02/01/2023 00:12:06', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(227, 'unknown', '127.0.0.1', '51836', '02/01/2023 00:12:07', 'GET', 'http://127.0.0.1:5000/home'),
(228, 'unknown', '127.0.0.1', '51844', '02/01/2023 00:12:12', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(229, 'unknown', '127.0.0.1', '35986', '02/01/2023 00:12:14', 'GET', 'http://127.0.0.1:5000/posterdescription/1'),
(230, 'unknown', '127.0.0.1', '36002', '02/01/2023 00:12:20', 'GET', 'http://127.0.0.1:5000/myaccount'),
(231, 'unknown', '127.0.0.1', '44398', '02/01/2023 00:13:37', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(232, 'unknown', '127.0.0.1', '44408', '02/01/2023 00:13:40', 'GET', 'http://127.0.0.1:5000/posterdescription/4'),
(233, 'unknown', '127.0.0.1', '38924', '02/01/2023 00:13:44', 'GET', 'http://127.0.0.1:5000/mycart'),
(234, 'unknown', '127.0.0.1', '38926', '02/01/2023 00:13:44', 'GET', 'http://127.0.0.1:5000/myaccount'),
(235, 'unknown', '127.0.0.1', '38930', '02/01/2023 00:13:46', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(236, 'nbousquet99@gmail.com', '127.0.0.1', '38934', '02/01/2023 00:13:46', 'GET', 'http://127.0.0.1:5000/myaccount'),
(237, 'nbousquet99@gmail.com', '127.0.0.1', '38948', '02/01/2023 00:13:48', 'POST', 'http://127.0.0.1:5000/myorders'),
(238, 'nbousquet99@gmail.com', '127.0.0.1', '38950', '02/01/2023 00:13:55', 'GET', 'http://127.0.0.1:5000/posterdescription/?photo_id=18'),
(239, 'nbousquet99@gmail.com', '127.0.0.1', '35006', '02/01/2023 00:14:07', 'GET', 'http://127.0.0.1:5000/adminpage'),
(240, 'nbousquet99@gmail.com', '127.0.0.1', '58710', '02/01/2023 00:14:58', 'GET', 'http://127.0.0.1:5000/home'),
(241, 'nbousquet99@gmail.com', '127.0.0.1', '57204', '02/01/2023 00:17:06', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(242, 'nbousquet99@gmail.com', '127.0.0.1', '34390', '02/01/2023 00:22:10', 'GET', 'http://127.0.0.1:5000/home'),
(243, 'nbousquet99@gmail.com', '127.0.0.1', '34402', '02/01/2023 00:22:22', 'GET', 'http://127.0.0.1:5000/adminpage'),
(244, 'nbousquet99@gmail.com', '127.0.0.1', '45432', '02/01/2023 00:22:28', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(245, 'nbousquet99@gmail.com', '127.0.0.1', '41422', '02/01/2023 00:23:34', 'POST', 'http://127.0.0.1:5000/myorders'),
(246, 'nbousquet99@gmail.com', '127.0.0.1', '41432', '02/01/2023 00:23:50', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(247, 'unknown', '127.0.0.1', '42542', '02/01/2023 00:23:50', 'GET', 'http://127.0.0.1:5000/myorders'),
(248, 'unknown', '127.0.0.1', '42554', '02/01/2023 00:23:50', 'GET', 'http://127.0.0.1:5000/myaccount'),
(249, 'unknown', '127.0.0.1', '57884', '02/01/2023 00:26:52', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(250, 'unknown', '127.0.0.1', '57900', '02/01/2023 00:26:55', 'GET', 'http://127.0.0.1:5000/posterdescription/14'),
(251, 'unknown', '127.0.0.1', '38190', '02/01/2023 00:38:39', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(252, 'unknown', '127.0.0.1', '38202', '02/01/2023 00:38:43', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(253, 'nbousquet99@gmail.com', '127.0.0.1', '38206', '02/01/2023 00:38:43', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(254, 'nbousquet99@gmail.com', '127.0.0.1', '38222', '02/01/2023 00:38:46', 'GET', 'http://127.0.0.1:5000/posterdescription/12'),
(255, 'nbousquet99@gmail.com', '127.0.0.1', '38236', '02/01/2023 00:38:51', 'GET', 'http://127.0.0.1:5000/mycart'),
(256, 'nbousquet99@gmail.com', '127.0.0.1', '59774', '02/01/2023 00:38:53', 'GET', 'http://127.0.0.1:5000/adminpage'),
(257, 'nbousquet99@gmail.com', '127.0.0.1', '59780', '02/01/2023 00:39:01', 'GET', 'http://127.0.0.1:5000/home'),
(258, 'nbousquet99@gmail.com', '127.0.0.1', '57038', '02/01/2023 00:39:02', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(259, 'nbousquet99@gmail.com', '127.0.0.1', '57042', '02/01/2023 00:39:03', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(260, 'nbousquet99@gmail.com', '127.0.0.1', '57046', '02/01/2023 00:39:07', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(261, 'unknown', '127.0.0.1', '57048', '02/01/2023 00:39:07', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(262, 'unknown', '127.0.0.1', '34834', '02/01/2023 00:40:06', 'GET', 'http://127.0.0.1:5000/posterdescription/15'),
(263, 'unknown', '127.0.0.1', '34850', '02/01/2023 00:40:09', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(264, 'unknown', '127.0.0.1', '34864', '02/01/2023 00:40:10', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(265, 'unknown', '127.0.0.1', '54552', '02/01/2023 00:40:12', 'GET', 'http://127.0.0.1:5000/home'),
(266, 'unknown', '127.0.0.1', '54566', '02/01/2023 00:40:57', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(267, 'nbousquet99@gmail.com', '127.0.0.1', '48484', '02/01/2023 00:40:58', 'GET', 'http://127.0.0.1:5000/home'),
(268, 'nbousquet99@gmail.com', '127.0.0.1', '41760', '02/01/2023 00:41:02', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(269, 'unknown', '127.0.0.1', '41774', '02/01/2023 00:41:02', 'GET', 'http://127.0.0.1:5000/home'),
(270, 'unknown', '127.0.0.1', '41776', '02/01/2023 00:41:09', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(271, 'jgarcia@gmail.com', '127.0.0.1', '41786', '02/01/2023 00:41:09', 'GET', 'http://127.0.0.1:5000/home'),
(272, 'jgarcia@gmail.com', '127.0.0.1', '38252', '02/01/2023 00:41:14', 'GET', 'http://127.0.0.1:5000/mycart'),
(273, 'jgarcia@gmail.com', '127.0.0.1', '38266', '02/01/2023 00:41:16', 'POST', 'http://127.0.0.1:5000/myorders'),
(274, 'jgarcia@gmail.com', '127.0.0.1', '38270', '02/01/2023 00:41:19', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(275, 'jgarcia@gmail.com', '127.0.0.1', '38278', '02/01/2023 00:41:23', 'GET', 'http://127.0.0.1:5000/home'),
(276, 'jgarcia@gmail.com', '127.0.0.1', '42922', '02/01/2023 00:41:26', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(277, 'unknown', '127.0.0.1', '42926', '02/01/2023 00:41:26', 'GET', 'http://127.0.0.1:5000/home'),
(278, 'unknown', '127.0.0.1', '57582', '02/01/2023 00:42:57', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(279, 'unknown', '127.0.0.1', '57598', '02/01/2023 00:43:00', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(280, 'unknown', '127.0.0.1', '60122', '02/01/2023 00:43:01', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(281, 'unknown', '127.0.0.1', '60128', '02/01/2023 00:43:04', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(282, 'unknown', '127.0.0.1', '60140', '02/01/2023 00:43:06', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(283, 'unknown', '127.0.0.1', '60146', '02/01/2023 00:43:47', 'GET', 'http://127.0.0.1:5000/'),
(284, 'unknown', '127.0.0.1', '42636', '02/01/2023 00:43:52', 'GET', 'http://127.0.0.1:5000/'),
(285, 'unknown', '127.0.0.1', '48694', '02/01/2023 00:43:55', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(286, 'unknown', '127.0.0.1', '48706', '02/01/2023 00:44:04', 'GET', 'http://127.0.0.1:5000/'),
(287, 'unknown', '127.0.0.1', '49140', '02/01/2023 00:44:06', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(288, 'unknown', '127.0.0.1', '52654', '02/01/2023 11:01:51', 'GET', 'http://127.0.0.1:5000/'),
(289, 'unknown', '127.0.0.1', '52668', '02/01/2023 11:01:57', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(290, 'unknown', '127.0.0.1', '48138', '02/01/2023 11:01:57', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(291, 'unknown', '127.0.0.1', '48140', '02/01/2023 11:01:59', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(292, 'unknown', '127.0.0.1', '48156', '02/01/2023 11:02:02', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(293, 'unknown', '127.0.0.1', '48168', '02/01/2023 11:02:06', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(294, 'unknown', '127.0.0.1', '48172', '02/01/2023 11:02:09', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(295, 'unknown', '127.0.0.1', '55808', '02/01/2023 11:02:32', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(296, 'nbousquet99@gmail.com', '127.0.0.1', '46116', '02/01/2023 11:02:33', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(297, 'nbousquet99@gmail.com', '127.0.0.1', '46132', '02/01/2023 11:02:36', 'GET', 'http://127.0.0.1:5000/adminpage'),
(298, 'nbousquet99@gmail.com', '127.0.0.1', '46134', '02/01/2023 11:02:49', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(299, 'nbousquet99@gmail.com', '127.0.0.1', '40644', '02/01/2023 11:03:00', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(300, 'nbousquet99@gmail.com', '127.0.0.1', '34964', '02/01/2023 11:03:04', 'POST', 'http://127.0.0.1:5000/myorders'),
(301, 'nbousquet99@gmail.com', '127.0.0.1', '34980', '02/01/2023 11:03:06', 'GET', 'http://127.0.0.1:5000/mycart'),
(302, 'nbousquet99@gmail.com', '127.0.0.1', '39798', '02/01/2023 11:03:10', 'POST', 'http://127.0.0.1:5000/myorders'),
(303, 'nbousquet99@gmail.com', '127.0.0.1', '33988', '02/01/2023 11:04:11', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(304, 'nbousquet99@gmail.com', '127.0.0.1', '33998', '02/01/2023 11:04:15', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(305, 'nbousquet99@gmail.com', '127.0.0.1', '34010', '02/01/2023 11:04:21', 'GET', 'http://127.0.0.1:5000/home'),
(306, 'nbousquet99@gmail.com', '127.0.0.1', '53766', '02/01/2023 11:04:28', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(307, 'nbousquet99@gmail.com', '127.0.0.1', '45968', '02/01/2023 11:04:31', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(308, 'nbousquet99@gmail.com', '127.0.0.1', '45980', '02/01/2023 11:04:32', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(309, 'nbousquet99@gmail.com', '127.0.0.1', '45992', '02/01/2023 11:04:35', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(310, 'nbousquet99@gmail.com', '127.0.0.1', '45996', '02/01/2023 11:04:38', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(311, 'nbousquet99@gmail.com', '127.0.0.1', '48264', '02/01/2023 11:04:40', 'GET', 'http://127.0.0.1:5000/adminpage'),
(312, 'nbousquet99@gmail.com', '127.0.0.1', '58670', '02/01/2023 11:17:24', 'GET', 'http://127.0.0.1:5000/'),
(313, 'nbousquet99@gmail.com', '127.0.0.1', '58680', '02/01/2023 11:17:26', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(314, 'nbousquet99@gmail.com', '127.0.0.1', '58690', '02/01/2023 11:17:28', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(315, 'unknown', '127.0.0.1', '55964', '02/01/2023 11:17:28', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(316, 'unknown', '127.0.0.1', '55980', '02/01/2023 11:17:30', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(317, 'unknown', '127.0.0.1', '55990', '02/01/2023 11:17:31', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(318, 'unknown', '127.0.0.1', '55996', '02/01/2023 11:17:33', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(319, 'nbousquet99@gmail.com', '127.0.0.1', '56006', '02/01/2023 11:17:34', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(320, 'nbousquet99@gmail.com', '127.0.0.1', '41440', '02/01/2023 11:17:38', 'GET', 'http://127.0.0.1:5000/mycart'),
(321, 'nbousquet99@gmail.com', '127.0.0.1', '41444', '02/01/2023 11:17:40', 'POST', 'http://127.0.0.1:5000/myorders'),
(322, 'nbousquet99@gmail.com', '127.0.0.1', '55342', '02/01/2023 12:20:24', 'GET', 'http://127.0.0.1:5000/'),
(323, 'nbousquet99@gmail.com', '127.0.0.1', '55350', '02/01/2023 12:20:26', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(324, 'nbousquet99@gmail.com', '127.0.0.1', '35734', '02/01/2023 12:20:27', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(325, 'nbousquet99@gmail.com', '127.0.0.1', '36538', '02/01/2023 12:32:33', 'GET', 'http://127.0.0.1:5000/'),
(326, 'unknown', '127.0.0.1', '0', '02/01/2023 12:33:46', 'GET', 'http://localhost/'),
(327, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 12:34:30', 'GET', 'http://localhost/'),
(328, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 12:34:41', 'GET', 'http://localhost/'),
(329, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 12:39:13', 'GET', 'http://localhost/'),
(330, 'nbousquet99@gmail.com', '127.0.0.1', '45438', '02/01/2023 12:51:32', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(331, 'nbousquet99@gmail.com', '127.0.0.1', '45442', '02/01/2023 12:51:53', 'GET', 'http://127.0.0.1:5000/posterdescription/2'),
(332, 'nbousquet99@gmail.com', '127.0.0.1', '43602', '02/01/2023 12:51:57', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(333, 'nbousquet99@gmail.com', '127.0.0.1', '58084', '02/01/2023 12:52:00', 'GET', 'http://127.0.0.1:5000/posterdescription/3'),
(334, 'nbousquet99@gmail.com', '127.0.0.1', '58088', '02/01/2023 12:52:04', 'GET', 'http://127.0.0.1:5000/home'),
(335, 'nbousquet99@gmail.com', '127.0.0.1', '58096', '02/01/2023 12:52:06', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(336, 'nbousquet99@gmail.com', '127.0.0.1', '58112', '02/01/2023 12:52:08', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(337, 'nbousquet99@gmail.com', '127.0.0.1', '50904', '02/01/2023 12:52:10', 'GET', 'http://127.0.0.1:5000/adminpage'),
(338, 'nbousquet99@gmail.com', '127.0.0.1', '50910', '02/01/2023 12:52:18', 'GET', 'http://127.0.0.1:5000/home'),
(339, 'nbousquet99@gmail.com', '127.0.0.1', '44852', '02/01/2023 13:36:55', 'GET', 'http://127.0.0.1:5000/'),
(340, 'nbousquet99@gmail.com', '127.0.0.1', '44866', '02/01/2023 13:36:57', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(341, 'nbousquet99@gmail.com', '127.0.0.1', '39140', '02/01/2023 13:36:57', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(342, 'nbousquet99@gmail.com', '127.0.0.1', '39156', '02/01/2023 13:37:00', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(343, 'nbousquet99@gmail.com', '127.0.0.1', '39158', '02/01/2023 13:37:01', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(344, 'nbousquet99@gmail.com', '127.0.0.1', '39170', '02/01/2023 13:37:03', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(345, 'nbousquet99@gmail.com', '127.0.0.1', '39176', '02/01/2023 13:37:14', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(346, 'nbousquet99@gmail.com', '127.0.0.1', '52568', '02/01/2023 13:37:16', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(347, 'nbousquet99@gmail.com', '127.0.0.1', '52570', '02/01/2023 13:37:18', 'GET', 'http://127.0.0.1:5000/home'),
(348, 'nbousquet99@gmail.com', '127.0.0.1', '60600', '02/01/2023 13:37:29', 'GET', 'http://127.0.0.1:5000/adminpage'),
(349, 'nbousquet99@gmail.com', '127.0.0.1', '34908', '02/01/2023 13:38:06', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(350, 'nbousquet99@gmail.com', '127.0.0.1', '53930', '02/01/2023 13:38:07', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(351, 'nbousquet99@gmail.com', '127.0.0.1', '53944', '02/01/2023 13:38:08', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(352, 'nbousquet99@gmail.com', '127.0.0.1', '34416', '02/01/2023 13:38:17', 'POST', 'http://127.0.0.1:5000/myorders'),
(353, 'nbousquet99@gmail.com', '127.0.0.1', '34432', '02/01/2023 13:38:34', 'GET', 'http://127.0.0.1:5000/mycart'),
(354, 'nbousquet99@gmail.com', '127.0.0.1', '54408', '02/01/2023 13:38:38', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(355, 'nbousquet99@gmail.com', '127.0.0.1', '38466', '02/01/2023 13:38:41', 'GET', 'http://127.0.0.1:5000/posterdescription/5'),
(356, 'nbousquet99@gmail.com', '127.0.0.1', '38468', '02/01/2023 13:38:46', 'POST', 'http://127.0.0.1:5000/mycart/add_to_cart/5'),
(357, 'nbousquet99@gmail.com', '127.0.0.1', '38480', '02/01/2023 13:38:47', 'GET', 'http://127.0.0.1:5000/mycart'),
(358, 'nbousquet99@gmail.com', '127.0.0.1', '40830', '02/01/2023 13:38:51', 'GET', 'http://127.0.0.1:5000/mycart/remove_item/5/2/50x70'),
(359, 'nbousquet99@gmail.com', '127.0.0.1', '40842', '02/01/2023 13:38:52', 'GET', 'http://127.0.0.1:5000/mycart'),
(360, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 13:40:37', 'GET', 'http://localhost/'),
(361, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 14:36:21', 'GET', 'http://localhost/'),
(362, 'nbousquet99@gmail.com', '127.0.0.1', '41964', '02/01/2023 14:37:48', 'GET', 'http://127.0.0.1:5000/'),
(363, 'nbousquet99@gmail.com', '127.0.0.1', '41974', '02/01/2023 14:37:50', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(364, 'nbousquet99@gmail.com', '127.0.0.1', '41980', '02/01/2023 14:37:52', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(365, 'nbousquet99@gmail.com', '127.0.0.1', '41988', '02/01/2023 14:37:53', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(366, 'nbousquet99@gmail.com', '127.0.0.1', '41990', '02/01/2023 14:37:54', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(367, 'nbousquet99@gmail.com', '127.0.0.1', '41998', '02/01/2023 14:37:57', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(368, 'nbousquet99@gmail.com', '127.0.0.1', '34636', '02/01/2023 14:37:59', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(369, 'nbousquet99@gmail.com', '127.0.0.1', '34646', '02/01/2023 14:38:02', 'POST', 'http://127.0.0.1:5000/myorders'),
(370, 'nbousquet99@gmail.com', '127.0.0.1', '34652', '02/01/2023 14:38:08', 'GET', 'http://127.0.0.1:5000/adminpage'),
(371, 'nbousquet99@gmail.com', '127.0.0.1', '54422', '02/01/2023 14:38:42', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(372, 'unknown', '127.0.0.1', '60456', '02/01/2023 14:38:42', 'GET', 'http://127.0.0.1:5000/adminpage'),
(373, 'unknown', '127.0.0.1', '60470', '02/01/2023 14:38:42', 'GET', 'http://127.0.0.1:5000/favicon.ico'),
(374, 'unknown', '127.0.0.1', '49956', '02/01/2023 14:40:11', 'GET', 'http://127.0.0.1:5000/adminpage'),
(375, 'unknown', '127.0.0.1', '49972', '02/01/2023 14:40:15', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(376, 'unknown', '127.0.0.1', '49984', '02/01/2023 14:40:21', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(377, 'unknown', '127.0.0.1', '38340', '02/01/2023 14:40:23', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(378, 'nbousquet99@gmail.com', '127.0.0.1', '38344', '02/01/2023 14:40:24', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(379, 'nbousquet99@gmail.com', '127.0.0.1', '39926', '02/01/2023 14:40:27', 'GET', 'http://127.0.0.1:5000/adminpage'),
(380, 'nbousquet99@gmail.com', '127.0.0.1', '39938', '02/01/2023 14:40:27', 'GET', 'http://127.0.0.1:5000/myaccount'),
(381, 'nbousquet99@gmail.com', '127.0.0.1', '39946', '02/01/2023 14:40:31', 'GET', 'http://127.0.0.1:5000/adminpage'),
(382, 'nbousquet99@gmail.com', '127.0.0.1', '39952', '02/01/2023 14:40:31', 'GET', 'http://127.0.0.1:5000/myaccount'),
(383, 'nbousquet99@gmail.com', '127.0.0.1', '36500', '02/01/2023 14:40:52', 'GET', 'http://127.0.0.1:5000/adminpage'),
(384, 'nbousquet99@gmail.com', '127.0.0.1', '34488', '02/01/2023 14:41:25', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(385, 'nbousquet99@gmail.com', '127.0.0.1', '34492', '02/01/2023 14:41:27', 'GET', 'http://127.0.0.1:5000/adminpage'),
(386, 'nbousquet99@gmail.com', '127.0.0.1', '58050', '02/01/2023 14:41:30', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(387, 'unknown', '127.0.0.1', '58066', '02/01/2023 14:41:30', 'GET', 'http://127.0.0.1:5000/adminpage'),
(388, 'unknown', '127.0.0.1', '58078', '02/01/2023 14:41:30', 'GET', 'http://127.0.0.1:5000/myaccount'),
(389, 'unknown', '127.0.0.1', '58082', '02/01/2023 14:41:34', 'POST', 'http://127.0.0.1:5000/navbar/login'),
(390, 'nbousquet99@gmail.com', '127.0.0.1', '58098', '02/01/2023 14:41:34', 'GET', 'http://127.0.0.1:5000/myaccount'),
(391, 'nbousquet99@gmail.com', '127.0.0.1', '58100', '02/01/2023 14:41:35', 'GET', 'http://127.0.0.1:5000/adminpage'),
(392, 'nbousquet99@gmail.com', '127.0.0.1', '37010', '02/01/2023 14:43:16', 'POST', 'http://127.0.0.1:5000/myorders'),
(393, 'nbousquet99@gmail.com', '127.0.0.1', '37012', '02/01/2023 14:43:20', 'GET', 'http://127.0.0.1:5000/posterdescription/?photo_id=11'),
(394, 'nbousquet99@gmail.com', '127.0.0.1', '40014', '02/01/2023 14:43:22', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(395, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:05:42', 'GET', 'http://localhost/'),
(396, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:10:12', 'GET', 'http://localhost/'),
(397, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:10:34', 'GET', 'http://localhost/'),
(398, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:25:58', 'GET', 'http://localhost/'),
(399, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:27:23', 'GET', 'http://localhost/'),
(400, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:41:09', 'GET', 'http://localhost/'),
(401, 'nbousquet99@gmail.com', '127.0.0.1', '45474', '02/01/2023 15:51:08', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(402, 'nbousquet99@gmail.com', '127.0.0.1', '45486', '02/01/2023 15:51:10', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(403, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:52:35', 'GET', 'http://localhost/getposter'),
(404, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:52:35', 'GET', 'http://localhost/'),
(405, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:53:05', 'GET', 'http://localhost/getposter'),
(406, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:53:06', 'GET', 'http://localhost/'),
(407, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:54:41', 'GET', 'http://localhost/getposter'),
(408, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:54:41', 'GET', 'http://localhost/'),
(409, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:54:42', 'GET', 'http://localhost/posterdescription'),
(410, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:05', 'GET', 'http://localhost/getposter'),
(411, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:06', 'GET', 'http://localhost/'),
(412, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:06', 'GET', 'http://localhost/myaccount'),
(413, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:14', 'GET', 'http://localhost/getposter'),
(414, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:14', 'GET', 'http://localhost/'),
(415, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:55:16', 'GET', 'http://localhost/myaccount'),
(416, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:56:34', 'GET', 'http://localhost/getposter'),
(417, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:56:35', 'GET', 'http://localhost/'),
(418, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:56:35', 'GET', 'http://localhost/myaccount'),
(419, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:56:35', 'GET', 'http://localhost/posterdescription'),
(420, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:00', 'GET', 'http://localhost/getposter'),
(421, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:00', 'GET', 'http://localhost/'),
(422, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:00', 'GET', 'http://localhost/mycart'),
(423, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:00', 'GET', 'http://localhost/myaccount'),
(424, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:00', 'GET', 'http://localhost/posterdescription'),
(425, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:10', 'GET', 'http://localhost/getposter'),
(426, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:10', 'GET', 'http://localhost/'),
(427, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:10', 'GET', 'http://localhost/myaccount'),
(428, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:10', 'GET', 'http://localhost/mycart'),
(429, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:57:10', 'GET', 'http://localhost/posterdescription'),
(430, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:58:18', 'GET', 'http://localhost/getposter'),
(431, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:58:18', 'GET', 'http://localhost/'),
(432, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:58:18', 'GET', 'http://localhost/myaccount'),
(433, 'unknown', '127.0.0.1', 'unittest', '02/01/2023 15:58:18', 'GET', 'http://localhost/posterdescription'),
(434, 'nbousquet99@gmail.com', '127.0.0.1', '50782', '02/01/2023 20:16:42', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(435, 'nbousquet99@gmail.com', '127.0.0.1', '50796', '02/01/2023 20:16:43', 'GET', 'http://127.0.0.1:5000/posterdescription/4'),
(436, 'nbousquet99@gmail.com', '127.0.0.1', '50806', '02/01/2023 20:16:46', 'POST', 'http://127.0.0.1:5000/myorders'),
(437, 'nbousquet99@gmail.com', '127.0.0.1', '50822', '02/01/2023 20:16:49', 'GET', 'http://127.0.0.1:5000/mycart'),
(438, 'nbousquet99@gmail.com', '127.0.0.1', '50830', '02/01/2023 20:16:51', 'POST', 'http://127.0.0.1:5000/navbar/disconnect_user'),
(439, 'unknown', '127.0.0.1', '50836', '02/01/2023 20:16:52', 'GET', 'http://127.0.0.1:5000/mycart'),
(440, 'unknown', '127.0.0.1', '40092', '02/01/2023 20:16:52', 'GET', 'http://127.0.0.1:5000/myaccount'),
(441, 'unknown', '127.0.0.1', '40094', '02/01/2023 20:16:54', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(442, 'unknown', '127.0.0.1', '49042', '02/01/2023 21:29:43', 'GET', 'http://127.0.0.1:5000/'),
(443, 'unknown', '127.0.0.1', '49054', '02/01/2023 21:29:45', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(444, 'unknown', '127.0.0.1', '49066', '02/01/2023 21:29:47', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(445, 'unknown', '127.0.0.1', '49076', '02/01/2023 21:29:48', 'GET', 'http://127.0.0.1:5000/posterdescription/15'),
(446, 'unknown', '127.0.0.1', '55474', '02/01/2023 21:38:45', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(447, 'unknown', '127.0.0.1', '55480', '02/01/2023 21:38:49', 'GET', 'http://127.0.0.1:5000/posterdescription/20'),
(448, 'unknown', '127.0.0.1', '42784', '02/01/2023 21:39:58', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(449, 'unknown', '127.0.0.1', '42790', '02/01/2023 21:39:59', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(450, 'unknown', '127.0.0.1', '45592', '02/01/2023 21:40:59', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(451, 'unknown', '127.0.0.1', '45604', '02/01/2023 21:41:01', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(452, 'unknown', '127.0.0.1', '43648', '02/01/2023 21:41:10', 'GET', 'http://127.0.0.1:5000/posterdescription/23'),
(453, 'unknown', '127.0.0.1', '55132', '02/01/2023 21:45:06', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(454, 'unknown', '127.0.0.1', '52972', '02/01/2023 21:46:22', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(455, 'unknown', '127.0.0.1', '52974', '02/01/2023 21:46:25', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(456, 'unknown', '127.0.0.1', '53118', '02/01/2023 21:46:37', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(457, 'unknown', '127.0.0.1', '52222', '02/01/2023 21:49:00', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(458, 'unknown', '127.0.0.1', '52238', '02/01/2023 21:49:01', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(459, 'unknown', '127.0.0.1', '53578', '02/01/2023 21:49:05', 'GET', 'http://127.0.0.1:5000/posterdescription/35'),
(460, 'unknown', '127.0.0.1', '57316', '02/01/2023 21:51:48', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(461, 'unknown', '127.0.0.1', '57330', '02/01/2023 21:51:51', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(462, 'unknown', '127.0.0.1', '40818', '02/01/2023 21:51:53', 'GET', 'http://127.0.0.1:5000/posterdescription/38'),
(463, 'unknown', '127.0.0.1', '33206', '02/01/2023 21:53:27', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(464, 'unknown', '127.0.0.1', '33222', '02/01/2023 21:53:28', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(465, 'unknown', '127.0.0.1', '40898', '02/01/2023 21:53:37', 'GET', 'http://127.0.0.1:5000/getposter/America');
INSERT INTO `Requests` (`id`, `email_user`, `ip_addr`, `port`, `date`, `method`, `url`) VALUES
(466, 'unknown', '127.0.0.1', '40914', '02/01/2023 21:53:44', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(467, 'unknown', '127.0.0.1', '37888', '02/01/2023 21:56:01', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(468, 'unknown', '127.0.0.1', '37890', '02/01/2023 21:56:04', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(469, 'unknown', '127.0.0.1', '39984', '02/01/2023 21:56:45', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(470, 'unknown', '127.0.0.1', '39992', '02/01/2023 21:56:45', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(471, 'unknown', '127.0.0.1', '40000', '02/01/2023 21:56:49', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(472, 'unknown', '127.0.0.1', '40016', '02/01/2023 21:56:55', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(473, 'unknown', '127.0.0.1', '60050', '02/01/2023 21:57:03', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(474, 'unknown', '127.0.0.1', '41318', '02/01/2023 21:57:09', 'GET', 'http://127.0.0.1:5000/posterdescription/15'),
(475, 'unknown', '127.0.0.1', '41330', '02/01/2023 21:57:34', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(476, 'unknown', '127.0.0.1', '56962', '02/01/2023 21:57:35', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(477, 'unknown', '127.0.0.1', '59812', '02/01/2023 22:00:32', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(478, 'unknown', '127.0.0.1', '59826', '02/01/2023 22:00:34', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(479, 'unknown', '127.0.0.1', '35202', '02/01/2023 22:01:27', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(480, 'unknown', '127.0.0.1', '35204', '02/01/2023 22:01:27', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(481, 'unknown', '127.0.0.1', '59480', '02/01/2023 22:03:44', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(482, 'unknown', '127.0.0.1', '59484', '02/01/2023 22:03:46', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(483, 'unknown', '127.0.0.1', '42842', '02/01/2023 22:08:40', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(484, 'unknown', '127.0.0.1', '42844', '02/01/2023 22:08:41', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(485, 'unknown', '127.0.0.1', '45910', '02/01/2023 22:09:47', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(486, 'unknown', '127.0.0.1', '45922', '02/01/2023 22:09:49', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(487, 'unknown', '127.0.0.1', '56112', '02/01/2023 22:09:58', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(488, 'unknown', '127.0.0.1', '43936', '02/01/2023 22:11:52', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(489, 'unknown', '127.0.0.1', '43940', '02/01/2023 22:11:52', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(490, 'unknown', '127.0.0.1', '43946', '02/01/2023 22:11:58', 'GET', 'http://127.0.0.1:5000/posterdescription/56'),
(491, 'unknown', '127.0.0.1', '46318', '02/01/2023 22:13:32', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(492, 'unknown', '127.0.0.1', '46320', '02/01/2023 22:13:34', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(493, 'unknown', '127.0.0.1', '46724', '02/01/2023 22:13:46', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(494, 'unknown', '127.0.0.1', '46736', '02/01/2023 22:13:54', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(495, 'unknown', '127.0.0.1', '43708', '02/01/2023 22:13:59', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(496, 'unknown', '127.0.0.1', '43720', '02/01/2023 22:14:04', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(497, 'unknown', '127.0.0.1', '39384', '02/01/2023 22:15:03', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(498, 'unknown', '127.0.0.1', '55440', '02/01/2023 22:15:05', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(499, 'unknown', '127.0.0.1', '46092', '02/01/2023 22:15:57', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(500, 'unknown', '127.0.0.1', '46108', '02/01/2023 22:15:58', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(501, 'unknown', '127.0.0.1', '35938', '02/01/2023 22:16:58', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(502, 'unknown', '127.0.0.1', '35944', '02/01/2023 22:17:26', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(503, 'unknown', '127.0.0.1', '46916', '02/01/2023 22:17:43', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(504, 'unknown', '127.0.0.1', '60824', '02/01/2023 22:17:44', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(505, 'unknown', '127.0.0.1', '60826', '02/01/2023 22:18:16', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(506, 'unknown', '127.0.0.1', '46552', '02/01/2023 22:18:31', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(507, 'unknown', '127.0.0.1', '36012', '02/01/2023 22:18:39', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(508, 'unknown', '127.0.0.1', '36018', '02/01/2023 22:18:44', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(509, 'unknown', '127.0.0.1', '47190', '02/01/2023 22:18:48', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(510, 'unknown', '127.0.0.1', '47200', '02/01/2023 22:18:54', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(511, 'unknown', '127.0.0.1', '54476', '02/01/2023 22:19:02', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(512, 'unknown', '127.0.0.1', '52406', '02/01/2023 22:19:04', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(513, 'unknown', '127.0.0.1', '52420', '02/01/2023 22:19:09', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(514, 'unknown', '127.0.0.1', '55594', '02/01/2023 22:21:54', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(515, 'unknown', '127.0.0.1', '55596', '02/01/2023 22:21:58', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(516, 'unknown', '127.0.0.1', '54362', '02/01/2023 22:25:09', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(517, 'unknown', '127.0.0.1', '54376', '02/01/2023 22:25:13', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(518, 'unknown', '127.0.0.1', '47032', '02/01/2023 22:25:58', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(519, 'unknown', '127.0.0.1', '47676', '02/01/2023 22:27:54', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(520, 'unknown', '127.0.0.1', '47686', '02/01/2023 22:27:58', 'GET', 'http://127.0.0.1:5000/static/favicon.ico'),
(521, 'unknown', '127.0.0.1', '47700', '02/01/2023 22:27:59', 'GET', 'http://127.0.0.1:5000/posterdescription/73'),
(522, 'unknown', '127.0.0.1', '33880', '02/01/2023 22:28:06', 'GET', 'http://127.0.0.1:5000/getposter/Europe'),
(523, 'unknown', '127.0.0.1', '33894', '02/01/2023 22:28:17', 'GET', 'http://127.0.0.1:5000/getposter/Asia'),
(524, 'unknown', '127.0.0.1', '55340', '02/01/2023 22:28:22', 'GET', 'http://127.0.0.1:5000/getposter/America'),
(525, 'unknown', '127.0.0.1', '46528', '02/01/2023 22:28:26', 'GET', 'http://127.0.0.1:5000/getposter/Oceania'),
(526, 'unknown', '127.0.0.1', '46542', '02/01/2023 22:28:29', 'GET', 'http://127.0.0.1:5000/getposter/Africa'),
(527, 'unknown', '127.0.0.1', '46550', '02/01/2023 22:28:30', 'GET', 'http://127.0.0.1:5000/posterdescription/58');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `first_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`first_name`, `last_name`, `email`, `password`, `id`) VALUES
('Nicolas', 'Bousquet', 'nbousquet99@gmail.com', 'root', 24),
('Juan', 'Garcia', 'jgarcia@gmail.com', 'root', 25),
('Nicolas', 'Bousquet', 'nbousquet@gmail.com', 'root', 36),
('Lola', 'Burgueno', 'lburgueno@uma.es', 'root', 37);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Photos`
--
ALTER TABLE `Photos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Requests`
--
ALTER TABLE `Requests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `Photos`
--
ALTER TABLE `Photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `Requests`
--
ALTER TABLE `Requests`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
