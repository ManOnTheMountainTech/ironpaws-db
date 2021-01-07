-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:51 PM
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
-- Table structure for table `social_events`
--

CREATE TABLE `social_events` (
  `id_se_ai` int(11) NOT NULL,
  `title_se` varchar(32) COLLATE utf8_unicode_520_ci NOT NULL,
  `value_in_points_se` int(11) NOT NULL,
  `se_region_fk` int(11) NOT NULL,
  `event_description_se` text COLLATE utf8_unicode_520_ci NOT NULL,
  `se_world_address_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `social_events`
--

INSERT INTO `social_events` (`id_se_ai`, `title_se`, `value_in_points_se`, `se_region_fk`, `event_description_se`, `se_world_address_fk`) VALUES
(1, 'Un-Stage 6 dance', 5, 1, 'Dance with your dogs! Have a dog-gone good time!', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `social_events`
--
ALTER TABLE `social_events`
  ADD PRIMARY KEY (`id_se_ai`),
  ADD KEY `social_events_ibfk_regions` (`se_region_fk`),
  ADD KEY `social_events_ibfk_address` (`se_world_address_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `social_events`
--
ALTER TABLE `social_events`
  MODIFY `id_se_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `social_events`
--
ALTER TABLE `social_events`
  ADD CONSTRAINT `social_events_ibfk_address` FOREIGN KEY (`se_world_address_fk`) REFERENCES `world_addresses` (`id_wa_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `social_events_ibfk_regions` FOREIGN KEY (`se_region_fk`) REFERENCES `regions` (`id_region_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
