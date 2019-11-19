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
-- Table structure for table `matched_pattern_week2_female`
--

CREATE TABLE `matched_pattern_week2_female` (
  `w_id` int(100) NOT NULL,
  `w_name` varchar(20) NOT NULL,
  `w_date` varchar(10) NOT NULL,
  `open_time` varchar(10) NOT NULL,
  `close_time` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matched_pattern_week2_female`
--

INSERT INTO `matched_pattern_week2_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`) VALUES
(1, 'One UI Home', '31-10-2019', '00:01', '04:35', 8),
(2, 'Facebook', '31-10-2019', '00:12', '00:28', 8),
(3, 'Clock', '31-10-2019', '04:35', '04:44', 8),
(4, 'Google Play Store', '31-10-2019', '05:03', '06:38', 8),
(5, 'Delicious World', '31-10-2019', '06:45', '07:45', 8),
(6, 'Phone', '31-10-2019', '08:05', '08:55', 8),
(7, 'System UI', '31-10-2019', '08:55', '09:19', 8),
(8, 'Chrome', '31-10-2019', '09:41', '09:55', 8),
(9, 'Candy Crush Jelly', '31-10-2019', '11:07', '11:18', 8),
(10, 'Galaxy Sky Shooting', '31-10-2019', '12:02', '12:16', 8),
(11, 'Phone Services', '31-10-2019', '12:54', '13:25', 8),
(12, 'Instagram', '31-10-2019', '13:38', '13:55', 8),
(13, 'Configuration update', '31-10-2019', '14:05', '14:13', 8),
(14, 'PhonePe', '31-10-2019', '15:35', '15:45', 8),
(15, 'Galaxy Sky Shooting', '31-10-2019', '17:59', '18:27', 8),
(16, 'Call', '31-10-2019', '18:47', '18:58', 8),
(17, 'Delicious World', '31-10-2019', '20:33', '21:19', 8),
(18, 'Delicious World', '31-10-2019', '21:53', '22:25', 8),
(19, 'Hotstar', '31-10-2019', '22:01', '22:18', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_week2_female`
--
ALTER TABLE `matched_pattern_week2_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_week2_female`
--
ALTER TABLE `matched_pattern_week2_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
