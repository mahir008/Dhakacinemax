-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2022 at 07:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL,
  `bookingEmail` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ORDERID` varchar(255) NOT NULL,
  `DATE-TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieID`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`, `bookingEmail`, `amount`, `ORDERID`, `DATE-TIME`) VALUES
(71, 6, 'private-hall', 'imax', '14-3', '15-00', 'xyz', 'abc', '000000000', '000@gmail.com', '5000.00', 'cash', '2020-12-14 12:20:31'),
(72, 4, 'vip-hall', '3d', '12-3', '09-00', 'ddd', 'rahman', '83483883', 'fff@gg.com', 'Not Paid', 'ARVR60181765', '2022-09-01 23:06:51'),
(73, 1, 'main-hall', '3d', '13-3', '09-00', 'ariyan', 'rahman', '83483883', 'barsimpson@idk.com', 'Not Paid', 'ARVR91420892', '2022-09-01 23:12:35'),
(74, 1, 'main-hall', '2d', '12-3', '09-00', 'ahmed', 'ff', '83483883', 'complexityonytbusiness@gmail.com', 'Not Paid', 'ARVR35086362', '2022-09-01 23:14:41'),
(75, 4, 'main-hall', '2d', '13-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'ARVR41798690', '2022-09-02 15:00:59'),
(76, 3, 'vip-hall', '3d', '13-3', '12-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'ARVR42839134', '2022-09-02 15:03:40'),
(77, 4, 'main-hall', '3d', '13-3', '09-00', 'ddd', 'ddd', '33434', 'edhie@gmai.com', 'Not Paid', 'ARVR24226367', '2022-09-02 15:06:28'),
(78, 4, 'main-hall', '3d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'ARVR37728986', '2022-09-02 15:08:08'),
(79, 4, 'main-hall', '2d', '12-3', '12-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'ARVR66609135', '2022-09-02 15:08:27'),
(80, 2, 'main-hall', '2d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'edhie@gmai.com', 'Not Paid', 'BKASH15307730', '2022-09-02 15:09:18'),
(81, 2, 'main-hall', '3d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'BKASH51212421', '2022-09-02 15:12:29'),
(82, 3, 'main-hall', '3d', '13-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'BKASH65494784', '2022-09-02 15:17:09'),
(83, 4, 'main-hall', '3d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'BKASH79457907', '2022-09-02 15:18:18'),
(84, 4, 'main-hall', '3d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'BKASH30452238', '2022-09-02 15:21:15'),
(85, 4, 'main-hall', '3d', '12-3', '09-00', 'mahir', 'lasker', '1634774868', 'mahirul.lasker@northsouth.edu', 'Not Paid', 'BKASH26810782', '2022-09-02 15:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL,
  `mainhall` int(11) NOT NULL,
  `viphall` int(11) NOT NULL,
  `privatehall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`, `mainhall`, `viphall`, `privatehall`) VALUES
(1, 'img/movie-poster-1.jpg', 'Spiderman No way home', ' Action, Adventure, Sci-Fi ', 220, '2022-09-01', 'Jon Watts', 'Tom Holland, Andrew Garfield, Tobey Mguire', 0, 0, 0),
(2, 'img/movie-poster-2.jpg', 'Hawa', 'Mystery/Thriller', 110, '2018-10-18', 'Assad Fouladkar', 'Ahmed Adam, Bayyumy Fouad, Salah Abdullah , Entsar, Dina Fouad ', 0, 0, 0),
(3, 'img/movie-poster-3.jpg', 'Joker: Folie à Deux', 'Thriller', 110, '2022-10-26', 'Todd Phillips', 'Joaquin Phoenix, Lady Gaga', 0, 0, 0),
(4, 'img/movie-poster-4.jpg', 'Intersteller', 'Sci-fi', 105, '2022-07-13', 'Christopher Nolan', ' McConaughey, Anne Hathaway', 0, 0, 0),
(5, 'img/movie-poster-5.jpg', 'Avengers:Secret Wars', 'Action', 132, '2022-12-15', 'Daniel Crettin ', 'Jonathan Majors · Samuel L. Jackson · Ben Mendelsohn · Cobie Smulders · Mark Ruffalo · Chris Hemsworth · Jeremy Renner · Don Cheadle.', 0, 0, 0),
(6, 'img/movie-poster-6.jpg', 'Poran', 'Crime, Mystery, Thriller', 107, '2022-07-10', 'Raihan Rafi', 'Bidya Sinha Saha Mim; Sariful Razz; Yash Rohan', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, '123', 'john', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `foreign_key_movieID` (`movieID`),
  ADD KEY `foreign_key_ORDERID` (`ORDERID`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD CONSTRAINT `foreign_key_movieID` FOREIGN KEY (`movieID`) REFERENCES `movietable` (`movieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
