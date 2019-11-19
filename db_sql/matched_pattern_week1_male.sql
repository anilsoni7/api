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
-- Table structure for table `matched_pattern_week1_male`
--

CREATE TABLE `matched_pattern_week1_male` (
  `w_id` int(100) NOT NULL,
  `w_name` varchar(20) NOT NULL,
  `w_date` varchar(10) NOT NULL,
  `open_time` varchar(10) NOT NULL,
  `close_time` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matched_pattern_week1_male`
--

INSERT INTO `matched_pattern_week1_male` (`w_id`, `w_name`, `w_date`, `open_time`, `close_time`, `user_id`) VALUES
(1, 'Phone', '16-11-2019', '08:49', '09:37', 11),
(2, 'VidMate', '16-11-2019', '10:38', '10:47', 11),
(3, 'Telegram', '16-11-2019', '11:58', '12:10', 11),
(4, 'WhatsApp', '16-11-2019', '12:12', '12:42', 11),
(5, 'Telegram', '16-11-2019', '13:58', '14:10', 11),
(6, 'WiFi', '16-11-2019', '13:50', '13:59', 11),
(7, 'WiFi', '16-11-2019', '14:26', '20:31', 11),
(8, 'Contacts', '16-11-2019', '16:01', '16:41', 11),
(9, 'Contacts', '16-11-2019', '17:55', '18:03', 11),
(10, 'Google', '16-11-2019', '18:08', '18:16', 11),
(11, 'Google', '16-11-2019', '19:42', '20:22', 11),
(12, 'Samsung Experience H', '16-11-2019', '20:19', '20:44', 11),
(13, 'Facebook', '16-11-2019', '22:15', '22:24', 11),
(14, 'Samsung Experience H', '16-11-2019', '23:32', '08:29', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matched_pattern_week1_male`
--
ALTER TABLE `matched_pattern_week1_male`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matched_pattern_week1_male`
--
ALTER TABLE `matched_pattern_week1_male`
  MODIFY `w_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
