-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 07:12 AM
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
-- Table structure for table `matched_pattern_location_week2_female`
--

CREATE TABLE `matched_pattern_location_week2_female` (
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
-- Dumping data for table `matched_pattern_location_week2_female`
--

INSERT INTO `matched_pattern_location_week2_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Candy Crush Jelly', '17-11-2019', '00:47', '01:13', 8, '23.134270', '72.582690', 'home', 'Female'),
(2, 'Second Sight', '17-11-2019', '01:20', '02:00', 8, '23.134270', '72.582690', 'home', 'Female'),
(3, 'YouTube', '17-11-2019', '02:02', '02:34', 8, '23.134270', '72.582690', 'home', 'Female'),
(4, 'Clock', '17-11-2019', '04:45', '04:56', 8, '23.134270', '72.582690', 'home', 'Female'),
(5, 'Phone Services', '17-11-2019', '04:11', '04:35', 8, '23.134270', '72.582690', 'home', 'Female'),
(6, 'Phone Services', '17-11-2019', '05:06', '06:33', 8, '23.134270', '72.582690', 'home', 'Female'),
(7, 'Phone', '17-11-2019', '08:00', '08:21', 8, '23.134270', '72.582690', 'home', 'Female'),
(8, 'System UI', '17-11-2019', '08:43', '09:04', 8, '23.134270', '72.582690', 'home', 'Female'),
(9, 'Mobile Data', '17-11-2019', '09:14', '09:27', 8, '23.021840', '72.530840', 'other', 'Female'),
(10, 'Mobile Data', '17-11-2019', '10:29', '10:53', 8, '23.029213', '72.570387', 'office', 'Female'),
(11, 'Hotstar', '17-11-2019', '11:37', '11:58', 8, '23.029213', '72.570387', 'office', 'Female'),
(12, 'Delicious World', '17-11-2019', '12:55', '13:21', 8, '23.029213', '72.570387', 'office', 'Female'),
(13, 'Phone Services', '17-11-2019', '14:09', '14:23', 8, '23.029213', '72.570387', 'office', 'Female'),
(14, 'YouTube', '17-11-2019', '15:49', '16:18', 8, '23.029213', '72.570387', 'office', 'Female'),
(15, 'Hotstar', '17-11-2019', '16:10', '16:31', 8, '23.029213', '72.570387', 'office', 'Female'),
(16, 'Hotstar', '17-11-2019', '18:42', '18:50', 8, '23.049540', '72.664830', 'office', 'Female'),
(17, 'Radio', '17-11-2019', '19:46', '19:54', 8, '23.021840', '72.530840', 'other', 'Female'),
(18, 'Messages', '17-11-2019', '21:38', '21:58', 8, '23.134270', '72.582690', 'home', 'Female'),
(19, 'One UI Home', '17-11-2019', '22:20', '23:01', 8, '23.134270', '72.582690', 'home', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week2_female`
--
ALTER TABLE `matched_pattern_location_week2_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week2_female`
--
ALTER TABLE `matched_pattern_location_week2_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
