-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 11 okt 2018 kl 10:23
-- Serverversion: 10.1.29-MariaDB
-- PHP-version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `te16`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumpning av Data i tabell `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`) VALUES
(1, 'emil', '$2y$10$xkYLNEvTUs5YhIv7g36hG.3RzdmCgt89qlQcjK3h.HV56ukmB5qGu', 'emil.edberg@elev.ga.ntig.se'),
(2, 'root', '', ' '),
(3, 'username', '$2y$10$QcDVSe4k0TBujX4OF5jCGepRX2jzlud0gxRbyB0E40VSPCQ0Z.k8a', 'email'),
(4, 'newUser', '$2y$10$nI98ucWyG3nLtKAi1/DbYuzIkoeXJr2/D7X8vLK8x2FBImR0YUxsy', 'newEmail'),
(7, 'hampus', '$2y$10$mkar1AEvGEOLTogA/cL3nunIgysI5DQmSJgAjjFUkzZ2VF9Lmqr7O', 'fuckoff@email.com'),
(8, 'Henke', '$2y$10$VQqrMyBuyUu6FTkjusZVEOdTWF5GDvYhrFb7KNDLpTW4HUdgo1NJO', 'HEJPÃ…DEJ@HEJ.HEJ'),
(10, 'Henke1', '$2y$10$mxBy7Me/2MD6PgPa0gSze.f3/XaZmcZ74YLRL7jD7/5AJUuv6l02u', 'HEJPÃ…DEJ@HEJ.HEJ1');

-- --------------------------------------------------------

--
-- Tabellstruktur `story`
--

CREATE TABLE `story` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `text` text COLLATE utf8mb4_bin NOT NULL,
  `place` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumpning av Data i tabell `story`
--

INSERT INTO `story` (`id`, `title`, `text`, `place`) VALUES
(1, 'Slut', 'Snipp Snapp Snut så va sagan Slut.', 'Himmlen'),
(7, 'Vem är Jörgen intresserad av?', 'Du sitter i båten och funderar, vem är det egentligen du är intresserad av? Efter många långa tankestunder kommer du till ett slutgiltigt svar. Vem är du intresserad av?', 'Fiskebåten'),
(8, 'Krasslig ekonomi', 'Du och Kaj flyttar ut på landet och bor där under 3 månader, men pengarna börjar tar slut och du är villig att göra vad som helst för att lösa problemet. Du överväger att åka iväg och jobba för att få ihop pengar, men Kaj är döende och kan dö under tiden du är borta.\r\n\r\nÅker du Iväg?', 'Ett hus på landet');

-- --------------------------------------------------------

--
-- Tabellstruktur `storylinks`
--

CREATE TABLE `storylinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `storyid` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `text` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumpning av Data i tabell `storylinks`
--

INSERT INTO `storylinks` (`id`, `storyid`, `target`, `text`) VALUES
(6, 7, 1, 'Ingen'),
(7, 7, 8, 'Kaj'),
(8, 7, 10, 'Jens'),
(9, 7, 11, ' Nichlas');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index för tabell `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `storylinks`
--
ALTER TABLE `storylinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storyid` (`storyid`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT för tabell `story`
--
ALTER TABLE `story`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT för tabell `storylinks`
--
ALTER TABLE `storylinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
