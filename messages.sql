-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 29 fév. 2020 à 05:55
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `web_apps`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `content` varchar(400) NOT NULL,
  `send_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `author`, `content`, `send_date`) VALUES
(1, 'franck', 'Salut!', '2020-02-28 13:36:44'),
(2, 'Jadelito', 'Salut mec, comment tu vas?', '2020-02-28 13:39:06'),
(3, 'Franck', 'Je vais bien et toi?', '2020-02-28 13:39:56'),
(4, 'Jadelito', 'Ahh Pas mal mec!', '2020-02-28 13:40:55'),
(5, 'Franck', 'Ok super, on vas courir ce soir,t\'es chaud?', '2020-02-28 13:42:14'),
(6, 'Jadelito', 'Biensure que je suis chaud donc on se dit a ce soir alors!!! ', '2020-02-28 13:43:24'),
(7, 'Franck', 'daccord c\'est genial 17 heures au jardin pour le depart ', '2020-02-28 13:44:35'),
(8, 'Jadelito', 'Bien recu ', '2020-02-28 13:45:06'),
(9, 'Niggas', 'hey mano', '2020-02-28 16:12:19'),
(10, '', '', '2020-02-28 18:21:21'),
(11, '', '', '2020-02-28 18:21:37'),
(12, '', '', '2020-02-28 18:33:48'),
(13, '', '', '2020-02-28 18:33:57'),
(14, 'AJASD', 'cOMMENT NOH LES GARS', '2020-02-28 19:06:34'),
(15, '', '', '2020-02-28 19:10:24'),
(16, '', '', '2020-02-28 19:28:02'),
(17, 'Meyong', 'humm humm bonjour', '2020-02-28 19:29:59'),
(18, 'Meyong', ' Lorem ipsum dolor sit amet ', '2020-02-28 19:30:48'),
(19, 'Meyong', '', '2020-02-28 19:31:14'),
(20, 'Meyong', '', '2020-02-28 19:31:28'),
(21, 'Meyong', '', '2020-02-28 19:31:30'),
(22, 'Meyong', '', '2020-02-28 19:31:30'),
(23, 'Meyong', '', '2020-02-28 19:31:31'),
(24, 'Meyong', '', '2020-02-28 19:31:31'),
(25, 'Meyong', '', '2020-02-28 19:31:33'),
(26, 'Meyong', '', '2020-02-28 19:31:33'),
(27, 'Meyong', '', '2020-02-28 19:31:33'),
(28, 'Meyong', '', '2020-02-28 19:31:37'),
(29, 'Meyong', '', '2020-02-28 19:31:37'),
(30, 'Meyong', '', '2020-02-28 19:31:38'),
(31, 'Meyong', 'et encore', '2020-02-28 19:36:35'),
(32, 'MIGOS', 'Salut mon pot', '2020-02-28 19:37:43'),
(33, 'ORDY', 'YO l\'ami quoi de neuf', '2020-02-28 19:38:17'),
(34, 'MIGOS', 'Lorem ipsum dolor sit amet', '2020-02-28 19:38:58'),
(35, 'ORDY', '', '2020-02-28 19:40:33'),
(36, '', '', '2020-02-28 21:04:02'),
(37, 'Niky ', 'Salut mansd', '2020-02-28 21:04:41'),
(38, 'Nadege', 'salut Didier', '2020-02-29 06:15:30'),
(39, 'Didier', 'salut ! cmt vas?', '2020-02-29 06:15:51'),
(40, 'Nadege', 'bien et toi', '2020-02-29 06:16:07'),
(41, 'Didier', 'pas mal', '2020-02-29 06:16:24'),
(42, 'Nadege', 'yo l\'ami', '2020-02-29 06:52:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
