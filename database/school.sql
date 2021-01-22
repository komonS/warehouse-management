-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 11:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `memberStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `fname`, `lname`, `email`, `username`, `password`, `picture`, `memberStatusID`) VALUES
(1, 'Komon', 'Wanje', 'silwerbas@gmail.com', 'komon', '81dc9bdb52d04dc20036dbd8313ed055', '', 1),
(2, 'aaa', 'bbb', 'aaa@aaa', 'aaa', '81dc9bdb52d04dc20036dbd8313ed055', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `memberstatus`
--

CREATE TABLE `memberstatus` (
  `memberStatusID` int(11) NOT NULL,
  `memberStatusName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberstatus`
--

INSERT INTO `memberstatus` (`memberStatusID`, `memberStatusName`) VALUES
(1, 'admin'),
(2, 'owner'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` int(11) NOT NULL,
  `positionNameTH` varchar(100) NOT NULL,
  `positionNameEN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `positionNameTH`, `positionNameEN`) VALUES
(1, 'ผู้สอน', 'Teach'),
(2, 'ผู้ช่วย', 'Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `schooldetail`
--

CREATE TABLE `schooldetail` (
  `sdID` int(11) NOT NULL,
  `schoolID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `schoolStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolstatus`
--

CREATE TABLE `schoolstatus` (
  `schoolStatusID` int(11) NOT NULL,
  `schoolStatusName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolstatus`
--

INSERT INTO `schoolstatus` (`schoolStatusID`, `schoolStatusName`) VALUES
(1, 'waiting'),
(2, 'join'),
(3, 'admin'),
(4, 'reject');

-- --------------------------------------------------------

--
-- Table structure for table `school_information`
--

CREATE TABLE `school_information` (
  `schoolID` int(11) NOT NULL,
  `schoolNameTH` varchar(100) NOT NULL,
  `schoolNameEN` varchar(100) NOT NULL,
  `schoolPicture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `studentCode` varchar(100) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `schoolID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) NOT NULL,
  `subjectCode` varchar(100) NOT NULL,
  `subjectNameTH` varchar(100) NOT NULL,
  `subjectNameEN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subjectdetail`
--

CREATE TABLE `subjectdetail` (
  `subjectDetailID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `positionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `teacherCode` varchar(100) NOT NULL,
  `teacherName` varchar(100) NOT NULL,
  `schoolID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `workID` int(11) NOT NULL,
  `workName` varchar(100) NOT NULL,
  `workDetail` text NOT NULL,
  `subjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workdetail`
--

CREATE TABLE `workdetail` (
  `workDetailID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `workID` int(11) NOT NULL,
  `point` float NOT NULL,
  `workDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `memberstatus`
--
ALTER TABLE `memberstatus`
  ADD PRIMARY KEY (`memberStatusID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `schooldetail`
--
ALTER TABLE `schooldetail`
  ADD PRIMARY KEY (`sdID`);

--
-- Indexes for table `schoolstatus`
--
ALTER TABLE `schoolstatus`
  ADD PRIMARY KEY (`schoolStatusID`);

--
-- Indexes for table `school_information`
--
ALTER TABLE `school_information`
  ADD PRIMARY KEY (`schoolID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`,`studentCode`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`,`subjectCode`);

--
-- Indexes for table `subjectdetail`
--
ALTER TABLE `subjectdetail`
  ADD PRIMARY KEY (`subjectDetailID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`,`teacherCode`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`workID`);

--
-- Indexes for table `workdetail`
--
ALTER TABLE `workdetail`
  ADD PRIMARY KEY (`workDetailID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `memberstatus`
--
ALTER TABLE `memberstatus`
  MODIFY `memberStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schooldetail`
--
ALTER TABLE `schooldetail`
  MODIFY `sdID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolstatus`
--
ALTER TABLE `schoolstatus`
  MODIFY `schoolStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_information`
--
ALTER TABLE `school_information`
  MODIFY `schoolID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjectdetail`
--
ALTER TABLE `subjectdetail`
  MODIFY `subjectDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `workID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workdetail`
--
ALTER TABLE `workdetail`
  MODIFY `workDetailID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
