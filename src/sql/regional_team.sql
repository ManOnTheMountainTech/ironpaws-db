-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 12:42 PM
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
-- Table structure for table `regional_team`
--

CREATE TABLE `regional_team` (
  `id_re_ai` int(11) NOT NULL,
  `rt_trse_fk` int(11) NOT NULL,
  `rt_ibfk_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `regional_team`
--

INSERT INTO `regional_team` (`id_re_ai`, `rt_trse_fk`, `rt_ibfk_region`) VALUES
(1, 1, 1),
(2, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regional_team`
--
ALTER TABLE `regional_team`
  ADD PRIMARY KEY (`id_re_ai`),
  ADD KEY `rt_ibfk_trse` (`rt_trse_fk`),
  ADD KEY `rt_ibfk_region` (`rt_ibfk_region`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regional_team`
--
ALTER TABLE `regional_team`
  MODIFY `id_re_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `regional_team`
--
ALTER TABLE `regional_team`
  ADD CONSTRAINT `rt_ibfk_region` FOREIGN KEY (`rt_ibfk_region`) REFERENCES `regions` (`id_region_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rt_ibfk_trse` FOREIGN KEY (`rt_trse_fk`) REFERENCES `team_race_stage_entry` (`id_trse_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
