-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2019 at 08:07 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-voting_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `election_table`
--

DROP TABLE IF EXISTS `election_table`;
CREATE TABLE IF NOT EXISTS `election_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL,
  `party` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election_table`
--

INSERT INTO `election_table` (`id`, `lastname`, `firstname`, `category`, `vote_count`, `party`) VALUES
(1, 'Analogbei', 'Chibueze', 'presidency', 1, 'PDP'),
(2, 'Joda', 'Opemipo', 'governorship', 1, 'APC'),
(3, 'Oni', 'Adeola', 'senate', NULL, ''),
(4, 'Adebayo', 'Tola', 'presidency', 0, 'APC');

-- --------------------------------------------------------

--
-- Table structure for table `otp_table`
--

DROP TABLE IF EXISTS `otp_table`;
CREATE TABLE IF NOT EXISTS `otp_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_expired` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `otp` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_table`
--

INSERT INTO `otp_table` (`id`, `is_expired`, `created_at`, `otp`) VALUES
(1, 0, '2019-08-31 19:59:33', 501329),
(2, 1, '2019-08-31 20:01:57', 309651),
(3, 1, '2019-08-31 22:02:07', 350206),
(4, 1, '2019-08-31 22:03:56', 757351),
(5, 1, '2019-08-31 22:06:48', 394558),
(6, 1, '2019-08-31 22:08:12', 788953),
(7, 1, '2019-08-31 22:21:51', 720540),
(8, 1, '2019-09-01 10:08:12', 379421),
(9, 1, '2019-09-01 11:34:51', 401556),
(10, 1, '2019-09-01 11:39:02', 618489),
(11, 1, '2019-09-01 11:41:46', 416910),
(12, 1, '2019-09-01 11:45:49', 430935),
(13, 1, '2019-09-01 11:50:56', 650173),
(14, 1, '2019-09-01 11:56:56', 981580),
(15, 1, '2019-09-01 11:59:42', 223497),
(16, 0, '2019-09-01 12:06:16', 424424),
(17, 1, '2019-09-01 12:10:29', 180528),
(18, 1, '2019-09-01 12:23:13', 821072),
(19, 1, '2019-09-01 16:07:35', 340521),
(20, 1, '2019-09-01 18:51:04', 542317),
(21, 1, '2019-09-01 18:51:52', 443684),
(22, 1, '2019-10-08 19:43:25', 627224),
(23, 1, '2019-10-10 18:55:02', 466308);

-- --------------------------------------------------------

--
-- Table structure for table `track_table`
--

DROP TABLE IF EXISTS `track_table`;
CREATE TABLE IF NOT EXISTS `track_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_table`
--

INSERT INTO `track_table` (`id`, `category`, `user_id`) VALUES
(1, 'presidency', 8),
(2, 'governorship', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state_of_origin` varchar(14) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `fingerprint_capture` tinyint(1) NOT NULL,
  `facial_capture` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `state_of_origin`, `dob`, `occupation`, `fingerprint_capture`, `facial_capture`) VALUES
(3, 'Olamide', 'Akinola', 'Olaola@gmail.com', 'olamide', NULL, NULL, NULL, NULL, 1, 1),
(2, 'Emeka', 'Ikele', 'emike@gmail.com', 'emeka', NULL, NULL, NULL, NULL, 1, 1),
(4, 'Oyinkansola', 'Babatunde', 'oyinde@gmail.com', 'oyinkansola', NULL, NULL, NULL, NULL, 0, 0),
(5, 'Ahmed', 'Lawal', 'ahwal@yahoo.com', 'ahmed', NULL, NULL, NULL, NULL, 0, 0),
(6, 'Leonard', 'Okoli', 'leoli@gmail.com', 'leonard', NULL, NULL, NULL, NULL, 0, 0),
(7, 'Timi', 'Fasipe', 'tim@yahoo.com', 'timi', NULL, NULL, NULL, NULL, 0, 0),
(8, 'Victor', 'Ogunlusi', 'vicbob360@gmail.com', 'victor', '4 Church Street Agbede', 'Delta', '1996-01-01', 'student', 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
