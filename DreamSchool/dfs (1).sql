-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2015 at 06:39 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

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
  `name` varchar(15) NOT NULL,
  `fathername` varchar(15) NOT NULL,
  `presentaddress` text NOT NULL,
  `sex` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE IF NOT EXISTS `mentor` (
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(20) NOT NULL,
  `mobile` int(20) NOT NULL,
  `add` text NOT NULL,
  `ptc` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` text NOT NULL,
  `con_pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`firstname`, `middlename`, `lastname`, `gender`, `language`, `email`, `tel`, `mobile`, `add`, `ptc`, `username`, `pwd`, `con_pwd`) VALUES
('harish', 'thumu', '', '', '', '', 0, 0, '', '', '', '', ''),
('hari', 'kumaar', 'thumu', 'male', 'Telugu', 'harish', 0, 0, '', '', 'harisht', 'harish', ''),
('hari', 'kumaar', 'thumu', 'male', 'Telugu', 'harish', 8790, 9390, '', '', 'harisht', 'harish', ''),
('thumu', 'harishhh', 'har', 'male', 'telugu', 'hari31', 8790, 89, '', '', 'harii', '', '');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
