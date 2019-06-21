-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2019 at 07:29 AM
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_06_21_080704_create_polls_table', 1),
(10, '2019_06_21_080724_create_votes_table', 1),
(11, '2019_06_21_080733_create_questions_table', 1),
(12, '2019_06_21_080742_create_options_table', 1),
(13, '2019_06_21_092103_change_votes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yes', NULL, NULL),
(2, 1, 'No', NULL, NULL),
(3, 2, 'Sure!', NULL, NULL),
(4, 2, 'I hate it!', NULL, NULL),
(7, 3, 'cbjdhbc', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(8, 3, 'b cjhdsb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(9, 3, 'cb jdshb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(10, 3, 'bjchsbc', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(11, 4, 'cjhdsbchj', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(12, 4, 'fjsb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(13, 4, 'vjdb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(14, 4, 'cjhdb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(15, 5, 'f jhbfj', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(16, 5, 'fjdbf', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(17, 5, 'fjhbfej', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(18, 5, 'fjwbf', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(19, 6, 'f jwbfj', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(20, 6, 'f vjwb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(21, 6, 'f jhebf', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(22, 6, 'vbjhqb', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(23, 7, 'Yeyy!', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(24, 7, 'Never!', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(25, 7, 'Sometimes!', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(26, 7, 'Only when I programming', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(27, 8, 'Only on a first date', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(28, 8, 'Sometimes in a shower', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(29, 8, 'For studing', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(30, 8, 'Don\'t know', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(31, 9, 'Perfect for a car ride', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(32, 9, 'I prefer Britney', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(33, 9, 'I don\'t like niggas', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(34, 9, 'G-unit FOREVER <3', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(35, 10, 'good ringtone', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(36, 10, 'nice for a office background', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(37, 10, 'not my type of music', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(38, 10, 'I listen to it when I hunting', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(39, 11, 'Yeyy!', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(40, 11, 'Never!', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(41, 11, 'Sometimes!', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(42, 11, 'Only when I programming', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(43, 12, 'Only on a first date', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(44, 12, 'Sometimes in a shower', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(45, 12, 'For studing', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(46, 12, 'Don\'t know', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(47, 13, 'Perfect for a car ride', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(48, 13, 'I prefer Britney', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(49, 13, 'I don\'t like niggas', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(50, 13, 'G-unit FOREVER <3', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(51, 14, 'good ringtone', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(52, 14, 'nice for a office background', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(53, 14, 'not my type of music', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(54, 14, 'I listen to it when I hunting', '2019-06-21 11:38:24', '2019-06-21 11:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Czech beer', 1, '2019-06-20 22:00:00', '2019-06-28 22:00:00'),
(2, 'Czech girls', 1, '2019-06-20 22:00:00', '2019-06-28 22:00:00'),
(3, 'Do you like chocolate?', 1, '2019-06-21 11:26:56', '2019-06-21 11:26:56'),
(4, 'Do you like chocolate?', 1, '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(5, 'Which music do you like?', 1, '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(6, 'Which music do you like?', 1, '2019-06-21 11:38:24', '2019-06-21 11:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `poll_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Do you like Pilsner?', '2019-06-21 22:00:00', '2019-06-21 22:00:00'),
(2, 1, 'Do you like Kozel?', '2019-06-21 22:00:00', '2019-06-21 22:00:00'),
(3, 4, 'Dofbsjkhbcvjhsdbv hjdsz', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(4, 4, 'bcjdbcj', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(5, 4, 'cfjbs djh', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(6, 4, 'fjebdfj', '2019-06-21 11:30:40', '2019-06-21 11:30:40'),
(7, 5, 'Metal', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(8, 5, 'Classical music', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(9, 5, 'Gangsta shit rap', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(10, 5, 'Medival music', '2019-06-21 11:37:54', '2019-06-21 11:37:54'),
(11, 6, 'Metal', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(12, 6, 'Classical music', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(13, 6, 'Gangsta shit rap', '2019-06-21 11:38:24', '2019-06-21 11:38:24'),
(14, 6, 'Medival music', '2019-06-21 11:38:24', '2019-06-21 11:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adéla Špirková', 'adelka1219@gmail.com', NULL, '$2y$10$2zSdCFB08ZocdWy8kYlR3OqG6g44GsbCo5h4NT9dQMp0bJn7DZdzy', NULL, '2019-06-21 06:54:21', '2019-06-21 06:54:21'),
(2, 'Monika', 'mon.spirkova@seznam.cz', NULL, '$2y$10$JNY1hl6LA4z.tJbiopS4eeF.S.FAFhKBLEKVsh7BtGU37BdAe6Mxm', NULL, '2019-06-21 12:14:11', '2019-06-21 12:14:11');

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
(45, 2, 23, '2019-06-21 12:24:17', '2019-06-21 12:24:24'),
(46, 2, 27, '2019-06-21 12:24:17', '2019-06-21 12:24:24'),
(47, 2, 31, '2019-06-21 12:24:17', '2019-06-21 12:24:24'),
(48, 2, 35, '2019-06-21 12:24:17', '2019-06-21 12:24:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
