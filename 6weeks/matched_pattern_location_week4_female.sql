-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 07:43 AM
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
-- Table structure for table `matched_pattern_location_week4_female`
--

CREATE TABLE `matched_pattern_location_week4_female` (
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
-- Dumping data for table `matched_pattern_location_week4_female`
--

INSERT INTO `matched_pattern_location_week4_female` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`, `latitude`, `longitude`, `location`, `gender`) VALUES
(1, 'Gallery', '16-02-2020', '00:06', '00:15', 8, '23.134270', '72.582690', 'home', ''),
(2, 'One UI Home', '16-02-2020', '00:52', '01:01', 8, '23.134270', '72.582690', 'home', ''),
(3, 'One UI Home', '16-02-2020', '02:53', '03:19', 8, '23.134270', '72.582690', 'home', ''),
(4, 'Chrome', '16-02-2020', '04:28', '07:24', 8, '23.134270', '72.582690', 'home', ''),
(5, 'Drive', '16-02-2020', '06:06', '07:49', 8, '23.134270', '72.582690', 'home', ''),
(6, 'Mobile Data', '16-02-2020', '08:19', '09:42', 8, '23.134270', '72.582690', 'home', ''),
(7, 'WiFi', '16-02-2020', '10:23', '10:51', 8, '23.029213', '72.570387', 'office', ''),
(8, 'Delicious World', '16-02-2020', '11:35', '12:17', 8, '23.029213', '72.570387', 'office', ''),
(9, 'Instagram', '16-02-2020', '12:43', '12:57', 8, '23.029213', '72.570387', 'office', ''),
(10, 'Phone', '16-02-2020', '14:31', '15:06', 8, '23.029213', '72.570387', 'office', ''),
(11, 'Messages', '16-02-2020', '15:46', '17:09', 8, '23.134270', '72.582690', 'home', ''),
(12, 'System UI', '16-02-2020', '17:58', '18:58', 8, '23.029213', '72.570387', 'office', ''),
(13, 'Hotstar', '16-02-2020', '18:17', '18:41', 8, '23.029213', '72.570387', 'office', ''),
(14, 'Call', '16-02-2020', '21:00', '22:09', 8, '23.134270', '72.582690', 'home', ''),
(15, 'Phone', '16-02-2020', '21:29', '22:05', 8, '23.134270', '72.582690', 'home', ''),
(16, 'Candy Crush Jelly', '16-02-2020', '22:46', '22:57', 8, '23.134270', '72.582690', 'home', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_location_week4_female`
--
ALTER TABLE `matched_pattern_location_week4_female`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_location_week4_female`
--
ALTER TABLE `matched_pattern_location_week4_female`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
