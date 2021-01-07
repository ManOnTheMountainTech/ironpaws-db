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
-- Table structure for table `region_cocaptains`
--

CREATE TABLE `region_cocaptains` (
  `person_id_rc` int(11) NOT NULL,
  `rc_person_fk` int(11) NOT NULL,
  `rc_region_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `region_cocaptains`
--

INSERT INTO `region_cocaptains` (`person_id_rc`, `rc_person_fk`, `rc_region_fk`) VALUES
(3, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `region_cocaptains`
--
ALTER TABLE `region_cocaptains`
  ADD PRIMARY KEY (`person_id_rc`),
  ADD KEY `region_cocaptains_ibfk_person` (`rc_person_fk`),
  ADD KEY `region_cocaptains_ibfk_regions` (`rc_region_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `region_cocaptains`
--
ALTER TABLE `region_cocaptains`
  ADD CONSTRAINT `region_cocaptains_ibfk_person` FOREIGN KEY (`rc_person_fk`) REFERENCES `people` (`person_id_ai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `region_cocaptains_ibfk_regions` FOREIGN KEY (`rc_region_fk`) REFERENCES `regions` (`id_region_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
