-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Čtv 08. pro 2022, 12:15
-- Verze serveru: 10.4.27-MariaDB
-- Verze PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `Vehicle`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `Vehicle`
--

CREATE TABLE `Vehicle` (
  `Id` int(11) NOT NULL,
  `Brand` varchar(20) DEFAULT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Registration` varchar(20) DEFAULT NULL,
  `Colour` varchar(20) DEFAULT NULL,
  `Fuel_type` varchar(20) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `Vehicle`
--

INSERT INTO `Vehicle` (`Id`, `Brand`, `Model`, `Registration`, `Colour`, `Fuel_type`, `Active`) VALUES
(1, 'Peugeot', '307SW', '4L46344', 'Gold', 'Oil', 1),
(2, 'Skoda', 'Superb', '1AA0011', 'Black', 'Oil', 1),
(3, 'Volkswagen', 'Polo', 'EL12131', 'Black', 'Electro', 1),
(4, 'Fiat', 'Panda', '3P34477', 'Red', 'Gas', 1),
(5, 'Lada', 'Sport', '9E95566', 'Blue', 'Gas', 1),
(6, 'Ford', 'Scorpion', '6S31212', 'White', 'Petrol', 1),
(7, 'Skoda', 'Octavia', '2B37878', 'Green', 'Petrol', 1);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `Vehicle`
--
ALTER TABLE `Vehicle`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
