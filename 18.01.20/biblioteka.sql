-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Sty 2020, 10:26
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `Id_autora` int(50) NOT NULL,
  `Nazwisko` varchar(50) NOT NULL,
  `Imie` varchar(50) NOT NULL,
  `Imie_2` varchar(50) NOT NULL,
  `Rok_urodzienia` date NOT NULL,
  `Rok_zgonu` date NOT NULL,
  `Narodowość` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`Id_autora`, `Nazwisko`, `Imie`, `Imie_2`, `Rok_urodzienia`, `Rok_zgonu`, `Narodowość`) VALUES
(1, 'Mickewicz', 'Adam', 'Bernard', '1787-01-15', '1802-01-16', 'polak'),
(2, 'Sienkiewicz', 'Henryk', 'Bran', '1900-01-09', '1978-01-25', 'polak'),
(3, 'Pilipuk', 'Andrzej', 'Nie', '1874-01-24', '1950-01-13', 'polak'),
(4, 'Szewczenko', 'Taras', 'Nie', '1814-03-09', '1861-03-10', 'ukrainec');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `Id_ksiagki` int(50) NOT NULL,
  `Tytul` varchar(50) NOT NULL,
  `Autor_id` int(50) NOT NULL,
  `Rok_wydania` date NOT NULL,
  `Okladka` varchar(50) NOT NULL,
  `liczba_stron` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`Id_ksiagki`, `Tytul`, `Autor_id`, `Rok_wydania`, `Okladka`, `liczba_stron`) VALUES
(1, 'Potop', 2, '1950-01-01', 'twarda', 350),
(2, 'Dziady', 1, '2000-01-22', 'miekka', 500),
(3, 'Kobzar', 4, '1980-05-12', 'twarda', 700),
(4, 'Gora', 3, '2020-01-21', 'miekka', 50);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `Id_wypozycienia` int(50) NOT NULL,
  `Ksiagka_id` int(50) NOT NULL,
  `Data_wypozyczenia` date NOT NULL,
  `Data_zwrotu` date NOT NULL,
  `Kara` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`Id_wypozycienia`, `Ksiagka_id`, `Data_wypozyczenia`, `Data_zwrotu`, `Kara`) VALUES
(1, 1, '2020-01-05', '2020-01-23', 50),
(2, 2, '2019-12-18', '2020-01-13', 100),
(3, 4, '2020-01-13', '2020-01-14', 0),
(4, 3, '2019-11-11', '2020-01-08', 200);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`Id_autora`);

--
-- Indexes for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`Id_ksiagki`);

--
-- Indexes for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`Id_wypozycienia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `Id_autora` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `Id_ksiagki` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `Id_wypozycienia` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
