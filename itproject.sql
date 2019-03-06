-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 07:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Client_id` int(255) NOT NULL,
  `ResID` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_id`, `ResID`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 1, 'Jeron', 'Javierto', 'Jeron@gmail.com', '12345'),
(2, 2, 'Jericho', 'Rosal', 'jerichodave@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EquipID` int(255) NOT NULL,
  `equipName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EquipID`, `equipName`) VALUES
(1, 'chairs'),
(2, 'microphone'),
(3, 'Platforms'),
(4, 'Table'),
(5, 'Triboard'),
(6, 'Divider'),
(7, 'microphones'),
(8, 'Mic Stand'),
(9, 'Karaoke'),
(10, 'Projectors'),
(11, 'Sound System'),
(12, 'TV/DVD');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FacID` int(255) NOT NULL,
  `facilityName` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FacID`, `facilityName`, `room`, `roomType`, `description`, `capacity`) VALUES
(1, 'Amphitheater', 'Amphitheater', 'Stage Area', 'Amphitheater', 1000),
(2, 'Oval', 'Oval', 'Court', 'Volley Ball/Tennis Court', 0),
(3, 'Oval', 'Oval', 'Court', 'Basketball Court', 0),
(4, 'Mezzanine ', 'Mezzanine', 'Others', 'Library Reading Area/Testing Area', 300),
(5, 'Plaza', 'Plaza', 'Others', 'Devesse Plaza', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Client_id` int(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `office_id` int(255) NOT NULL,
  `officeName` varchar(255) NOT NULL,
  `person_in_charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`office_id`, `officeName`, `person_in_charge`) VALUES
(1, 'Student Affairs Office', 'Andrew Macalma'),
(3, 'Custodian\'s Office', 'Delfin Tokyas'),
(4, 'Dean\'s Office', 'April Gumnad');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ResID` int(255) NOT NULL,
  `resDate` date NOT NULL,
  `startTime` time(6) NOT NULL,
  `endTime` time(6) NOT NULL,
  `resStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`ResID`, `resDate`, `startTime`, `endTime`, `resStatus`) VALUES
(1, '2018-11-07', '04:00:00.000000', '06:00:00.000000', ''),
(2, '2018-11-08', '11:30:00.000000', '12:30:00.000000', ''),
(3, '2018-11-17', '01:00:00.000000', '04:00:00.000000', ''),
(4, '2018-11-20', '02:00:00.000000', '05:00:00.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `SerID` int(255) NOT NULL,
  `typeOfService` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`SerID`, `typeOfService`) VALUES
(1, 'Janitor'),
(2, 'Security Guard'),
(3, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Client_id` int(255) NOT NULL,
  `shool_org` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `third_party`
--

CREATE TABLE `third_party` (
  `Client_id` int(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
