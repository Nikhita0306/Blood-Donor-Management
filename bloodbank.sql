-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 06:00 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE IF NOT EXISTS `bloodrequest` (
`id` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `bloodgroup` varchar(40) NOT NULL,
  `message` varchar(200) NOT NULL,
  `list` varchar(300) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`id`, `uname`, `bloodgroup`, `message`, `list`) VALUES
(1, 'bhargav', 'AB+', 'need AB+ Blood group very urgently', 'krishna@gmail.com	9898989898	kedareswarapeta'),
(4, 'bhargav', 'O+', 'need blood with in two days', '');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE IF NOT EXISTS `donors` (
`id` int(11) NOT NULL,
  `dname` varchar(40) NOT NULL,
  `bgroup` varchar(40) NOT NULL,
  `demail` varchar(40) NOT NULL,
  `dphone` varchar(40) NOT NULL,
  `daddress` varchar(300) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `dname`, `bgroup`, `demail`, `dphone`, `daddress`) VALUES
(1, 'krishna', 'AB+', 'krishna@gmail.com', '9898989898', 'kedareswarapeta'),
(3, 'bhargav', 'O+', 'bhargavrama9@gmail.com', '07660004177', 'Mogalrajuram raavichettu center vijyawada-10');

-- --------------------------------------------------------

--
-- Table structure for table `receipents`
--

CREATE TABLE IF NOT EXISTS `receipents` (
  `name` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipents`
--

INSERT INTO `receipents` (`name`, `pass`, `email`, `phone`) VALUES
('bhargav', 'jhansi', 'bhargav.smartitpros@gmail.com', '7660004177');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
