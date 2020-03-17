-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 07:49 AM
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
-- Table structure for table `matched_pattern_location_week5_female`
--

CREATE TABLE `matched_pattern_location_week5_female` (
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
-- Dumping data for table `matched_pattern_location_week5_female`
--

INSERT INTO `matched_pattern_location_week5_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'One UI Home', '08-10-2019', '00:00', '02:58', 8, '23.134270', '72.582690', 'home', 'Female'),
(2, 'Facebook', '08-10-2019', '01:23', '07:12', 8, '23.134270', '72.582690', 'home', 'Female'),
(3, 'Second Sight', '08-10-2019', '02:25', '07:00', 8, '23.134270', '72.582690', 'home', 'Female'),
(4, 'Clock', '08-10-2019', '04:40', '07:08', 8, '23.134270', '72.582690', 'home', 'Female'),
(5, 'Radio', '08-10-2019', '05:05', '07:04', 8, '23.134270', '72.582690', 'home', 'Female'),
(6, 'WhatsApp', '08-10-2019', '07:45', '08:41', 8, '23.134270', '72.582690', 'home', 'Female'),
(7, 'WhatsApp', '08-10-2019', '08:32', '08:41', 8, '23.134270', '72.582690', 'home', 'Female'),
(8, 'Galaxy Sky Shooting', '08-10-2019', '08:11', '08:32', 8, '23.134270', '72.582690', 'home', 'Female'),
(9, 'WiFi', '08-10-2019', '10:03', '13:04', 8, '23.029213', '72.570387', 'office', 'Female'),
(10, 'Instagram', '08-10-2019', '11:50', '12:06', 8, '23.029213', '72.570387', 'office', 'Female'),
(11, 'Android system', '08-10-2019', '12:46', '12:54', 8, '23.029213', '72.570387', 'office', 'Female'),
(12, 'YouTube', '08-10-2019', '14:40', '15:21', 8, '23.029213', '72.570387', 'office', 'Female'),
(13, 'YouTube', '08-10-2019', '15:06', '15:28', 8, '23.029213', '72.570387', 'office', 'Female'),
(14, 'Candy Crush Jelly', '08-10-2019', '16:32', '16:44', 8, '23.029213', '72.570387', 'office', 'Female'),
(15, 'Candy Crush Jelly', '08-10-2019', '17:15', '18:36', 8, '23.029213', '72.570387', 'office', 'Female'),
(16, 'YouTube', '08-10-2019', '19:12', '20:02', 8, '23.067170', '72.555600', 'other', 'Female'),
(17, 'Phone Services', '08-10-2019', '21:31', '21:40', 8, '23.134270', '72.582690', 'home', 'Female'),
(18, 'Hotstar', '08-10-2019', '22:30', '07:01', 8, '23.134270', '72.582690', 'home', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week5_female`
--
ALTER TABLE `matched_pattern_location_week5_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week5_female`
--
ALTER TABLE `matched_pattern_location_week5_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
