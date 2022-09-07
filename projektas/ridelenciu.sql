-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 10:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ridelenciu`
--

-- --------------------------------------------------------

--
-- Table structure for table `riedlente`
--

CREATE TABLE `riedlente` (
  `ID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pavadinimas` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `medienos tipas` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `kategorija` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `info` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `user id` int(11) NOT NULL,
  `tipas` text COLLATE utf8mb4_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `riedlente`
--

INSERT INTO `riedlente` (`ID`, `price`, `pavadinimas`, `medienos tipas`, `kategorija`, `info`, `user id`, `tipas`) VALUES
(3, 999999, 'riedlente', 'raudona', 'sportas', 'good', 4, 'long board'),
(5, 100000000, 'riedlente2', 'mediena', 'laisvalaikiui ', 'nice', 6, 'classic');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `password` text COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `is admin` text COLLATE utf8mb4_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `is admin`) VALUES
(1, 'snapchat', 'laskdlfk', 'yes'),
(2, 'facebook', 'rtjslr', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `riedlente`
--
ALTER TABLE `riedlente`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `riedlente`
--
ALTER TABLE `riedlente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
