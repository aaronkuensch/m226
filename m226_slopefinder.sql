-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Dez 2018 um 10:04
-- Server-Version: 10.1.22-MariaDB
-- PHP-Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `m226_slopefinder`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `level`
--

CREATE TABLE `level` (
  `ID` int(11) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `level`
--

INSERT INTO `level` (`ID`, `level`) VALUES
(1, 'rookie'),
(2, 'intermediate'),
(3, 'advanced');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `slope`
--

CREATE TABLE `slope` (
  `ID` int(11) NOT NULL,
  `slope_name` varchar(11) NOT NULL,
  `slope_level` int(11) NOT NULL,
  `slope_length` int(11) NOT NULL,
  `slope_altitude` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `slope`
--

INSERT INTO `slope` (`ID`, `slope_name`, `slope_level`, `slope_length`, `slope_altitude`) VALUES
(1, 'Mono', 1, 3000, 200),
(2, 'Di', 1, 4000, 300),
(3, 'Tri', 1, 5000, 400),
(4, 'Tetra', 2, 6000, 500),
(5, 'Penta', 2, 7000, 600),
(6, 'Hexa', 2, 8000, 700),
(7, 'Hepta', 3, 9000, 800),
(8, 'Octa', 3, 10000, 900),
(9, 'Enna', 3, 11000, 1000),
(10, 'Deka', 3, 12000, 1100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `slope_trick`
--

CREATE TABLE `slope_trick` (
  `ID` int(11) NOT NULL,
  `slope_ID` int(11) NOT NULL,
  `trick_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trick`
--

CREATE TABLE `trick` (
  `ID` int(11) NOT NULL,
  `trick_name` varchar(100) NOT NULL,
  `trick_type` int(11) NOT NULL,
  `trick_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `trick`
--

INSERT INTO `trick` (`ID`, `trick_name`, `trick_type`, `trick_level`) VALUES
(1, 'Ollie', 1, 1),
(2, 'Nollie', 1, 1),
(3, 'Shifty', 1, 1),
(4, 'Method Grab', 6, 2),
(5, 'Melon Grab', 6, 2),
(6, 'Mute Grab', 6, 1),
(7, 'Nose Grab', 6, 1),
(8, 'Tail Grab', 6, 1),
(9, 'Backflip', 7, 3),
(10, 'Frontflip', 7, 2),
(11, 'Wildcat', 7, 3),
(12, 'Tamedog', 7, 2),
(13, 'Nose Butter', 1, 1),
(14, 'Tail Butter', 1, 1),
(15, 'Butter Pretzel', 1, 1),
(16, 'Butter Bagel', 1, 1),
(17, 'Millerflip', 7, 3),
(18, 'Tap', 3, 2),
(19, 'Nosepress', 1, 1),
(20, 'Tailpress', 1, 1),
(21, '50-50', 3, 1),
(22, 'Boardslide', 3, 1),
(23, 'Lipslide', 3, 2),
(24, 'Bluntslide', 3, 2),
(25, 'Noseslide', 3, 2),
(26, 'Tailslide', 3, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type`
--

CREATE TABLE `type` (
  `ID` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `type`
--

INSERT INTO `type` (`ID`, `type`) VALUES
(1, 'flat'),
(2, 'spin'),
(3, 'jib'),
(4, 'air'),
(5, 'miscellaneous'),
(6, 'grab'),
(7, 'flip');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pw` char(32) NOT NULL,
  `ride_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `user_name`, `user_pw`, `ride_level`) VALUES
(1, 'Maryanne', 'Hello1', 1),
(2, 'Tommy', 'Hello2', 1),
(3, 'Alonso', 'Hello3', 1),
(4, 'Rusty', 'Hello4', 1),
(5, ' Mathew', 'Hello5', 1),
(6, 'Nick', 'Hello6', 1),
(7, 'Jeffery', 'Hello7', 1),
(8, 'Margie', 'Hello8', 1),
(9, 'Jennifer', 'Hello9', 1),
(10, 'Lloyd', 'Hello10', 1),
(11, 'Mariano', 'Hello11', 1),
(12, ' Len', 'Hello12', 2),
(13, 'Derick', 'Hello13', 2),
(14, 'Clint', 'Hello14', 2),
(15, ' Ronnie', 'Hello15', 2),
(16, 'Meghan', 'Hello16', 2),
(17, 'Weldon', 'Hello17', 2),
(18, 'Leonardo', 'Hello18', 2),
(19, 'Keri', 'Hello19', 2),
(20, 'Frances', 'Hello20', 2),
(21, ' Jerrell', 'Hello21', 2),
(22, 'Berry', 'Hello22', 3),
(23, 'Faye', 'Hello23', 3),
(24, 'Jeffry', 'Hello24', 3),
(25, 'Cassandra', 'Hello25', 3),
(26, 'Clyde', 'Hello26', 3),
(27, 'Dave', 'Hello27', 3),
(28, 'Allyson', 'Hello28', 3),
(29, 'Manual', 'Hello29', 3),
(30, 'Lidia', 'Hello30', 3);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `slope`
--
ALTER TABLE `slope`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `slope_level` (`slope_level`);

--
-- Indizes für die Tabelle `slope_trick`
--
ALTER TABLE `slope_trick`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `slope_ID` (`slope_ID`),
  ADD KEY `trick_ID` (`trick_ID`);

--
-- Indizes für die Tabelle `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `trick_level` (`trick_level`),
  ADD KEY `trick_type` (`trick_type`);

--
-- Indizes für die Tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ride_level` (`ride_level`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `slope`
--
ALTER TABLE `slope`
  ADD CONSTRAINT `slope_ibfk_1` FOREIGN KEY (`slope_level`) REFERENCES `level` (`ID`);

--
-- Constraints der Tabelle `slope_trick`
--
ALTER TABLE `slope_trick`
  ADD CONSTRAINT `slope_trick_ibfk_1` FOREIGN KEY (`slope_ID`) REFERENCES `slope` (`ID`),
  ADD CONSTRAINT `slope_trick_ibfk_2` FOREIGN KEY (`trick_ID`) REFERENCES `trick` (`ID`);

--
-- Constraints der Tabelle `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `trick_ibfk_1` FOREIGN KEY (`trick_level`) REFERENCES `level` (`ID`),
  ADD CONSTRAINT `trick_ibfk_2` FOREIGN KEY (`trick_type`) REFERENCES `type` (`ID`);

--
-- Constraints der Tabelle `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ride_level`) REFERENCES `level` (`ID`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
