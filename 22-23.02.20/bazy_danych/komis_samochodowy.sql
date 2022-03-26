-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Sie 2009, 00:37
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `komis_samochodowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `handlowcy`
--

CREATE TABLE `handlowcy` (
  `Id_handlowca` int(10) NOT NULL,
  `operacje_id` int(10) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `miejscowosc` varchar(50) NOT NULL,
  `kod` varchar(50) NOT NULL,
  `poczta` varchar(50) NOT NULL,
  `ulica` varchar(50) NOT NULL,
  `nr_domu` varchar(50) NOT NULL,
  `nr_mieszkania` varchar(50) NOT NULL,
  `data_wpisu` date NOT NULL,
  `autor_wpisu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `handlowcy`
--

INSERT INTO `handlowcy` (`Id_handlowca`, `operacje_id`, `nazwa`, `miejscowosc`, `kod`, `poczta`, `ulica`, `nr_domu`, `nr_mieszkania`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 1, 'Bylechto', 'Bylechdie', '00-000', 'tymidali', 'Blotna', 'Zaklapany', '-1', '2020-02-22', 'Franek Dolas');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `handlowcy`
--
ALTER TABLE `handlowcy`
  ADD PRIMARY KEY (`Id_handlowca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `handlowcy`
--
ALTER TABLE `handlowcy`
  MODIFY `Id_handlowca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
