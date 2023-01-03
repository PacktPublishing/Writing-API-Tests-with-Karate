-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql7.freesqldatabase.com
-- Generation Time: Jan 03, 2023 at 10:33 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql7587919`
--

-- --------------------------------------------------------

--
-- Table structure for table `magicians`
--

CREATE TABLE `magicians` (
  `name` tinytext NOT NULL COMMENT 'Magician''s name',
  `birthyear` smallint(4) NOT NULL COMMENT 'Magician''s birth year',
  `specialties` set('illusions','escapology','card tricks') NOT NULL COMMENT 'Magician''s specialties',
  `id` int(11) NOT NULL COMMENT 'The primary id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Famous magicians';

--
-- Dumping data for table `magicians`
--

INSERT INTO `magicians` (`name`, `birthyear`, `specialties`, `id`) VALUES
('Harry Houdini', 1874, 'escapology,card tricks', 1),
('David Copperfield', 1956, 'illusions', 2),
('Princess Tenko', 1959, 'illusions', 3),
('Beth Houdini', 1876, 'illusions', 4),
('Ricky Jay', 1946, 'card tricks', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magicians`
--
ALTER TABLE `magicians`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
