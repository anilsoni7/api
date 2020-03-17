-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 07:07 AM
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
-- Table structure for table `matched_pattern_location_week1_female`
--

CREATE TABLE `matched_pattern_location_week1_female` (
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
-- Dumping data for table `matched_pattern_location_week1_female`
--

INSERT INTO `matched_pattern_location_week1_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'WhatsApp', '10-11-2019', '00:15', '00:31', 8, '23.134270', '72.582690', 'home', 'Female'),
(2, 'Messages', '10-11-2019', '02:28', '03:22', 8, '23.134270', '72.582690', 'home', 'Female'),
(3, 'One UI Home', '10-11-2019', '03:22', '05:06', 8, '23.134270', '72.582690', 'home', 'Female'),
(4, 'Clock', '10-11-2019', '04:35', '06:14', 8, '23.134270', '72.582690', 'home', 'Female'),
(5, 'Mobile Data', '10-11-2019', '06:14', '06:28', 8, '23.134270', '72.582690', 'home', 'Female'),
(6, 'File Viewer', '10-11-2019', '07:50', '08:06', 8, '23.134270', '72.582690', 'home', 'Female'),
(7, 'File Viewer', '10-11-2019', '08:41', '08:55', 8, '23.134270', '72.582690', 'home', 'Female'),
(8, 'Hotstar', '10-11-2019', '10:12', '10:35', 8, '23.029213', '72.570387', 'office', 'Female'),
(9, 'Hotstar', '10-11-2019', '11:31', '11:40', 8, '23.029213', '72.570387', 'office', 'Female'),
(10, 'Delicious World', '10-11-2019', '12:52', '13:30', 8, '23.029213', '72.570387', 'office', 'Female'),
(11, 'WhatsApp', '10-11-2019', '13:27', '13:57', 8, '23.029213', '72.570387', 'office', 'Female'),
(12, 'OneDrive', '10-11-2019', '14:29', '14:37', 8, '23.029213', '72.570387', 'office', 'Female'),
(13, 'Hotstar', '10-11-2019', '16:10', '16:31', 8, '23.029213', '72.570387', 'office', 'Female'),
(14, 'Hotstar', '10-11-2019', '17:22', '17:30', 8, '23.029213', '72.570387', 'office', 'Female'),
(15, 'Radio', '10-11-2019', '19:46', '19:54', 8, '23.021840', '72.530840', 'other', 'Female'),
(16, 'Hotstar', '10-11-2019', '20:15', '20:31', 8, '23.134270', '72.582690', 'home', 'Female'),
(17, 'Delicious World', '10-11-2019', '22:15', '22:58', 8, '23.134270', '72.582690', 'home', 'Female'),
(18, 'One UI Home', '10-11-2019', '23:04', '02:21', 8, '23.134270', '72.582690', 'home', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week1_female`
--
ALTER TABLE `matched_pattern_location_week1_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week1_female`
--
ALTER TABLE `matched_pattern_location_week1_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
