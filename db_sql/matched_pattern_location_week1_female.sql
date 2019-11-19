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
(1, 'YouTube', '19-09-2019', '00:07', '01:00', 8, '23.134270', '72.582690', 'home', 'female'),
(2, 'One UI Home', '19-09-2019', '00:15', '04:45', 8, '23.134270', '72.582690', 'home', 'female'),
(3, 'Clock', '19-09-2019', '04:45', '04:59', 8, '23.134270', '72.582690', 'home', 'female'),
(4, 'GPS', '19-09-2019', '06:25', '06:59', 8, '23.134270', '72.582690', 'home', 'female'),
(5, 'Android system', '19-09-2019', '08:42', '09:04', 8, '23.030357', '72.582690', 'home', 'female'),
(6, 'Messages', '19-09-2019', '10:14', '10:48', 8, '23.029213', '72.570387', 'office', 'female'),
(7, 'Phone Services', '19-09-2019', '14:03', '14:47', 8, '23.029213', '72.570387', 'office', 'female'),
(8, 'Chrome', '19-09-2019', '13:18', '14:51', 8, '23.029213', '72.570387', 'office', 'female'),
(9, 'Galaxy Themes', '19-09-2019', '15:32', '15:42', 8, '23.029213', '72.570387', 'office', 'female'),
(10, 'Facebook', '19-09-2019', '16:02', '17:02', 8, '23.029213', '72.570387', 'office', 'female'),
(11, 'Galaxy Sky Shooting', '19-09-2019', '17:36', '18:03', 8, '23.029213', '72.570387', 'office', 'female'),
(12, 'Radio', '19-09-2019', '18:59', '19:45', 8, '23.067170', '72.555600', 'other', 'female'),
(13, 'Hotstar', '19-09-2019', '19:37', '20:09', 8, '23.112650', '72.583618', 'other', 'female'),
(14, 'Mobile Data', '19-09-2019', '21:50', '05:15', 8, '23.134270', '72.582690', 'home', 'female'),
(15, 'Hotspot', '19-09-2019', '22:46', '01:13', 8, '23.134270', '72.582690', 'home', 'female');

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
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
