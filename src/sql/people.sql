-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 12:32 PM
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
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `person_id_ai` int(11) NOT NULL,
  `salutation` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL COMMENT 'Sir/Mrs., etc',
  `person_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `person_address_fk` int(11) DEFAULT NULL,
  `buisness_fk` int(11) NOT NULL,
  `person_banned_reason` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`person_id_ai`, `salutation`, `person_name`, `person_address_fk`, `buisness_fk`, `person_banned_reason`) VALUES
(3, NULL, 'Martin Buser', 2, 0, NULL),
(4, NULL, 'Miki Douglas', 1, 0, NULL),
(6, NULL, 'Rick Swenson', 3, 0, NULL),
(7, 'Herr', 'Hanz Katze', 11, 0, NULL),
(8, NULL, 'Sven Nilsson', 13, 0, NULL),
(9, 'Herrn', 'Dieter Wellhausen', 12, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`person_id_ai`),
  ADD KEY `person_ibfk_world_address` (`person_address_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `person_id_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_ibfk_world_address` FOREIGN KEY (`person_address_fk`) REFERENCES `world_addresses` (`id_wa_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
