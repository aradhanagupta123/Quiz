-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2021 at 03:54 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `aid` int(250) NOT NULL AUTO_INCREMENT,
  `answer` varchar(250) NOT NULL,
  `ans_id` int(250) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`) VALUES
(1, '4:5', 1),
(2, '3:4', 1),
(3, '1:2', 1),
(4, '4:3', 1),
(5, 'Asam', 2),
(6, 'Tamilnadu', 2),
(7, 'Udisha', 2),
(8, 'Kerala', 2),
(9, 'Marble', 3),
(10, 'Red sand stone', 3),
(11, 'Terracotta', 3),
(12, 'Black stone', 3),
(13, 'Mughal period', 4),
(14, 'Gupta period', 4),
(15, 'Chola period', 4),
(16, ' None of these', 4),
(17, 'Vande bharat', 5),
(18, 'Tejas', 5),
(19, 'Rajdhani', 5),
(20, 'Shramjevi Express', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hardans`
--

CREATE TABLE IF NOT EXISTS `hardans` (
  `h_aid` int(250) NOT NULL AUTO_INCREMENT,
  `h_answer` varchar(250) NOT NULL,
  `h_ans_id` int(250) NOT NULL,
  PRIMARY KEY (`h_aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `hardans`
--

INSERT INTO `hardans` (`h_aid`, `h_answer`, `h_ans_id`) VALUES
(1, 'It has original and appellate jurisdiction', 1),
(2, ' It enjoys the power of judicial review', 1),
(3, 'It acts as the court of law', 1),
(4, ' All the above', 1),
(5, '25', 2),
(6, '21', 2),
(7, '28', 2),
(8, '29', 2),
(9, 'Article 214', 3),
(10, 'Article 217', 3),
(11, 'Article 226', 3),
(12, 'Article 216', 3),
(13, 'Prime minister ', 4),
(14, 'Chief minister', 4),
(15, 'Governor', 4),
(16, 'President', 4),
(17, 'Bihar', 5),
(18, 'Uttar Pradesh', 5),
(19, 'Andhra Pradesh', 5),
(20, 'Maharashtra', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hardques`
--

CREATE TABLE IF NOT EXISTS `hardques` (
  `h_qid` int(250) NOT NULL AUTO_INCREMENT,
  `h_question` varchar(250) NOT NULL,
  `h_ans_id` int(250) NOT NULL,
  PRIMARY KEY (`h_qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hardques`
--

INSERT INTO `hardques` (`h_qid`, `h_question`, `h_ans_id`) VALUES
(1, ' Which one of the following is true about High courts', 4),
(2, ' At present, how many high courts are there in India?', 6),
(3, 'Which one of the following article deals with the appointment of judges?', 10),
(4, ' The chief justice and other judges of the high courts are appointed by which one of the following?', 16),
(5, 'Which was the first Indian state to establish the institution of Lokayukta?', 20);

-- --------------------------------------------------------

--
-- Table structure for table `mediumans`
--

CREATE TABLE IF NOT EXISTS `mediumans` (
  `m_aid` int(250) NOT NULL AUTO_INCREMENT,
  `m_answer` varchar(250) NOT NULL,
  `m_ans_id` int(250) NOT NULL,
  PRIMARY KEY (`m_aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `mediumans`
--

INSERT INTO `mediumans` (`m_aid`, `m_answer`, `m_ans_id`) VALUES
(1, ' 25 years', 1),
(2, '30 years', 1),
(3, ' 35 years', 1),
(4, '18 years', 1),
(5, 'Chairman of the State Planning Board', 2),
(6, 'Member of National Development Council', 2),
(7, 'Chief Spokesperson of the State Government', 2),
(8, 'All of the above', 2),
(9, 'Article 167: Duties of the Chief Minister', 3),
(10, 'Article 163: sworn in of the Chief Minister', 3),
(11, 'Article 164: Provisions related to State Ministers', 3),
(12, 'Article 166:  Operations by the State Government', 3),
(13, ' Governor', 4),
(14, 'State Legislature', 4),
(15, 'President', 4),
(16, 'Parliament', 4),
(17, ' Governor', 5),
(18, 'Chief Minister', 5),
(19, 'Speaker of the Assembly', 5),
(20, 'None of these', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mediumq`
--

CREATE TABLE IF NOT EXISTS `mediumq` (
  `mqid` int(250) NOT NULL AUTO_INCREMENT,
  `mquestion` varchar(250) NOT NULL,
  `m_ans_id` int(200) NOT NULL,
  PRIMARY KEY (`mqid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mediumq`
--

INSERT INTO `mediumq` (`mqid`, `mquestion`, `m_ans_id`) VALUES
(1, 'What is the minimum age to be appointed as the Chief Minister of a state?', 1),
(2, 'Which of the following post is hold by the Chief Minister?', 8),
(3, ' Which of the following is not matched correctly?', 10),
(4, 'Who determines the salary and allowances of the Chief Minister?', 14),
(5, ' The Advocate General of the State is responsible to whom?', 17);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(100) NOT NULL AUTO_INCREMENT,
  `question` varchar(300) NOT NULL,
  `ans_id` int(250) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'What is the ratio of ''our National Flag'' ?', 2),
(2, 'Folk dance ''Bihu'' related to -', 5),
(3, 'What is Taj Mahal made of ?', 9),
(4, 'Akbar was the king of which period ?', 13),
(5, 'What is the name of India''s first semi bullet train ?', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(250) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `totalques` int(250) NOT NULL,
  `answerscorrect` int(250) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
