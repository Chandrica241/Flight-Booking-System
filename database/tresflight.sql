-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofbms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$AFMhdlwEaWjjBzoCfdq62uNQqopNGW4vk8GXrDBNGKPAgB0mON0TC');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Biman Bangladesh', 72),
(2, 'US-Bangla', 72),
(3, 'Novoair', 72),
(4, 'Air Astra', 72);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Barisal'),
('Chittagong'),
('Cox\'s Bazar'),
('Dhaka'),
('Rajshahi'),
('Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `email`, `q1`, `q2`, `q3`, `rate`) VALUES
(1, 'oishee@gmail.com', 'There is an issue with round trip booking. Please fix it.', 'Friend/Relative', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `duration` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `seats` varchar(110) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `source`, `destination`, `departure`, `arrival`, `duration`, `airline`, `seats`, `price`, `status`, `issue`) VALUES
(1, 1, 'Dhaka', 'Sylhet', '2024-04-27 08:00:00', '2024-04-27 09:00:00', '1 hour', 'Biman Bangladesh', '72', 3200, '', ''),
(2, 1, 'Dhaka', 'Sylhet', '2024-04-27 10:00:00', '2024-04-27 11:00:00', '1 hour', 'US-Bangla', '72', 3400, '', ''),
(3, 1, 'Dhaka', 'Chittagong', '2024-04-27 08:30:00', '2024-04-27 09:30:00', '1 hour', 'Novoair', '72', 3500, '', ''),
(4, 1, 'Dhaka', 'Chittagong', '2024-04-27 11:00:00', '2024-04-27 12:00:00', '1 hour', 'US-Bangla', '72', 3450, '', ''),
(5, 1, 'Dhaka', 'Cox\'s Bazar', '2024-04-27 08:00:00', '2024-04-27 09:00:00', '2 hour', 'Biman Bangladesh', '72', 4000, '', ''),
(6, 1, 'Dhaka', 'Cox\'s Bazar', '2024-04-27 10:00:00', '2024-04-27 12:00:00', '2 hour', 'US-Bangla', '72', 4200, '', ''),
(7, 1, 'Dhaka', 'Rajshahi', '2024-04-27 09:30:00', '2024-04-27 10:30:00', '1 hour', 'Air Astra', '72', 3400, '', ''),
(8, 1, 'Dhaka', 'Barisal', '2024-04-27 11:00:00', '2024-04-27 11:40:00', '40 mins', 'Novoair', '72', 2500, '', ''),
(9, 1, 'Sylhet', 'Dhaka', '2024-04-27 08:00:00', '2024-04-27 09:00:00', '1 hour', 'Biman Bangladesh', '72', 3200, '', ''),
(10, 1, 'Sylhet', 'Dhaka', '2024-04-27 10:00:00', '2024-04-27 11:00:00', '1 hour', 'US-Bangla', '72', 3400, '', ''),
(11, 1, 'Chittagong', 'Dhaka', '2024-04-27 08:30:00', '2024-04-27 09:30:00', '1 hour', 'Novoair', '72', 3500, '', ''),
(12, 1, 'Chittagong', 'Dhaka', '2024-04-27 11:00:00', '2024-04-27 12:00:00', '1 hour', 'US-Bangla', '72', 3450, '', ''),
(13, 1, 'Cox\'s Bazar', 'Dhaka', '2024-04-27 08:00:00', '2024-04-27 09:00:00', '2 hour', 'Biman Bangladesh', '72', 4000, '', ''),
(14, 1, 'Cox\'s Bazar', 'Dhaka', '2024-04-27 10:00:00', '2024-04-27 12:00:00', '2 hour', 'US-Bangla', '72', 4200, '', ''),
(15, 1, 'Rajshahi', 'Dhaka', '2024-04-27 09:30:00', '2024-04-27 10:30:00', '1 hour', 'Air Astra', '72', 3400, '', ''),
(16, 1, 'Barisal', 'Dhaka', '2024-04-27 11:00:00', '2024-04-27 11:40:00', '40 mins', 'Novoair', '72', 2500, '', ''),
(17, 1, 'Sylhet', 'Chittagong', '2024-04-27 09:00:00', '2024-04-27 10:00:00', '1 hour', 'US-Bangla', '72', 3600, '', ''),
(18, 1, 'Sylhet', 'Cox\'s Bazar', '2024-04-27 10:30:00', '2024-04-27 13:30:00', '3 hour', 'Biman Bangladesh', '72', 4500, '', ''),
(19, 1, 'Sylhet', 'Rajshahi', '2024-04-27 09:00:00', '2024-04-27 11:00:00', '2 hour', 'Air Astra', '72', 3800, '', ''),
(20, 1, 'Sylhet', 'Barisal', '2024-04-27 08:00:00', '2024-04-27 10:00:00', '2 hour', 'Air Astra', '72', 3500, '', ''),
(21, 1, 'Chittagong', 'Sylhet', '2024-04-27 09:00:00', '2024-04-27 10:00:00', '1 hour', 'US-Bangla', '72', 3600, '', ''),
(22, 1, 'Cox\'s Bazar', 'Sylhet', '2024-04-27 10:30:00', '2024-04-27 13:30:00', '3 hour', 'Biman Bangladesh', '72', 4500, '', ''),
(23, 1, 'Rajshahi', 'Sylhet', '2024-04-27 09:00:00', '2024-04-27 11:00:00', '2 hour', 'Air Astra', '72', 3800, '', ''),
(24, 1, 'Barisal', 'Sylhet', '2024-04-27 08:00:00', '2024-04-27 10:00:00', '2 hour', 'Air Astra', '72', 3500, '', ''),
(26, 1, 'Chittagong', 'Cox\'s Bazar', '2024-04-27 10:00:00', '2024-04-27 10:40:00', '40 mins', 'Novoair', '72', 4500, '', ''),
(27, 1, 'Chittagong', 'Rajshahi', '2024-04-27 09:00:00', '2024-04-27 12:00:00', '3 hour', 'US-Bangla', '72', 4600, '', ''),
(28, 1, 'Cox\'s Bazar', 'Chittagong', '2024-04-27 10:00:00', '2024-04-27 10:40:00', '40 mins', 'Novoair', '72', 4500, '', ''),
(29, 1, 'Rajshahi', 'Chittagong', '2024-04-27 09:00:00', '2024-04-27 12:00:00', '3 hour', 'US-Bangla', '72', 4600, '', ''),
(30, 1, 'Dhaka', 'Sylhet', '2024-04-28 08:00:00', '2024-04-28 09:00:00', '1 hour', 'Biman Bangladesh', '72', 3200, '', ''),
(31, 1, 'Dhaka', 'Sylhet', '2024-04-28 10:00:00', '2024-04-28 11:00:00', '1 hour', 'US-Bangla', '72', 3400, '', ''),
(32, 1, 'Dhaka', 'Chittagong', '2024-04-28 08:30:00', '2024-04-28 09:30:00', '1 hour', 'Novoair', '72', 3500, '', ''),
(33, 1, 'Dhaka', 'Chittagong', '2024-04-28 11:00:00', '2024-04-28 12:00:00', '1 hour', 'US-Bangla', '72', 3450, '', ''),
(34, 1, 'Dhaka', 'Cox\'s Bazar', '2024-04-28 08:00:00', '2024-04-28 09:00:00', '2 hour', 'Biman Bangladesh', '72', 4000, '', ''),
(35, 1, 'Dhaka', 'Cox\'s Bazar', '2024-04-28 10:00:00', '2024-04-28 12:00:00', '2 hour', 'US-Bangla', '72', 4200, '', ''),
(36, 1, 'Dhaka', 'Rajshahi', '2024-04-28 09:30:00', '2024-04-28 10:30:00', '1 hour', 'Air Astra', '72', 3400, '', ''),
(37, 1, 'Dhaka', 'Barisal', '2024-04-28 11:00:00', '2024-04-28 11:40:00', '40 mins', 'Novoair', '72', 2500, '', ''),
(38, 1, 'Sylhet', 'Dhaka', '2024-04-28 08:00:00', '2024-04-28 09:00:00', '1 hour', 'Biman Bangladesh', '72', 3200, '', ''),
(39, 1, 'Sylhet', 'Dhaka', '2024-04-28 10:00:00', '2024-04-28 11:00:00', '1 hour', 'US-Bangla', '72', 3400, '', ''),
(40, 1, 'Chittagong', 'Dhaka', '2024-04-28 08:30:00', '2024-04-28 09:30:00', '1 hour', 'Novoair', '72', 3500, '', ''),
(41, 1, 'Chittagong', 'Dhaka', '2024-04-28 11:00:00', '2024-04-28 12:00:00', '1 hour', 'US-Bangla', '72', 3450, '', ''),
(42, 1, 'Cox\'s Bazar', 'Dhaka', '2024-04-28 08:00:00', '2024-04-28 09:00:00', '2 hour', 'Biman Bangladesh', '72', 4000, '', ''),
(43, 1, 'Cox\'s Bazar', 'Dhaka', '2024-04-28 10:00:00', '2024-04-28 12:00:00', '2 hour', 'US-Bangla', '72', 4200, '', ''),
(44, 1, 'Rajshahi', 'Dhaka', '2024-04-28 09:30:00', '2024-04-28 10:30:00', '1 hour', 'Air Astra', '72', 3400, '', ''),
(45, 1, 'Barisal', 'Dhaka', '2024-04-28 11:00:00', '2024-04-28 11:40:00', '40 mins', 'Novoair', '72', 2500, '', ''),
(46, 1, 'Sylhet', 'Chittagong', '2024-04-28 09:00:00', '2024-04-28 10:00:00', '1 hour', 'US-Bangla', '72', 3600, '', ''),
(47, 1, 'Sylhet', 'Cox\'s Bazar', '2024-04-28 10:30:00', '2024-04-28 13:30:00', '3 hour', 'Biman Bangladesh', '72', 4500, '', ''),
(48, 1, 'Sylhet', 'Rajshahi', '2024-04-28 09:00:00', '2024-04-28 11:00:00', '2 hour', 'Air Astra', '72', 3800, '', ''),
(49, 1, 'Sylhet', 'Barisal', '2024-04-28 08:00:00', '2024-04-28 10:00:00', '2 hour', 'Air Astra', '72', 3500, '', ''),
(50, 1, 'Chittagong', 'Sylhet', '2024-04-28 09:00:00', '2024-04-28 10:00:00', '1 hour', 'US-Bangla', '72', 3600, '', ''),
(51, 1, 'Cox\'s Bazar', 'Sylhet', '2024-04-28 10:30:00', '2024-04-28 13:30:00', '3 hour', 'Biman Bangladesh', '72', 4500, '', ''),
(52, 1, 'Rajshahi', 'Sylhet', '2024-04-28 09:00:00', '2024-04-28 11:00:00', '2 hour', 'Air Astra', '72', 3800, '', ''),
(53, 1, 'Barisal', 'Sylhet', '2024-04-28 08:00:00', '2024-04-28 10:00:00', '2 hour', 'Air Astra', '72', 3500, '', ''),
(54, 1, 'Chittagong', 'Cox\'s Bazar', '2024-04-28 10:00:00', '2024-04-28 10:40:00', '40 mins', 'Novoair', '72', 4500, '', ''),
(55, 1, 'Chittagong', 'Rajshahi', '2024-04-28 09:00:00', '2024-04-28 12:00:00', '3 hour', 'US-Bangla', '72', 4600, '', ''),
(56, 1, 'Cox\'s Bazar', 'Chittagong', '2024-04-28 10:00:00', '2024-04-28 10:40:00', '40 mins', 'Novoair', '72', 4500, '', ''),
(57, 1, 'Rajshahi', 'Chittagong', '2024-04-28 09:00:00', '2024-04-28 12:00:00', '3 hour', 'US-Bangla', '72', 4600, '', ''),
(58, 1, 'Rajshahi', 'Cox\'s Bazar', '2024-04-28 10:00:00', '2024-04-28 14:00:00', '4 hour', 'US-Bangla', '72', 5200, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 4, '1798123456', '2001-01-01 00:00:00', 'Oishee', 'Fatima', 'Ahmed'),
(2, 1, 4, '1673123456', '2001-01-07 00:00:00', 'Abeda', 'Zahin', 'Chandrica');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `card_no` varchar(16) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `card_no`, `passenger_id`, `flight_id`, `expire_date`, `amount`) VALUES
(9, '0978124354768976', 1, 4, '12/30', 13800);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `cost`, `class`) VALUES
(1, 1, 4, 1, 13800, 'E'),
(2, 2, 4, 1, 13800, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'oisheefatima', 'oishee@gmail.com', '$2y$10$MyKI/Qg.dVjMc3eADrkPGuE9fi8d/Am3FB6XroX7uKe.gWt5I5Hzu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`passenger_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
