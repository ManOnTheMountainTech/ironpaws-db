-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2021 at 06:54 PM
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
-- Table structure for table `non_racing_participation`
--

CREATE TABLE `non_racing_participation` (
  `nrp_id_ai` int NOT NULL COMMENT 'Query optimizer bait',
  `id_event_nrp` int UNSIGNED DEFAULT NULL COMMENT 'set to primary key of the referenced table or null if URL or extra-mush reference.',
  `nrp_people_fk` int NOT NULL,
  `date_completed` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'When completed',
  `nrp_er_fk` int UNSIGNED NOT NULL COMMENT 'Which er entry to select into'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;

--
-- Dumping data for table `non_racing_participation`
--

INSERT INTO `non_racing_participation` (`nrp_id_ai`, `id_event_nrp`, `nrp_people_fk`, `date_completed`, `nrp_er_fk`) VALUES
(4, 1, 44, '2021-11-26 22:31:18', 5),
(8, NULL, 46, '2021-11-27 17:52:30', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `non_racing_participation`
--
ALTER TABLE `non_racing_participation`
  ADD PRIMARY KEY (`nrp_id_ai`),
  ADD KEY `nrp_ipfk_people` (`nrp_people_fk`),
  ADD KEY `nrp_ipfk_er` (`nrp_er_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `non_racing_participation`
--
ALTER TABLE `non_racing_participation`
  MODIFY `nrp_id_ai` int NOT NULL AUTO_INCREMENT COMMENT 'Query optimizer bait', AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `non_racing_participation`
--
ALTER TABLE `non_racing_participation`
  ADD CONSTRAINT `nrp_ipfk_er` FOREIGN KEY (`nrp_er_fk`) REFERENCES `external_refs` (`er_ai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nrp_ipfk_people` FOREIGN KEY (`nrp_people_fk`) REFERENCES `people` (`person_id_ai`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
