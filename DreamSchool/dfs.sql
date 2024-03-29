-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2015 at 07:02 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `mentee`
--

CREATE TABLE IF NOT EXISTS `mentee` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `fathername` varchar(15) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mentee`
--

INSERT INTO `mentee` (`mid`, `name`, `fathername`, `sex`, `city`, `state`, `pincode`, `emailid`, `dob`, `mobileno`, `username`, `pwd`) VALUES
(1, 'Ankur Kishore', 'Random Kishore', 'male', 'Mumbai', 'Goa', '560098', 'asd@asd.com', '1992-08-12', 2147483647, 'asd@asd.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE IF NOT EXISTS `mentor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(20) NOT NULL,
  `mobile` int(20) NOT NULL,
  `city` text NOT NULL,
  `ptc` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `name`, `gender`, `language`, `email`, `tel`, `mobile`, `city`, `ptc`, `username`, `pwd`) VALUES
(1, 'Keshav', 'Male', 'English', 'keshav2509@gmail.com', 9999, 9, 'ADsdff', '560098', 'keshav2509@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `mid` int(10) NOT NULL DEFAULT '0',
  `id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`,`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postquery`
--

CREATE TABLE IF NOT EXISTS `postquery` (
  `postquery` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `relation`
--
ALTER TABLE `relation`
  ADD CONSTRAINT `relation_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `mentee` (`mid`),
  ADD CONSTRAINT `relation_ibfk_2` FOREIGN KEY (`id`) REFERENCES `mentor` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
