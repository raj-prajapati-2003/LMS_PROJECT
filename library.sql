-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 05:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'chirag', 'chirag@gmail.com', 'admin', 'e6e061838856bf47e1de730719fb2609', '2024-05-07 04:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'Dr Raj Prajapati', '2024-05-06 13:31:27', NULL),
(11, 'Dr Deep Prajapati', '2024-05-06 13:32:52', NULL),
(13, 'Dr Rutvik Rana', '2024-05-06 13:47:12', NULL),
(14, 'Dr Rogers', '2024-05-07 04:59:33', NULL),
(15, 'J. Adams', '2024-05-07 04:59:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 4, 7865, 20, '2017-07-08 20:04:55', '2024-05-06 13:23:33'),
(3, 'physics', 6, 4, 2765, 50, '2017-07-08 20:17:31', '2024-05-06 13:23:15'),
(4, 'Software Engineering', 6, 1, 2345, 50, '2024-05-06 13:18:17', '2024-05-06 13:23:01'),
(5, 'Networking - I', 6, 10, 3876, 50, '2024-05-06 14:01:15', NULL),
(6, 'PHP', 5, 11, 5647, 100, '2024-05-06 14:01:43', NULL),
(7, 'Computer Graphics', 6, 13, 5670, 150, '2024-05-06 14:02:47', NULL),
(8, 'Advance Java', 11, 15, 2332, 500, '2024-05-10 08:14:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Business', 0, '2024-05-06 13:29:20', '2024-05-12 13:05:44'),
(9, 'Romantic', 1, '2024-05-07 04:54:54', '0000-00-00 00:00:00'),
(10, 'Technology', 1, '2024-05-07 04:55:29', '0000-00-00 00:00:00'),
(11, 'Scinence', 1, '2024-05-07 04:56:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL),
(7, 3, 'SID020', '2024-05-06 13:34:47', '2024-05-06 14:19:34', 1, 100),
(8, 3, 'SID020', '2024-05-06 14:15:29', '2024-05-06 14:16:08', 1, 50),
(9, 3, 'SID019', '2024-05-07 06:58:11', NULL, NULL, NULL),
(10, 3, 'SID002', '2024-05-07 06:58:50', NULL, NULL, NULL),
(11, NULL, 'SID009', '2024-05-07 06:59:17', NULL, NULL, NULL),
(12, 1, 'SID011', '2024-05-07 07:00:32', NULL, NULL, NULL),
(13, 3, 'SID009', '2024-05-07 07:01:34', NULL, NULL, NULL),
(14, 1, 'SID019', '2024-05-07 07:01:56', NULL, NULL, NULL),
(15, 3, 'SID002', '2024-05-07 07:02:24', NULL, NULL, NULL),
(16, NULL, 'SID011', '2024-05-07 07:03:11', NULL, NULL, NULL),
(17, NULL, 'SID019', '2024-05-07 07:03:47', NULL, NULL, NULL),
(18, 3, 'SID019', '2024-05-07 07:04:07', NULL, NULL, NULL),
(19, 3, 'SID021', '2024-05-07 07:04:36', '2024-05-07 07:06:47', 1, 1500),
(20, NULL, 'SID020', '2024-05-10 08:15:33', NULL, NULL, NULL),
(21, 8, 'SID022', '2024-05-10 08:17:08', '2024-05-10 08:17:33', 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(13, 'SID020', 'Raj Prajapati', 'rkp87000114@gmail.com', '9081515901', '99b138ff9faabc8e3ff57490f8ddf1a2', 1, '2024-05-06 12:37:23', '2024-05-07 04:35:22'),
(15, 'SID022', 'Deep Prajapati', 'rkp87000116@gmail.com', '9081515901', '99b138ff9faabc8e3ff57490f8ddf1a2', 1, '2024-05-07 07:09:57', NULL),
(16, 'SID023', 'Rutvik Rana', 'rkp87000117@gmail.com', '9081515901', '99b138ff9faabc8e3ff57490f8ddf1a2', 1, '2024-05-07 07:10:30', NULL),
(17, 'SID024', 'Ashish Prajapati', 'rkp87000118@gmail.com', '9081515901', '99b138ff9faabc8e3ff57490f8ddf1a2', 1, '2024-05-07 07:11:10', NULL),
(18, 'SID025', 'Sumit Prajapati', 'rkp87000119@gmail.com', '9081515901', '99b138ff9faabc8e3ff57490f8ddf1a2', 1, '2024-05-07 07:11:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
