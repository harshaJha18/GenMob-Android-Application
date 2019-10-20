-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2015 at 08:09 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `genmob`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(10) NOT NULL AUTO_INCREMENT,
  `start_year` int(10) DEFAULT NULL,
  `end_year` int(10) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `start_year`, `end_year`) VALUES
(1, 2012, 2015),
(2, 2012, 2016),
(3, 2012, 2013),
(4, 2012, 2014),
(5, 2011, 2015),
(6, 2013, 2017),
(7, 2014, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `batch_program_mapping`
--

CREATE TABLE IF NOT EXISTS `batch_program_mapping` (
  `batch_program_id` int(4) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) DEFAULT NULL,
  `program_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`batch_program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `batch_program_mapping`
--

INSERT INTO `batch_program_mapping` (`batch_program_id`, `batch_id`, `program_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 2),
(4, 4, 3),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `engr113`
--

CREATE TABLE IF NOT EXISTS `engr113` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr114`
--

CREATE TABLE IF NOT EXISTS `engr114` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr115`
--

CREATE TABLE IF NOT EXISTS `engr115` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr116`
--

CREATE TABLE IF NOT EXISTS `engr116` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr120`
--

CREATE TABLE IF NOT EXISTS `engr120` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr201`
--

CREATE TABLE IF NOT EXISTS `engr201` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr202`
--

CREATE TABLE IF NOT EXISTS `engr202` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engr202`
--

INSERT INTO `engr202` (`student_id`, `student_firstname`, `student_lastname`, `attendance_date`, `attendance_time`, `attendance_status`, `section`) VALUES
(130220, 'Akshay', 'Kacker', '2015-05-22', '12:07:00', 'P', 'Lecture'),
(130021, 'Ankit', 'Khatana', '2015-05-22', '12:07:00', 'P', 'Lecture'),
(130127, 'Subham', 'Chaudhary', '2015-05-22', '12:07:00', 'A', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `engr226`
--

CREATE TABLE IF NOT EXISTS `engr226` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engr334`
--

CREATE TABLE IF NOT EXISTS `engr334` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engr334`
--

INSERT INTO `engr334` (`student_id`, `student_firstname`, `student_lastname`, `attendance_date`, `attendance_time`, `attendance_status`, `section`) VALUES
(120361, 'Anand', 'Nandanan', '2015-05-21', '19:01:00', 'P', 'Lecture'),
(120095, 'Arushi', 'Sharma', '2015-05-21', '19:01:00', 'A', 'Lecture'),
(120876, 'Chetan', 'Yadav', '2015-05-21', '19:01:00', 'P', 'Lecture'),
(120097, 'Harsha', 'Jha', '2015-05-21', '19:01:00', 'P', 'Lecture'),
(120936, 'Mohitosh', 'Mondal', '2015-05-21', '19:01:00', 'A', 'Lecture'),
(120321, 'Mrugakshi', 'Doshi', '2015-05-21', '19:01:00', 'P', 'Lecture'),
(120030, 'Pankaj', 'Patil', '2015-05-21', '19:01:00', 'A', 'Lecture'),
(120236, 'Rohit', 'Shaw', '2015-05-21', '19:01:00', 'A', 'Lecture'),
(120112, 'Sanchit', 'Gupta', '2015-05-21', '19:01:00', 'P', 'Lecture'),
(120003, 'Shreya', 'Bhandari', '2015-05-21', '19:01:00', 'A', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `engr335`
--

CREATE TABLE IF NOT EXISTS `engr335` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` int(10) NOT NULL AUTO_INCREMENT,
  `faculty_firstname` char(100) DEFAULT NULL,
  `faculty_lastname` char(100) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_firstname`, `faculty_lastname`) VALUES
(1, 'Nidhi', 'Arora'),
(2, 'Pooja', 'Rana'),
(3, 'Pankaj', 'Kumar'),
(4, 'Abdul', 'Manan'),
(5, 'Manish', 'Jha'),
(6, 'Rashmi', 'Kumari'),
(7, 'Deepak', 'Sharma'),
(8, 'Irfan', 'Khan'),
(9, 'B.R.', 'Handa');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_module_mapping`
--

CREATE TABLE IF NOT EXISTS `faculty_module_mapping` (
  `module_id` int(10) DEFAULT NULL,
  `faculty_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_module_mapping`
--

INSERT INTO `faculty_module_mapping` (`module_id`, `faculty_id`) VALUES
(1, 8),
(2, 2),
(3, 9),
(4, 2),
(5, 3),
(6, 5),
(7, 1),
(8, 6),
(9, 4),
(10, 4),
(11, 9),
(12, 9),
(13, 9),
(14, 4),
(15, 9),
(16, 9),
(17, 4),
(18, 3),
(19, 7),
(20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `math141`
--

CREATE TABLE IF NOT EXISTS `math141` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math142`
--

CREATE TABLE IF NOT EXISTS `math142` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math143`
--

CREATE TABLE IF NOT EXISTS `math143` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math144`
--

CREATE TABLE IF NOT EXISTS `math144` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math145`
--

CREATE TABLE IF NOT EXISTS `math145` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_number` char(20) DEFAULT NULL,
  `module_name` char(100) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_number`, `module_name`) VALUES
(1, 'ENGR113', 'The World of Electronics'),
(2, 'SCC110', 'Software Development'),
(3, 'MATH144', 'Differential Equation'),
(4, 'SCC120', 'Fundamentals Of Computer Science'),
(5, 'ENGR202', 'Instrumentation and Control'),
(6, 'SCC212', 'Advanced Programming'),
(7, 'ENGR334', 'Programmable Systems'),
(8, 'ENGR335', 'Optoelectronics & Wireless Systems'),
(9, 'ENGR116', 'The Digital Domain'),
(10, 'ENGR115', 'Computer & Controls'),
(11, 'ENGR120', 'Electronic Information & System Design'),
(12, 'MATH143', 'Elementry Complex Numbers'),
(13, 'MATH145', 'Further Calculus & Numerical Techniques'),
(14, 'ENGR114', 'Sensing & Signals'),
(15, 'MATH141', 'Algebra, Graphs and Elemntry Complex Numbers'),
(16, 'MATH142', 'Determinants, Vectors & Further Complex Numbers'),
(17, 'ENGR201', 'Engineering Analysis'),
(18, 'ENGR226', 'Electrial Circuits and Power Systems'),
(19, 'SCC204', 'Software Design'),
(20, 'SCC211', 'Operating Systems');

-- --------------------------------------------------------

--
-- Table structure for table `module_semestereng_mapping`
--

CREATE TABLE IF NOT EXISTS `module_semestereng_mapping` (
  `module_semestereng_mapping_id` int(10) NOT NULL AUTO_INCREMENT,
  `semestereng_id` int(10) DEFAULT NULL,
  `module_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`module_semestereng_mapping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `module_semestereng_mapping`
--

INSERT INTO `module_semestereng_mapping` (`module_semestereng_mapping_id`, `semestereng_id`, `module_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 1, 1),
(5, 1, 2),
(6, 2, 3),
(7, 2, 4),
(8, 3, 5),
(9, 4, 6),
(10, 5, 7),
(11, 6, 8),
(12, 2, 9),
(13, 2, 10),
(14, 2, 11),
(15, 2, 12),
(16, 2, 13),
(17, 1, 14),
(18, 2, 15),
(19, 2, 16),
(20, 3, 17),
(21, 3, 18),
(22, 4, 19),
(23, 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `program_id` int(10) NOT NULL AUTO_INCREMENT,
  `program_name` char(100) DEFAULT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `program_name`) VALUES
(1, 'Management'),
(2, 'MSC'),
(3, 'PGDBM'),
(4, 'MENG2012'),
(5, 'MENG2011'),
(6, 'MENG2013\r\n'),
(7, 'MENG2014');

-- --------------------------------------------------------

--
-- Table structure for table `program_semestereng_mapping`
--

CREATE TABLE IF NOT EXISTS `program_semestereng_mapping` (
  `program_semestereng_mapping_id` int(4) NOT NULL AUTO_INCREMENT,
  `semestereng_id` int(10) DEFAULT NULL,
  `program_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`program_semestereng_mapping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `program_semestereng_mapping`
--

INSERT INTO `program_semestereng_mapping` (`program_semestereng_mapping_id`, `semestereng_id`, `program_id`) VALUES
(1, 1, 7),
(2, 2, 7),
(3, 3, 6),
(4, 4, 6),
(5, 5, 4),
(6, 6, 4),
(7, 7, 5),
(8, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `result_engr113`
--

CREATE TABLE IF NOT EXISTS `result_engr113` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr114`
--

CREATE TABLE IF NOT EXISTS `result_engr114` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr115`
--

CREATE TABLE IF NOT EXISTS `result_engr115` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr116`
--

CREATE TABLE IF NOT EXISTS `result_engr116` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr120`
--

CREATE TABLE IF NOT EXISTS `result_engr120` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr201`
--

CREATE TABLE IF NOT EXISTS `result_engr201` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr202`
--

CREATE TABLE IF NOT EXISTS `result_engr202` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr226`
--

CREATE TABLE IF NOT EXISTS `result_engr226` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_engr334`
--

CREATE TABLE IF NOT EXISTS `result_engr334` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_engr334`
--

INSERT INTO `result_engr334` (`student_id`, `student_firstname`, `student_lastname`, `coursework_weightage`, `coursework_marks`, `mainexam_weightage`, `mainexam_marks`, `total_weightage`, `total_marks`, `marks_status`) VALUES
(120361, 'Anand', 'Nandanan', 50, '90.000', 50, '95.000', 24, '22.200', 'PASS'),
(120097, 'Harsha', 'Jha', 40, '80.000', 60, '95.000', 24, '21.360', 'PASS');

-- --------------------------------------------------------

--
-- Table structure for table `result_engr335`
--

CREATE TABLE IF NOT EXISTS `result_engr335` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_engr335`
--

INSERT INTO `result_engr335` (`student_id`, `student_firstname`, `student_lastname`, `coursework_weightage`, `coursework_marks`, `mainexam_weightage`, `mainexam_marks`, `total_weightage`, `total_marks`, `marks_status`) VALUES
(120095, 'Rohit', 'Shaw', 50, '24.000', 50, '24.000', 20, '12.000', 'Pass'),
(120095, 'Rohit', 'Shaw', 50, '24.000', 50, '24.000', 20, '12.000', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `result_math141`
--

CREATE TABLE IF NOT EXISTS `result_math141` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_math142`
--

CREATE TABLE IF NOT EXISTS `result_math142` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_math143`
--

CREATE TABLE IF NOT EXISTS `result_math143` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_math144`
--

CREATE TABLE IF NOT EXISTS `result_math144` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_math145`
--

CREATE TABLE IF NOT EXISTS `result_math145` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_scc110`
--

CREATE TABLE IF NOT EXISTS `result_scc110` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_scc120`
--

CREATE TABLE IF NOT EXISTS `result_scc120` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_scc204`
--

CREATE TABLE IF NOT EXISTS `result_scc204` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_scc211`
--

CREATE TABLE IF NOT EXISTS `result_scc211` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_scc212`
--

CREATE TABLE IF NOT EXISTS `result_scc212` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) NOT NULL,
  `student_lastname` char(100) NOT NULL,
  `coursework_weightage` int(10) NOT NULL,
  `coursework_marks` decimal(18,3) DEFAULT NULL,
  `mainexam_weightage` int(10) NOT NULL,
  `mainexam_marks` decimal(18,3) DEFAULT NULL,
  `total_weightage` int(10) NOT NULL,
  `total_marks` decimal(18,3) DEFAULT NULL,
  `marks_status` char(20) DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scc110`
--

CREATE TABLE IF NOT EXISTS `scc110` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scc120`
--

CREATE TABLE IF NOT EXISTS `scc120` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scc204`
--

CREATE TABLE IF NOT EXISTS `scc204` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scc211`
--

CREATE TABLE IF NOT EXISTS `scc211` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scc212`
--

CREATE TABLE IF NOT EXISTS `scc212` (
  `student_id` int(10) NOT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `attendance_status` char(20) DEFAULT NULL,
  `section` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scc212`
--

INSERT INTO `scc212` (`student_id`, `student_firstname`, `student_lastname`, `attendance_date`, `attendance_time`, `attendance_status`, `section`) VALUES
(130220, 'Akshay', 'Kacker', '2015-05-22', '12:36:00', 'A', 'Lecture'),
(130021, 'Ankit', 'Khatana', '2015-05-22', '12:36:00', 'P', 'Lecture'),
(130127, 'Subham', 'Chaudhary', '2015-05-22', '12:36:00', 'A', 'Lecture'),
(130220, 'Akshay', 'Kacker', '2015-05-22', '12:37:00', 'A', 'Lecture'),
(130021, 'Ankit', 'Khatana', '2015-05-22', '12:37:00', 'A', 'Lecture'),
(130127, 'Subham', 'Chaudhary', '2015-05-22', '12:37:00', 'P', 'Lecture'),
(130220, 'Akshay', 'Kacker', '2015-05-23', '15:59:00', 'P', 'Lecture'),
(130021, 'Ankit', 'Khatana', '2015-05-23', '15:59:00', 'P', 'Lecture'),
(130127, 'Subham', 'Chaudhary', '2015-05-23', '15:59:00', 'P', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `semestereng`
--

CREATE TABLE IF NOT EXISTS `semestereng` (
  `semestereng_id` int(10) NOT NULL AUTO_INCREMENT,
  `semestereng_number` int(10) DEFAULT NULL,
  PRIMARY KEY (`semestereng_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `semestereng`
--

INSERT INTO `semestereng` (`semestereng_id`, `semestereng_number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(10) NOT NULL,
  `student_group` int(10) DEFAULT NULL,
  `student_firstname` char(100) DEFAULT NULL,
  `student_lastname` char(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_group`, `student_firstname`, `student_lastname`) VALUES
(110034, 6, 'Lokesh', 'Yadav'),
(110054, 1, 'Sawan', 'Chawla'),
(120003, 6, 'Shreya', 'Bhandari'),
(120030, 1, 'Pankaj', 'Patil'),
(120095, 3, 'Arushi', 'Sharma'),
(120097, 5, 'Harsha', 'Jha'),
(120112, 6, 'Sanchit', 'Gupta'),
(120236, 6, 'Rohit', 'Shaw'),
(120321, 3, 'Mrugakshi', 'Doshi'),
(120361, 3, 'Anand', 'Nandanan'),
(120876, 5, 'Chetan', 'Yadav'),
(120936, 5, 'Mohitosh', 'Mondal'),
(130021, 5, 'Ankit', 'Khatana'),
(130083, 4, 'Priya', 'Garg'),
(130127, 2, 'Subham', 'Chaudhary'),
(130220, 1, 'Akshay', 'Kacker'),
(140096, 2, 'Manavjit', 'Singh'),
(140098, 4, 'Swati', 'Rana'),
(140225, 2, 'Prateek', 'Singh'),
(140828, 4, 'Charvi', 'Khanna');

-- --------------------------------------------------------

--
-- Table structure for table `student_module_mapping`
--

CREATE TABLE IF NOT EXISTS `student_module_mapping` (
  `module_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_module_mapping`
--

INSERT INTO `student_module_mapping` (`module_id`, `student_id`) VALUES
(1, 140098),
(1, 140828),
(1, 140225),
(1, 140096),
(2, 140098),
(2, 140828),
(2, 140225),
(2, 140096),
(3, 140098),
(3, 140828),
(3, 140225),
(3, 140096),
(4, 140098),
(4, 140828),
(4, 140225),
(4, 140096),
(5, 130883),
(5, 130021),
(5, 130127),
(5, 130220),
(6, 130883),
(6, 130021),
(6, 130127),
(6, 130220),
(7, 120003),
(7, 120095),
(7, 120097),
(7, 120936),
(7, 120236),
(7, 120876),
(7, 120321),
(7, 120112),
(7, 120030),
(7, 120361),
(8, 120003),
(8, 120095),
(8, 120097),
(8, 120936),
(8, 120236),
(8, 120876),
(8, 120321),
(8, 120112),
(8, 120030),
(8, 120361),
(9, 140098),
(9, 140828),
(9, 140225),
(9, 140096),
(10, 140098),
(10, 140828),
(10, 140225),
(10, 140096),
(11, 140098),
(11, 140828),
(11, 140225),
(11, 140096),
(12, 140098),
(12, 140828),
(12, 140225),
(12, 140096),
(13, 140098),
(13, 140828),
(13, 140225),
(13, 140096),
(14, 140098),
(14, 140828),
(14, 140225),
(14, 140096),
(15, 140098),
(15, 140828),
(15, 140225),
(15, 140096),
(16, 140098),
(16, 140828),
(16, 140225),
(16, 140096),
(17, 130883),
(17, 130021),
(17, 130127),
(17, 130220),
(18, 130883),
(18, 130021),
(18, 130127),
(18, 130220),
(19, 130883),
(19, 130021),
(19, 130127),
(19, 130220),
(20, 130883),
(20, 130021),
(20, 130127),
(20, 130220);

-- --------------------------------------------------------

--
-- Table structure for table `tblattendence`
--

CREATE TABLE IF NOT EXISTS `tblattendence` (
  `userid` int(10) DEFAULT NULL,
  `status` char(100) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `rdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendence`
--

INSERT INTO `tblattendence` (`userid`, `status`, `name`, `rdate`) VALUES
(140098, 'P', 'P', '2015-05-08'),
(140828, 'A', 'A', '2015-05-08'),
(140098, 'A', 'A', '2015-05-08'),
(140828, 'P', 'P', '2015-05-08'),
(140098, 'A', 'A', '2015-05-08'),
(140828, 'P', 'P', '2015-05-08'),
(140098, 'A', 'Swati', '2015-05-08'),
(140828, 'P', 'Swati', '2015-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `userid` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userid`, `fname`, `lname`, `username`, `email`, `usertype`, `password`, `mobile`, `rdate`) VALUES
(1, 'Ashutosh', 'Sharma', 'admin', 'admin@gdgoenka.ac.in', 'Admin', 'admin@123', 2147483647, '2000-02-04'),
(2, 'Nidhi', 'Arora', 'nidhi.arora', 'nidhi.arora@gdgoenka.ac.in', 'Faculty', 'nidhiarora', 531257412, '2001-04-08'),
(3, 'Pooja', 'Rana', 'pooja.rana', 'pooja.rana@gdgoenka.ac.in', 'Faculty', 'poojarana', 2145655566, '2011-04-02'),
(4, 'Pankaj', 'Kumar', 'pankaj.kumar', 'pankaj.kumar@gdgoenka.ac.in', 'Faculty', 'pankajkumar', 123654789, '2014-01-01'),
(5, 'Abdul', 'Manan', 'abdul.manan', 'abdul.manan@gdgoenka.ac.in', 'Faculty', 'abdulmanan', 6547822, '2010-02-12'),
(6, 'Manish', 'Jha', 'manish.jha', 'manish.jha@gdgoenka.ac.in', 'Faculty', 'manishjha', 2046185443, '2014-10-08'),
(7, 'Rashmi', 'Kumari', 'rashmi.kumari', 'rashmi.kumari@gdgoenka.ac.in', 'Faculty', 'rashmikumari', 2147483647, '2013-06-12'),
(8, 'Deepak', 'Sharma', 'deepak.sharma', 'deepak.sharma@gdgoenka.ac.in', 'Faculty', 'deepaksharma', 2147483647, '2012-07-18'),
(9, 'Irfan', 'Khan', 'irfan.khan', 'irfan.khan@gdgoenka.ac.in', 'Faculty', 'irfankhan', 1594872630, '2011-12-26'),
(10, 'B.R.', 'Handa', 'br.handa', 'brhanda@gdgoenka.ac.in', 'Faculty', 'brhanda', 1472580369, '2011-05-18'),
(11, 'Shreya', 'Bhandari', 'shreya.bhandari', 'shreya.bhandari@gdgoenka.ac.in', 'Student', 'shreyabhandari', 456981235, '2014-10-06'),
(12, 'Arushi', 'Sharma', 'arushi.sharma', 'arushi.sharma@gdgoenka.ac.in', 'Student', 'arushisharma', 21365499, '2014-09-03'),
(13, 'Harsha', 'Jha', 'harsha.jha', 'harsha.jha@gdgoenka.ac.in', 'Student', 'harshajha', 6541398, '2011-01-15'),
(14, 'Chetan', 'Yadav', 'chetan.yadav', 'chetan.yadav@gdgoenka.ac.in', 'Student', 'chetanyadav', 6547892, '2013-12-04'),
(15, 'Rohit', 'Shaw', 'rohit.shaw', 'rohit.shaw@gdgoenka.ac.in', 'Student', 'rohitshaw', 54133611, '2015-11-05'),
(16, 'Mohitosh', 'Mondal', 'mohitosh.mondal', 'mohitosh.mondal@gdgoenka.ac.in', 'Student', 'mohitoshmondal', 789642, '2005-04-25'),
(17, 'Priya', 'Garg', 'priya.garg', 'priya.garg@gdgoenka.ac.in', 'Student', 'priyagarg', 45123361, '2006-12-11'),
(18, 'Ankit', 'Khatana', 'ankit.khatana', 'ankit.khatana@gdgoenka.ac.in', 'Student', 'ankitkhatana', 653321556, '2012-04-21'),
(19, 'Swati', 'Rana', 'swati.rana', 'swati.rana@gdgoenka.ac.in', 'Student', 'swatirana', 21354662, '2014-10-08'),
(20, 'Charvi', 'Khanna', 'charvi.khanna', 'charvi.khanna@gdgoenka.ac.in', 'Student', 'charvikhanna', 123645566, '2003-01-07'),
(21, 'Lokesh', 'Yadav', 'lokesh.yadav', 'lokesh.yadav@gdgoenka.ac.in', 'Student', 'lokeshyadav', 2147483647, '2013-07-12'),
(22, 'Mrugakshi', 'Doshi', 'mrugakshi.doshi', 'mrugakshi.doshi@gdgoenka.ac.in', 'Student', 'mrugakshidoshi', 2147483647, '2012-07-16'),
(23, 'Sanchit', 'Gupta', 'sanchit.gupta', 'sanchit.gupta@gdgoenka.ac.in', 'Student', 'sanchitgupta', 2147483647, '2011-07-20'),
(24, 'Sawan', 'Chawla', 'sawan.chawla', 'sawan.chawla@gdgoenka.ac.in', 'Student', 'sawanchawla', 2147483647, '2012-07-16'),
(25, 'Pankaj', 'Patil', 'pankaj.patil', 'pankaj.patil@gdgoenka.ac.in', 'Student', 'pankajpatil', 2147483647, '2012-07-16'),
(26, 'Anand', 'Nandanan', 'anand.nandanan', 'anand.nandanan@gdgoenka.ac.in', 'Student', 'anandnandanan', 2147483647, '2012-07-16'),
(27, 'Prateek', 'Singh', 'prateek.singh', 'prateek.singh@gdgoenka.ac.in', 'Student', 'prateeksingh', 2147483647, '2012-07-16'),
(28, 'Manavjit', 'Singh', 'manavjit.singh', 'manavjit.singh@gdgoenka.ac.in', 'Student', 'manavjitsingh', 2147483647, '2012-10-13'),
(29, 'Subham', 'Chaudhary', 'subham.chaudhary', 'subham.chaudhary@gdgoenka.ac.in', 'Student', 'subhamchaudhary', 2147483647, '2012-07-16'),
(30, 'Akshay', 'Kacker', 'akshay.kacker', 'akshay.kacker@gdgoenka.ac.in', 'Student', 'akshaykacker', 2147483647, '2012-07-16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
