-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 18, 2022 at 02:38 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actor`
--

CREATE TABLE `Actor` (
  `id_actor` int(11) NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Actor`
--

INSERT INTO `Actor` (`id_actor`, `first_name`, `last_name`, `sex`, `birth_date`) VALUES
(1, 'Amanda', 'SEYFRIED', 'F', '1985-12-03'),
(2, 'Justin', 'Timberlake', 'M', '1981-01-31'),
(3, 'Cillian', 'Murphy', 'M', '1976-05-25'),
(4, 'Matt', 'Bomer', 'M', '1977-10-11'),
(5, 'Elliot', 'Page', 'F', '1987-02-21'),
(6, 'Leonardo', 'DiCaprio', 'M', '1974-11-11'),
(7, 'Tom', 'Hardy', 'M', '1977-09-15'),
(8, 'John', 'Wayne', 'M', '1907-05-26'),
(9, 'Brut', 'Lancaster', 'M', '1913-11-02'),
(10, 'Lana', 'Turner', 'F', '1920-02-08'),
(11, 'Elvis', 'Persley', 'M', '1935-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `Casting`
--

CREATE TABLE `Casting` (
  `id_film` int(11) DEFAULT NULL,
  `id_actor` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Casting`
--

INSERT INTO `Casting` (`id_film`, `id_actor`, `id_role`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(2, 5, 5),
(2, 6, 6),
(2, 7, 7),
(2, 3, 8),
(3, 8, 9),
(3, 9, 10),
(3, 10, 11),
(3, 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `Director`
--

CREATE TABLE `Director` (
  `id_director` int(11) NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `sex` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Director`
--

INSERT INTO `Director` (`id_director`, `first_name`, `last_name`, `birth_date`, `sex`) VALUES
(1, 'Niccol', 'Andrew', '1964-06-10', 'M'),
(2, 'Nolan', 'Christopher', '1970-07-30', 'M'),
(3, 'Michel', 'Hazanavicius', '1967-03-29', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `Film`
--

CREATE TABLE `Film` (
  `id_film` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `run_time` int(11) DEFAULT NULL,
  `summary` text,
  `id_director` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Film`
--

INSERT INTO `Film` (`id_film`, `title`, `release_year`, `run_time`, `summary`, `id_director`) VALUES
(1, 'Time Out', 2011, 109, 'Brief summary about TimeOut...', 1),
(2, 'Inception', 2010, 147, 'Brief summary about Inception...', 2),
(3, 'La classe Américaine', 1993, 70, 'Brief summary about La classe Américaine...', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`id_genre`, `genre`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Fantasy'),
(5, 'Horror'),
(6, 'Mystery'),
(7, 'Romance'),
(8, 'Thriller'),
(9, 'Western'),
(10, 'science fiction');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_film`
--

CREATE TABLE `Genre_film` (
  `id_film` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Genre_film`
--

INSERT INTO `Genre_film` (`id_film`, `id_genre`) VALUES
(1, 10),
(2, 8),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id_role`, `role`) VALUES
(1, 'Sylvia Weis'),
(2, 'Will Salas'),
(3, 'Raymond Leon'),
(4, 'Henri Hamilton'),
(5, 'Ariane'),
(6, 'Cobb'),
(7, 'Eames'),
(8, 'Robert Ficher'),
(9, 'George Abitbol'),
(10, 'José'),
(11, 'Isabelle'),
(12, 'Le putain d\'énergumène');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`id_actor`);

--
-- Indexes for table `Casting`
--
ALTER TABLE `Casting`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_actor` (`id_actor`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `Director`
--
ALTER TABLE `Director`
  ADD PRIMARY KEY (`id_director`);

--
-- Indexes for table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_director` (`id_director`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `Genre_film`
--
ALTER TABLE `Genre_film`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Actor`
--
ALTER TABLE `Actor`
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Director`
--
ALTER TABLE `Director`
  MODIFY `id_director` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Film`
--
ALTER TABLE `Film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Casting`
--
ALTER TABLE `Casting`
  ADD CONSTRAINT `casting_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `Film` (`id_film`) ON DELETE SET NULL,
  ADD CONSTRAINT `casting_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `Actor` (`id_actor`) ON DELETE SET NULL,
  ADD CONSTRAINT `casting_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `Role` (`id_role`) ON DELETE SET NULL;

--
-- Constraints for table `Film`
--
ALTER TABLE `Film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `Director` (`id_director`) ON DELETE SET NULL;

--
-- Constraints for table `Genre_film`
--
ALTER TABLE `Genre_film`
  ADD CONSTRAINT `genre_film_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `Film` (`id_film`) ON DELETE SET NULL,
  ADD CONSTRAINT `genre_film_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `Genre` (`id_genre`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
