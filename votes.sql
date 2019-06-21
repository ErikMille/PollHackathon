-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2019 at 04:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `option_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-06-21 07:27:25', '2019-06-21 07:27:25'),
(2, 1, 3, '2019-06-21 07:27:25', '2019-06-21 07:27:25'),
(3, 1, 1, '2019-06-21 07:27:36', '2019-06-21 07:27:36'),
(4, 1, 3, '2019-06-21 07:27:36', '2019-06-21 07:27:36'),
(5, 1, 1, '2019-06-21 07:27:42', '2019-06-21 07:27:42'),
(6, 1, 3, '2019-06-21 07:27:42', '2019-06-21 07:27:42'),
(7, 1, 2, '2019-06-21 07:38:34', '2019-06-21 07:38:34'),
(8, 1, 4, '2019-06-21 07:38:34', '2019-06-21 07:38:34'),
(9, 1, 2, '2019-06-21 07:39:58', '2019-06-21 07:39:58'),
(10, 1, 4, '2019-06-21 07:39:58', '2019-06-21 07:39:58'),
(11, 1, 2, '2019-06-21 07:40:07', '2019-06-21 07:40:07'),
(12, 1, 4, '2019-06-21 07:40:07', '2019-06-21 07:40:07'),
(13, 1, 2, '2019-06-21 07:40:54', '2019-06-21 07:40:54'),
(14, 1, 4, '2019-06-21 07:40:54', '2019-06-21 07:40:54'),
(15, 1, 2, '2019-06-21 07:42:37', '2019-06-21 07:42:37'),
(16, 1, 4, '2019-06-21 07:42:37', '2019-06-21 07:42:37'),
(17, 1, 2, '2019-06-21 07:43:05', '2019-06-21 07:43:05'),
(18, 1, 4, '2019-06-21 07:43:05', '2019-06-21 07:43:05'),
(19, 1, 2, '2019-06-21 08:22:54', '2019-06-21 08:22:54'),
(20, 1, 4, '2019-06-21 08:22:54', '2019-06-21 08:22:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
