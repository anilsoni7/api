-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2019 at 12:00 PM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clickvdt_appusage`
--

-- --------------------------------------------------------

--
-- Table structure for table `matched_pattern_week1_female`
--

CREATE TABLE `matched_pattern_week1_female` (
  `w_id` int(100) NOT NULL,
  `w_name` varchar(20) NOT NULL,
  `w_date` varchar(10) NOT NULL,
  `open_time` varchar(10) NOT NULL,
  `close_time` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matched_pattern_week1_female`
--

INSERT INTO `matched_pattern_week1_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`) VALUES
(1, 'One UI Home', '24-10-2019', '00:24', '04:40', 8),
(2, 'CSC', '24-10-2019', '01:55', '03:35', 8),
(3, 'Second Sight', '24-10-2019', '01:20', '02:00', 8),
(4, 'Clock', '24-10-2019', '04:45', '04:56', 8),
(5, 'Drive', '24-10-2019', '06:10', '07:25', 8),
(6, 'Phone', '24-10-2019', '08:00', '08:21', 8),
(7, 'System UI', '24-10-2019', '08:43', '09:04', 8),
(8, 'One UI Home', '24-10-2019', '10:00', '10:22', 8),
(9, 'System UI', '24-10-2019', '10:45', '11:02', 8),
(10, 'WhatsApp', '24-10-2019', '12:54', '13:05', 8),
(11, 'Phone Services', '24-10-2019', '13:11', '14:52', 8),
(12, 'WiFi', '24-10-2019', '13:17', '13:39', 8),
(13, 'Configuration update', '24-10-2019', '15:35', '15:57', 8),
(14, 'Galaxy Sky Shooting', '24-10-2019', '17:07', '17:23', 8),
(15, 'Candy Crush Jelly', '24-10-2019', '19:21', '19:30', 8),
(16, 'Delicious World', '24-10-2019', '20:49', '21:00', 8),
(17, 'Hotstar', '24-10-2019', '22:24', '23:00', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_week1_female`
--
ALTER TABLE `matched_pattern_week1_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_week1_female`
--
ALTER TABLE `matched_pattern_week1_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
