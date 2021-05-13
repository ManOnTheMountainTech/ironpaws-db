-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:52 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bryany_mush`
--

-- --------------------------------------------------------

--
-- Table structure for table `team_name`
--

CREATE TABLE IF NOT EXISTS `team_name` (
  `id_tn_ai` int(11) NOT NULL,
  `name_tn` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci COMMENT='This table provides a simple team name to hash index';

--
-- Dumping data for table `team_name`
--

INSERT INTO `team_name` (`id_tn_ai`, `name_tn`) VALUES
(1, 'Cold-nosed commandos'),
(2, 'Dawg-gone it'),
(3, 'Bark worse than bite'),
(4, 'My furry bosses'),
(5, 'Hot dawgs'),
(6, 'Super friends');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team_name`
--
ALTER TABLE `team_name`
  ADD PRIMARY KEY (`id_tn_ai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team_name`
--
ALTER TABLE `team_name`
  MODIFY `id_tn_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
