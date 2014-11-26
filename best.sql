-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2014 at 01:28 PM
-- Server version: 5.5.40-0ubuntu1
-- PHP Version: 5.5.12-2ubuntu4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `best`
--

-- --------------------------------------------------------

--
-- Table structure for table `binders`
--

CREATE TABLE IF NOT EXISTS `binders` (
`id` int(25) NOT NULL,
  `teamId` int(25) NOT NULL,
  `binderLink` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
`id` int(25) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `capacity` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teamInfo`
--

CREATE TABLE IF NOT EXISTS `teamInfo` (
`id` int(25) NOT NULL,
  `infoUpdated` tinyint(1) NOT NULL DEFAULT '0',
  `teamNumber` int(25) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `shortTeamName` varchar(255) NOT NULL,
  `hub` varchar(255) NOT NULL,
  `coachName` varchar(255) NOT NULL,
  `coachEmail` varchar(255) NOT NULL,
  `coachAddress` varchar(255) NOT NULL,
  `coachPhone` varchar(15) NOT NULL,
  `secondaryName` varchar(255) NOT NULL,
  `secondaryEmail` varchar(255) NOT NULL,
  `secondaryAddress` varchar(255) NOT NULL,
  `secondaryPhone` varchar(255) NOT NULL,
  `numberStudents` int(25) NOT NULL,
  `paymentType` int(25) NOT NULL,
  `gameType` int(25) NOT NULL,
  `websiteURL` varchar(255) NOT NULL,
  `binderURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE IF NOT EXISTS `websites` (
`id` int(25) NOT NULL,
  `teamId` int(25) NOT NULL,
  `websiteURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binders`
--
ALTER TABLE `binders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamInfo`
--
ALTER TABLE `teamInfo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binders`
--
ALTER TABLE `binders`
MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teamInfo`
--
ALTER TABLE `teamInfo`
MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
