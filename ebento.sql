-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 03:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebento`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `uid` varchar(15) NOT NULL,
  `eid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`uid`, `eid`) VALUES
('user1', 'event1'),
('user1', 'event2'),
('user1', 'event3'),
('user1', 'event4'),
('user2', 'event2'),
('user2', 'event3'),
('user2', 'event5'),
('user3', 'event5'),
('user4', 'event3');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` varchar(15) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(10000) NOT NULL,
  `ticketPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `name`, `date`, `time`, `venue`, `type`, `description`, `ticketPrice`) VALUES
('event1', 'Invicta', '2022-10-18', '10:00:00', 'Auditorium, LHTC, IIITDMJ', 'culturalFest', 'The annual Cultural Fest of Indian Institue of Information Technology, Design and Management, Jabalpur. ', 100),
('event2', 'Hacknovate', '2022-11-04', '00:00:00', 'IIIT Naya Raipur', 'hackathon', 'All the teams will be given 2 days (48 hours) to prepare the solution to the selected problem statements on campus. Top 10 teams will be shortlisted for the final presentation round.', 0),
('event3', 'Bas kar Bassi -Standup Comedy', '2022-10-19', '19:00:00', 'MANIT Bhopal', 'performance', 'This is a show where Anubhav Singh Bassi will tell an honest story about his career choices and his lifestyle. His struggle is worth listening because nothing seems like a struggle. He thinks life has given him everything that he never asked for. Bas Kar Bassi is what he said to himself when he was fired by his last boss, it simply means he cannot do a regular job.  So come and witness a story full of fun, laughter and alcoholic moments.', 500),
('event4', 'Freshers Party', '2022-10-23', '20:00:00', 'OAT, IIITDM Jabalpur', 'dining', 'Freshers Party IIITDMJ', 200),
('event5', 'Diwali Night', '2022-10-23', '20:00:00', 'Antaragini', 'dining', 'Diwali is a festival of light :) Itna hi pata hai mujhko', 88),
('event6', 'Ayush ki party', '2040-05-05', '06:06:00', 'ghar', 'performance', 'discription', 7777);

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `phone_no` varchar(15) DEFAULT NULL,
  `host_id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`phone_no`, `host_id`, `password`, `name`, `email`) VALUES
('1412596589', 'host1', 'admin', 'IIITDM, Jabalpur', 'student.union@iiitdmj.ac.in'),
('7599686459', 'host2', 'd2c', 'DareToCompete', 'd2c@gmail.com'),
('9785641239', 'host3', 'oriole', 'Oriole Entertainment', 'entertainment@oriole.com'),
('8955848239', 'host4', 'ayush', 'Ayush', 'abz4375.ayushsrivastava@gmail.'),
('1234567890', 'host5', '44', 'ayush', 'aty@jfg.com');

-- --------------------------------------------------------

--
-- Table structure for table `masterlink`
--

CREATE TABLE `masterlink` (
  `uid` varchar(15) NOT NULL,
  `host_id` varchar(15) NOT NULL,
  `tid` varchar(15) NOT NULL,
  `eid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterlink`
--

INSERT INTO `masterlink` (`uid`, `host_id`, `tid`, `eid`) VALUES
('user1', 'host1', 'ticket1', 'event1'),
('user1', 'host1', 'ticket10', 'event1'),
('user1', 'host1', 'ticket11', 'event1'),
('user1', 'host1', 'ticket12', 'event1'),
('user1', 'host1', 'ticket13', 'event1'),
('user1', 'host1', 'ticket14', 'event1'),
('user1', 'host2', 'ticket15', 'event2'),
('user1', 'host2', 'ticket16', 'event2'),
('user1', 'host2', 'ticket17', 'event2'),
('user1', 'host2', 'ticket18', 'event2'),
('user1', 'host2', 'ticket19', 'event2'),
('user1', 'host1', 'ticket2', 'event1'),
('user1', 'host2', 'ticket20', 'event2'),
('user1', 'host2', 'ticket21', 'event2'),
('user1', 'host2', 'ticket22', 'event2'),
('user1', 'host3', 'ticket23', 'event3'),
('user1', 'host3', 'ticket24', 'event3'),
('user1', 'host3', 'ticket25', 'event3'),
('user1', 'host1', 'ticket26', 'event4'),
('user1', 'host1', 'ticket27', 'event4'),
('user3', 'host4', 'ticket28', 'event5'),
('user3', 'host4', 'ticket29', 'event5'),
('user1', 'host1', 'ticket3', 'event1'),
('user3', 'host4', 'ticket30', 'event5'),
('user3', 'host4', 'ticket31', 'event5'),
('user3', 'host4', 'ticket32', 'event5'),
('user3', 'host4', 'ticket33', 'event5'),
('user3', 'host4', 'ticket34', 'event5'),
('user3', 'host4', 'ticket35', 'event5'),
('user3', 'host4', 'ticket36', 'event5'),
('user2', 'host4', 'ticket37', 'event5'),
('user2', 'host4', 'ticket38', 'event5'),
('user2', 'host4', 'ticket39', 'event5'),
('user2', 'host2', 'ticket4', 'event2'),
('user2', 'host4', 'ticket40', 'event5'),
('user2', 'host4', 'ticket41', 'event5'),
('user2', 'host4', 'ticket42', 'event5'),
('user4', 'host3', 'ticket43', 'event3'),
('user4', 'host3', 'ticket44', 'event3'),
('user4', 'host3', 'ticket45', 'event3'),
('user4', 'host3', 'ticket46', 'event3'),
('user4', 'host3', 'ticket47', 'event3'),
('user4', 'host3', 'ticket48', 'event3'),
('user4', 'host3', 'ticket49', 'event3'),
('user2', 'host2', 'ticket5', 'event2'),
('user2', 'host3', 'ticket6', 'event3'),
('user2', 'host3', 'ticket7', 'event3'),
('user2', 'host3', 'ticket8', 'event3'),
('user2', 'host3', 'ticket9', 'event3');

-- --------------------------------------------------------

--
-- Table structure for table `organizes`
--

CREATE TABLE `organizes` (
  `host_id` varchar(15) NOT NULL,
  `eid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizes`
--

INSERT INTO `organizes` (`host_id`, `eid`) VALUES
('host1', 'event1'),
('host1', 'event4'),
('host2', 'event2'),
('host3', 'event3'),
('host4', 'event5'),
('host5', 'event6');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `uid` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`uid`, `password`, `name`, `phone_no`, `email`, `age`, `gender`) VALUES
('user1', 'student', 'Sandeep Jain', '8966545128', '21bcs049@iiitdmj.ac.in', 20, 'Male'),
('user2', 'ayush', 'ayush', '8955848239', 'ayush@mail.com', 19, 'Male'),
('user3', 'ayush', 'free fokat', '7864745216', 'free@gmel.kom', 104, 'Prefer not to s'),
('user4', 'ayush', 'ayush', '7777777777', 'abz43.a@mail.com', 88, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `uid` varchar(15) NOT NULL,
  `tid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`uid`, `tid`) VALUES
('user1', 'ticket1'),
('user1', 'ticket10'),
('user1', 'ticket11'),
('user1', 'ticket12'),
('user1', 'ticket13'),
('user1', 'ticket14'),
('user1', 'ticket15'),
('user1', 'ticket16'),
('user1', 'ticket17'),
('user1', 'ticket18'),
('user1', 'ticket19'),
('user1', 'ticket2'),
('user1', 'ticket20'),
('user1', 'ticket21'),
('user1', 'ticket22'),
('user1', 'ticket23'),
('user1', 'ticket24'),
('user1', 'ticket25'),
('user1', 'ticket26'),
('user1', 'ticket27'),
('user1', 'ticket3'),
('user2', 'ticket37'),
('user2', 'ticket38'),
('user2', 'ticket39'),
('user2', 'ticket4'),
('user2', 'ticket40'),
('user2', 'ticket41'),
('user2', 'ticket42'),
('user2', 'ticket5'),
('user2', 'ticket6'),
('user2', 'ticket7'),
('user2', 'ticket8'),
('user2', 'ticket9'),
('user3', 'ticket28'),
('user3', 'ticket29'),
('user3', 'ticket30'),
('user3', 'ticket31'),
('user3', 'ticket32'),
('user3', 'ticket33'),
('user3', 'ticket34'),
('user3', 'ticket35'),
('user3', 'ticket36'),
('user4', 'ticket43'),
('user4', 'ticket44'),
('user4', 'ticket45'),
('user4', 'ticket46'),
('user4', 'ticket47'),
('user4', 'ticket48'),
('user4', 'ticket49');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `host_id` varchar(15) NOT NULL,
  `tid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`host_id`, `tid`) VALUES
('host1', 'ticket1'),
('host1', 'ticket10'),
('host1', 'ticket11'),
('host1', 'ticket12'),
('host1', 'ticket13'),
('host1', 'ticket14'),
('host1', 'ticket2'),
('host1', 'ticket26'),
('host1', 'ticket27'),
('host1', 'ticket3'),
('host2', 'ticket15'),
('host2', 'ticket16'),
('host2', 'ticket17'),
('host2', 'ticket18'),
('host2', 'ticket19'),
('host2', 'ticket20'),
('host2', 'ticket21'),
('host2', 'ticket22'),
('host2', 'ticket4'),
('host2', 'ticket5'),
('host3', 'ticket23'),
('host3', 'ticket24'),
('host3', 'ticket25'),
('host3', 'ticket43'),
('host3', 'ticket44'),
('host3', 'ticket45'),
('host3', 'ticket46'),
('host3', 'ticket47'),
('host3', 'ticket48'),
('host3', 'ticket49'),
('host3', 'ticket6'),
('host3', 'ticket7'),
('host3', 'ticket8'),
('host3', 'ticket9'),
('host4', 'ticket28'),
('host4', 'ticket29'),
('host4', 'ticket30'),
('host4', 'ticket31'),
('host4', 'ticket32'),
('host4', 'ticket33'),
('host4', 'ticket34'),
('host4', 'ticket35'),
('host4', 'ticket36'),
('host4', 'ticket37'),
('host4', 'ticket38'),
('host4', 'ticket39'),
('host4', 'ticket40'),
('host4', 'ticket41'),
('host4', 'ticket42');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`) VALUES
('ticket1'),
('ticket10'),
('ticket11'),
('ticket12'),
('ticket13'),
('ticket14'),
('ticket15'),
('ticket16'),
('ticket17'),
('ticket18'),
('ticket19'),
('ticket2'),
('ticket20'),
('ticket21'),
('ticket22'),
('ticket23'),
('ticket24'),
('ticket25'),
('ticket26'),
('ticket27'),
('ticket28'),
('ticket29'),
('ticket3'),
('ticket30'),
('ticket31'),
('ticket32'),
('ticket33'),
('ticket34'),
('ticket35'),
('ticket36'),
('ticket37'),
('ticket38'),
('ticket39'),
('ticket4'),
('ticket40'),
('ticket41'),
('ticket42'),
('ticket43'),
('ticket44'),
('ticket45'),
('ticket46'),
('ticket47'),
('ticket48'),
('ticket49'),
('ticket5'),
('ticket6'),
('ticket7'),
('ticket8'),
('ticket9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`uid`,`eid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`host_id`);

--
-- Indexes for table `masterlink`
--
ALTER TABLE `masterlink`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `host_id` (`host_id`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `organizes`
--
ALTER TABLE `organizes`
  ADD PRIMARY KEY (`host_id`,`eid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`uid`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`host_id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `participant` (`uid`),
  ADD CONSTRAINT `attend_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`);

--
-- Constraints for table `masterlink`
--
ALTER TABLE `masterlink`
  ADD CONSTRAINT `masterlink_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `participant` (`uid`),
  ADD CONSTRAINT `masterlink_ibfk_2` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`),
  ADD CONSTRAINT `masterlink_ibfk_3` FOREIGN KEY (`tid`) REFERENCES `ticket` (`tid`),
  ADD CONSTRAINT `masterlink_ibfk_4` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`);

--
-- Constraints for table `organizes`
--
ALTER TABLE `organizes`
  ADD CONSTRAINT `organizes_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`),
  ADD CONSTRAINT `organizes_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `participant` (`uid`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `ticket` (`tid`);

--
-- Constraints for table `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sells_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`),
  ADD CONSTRAINT `sells_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `ticket` (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
