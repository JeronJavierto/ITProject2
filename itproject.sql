-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 02:59 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
  `ClientID` int(50) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `Organization` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `First_name`, `Last_name`, `email`, `Organization`, `position`, `password`, `Status`) VALUES
(58, 'jeron', 'javierto', 'jeron@gmail.com', 'PESO', 'President', '123', ''),
(59, 'jeron', 'javierto', 'jeron@gmail.com', 'PESO', 'President', 'qwe', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(100) NOT NULL,
  `Event_name` varchar(50) NOT NULL,
  `Facility` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time_start` time(4) NOT NULL,
  `Time_end` time(4) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `Event_name`, `Facility`, `Date`, `Time_start`, `Time_end`, `Description`) VALUES
(1, 'Ash Wednesday', 'Plaza', '2019-03-06', '10:00:00.0000', '11:00:00.0000', 'Mass'),
(2, 'Spirit Overload', 'Plaza', '2019-03-07', '05:00:00.0000', '06:00:00.0000', 'Party');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FacID` int(255) NOT NULL,
  `Level` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL,
  `Reservation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FacID`, `Level`, `room`, `roomType`, `description`, `capacity`, `Reservation`) VALUES
(1, 'First Basement', 'Plaza\r\n', 'others', 'Devesse Plaza', 1000, ''),
(2, 'Amphitheatre', 'Amphitheatre', 'Stage Area', 'Amphitheatre', 1000, '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `resID` int(255) NOT NULL,
  `DepOrg` varchar(255) NOT NULL,
  `Event` varchar(255) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeEnd` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`resID`, `DepOrg`, `Event`, `Venue`, `Date`, `TimeStart`, `TimeEnd`) VALUES
(1, 'PESO', 'Party', 'Plaza', '2019-02-02', '14:22:00', '14:22:00'),
(2, 'JPIA', 'Party', 'Plaza', '2019-02-02', '14:22:00', '14:22:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FacID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`resID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `FacID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `resID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
