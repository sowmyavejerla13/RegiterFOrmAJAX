-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 11:19 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_05_21_082650_registerusers', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registerusers`
--

CREATE TABLE IF NOT EXISTS `registerusers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `registerusers`
--

INSERT INTO `registerusers` (`id`, `name`, `email`, `pincode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ss', 'dsf@gmail.com', '122333', NULL, NULL, NULL),
(2, 'Alice Texas Williams', 'aaa', '75228', NULL, NULL, NULL),
(3, 'Alice Texas Williams', 'daaasf@gmail.com', '75228', NULL, NULL, NULL),
(4, 'sowmya', 'sowmya.vejerla@gmail.com', '752281', NULL, NULL, NULL),
(5, 'sowmya', 'sowmyav@gmail.com', '531173', NULL, NULL, NULL),
(6, 'sowmyavejerla', 'sowmyavej@gmail.com', '531172', NULL, NULL, NULL),
(7, 'AliceWilliams', 'dsfdddddd@gmail.com', '752281', NULL, NULL, NULL),
(8, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(9, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(10, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(11, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(12, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(13, '', '', '', NULL, NULL, NULL),
(14, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(15, 'dfsdf', 'sdfsd', '75228', NULL, NULL, NULL),
(16, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(17, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(18, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(19, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(20, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(21, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(22, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(23, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(24, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(25, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(26, 'AliceWilliams', '', '75228', NULL, NULL, NULL),
(27, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(28, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(29, 'Alice Texas Williams', '', '75228', NULL, NULL, NULL),
(30, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(31, 'Alice Texas Williams', 'dsf@gmail.com', '75228', NULL, NULL, NULL),
(32, 'Alice Texas Williams', 'dsf@gmail.com', '752281', NULL, NULL, NULL),
(33, 'Alice Texas Williams', 'dsf@gmail.comasdasd', '752281', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
