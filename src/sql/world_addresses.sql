-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 10:52 PM
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
-- Table structure for table `world_addresses`
--

CREATE TABLE `world_addresses` (
  `id_wa_ai` int(11) NOT NULL,
  `address_wa` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `po_box_wa` int(11) DEFAULT NULL,
  `city_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `state_iso_code_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL COMMENT 'Use ISO 3166-2 subdivision codes + APO',
  `district_iso_code_wa` varchar(3) COLLATE utf8_unicode_520_ci DEFAULT NULL COMMENT 'ISO 3166-2 country specific subdivision code',
  `neighborhood_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `postal_code_wa` varchar(32) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `country_iso_code_wa` enum('004','008','010','012','016','020','024','028','031','032','036','040','044','048','050','051','052','056','060','064','068','070','072','074','076','084','086','090','092','096','100','104','108','112','116','120','124','132','136','140','144','148','152','162','166','170','174','178','180','184','188','191','192','196','203','204','208','212','214','218','222','226','231','232','226','231','232','233','234','238','239','242','246','248','250','254','258','260','262','266','268','270','275','276','288','292','296','300','304','308','312','316','320','324','328','332','334','336','340','344','348','352','356','360','364','368','372','376','380','384','388','392','398','400','404','408','410','414','417','418','422','426','428','430','434','438','440','442','446','450','454','458','462','466','470','474','478','480','484','492','496','498','499','500','504','508','512','516','520','524','528','531','533','534','535','540','548','554','558','562','566','570','574','578','580','581','583','584','585','586','591','598','600','604','608','612','616','620','624','626','630','634','638','642','643','646','652','654','659','660','662','663','666','670','674','678','682','686','688','690','694','702','703','704','705','706','710','716','724','728','729','732','740','744','748','752','756','760','762','764','768','772','776','780','784','788','792','795','796','798','800','804','807','818','826','831','832','833','834','840','850','854','858','860','862','876','882','887','894','','','','') COLLATE utf8_unicode_520_ci NOT NULL COMMENT 'ISO 3166-1 numeric country code',
  `supplemental_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `department_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `building_name_wa` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `type_wa` enum('mailing','street','url','') COLLATE utf8_unicode_520_ci NOT NULL DEFAULT 'mailing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `world_addresses`
--

INSERT INTO `world_addresses` (`id_wa_ai`, `address_wa`, `po_box_wa`, `city_wa`, `state_iso_code_wa`, `district_iso_code_wa`, `neighborhood_wa`, `postal_code_wa`, `country_iso_code_wa`, `suplemental_wa`, `department_wa`, `building_name_wa`, `type_wa`) VALUES
(1, '2121 Pasco Road', 0, 'Cle Elum', 'WA', NULL, NULL, '98922', '840', NULL, '', '', 'mailing'),
(2, 'P.O. Box 1234', 0, 'Big Lake', 'AK', NULL, NULL, '99999', '840', NULL, '', '', 'mailing'),
(3, 'P.O. Box 1', 0, 'Two Rivers', 'AK', NULL, NULL, '99998', '840', NULL, '', '', 'mailing'),
(4, '1 Summit Road', 0, 'Mount Buller', 'VIC', NULL, NULL, '3723', '120', NULL, '', '', 'mailing'),
(5, 'consistency.hardest.reluctance', 0, NULL, NULL, NULL, NULL, NULL, '496', NULL, '', '', 'mailing'),
(6, '14 Magore Street', 0, 'Kimashuka Village', '09', '', 'HAI', '25204', '834', '25204 MACHAME KUSINI', '', '', 'mailing'),
(7, 'Hans Egedesvej 29', 199, NULL, NULL, NULL, NULL, 'DK-3900 Nuuk', '304', NULL, '', '', 'mailing'),
(9, 'Av. Rivadavia 2403', 0, 'Buenos Aires', NULL, NULL, NULL, 'C1473GTH', '032', NULL, '', '', 'mailing'),
(10, 'PSC 769', 700, '', 'APO', NULL, NULL, '96599-9998', '840', NULL, '', '', 'mailing'),
(11, ' Tastentanzenstrasse 5/16 ', NULL, 'Zürich', NULL, NULL, NULL, NULL, '756', NULL, '', '', 'mailing'),
(12, 'Lansstraße 81', NULL, 'Berlin', NULL, NULL, NULL, 'D-11179', '276', NULL, NULL, NULL, 'mailing'),
(13, 'Roslagsgatan 10 ', NULL, 'Stockholm', NULL, NULL, NULL, '113 51', '752', NULL, NULL, NULL, 'mailing'),
(14, 'Denkmaschinenstrasse 1024', 230, 'Zürich', NULL, NULL, NULL, '4096', '', NULL, NULL, NULL, 'mailing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `world_addresses`
--
ALTER TABLE `world_addresses`
  ADD PRIMARY KEY (`id_wa_ai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `world_addresses`
--
ALTER TABLE `world_addresses`
  MODIFY `id_wa_ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
