-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 11:22 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pickme`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate`
--

CREATE TABLE `tbl_candidate` (
  `id` int(11) NOT NULL,
  `student_email` varchar(60) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_candidate`
--

INSERT INTO `tbl_candidate` (`id`, `student_email`, `position_id`) VALUES
(1, 'myles.johnson@strathmore.edu', 3),
(2, 'patience.kamanthe@strathmore.edu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(120) NOT NULL,
  `code` varchar(6) NOT NULL,
  `duration` enum('1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`id`, `course_name`, `code`, `duration`) VALUES
(1, 'Bachelor Of Science In Informatics And Computer Science', 'BICS', '4'),
(3, 'Diploma in Procurement', 'DiP', '2'),
(4, 'Master of Applied Philosophy and Ethics', 'MAPE', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_election`
--

CREATE TABLE `tbl_election` (
  `id` int(11) NOT NULL,
  `election_title` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_election`
--

INSERT INTO `tbl_election` (`id`, `election_title`, `start_date`, `end_date`) VALUES
(1, 'School Council President', '2023-07-12', '2023-07-14'),
(2, 'School Council Vice President', '2023-07-12', '2023-07-14'),
(3, 'Academic Representative', '2023-07-12', '2023-07-14'),
(4, 'Financial Representative', '2023-07-12', '2023-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intake`
--

CREATE TABLE `tbl_intake` (
  `id` int(11) NOT NULL,
  `intake_detail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_intake`
--

INSERT INTO `tbl_intake` (`id`, `intake_detail`) VALUES
(1, 'June 2023'),
(2, 'January 2021'),
(3, 'May 2022'),
(4, 'March 2022'),
(5, 'May 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `id` int(11) NOT NULL,
  `position_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`id`, `position_name`) VALUES
(1, 'Financial Representative'),
(2, 'Academic Representative'),
(3, 'President'),
(4, 'Vice President'),
(5, 'Class Respresentative'),
(6, 'Public Relations Representative');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(1) NOT NULL,
  `role_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role_name`) VALUES
(1, 'admin'),
(2, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(60) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `other_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` enum('Female','Male','Other') NOT NULL,
  `year_of _completion` year(4) NOT NULL,
  `role_id` int(1) NOT NULL DEFAULT 2,
  `intake_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `password` int(4) DEFAULT NULL,
  `is_verfiied` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `first_name`, `other_name`, `last_name`, `phone`, `gender`, `year_of _completion`, `role_id`, `intake_id`, `course_id`, `password`, `is_verfiied`) VALUES
('bramwel.tum@strathmore.edu', 'Bramwel', NULL, 'Tum', '0734565492', 'Male', '2025', 2, 1, 3, 0, '0'),
('charis.orony@strathmore.edu', 'Charis', 'N.', 'Orony', '0790461625', 'Other', '2025', 1, 2, 1, 0, '0'),
('ian.kirema@strathmore.edu', 'Ian', NULL, 'Kirema', '0734567324', 'Male', '2023', 2, 2, 4, 0, '0'),
('kyla.arunga@strathmore.edu', 'Kyla', NULL, 'Arunga', '0759967329', 'Female', '2024', 2, 2, 1, 0, '0'),
('myles.johnson@strathmore.edu', 'Myles', NULL, 'Johnson', '0767925429', 'Male', '2026', 2, 3, 1, 0, '0'),
('patience.kamanthe@strathmore.edu', 'Patience', NULL, 'Kamanthe', '0745671528', 'Female', '2026', 2, 4, 1, 0, '0'),
('ruweida.ismael@strathmore.edu', 'Ruweida', NULL, 'Ismael', '0768932157', 'Female', '2027', 2, 1, 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vote`
--

CREATE TABLE `tbl_vote` (
  `id` int(11) NOT NULL,
  `election_id` int(45) NOT NULL,
  `candidate_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_winner`
--

CREATE TABLE `tbl_winner` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_candidate`
--
ALTER TABLE `tbl_candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`) USING BTREE,
  ADD KEY `student_email` (`student_email`) USING BTREE;

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cour.name` (`course_name`),
  ADD UNIQUE KEY `cour.code` (`code`);

--
-- Indexes for table `tbl_election`
--
ALTER TABLE `tbl_election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_intake`
--
ALTER TABLE `tbl_intake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`),
  ADD KEY `intk_id` (`intake_id`),
  ADD KEY `cour_id` (`course_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tbl_vote`
--
ALTER TABLE `tbl_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ele.id` (`election_id`),
  ADD KEY `can.id` (`candidate_id`);

--
-- Indexes for table `tbl_winner`
--
ALTER TABLE `tbl_winner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eleid` (`election_id`),
  ADD KEY `canid` (`candidate_id`),
  ADD KEY `posid` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_candidate`
--
ALTER TABLE `tbl_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_election`
--
ALTER TABLE `tbl_election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_intake`
--
ALTER TABLE `tbl_intake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vote`
--
ALTER TABLE `tbl_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_winner`
--
ALTER TABLE `tbl_winner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_candidate`
--
ALTER TABLE `tbl_candidate`
  ADD CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `tbl_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_email` FOREIGN KEY (`student_email`) REFERENCES `tbl_user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intake_id` FOREIGN KEY (`intake_id`) REFERENCES `tbl_intake` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_vote`
--
ALTER TABLE `tbl_vote`
  ADD CONSTRAINT `candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `tbl_candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `election_d` FOREIGN KEY (`election_id`) REFERENCES `tbl_election` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_winner`
--
ALTER TABLE `tbl_winner`
  ADD CONSTRAINT `candidateid` FOREIGN KEY (`candidate_id`) REFERENCES `tbl_candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `election_id` FOREIGN KEY (`election_id`) REFERENCES `tbl_election` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `positionid` FOREIGN KEY (`position_id`) REFERENCES `tbl_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
