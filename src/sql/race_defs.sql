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
-- Table structure for table `race_defs`
--

CREATE TABLE `race_defs` (
  `id_rd_ai` int(11) NOT NULL,
  `name_rd` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `description_rd` mediumtext COLLATE utf8_unicode_520_ci NOT NULL,
  `fee_rd` float NOT NULL,
  `week_of_month_0_rd` tinyint(4) DEFAULT NULL COMMENT 'The nTh week of the month, zero indexed',
  `start_day_offset_0_rd` tinyint(4) DEFAULT '4' COMMENT 'Monday = 0, Sunday = 6',
  `rd_award_type_fk` int(11) NOT NULL,
  `stages_rd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race_defs`
--

INSERT INTO `race_defs` (`id_rd_ai`, `name_rd`, `description_rd`, `fee_rd`, `week_of_month_0_rd`, `start_day_offset_0_rd`, `rd_award_type_fk`, `stages_rd`) VALUES
(1, 'World Domination', 'Mush on seven continents in seven weeks.', 2500, 127, 5, 1, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `race_defs`
--
ALTER TABLE `race_defs`
  ADD PRIMARY KEY (`id_rd_ai`),
  ADD UNIQUE KEY `RaceStage_FK` (`rd_award_type_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `race_defs`
--
ALTER TABLE `race_defs`
  MODIFY `id_rd_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `race_defs`
--
ALTER TABLE `race_defs`
  ADD CONSTRAINT `race_defs_ibfk_AwardType` FOREIGN KEY (`rd_award_type_fk`) REFERENCES `award_types` (`id_at_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
