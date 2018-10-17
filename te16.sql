-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 17 okt 2018 kl 11:16
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
(7, 'Vem är Jörgen intresserad av?', 'Du sitter i båten och funderar, vem är det egentligen du är intresserad av? Efter många långa tankestunder kommer du till ett slutgiltigt svar. \r\n<br><br>Vem är du intresserad av?', 'Fiskebåten'),
(8, 'Krasslig ekonomi', 'Du och Kaj flyttar ut på landet och bor där under 3 månader, men pengarna börjar tar slut och du är villig att göra vad som helst för att lösa problemet. \r\n<br>Du överväger att åka iväg och jobba för att få ihop pengar, men Kaj är döende och kan dö under tiden du är borta.\r\n\r\n<br><br>Åker du Iväg?', 'Ett hus på landet'),
(9, 'Du och Jens', 'Du och Jens hittar verkligen varandra, ni flyttar runt i världen och upplever allt tillsammans. Ni lever med varandra varje sekund och släpper aldrig taget. Ert förhållande är en perfect match.\r\n\r\n<br><br>Snipp Snapp Snut så va sagan slut', 'Världen'),
(10, 'Du och Nichlas', 'Du flyttar in i Baronen Nichlas slott, där är pengar inget problem och du kan göra vad du vill på dagarna. Tyvärr dör kaj av sorgen som uppkom då han insåg att du var upptagen. Du spenderar resten av dina pengar och ditt liv på att fiska.\r\n\r\n<br><br>Snipp Snapp Snut så var sagan slut. ', 'Slottet'),
(11, 'Double Robot', 'Du väljer att stanna kvar, som den vetenskapsman du är upptäcker du ett sätt man kan spara Kajs \"mind\" på en hårddisk och använda i en Double Robot. Du och kaj fortsätter erat liv som förr, med lite ändringar. Du funderar på att fria, men vet inte riktigt om det känns rätt.\r\n\r\n<br><br>Friar du?', 'Ett hus på landet'),
(12, 'Kaj dör', 'Under tiden du är borta dör Kaj. Du blir ledsen men kommer över det ganska fort.\r\n<br>Du använder sen alla pengar du tjänat på att leva resten av ditt liv i din fiskebåt på havets vågor.\r\n\r\n<br><br>Snipp Snapp Snut så var sagan slut', 'Fiskebåt'),
(15, 'Ledsen Kaj', 'Du valde att inte fria, du råkar försäga dig när ni var bortbjudna på middag och nu är Kaj ledsen. Han känner sig lurad och oälskad. Kaj dör av sorgen och Jörgen fäller en tår. Sen spenderar han resten av sitt liv och sina pengar på att fiska i sin fiskebåt.\r\n\r\n<br><br>Snipp Snapp Snut så var sagan slut', 'Hus på landet'),
(16, 'Frej förstör', 'Du valde att fria! Du är nervös men ändå glad, du planerar och försöker lista ut vad du ska göra och hur du ska göra det. När du är mitt i dina egna tankar kommer Kajs Far Frej och vill prata med dig. Han säger att du inte borde gifta dig med Kaj, då det räknas som ohederligt i deras släkt.\r\n\r\n<br><br>Lyssnar du på Frej?', 'Hus på landet'),
(17, 'Giftermål', 'Det är dags att gifta sig! Du och Kaj har längtat flera veckor och nu är äntligen stunden kommen. <br>Hela din släkt är närvarande, eller ja, det bara är din faster Stina som är vid liv. Kajs familj inser att det inte finns något de kan göra, och de har bestämt sig för att stötta er i ert förhållande.\r\n\r\n<br><br>Ni åker på smekmånad i Din fiskebåt, en hel månad spenderar ni på havets vågor. \r\n\r\n<br><br>Kommer ni leva lyckliga i alla era dar?', 'Kyrka/Fiskebåt'),
(18, 'Najs!!', 'NAJS!!!!\r\n\r\n<br><br>Snipp Snapp Snut så var sagan slut', 'Himmlen'),
(19, 'Synd!!!', 'SYND!!!\r\n\r\n<br><br>Snipp Snapp Snut så var sagan slut', 'Himmlen'),
(20, 'Kaj ledsen igen', 'Du respekterar vad Frej säger och det blir inget giftermål, när du säger detta blir Kaj förkrossad. Han gråter och gråter och gråter, ända tills han tillslut dör av uttorkning. <br>Jörgen sörjer med kajs familj, sen spenderar han resten av sitt liv och sina pengar på att fiska i sin fiskebåt.\r\n', 'Hus på landet');

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
(8, 7, 9, 'Jens'),
(9, 7, 10, ' Nichlas'),
(11, 8, 12, 'Ja'),
(12, 8, 11, 'Nej'),
(13, 11, 16, 'Ja'),
(14, 11, 15, 'Nej'),
(15, 16, 17, 'Nej'),
(16, 16, 20, 'Ja'),
(17, 17, 18, 'Ja'),
(18, 17, 19, 'Nej');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT för tabell `storylinks`
--
ALTER TABLE `storylinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
