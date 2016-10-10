-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2016 at 05:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$DnhuuWUHeDkMlwwPfzVDr.qT8BfeSrM1Wp5H0bLuejIBr0JiUXLj2', 'Gq7UnM4IUQ5Q7US0BzoL5ehF9L2xZ6DNLeDrziDpzVz9IJZXvoYQJb619EjX', '2016-10-10 12:50:44', '2016-10-10 12:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(5, 'Zayed', 'alaa@alaa.com', '2016-10-10 00:00:47', '2016-10-10 00:00:47'),
(6, 'MphamedZayed', 'abdo@yahoo.com', '2016-10-10 00:02:54', '2016-10-10 00:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `author_log`
--

CREATE TABLE `author_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author_log`
--

INSERT INTO `author_log` (`id`, `author`, `created_at`, `updated_at`) VALUES
(1, 'MphamedZayed', '2016-10-10 00:02:59', '2016-10-10 00:02:59'),
(2, 'MphamedZayed', '2016-10-10 00:05:40', '2016-10-10 00:05:40'),
(3, 'MphamedZayed', '2016-10-10 00:06:24', '2016-10-10 00:06:24'),
(4, 'MphamedZayed', '2016-10-10 00:06:33', '2016-10-10 00:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_10_08_211911_create_authors_table', 1),
('2016_10_08_211955_create_quotes_table', 1),
('2016_10_09_224141_create_qoute_logs_table', 1),
('2016_10_10_003446_create_author_logs_table', 2),
('2016_10_10_131855_create_admins_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `qoute_log`
--

CREATE TABLE `qoute_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qoute_log`
--

INSERT INTO `qoute_log` (`id`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', '2016-10-09 21:31:44', '2016-10-09 21:31:44'),
(2, 'Mohamed', '2016-10-09 22:05:50', '2016-10-09 22:05:50'),
(3, 'Mohamed', '2016-10-09 22:06:10', '2016-10-09 22:06:10'),
(4, 'Mohamed', '2016-10-09 22:06:53', '2016-10-09 22:06:53'),
(5, 'Alaa', '2016-10-09 22:08:13', '2016-10-09 22:08:13'),
(6, 'Alaa', '2016-10-09 22:18:17', '2016-10-09 22:18:17'),
(7, 'Ali', '2016-10-09 22:18:33', '2016-10-09 22:18:33'),
(8, 'Ali', '2016-10-09 22:18:52', '2016-10-09 22:18:52'),
(9, 'Mohamed', '2016-10-09 22:23:53', '2016-10-09 22:23:53'),
(10, 'Mohamed', '2016-10-09 22:28:22', '2016-10-09 22:28:22'),
(11, 'Mohamed', '2016-10-09 22:30:05', '2016-10-09 22:30:05'),
(12, 'Zayed', '2016-10-10 00:00:47', '2016-10-10 00:00:47'),
(13, 'Zayed', '2016-10-10 00:01:49', '2016-10-10 00:01:49'),
(14, 'MphamedZayed', '2016-10-10 00:02:54', '2016-10-10 00:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote` text COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `author_id`, `created_at`, `updated_at`) VALUES
(12, 'This Is Good', 5, '2016-10-10 00:00:47', '2016-10-10 00:00:47'),
(13, 'Mphamed Zayed', 5, '2016-10-10 00:01:49', '2016-10-10 00:01:49'),
(14, 'Mohamed Zayed', 6, '2016-10-10 00:02:54', '2016-10-10 00:02:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_log`
--
ALTER TABLE `author_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qoute_log`
--
ALTER TABLE `qoute_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `author_log`
--
ALTER TABLE `author_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qoute_log`
--
ALTER TABLE `qoute_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
