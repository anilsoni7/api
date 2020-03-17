-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 09:28 AM
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
-- Table structure for table `matched_pattern_location_week5_male`
--

CREATE TABLE `matched_pattern_location_week5_male` (
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
-- Dumping data for table `matched_pattern_location_week5_male`
--

INSERT INTO `matched_pattern_location_week5_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'One UI Home', '08-10-2019', '00:06', '04:25', 11, '23.030357', '72.517845', 'home', ''),
(2, 'Hotspot', '08-10-2019', '06:00', '09:25', 11, '23.030357', '72.517845', 'home', ''),
(3, 'Hotspot', '08-10-2019', '06:15', '08:22', 11, '23.030357', '72.517845', 'home', ''),
(4, 'Hotstar', '08-10-2019', '08:15', '08:29', 11, '23.030357', '72.517845', 'home', ''),
(5, 'Message', '08-10-2019', '09:23', '09:50', 11, '23.136209', '72.542297', 'other', ''),
(6, 'WiFi', '08-10-2019', '10:07', '18:53', 11, '23.029213', '72.570387', 'office', ''),
(7, 'Radio', '08-10-2019', '11:07', '13:21', 11, '23.029213', '72.570387', 'office', ''),
(8, 'Call', '08-10-2019', '12:19', '12:31', 11, '23.029213', '72.570387', 'office', ''),
(9, 'Candy Crush Jelly', '08-10-2019', '14:23', '14:34', 11, '23.029213', '72.570387', 'office', ''),
(10, 'YouTube', '08-10-2019', '15:06', '15:34', 11, '23.029213', '72.570387', 'office', ''),
(11, 'Facebook', '08-10-2019', '16:12', '16:54', 11, '23.029213', '72.570387', 'office', ''),
(12, 'Call', '08-10-2019', '18:48', '18:13', 11, '23.029213', '72.570387', 'office', ''),
(13, 'Phone', '08-10-2019', '19:30', '17:30', 11, '23.029213', '72.570387', 'office', ''),
(14, 'Mobile Data', '08-10-2019', '20:07', '23:51', 11, '23.136209', '72.542297', 'other', ''),
(15, 'Android system', '08-10-2019', '22:53', '05:16', 11, '23.030357', '72.517845', 'home', ''),
(16, 'One UI Home', '08-10-2019', '22:49', '23:15', 11, '23.030357', '72.517845', 'home', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week5_male`
--
ALTER TABLE `matched_pattern_location_week5_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week5_male`
--
ALTER TABLE `matched_pattern_location_week5_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
