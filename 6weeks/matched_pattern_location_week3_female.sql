-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2020 at 07:53 PM
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
-- Table structure for table `matched_pattern_location_week3_female`
--

CREATE TABLE `matched_pattern_location_week3_female` (
  `w_id` int(100) NOT NULL,
  `w_name` varchar(50) NOT NULL,
  `w_date` varchar(20) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `close_time` varchar(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `location` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matched_pattern_location_week3_female`
--

INSERT INTO `matched_pattern_location_week3_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Chrome', '09-02-2020', '00:04', '00:28', 8, '23.134270', '72.582690', 'home', ''),
(2, 'One UI Home', '09-02-2020', '01:42', '04:29', 8, '23.134270', '72.582690', 'home', ''),
(3, 'One UI Home', '09-02-2020', '04:33', '07:02', 8, '23.134270', '72.582690', 'home', ''),
(4, 'WhatsApp', '09-02-2020', '05:46', '06:41', 8, '23.134270', '72.582690', 'home', ''),
(5, 'Drive', '09-02-2020', '07:03', '07:56', 8, '23.134270', '72.582690', 'home', ''),
(6, 'GPS', '09-02-2020', '09:35', '10:21', 8, '23.082439', '72.567230', 'other', ''),
(7, 'WiFi', '09-02-2020', '10:48', '14:25', 8, '23.029213', '72.570387', 'office', ''),
(8, 'WiFi', '09-02-2020', '11:40', '12:47', 8, '23.029213', '72.570387', 'office', ''),
(9, 'Phone', '09-02-2020', '11:57', '12:54', 8, '23.029213', '72.570387', 'office', ''),
(10, 'Candy Crush Jelly', '09-02-2020', '13:27', '13:37', 8, '23.029213', '72.570387', 'office', ''),
(11, 'Candy Crush Jelly', '09-02-2020', '14:52', '15:00', 8, '23.029213', '72.570387', 'office', ''),
(12, 'Chrome', '09-02-2020', '15:13', '15:59', 8, '23.029213', '72.570387', 'office', ''),
(13, 'Candy Crush Jelly', '09-02-2020', '15:26', '15:42', 8, '23.029213', '72.570387', 'office', ''),
(14, 'Candy Crush Jelly', '09-02-2020', '17:02', '17:27', 8, '23.029213', '72.570387', 'office', ''),
(15, 'System UI', '09-02-2020', '17:25', '17:48', 8, '23.029213', '72.570387', 'office', ''),
(16, 'System UI', '09-02-2020', '18:10', '18:42', 8, '23.029213', '72.570387', 'office', ''),
(17, 'Mobile Data', '09-02-2020', '20:14', '23:29', 8, '23.021840', '72.530840', 'other', ''),
(18, 'WPS Office', '09-02-2020', '22:34', '22:56', 8, '23.134270', '72.582690', 'home', ''),
(19, 'One UI Home', '09-02-2020', '23:24', '23:34', 8, '23.134270', '72.582690', 'home', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week3_female`
--
ALTER TABLE `matched_pattern_location_week3_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week3_female`
--
ALTER TABLE `matched_pattern_location_week3_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
