-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 04:25 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `01_zhenquan_pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin'),
(1, 'admin2', 'admin2'),
(2, 'lavincy', '65648439Cc');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incidentId` int(11) NOT NULL,
  `patrolcarId` varchar(10) NOT NULL,
  `timeDispatched` datetime NOT NULL,
  `timeArrived` datetime DEFAULT NULL,
  `timeCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incidentId`, `patrolcarId`, `timeDispatched`, `timeArrived`, `timeCompleted`) VALUES
(488, 'QX3456B', '2019-03-04 21:09:22', '2019-03-05 14:37:53', '2019-03-05 14:38:07'),
(488, 'QX8923T', '2019-03-04 21:09:22', '2019-03-05 14:35:59', '2019-03-05 14:37:03'),
(490, 'QX1234A', '2019-03-05 10:49:12', '2019-03-05 14:30:02', '2019-03-05 14:30:17'),
(510, 'QX1234A', '2019-03-06 20:32:38', '2019-03-06 20:33:06', '2019-03-06 20:38:49'),
(511, 'QX1111J', '2019-03-06 20:40:16', '2019-03-06 20:40:47', '2019-03-06 20:43:04'),
(515, 'QX1234A', '2019-03-06 20:47:15', '2019-03-06 20:47:21', '2019-03-06 20:47:26'),
(519, 'QX1234A', '2019-03-07 11:47:14', NULL, NULL),
(520, 'QX1111J', '2019-03-07 11:47:52', NULL, NULL),
(521, 'QX1342G', '2019-03-11 14:24:52', '2019-03-11 14:28:30', '2019-03-11 14:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incidentId` int(11) NOT NULL,
  `callName` varchar(50) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentLocation` varchar(5) NOT NULL,
  `incidentDese` varchar(100) NOT NULL,
  `incidentStatusId` varchar(1) NOT NULL,
  `timeCalled` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incidentId`, `callName`, `phoneNumber`, `incidentTypeId`, `incidentLocation`, `incidentDese`, `incidentStatusId`, `timeCalled`) VALUES
(1, 'Peter Leow', '81234567', '060', 'junct', 'a bus collided with a taxi 2 injuries', '', '2019-02-12 03:25:38'),
(482, 'qas', '', 'Fir', '<br /', 'asd', '1', '2019-02-28 06:00:57'),
(483, 'zhen quan', '', 'Fir', '<br /', 'abc abc', '2', '2019-02-28 17:40:13'),
(484, 'aaa', '', 'Fir', '<br /', 'dfsdf', '1', '2019-03-01 14:24:28'),
(485, 'asas', '', 'Fir', '<br /', 'sdsd', '2', '2019-03-01 14:24:47'),
(486, ',omfsfmk', '', 'Fir', '<br /', 'MSKVMWK', '2', '2019-03-04 07:24:35'),
(487, 'SDFSI', '', 'Fir', '<br /', 'NMKNMSKVM', '2', '2019-03-04 07:29:02'),
(488, 'ascasd', '', 'Fir', '<br /', 'nsdkdfdskmf', '3', '2019-03-05 06:38:07'),
(489, 'ascasd', '', 'Fir', '<br /', 'nsdkdfdskmf', '3', '2019-03-05 02:47:43'),
(490, 'aa', '', 'Bur', '<br /', 'efsefw', '3', '2019-03-05 06:30:18'),
(491, 'sdfsdf', '', 'Fir', '<br /', 'fsdfw', '3', '2019-03-05 06:26:34'),
(492, 'sdfsdf', '', 'Fir', '<br /', 'sdvsfkmvk', '1', '2019-03-06 07:36:25'),
(493, 'asd', '', 'Fir', '<br /', '12313', '1', '2019-03-06 11:28:56'),
(494, 'asd', '', 'Fir', '<br /', '123123', '1', '2019-03-06 11:29:04'),
(495, 'asd', '', 'Fir', '<br /', 'jbasjfbh', '1', '2019-03-06 11:47:44'),
(496, 'asds', '', 'Fir', '<br /', 'jhjhjhj', '1', '2019-03-06 11:49:02'),
(497, 'asdas', '', 'Fir', '<br /', 'hjsdhfjh', '1', '2019-03-06 11:49:54'),
(498, 'sfsd', '', 'Fir', '<br /', 'jhj', '1', '2019-03-06 12:00:59'),
(499, 'asdfsd', '', 'Fir', '<br /', 'we', '1', '2019-03-06 12:02:23'),
(500, 'sfsd', '', 'Fir', '<br /', 'jhj', '1', '2019-03-06 12:02:30'),
(501, 'sfsd', '', 'Fir', '<br /', 'jhj', '1', '2019-03-06 12:03:26'),
(502, 'asdfa', '', 'Fir', '<br /', 'j', '1', '2019-03-06 12:03:40'),
(503, 'adas', '', 'Fir', '<br /', 'J', '1', '2019-03-06 12:04:58'),
(504, 'qasda', '', 'Fir', '<br /', 'e', '1', '2019-03-06 12:17:35'),
(505, 'e', '', 'Fir', '<br /', 'r', '1', '2019-03-06 12:18:43'),
(506, 'fsd', '', 'Fir', '<br /', 'l', '1', '2019-03-06 12:19:15'),
(507, 'scf', '', 'Fir', '<br /', 'o', '2', '2019-03-06 12:22:19'),
(508, 'w', '', 'Fir', '<br /', 'k', '2', '2019-03-06 12:23:53'),
(509, 'qasd', '', 'Fir', '<br /', 'k', '2', '2019-03-06 12:30:19'),
(510, 'asd', '', 'Fir', '<br /', 'a', '3', '2019-03-06 12:38:49'),
(511, 'asdasd', '', 'Fir', '<br /', 'e', '3', '2019-03-06 12:43:04'),
(512, 'asd', '', 'Fir', '<br /', '2', '1', '2019-03-06 12:46:25'),
(513, 'a', '', 'Fir', '<br /', '2', '1', '2019-03-06 12:46:39'),
(514, 's', '', 'Fir', '<br /', '1', '1', '2019-03-06 12:47:00'),
(515, 'asd', '', 'Fir', '<br /', '1', '3', '2019-03-06 12:47:26'),
(516, 'poh', '', 'Fir', '<br /', '515', '2', '2019-03-07 03:20:28'),
(517, 'poh', '', 'Fir', '<br /', '515', '2', '2019-03-07 03:20:34'),
(518, 'ss', '', 'Fir', '', 'ff', '2', '2019-03-07 03:45:55'),
(519, 'aaa', '', 'Fir', '', 'fff', '2', '2019-03-07 03:47:14'),
(520, 'aaa', '', 'Fir', '', 'fff', '2', '2019-03-07 03:47:52'),
(521, 'asd', '', 'Fir', '<br /', '451', '3', '2019-03-11 06:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `incidenttype`
--

CREATE TABLE `incidenttype` (
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentTypeDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidenttype`
--

INSERT INTO `incidenttype` (`incidentTypeId`, `incidentTypeDesc`) VALUES
('10', 'Fire'),
('20', 'Riot'),
('30', 'Burglary'),
('40', 'Domestic Violent'),
('50', 'Fallen Tree'),
('60', 'Traffic Accident'),
('70', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`statusId`, `statusDesc`) VALUES
('1', 'Pending'),
('2', 'Dispatch'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcarId` varchar(10) NOT NULL,
  `patrolcarStatusId` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcarId`, `patrolcarStatusId`) VALUES
('QX1111J', '1'),
('QX1234A', '1'),
('QX1342G', '3'),
('QX2222K', '5'),
('QX2288D', '3'),
('QX3456B', '3'),
('QX5555D', '2'),
('QX8723W', '2'),
('QX8769P', '5'),
('QX8923T', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`statusId`, `statusDesc`) VALUES
('1', 'dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incidentId`,`patrolcarId`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incidentId`);

--
-- Indexes for table `incidenttype`
--
ALTER TABLE `incidenttype`
  ADD PRIMARY KEY (`incidentTypeId`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`statusId`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcarId`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`statusId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incidentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
