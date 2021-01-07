-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:49 PM
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
-- Table structure for table `race_instances`
--

CREATE TABLE `race_instances` (
  `id_ri_ai` int(11) NOT NULL,
  `name_ri` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL COMMENT 'The name of the race instance',
  `ri_dog_team_fk` int(11) NOT NULL,
  `ri_race_defs_fk` int(11) NOT NULL,
  `start_date_time_ri` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci COMMENT='A race';

--
-- Dumping data for table `race_instances`
--

INSERT INTO `race_instances` (`id_ri_ai`, `name_ri`, `ri_dog_team_fk`, `ri_race_defs_fk`, `start_date_time_ri`) VALUES
(1, '2020 World Domination Race', 1, 1, '2020-12-15 16:31:51'),
(2, '2021 World Domination Race', 3, 1, '2021-12-17 16:32:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `race_instances`
--
ALTER TABLE `race_instances`
  ADD PRIMARY KEY (`id_ri_ai`),
  ADD KEY `race_instances_ibfk_race_defs` (`ri_race_defs_fk`),
  ADD KEY `race_instances_ibfk_dog_team` (`ri_dog_team_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `race_instances`
--
ALTER TABLE `race_instances`
  MODIFY `id_ri_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `race_instances`
--
ALTER TABLE `race_instances`
  ADD CONSTRAINT `race_instances_ibfk_dog_team` FOREIGN KEY (`ri_dog_team_fk`) REFERENCES `teams` (`team_id_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `race_instances_ibfk_race_defs` FOREIGN KEY (`ri_race_defs_fk`) REFERENCES `race_defs` (`id_rd_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
