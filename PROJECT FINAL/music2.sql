-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 10:31 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music2`
--

-- --------------------------------------------------------

--
-- Table structure for table `mp3s`
--

CREATE TABLE `mp3s` (
  `id` int(5) NOT NULL,
  `album` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp3s`
--

INSERT INTO `mp3s` (`id`, `album`, `artist`, `title`, `link`) VALUES
(1, 'Tides', 'The Ransom Collective', 'Tides', 'https://www.youtube.com/watch?v=7110oo1UqqQ'),
(2, 'LSD', 'LSD ft. Sia, Diplo, Labrinth', 'Audio', 'https://www.youtube.com/watch?v=tjA7nAHOAww'),
(3, 'Arigato, Internet!', 'Reese Lansangan', 'Exploration No. 5', 'https://www.youtube.com/watch?v=k0OsZsUWAjo'),
(4, 'Settled', 'The Ransom Collective', 'Settled', 'https://www.youtube.com/watch?v=m9ckFrZwejA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Admin', '$2y$10$uddlMYXj.jVxe9vTb1iV7uIwR.30ikIE5JV5uh/tPCifB6URifehu', '2018-10-04 22:07:05'),
(2, 'jakigwapa', '$2y$10$Bu0dO5niAZ93ThwsWbLatuYuV7ncyz.MhGkVRvGeqs9oaIErOcIye', '2018-10-04 22:20:34'),
(3, 'Mimay', '$2y$10$uFZwQ1rPmJG5dPbu8wDfC.zmnf6iWJepoZxwCoqMcVNFc0KpXUtBa', '2018-10-08 22:16:45'),
(4, 'jaki', '$2y$10$IbxOysibNrTTEC9v7LY.V.prOgRdnhk4ArDtPCoox/tt1nPbxRuy2', '2018-10-11 13:59:36'),
(5, 'qweqwe', '$2y$10$jjvk32cBkKPYAWdTuAdmp.hmQ9ibYGUi9JZJOm0zgdYdKsnB.gS/u', '2018-10-11 23:25:34'),
(6, 'Cheenee', '$2y$10$Ey/X2pkbi/adojXArEDHo.ydM7iPXmDYA/H36NMUgO4PRJiFNT2Oi', '2018-10-14 16:52:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mp3s`
--
ALTER TABLE `mp3s`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
