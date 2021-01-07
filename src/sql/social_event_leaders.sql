-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 12:45 PM
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
-- Table structure for table `social_event_leaders`
--

CREATE TABLE `social_event_leaders` (
  `id_sel_ai` int(11) NOT NULL,
  `Id_sel_person_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `social_event_leaders`
--

INSERT INTO `social_event_leaders` (`id_sel_ai`, `Id_sel_person_fk`) VALUES
(1, 3),
(2, 3),
(3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `social_event_leaders`
--
ALTER TABLE `social_event_leaders`
  ADD PRIMARY KEY (`id_sel_ai`),
  ADD KEY `id_sel_ibfk_person` (`Id_sel_person_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `social_event_leaders`
--
ALTER TABLE `social_event_leaders`
  MODIFY `id_sel_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `social_event_leaders`
--
ALTER TABLE `social_event_leaders`
  ADD CONSTRAINT `id_sel_ibfk_person` FOREIGN KEY (`Id_sel_person_fk`) REFERENCES `people` (`person_id_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
