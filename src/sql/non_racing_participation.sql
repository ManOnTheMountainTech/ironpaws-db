-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 12:33 PM
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
-- Table structure for table `non_racing_participation`
--

CREATE TABLE `non_racing_participation` (
  `id_event_nrp` int(11) NOT NULL COMMENT 'set to primary key of the referenced table',
  `nrp_people_fk` int(11) NOT NULL,
  `nrp_type` enum('social_event','facebook_video','howleday','volunteer') COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `non_racing_participation`
--
ALTER TABLE `non_racing_participation`
  ADD PRIMARY KEY (`id_event_nrp`),
  ADD KEY `nrp_ipfk_people` (`nrp_people_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `non_racing_participation`
--
ALTER TABLE `non_racing_participation`
  ADD CONSTRAINT `nrp_ipfk_people` FOREIGN KEY (`nrp_people_fk`) REFERENCES `people` (`person_id_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
