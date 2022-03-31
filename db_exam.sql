-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2018 at 07:44 PM
-- Server version: 5.6.14
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '111032eaeaf42f817f89d1dc668bf6c6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(1, 1, 0, 'picture'),
(2, 1, 1, 'image'),
(3, 1, 0, 'img'),
(4, 1, 0, 'src'),
(5, 2, 0, 'class'),
(6, 2, 1, 'id'),
(7, 2, 0, 'dot'),
(8, 2, 0, 'Above all'),
(9, 3, 0, 'web page editing software'),
(10, 3, 0, 'High powered computer'),
(11, 3, 1, 'Just a notepad can be used'),
(12, 3, 0, 'None of above'),
(13, 4, 0, 'Should be written in upper case'),
(14, 4, 0, 'should be written in lower case'),
(15, 4, 0, 'should be written in proper case'),
(16, 4, 1, 'can be written in both uppercase or lowercase'),
(17, 5, 1, 'attributes'),
(18, 5, 0, 'parameters'),
(19, 5, 0, 'modifiers'),
(20, 5, 0, 'None of above');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(1, 1, 'A webpage displays a picture. What tag was used to display that picture?'),
(2, 2, 'Which attribute is used to name an element uniquely?'),
(3, 3, 'To create HTML document you require a'),
(4, 4, 'In HTML document the tags'),
(5, 5, 'The way the browser displays the object can be modified by');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(3, 'Tareq', 'Tareq', '827ccb0eea8a706c4c34a16891f84e7b', 'tareq@gmail.com', 0),
(4, 'Antor Mahmud', 'Piicchii', '827ccb0eea8a706c4c34a16891f84e7b', 'antor@gmail.com', 0),
(6, 'Atik Mahmud', 'Atik', '827ccb0eea8a706c4c34a16891f84e7b', 'atikmahmud541@gmail.com', 0),
(9, 'Israt Jahan Ema', 'Ema', '827ccb0eea8a706c4c34a16891f84e7b', 'ema@gmail.com', 0),
(10, 'Saima Akter Tumpa', 'tumpa', '81dc9bdb52d04dc20036dbd8313ed055', 'atikmahmud@gmail.com', 0),
(11, 'Adib Mahmud', 'Adib', 'd41d8cd98f00b204e9800998ecf8427e', 'adibmahmud@gmail.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
