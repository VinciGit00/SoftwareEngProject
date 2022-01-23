-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Gen 01, 2022 alle 20:53
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TruccoParruccoBormio`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Cliente`
--

CREATE TABLE `Cliente` (
  `Nome` text NOT NULL,
  `Cognome` text NOT NULL,
  `IDcliente` int(11) NOT NULL,
  `Sesso` enum('M','F','nonspecificato') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Listino`
--

CREATE TABLE `Listino` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Macchinario`
--

CREATE TABLE `Macchinario` (
  `IdMacchinario` int(11) NOT NULL,
  `Ammortamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Negozio`
--

CREATE TABLE `Negozio` (
  `Nome` text NOT NULL,
  `PartitaIVA` int(11) NOT NULL,
  `Via` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `data` date NOT NULL,
  `ora` time NOT NULL,
  `codice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Prodotto`
--

CREATE TABLE `Prodotto` (
  `IdProdotto` int(11) NOT NULL,
  `Dimensione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Semplice`
--

CREATE TABLE `Semplice` (
  `ID` int(11) NOT NULL,
  `Tipologia` int(11) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Durata` int(11) NOT NULL,
  `Descrizione` text NOT NULL,
  `Procedura` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Strutturato`
--

CREATE TABLE `Strutturato` (
  `ID` int(11) NOT NULL,
  `Tipologia` text NOT NULL,
  `Costo` float NOT NULL,
  `Durata` int(11) NOT NULL,
  `Descrizione` text NOT NULL,
  `Procedura` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
