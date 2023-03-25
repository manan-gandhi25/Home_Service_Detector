-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 10:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_profile_tbl`
--

CREATE TABLE `admin_profile_tbl` (
  `admin_Id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobilenum` bigint(10) NOT NULL,
  `Dob` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_profile_tbl`
--

INSERT INTO `admin_profile_tbl` (`admin_Id`, `firstname`, `lastname`, `Address`, `City`, `State`, `Email`, `password`, `mobilenum`, `Dob`, `Gender`, `DOI`, `DOU`, `Isactive`) VALUES
(2, 'admin', 'admin', 'XYZ', 'abc', 'abc', 'admin@gamil.com', 'admin', 1234567890, '2013-03-07', 'Male', '2022-03-07', '2022-03-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `Area_Id` int(11) NOT NULL,
  `Area_name` varchar(50) NOT NULL,
  `City_Id` int(11) NOT NULL,
  `State_Id` int(11) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`Area_Id`, `Area_name`, `City_Id`, `State_Id`, `DOI`, `DOU`, `Isactive`) VALUES
(3, 'Satellite', 0, 0, '0000-00-00', '0000-00-00', 1),
(11, 'Ramol gam', 0, 0, '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_Id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_Id`, `category_name`, `DOI`, `DOU`, `Isactive`) VALUES
(2, 'CarWashing', '2000-01-06', '2020-03-20', 0),
(3, 'Car', '2000-02-02', '3000-03-02', 1),
(4, 'Car Washing', '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `City_Id` int(11) NOT NULL,
  `City_name` varchar(50) NOT NULL,
  `State_Id` int(11) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_Id`, `City_name`, `State_Id`, `DOI`, `DOU`, `Isactive`) VALUES
(5, 'Ahmedabad', 0, '0000-00-00', '0000-00-00', 0),
(6, 'Gandhinagar', 0, '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Contact_Id` int(11) NOT NULL,
  `Contact_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobilenum` bigint(10) NOT NULL,
  `message` varchar(100) NOT NULL,
  `DOI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `Inquiry_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobilenum` bigint(10) NOT NULL,
  `City_name` varchar(50) NOT NULL,
  `category_Id` int(11) NOT NULL,
  `Inquiry_detail` varchar(100) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`Inquiry_Id`, `user_Id`, `Address`, `email`, `mobilenum`, `City_name`, `category_Id`, `Inquiry_detail`, `DOI`, `DOU`, `Isactive`) VALUES
(1, 1, 'xyz', 'mvgandhi25@gmail.com', 9227211950, 'ahm', 1, 'akcbalsckndlkfhsilfowahflkfnwofjawfkhgflihf', '2020-12-16', '2020-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `Quotation_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `State_Id` int(11) NOT NULL,
  `City_Id` int(11) NOT NULL,
  `Area_Id` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `Security_Question_id` int(11) NOT NULL,
  `sec_que` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `DOI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`Security_Question_id`, `sec_que`, `user_id`, `DOI`) VALUES
(2, 'hey whats up', 0, '0000-00-00'),
(3, 'hey whats up gys', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_profile_tbl`
--

CREATE TABLE `service_provider_profile_tbl` (
  `service_provider_Id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobilenum` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `about profession` varchar(200) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `DOI` date NOT NULL DEFAULT current_timestamp(),
  `DOU` date NOT NULL DEFAULT current_timestamp(),
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `State_Id` int(11) NOT NULL,
  `State_name` varchar(50) NOT NULL,
  `DOI` date NOT NULL,
  `DOU` date NOT NULL,
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`State_Id`, `State_name`, `DOI`, `DOU`, `Isactive`) VALUES
(3, 'Gujarat', '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_registreation_tbl`
--

CREATE TABLE `user_registreation_tbl` (
  `user_Id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobilenum` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOI` date NOT NULL DEFAULT current_timestamp(),
  `DOU` date NOT NULL DEFAULT current_timestamp(),
  `Isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registreation_tbl`
--

INSERT INTO `user_registreation_tbl` (`user_Id`, `firstname`, `lastname`, `address`, `city`, `state`, `email`, `password`, `mobilenum`, `dob`, `Gender`, `DOI`, `DOU`, `Isactive`) VALUES
(1, 'Manan', 'Gandhi', 'C-14 Manglam App.', 'Ahmedabad', 'Gujarat', 'Manan', 'hello', 1234567890, '2003-05-02', '1', '2021-01-22', '2021-01-22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_profile_tbl`
--
ALTER TABLE `admin_profile_tbl`
  ADD PRIMARY KEY (`admin_Id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Area_Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_Id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`City_Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_Id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`Inquiry_Id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`Quotation_Id`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`Security_Question_id`);

--
-- Indexes for table `service_provider_profile_tbl`
--
ALTER TABLE `service_provider_profile_tbl`
  ADD PRIMARY KEY (`service_provider_Id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`State_Id`);

--
-- Indexes for table `user_registreation_tbl`
--
ALTER TABLE `user_registreation_tbl`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_profile_tbl`
--
ALTER TABLE `admin_profile_tbl`
  MODIFY `admin_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `Area_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `City_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `Inquiry_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `Quotation_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `security_question`
--
ALTER TABLE `security_question`
  MODIFY `Security_Question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_provider_profile_tbl`
--
ALTER TABLE `service_provider_profile_tbl`
  MODIFY `service_provider_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `State_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_registreation_tbl`
--
ALTER TABLE `user_registreation_tbl`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
