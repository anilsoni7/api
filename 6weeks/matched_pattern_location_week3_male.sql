-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2020 at 07:54 PM
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
-- Table structure for table `matched_pattern_location_week3_male`
--

CREATE TABLE `matched_pattern_location_week3_male` (
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
-- Dumping data for table `matched_pattern_location_week3_male`
--

INSERT INTO `matched_pattern_location_week3_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Phone', '09-02-2020', '08:49', '09:37', 11, '23.029213', '72.570387', 'office', 'male'),
(2, 'YouTube', '09-02-2020', '10:42', '11:14', 11, '23.029213', '72.570387', 'office', 'male'),
(3, 'WhatsApp', '09-02-2020', '10:28', '10:46', 11, '23.029213', '72.570387', 'office', 'male'),
(4, 'WhatsApp', '09-02-2020', '12:30', '12:43', 11, '23.029213', '72.570387', 'office', 'male'),
(5, 'Telegram', '09-02-2020', '13:42', '13:57', 11, '23.029213', '72.570387', 'office', 'male'),
(6, 'WiFi', '09-02-2020', '13:50', '13:59', 11, '23.029213', '72.570387', 'office', 'male'),
(7, 'WiFi', '09-02-2020', '14:26', '20:31', 11, '23.029213', '72.570387', 'office', 'male'),
(8, 'GTA: VC', '09-02-2020', '16:05', '16:38', 11, '23.030357', '72.517845', 'home', 'male'),
(9, 'Mobile Data', '09-02-2020', '18:31', '18:54', 11, '23.030357', '72.517845', 'home', 'male'),
(10, 'Google', '09-02-2020', '19:42', '20:22', 11, '23.029213', '72.570387', 'office', 'male'),
(11, 'Samsung Experience Home', '09-02-2020', '20:19', '20:44', 11, '23.078091', '72.575790', 'other', 'male'),
(12, 'Instagram', '09-02-2020', '22:41', '22:52', 11, '23.030357', '72.517845', 'home', 'male'),
(13, 'Samsung Experience Home', '09-02-2020', '23:32', '08:29', 11, '23.030357', '72.517845', 'home', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week3_male`
--
ALTER TABLE `matched_pattern_location_week3_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week3_male`
--
ALTER TABLE `matched_pattern_location_week3_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
