-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 05, 2023 alle 20:49
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `centro_sportivo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `id` int(11) NOT NULL,
  `nome_id` varchar(30) NOT NULL,
  `istruttore_id` int(11) NOT NULL,
  `giorno_settimana` varchar(20) NOT NULL,
  `orario_prefissato` time NOT NULL,
  `numero_lezioni` int(10) UNSIGNED NOT NULL,
  `costo_iscrizione` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`id`, `nome_id`, `istruttore_id`, `giorno_settimana`, `orario_prefissato`, `numero_lezioni`, `costo_iscrizione`) VALUES
(1, 'tennis', 3, 'lunedì', '12:00:00', 34, 100),
(2, 'calcio', 1, 'martedí', '14:00:00', 23, 100);

-- --------------------------------------------------------

--
-- Struttura della tabella `istruttore`
--

CREATE TABLE `istruttore` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `descrizione` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `istruttore`
--

INSERT INTO `istruttore` (`id`, `nome`, `cognome`, `descrizione`) VALUES
(1, 'Giuseppe', 'Garibaldi', 'abile giocatore di golf vincit'),
(2, 'Alessandro', 'Poretti', 'istruttore di calcio dal 1984 '),
(3, 'Dwayne', 'Jhonson', 'attore e wrestler conosciuto c'),
(4, 'Piero', 'Birbini', 'vinceva sempre a racchettoni s'),
(5, 'Soshita', 'Nakagata', 'un nome un programma'),
(6, 'Federica', 'Pellegrini', 'ottima istruttrice di nuoto ma');

-- --------------------------------------------------------

--
-- Struttura della tabella `nome_corso`
--

CREATE TABLE `nome_corso` (
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `nome_corso`
--

INSERT INTO `nome_corso` (`nome`) VALUES
('calcio'),
('golf'),
('nuoto'),
('sala pesi'),
('tennis'),
('yoga');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazione`
--

CREATE TABLE `prenotazione` (
  `id` int(11) NOT NULL,
  `corso_id` int(11) NOT NULL,
  `utente_id` int(11) NOT NULL,
  `data_prenotazione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenotazione`
--

INSERT INTO `prenotazione` (`id`, `corso_id`, `utente_id`, `data_prenotazione`) VALUES
(1, 1, 1, '2023-04-25'),
(2, 1, 2, '2023-04-20'),
(3, 2, 1, '2023-04-12'),
(5, 2, 1, '2023-04-12'),
(6, 2, 4, '2023-04-15');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `data_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `nome`, `cognome`, `data_nascita`) VALUES
(1, 'Gino', 'Franceschetti', '1990-02-07'),
(2, 'Matteo', 'Todaro', '2000-02-14'),
(3, 'Paolo', 'Mattarella', '2000-02-08'),
(4, 'Sylvia', 'Toscannini', '2002-07-14'),
(5, 'Mario', 'Murri', '1967-12-07'),
(6, 'Laura', 'Cesarotti', '1987-11-19'),
(7, 'Liberto', 'Paliotta', '1960-10-17'),
(8, 'Angelo', 'Trentini', '1999-07-18'),
(9, 'Leonardo', 'Pisaroni', '2003-09-02'),
(10, 'Moraru', 'Liviu', '2004-01-24');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_id` (`nome_id`),
  ADD KEY `istruttori_id` (`istruttore_id`);

--
-- Indici per le tabelle `istruttore`
--
ALTER TABLE `istruttore`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `nome_corso`
--
ALTER TABLE `nome_corso`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corso_id` (`corso_id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `corso`
--
ALTER TABLE `corso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `istruttore`
--
ALTER TABLE `istruttore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `corso`
--
ALTER TABLE `corso`
  ADD CONSTRAINT `corso_ibfk_1` FOREIGN KEY (`nome_id`) REFERENCES `nome_corso` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `corso_ibfk_2` FOREIGN KEY (`istruttore_id`) REFERENCES `istruttore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`corso_id`) REFERENCES `corso` (`id`),
  ADD CONSTRAINT `prenotazione_ibfk_2` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
