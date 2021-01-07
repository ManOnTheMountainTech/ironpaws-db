-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:48 PM
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
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `phone_person_id` int(11) NOT NULL COMMENT 'persons.id',
  `phone_owner_fk` int(11) NOT NULL,
  `phone_connect_id` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL COMMENT 'may include extensions. This could be a number, id, or uri',
  `phone_type` set('mobile','landline','satellite','internet') COLLATE utf8_unicode_520_ci NOT NULL,
  `phone_capabilities` set('textable','','','') COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`phone_person_id`, `phone_owner_fk`, `phone_connect_id`, `phone_type`, `phone_capabilities`) VALUES
(3, 3, '(907) 123-4568', 'mobile', 'textable'),
(3, 3, '(907) 855-4571', 'landline', ''),
(4, 4, '(509) 233-6712', 'mobile', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD KEY `phones_ibfk_person` (`phone_owner_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_ibfk_person` FOREIGN KEY (`phone_owner_fk`) REFERENCES `people` (`person_id_ai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
