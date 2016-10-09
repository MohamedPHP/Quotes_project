-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2016 at 02:15 AM
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
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', '2016-10-08 20:51:24', '2016-10-08 20:51:24'),
(2, 'Alaa', '2016-10-08 21:27:10', '2016-10-08 21:27:10'),
(3, 'Amr', '2016-10-08 21:59:13', '2016-10-08 21:59:13'),
(4, 'Semsem', '2016-10-08 21:59:43', '2016-10-08 21:59:43'),
(5, 'Zayed', '2016-10-08 22:00:36', '2016-10-08 22:00:36'),
(6, 'Lolo', '2016-10-08 22:00:58', '2016-10-08 22:00:58'),
(7, 'Lala', '2016-10-08 22:01:08', '2016-10-08 22:01:08');

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
('2016_10_08_211955_create_quotes_table', 1);

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
(5, 'Zayed Mohaned', 1, '2016-10-08 21:58:36', '2016-10-08 21:58:36'),
(6, 'Khaled Moustafa', 3, '2016-10-08 21:59:13', '2016-10-08 21:59:13'),
(7, 'Hi Iam Alaa', 2, '2016-10-08 21:59:29', '2016-10-08 21:59:29'),
(8, 'Hi Iam semsem', 4, '2016-10-08 21:59:43', '2016-10-08 21:59:43'),
(9, '1st Qoute', 1, '2016-10-08 22:00:03', '2016-10-08 22:00:03'),
(10, '2nd Qoute', 1, '2016-10-08 22:00:16', '2016-10-08 22:00:16'),
(11, '1st Quate', 5, '2016-10-08 22:00:36', '2016-10-08 22:00:36'),
(12, 'Quote Of 2', 6, '2016-10-08 22:00:58', '2016-10-08 22:00:58'),
(13, 'Quate Of 3', 7, '2016-10-08 22:01:08', '2016-10-08 22:01:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
