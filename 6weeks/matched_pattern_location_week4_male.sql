-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2020 at 07:55 PM
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
-- Table structure for table `matched_pattern_location_week4_male`
--

CREATE TABLE `matched_pattern_location_week4_male` (
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
-- Dumping data for table `matched_pattern_location_week4_male`
--

INSERT INTO `matched_pattern_location_week4_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Samsung Pay Mini', '16-02-2020', '07:00', '07:53', 11, '23.030357', '72.517845', 'home', 'male'),
(2, 'YouTube', '16-02-2020', '09:49', '10:05', 11, '23.029213', '72.570387', 'office', 'male'),
(3, 'Telegram', '16-02-2020', '11:58', '12:10', 11, '23.029213', '72.570387', 'office', 'male'),
(4, 'WhatsApp', '16-02-2020', '12:27', '13:04', 11, '23.029213', '72.570387', 'office', 'male'),
(5, 'WhatsApp', '16-02-2020', '13:32', '13:57', 11, '23.029213', '72.570387', 'office', 'male'),
(6, 'Samsung Experience Home', '16-02-2020', '14:35', '14:51', 11, '23.029213', '72.570387', 'office', 'male'),
(7, 'Phone', '16-02-2020', '16:04', '17:06', 11, '23.029213', '72.570387', 'office', 'male'),
(8, 'WiFi', '16-02-2020', '16:33', '17:33', 11, '23.029213', '72.570387', 'office', 'male'),
(9, 'WiFi', '16-02-2020', '17:41', '19:26', 11, '23.029213', '72.570387', 'office', 'male'),
(10, 'TikTok', '16-02-2020', '19:59', '20:12', 11, '23.029213', '72.570387', 'office', 'male'),
(11, 'Messages', '16-02-2020', '20:41', '21:12', 11, '23.078091', '72.575790', 'other', 'male'),
(12, 'Mobile Data', '16-02-2020', '21:12', '21:25', 11, '23.078091', '72.575790', 'other', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week4_male`
--
ALTER TABLE `matched_pattern_location_week4_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week4_male`
--
ALTER TABLE `matched_pattern_location_week4_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
