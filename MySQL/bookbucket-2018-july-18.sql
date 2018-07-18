-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 05:29 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookbucket`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` varchar(40) NOT NULL,
  `book_name` varchar(40) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `edition` varchar(10) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `book_name`, `writer`, `edition`, `category`) VALUES
('1', 'algorithms', 'cormen', '4th', 'cse'),
('2', 'data structure', 'cormen', '4th', 'cse'),
('3', 'Java', 'Schildt', '4th', 'cse'),
('4', 'Architecture', 'Stalling', '3th', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `book_name` varchar(40) NOT NULL,
  `author` varchar(30) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `cell_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`book_name`, `author`, `quantity`, `cell_number`) VALUES
('Python', 'Robert', '3', '01723487223'),
('Java The Complete Reference', 'Schildt', '4', '238476109234'),
('Bangladesh Studies', 'Luas Reik', '4', '0172348722389'),
('Gobesonay Hate Khori', 'Ragib Hasan', '22', '01711111111'),
('Operating System Concepts', 'Shilbert', '2', '01744444444444'),
('Economics', 'Robert Paul', '3', '01711111111'),
('Linux Server', 'Torvas', '6', '01711111111'),
('Maketing Management', 'Kotlar', '3', '01711111111'),
('Linux Introduction', 'Torvas', '10', '0177181234'),
('Cryptography and network security ', 'Atul khate', '1', '7389926929 '),
('Cyber security  ', 'Nina godbole ', '1', '7389926929 '),
('Quantitative Aptitude', 'R. S. AGGARWAL', '1', '7748846559'),
('Harry Porter', 'J.K Rowling', '12', '0168'),
('Soft computing', 'Schildt', '2', '012323453452'),
('aslf', 'aaa', '11', 'werqwer');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `purpose` varchar(10) DEFAULT NULL,
  `price` varchar(5) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `postTime` datetime DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `description`, `purpose`, `price`, `location`, `postTime`, `image`, `phone`) VALUES
(25, 'sadfas', 'sell', '4', 'weqrf', '2018-03-31 20:47:09', 'Computer Architecture by william stallings.jpg', NULL),
(26, 'Phone no post', 'rent', '12', 'saf', '2018-04-02 22:39:41', '680px-Green_eyes_kitten.jpg', '01762547375');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `first_name` varchar(30) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `area` varchar(25) DEFAULT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `surname`, `email`, `password`, `contact_no`, `city`, `area`, `gender`) VALUES
('Sudipto', 'Pantho', 'pantho@gmail.com', '123456', '2319047', 'asdf', 'fasd', 'male'),
('Sakib', 'Rahman', 'sakib@gmail.com', '123456', '01722222222', 'Dhaka', 'Aftabnagar', 'male'),
('Test', 'test', 'test@gmail.com', '123456', '34231412342', 'Dhaka', 'Dhaka', 'male'),
('user', 'user', 'user@gmail.com', '123456', '3223453', 'Dhaka', 'Dhanmondi', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
