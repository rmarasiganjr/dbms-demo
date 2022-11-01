-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 04:41 PM
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
-- Database: `cpe202_lab7_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_credentials`
--

CREATE TABLE `account_credentials` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_credentials`
--

INSERT INTO `account_credentials` (`id`, `username`, `email`, `password`) VALUES
(1, 'undefined', 'testme312@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `temp_tb`
--

CREATE TABLE `temp_tb` (
  `id` int(10) NOT NULL,
  `temperature` double NOT NULL,
  `device_id` varchar(10) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_tb`
--

INSERT INTO `temp_tb` (`id`, `temperature`, `device_id`, `date`) VALUES
(20220001, 32.2, 'RASPI_001', 'October 10, 2022'),
(20220002, 98.2, 'RASPI_0002', 'October 26, 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_credentials`
--
ALTER TABLE `account_credentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `temp_tb`
--
ALTER TABLE `temp_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_credentials`
--
ALTER TABLE `account_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_tb`
--
ALTER TABLE `temp_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20220003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
