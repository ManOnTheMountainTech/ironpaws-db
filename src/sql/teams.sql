-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 12:28 AM
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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id_ai` int(11) NOT NULL,
  `team_bib_number` int(11) DEFAULT NULL,
  `team_tn_fk` int(11) NOT NULL COMMENT 'Hash of the team name',
  `team_person_fk` int(11) NOT NULL,
  `team_class_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id_ai`, `team_bib_number`, `team_tn_fk`, `team_person_fk`, `team_class_fk`) VALUES
(1, 42, 1, 3, 2),
(3, 38, 2, 4, 1),
(4, 71, 0, 3, 3),
(5, 92, 0, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id_ai`),
  ADD KEY `dog_teams_ibfk_class` (`team_class_fk`),
  ADD KEY `dog_teams_ibfk_person` (`team_person_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_class` FOREIGN KEY (`team_class_fk`) REFERENCES `race_classes` (`id_rc_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `teams_ibfk_person` FOREIGN KEY (`team_person_fk`) REFERENCES `people` (`person_id_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
