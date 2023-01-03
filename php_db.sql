-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 03 jan. 2023 à 13:21
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
('Nicolas', 'Bousquet', 'nbousquet99@gmail.com', 'root', 24);

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
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `Photos`
--
ALTER TABLE `Photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `Requests`
--
ALTER TABLE `Requests`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
