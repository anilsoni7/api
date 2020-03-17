-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 08:56 AM
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
-- Table structure for table `matched_pattern_location_week2_male`
--

CREATE TABLE `matched_pattern_location_week2_male` (
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
-- Dumping data for table `matched_pattern_location_week2_male`
--

INSERT INTO `matched_pattern_location_week2_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'WhatsApp', '17-11-2019', '00:06', '01:26', 11, '23.030357', '72.517845', 'home', 'male'),
(2, 'WhatsApp', '17-11-2019', '08:15', '08:29', 11, '23.030357', '72.517845', 'home', 'male'),
(3, 'Instagram', '17-11-2019', '10:42', '11:03', 11, '23.029213', '72.570387', 'office', 'male'),
(4, 'Facebook', '17-11-2019', '11:18', '11:39', 11, '23.029213', '72.570387', 'office', 'male'),
(5, 'Music player', '17-11-2019', '12:40', '12:49', 11, '23.029213', '72.570387', 'office', 'male'),
(6, 'Facebook', '17-11-2019', '14:31', '14:47', 11, '23.029213', '72.570387', 'office', 'male'),
(7, 'Music player', '17-11-2019', '15:06', '15:34', 11, '23.029213', '72.570387', 'office', 'male'),
(8, 'Instagram', '17-11-2019', '17:30', '17:48', 11, '23.029213', '72.570387', 'office', 'male'),
(9, 'Facebook', '17-11-2019', '18:48', '18:13', 11, '23.029213', '72.570387', 'office', 'male'),
(10, 'Quora', '17-11-2019', '19:30', '17:30', 11, '23.029213', '72.570387', 'office', 'male'),
(11, 'WiFi', '17-11-2019', '20:07', '23:51', 11, '23.026250', '72.543940', 'other', 'male'),
(12, 'Music player', '17-11-2019', '22:06', '22:17', 11, '23.030357', '72.517845', 'home', 'male'),
(13, 'WhatsApp', '17-11-2019', '22:13', '22:30', 11, '23.030357', '72.517845', 'home', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week2_male`
--
ALTER TABLE `matched_pattern_location_week2_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week2_male`
--
ALTER TABLE `matched_pattern_location_week2_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
