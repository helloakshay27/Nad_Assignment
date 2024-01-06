-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 02:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nad`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(50) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `createdDate`, `name`, `parentId`) VALUES
(1, '2023-08-04 00:41:23', 'Director', 0),
(2, '2023-08-04 00:41:38', 'Board', 0),
(3, '2023-08-04 00:41:52', 'Managing Director', 1),
(4, '2023-08-04 00:42:11', 'Personal Assistant', 1),
(5, '2023-08-04 00:42:26', 'Personal Assistant', 4),
(6, '2023-08-04 00:42:44', 'Head Manager', 3),
(7, '2023-08-04 00:42:53', 'Manager', 6),
(8, '2023-08-04 00:43:04', 'UI Team Lead', 7),
(9, '2023-08-04 00:43:17', 'Developer Team Lead', 7),
(10, '2023-08-04 00:43:31', 'UI Senior Developer', 8),
(11, '2023-08-04 00:43:43', 'UI Developer', 10),
(12, '2023-08-04 00:43:56', 'UI Junior Developer', 11),
(13, '2023-08-04 00:44:07', 'UI Intern', 12),
(14, '2023-08-04 00:44:16', 'UI Trainy', 12),
(15, '2023-08-04 00:44:49', 'Senior Developer', 9),
(16, '2023-08-04 00:45:00', 'Junior Developer', 15),
(17, '2023-08-04 00:45:08', 'Intern Developer', 15),
(18, '2023-08-04 00:45:18', 'Trainy Developer', 15),
(19, '2023-08-04 00:45:29', 'President', 2),
(20, '2023-08-04 00:45:42', 'Vice President', 19),
(21, '2023-08-04 00:45:55', 'Members', 19),
(22, '2024-01-06 19:07:21', 'Akshay Shinde', 4),
(23, '2024-01-06 19:08:57', 'vishal rupani', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
