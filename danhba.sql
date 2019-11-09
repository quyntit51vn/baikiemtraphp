-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 09, 2019 at 02:38 PM
-- Server version: 5.6.44
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danhba`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhba`
--

CREATE TABLE `danhba` (
  `id` int(11) NOT NULL,
  `ten` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sodienthoai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhba`
--

INSERT INTO `danhba` (`id`, `ten`, `email`, `sodienthoai`) VALUES
(1, 'Quy', 'quyproi51vn@gmail.com', '0974922032'),
(2, 'Quy', 'quyproi51@gmail.com', '0974922032'),
(4, 'hue', 'hue@gmail.com', '0974922032');

-- --------------------------------------------------------

--
-- Table structure for table `danhba_nhan`
--

CREATE TABLE `danhba_nhan` (
  `id` int(11) NOT NULL,
  `danh_ba_id` int(11) NOT NULL,
  `nhan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhba_nhan`
--

INSERT INTO `danhba_nhan` (`id`, `danh_ba_id`, `nhan_id`) VALUES
(41, 1, 1),
(42, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhan`
--

CREATE TABLE `nhan` (
  `id` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhan`
--

INSERT INTO `nhan` (`id`, `ten`) VALUES
(1, 'ban be'),
(21, 'quy'),
(22, 'Quy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhba`
--
ALTER TABLE `danhba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhba_nhan`
--
ALTER TABLE `danhba_nhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhba_nhan_ibfk_1` (`danh_ba_id`),
  ADD KEY `danhba_nhan_ibfk_2` (`nhan_id`);

--
-- Indexes for table `nhan`
--
ALTER TABLE `nhan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhba`
--
ALTER TABLE `danhba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danhba_nhan`
--
ALTER TABLE `danhba_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nhan`
--
ALTER TABLE `nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `danhba_nhan`
--
ALTER TABLE `danhba_nhan`
  ADD CONSTRAINT `danhba_nhan_ibfk_1` FOREIGN KEY (`danh_ba_id`) REFERENCES `danhba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danhba_nhan_ibfk_2` FOREIGN KEY (`nhan_id`) REFERENCES `nhan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
