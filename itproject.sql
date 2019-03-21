-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 08:53 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminID` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Delfin', 'Tokyas', 'deltokz@slu.edu.ph', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `Client_id` int(255) NOT NULL AUTO_INCREMENT,
  `ResID` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `client_type` varchar(15) NOT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_id`, `ResID`, `first_name`, `last_name`, `email`, `password`, `client_type`) VALUES
(1, 1, 'Jeron', 'Javierto', 'Jeron@gmail.com', '12345', 'student'),
(2, 2, 'Jericho', 'Rosal', 'jerichodave@gmail.com', '1234', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `EquipID` int(255) NOT NULL AUTO_INCREMENT,
  `equipName` varchar(255) NOT NULL,
  PRIMARY KEY (`EquipID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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

CREATE TABLE IF NOT EXISTS `facility` (
  `FacID` int(255) NOT NULL AUTO_INCREMENT,
  `facilityName` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL,
  PRIMARY KEY (`FacID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
  `office_id` int(255) NOT NULL AUTO_INCREMENT,
  `officeName` varchar(255) NOT NULL,
  `person_in_charge` varchar(255) NOT NULL,
  PRIMARY KEY (`office_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`office_id`, `officeName`, `person_in_charge`) VALUES
(1, 'Student Affairs Office', 'Andrew Macalma'),
(3, 'Custodian''s Office', 'Delfin Tokyas'),
(4, 'Dean''s Office', 'April Gumnad');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `ResID` int(255) NOT NULL AUTO_INCREMENT,
  `resDate` date NOT NULL,
  `startTime` time(6) NOT NULL,
  `endTime` time(6) NOT NULL,
  `resStatus` varchar(255) NOT NULL,
  PRIMARY KEY (`ResID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `services` (
  `SerID` int(255) NOT NULL AUTO_INCREMENT,
  `typeOfService` varchar(255) NOT NULL,
  PRIMARY KEY (`SerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`SerID`, `typeOfService`) VALUES
(1, 'Janitor'),
(2, 'Security Guard'),
(3, 'Staff');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
