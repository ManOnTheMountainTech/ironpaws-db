-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 09:14 PM
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
-- Table structure for table `dog_team_assignments`
--

CREATE TABLE `dog_team_assignments` (
  `id_of_assignment_dta` int(11) NOT NULL,
  `dta_dog_id_fk` int(11) NOT NULL,
  `dta_team_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `dog_team_assignments`
--

INSERT INTO `dog_team_assignments` (`id_of_assignment_dta`, `dta_dog_id_fk`, `dta_team_fk`) VALUES
(6, 6, 1),
(3, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dog_team_assignments`
--
ALTER TABLE `dog_team_assignments`
  ADD KEY `id_of_dog_idx` (`id_of_assignment_dta`) USING BTREE,
  ADD KEY `dog_team_assignment_ibfk_dog_teams` (`dta_team_fk`),
  ADD KEY `dog_team_assignment_ibfk_dog` (`dta_dog_id_fk`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dog_team_assignments`
--
ALTER TABLE `dog_team_assignments`
  ADD CONSTRAINT `dog_team_assignment_ibfk_dog` FOREIGN KEY (`dta_dog_id_fk`) REFERENCES `dogs` (`dog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dog_team_assignment_ibfk_dog_teams` FOREIGN KEY (`dta_team_fk`) REFERENCES `teams` (`team_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
