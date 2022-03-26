-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Sie 2009, 06:00
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wypozyczania_26.01.2020`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `id_autora` int(40) NOT NULL,
  `nazwisko` varchar(40) NOT NULL,
  `imie_1` varchar(40) NOT NULL,
  `imie_2` varchar(40) NOT NULL,
  `rok_urodzienia` int(4) NOT NULL,
  `rok_zgonu` int(4) DEFAULT NULL,
  `narodowosc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`id_autora`, `nazwisko`, `imie_1`, `imie_2`, `rok_urodzienia`, `rok_zgonu`, `narodowosc`) VALUES
(1, 'Mickiewicz', 'Adam', 'Gregosh', 1900, 1956, 'polak'),
(2, 'Sienkiewicz', 'Henryk', 'Bran', 1900, 1978, 'polak'),
(3, 'Pilipuk', 'Andrzej', 'Nie', 1874, 1950, 'polak'),
(4, 'Szewczenko', 'Taras', 'Nie', 1814, 1861, 'ukrainec'),
(5, 'Sekspir', 'Wiliam', 'Nie', 1834, 1861, 'anglik'),
(6, 'Solni', 'Henryk', 'Bran', 1834, 1978, 'polak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(40) NOT NULL,
  `tytul` varchar(40) NOT NULL,
  `autor_id` int(40) NOT NULL,
  `rok_wydania` int(4) NOT NULL,
  `wydawnyctwo` varchar(40) NOT NULL,
  `okladka` varchar(40) NOT NULL,
  `liczba_stron` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `autor_id`, `rok_wydania`, `wydawnyctwo`, `okladka`, `liczba_stron`) VALUES
(1, 'Potop', 2, 1950, 'PLW', 'twarda', 350),
(2, 'Dziady', 1, 2000, 'PLW', 'miekka', 500),
(3, 'Kobzar', 4, 1980, 'PLW', 'twarda', 700),
(4, 'Gora', 3, 2020, 'PLW', 'miekka', 50),
(5, 'Gamlet', 5, 1958, 'PLW', 'miekka', 500);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wypozyczenia` int(40) NOT NULL,
  `nazwisko` varchar(40) NOT NULL,
  `imie_1` varchar(40) NOT NULL,
  `imie_2` varchar(40) NOT NULL,
  `miejscewosc` varchar(40) NOT NULL,
  `ulica` varchar(40) NOT NULL,
  `nr_domu` int(40) NOT NULL,
  `nr_mieshkania` int(40) NOT NULL,
  `ksiazka_id` int(40) NOT NULL,
  `data_wypozyczenia` int(4) NOT NULL,
  `data_zwrotu` int(4) NOT NULL,
  `kara` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wypozyczenia`, `nazwisko`, `imie_1`, `imie_2`, `miejscewosc`, `ulica`, `nr_domu`, `nr_mieshkania`, `ksiazka_id`, `data_wypozyczenia`, `data_zwrotu`, `kara`) VALUES
(1, 'Tymoshchuk', 'Tetiana', 'Teti', 'Warszawa', 'Pelczynskiego', 5, 10, 4, 2019, 2020, 0),
(2, 'Solom', 'Roni', 'Bar', 'łodz', 'Kwitky', 7, 10, 1, 2020, 2020, 27),
(3, 'Krzysz', 'Agata', 'Lia', 'Kraków', 'Zemna', 6, 32, 2, 2018, 2019, 100),
(4, 'Zenon', 'Darian', 'Nie', 'łodz', 'Zymna', 16, 239, 3, 2017, 2020, 200),
(5, 'Chackiewich', 'Gregosh', 'Damian', 'Wrocław', 'Stary_Zamok', 45, 14, 5, 2016, 2020, 500);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indexes for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `autor_id` (`autor_id`);

--
-- Indexes for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`),
  ADD KEY `ksiazka_id` (`ksiazka_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id_autora` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id_wypozyczenia` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autorzy` (`id_autora`);

--
-- Ograniczenia dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazki` (`id_ksiazki`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
