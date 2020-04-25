-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2020 at 07:58 PM
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
-- Table structure for table `matched_pattern_location_week6_female`
--

CREATE TABLE `matched_pattern_location_week6_female` (
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
-- Dumping data for table `matched_pattern_location_week6_female`
--

INSERT INTO `matched_pattern_location_week6_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Delicious World', '18-10-2019', '00:01', '00:34', 8, '23.134270', '72.582690', 'home', 'Female'),
(2, 'One UI Home', '18-10-2019', '00:37', '04:36', 8, '23.134270', '72.582690', 'home', 'Female'),
(3, 'One UI Home', '18-10-2019', '01:30', '07:01', 8, '23.134270', '72.582690', 'home', 'Female'),
(4, 'One UI Home', '18-10-2019', '03:44', '04:31', 8, '23.134270', '72.582690', 'home', 'Female'),
(5, 'Clock', '18-10-2019', '05:06', '05:25', 8, '23.134270', '72.582690', 'home', 'Female'),
(6, 'Delicious World', '18-10-2019', '07:06', '07:24', 8, '23.134270', '72.582690', 'home', 'Female'),
(7, 'Radio', '18-10-2019', '09:28', '10:02', 8, '23.021840', '72.530840', 'other', 'Female'),
(8, 'Radio', '18-10-2019', '10:11', '10:21', 8, '23.029213', '72.570387', 'office', 'Female'),
(9, 'Phone', '18-10-2019', '11:15', '12:23', 8, '23.029213', '72.570387', 'office', 'Female'),
(10, 'Messages', '18-10-2019', '12:22', '12:33', 8, '23.029213', '72.570387', 'office', 'Female'),
(11, 'YouTube', '18-10-2019', '13:12', '13:21', 8, '23.029213', '72.570387', 'office', 'Female'),
(12, 'Hotstar', '18-10-2019', '15:30', '15:43', 8, '23.029213', '72.570387', 'office', 'Female'),
(13, 'Candy Crush Jelly', '18-10-2019', '15:40', '15:49', 8, '23.029213', '72.570387', 'office', 'Female'),
(14, 'Candy Crush Jelly', '18-10-2019', '17:06', '17:30', 8, '23.029213', '72.570387', 'office', 'Female'),
(15, 'Mobile Data', '18-10-2019', '18:44', '21:16', 8, '23.049540', '72.664830', 'office', 'Female'),
(16, 'Mobile Data', '18-10-2019', '19:10', '19:18', 8, '23.067170', '72.555600', 'other', 'Female'),
(17, 'Delicious World', '18-10-2019', '19:11', '19:29', 8, '23.067170', '72.555600', 'other', 'Female'),
(18, 'WiFi', '18-10-2019', '21:47', '01:09', 8, '23.134270', '72.582690', 'home', 'Female'),
(19, 'Phone', '18-10-2019', '22:48', '23:25', 8, '23.134270', '72.582690', 'home', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week6_female`
--
ALTER TABLE `matched_pattern_location_week6_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week6_female`
--
ALTER TABLE `matched_pattern_location_week6_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
