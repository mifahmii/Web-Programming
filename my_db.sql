-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2022 at 04:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `reportid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `houseNum` varchar(255) NOT NULL,
  `stats` varchar(255) NOT NULL,
  `evidence` varchar(255) NOT NULL,
  `quarantineStarts` varchar(255) NOT NULL,
  `quarantineEnds` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phonenumber` varchar(40) NOT NULL,
  `homenumber` varchar(40) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `fullname`, `email`, `phonenumber`, `homenumber`, `photo`) VALUES
(3, 'helmi', 'helmi123', 'admin', '', '', '', '', ''),
(9, 'samad', '1234', 'user', '', '', '', '', ''),
(10, 'lim', '123', 'user', 'dgdgdsg', '', '', '', '2143957952self-pic.jpg'),
(11, 'abc', '123', 'user', 'ABCDEFGH', 'abcdef@gmail.com', '0126452435', '04290847', '349456874greninja.png'),
(12, 'ikmal', '123', 'user', 'Ikmal Arief Azmi', 'ikmalarief.azmi@yahoo.com', '+60125380845', '039876543', ''),
(13, '', '102938', 'user', '', 'mnaimhaziq@gmail.com', '', '', ''),
(15, '', '1234', 'user', '', 'hafiz@gmail.com', '', '', ''),
(16, '', '123', 'user', '', 'adamrenfro@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_pass`
--

CREATE TABLE `visitor_pass` (
  `id` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor_pass`
--

INSERT INTO `visitor_pass` (`id`, `email`, `name`, `address`, `ic`, `phone`, `photo`) VALUES
(3, 'mnaimhaziq@gmail.com', 'Naim Haziq', 'No 380, Lorong KTC 4/10,', '321323123', '131231231', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`reportid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_pass`
--
ALTER TABLE `visitor_pass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quarantine`
--
ALTER TABLE `quarantine`
  MODIFY `reportid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visitor_pass`
--
ALTER TABLE `visitor_pass`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
