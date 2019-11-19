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
(1, 'Candy Crush Jelly', '16-11-2019', '00:47', '01:13', 8, '23.134270', '72.582690', 'home', 'female'),
(2, 'Second Sight', '16-11-2019', '01:20', '02:00', 8, '23.134270', '72.582690', 'home', 'female'),
(4, 'Clock', '16-11-2019', '04:45', '04:56', 8, '23.134270', '72.582690', 'home', 'female'),
(5, 'Drive', '16-11-2019', '06:10', '07:25', 8, '23.134270', '72.582690', 'home', 'female'),
(6, 'Phone', '16-11-2019', '08:00', '08:21', 8, '23.134270', '72.582690', 'home', 'female'),
(7, 'System UI', '16-11-2019', '08:43', '09:04', 8, '23.134270', '72.582690', 'home', 'female'),
(8, 'Radio', '16-11-2019', '10:00', '10:22', 8, '23.021840', '72.530840', 'other', 'female'),
(9, 'System UI', '16-11-2019', '11:16', '11:52', 8, '23.029213', '72.570387', 'office', 'female'),
(10, 'WhatsApp', '16-11-2019', '11:46', '11:57', 8, '23.029213', '72.570387', 'office', 'female'),
(11, 'YouTube', '16-11-2019', '13:28', '13:50', 8, '23.029213', '72.570387', 'office', 'female'),
(12, 'WhatsApp', '16-11-2019', '14:46', '14:54', 8, '23.029213', '72.570387', 'office', 'female'),
(13, 'Sudoku', '16-11-2019', '15:30', '15:38', 8, '23.029213', '72.570387', 'office', 'female'),
(14, 'Configuration update', '16-11-2019', '16:20', '16:31', 8, '23.029213', '72.570387', 'office', 'female'),
(15, 'Galaxy Sky Shooting', '16-11-2019', '17:07', '17:23', 8, '23.029213', '72.570387', 'office', 'female'),
(16, 'OneDrive', '16-11-2019', '18:27', '18:52', 8, '23.029213', '72.570387', 'office', 'female'),
(17, 'Delicious World', '16-11-2019', '20:49', '21:00', 8, '23.021840', '72.530840', 'other', 'female'),
(18, 'Hotstar', '16-11-2019', '22:24', '23:00', 8, '23.134270', '72.582690', 'home', 'female');

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
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;