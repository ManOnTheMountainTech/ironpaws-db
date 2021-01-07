-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:46 PM
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
-- Table structure for table `awards_granted`
--

CREATE TABLE `awards_granted` (
  `id_of_entity` int(11) NOT NULL,
  `award_type_fk` int(11) NOT NULL,
  `award_date` date NOT NULL,
  `entity_type` enum('team','dog','person','') COLLATE utf8_unicode_520_ci NOT NULL DEFAULT 'team',
  `race_inst_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `awards_granted`
--

INSERT INTO `awards_granted` (`id_of_entity`, `award_type_fk`, `award_date`, `entity_type`, `race_inst_id`) VALUES
(0, 1, '2020-12-21', 'team', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards_granted`
--
ALTER TABLE `awards_granted`
  ADD PRIMARY KEY (`id_of_entity`),
  ADD KEY `AwardsGranted_ibfk_AwardType` (`award_type_fk`),
  ADD KEY `awards_granted_ibfk_race_inst` (`race_inst_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards_granted`
--
ALTER TABLE `awards_granted`
  ADD CONSTRAINT `awards_granted_ibfk_AwardType` FOREIGN KEY (`award_type_fk`) REFERENCES `award_types` (`id_at_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_granted_ibfk_race_inst` FOREIGN KEY (`race_inst_id`) REFERENCES `race_instances` (`id_ri_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
