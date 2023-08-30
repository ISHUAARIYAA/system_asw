-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 04:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(10) NOT NULL,
  `sndp` varchar(10) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `sphone` int(13) NOT NULL,
  `sclass` varchar(10) NOT NULL,
  `speriod` varchar(20) NOT NULL,
  `sposition` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sndp`, `sname`, `saddress`, `sphone`, `sclass`, `speriod`, `sposition`) VALUES
(4, '{ 2123456}', 'livanyah', '4', 0, '', '0000-00-00', ''),
(5, '{ 23221100', 'Ishuaariyaa krishan', '3/4/23 -3/6/23', 0, '', '0000-00-00', ''),
(6, '{ 23221100', 'Ishuaariyaa krishan', '12/2/23 - 23/3/23', 0, '', '0000-00-00', ''),
(8, '{ 23221026', 'livanyah chandran', '12/08/23 - 23/08/23', 0, '', '0000-00-00', ''),
(9, '{ 23221026', 'livanyah chandran', '12334456', 0, '', '0000-00-00', ''),
(10, '23221100', 'Ishuaariyaa krishan', '53 intan kanthan desa 3 intan kanthan 31200 chemor', 1133688927, '1', 'tiada', 'Admin'),
(14, 'ER2321111', 'Bojakan Subramaniam ', '58 telok panglima garang lorong 6 datuk ahmad', 2147483647, '1', '21 Aug 23  21 Sep 23', 'admin'),
(15, 'IWB106131', 'NIVITHA  BALAMURUGAN', '123 Taman sungai buloh 5 telok panglima garang ,ba', 1625231031, '2', '13 Jan 23 10 Jun 23', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE `studentclass` (
  `cid` int(11) NOT NULL,
  `cname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`cid`, `cname`) VALUES
(1, 'Staff'),
(2, 'Internship ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `studentclass`
--
ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `studentclass`
--
ALTER TABLE `studentclass`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
