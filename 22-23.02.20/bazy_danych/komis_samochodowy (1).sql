-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Sie 2009, 03:03
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
(1, 1, 'Bylechto', 'Bylechdie', '00-000', 'tymidali', 'Blotna', 'Zaklapany', '-1', '2020-02-22', 'Franek Dolas'),
(2, 2, 'Bylechto', 'Bylechdie', '00-000', 'tymidali', 'Blotna', 'Zaklapany', '-1', '2020-02-22', 'Franek Dolas'),
(3, 3, 'Bylechto', 'Bylechdie', '00-000', 'tymidali', 'Blotna', 'Zaklapany', '-1', '2020-02-22', 'Franek Dolas'),
(4, 4, 'Bylechto', 'Bylechdie', '00-000', 'tymidali', 'Blotna', 'Zaklapany', '-1', '2020-02-22', 'Franek Dolas');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(10) NOT NULL,
  `handlowiec_id` int(10) NOT NULL,
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
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `handlowiec_id`, `nazwa`, `miejscowosc`, `kod`, `poczta`, `ulica`, `nr_domu`, `nr_mieszkania`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 1, 'Brof', 'Warszawa', '01-234', 'POczta polska', 'Miejska', '5', '35', '0000-00-00', 'Kol Zawisz'),
(2, 2, 'Brof', 'Warszawa', '01-234', 'POczta polska', 'Miejska', '5', '35', '0000-00-00', 'Kol Zawisz'),
(3, 3, 'Brof', 'Warszawa', '01-234', 'POczta polska', 'Miejska', '5', '35', '0000-00-00', 'Kol Zawisz'),
(4, 4, 'Brof', 'Warszawa', '01-234', 'POczta polska', 'Miejska', '5', '35', '0000-00-00', 'Kol Zawisz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `modele`
--

CREATE TABLE `modele` (
  `id_modelu` int(10) NOT NULL,
  `producent_id` int(10) NOT NULL,
  `nazwa` varchar(10) NOT NULL,
  `poczatek_produkcji` int(4) NOT NULL,
  `koniec_produkcji` int(4) NOT NULL,
  `data_wpisu` date NOT NULL,
  `autor_wpisu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `modele`
--

INSERT INTO `modele` (`id_modelu`, `producent_id`, `nazwa`, `poczatek_produkcji`, `koniec_produkcji`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 1, 'Honda', 2008, 2010, '2000-10-30', 'Hrez Zabawa'),
(2, 2, 'Honda', 2008, 2010, '2000-10-30', 'Hrez Zabawa'),
(3, 3, 'Honda', 2008, 2010, '2000-10-30', 'Hrez Zabawa'),
(4, 4, 'Honda', 2008, 2010, '2000-10-30', 'Hrez Zabawa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `operacje`
--

CREATE TABLE `operacje` (
  `id operacja` int(10) NOT NULL,
  `rejestr_id` int(10) NOT NULL,
  `rodzaj` varchar(20) NOT NULL,
  `data_wpisu` date NOT NULL,
  `autor_wpisu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id samochod` int(10) NOT NULL,
  `klient_id` int(10) NOT NULL,
  `model_id` int(10) NOT NULL,
  `rocznik` int(4) NOT NULL,
  `wartosc` int(6) NOT NULL,
  `data_wpisu` date NOT NULL,
  `autor_wpisu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id samochod`, `klient_id`, `model_id`, `rocznik`, `wartosc`, `data_wpisu`, `autor_wpisu`) VALUES
(5, 1, 1, 1900, 12000, '2019-03-25', 'Boni Zalewski'),
(6, 2, 2, 2010, 17000, '2017-09-05', 'Iv Rosze'),
(7, 3, 3, 1998, 12000, '2023-04-15', 'Basia Krotka'),
(8, 4, 4, 2000, 12550, '2018-01-19', 'Kot Zab');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `handlowcy`
--
ALTER TABLE `handlowcy`
  ADD PRIMARY KEY (`Id_handlowca`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`id_modelu`);

--
-- Indexes for table `operacje`
--
ALTER TABLE `operacje`
  ADD PRIMARY KEY (`id operacja`);

--
-- Indexes for table `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id samochod`),
  ADD KEY `klient_id` (`klient_id`),
  ADD KEY `model_id` (`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `handlowcy`
--
ALTER TABLE `handlowcy`
  MODIFY `Id_handlowca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `modele`
--
ALTER TABLE `modele`
  MODIFY `id_modelu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `operacje`
--
ALTER TABLE `operacje`
  MODIFY `id operacja` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id samochod` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD CONSTRAINT `samochody_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `samochody_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `modele` (`id_modelu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
