-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2025 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `norsu_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `subject_id`, `date`) VALUES
(1, 202303694, 1, '2025-03-06'),
(2, 202303694, 1, '2025-03-06'),
(3, 202303694, 2, '2025-03-06'),
(5, 202303694, 1, '2025-03-06'),
(6, 202303694, 2, '2025-03-06'),
(7, 202303694, 1, '2025-03-06'),
(8, 202303694, 3, '2025-03-06'),
(9, 202303694, 4, '2025-03-06'),
(12, 202303694, 1, '2025-03-06'),
(13, 202303694, 1, '2025-03-06'),
(14, 202303694, 3, '2025-03-06'),
(15, 202303694, 4, '2025-03-06'),
(16, 987654321, 1, '2025-03-12'),
(17, 987654321, 4, '2025-03-12'),
(18, 987654321, 3, '2025-03-12'),
(19, 987654321, 6, '2025-03-12'),
(27, 202303694, 1, '2025-03-06'),
(28, 202303694, 1, '2025-03-06'),
(29, 202303694, 3, '2025-03-06'),
(30, 202303694, 4, '2025-03-06'),
(31, 987654321, 1, '2025-03-12'),
(32, 987654321, 4, '2025-03-12'),
(33, 987654321, 3, '2025-03-12'),
(34, 987654321, 6, '2025-03-12'),
(35, 202303694, 1, '2025-03-06'),
(42, 202303694, 1, '2025-03-06'),
(43, 202303694, 1, '2025-03-06'),
(44, 202303694, 3, '2025-03-06'),
(45, 202303694, 4, '2025-03-06'),
(46, 987654321, 1, '2025-03-12'),
(47, 987654321, 4, '2025-03-12'),
(48, 987654321, 3, '2025-03-12'),
(49, 987654321, 6, '2025-03-12'),
(50, 202303694, 1, '2025-03-06'),
(51, 200456, 8, '2003-12-12'),
(57, 202303694, 1, '2025-03-06'),
(58, 202303694, 1, '2025-03-06'),
(59, 202303694, 3, '2025-03-06'),
(60, 202303694, 4, '2025-03-06'),
(61, 987654321, 1, '2025-03-12'),
(62, 987654321, 4, '2025-03-12'),
(63, 987654321, 3, '2025-03-12'),
(64, 987654321, 6, '2025-03-12'),
(65, 202303694, 1, '2025-03-06'),
(66, 200456, 8, '2003-12-12'),
(67, 23456, 9, '2025-12-06'),
(68, 23456, 3, '2025-12-06'),
(69, 23456, 4, '2025-12-06'),
(72, 202303694, 1, '2025-03-06'),
(73, 202303694, 1, '2025-03-06'),
(74, 202303694, 3, '2025-03-06'),
(75, 202303694, 4, '2025-03-06'),
(76, 987654321, 1, '2025-03-12'),
(77, 987654321, 4, '2025-03-12'),
(78, 987654321, 3, '2025-03-12'),
(79, 987654321, 6, '2025-03-12'),
(80, 202303694, 1, '2025-03-06'),
(81, 200456, 8, '2003-12-12'),
(82, 23456, 9, '2025-12-06'),
(83, 23456, 3, '2025-12-06'),
(84, 23456, 4, '2025-12-06'),
(85, 123456, 3, '2023-12-12'),
(86, 123456, 4, '2023-12-12'),
(87, 123456, 4, '2023-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `raw_attendance`
--

CREATE TABLE `raw_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_attendance`
--

INSERT INTO `raw_attendance` (`id`, `student_id`, `student_name`, `subject`, `date`) VALUES
(1, 202303694, 'MARCO MIKE A', 'SCIENCE', '2025-03-06'),
(3, 202303694, 'shane', 'science', '2025-03-06'),
(4, 202303694, 'shane', 'english', '2025-03-06'),
(5, 202303694, 'shane', 'math', '2025-03-06'),
(6, 987654321, 'miko', 'science', '2025-03-12'),
(7, 987654321, 'miko', 'math', '2025-03-12'),
(8, 987654321, 'miko', 'english', '2025-03-12'),
(9, 987654321, 'miko', 'Araling Panlipunan', '2025-03-12'),
(10, 202303694, 'miker', 'science', '2025-03-06'),
(11, 200456, 'kernly', 'science, math, hekasi', '2003-12-12'),
(12, 23456, 'mike', 'hekasi', '2025-12-06'),
(13, 23456, 'mike', 'english', '2025-12-06'),
(14, 23456, 'mike', 'math', '2025-12-06'),
(15, 123456, 'miker', 'english', '2023-12-12'),
(16, 123456, 'miker', 'math', '2023-12-12'),
(17, 123456, 'miker', 'math', '2023-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`) VALUES
(23456, 'mike'),
(123456, 'miker'),
(200456, 'kernly'),
(202303694, 'miker'),
(987654321, 'miko');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`) VALUES
(6, 'Araling Panlipunan'),
(3, 'english'),
(9, 'hekasi'),
(4, 'math'),
(2, 'math, english, hekasi'),
(1, 'SCIENCE'),
(8, 'science, math, hekasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `raw_attendance`
--
ALTER TABLE `raw_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_name` (`subject_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `raw_attendance`
--
ALTER TABLE `raw_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
