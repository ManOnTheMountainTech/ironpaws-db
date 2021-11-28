-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2021 at 06:53 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bryan_mush`
--

-- --------------------------------------------------------

--
-- Table structure for table `external_refs`
--

CREATE TABLE `external_refs` (
  `er_ai` int UNSIGNED NOT NULL COMMENT 'Auto-generated id',
  `er_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci NOT NULL COMMENT 'Name of the identity',
  `er_type` enum('social_event','facebook_video','howleday','volunteer_ironpaws_race','volunteer_external') COLLATE utf8mb4_0900_as_ci NOT NULL COMMENT 'Gives the type of the external reference'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci COMMENT='Stores the names of the types of partition record in nrp';

--
-- Dumping data for table `external_refs`
--

INSERT INTO `external_refs` (`er_ai`, `er_name`, `er_type`) VALUES
(5, 'foo', 'social_event'),
(6, 'SuperGirl', 'social_event');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_refs`
--
ALTER TABLE `external_refs`
  ADD PRIMARY KEY (`er_ai`),
  ADD UNIQUE KEY `er_name` (`er_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `external_refs`
--
ALTER TABLE `external_refs`
  MODIFY `er_ai` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto-generated id', AUTO_INCREMENT=7;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
