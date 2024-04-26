-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 06:18 PM
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
-- Database: `lmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(0, 'admin_iips', 'admin1@gmail.com', 'admin@1234', 12345678900),
(1, 'admin_iips', 'admin1@gmail.com', 'admin@1234', 12345678900);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `author` varchar(200) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `cl_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `author`, `publisher`, `cl_no`) VALUES
(123, 'How to do it by Computer', 'R.G.Dromey', 'Mc Graw Hill', 21),
(3829, 'System Analysis and Design', 'M. Awadh', 'Publisher', 123),
(17036, 'Essential Reference Coord. Atlas', 'D.K', 'DK', 6289),
(17042, 'Negi Jagmohan', 'International Tourism and Travel', 'S. Chand', 16),
(17043, 'All you wanted to know about airline function', 'Sikdan KayKay', 'Coheeler', 131),
(17047, 'invest mgt 10th edition', 'Bhalla VK', 'S. Chand', 132),
(17052, 'A text book of Discrete Mathematics', 'Swapan Kumar Sarkar', 'S. Chand', 2341),
(17056, ' MGT Informative Systems', 'R.K Gupta', 'S. Chand', 921),
(17062, 'Marketing a strategic orientation', 'Grover KS', 'S. Chand', 27635),
(17064, 'Advanced Practical Account', 'Mukherjee/Bhattacharya', 'S. Chand', 1211),
(17066, 'Consumer Behavior', 'Jain PC', 'S. Chand', 38491),
(17076, 'Financial Accounting', 'Jawaharlal', 'S. Chand', 1234),
(17081, 'Financial Derivatives', 'Bhalla VK', 'S. Chand', 21),
(17082, 'Portfolio Analysis and Management', 'Gackle Merlin', 'S. Chand', 1726),
(17084, 'Winning in the Optimist Market', 'Lyon AS', 'S. Chand', 111),
(17085, 'The Rational Investor', 'Mrkuika F.E', 'Frobus', 18),
(17154, 'Treat People Right', 'Lawler ', 'Jossey Bass', 198234),
(17155, 'Strategic Thinking ', 'Graney T', 'CPEF', 137),
(17157, 'H.B on Electronics Commerce', 'Shaw M', 'Springer', 123),
(17158, 'Welcome to Hospitality', 'Sung Kye', 'Delman', 140),
(17160, 'Business Statics 3rd Edition', 'Black Ken', 'Schelmerstern', 13),
(17163, 'International Economy', 'Cartough IR', 'Thomson', 81),
(17167, '2000 tips for Lectures', 'Racehill', 'Kogan', 314),
(24945, 'Mastering Cloud Computing', 'Rajkumar Buyya', 'Mc Graw Hill Publisher', 5);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `name`, `mobile`, `email`) VALUES
(1, 'Faculty 1', 983741174, 'faculty1@gmail.com'),
(2, 'Faculty 2', 38297457439, 'faculty2@gmail.com'),
(3, 'Faculty 3', 3479137422, 'faculty3@gmail.com'),
(4, 'Faculty 4', 341827343, 'faculty4@gmail.com'),
(5, 'Faculty 5', 983427414, 'faculty5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `issued_book`
--

CREATE TABLE `issued_book` (
  `s_no` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `stu_id` varchar(55) NOT NULL,
  `fac_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `issue_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_book`
--

INSERT INTO `issued_book` (`s_no`, `book_id`, `stu_id`, `fac_id`, `status`, `issue_date`) VALUES
(1, 24945, 'IC-2K20-43', NULL, 1, '2023-04-07'),
(23, 123, 'IC-2K20-42', NULL, 1, '2323-05-04'),
(24, 3829, 'IC-2K20-32', NULL, 1, '2323-05-04'),
(25, 17042, 'IC-2K20-10', NULL, 1, '2323-05-04'),
(28, 17036, 'IC-2K20-46', NULL, 1, '2323-05-04'),
(29, 17043, 'IC-2K20-44', NULL, 1, '2323-05-04'),
(30, 17154, 'IC-2K20-22', NULL, 1, '2323-05-04'),
(31, 17155, 'IC-2K20-19', NULL, 1, '2323-05-04'),
(32, 17081, 'IC-2K20-04', NULL, 1, '2323-05-04'),
(33, 17082, 'IC-2K20-05', NULL, 1, '2323-05-04'),
(35, 17076, 'IC-2K20-02', NULL, 1, '2323-05-04'),
(36, 17084, 'IC-2K20-03', NULL, 1, '2323-05-04'),
(38, 17084, 'IC-2K20-08', NULL, 1, '2323-05-04'),
(39, 17085, 'IC-2K20-09', NULL, 1, '2323-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` varchar(55) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `name`, `mobile`, `email`) VALUES
('IC-2K20-01', 'Aakash Rajore', 3849217, 'Aakash@gmail.com'),
('IC-2K20-02', 'Abhay Singh ', 813274362, 'Abhay@gmail.com'),
('IC-2K20-03', 'Abhilasha Thakur', 32875247801, 'abhilasha@gmail.com'),
('IC-2K20-04', 'Abhishek Lakhan', 82346524761, 'Abhishek@gmail.com'),
('IC-2K20-05', 'Abhishek Pawar', 38274265302, 'Abhishek@gmail.com'),
('IC-2K20-06', 'Aditi Trivedi', 32984756209, 'Aditi@gmail.com'),
('IC-2K20-07', 'Aditya Jain', 3289741301, 'Aditya@gmail.com'),
('IC-2K20-08', 'Aishwarya Gawande ', 9837291047, 'aishwarya@gmail.com'),
('IC-2K20-09', 'Akshat Sharma', 9384721123, 'akshat@gmail.com'),
('IC-2K20-10', 'Anil Gehlot', 738919138, 'anilgehlot2000@gmail.com'),
('IC-2K20-19', 'Chetan Kumar Jain', 8978326132, 'chetan@gmail.com'),
('IC-2K20-22', 'Dheemant Rathod', 9873201443, 'dheemant@gmail.com'),
('IC-2K20-32', 'Harsh Yadav', 9669841861, 'yadav123@gmail.com'),
('IC-2K20-36', 'Jayanshu Sharma', 983742010, 'jayanshu@gmail.com'),
('IC-2K20-40', 'Khushboo Chauhan', 9873421471, 'khushboo@gmail.com'),
('IC-2K20-41', 'Kuldeep Solanki', 90243801, 'kuldeep@gmail.com'),
('IC-2K20-42', 'Kundan Yadav', 876543210, 'kundan@gmail.com'),
('IC-2K20-43', 'Lokesh Dangi', 8827037442, 'lokeshdangi525@gmail.com'),
('IC-2K20-44', 'Manaswi Sharma', 823798712, 'dfhhwrq0u[qu@gmail.com'),
('IC-2K20-46', 'Nandini Rathod', 9669423030, 'nandini@gmail.com'),
('IC-2K20-51', 'Paritosh Verma', 93842175, 'paritosh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `issued_book`
--
ALTER TABLE `issued_book`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `stu_id` (`stu_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issued_book`
--
ALTER TABLE `issued_book`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued_book`
--
ALTER TABLE `issued_book`
  ADD CONSTRAINT `issued_book_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `issued_book_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `issued_book_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
