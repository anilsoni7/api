-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2019 at 06:33 AM
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
-- Table structure for table `matched_pattern_location_week1_male`
--

CREATE TABLE `matched_pattern_location_week1_male` (
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
-- Dumping data for table `matched_pattern_location_week1_male`
--

INSERT INTO `matched_pattern_location_week1_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(28, 'Samsung Experience H', '02-10-2019', '20:00', '20:44', 11, '23.030357', '72.517845', 'home', 'male'),
(27, 'Chrome', '02-10-2019', '19:40', '20:03', 11, '23.078091', '72.575790', 'other', 'male'),
(26, 'Google', '02-10-2019', '18:02', '18:27', 11, '23.029213', '72.570387', 'office', 'male'),
(25, 'Contacts', '02-10-2019', '17:51', '18:00', 11, '23.029213', '72.570387', 'office', 'male'),
(24, 'Call', '02-10-2019', '16:01', '16:32', 11, '23.029213', '72.570387', 'office', 'male'),
(23, 'Mobile Data', '02-10-2019', '15:21', '19:31', 11, '23.029213', '72.570387', 'office', 'male'),
(22, 'Telegram', '02-10-2019', '13:50', '14:39', 11, '23.029213', '72.570387', 'office', 'male'),
(21, 'WiFi', '02-10-2019', '13:49', '14:40', 11, '23.029213', '72.570387', 'office', 'male'),
(20, 'WhatsApp', '02-10-2019', '12:12', '12:42', 11, '23.029213', '72.570387', 'office', 'male'),
(19, 'Telegram', '02-10-2019', '11:58', '12:10', 11, '23.029213', '72.570387', 'office', 'male'),
(18, 'VidMate', '02-10-2019', '10:15', '10:40', 11, '23.029213', '72.570387', 'office', 'male'),
(17, 'Mobile Data', '02-10-2019', '08:01', '08:37', 11, '23.078091', '72.575790', 'other', 'male'),
(15, 'Samsung Experience H', '02-10-2019', '00:15', '05:00', 11, '23.030357', '72.517845', 'home', 'male'),
(16, 'WhatsApp', '02-10-2019', '07:10', '07:30', 11, '23.030357', '72.517845', 'home', 'male'),
(29, 'Facebook', '02-10-2019', '22:11', '22:29', 11, '23.030357', '72.517845', 'home', 'male'),
(30, 'Samsung Experience H', '02-10-2019', '22:32', '07:29', 11, '23.030357', '72.517845', 'home', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week1_male`
--
ALTER TABLE `matched_pattern_location_week1_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week1_male`
--
ALTER TABLE `matched_pattern_location_week1_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
