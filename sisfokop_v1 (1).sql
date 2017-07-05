-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2017 at 07:41 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfokop_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE IF NOT EXISTS `pinjaman` (
  `id_user` char(5) NOT NULL,
  `jumlah` bigint(255) NOT NULL,
  `lama` int(1) NOT NULL,
  `cicilan` bigint(255) NOT NULL,
  `suku` int(2) NOT NULL,
  `bunga` int(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rincian`
--

CREATE TABLE IF NOT EXISTS `rincian` (
  `id_user` int(11) NOT NULL,
  `bulan_1` int(255) NOT NULL,
  `bulan_2` int(255) NOT NULL,
  `bulan_3` int(255) NOT NULL,
  `bulan_4` int(255) DEFAULT NULL,
  `bulan_5` int(255) DEFAULT NULL,
  `bulan_6` int(255) DEFAULT NULL,
  `bulan_7` int(255) DEFAULT NULL,
  `bulan_8` int(255) DEFAULT NULL,
  `bulan_9` int(255) DEFAULT NULL,
  `bulan_10` int(255) DEFAULT NULL,
  `bulan_11` int(255) DEFAULT NULL,
  `bulan_12` int(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notelpon` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `level` enum('admin','member') COLLATE utf8_unicode_ci NOT NULL,
  `kk` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `ktp` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `alamat`, `notelpon`, `level`, `kk`, `ktp`, `status`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$zOkC4242qLlbHROFU898auCgzom/QfXUUvSKYNyC1GtaMksro31sS', 'admin', 'admin', 'admin', 'admin', 'admin', 'BARU', '', NULL, '2017-01-21 10:40:00', '2017-01-21 10:40:00'),
(3, 'ama', 'ama@gmail.com', '$2y$10$Ja2Qo1JPuAihi7.zMjq7BeJxcK2z5xU2KLcEQi5Ryud2TSY167X3.', 'gowa', '1234567890', 'member', '121212', '212121', 'BARU', '', NULL, '2017-01-21 16:48:09', '2017-01-21 16:48:09'),
(4, 'zulhikam', 'hikam@gmail.com', '$2y$10$UFgeKDwXxezo1TB.4Xtll.XtqNCRIg9Pr7uaStl6zhrTzsKrupvR2', 'Aroepala', '0987654321', 'member', '098767890', '6543212345', 'BARU', '', NULL, '2017-01-21 16:57:52', '2017-01-21 16:57:52'),
(7, 'ilham', 'ilhamsabar@gmail.com', '$2y$10$72b0/gUDPeFOc6J1.LSB0u3IHcOXN./vJGteStW.OMtH55pNEzgLW', 'adasdsda', '12313', 'member', '1312313', '12313', 'BARU', '1485110051.png', 'wbDBO46P8mNURIWpLgYUBrYWJSbEYsK61wYGSs7qSvrdH87NuU6Rk621ptbh', '2017-01-22 02:05:45', '2017-01-22 10:45:52'),
(8, 'ilham', 'abustore@gmail.com', '$2y$10$ijFw94EMHTNZvf3LoxvdGuxAMyNl37DmsNngZkQtTxdQUrAZA2xr6', 'asdada', '23123', 'member', '3131', '3131', 'Baru', '1485110051.png', 'ejBoaH8aw5yxC9Pf1xDEvy7ZWBTYTwG1vgzvQWvN2iBvQO7IT9JhryTFs71M', '2017-01-22 10:16:01', '2017-01-22 10:26:47'),
(10, 'ilham', 'abustore1@gmail.com', '$2y$10$n4EOUPPCM7O7yVeH6StVHecW9VSChp2NXC/ikWjO3U2uvvFlSVa4G', '123', '123', 'member', '12', '12', 'Baru', '1485110051.png', NULL, '2017-01-22 11:34:12', '2017-01-22 11:34:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
