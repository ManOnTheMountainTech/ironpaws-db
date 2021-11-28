-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2021 at 04:26 AM
-- Server version: 5.7.34
-- PHP Version: 7.3.27

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
-- Table structure for table `team_race_stage_entry`
--

CREATE TABLE `team_race_stage_entry` (
  `id_trse_ai` int(11) NOT NULL,
  `wc_order_id_trse` int(11) NOT NULL COMMENT 'Woo Commerce OrderID',
  `trse_race_stage_instance_fk` int(11) NOT NULL,
  `trse_team_fk` int(11) NOT NULL,
  `miles_trse` int(11) NOT NULL DEFAULT '0',
  `outcome_trse` set('completed','dropped','incomplete','disqualified','completed_too_late','untimed') COLLATE utf8_unicode_520_ci NOT NULL DEFAULT 'incomplete',
  `route_recording_trse` mediumblob,
  `notes_trse` mediumtext COLLATE utf8_unicode_520_ci,
  `stage_trse` int(11) NOT NULL DEFAULT '1',
  `when_completed_trse` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `team_race_stage_entry`
--

INSERT INTO `team_race_stage_entry` (`id_trse_ai`, `wc_order_id_trse`, `trse_race_stage_instance_fk`, `trse_team_fk`, `miles_trse`, `outcome_trse`, `route_recording_trse`, `notes_trse`, `stage_trse`, `when_completed_trse`) VALUES
(1, 64, 1, 1, 20, 'completed', '', NULL, 1, NULL);
INSERT INTO `team_race_stage_entry` (`id_trse_ai`, `wc_order_id_trse`, `trse_race_stage_instance_fk`, `trse_team_fk`, `miles_trse`, `outcome_trse`, `route_recording_trse`, `notes_trse`, `stage_trse`, `when_completed_trse`) VALUES
INSERT INTO `team_race_stage_entry` (`id_trse_ai`, `wc_order_id_trse`, `trse_race_stage_instance_fk`, `trse_team_fk`, `miles_trse`, `outcome_trse`, `route_recording_trse`, `notes_trse`, `stage_trse`, `when_completed_trse`) VALUES
(3, 54, 7, 4, 1, 'dropped', NULL, NULL, 1, NULL),
(4, 54, 7, 3, 1, 'incomplete', NULL, NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team_race_stage_entry`
--
ALTER TABLE `team_race_stage_entry`
  ADD PRIMARY KEY (`id_trse_ai`),
  ADD KEY `trse_ibfk_team` (`trse_team_fk`),
  ADD KEY `trse_race_stage_instance_fk` (`trse_race_stage_instance_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team_race_stage_entry`
--
ALTER TABLE `team_race_stage_entry`
  MODIFY `id_trse_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_race_stage_entry`
--
ALTER TABLE `team_race_stage_entry`
  ADD CONSTRAINT `team_race_stage_entry_ibfk_1` FOREIGN KEY (`trse_race_stage_instance_fk`) REFERENCES `race_stage_instances` (`id_rsi_ai`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `trse_ibfk_team` FOREIGN KEY (`trse_team_fk`) REFERENCES `teams` (`team_id_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;