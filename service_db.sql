-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 09:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookorder`
--

CREATE TABLE `bookorder` (
  `orderId` varchar(255) NOT NULL,
  `bookingStatus` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `sCategory` varchar(255) DEFAULT NULL,
  `sContactId` varchar(255) DEFAULT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `serviceDescription` varchar(255) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uContactId` varchar(255) DEFAULT NULL,
  `uName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookorder`
--

INSERT INTO `bookorder` (`orderId`, `bookingStatus`, `date`, `email`, `endTime`, `sCategory`, `sContactId`, `sName`, `serviceDescription`, `startTime`, `status`, `uContactId`, `uName`) VALUES
('101', 'unoccupied', '2024-02-10', 'tarini@gmail.com', '6pm', 'Home Services', '1002', 'Ojas', 'Cleaning Floor', '10am', 'Pending', '1029', 'Tarini'),
('102', 'unoccupied', '2024-02-16', 'lisha@gmail.com', '8pm', 'Technology Services', '1075', 'Siddesh', 'repairing TV', '10am', 'Approved', '1026', 'lisha'),
('103', 'unoccupied', '2024-02-09', 'lisha@gmail.com', '6pm', 'Technology Services', '1075', 'Siddesh', 'Wifi Repair', '10am', 'Disapproved', '1026', 'lisha'),
('104', 'unoccupied', '2024-02-10', 'lisha@gmail.com', '8pm', 'Technology Services', '1075', 'Siddesh', 'Smart TV Repair and Wifi installation', '10am', 'Disapproved', '1026', 'lisha'),
('105', 'unoccupied', '2024-02-12', 'lisha@gmail.com', '6pm', 'Automotive Services', '1003', 'Pankaj', 'Full car service', '10am', 'Disapproved', '1026', 'lisha');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `sContactId` varchar(255) NOT NULL,
  `sAddress` varchar(255) DEFAULT NULL,
  `sAge` int(11) NOT NULL,
  `sArea` varchar(255) DEFAULT NULL,
  `sCategory` varchar(255) DEFAULT NULL,
  `sCity` varchar(255) DEFAULT NULL,
  `sCloseTime` varchar(255) DEFAULT NULL,
  `sEmail` varchar(255) DEFAULT NULL,
  `sLatitude` float NOT NULL,
  `sLongitude` float NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sOpenTime` varchar(255) DEFAULT NULL,
  `sPassword` varchar(255) DEFAULT NULL,
  `sPincode` int(11) NOT NULL,
  `sServiceType` varchar(255) DEFAULT NULL,
  `sStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`sContactId`, `sAddress`, `sAge`, `sArea`, `sCategory`, `sCity`, `sCloseTime`, `sEmail`, `sLatitude`, `sLongitude`, `sName`, `sOpenTime`, `sPassword`, `sPincode`, `sServiceType`, `sStatus`) VALUES
('1001', 'Jalgoan', 26, 'Mahatma Gandhi Gardan', 'Technology Services', 'Jalgoan', '8pm', 'rohanpatil@gmail.com', 20.0001, 73.7928, 'Rohan', '11am', '1234', 424009, 'Electrician', 'Approved'),
('1002', 'Nandurbar', 30, 'Jagtap Wadi', 'Home Services', 'Nandurbar', '5pm', 'ojaspatil@gmail.com', 20.0434, 73.6535, 'Ojas', '9am', '1234', 425412, 'Cleaning Floor', 'Pending'),
('1003', 'Nimziri Naka', 35, 'GPTP Stop', 'Automotive Services', 'Dhule', '7pm', 'pankajdeore@gmail.com', 20.0022, 73.8062, 'Pankaj', '10am', '1234', 424005, 'car driver', 'Disapproved'),
('1075', 'Dupkeshwar temple', 20, 'Dhule', 'Technology Services', 'Dhule', '8pm', 'siddesh@gmail.com', 20.0012, 73.7793, 'Siddesh', '10am', '1234', 424005, 'Technology Services', 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uContactId` varchar(255) NOT NULL,
  `uAddress` varchar(255) DEFAULT NULL,
  `uArea` varchar(255) DEFAULT NULL,
  `uCity` varchar(255) DEFAULT NULL,
  `uDOB` varchar(255) DEFAULT NULL,
  `uEmail` varchar(255) DEFAULT NULL,
  `uLatitude` float NOT NULL,
  `uLongitude` float NOT NULL,
  `uName` varchar(255) DEFAULT NULL,
  `uPassword` varchar(255) DEFAULT NULL,
  `uPincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uContactId`, `uAddress`, `uArea`, `uCity`, `uDOB`, `uEmail`, `uLatitude`, `uLongitude`, `uName`, `uPassword`, `uPincode`) VALUES
('1026', 'nandurbar', 'near D.R. High School', 'Nandurbar', '08-03-2003', 'lisha@gmail.com', 20.0027, 73.7849, 'lisha', '1234', 425412),
('1029', 'nandurbar', 'near Bus Stop', 'Nandurbar', '12-6-2003', 'tarini@gmail.com', 20.0004, 73.7925, 'Tarini', '1234', 425412),
('1031', 'nandurbar', 'near Bus Stop', 'Nandurbar', '12-06-2004', 'vishakha@gmail.com', 20.0046, 73.7868, 'Vishakha', '1234', 425412);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookorder`
--
ALTER TABLE `bookorder`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`sContactId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uContactId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
