-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2026 at 11:21 AM
-- Server version: 8.0.40
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swatorganics`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_address_id` int UNSIGNED DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_customer_id_foreign` (`customer_id`),
  KEY `addresses_cart_id_foreign` (`cart_id`),
  KEY `addresses_order_id_foreign` (`order_id`),
  KEY `addresses_parent_address_id_foreign` (`parent_address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'cart_billing', NULL, NULL, 1, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', '', 0, 1, NULL, '2025-12-13 22:31:35', '2025-12-13 22:31:35'),
(2, 'cart_shipping', NULL, NULL, 1, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:31:36', '2025-12-13 22:31:36'),
(3, 'cart_billing', NULL, NULL, 2, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-13 22:45:22', '2025-12-13 22:45:22'),
(4, 'cart_shipping', NULL, NULL, 2, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:45:22', '2025-12-13 22:45:22'),
(5, 'order_shipping', NULL, NULL, NULL, 1, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:45:45', '2025-12-13 22:45:45'),
(6, 'order_billing', NULL, NULL, NULL, 1, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:45:45', '2025-12-13 22:45:45'),
(7, 'order_shipping', NULL, NULL, NULL, 2, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:46:26', '2025-12-13 22:46:26'),
(8, 'order_billing', NULL, NULL, NULL, 2, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-13 22:46:26', '2025-12-13 22:46:26'),
(9, 'cart_billing', NULL, NULL, 4, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-14 12:52:49', '2025-12-14 12:58:57'),
(10, 'cart_shipping', NULL, NULL, 4, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 12:52:49', '2025-12-14 12:58:57'),
(11, 'cart_billing', NULL, NULL, 5, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'adf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-14 12:53:32', '2025-12-14 12:53:32'),
(12, 'cart_shipping', NULL, NULL, 5, NULL, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'adf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 12:53:32', '2025-12-14 12:53:32'),
(13, 'customer', NULL, 1, NULL, NULL, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', '', 1, 0, NULL, '2025-12-14 14:15:17', '2025-12-14 14:15:17'),
(14, 'cart_billing', 13, 1, 7, NULL, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', '', 0, 1, NULL, '2025-12-14 14:16:55', '2025-12-14 14:16:55'),
(15, 'cart_shipping', 13, 1, 7, NULL, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:16:55', '2025-12-14 14:16:55'),
(16, 'order_shipping', NULL, NULL, NULL, 3, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:17:15', '2025-12-14 14:17:15'),
(17, 'order_billing', NULL, NULL, NULL, 3, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', '', 0, 0, NULL, '2025-12-14 14:17:15', '2025-12-14 14:17:15'),
(18, 'order_shipping', NULL, NULL, NULL, 4, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'adf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:17:25', '2025-12-14 14:17:25'),
(19, 'order_billing', NULL, NULL, NULL, 4, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'adf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:17:25', '2025-12-14 14:17:25'),
(20, 'order_shipping', NULL, NULL, NULL, 5, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:17:29', '2025-12-14 14:17:29'),
(21, 'order_billing', NULL, NULL, NULL, 5, 'asdf', 'asdf', NULL, 'asdf', 'adsf asdfasd f', 'asdf', 'asdf', 'PK', '12312', 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-14 14:17:29', '2025-12-14 14:17:29'),
(22, 'cart_billing', NULL, NULL, 10, NULL, 'asdf', '', NULL, NULL, 'aadsfasdf', 'adfdsf', '', 'PK', '', '', '03443444141', NULL, 0, 1, NULL, '2025-12-19 12:57:21', '2025-12-19 12:57:21'),
(23, 'cart_shipping', NULL, NULL, 10, NULL, 'asdf', '', NULL, NULL, 'aadsfasdf', 'adfdsf', '', 'PK', '', '', '03443444141', NULL, 0, 0, NULL, '2025-12-19 12:57:21', '2025-12-19 12:57:21'),
(24, 'cart_billing', NULL, NULL, 11, NULL, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-21 18:33:11', '2025-12-21 18:33:11'),
(25, 'cart_shipping', NULL, NULL, 11, NULL, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 18:33:11', '2025-12-21 18:33:11'),
(26, 'cart_billing', NULL, NULL, 12, NULL, 'asdf', 'asdf', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-21 18:35:37', '2025-12-21 18:35:37'),
(27, 'cart_shipping', NULL, NULL, 12, NULL, 'asdf', 'asdf', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 18:35:37', '2025-12-21 18:35:37'),
(28, 'order_shipping', NULL, NULL, NULL, 6, 'asdf', 'asdf', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 18:35:53', '2025-12-21 18:35:53'),
(29, 'order_billing', NULL, NULL, NULL, 6, 'asdf', 'asdf', NULL, NULL, 'adsf asdfasd f', 'asdf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 18:35:53', '2025-12-21 18:35:53'),
(30, 'cart_billing', NULL, NULL, 13, NULL, 'asdf', 'asdf', NULL, NULL, 'aadsfasdf', 'adfdsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-21 18:37:52', '2025-12-21 18:37:52'),
(31, 'cart_shipping', NULL, NULL, 13, NULL, 'asdf', 'asdf', NULL, NULL, 'aadsfasdf', 'adfdsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 18:37:52', '2025-12-21 18:37:52'),
(32, 'order_shipping', NULL, NULL, NULL, 7, 'asdf', 'asdf', NULL, NULL, 'aadsfasdf', 'adfdsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:03:19', '2025-12-21 19:03:19'),
(33, 'order_billing', NULL, NULL, NULL, 7, 'asdf', 'asdf', NULL, NULL, 'aadsfasdf', 'adfdsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:03:19', '2025-12-21 19:03:19'),
(34, 'cart_billing', NULL, NULL, 14, NULL, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'adsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 1, NULL, '2025-12-21 19:11:39', '2025-12-21 19:11:39'),
(35, 'cart_shipping', NULL, NULL, 14, NULL, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'adsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:11:39', '2025-12-21 19:11:39'),
(36, 'order_shipping', NULL, NULL, NULL, 8, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'adsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:12:16', '2025-12-21 19:12:16'),
(37, 'order_billing', NULL, NULL, NULL, 8, 'asdf', '', NULL, NULL, 'adsf asdfasd f', 'adsf', NULL, 'PK', NULL, 'asdf@gasd.asd', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:12:16', '2025-12-21 19:12:16'),
(38, 'order_shipping', NULL, NULL, NULL, 9, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-21 19:31:22', '2025-12-21 19:31:22'),
(39, 'order_billing', NULL, NULL, NULL, 9, 'adil', 'khan', NULL, 'adil khan', 'mmy accound address', 'Mingora', 'Swat', 'PK', '19120', 'adilkhan11228@gmail.com', '03443444141', '', 0, 0, NULL, '2025-12-21 19:31:22', '2025-12-21 19:31:22'),
(40, 'cart_billing', NULL, NULL, 16, NULL, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 1, NULL, '2025-12-25 14:48:24', '2025-12-25 14:48:24'),
(41, 'cart_shipping', NULL, NULL, 16, NULL, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-25 14:48:24', '2025-12-25 14:48:24'),
(42, 'order_shipping', NULL, NULL, NULL, 10, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-25 14:48:32', '2025-12-25 14:48:32'),
(43, 'order_billing', NULL, NULL, NULL, 10, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-25 14:48:32', '2025-12-25 14:48:32'),
(44, 'cart_billing', NULL, NULL, 17, NULL, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 1, NULL, '2025-12-26 10:27:45', '2025-12-26 10:27:45'),
(45, 'cart_shipping', NULL, NULL, 17, NULL, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-26 10:27:45', '2025-12-26 10:27:45'),
(46, 'order_shipping', NULL, NULL, NULL, 11, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-26 10:27:57', '2025-12-26 10:27:57'),
(47, 'order_billing', NULL, NULL, NULL, 11, 'adil', '', NULL, NULL, 'asdf', 'swat mingora', NULL, 'PK', NULL, 'adilkhan11228@gmail.com', '03443444141', NULL, 0, 0, NULL, '2025-12-26 10:27:57', '2025-12-26 10:27:57'),
(48, 'cart_billing', NULL, NULL, 18, NULL, 'asdf', '', NULL, NULL, 'aadsfasdf\r\naadsfasdf', 'adfdsf', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 1, NULL, '2025-12-27 14:55:48', '2025-12-27 14:55:48'),
(49, 'cart_shipping', NULL, NULL, 18, NULL, 'asdf', '', NULL, NULL, 'aadsfasdf\r\naadsfasdf', 'adfdsf', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-27 14:55:48', '2025-12-27 14:55:48'),
(50, 'order_shipping', NULL, NULL, NULL, 12, 'asdf', '', NULL, NULL, 'aadsfasdf\r\naadsfasdf', 'adfdsf', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-27 14:55:51', '2025-12-27 14:55:51'),
(51, 'order_billing', NULL, NULL, NULL, 12, 'asdf', '', NULL, NULL, 'aadsfasdf\r\naadsfasdf', 'adfdsf', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-27 14:55:51', '2025-12-27 14:55:51'),
(52, 'cart_billing', NULL, NULL, 24, NULL, 'adil', '', NULL, NULL, 'adsf asdfasd f\r\naadsfasdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 1, NULL, '2026-04-01 15:07:04', '2026-04-01 15:07:04'),
(53, 'cart_shipping', NULL, NULL, 24, NULL, 'adil', '', NULL, NULL, 'adsf asdfasd f\r\naadsfasdf', 'swat mingora', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2026-04-01 15:07:04', '2026-04-01 15:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_api_token_unique` (`api_token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adil Khan', 'adilkhanengineer72@gmail.com', '$2y$12$hhkULSRdKMX5xYUDL.Z.d.7p16J.uzQQOt4J.NuZYT0G8BSSzbmQO', '7sZFZZ4ZplY4Kyff66aG6afBn4DW5AdNBa1N9RvWwwmg68E6CYjzU4QCMw8tpzKl3laDNXrrh3kxnW9K', 1, 1, 'admins/1/nCv3Z9YwYZmYCm7qHCNH6o21DPdSik3ET68n5qXc.jpg', NULL, '2025-12-13 21:38:35', '2025-12-13 21:41:10'),
(2, 'Waleed', 'waleedyusufzai@gmail.com', '$2y$12$gmi5GkhT.7n2fFXHgvR33ezpBU2mdoNYoj4v5Dnk3aejYNFYSADtK', 'QQqCPZLKIKOcq6cD5GVOSl1fnN5p1nnLUw4MwHK3kpl5YduSDmr3mH4IzhIcvpaEIR7f0fVktXLkvrs4', 1, 1, NULL, NULL, '2025-12-26 11:57:25', '2025-12-26 11:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swatch_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) NOT NULL DEFAULT '0',
  `is_comparable` tinyint(1) NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_locale` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_channel` tinyint(1) NOT NULL DEFAULT '0',
  `default_value` int DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_code_unique` (`code`),
  KEY `attributes_code_index` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'SKU', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(2, 'name', 'Name', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(3, 'url_key', 'URL Key', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(4, 'tax_category_id', 'Tax Category', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(5, 'new', 'New', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(6, 'featured', 'Featured', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(7, 'visible_individually', 'Visible Individually', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(8, 'status', 'Status', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(9, 'short_description', 'Short Description', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(10, 'description', 'Description', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(11, 'price', 'Price', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(12, 'cost', 'Cost', 'price', NULL, 'decimal', NULL, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(13, 'special_price', 'Special Price', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(14, 'special_price_from', 'Special Price From', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(15, 'special_price_to', 'Special Price To', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(16, 'meta_title', 'Meta Title', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(17, 'meta_keywords', 'Meta Keywords', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(18, 'meta_description', 'Meta Description', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(19, 'length', 'Length', 'text', NULL, 'decimal', NULL, 22, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(20, 'width', 'Width', 'text', NULL, 'decimal', NULL, 23, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(21, 'height', 'Height', 'text', NULL, 'decimal', NULL, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(22, 'weight', 'Weight', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(23, 'color', 'Color', 'select', NULL, NULL, NULL, 26, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(24, 'size', 'Size', 'select', NULL, NULL, NULL, 27, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(25, 'brand', 'Brand', 'select', 'dropdown', NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2026-04-01 11:02:16'),
(26, 'guest_checkout', 'Guest Checkout', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(27, 'product_number', 'Product Number', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(28, 'manage_stock', 'Manage Stock', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(29, 'product_type', 'Product Type', 'select', 'dropdown', NULL, '', 31, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:29:56', '2026-03-13 22:23:25'),
(30, 'net_weight', 'Net Weight', 'select', 'dropdown', NULL, '', 32, 0, 0, 1, 0, 1, 1, 1, 0, 0, NULL, 0, '2026-02-04 09:32:36', '2026-03-13 22:22:47'),
(31, 'packaging', 'Packaging', 'select', 'dropdown', NULL, '', 33, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:34:14', '2026-04-01 11:05:35'),
(32, 'origin', 'Origin', 'select', 'dropdown', NULL, '', 34, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:36:10', '2026-04-01 14:43:10'),
(33, 'processing', 'Processing', 'select', 'dropdown', NULL, '', 29, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:37:07', '2026-04-01 14:42:28'),
(35, 'our_production', 'Made By Swat Organics', 'boolean', NULL, NULL, '', 35, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, '2026-02-04 09:40:57', '2026-03-13 22:23:43'),
(36, 'shelf_life', 'Shelf Life', 'text', NULL, NULL, '', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL, 0, '2026-04-01 11:23:05', '2026-04-01 11:23:05'),
(37, 'volume', 'Volume', 'select', 'dropdown', NULL, NULL, 33, 0, 0, 1, 0, 1, 1, 1, 0, 0, NULL, 0, '2026-04-08 11:21:59', '2026-04-08 11:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

DROP TABLE IF EXISTS `attribute_families`;
CREATE TABLE IF NOT EXISTS `attribute_families` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Default', 0, 1),
(2, 'food_and_organic_products', 'Food & Organic Products', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

DROP TABLE IF EXISTS `attribute_groups`;
CREATE TABLE IF NOT EXISTS `attribute_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_family_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column` int NOT NULL DEFAULT '1',
  `position` int NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'General', 1, 1, 0),
(2, 'description', 1, 'Description', 1, 2, 0),
(3, 'meta_description', 1, 'Meta Description', 1, 3, 0),
(4, 'price', 1, 'Price', 2, 1, 0),
(5, 'shipping', 1, 'Shipping', 2, 2, 0),
(6, 'settings', 1, 'Settings', 2, 3, 0),
(7, 'inventories', 1, 'Inventories', 2, 4, 0),
(8, 'general', 2, 'General', 1, 1, 1),
(9, 'description', 2, 'Description', 1, 2, 1),
(10, 'meta_description', 2, 'Meta Description', 1, 3, 1),
(11, 'price', 2, 'Price', 2, 1, 1),
(12, 'shipping', 2, 'Shipping', 2, 2, 1),
(13, 'settings', 2, 'Settings', 2, 3, 1),
(14, 'inventories', 2, 'Inventories', 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

DROP TABLE IF EXISTS `attribute_group_mappings`;
CREATE TABLE IF NOT EXISTS `attribute_group_mappings` (
  `attribute_id` int UNSIGNED NOT NULL,
  `attribute_group_id` int UNSIGNED NOT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(27, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 10),
(36, 1, 6),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(26, 6, 5),
(28, 7, 1),
(1, 8, 1),
(27, 8, 2),
(2, 8, 3),
(3, 8, 4),
(37, 1, 12),
(37, 8, 12),
(32, 8, 5),
(33, 8, 7),
(31, 8, 8),
(34, 8, 8),
(35, 8, 9),
(4, 8, 10),
(30, 8, 11),
(9, 9, 1),
(10, 9, 2),
(16, 10, 1),
(17, 10, 2),
(18, 10, 3),
(11, 11, 1),
(12, 11, 2),
(13, 11, 3),
(14, 11, 4),
(15, 11, 5),
(19, 12, 1),
(20, 12, 2),
(21, 12, 3),
(22, 12, 4),
(5, 13, 1),
(6, 13, 2),
(7, 13, 3),
(8, 13, 4),
(26, 13, 5),
(28, 14, 1),
(36, 8, 6),
(32, 1, 5),
(33, 1, 7),
(31, 1, 8),
(34, 1, 8),
(35, 1, 9),
(30, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

DROP TABLE IF EXISTS `attribute_options`;
CREATE TABLE IF NOT EXISTS `attribute_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` int UNSIGNED NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `swatch_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(1, 23, 'Red', 1, NULL),
(2, 23, 'Green', 2, NULL),
(3, 23, 'Yellow', 3, NULL),
(4, 23, 'Black', 4, NULL),
(5, 23, 'White', 5, NULL),
(6, 24, 'S', 1, NULL),
(7, 24, 'M', 2, NULL),
(8, 24, 'L', 3, NULL),
(9, 24, 'XL', 4, NULL),
(10, 29, 'Dried Fruits', 0, NULL),
(11, 29, 'Honey', 1, NULL),
(12, 29, 'Nuts', 2, NULL),
(13, 29, 'Seeds', 3, NULL),
(14, 29, 'Dates', 4, NULL),
(15, 29, 'Organic Products', 5, NULL),
(16, 30, '50g', 0, NULL),
(17, 30, '100g', 1, NULL),
(18, 30, '250g', 2, NULL),
(19, 30, '500g', 3, NULL),
(20, 30, '1kg', 4, NULL),
(21, 31, 'Shopper', 0, NULL),
(22, 31, 'Box', 1, NULL),
(23, 31, 'Jar', 2, NULL),
(24, 31, 'Glass Bottle', 3, NULL),
(25, 31, 'Pouch', 4, NULL),
(26, 32, 'Gilgit Baltistan', 0, NULL),
(27, 32, 'Swat Valley', 1, NULL),
(28, 32, 'Afghanistan', 2, NULL),
(29, 32, 'Iran', 3, NULL),
(30, 32, 'Saudi Arabia', 4, NULL),
(31, 32, 'Pakistan (Local)', 5, NULL),
(32, 32, 'Imported', 6, NULL),
(33, 33, 'Sun Dried', 0, NULL),
(34, 33, 'Naturally Dried', 1, NULL),
(35, 33, 'Machine Dried', 2, NULL),
(36, 33, 'Raw', 3, NULL),
(37, 33, 'Roasted', 4, NULL),
(38, 25, 'Swat Organics', 0, NULL),
(39, 25, '', 1, NULL),
(40, 31, 'Airtight Food-Grade Packaging', 5, NULL),
(41, 33, 'Pure / Unprocessed', 5, NULL),
(42, 33, 'Raw / Natural', 6, NULL),
(43, 32, 'Pakistan / Northern Regions', 7, NULL),
(44, 32, 'Northern Regions', 8, NULL),
(45, 32, 'Pakistan', 9, NULL),
(46, 32, NULL, 10, NULL),
(47, 33, NULL, 10, NULL),
(48, 31, NULL, 10, NULL),
(49, 32, NULL, 11, NULL),
(50, 33, NULL, 11, NULL),
(51, 32, NULL, 12, NULL),
(52, 33, NULL, 12, NULL),
(53, 33, NULL, 13, NULL),
(54, 32, NULL, 13, NULL),
(55, 33, NULL, 14, NULL),
(56, 37, NULL, 0, NULL),
(57, 37, NULL, 1, NULL),
(58, 37, NULL, 2, NULL),
(59, 32, NULL, 14, NULL),
(60, 33, NULL, 15, NULL),
(61, 31, NULL, 11, NULL),
(62, 32, NULL, 15, NULL),
(63, 30, NULL, 5, NULL),
(64, 30, NULL, 6, NULL),
(65, 32, NULL, 16, NULL),
(66, 33, NULL, 16, NULL),
(67, 31, NULL, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

DROP TABLE IF EXISTS `attribute_option_translations`;
CREATE TABLE IF NOT EXISTS `attribute_option_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_option_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_option_locale_unique` (`attribute_option_id`,`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'Red'),
(2, 2, 'en', 'Green'),
(3, 3, 'en', 'Yellow'),
(4, 4, 'en', 'Black'),
(5, 5, 'en', 'White'),
(6, 6, 'en', 'S'),
(7, 7, 'en', 'M'),
(8, 8, 'en', 'L'),
(9, 9, 'en', 'XL'),
(10, 10, 'en', 'Dried Fruits'),
(11, 10, 'ur_PK', ''),
(12, 11, 'en', 'Honey'),
(13, 11, 'ur_PK', ''),
(14, 12, 'en', 'Nuts'),
(15, 12, 'ur_PK', ''),
(16, 13, 'en', 'Seeds'),
(17, 13, 'ur_PK', ''),
(18, 14, 'en', 'Dates'),
(19, 14, 'ur_PK', ''),
(20, 15, 'en', 'Organic Products'),
(21, 15, 'ur_PK', ''),
(22, 16, 'en', '50g'),
(23, 16, 'ur_PK', ''),
(24, 17, 'en', '100g'),
(25, 17, 'ur_PK', ''),
(26, 18, 'en', '250g'),
(27, 18, 'ur_PK', ''),
(28, 19, 'en', '500g'),
(29, 19, 'ur_PK', ''),
(30, 20, 'en', '1kg'),
(31, 20, 'ur_PK', ''),
(32, 21, 'en', 'Shopper'),
(33, 21, 'ur_PK', ''),
(34, 22, 'en', 'Box'),
(35, 22, 'ur_PK', ''),
(36, 23, 'en', 'Jar'),
(37, 23, 'ur_PK', ''),
(38, 24, 'en', 'Glass Bottle'),
(39, 24, 'ur_PK', ''),
(40, 25, 'en', 'Pouch'),
(41, 25, 'ur_PK', ''),
(42, 26, 'en', 'Gilgit Baltistan'),
(43, 26, 'ur_PK', ''),
(44, 27, 'en', 'Swat Valley'),
(45, 27, 'ur_PK', ''),
(46, 28, 'en', 'Afghanistan'),
(47, 28, 'ur_PK', ''),
(48, 29, 'en', 'Iran'),
(49, 29, 'ur_PK', ''),
(50, 30, 'en', 'Saudi Arabia'),
(51, 30, 'ur_PK', ''),
(52, 31, 'en', 'Pakistan (Local)'),
(53, 31, 'ur_PK', ''),
(54, 32, 'en', 'Imported'),
(55, 32, 'ur_PK', ''),
(56, 33, 'en', 'Sun Dried'),
(57, 33, 'ur_PK', ''),
(58, 34, 'en', 'Naturally Dried'),
(59, 34, 'ur_PK', ''),
(60, 35, 'en', 'Machine Dried'),
(61, 35, 'ur_PK', ''),
(62, 36, 'en', 'Raw'),
(63, 36, 'ur_PK', ''),
(64, 37, 'en', 'Roasted'),
(65, 37, 'ur_PK', ''),
(66, 38, 'en', 'Swat Organics'),
(67, 38, 'ur_PK', 'Swat Organics'),
(68, 39, 'en', ''),
(69, 39, 'ur_PK', ''),
(70, 40, 'en', 'Airtight Food-Grade Packaging'),
(71, 40, 'ur_PK', 'Airtight Food-Grade Packaging'),
(72, 41, 'en', 'Pure / Unprocessed'),
(73, 41, 'ur_PK', 'Pure / Unprocessed'),
(74, 42, 'en', 'Raw / Natural'),
(75, 42, 'ur_PK', 'Raw / Natural'),
(76, 43, 'en', 'Pakistan / Northern Regions'),
(77, 43, 'ur_PK', 'Pakistan / Northern Regions'),
(78, 44, 'en', 'Northern Regions'),
(79, 44, 'ur_PK', 'Northern Regions'),
(80, 45, 'en', 'Pakistan'),
(81, 45, 'ur_PK', 'Pakistan'),
(82, 46, 'en', 'Pakistan / Mixed Origins'),
(83, 47, 'en', 'Mixed / Natural'),
(84, 48, 'en', 'Gift Box / Airtight Packaging'),
(85, 49, 'en', 'Iran / USA'),
(86, 50, 'en', 'Natural / Roasted (Light)'),
(87, 51, 'en', 'Pakistan / India'),
(88, 52, 'en', 'Natural / Dried'),
(89, 53, 'en', 'Natural / Dried Powder'),
(90, 54, 'en', 'Pakistan / Afghanistan'),
(91, 55, 'en', 'Natural / Sun-Dried'),
(92, 56, 'en', '250ml'),
(93, 57, 'en', '500ml'),
(94, 58, 'en', '1 Liter'),
(95, 59, 'en', 'Spain / Turkey / Imported'),
(96, 60, 'en', 'Cold Pressed / Extra Virgin'),
(97, 61, 'en', 'Glass Bottle / Airtight Packaging'),
(98, 62, 'en', 'Peru / Imported'),
(99, 63, 'en', '10g'),
(100, 64, 'en', '20g'),
(101, 65, 'en', 'Himalayan Region / Pakistan'),
(102, 66, 'en', 'Natural / Purified Resin'),
(103, 67, 'en', 'Glass Jar / Airtight Container');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

DROP TABLE IF EXISTS `attribute_translations`;
CREATE TABLE IF NOT EXISTS `attribute_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'SKU'),
(2, 2, 'en', 'Name'),
(3, 3, 'en', 'URL Key'),
(4, 4, 'en', 'Tax Category'),
(5, 5, 'en', 'New'),
(6, 6, 'en', 'Featured'),
(7, 7, 'en', 'Visible Individually'),
(8, 8, 'en', 'Status'),
(9, 9, 'en', 'Short Description'),
(10, 10, 'en', 'Description'),
(11, 11, 'en', 'Price'),
(12, 12, 'en', 'Cost'),
(13, 13, 'en', 'Special Price'),
(14, 14, 'en', 'Special Price From'),
(15, 15, 'en', 'Special Price To'),
(16, 16, 'en', 'Meta Title'),
(17, 17, 'en', 'Meta Keywords'),
(18, 18, 'en', 'Meta Description'),
(19, 19, 'en', 'Length'),
(20, 20, 'en', 'Width'),
(21, 21, 'en', 'Height'),
(22, 22, 'en', 'Weight'),
(23, 23, 'en', 'Color'),
(24, 24, 'en', 'Size'),
(25, 25, 'en', 'Brand'),
(26, 26, 'en', 'Guest Checkout'),
(27, 27, 'en', 'Product Number'),
(28, 28, 'en', 'Manage Stock'),
(29, 29, 'en', ''),
(30, 29, 'ur_PK', ''),
(31, 30, 'en', 'Net Weight'),
(32, 30, 'ur_PK', ''),
(33, 31, 'en', 'Packaging'),
(34, 31, 'ur_PK', ''),
(35, 32, 'en', 'Origin'),
(36, 32, 'ur_PK', ''),
(37, 33, 'en', 'Processing'),
(38, 33, 'ur_PK', ''),
(39, 34, 'en', 'Shelf Life'),
(40, 34, 'ur_PK', ''),
(41, 35, 'en', 'Made By Swat Organics'),
(42, 35, 'ur_PK', ''),
(43, 25, 'ur_PK', ''),
(44, 36, 'en', 'Shelf Life'),
(45, 36, 'ur_PK', ''),
(46, 37, 'en', 'Volume');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `qty` int DEFAULT '0',
  `from` int DEFAULT NULL,
  `to` int DEFAULT NULL,
  `booking_product_event_ticket_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_order_item_id_foreign` (`order_item_id`),
  KEY `bookings_booking_product_event_ticket_id_foreign` (`booking_product_event_ticket_id`),
  KEY `bookings_order_id_foreign` (`order_id`),
  KEY `bookings_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_products`
--

DROP TABLE IF EXISTS `booking_products`;
CREATE TABLE IF NOT EXISTS `booking_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int DEFAULT '0',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_location` tinyint(1) NOT NULL DEFAULT '0',
  `available_every_week` tinyint(1) DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_to` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_appointment_slots`
--

DROP TABLE IF EXISTS `booking_product_appointment_slots`;
CREATE TABLE IF NOT EXISTS `booking_product_appointment_slots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_id` int UNSIGNED NOT NULL,
  `duration` int DEFAULT NULL,
  `break_time` int DEFAULT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_product_appointment_slots_booking_product_id_foreign` (`booking_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_default_slots`
--

DROP TABLE IF EXISTS `booking_product_default_slots`;
CREATE TABLE IF NOT EXISTS `booking_product_default_slots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_id` int UNSIGNED NOT NULL,
  `booking_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int DEFAULT NULL,
  `break_time` int DEFAULT NULL,
  `slots` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_product_default_slots_booking_product_id_foreign` (`booking_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_event_tickets`
--

DROP TABLE IF EXISTS `booking_product_event_tickets`;
CREATE TABLE IF NOT EXISTS `booking_product_event_tickets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_id` int UNSIGNED NOT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `qty` int DEFAULT '0',
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` datetime DEFAULT NULL,
  `special_price_to` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_product_event_tickets_booking_product_id_foreign` (`booking_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_event_ticket_translations`
--

DROP TABLE IF EXISTS `booking_product_event_ticket_translations`;
CREATE TABLE IF NOT EXISTS `booking_product_event_ticket_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_event_ticket_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bpet_locale_unique` (`booking_product_event_ticket_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_rental_slots`
--

DROP TABLE IF EXISTS `booking_product_rental_slots`;
CREATE TABLE IF NOT EXISTS `booking_product_rental_slots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_id` int UNSIGNED NOT NULL,
  `renting_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_price` decimal(12,4) DEFAULT '0.0000',
  `hourly_price` decimal(12,4) DEFAULT '0.0000',
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_product_rental_slots_booking_product_id_foreign` (`booking_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_table_slots`
--

DROP TABLE IF EXISTS `booking_product_table_slots`;
CREATE TABLE IF NOT EXISTS `booking_product_table_slots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_product_id` int UNSIGNED NOT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest_limit` int NOT NULL DEFAULT '0',
  `duration` int NOT NULL,
  `break_time` int NOT NULL,
  `prevent_scheduling_before` int NOT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_product_table_slots_booking_product_id_foreign` (`booking_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `items_count` int DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `tax_total` decimal(12,4) DEFAULT '0.0000',
  `base_tax_total` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `checkout_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_customer_id_foreign` (`customer_id`),
  KEY `cart_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-18 09:06:39', '2025-12-18 09:06:43'),
(2, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', NULL, 0, 1, 2.0000, NULL, 'USD', 'USD', 'USD', 'USD', 5800.0000, 5800.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 5600.0000, 5600.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-13 22:44:57', '2025-12-13 22:47:42'),
(4, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'USD', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-14 12:50:32', '2025-12-14 14:17:29'),
(5, 'asdf@gasd.asd', 'asdf', 'asdf', 'free_free', NULL, 0, 1, 2.0000, NULL, 'USD', 'USD', 'USD', 'PKR', 5600.0000, 5600.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-14 12:50:40', '2025-12-14 14:17:25'),
(6, NULL, NULL, NULL, NULL, NULL, 0, 1, 4.0000, NULL, 'USD', 'USD', 'USD', 'USD', 11200.0000, 11200.0000, 11200.0000, 11200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11200.0000, 11200.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-14 12:51:03', '2025-12-14 12:52:19'),
(7, 'adilkhan11228@gmail.com', 'Adil', 'khan', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 0, 0, NULL, 1, 1, '2025-12-14 14:16:38', '2025-12-21 19:31:28'),
(9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-18 18:26:47', '2025-12-18 18:26:50'),
(10, '', 'asdf', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 1, NULL, NULL, 1, '2025-12-19 12:47:01', '2025-12-19 14:37:33'),
(13, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-21 18:37:09', '2025-12-21 19:03:26'),
(12, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-21 18:35:16', '2025-12-21 18:36:05'),
(14, 'asdf@gasd.asd', 'asdf', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-21 19:04:36', '2025-12-21 19:12:23'),
(15, 'adilkhan11228@gmail.com', 'Adil', 'khan', NULL, NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, NULL, 0, 0, NULL, 1, 1, '2025-12-21 19:41:33', '2025-12-21 19:41:34'),
(16, '', 'adil', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-25 14:47:25', '2025-12-25 14:48:41'),
(17, 'adilkhan11228@gmail.com', 'adil', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-26 10:26:44', '2025-12-26 10:28:05'),
(18, '', 'asdf', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-27 14:55:22', '2025-12-27 14:55:56'),
(23, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 800.0000, 800.0000, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 800.0000, 800.0000, NULL, 1, 0, NULL, NULL, 1, '2026-04-01 15:04:38', '2026-04-01 15:05:44'),
(24, '', 'adil', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 600.0000, 600.0000, 400.0000, 400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 400.0000, 400.0000, NULL, 1, 0, NULL, NULL, 1, '2026-04-01 15:05:44', '2026-04-01 15:07:36'),
(25, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 800.0000, 800.0000, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 800.0000, 800.0000, NULL, 1, 0, NULL, NULL, 1, '2026-04-01 15:07:36', '2026-04-01 15:07:59'),
(26, NULL, NULL, NULL, NULL, NULL, 0, 2, 2.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 5600.0000, 5600.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, NULL, 1, 1, NULL, NULL, 1, '2026-04-01 15:07:59', '2026-04-01 15:32:06'),
(27, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 3200.0000, 3200.0000, 3200.0000, 3200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3200.0000, 3200.0000, NULL, 1, 0, NULL, NULL, 1, '2026-04-04 10:09:35', '2026-04-04 10:38:00'),
(28, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 1600.0000, 1600.0000, 1600.0000, 1600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1600.0000, 1600.0000, NULL, 1, 1, NULL, NULL, 1, '2026-04-04 10:38:00', '2026-04-04 12:06:48'),
(32, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 6000.0000, 6000.0000, 6000.0000, 6000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6000.0000, 6000.0000, NULL, 1, 1, NULL, NULL, 1, '2026-04-07 14:53:10', '2026-04-07 14:56:38'),
(34, NULL, NULL, NULL, NULL, NULL, 0, 2, 2.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 6500.0000, 6500.0000, 6500.0000, 6500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6500.0000, 6500.0000, NULL, 1, 1, NULL, NULL, 1, '2026-04-08 09:50:41', '2026-04-08 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int UNSIGNED NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `applied_tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `cart_id` int UNSIGNED NOT NULL,
  `tax_category_id` int UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_parent_id_foreign` (`parent_id`),
  KEY `cart_items_product_id_foreign` (`product_id`),
  KEY `cart_items_tax_category_id_foreign` (`tax_category_id`),
  KEY `cart_id_index` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(2, 2, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 1.0000, 1.0000, 2800.0000, 2800.0000, NULL, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 5600.0000, 5600.0000, NULL, NULL, 2, 2, NULL, NULL, '{\"cart_id\": 2, \"quantity\": 2, \"product_id\": 2}', '2025-12-13 22:44:57', '2025-12-13 22:45:32'),
(7, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 7, NULL, NULL, '{\"cart_id\": 7, \"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"2\"}', '2025-12-14 14:16:38', '2025-12-21 19:31:09'),
(4, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 4, NULL, NULL, '{\"cart_id\": 4, \"quantity\": 1, \"product_id\": 2}', '2025-12-14 12:50:32', '2025-12-14 12:52:07'),
(5, 2, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 1.0000, 1.0000, 2800.0000, 2800.0000, NULL, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 5600.0000, 5600.0000, NULL, NULL, 2, 5, NULL, NULL, '{\"cart_id\": 5, \"quantity\": 2, \"product_id\": 2}', '2025-12-14 12:50:40', '2025-12-14 12:50:46'),
(6, 4, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 2.0000, 2.0000, 2800.0000, 2800.0000, NULL, 11200.0000, 11200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 11200.0000, 11200.0000, NULL, NULL, 2, 6, NULL, NULL, '{\"cart_id\": 6, \"quantity\": 4, \"is_buy_now\": \"0\", \"product_id\": \"2\"}', '2025-12-14 12:51:03', '2025-12-14 12:52:19'),
(8, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 8, NULL, NULL, '{\"cart_id\": 8, \"quantity\": 1, \"product_id\": 2}', '2025-12-18 09:06:40', '2025-12-18 09:06:40'),
(9, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 9, NULL, NULL, '{\"cart_id\": 9, \"quantity\": 1, \"product_id\": 2}', '2025-12-18 18:26:47', '2025-12-18 18:26:47'),
(10, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 10, NULL, NULL, '{\"cart_id\": 10, \"quantity\": 1, \"product_id\": 2}', '2025-12-19 12:47:01', '2025-12-19 12:47:01'),
(12, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 12, NULL, NULL, '{\"cart_id\": 12, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 18:35:17', '2025-12-21 18:35:17'),
(13, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 13, NULL, NULL, '{\"cart_id\": 13, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 18:37:09', '2025-12-21 18:45:55'),
(14, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 14, NULL, NULL, '{\"cart_id\": 14, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 19:04:36', '2025-12-21 19:04:36'),
(15, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 15, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 7, \"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"2\"}', '2025-12-21 19:41:34', '2025-12-21 19:41:34'),
(16, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 16, NULL, NULL, '{\"cart_id\": 16, \"quantity\": 1, \"product_id\": 2}', '2025-12-25 14:47:25', '2025-12-25 14:47:35'),
(17, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 17, NULL, NULL, '{\"cart_id\": 17, \"quantity\": 1, \"product_id\": 2}', '2025-12-26 10:26:44', '2025-12-26 10:26:44'),
(18, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 18, NULL, NULL, '{\"cart_id\": 18, \"quantity\": 1, \"is_buy_now\": \"1\", \"product_id\": \"2\"}', '2025-12-27 14:55:22', '2025-12-27 14:55:22'),
(23, 1, 'ALM-CONF', 'configurable', 'Premium Almonds (Badam)', NULL, 500.0000, 500.0000, 500.0000, 800.0000, 800.0000, NULL, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 800.0000, 800.0000, 800.0000, 800.0000, NULL, NULL, 9, 23, NULL, NULL, '{\"cart_id\": 23, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 19, \"option_label\": \"500g\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"0\", \"product_id\": \"9\", \"super_attribute\": {\"30\": \"19\"}, \"selected_configurable_option\": \"11\"}', '2026-04-01 15:04:38', '2026-04-01 15:04:38'),
(20, 0, 'ALM-CONF-variant-20', 'simple', 'Variant 20', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 19, 12, 19, NULL, NULL, '{\"parent_id\": 9, \"product_id\": 12}', '2026-04-01 11:28:59', '2026-04-01 11:28:59'),
(22, 0, 'CAS-CONF-variant-002', 'simple', 'Premium Cashews (Kaju) 500 G', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 21, 15, 21, NULL, NULL, '{\"parent_id\": 13, \"product_id\": 15}', '2026-04-01 15:03:48', '2026-04-01 15:03:48'),
(24, 0, 'ALM-CONF-variant-002', 'simple', 'Premium Almonds (Badam) 500 G', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 23, 11, 23, NULL, NULL, '{\"parent_id\": 9, \"product_id\": 11}', '2026-04-01 15:04:38', '2026-04-01 15:04:38'),
(25, 1, 'ALM-CONF', 'configurable', 'Premium Almonds (Badam)', NULL, 0.2500, 0.2500, 0.2500, 400.0000, 400.0000, NULL, 400.0000, 400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 400.0000, 400.0000, 400.0000, 400.0000, NULL, NULL, 9, 24, NULL, NULL, '{\"cart_id\": 24, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 18, \"option_label\": \"250g\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"1\", \"product_id\": \"9\", \"super_attribute\": {\"30\": \"18\"}, \"selected_configurable_option\": \"10\"}', '2026-04-01 15:05:44', '2026-04-01 15:05:44'),
(26, 0, 'ALM-CONF-variant-001', 'simple', 'Premium Almonds (Badam) 250 G', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 25, 10, 24, NULL, NULL, '{\"parent_id\": 9, \"product_id\": 10}', '2026-04-01 15:05:44', '2026-04-01 15:05:44'),
(27, 1, 'CAS-CONF', 'configurable', 'Premium Cashews (Kaju)', NULL, 0.5000, 0.5000, 0.5000, 800.0000, 800.0000, NULL, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 800.0000, 800.0000, 800.0000, 800.0000, NULL, NULL, 13, 25, NULL, NULL, '{\"cart_id\": 25, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 19, \"option_label\": \"500g\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"1\", \"product_id\": \"13\", \"super_attribute\": {\"30\": \"19\"}, \"selected_configurable_option\": \"15\"}', '2026-04-01 15:07:37', '2026-04-01 15:07:37'),
(28, 0, 'CAS-CONF-variant-002', 'simple', 'Premium Cashews (Kaju) 500 G', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 27, 15, 25, NULL, NULL, '{\"parent_id\": 13, \"product_id\": 15}', '2026-04-01 15:07:37', '2026-04-01 15:07:37'),
(29, 1, 'ALM-CONF', 'configurable', 'Premium Almonds (Badam)', NULL, 1.0000, 1.0000, 1.0000, 1600.0000, 1600.0000, NULL, 1600.0000, 1600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1600.0000, 1600.0000, 1600.0000, 1600.0000, NULL, NULL, 9, 26, NULL, NULL, '{\"cart_id\": 26, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"1\", \"product_id\": \"9\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"12\"}', '2026-04-01 15:08:00', '2026-04-01 15:08:52'),
(30, 0, 'ALM-CONF-variant-003', 'simple', 'Premium Almonds (Badam) 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 29, 12, 26, NULL, NULL, '{\"parent_id\": 9, \"product_id\": 12}', '2026-04-01 15:08:00', '2026-04-01 15:08:00'),
(31, 1, 'WAL-KERN-CONF', 'configurable', 'Walnut Kernels (Akhrot Giri)', NULL, 1.0000, 1.0000, 1.0000, 4000.0000, 4000.0000, NULL, 4000.0000, 4000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4000.0000, 4000.0000, 4000.0000, 4000.0000, NULL, NULL, 17, 26, NULL, NULL, '{\"cart_id\": 26, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"0\", \"product_id\": \"17\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"20\"}', '2026-04-01 15:08:27', '2026-04-01 15:08:27'),
(32, 0, 'WAL-KERN-CONF-variant-003', 'simple', 'Walnut Kernels (Akhrot Giri) 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 31, 20, 26, NULL, NULL, '{\"parent_id\": 17, \"product_id\": 20}', '2026-04-01 15:08:27', '2026-04-01 15:08:27'),
(33, 2, 'WAL-SHELL-CONF', 'configurable', 'Walnuts With Shell (Akhrot)', NULL, 1.0000, 2.0000, 2.0000, 1600.0000, 1600.0000, NULL, 3200.0000, 3200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1600.0000, 1600.0000, 3200.0000, 3200.0000, NULL, NULL, 21, 27, NULL, NULL, '{\"cart_id\": 27, \"quantity\": 2, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"1\", \"product_id\": \"21\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"24\"}', '2026-04-04 10:09:36', '2026-04-04 10:09:36'),
(34, 0, 'WAL-SHELL-CONF-variant-003', 'simple', 'Walnuts With Shell (Akhrot) 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33, 24, 27, NULL, NULL, '{\"parent_id\": 21, \"product_id\": 24}', '2026-04-04 10:09:36', '2026-04-04 10:09:36'),
(35, 1, 'ALM-CONF', 'configurable', 'Premium Almonds (Badam)', NULL, 1.0000, 1.0000, 1.0000, 1600.0000, 1600.0000, NULL, 1600.0000, 1600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1600.0000, 1600.0000, 1600.0000, 1600.0000, NULL, NULL, 9, 28, NULL, NULL, '{\"cart_id\": 28, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"1\", \"product_id\": \"9\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"12\"}', '2026-04-04 10:38:00', '2026-04-04 10:38:00'),
(36, 0, 'ALM-CONF-variant-003', 'simple', 'Premium Almonds (Badam) 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 35, 12, 28, NULL, NULL, '{\"parent_id\": 9, \"product_id\": 12}', '2026-04-04 10:38:00', '2026-04-04 10:38:00'),
(37, 1, 'SIDR-CONF', 'configurable', 'Pure Sidr Honey', NULL, 1.0000, 1.0000, 1.0000, 6000.0000, 6000.0000, NULL, 6000.0000, 6000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6000.0000, 6000.0000, 6000.0000, 6000.0000, NULL, NULL, 57, 32, NULL, NULL, '{\"cart_id\": 32, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"0\", \"product_id\": \"57\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"60\"}', '2026-04-07 14:53:10', '2026-04-07 14:53:10'),
(38, 0, 'SIDR-CONF-variant-003', 'simple', 'Pure Sidr Honey 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 37, 60, 32, NULL, NULL, '{\"parent_id\": 57, \"product_id\": 60}', '2026-04-07 14:53:10', '2026-04-07 14:53:10'),
(39, 1, 'COMBO-CONF', 'configurable', 'Honey & Nuts Energy Combo', NULL, 0.5000, 0.5000, 0.5000, 2300.0000, 2300.0000, NULL, 2300.0000, 2300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2300.0000, 2300.0000, 2300.0000, 2300.0000, NULL, NULL, 69, 34, NULL, NULL, '{\"cart_id\": 34, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 19, \"option_label\": \"500g\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"0\", \"product_id\": \"69\", \"super_attribute\": {\"30\": \"19\"}, \"selected_configurable_option\": \"70\"}', '2026-04-08 09:50:41', '2026-04-08 09:59:50'),
(40, 0, 'COMBO-500', 'simple', 'Honey & Nuts Energy Combo 500 G', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 39, 70, 34, NULL, NULL, '{\"parent_id\": 69, \"product_id\": 70}', '2026-04-08 09:50:41', '2026-04-08 09:50:41'),
(41, 1, 'COMBO-CONF', 'configurable', 'Honey & Nuts Energy Combo', NULL, 1.0000, 1.0000, 1.0000, 4200.0000, 4200.0000, NULL, 4200.0000, 4200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4200.0000, 4200.0000, 4200.0000, 4200.0000, NULL, NULL, 69, 34, NULL, NULL, '{\"cart_id\": 34, \"quantity\": 1, \"attributes\": {\"net_weight\": {\"option_id\": 20, \"option_label\": \"1kg\", \"attribute_name\": \"Net Weight\"}}, \"is_buy_now\": \"0\", \"product_id\": \"69\", \"super_attribute\": {\"30\": \"20\"}, \"selected_configurable_option\": \"71\"}', '2026-04-08 09:50:44', '2026-04-08 09:59:50'),
(42, 0, 'COMBO-1KG', 'simple', 'Honey & Nuts Energy Combo 1 KG', NULL, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 41, 71, 34, NULL, NULL, '{\"parent_id\": 69, \"product_id\": 71}', '2026-04-08 09:50:44', '2026-04-08 09:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

DROP TABLE IF EXISTS `cart_item_inventories`;
CREATE TABLE IF NOT EXISTS `cart_item_inventories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int UNSIGNED NOT NULL DEFAULT '0',
  `inventory_source_id` int UNSIGNED DEFAULT NULL,
  `cart_item_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

DROP TABLE IF EXISTS `cart_payment`;
CREATE TABLE IF NOT EXISTS `cart_payment` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_payment_cart_id_foreign` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(5, 'cashondelivery', 'Cash On Delivery', 1, '2025-12-13 22:32:35', '2025-12-13 22:32:35'),
(8, 'cashondelivery', 'Cash On Delivery', 2, '2025-12-13 22:46:25', '2025-12-13 22:46:25'),
(12, 'cashondelivery', 'Cash On Delivery', 5, '2025-12-14 14:09:47', '2025-12-14 14:09:47'),
(14, 'cashondelivery', 'Cash On Delivery', 4, '2025-12-14 14:17:28', '2025-12-14 14:17:28'),
(40, 'cashondelivery', 'Cash On Delivery', 7, '2025-12-21 19:31:19', '2025-12-21 19:31:19'),
(22, 'cashondelivery', 'Cash On Delivery', 10, '2025-12-19 14:33:25', '2025-12-19 14:33:25'),
(26, 'cashondelivery', 'Cash On Delivery', 11, '2025-12-21 18:35:00', '2025-12-21 18:35:00'),
(27, 'cashondelivery', 'Cash On Delivery', 12, '2025-12-21 18:35:39', '2025-12-21 18:35:39'),
(37, 'cashondelivery', 'Cash On Delivery', 13, '2025-12-21 19:01:02', '2025-12-21 19:01:02'),
(38, 'cashondelivery', 'Cash On Delivery', 14, '2025-12-21 19:11:40', '2025-12-21 19:11:40'),
(41, 'cashondelivery', 'Cash On Delivery', 16, '2025-12-25 14:48:25', '2025-12-25 14:48:25'),
(42, 'cashondelivery', 'Cash On Delivery', 17, '2025-12-26 10:27:47', '2025-12-26 10:27:47'),
(43, 'cashondelivery', 'Cash On Delivery', 18, '2025-12-27 14:55:50', '2025-12-27 14:55:50'),
(44, 'cashondelivery', 'Cash On Delivery', 24, '2026-04-01 15:07:06', '2026-04-01 15:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

DROP TABLE IF EXISTS `cart_rules`;
CREATE TABLE IF NOT EXISTS `cart_rules` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_type` int NOT NULL DEFAULT '1',
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT '0',
  `usage_per_customer` int NOT NULL DEFAULT '0',
  `uses_per_coupon` int NOT NULL DEFAULT '0',
  `times_used` int UNSIGNED NOT NULL DEFAULT '0',
  `condition_type` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_quantity` int NOT NULL DEFAULT '1',
  `discount_step` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

DROP TABLE IF EXISTS `cart_rule_channels`;
CREATE TABLE IF NOT EXISTS `cart_rule_channels` (
  `cart_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`cart_rule_id`,`channel_id`),
  KEY `cart_rule_channels_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

DROP TABLE IF EXISTS `cart_rule_coupons`;
CREATE TABLE IF NOT EXISTS `cart_rule_coupons` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit` int UNSIGNED NOT NULL DEFAULT '0',
  `usage_per_customer` int UNSIGNED NOT NULL DEFAULT '0',
  `times_used` int UNSIGNED NOT NULL DEFAULT '0',
  `type` int UNSIGNED NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupon_usage`
--

DROP TABLE IF EXISTS `cart_rule_coupon_usage`;
CREATE TABLE IF NOT EXISTS `cart_rule_coupon_usage` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `times_used` int NOT NULL DEFAULT '0',
  `cart_rule_coupon_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

DROP TABLE IF EXISTS `cart_rule_customers`;
CREATE TABLE IF NOT EXISTS `cart_rule_customers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `times_used` bigint UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` int UNSIGNED NOT NULL,
  `cart_rule_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  KEY `cart_rule_customers_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

DROP TABLE IF EXISTS `cart_rule_customer_groups`;
CREATE TABLE IF NOT EXISTS `cart_rule_customer_groups` (
  `cart_rule_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_translations`
--

DROP TABLE IF EXISTS `cart_rule_translations`;
CREATE TABLE IF NOT EXISTS `cart_rule_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  `cart_rule_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

DROP TABLE IF EXISTS `cart_shipping_rates`;
CREATE TABLE IF NOT EXISTS `cart_shipping_rates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `base_price` double DEFAULT '0',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `applied_tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT '1',
  `cart_address_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(30, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 4, '2025-12-13 22:46:23', '2025-12-13 22:46:23', 2),
(29, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 4, '2025-12-13 22:46:23', '2025-12-13 22:46:23', 2),
(49, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 10, '2025-12-14 14:04:50', '2025-12-14 14:04:50', 4),
(53, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 12, '2025-12-14 14:09:45', '2025-12-14 14:09:45', 5),
(121, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 15, '2025-12-21 19:31:19', '2025-12-21 19:31:19', 7),
(90, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 23, '2025-12-19 14:37:33', '2025-12-19 14:37:33', 10),
(97, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 27, '2025-12-21 18:35:38', '2025-12-21 18:35:38', 12),
(115, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 31, '2025-12-21 19:01:01', '2025-12-21 19:01:01', 13),
(117, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 35, '2025-12-21 19:11:40', '2025-12-21 19:11:40', 14),
(123, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 41, '2025-12-25 14:48:24', '2025-12-25 14:48:24', 16),
(125, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 45, '2025-12-26 10:27:46', '2025-12-26 10:27:46', 17),
(127, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 49, '2025-12-27 14:55:49', '2025-12-27 14:55:49', 18),
(130, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 53, '2026-04-01 15:07:05', '2026-04-01 15:07:05', 24);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

DROP TABLE IF EXISTS `catalog_rules`;
CREATE TABLE IF NOT EXISTS `catalog_rules` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `condition_type` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

DROP TABLE IF EXISTS `catalog_rule_channels`;
CREATE TABLE IF NOT EXISTS `catalog_rule_channels` (
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

DROP TABLE IF EXISTS `catalog_rule_customer_groups`;
CREATE TABLE IF NOT EXISTS `catalog_rule_customer_groups` (
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

DROP TABLE IF EXISTS `catalog_rule_products`;
CREATE TABLE IF NOT EXISTS `catalog_rule_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  KEY `catalog_rule_products_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_product_prices`
--

DROP TABLE IF EXISTS `catalog_rule_product_prices`;
CREATE TABLE IF NOT EXISTS `catalog_rule_product_prices` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` int NOT NULL DEFAULT '0',
  `logo_path` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `display_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'products_and_description',
  `_lft` int UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `banner_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'products_and_description', 1, 26, NULL, NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(4, 4, 'category/4/q4NF5UVdlkhK4UIJni3MW4eQFD3nELgk46jP7LTm.webp', 1, 'products_and_description', 6, 7, 1, NULL, 'category/4/sw2Ri5F3T6Pl2s3JEUERWb9gnGhGwqKkEFqSNt7Z.webp', '2026-03-13 22:32:02', '2026-04-01 10:15:28'),
(5, 5, 'category/5/s9xhidZpexU8pET3dHzuMgl7v2VX3855JZG6CJUG.webp', 1, 'products_and_description', 8, 9, 1, NULL, 'category/5/bhZVKkeSeYB0nkRm0ML9K26h1vsmiloFXwfkw7r5.webp', '2026-03-13 22:32:58', '2026-04-01 10:15:36'),
(6, 6, 'category/6/cHgOL2Y569lxfYLiv3aESnoLvGnMbK9YsfOTvixm.webp', 1, 'products_and_description', 10, 11, 1, NULL, 'category/6/NBkMFo63M58MwLxw2kIq8kknPUb4lAvdnaTb9wqI.webp', '2026-03-13 22:34:41', '2026-04-01 10:15:42'),
(7, 3, 'category/7/8GpYTZWQ4uj5MBpiRU5Q5dbdBl8cLLcekCuEkivJ.webp', 1, 'products_and_description', 12, 13, 1, NULL, 'category/7/Ujfceuah7MRlEdO1oDKME1nft1QmNdfJilMm8quR.webp', '2026-03-13 22:35:22', '2026-04-01 09:56:01'),
(8, 7, 'category/8/oSlLY3njnAb8VArNZvmAYH0ZyW15xinEOxN1oETx.webp', 1, 'products_and_description', 14, 15, 1, NULL, 'category/8/rSVWxtPaBbSFKImmjwrrVatotEt5LJcMkIBaI0KT.webp', '2026-03-13 22:36:10', '2026-04-01 09:57:05'),
(9, 8, 'category/9/1gzITplH8HzD7yH40MXhBvv8CFG4rrB2yucSY3Ff.webp', 1, 'products_and_description', 16, 17, 1, NULL, 'category/9/erVj2Na26ERpp34219c1WyBXZKda1IaQQblH5srr.webp', '2026-03-13 22:36:55', '2026-04-01 09:57:14'),
(10, 9, 'category/10/V5fLAfQZwzteGQT2cVoGXx7P90KKVs2PskmnaRpE.webp', 1, 'products_and_description', 18, 19, 1, NULL, 'category/10/0NBm1CUu5lEeLxmaLjlODUvb7gCFQe6EG7PHD07h.webp', '2026-03-13 22:38:50', '2026-04-01 09:57:24'),
(12, 10, 'category/12/wQHmqUKI3J3mO7lUVuVC8AR416T86ZqLXXNidGAb.webp', 1, 'products_and_description', 22, 23, 1, NULL, 'category/12/UxdiPjDrnkFjgsh5nwUM6dJ20nh37s2e6CXyDw9P.webp', '2026-04-01 09:55:01', '2026-04-01 10:04:13'),
(11, 2, 'category/11/zrRKc759kWXHCIfTSrmioW7iNDsqzr0tdBufNsAO.webp', 1, 'products_and_description', 20, 21, 1, NULL, 'category/11/2Ntu0Xmn8LrZM7SzeRRoINWUNhxtN9zGufrWQwxa.webp', '2026-04-01 09:51:49', '2026-04-01 09:55:33'),
(13, 13, NULL, 1, 'products_and_description', 24, 25, 1, NULL, NULL, '2026-04-08 11:27:30', '2026-04-08 11:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

DROP TABLE IF EXISTS `category_filterable_attributes`;
CREATE TABLE IF NOT EXISTS `category_filterable_attributes` (
  `category_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(2, 25),
(3, 11),
(3, 30),
(3, 32),
(3, 33),
(3, 35),
(4, 11),
(4, 30),
(4, 32),
(4, 33),
(5, 11),
(5, 30),
(5, 32),
(5, 33),
(6, 11),
(6, 30),
(6, 32),
(6, 33),
(7, 11),
(7, 30),
(7, 32),
(7, 33),
(8, 11),
(8, 30),
(8, 33),
(9, 11),
(9, 30),
(9, 35),
(10, 11),
(10, 35),
(11, 11),
(11, 30),
(12, 11),
(12, 30),
(12, 31),
(12, 32),
(12, 33),
(12, 35);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `locale_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  KEY `category_translations_locale_id_foreign` (`locale_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'Root', 'root', '', 'Root Category Description', '', '', '', NULL, 'en'),
(2, 2, 'adil category test', 'adil-category-test', '', '<p>adsf</p>', '', '', '', 1, 'en'),
(3, 2, 'adil category test', 'adil-category-test', '', '<p>adsf</p>', '', '', '', 2, 'ur_PK'),
(4, 3, 'Honey', 'honey', '', '<p><br>Discover pure and natural honey at Swat Organics, sourced for its rich taste, aroma, and health benefits. Our collection includes premium varieties such as Sidr, Acacia, and Ajwain honey, known for their nutritional value and natural healing properties.</p>\r\n<p>Packed with antioxidants and essential nutrients, honey is a perfect natural sweetener and immunity booster. Whether used in daily diet or for wellness purposes, our honey is carefully selected to ensure purity, quality, and freshness.</p>', 'Buy Pure Honey Online in Pakistan | Swat Organics', 'Buy pure and organic honey online in Pakistan from Swat Organics. Premium Sidr, Acacia, and Ajwain honey with natural taste and health benefits.', 'sidr honey pakistan, pure honey online, organic honey, ajwain honey, acacia honey, natural honey pakistan', 1, 'en'),
(5, 3, 'Dry Fruits', 'dry-fruits', '', '<p>Explore our premium collection of dry fruits sourced from trusted farms and carefully packed to maintain freshness and natural taste. Our dry fruits are rich in essential nutrients, vitamins, and antioxidants that support a healthy lifestyle.</p>\r\n<p>From almonds and walnuts to pistachios, apricots, and figs, we offer a wide range of natural dry fruits perfect for daily snacking, cooking, and gifting. At Swat Organics, we ensure every product is hygienically packed and delivered fresh to your doorstep across Pakistan.</p>', 'Buy Premium Dry Fruits Online in Pakistan | Swat Organics', 'Shop premium quality dry fruits online in Pakistan including almonds, walnuts, pistachios, apricots and more. Fresh, natural and delivered by Swat Organics.', 'dry fruits pakistan, buy dry fruits online, almonds walnuts pistachios pakistan, premium dry fruits', 2, 'ur_PK'),
(6, 4, 'Nuts With Shell', 'nuts-with-shell', '', '<p>Discover a premium selection of nuts with shell including pistachios, walnuts, almonds, and peanuts. These natural nuts retain their freshness and flavor while providing a satisfying crunch and excellent nutritional value.</p>\r\n<p>Nuts with shell are rich in healthy fats, proteins, vitamins, and minerals that support heart health and energy levels. At Swat Organics, we bring you carefully sourced nuts with shell that are fresh, natural, and perfect for daily snacking.</p>', 'Buy Nuts With Shell Online in Pakistan | Swat Organics', 'Buy fresh nuts with shell including pistachios, walnuts, almonds and peanuts online in Pakistan. Natural and premium quality from Swat Organics.', 'nuts with shell pakistan, pistachios with shell, walnuts with shell pakistan, almonds with shell, peanuts with shell, buy nuts online pakistan', 1, 'en'),
(7, 4, 'Nuts With Shell', 'nuts-with-shell', '', '<p>Discover a premium selection of nuts with shell including pistachios, walnuts, almonds, and peanuts. These natural nuts retain their freshness and flavor while providing a satisfying crunch and excellent nutritional value.</p>\r\n<p>Nuts with shell are rich in healthy fats, proteins, vitamins, and minerals that support heart health and energy levels. At Swat Organics, we bring you carefully sourced nuts with shell that are fresh, natural, and perfect for daily snacking.</p>', 'Buy Nuts With Shell Online in Pakistan | Swat Organics', 'Buy fresh nuts with shell including pistachios, walnuts, almonds and peanuts online in Pakistan. Natural and premium quality from Swat Organics.', '', 2, 'ur_PK'),
(8, 5, 'Nuts Without Shell', 'nuts-without-shell', '', '<p>Enjoy the convenience and nutrition of premium nuts without shell including almonds, pistachios, cashews, walnuts, and more. These ready-to-eat nuts are perfect for healthy snacking, baking, cooking, or adding to salads and desserts.</p>\r\n<p>Packed with protein, healthy fats, and essential nutrients, our nuts without shell are hygienically packed to maintain freshness and quality.</p>', 'Buy Nuts Without Shell Online in Pakistan | Swat Organics', 'Shop premium nuts without shell including almonds, cashews and pistachios online in Pakistan. Fresh and nutritious products from Swat Organics.', 'nuts without shell pakistan, almond giri pakistan, pistachio giri, cashew nuts pakistan, walnuts without shell, healthy nuts online pakistan', 1, 'en'),
(9, 5, 'Nuts Without Shell', 'nuts-without-shell', '', '<p>Enjoy the convenience and nutrition of premium nuts without shell including almonds, pistachios, cashews, walnuts, and more. These ready-to-eat nuts are perfect for healthy snacking, baking, cooking, or adding to salads and desserts.</p>\r\n<p>Packed with protein, healthy fats, and essential nutrients, our nuts without shell are hygienically packed to maintain freshness and quality.</p>', 'Buy Nuts Without Shell Online in Pakistan | Swat Organics', 'Shop premium nuts without shell including almonds, cashews and pistachios online in Pakistan. Fresh and nutritious products from Swat Organics.', '', 2, 'ur_PK'),
(10, 6, 'Seeds', 'seeds', '', '<p>Our collection of natural seeds includes pumpkin seeds, sunflower seeds, basil seeds, chia seeds, and more. Seeds are a powerhouse of nutrients including protein, fiber, omega fatty acids, vitamins, and minerals.</p>\r\n<p>These healthy superfoods are perfect for snacking, smoothies, cereals, and salads. Swat Organics provides premium quality seeds that are natural, fresh, and packed with nutrition.</p>', 'Buy Healthy Seeds Online in Pakistan | Swat Organics', 'Shop healthy seeds including pumpkin seeds, sunflower seeds and basil seeds online in Pakistan. Natural superfoods from Swat Organics.', 'healthy seeds pakistan, pumpkin seeds pakistan, sunflower seeds pakistan, basil seeds tukhm malanga, chia seeds pakistan, superfood seeds', 1, 'en'),
(11, 6, 'Seeds', 'seeds', '', '<p>Our collection of natural seeds includes pumpkin seeds, sunflower seeds, basil seeds, chia seeds, and more. Seeds are a powerhouse of nutrients including protein, fiber, omega fatty acids, vitamins, and minerals.</p>\r\n<p>These healthy superfoods are perfect for snacking, smoothies, cereals, and salads. Swat Organics provides premium quality seeds that are natural, fresh, and packed with nutrition.</p>', 'Buy Healthy Seeds Online in Pakistan | Swat Organics', 'Shop healthy seeds including pumpkin seeds, sunflower seeds and basil seeds online in Pakistan. Natural superfoods from Swat Organics.', '', 2, 'ur_PK'),
(12, 7, 'Dates', 'dates', '', '<p>Discover a variety of premium quality dates including Ajwa, Mabroom, Medjool, Zahidi, and other famous date varieties. Dates are naturally sweet and packed with energy, fiber, vitamins, and essential minerals.</p>\r\n<p>Our dates are carefully sourced and packed to ensure freshness and authentic taste. Perfect for daily nutrition, Ramadan, and healthy snacking.</p>', 'Buy Premium Dates Online in Pakistan | Swat Organics', 'Buy Ajwa, Mabroom, Medjool and premium dates online in Pakistan. Fresh and high quality dates available at Swat Organics.', 'dates pakistan, buy dates online pakistan, ajwa dates pakistan, mabroom dates, medjool dates pakistan, premium saudi dates', 1, 'en'),
(13, 7, 'Dates', 'dates', '', '<p>Discover a variety of premium quality dates including Ajwa, Mabroom, Medjool, Zahidi, and other famous date varieties. Dates are naturally sweet and packed with energy, fiber, vitamins, and essential minerals.</p>\r\n<p>Our dates are carefully sourced and packed to ensure freshness and authentic taste. Perfect for daily nutrition, Ramadan, and healthy snacking.</p>', 'Buy Premium Dates Online in Pakistan | Swat Organics', 'Buy Ajwa, Mabroom, Medjool and premium dates online in Pakistan. Fresh and high quality dates available at Swat Organics.', '', 2, 'ur_PK'),
(14, 8, 'Mixed Dry Fruits', 'mixed-dry-fruits', '', '<p>Enjoy a delicious combination of multiple dry fruits packed in one healthy mix. Our mixed dry fruit collections combine almonds, cashews, pistachios, raisins, and other nutritious ingredients to provide a balanced snack.</p>\r\n<p>These mixes are perfect for daily energy, travel snacks, and healthy gifting options.</p>', 'Buy Mixed Dry Fruits Online in Pakistan | Swat Organics', 'Shop healthy mixed dry fruits online in Pakistan including premium dry fruit mixes for snacks and gifts.', 'mixed dry fruits pakistan, dry fruit mix pakistan, trail mix pakistan, healthy dry fruit snacks, dry fruit mix box', 1, 'en'),
(15, 8, 'Mixed Dry Fruits', 'mixed-dry-fruits', '', '<p>Enjoy a delicious combination of multiple dry fruits packed in one healthy mix. Our mixed dry fruit collections combine almonds, cashews, pistachios, raisins, and other nutritious ingredients to provide a balanced snack.</p>\r\n<p>These mixes are perfect for daily energy, travel snacks, and healthy gifting options.</p>', 'Buy Mixed Dry Fruits Online in Pakistan | Swat Organics', 'Shop healthy mixed dry fruits online in Pakistan including premium dry fruit mixes for snacks and gifts.', '', 2, 'ur_PK'),
(16, 9, 'Dried Fruits', 'dried-fruits', '', '<p>Explore our premium selection of dried fruits at Swat Organics, sourced for quality, freshness, and natural taste. From sweet raisins and soft dried apricots to nutritious figs and prunes, our products are carefully selected to deliver both flavor and health benefits.</p>\r\n<p>Naturally rich in fiber, vitamins, and antioxidants, dried fruits are perfect for healthy snacking, boosting energy, and adding nutrition to your daily diet. Enjoy pure, wholesome goodness with every bite.</p>', 'Buy Premium Dried Fruits Online in Pakistan | Swat Organics', 'Shop premium quality dried fruits online in Pakistan from Swat Organics. Buy raisins, apricots, figs and more — 100% natural, healthy, and fresh.', 'dried fruits pakistan, buy dried fruits online, kishmish, khubani, anjeer, organic dried fruits, swat dried fruits, healthy snacks pakistan', 1, 'en'),
(17, 9, 'Organic Products', 'organic-products', '', '<p>Our organic product range includes naturally produced foods made from carefully selected ingredients without harmful chemicals or preservatives.</p>\r\n<p>Swat Organics focuses on delivering pure, natural, and healthy organic products including honey blends, energy mixes, and traditional recipes made from dry fruits and seeds.</p>', 'Buy Organic Products Online in Pakistan | Swat Organics', 'Shop natural and organic products made from dry fruits and seeds. Healthy homemade foods from Swat Organics.', '', 2, 'ur_PK'),
(18, 10, 'Gift Boxes', 'gift-boxes', '', '<p>Our dry fruit gift boxes are perfect for special occasions, celebrations, and corporate gifts. Each box contains a premium selection of fresh dry fruits beautifully packed for gifting.</p>\r\n<p>These gift boxes combine taste, nutrition, and elegance, making them an ideal present for family, friends, and business partners.</p>', 'Buy Dry Fruit Gift Boxes Online in Pakistan | Swat Organics', 'Order premium dry fruit gift boxes online in Pakistan. Perfect for weddings, events and special occasions.', 'dry fruit gift boxes pakistan, dry fruit gift pack pakistan, premium dry fruit gift box, dry fruit gift hampers pakistan', 1, 'en'),
(19, 10, 'Gift Boxes', 'gift-boxes', '', '<p>Our dry fruit gift boxes are perfect for special occasions, celebrations, and corporate gifts. Each box contains a premium selection of fresh dry fruits beautifully packed for gifting.</p>\r\n<p>These gift boxes combine taste, nutrition, and elegance, making them an ideal present for family, friends, and business partners.</p>', 'Buy Dry Fruit Gift Boxes Online in Pakistan | Swat Organics', 'Order premium dry fruit gift boxes online in Pakistan. Perfect for weddings, events and special occasions.', '', 2, 'ur_PK'),
(20, 11, 'Honey', 'raw-honey', '', '<p>Discover pure and natural honey at Swat Organics, sourced for its rich taste, aroma, and health benefits. Our collection includes premium varieties such as Sidr, Acacia, and Ajwain honey, known for their nutritional value and natural healing properties.</p>\r\n<p>Packed with antioxidants and essential nutrients, honey is a perfect natural sweetener and immunity booster. Whether used in daily diet or for wellness purposes, our honey is carefully selected to ensure purity, quality, and freshness.</p>', 'Buy Pure Honey Online in Pakistan | Swat Organics', 'Buy pure and organic honey online in Pakistan from Swat Organics. Premium Sidr, Acacia, and Ajwain honey with natural taste and health benefits.', 'sidr honey pakistan, pure honey online, organic honey, ajwain honey, acacia honey, natural honey pakistan', 1, 'en'),
(21, 11, 'Honey', 'raw-honey', '', '<p>Discover pure and natural honey at Swat Organics, sourced for its rich taste, aroma, and health benefits. Our collection includes premium varieties such as Sidr, Acacia, and Ajwain honey, known for their nutritional value and natural healing properties.</p>\r\n<p>Packed with antioxidants and essential nutrients, honey is a perfect natural sweetener and immunity booster. Whether used in daily diet or for wellness purposes, our honey is carefully selected to ensure purity, quality, and freshness.</p>', 'Buy Pure Honey Online in Pakistan | Swat Organics', 'Buy pure and organic honey online in Pakistan from Swat Organics. Premium Sidr, Acacia, and Ajwain honey with natural taste and health benefits.', 'sidr honey pakistan, pure honey online, organic honey, ajwain honey, acacia honey, natural honey pakistan', 2, 'ur_PK'),
(22, 12, 'SuperFoods', 'superfoods', '', '<p>Explore a powerful range of superfoods at Swat Organics, designed to support a healthy and active lifestyle. Our collection includes nutrient-rich products like chia seeds, moringa powder, ashwagandha, and other natural supplements known for their wellness benefits.<br><br>Superfoods are packed with essential vitamins, minerals, and antioxidants that help boost energy, improve immunity, and support overall health. Carefully sourced and naturally processed, our products ensure quality, purity, and maximum nutritional value.<br><br></p>', 'Buy Superfoods Online in Pakistan | Swat Organics', 'Shop premium superfoods online in Pakistan from Swat Organics. Buy chia seeds, moringa, ashwagandha and more for a healthy lifestyle.', 'superfoods pakistan, chia seeds, moringa powder, ashwagandha pakistan, organic superfoods, healthy foods pakistan', 1, 'en'),
(23, 12, 'SuperFoods', 'superfoods', '', '<p>Explore a powerful range of superfoods at Swat Organics, designed to support a healthy and active lifestyle. Our collection includes nutrient-rich products like chia seeds, moringa powder, ashwagandha, and other natural supplements known for their wellness benefits.<br><br>Superfoods are packed with essential vitamins, minerals, and antioxidants that help boost energy, improve immunity, and support overall health. Carefully sourced and naturally processed, our products ensure quality, purity, and maximum nutritional value.<br><br></p>', 'Buy Superfoods Online in Pakistan | Swat Organics', 'Shop premium superfoods online in Pakistan from Swat Organics. Buy chia seeds, moringa, ashwagandha and more for a healthy lifestyle.', 'superfoods pakistan, chia seeds, moringa powder, ashwagandha pakistan, organic superfoods, healthy foods pakistan', 2, 'ur_PK'),
(24, 13, 'Oils', 'oils', '', '<p>Premium quality cooking and health oils including extra virgin olive oil and more. All oils are carefully sourced and packed to preserve purity and freshness.</p>', 'Buy Oils Online in Pakistan | Swat Organics', 'Shop premium oils online in Pakistan from Swat Organics. Extra virgin olive oil and more, cold-pressed and pure.', 'oils pakistan, olive oil pakistan, extra virgin olive oil pakistan, cooking oil pakistan, healthy oil pakistan', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
CREATE TABLE IF NOT EXISTS `channels` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_seo` json DEFAULT NULL,
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_ips` text COLLATE utf8mb4_unicode_ci,
  `root_category_id` int UNSIGNED DEFAULT NULL,
  `default_locale_id` int UNSIGNED NOT NULL,
  `base_currency_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `channels_root_category_id_foreign` (`root_category_id`),
  KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  KEY `channels_base_currency_id_foreign` (`base_currency_id`),
  KEY `channels_hostname_idx` (`hostname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'http://swatorganics.local', 'channel/1/EEo797tmyFZbJACAOJdxIu7WkGMiH8V7QMD3XjTP.png', 'channel/1/2FsEWk082kWtozu7HzsMGJuQ6bg7Q7jSSYoMvhIY.png', NULL, 0, '', 1, 1, 2, '2025-12-13 21:38:35', '2026-04-01 10:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

DROP TABLE IF EXISTS `channel_currencies`;
CREATE TABLE IF NOT EXISTS `channel_currencies` (
  `channel_id` int UNSIGNED NOT NULL,
  `currency_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `channel_currencies_currency_id_foreign` (`currency_id`),
  KEY `channel_currencies_cid_cyid_idx` (`channel_id`,`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

DROP TABLE IF EXISTS `channel_inventory_sources`;
CREATE TABLE IF NOT EXISTS `channel_inventory_sources` (
  `channel_id` int UNSIGNED NOT NULL,
  `inventory_source_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `channel_inventory_source_unique` (`channel_id`,`inventory_source_id`),
  KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

DROP TABLE IF EXISTS `channel_locales`;
CREATE TABLE IF NOT EXISTS `channel_locales` (
  `channel_id` int UNSIGNED NOT NULL,
  `locale_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `channel_locales_locale_id_foreign` (`locale_id`),
  KEY `channel_locales_cid_lid_idx` (`channel_id`,`locale_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_translations`
--

DROP TABLE IF EXISTS `channel_translations`;
CREATE TABLE IF NOT EXISTS `channel_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `maintenance_mode_text` text COLLATE utf8mb4_unicode_ci,
  `home_seo` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  KEY `channel_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Default', '', '', '{\"meta_title\": \"SwatOrganics – 100% Pure Organic Products from Swat Valley | Honey, Herbal Oils & Natural Ingredients\", \"meta_keywords\": \"swat organics, sidr honey pakistan, pure honey swat valley, natural honey, herbal oils pakistan, cold pressed oils, natural superfoods pakistan, dry fruits swat, organic food store pakistan, dehydrated foods, moringa powder, ashwagandha powder, natural health products\", \"meta_description\": \"Discover premium organic products sourced from the mountains of Swat Valley. Shop pure honey, cold-pressed herbal oils, dry fruits, dehydrated foods, and natural superfoods—fresh, authentic, and delivered across Pakistan.\"}', NULL, '2026-04-01 10:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE IF NOT EXISTS `cms_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(2, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(3, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(4, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(5, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(6, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(7, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(8, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(9, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(10, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(11, NULL, '2025-12-26 13:12:26', '2025-12-26 13:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_channels`
--

DROP TABLE IF EXISTS `cms_page_channels`;
CREATE TABLE IF NOT EXISTS `cms_page_channels` (
  `cms_page_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  KEY `cms_page_channels_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_page_channels`
--

INSERT INTO `cms_page_channels` (`cms_page_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_translations`
--

DROP TABLE IF EXISTS `cms_page_translations`;
CREATE TABLE IF NOT EXISTS `cms_page_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_page_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'About Us', 'about-us', '<p><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"1458\" data-end=\"1475\">Swat Organics</strong></span> is dedicated to bringing you 100% pure organic products sourced directly from the pristine valleys of Swat, Pakistan. Our mission is to promote natural wellness through authenticity, quality, and ethical sourcing.</p>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"1696\" data-end=\"1713\"><strong><span style=\"color: rgb(45, 194, 107);\">Our Story</span></strong></h3>\r\n<p data-start=\"1714\" data-end=\"1943\">Swat Valley is known for its untouched natural beauty and rich organic resources. Swat Organics was founded with the vision to deliver these natural treasures to households across Pakistan, without compromising purity or quality.</p>\r\n<p data-start=\"1714\" data-end=\"1943\">&nbsp;</p>\r\n<h3 data-start=\"1950\" data-end=\"1972\"><strong><span style=\"color: rgb(45, 194, 107);\">Our Commitment</span></strong></h3>\r\n<ul data-start=\"1973\" data-end=\"2131\">\r\n<li data-start=\"1973\" data-end=\"2010\">\r\n<p data-start=\"1975\" data-end=\"2010\">100% natural and organic products</p>\r\n</li>\r\n<li data-start=\"2011\" data-end=\"2055\">\r\n<p data-start=\"2013\" data-end=\"2055\">No artificial additives or preservatives</p>\r\n</li>\r\n<li data-start=\"2056\" data-end=\"2096\">\r\n<p data-start=\"2058\" data-end=\"2096\">Ethically sourced from local farmers</p>\r\n</li>\r\n<li data-start=\"2097\" data-end=\"2131\">\r\n<p data-start=\"2099\" data-end=\"2131\">Quality-tested before delivery</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"2138\" data-end=\"2171\"><strong><span style=\"color: rgb(45, 194, 107);\">Why Choose Swat Organics?</span></strong></h3>\r\n<p data-start=\"2172\" data-end=\"2309\">We believe in transparency, sustainability, and long-term customer trust. Every product we offer reflects our promise of purity and care.</p>', 'About Swat Organics | Pure Organic Products from Swat Valley', 'Swat Organics is dedicated to providing 100% pure, natural, and organic products sourced directly from the pristine valleys of Swat, Pakistan.\r\n\r\nLearn about Swat Organics, a trusted source of 100% pure organic honey, herbal oils, and natural products from Swat Valley, Pakistan.', 'Swat Organics, organic products Pakistan, Swat Valley honey, herbal oils, natural wellness', 'en', 1),
(2, 'Return Policy', 'return-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h1 data-start=\"290\" data-end=\"309\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"292\" data-end=\"309\">Return Policy</strong></span></h1>\r\n<p data-start=\"311\" data-end=\"511\">At <strong data-start=\"314\" data-end=\"331\">Swat Organics</strong>, customer satisfaction is our top priority. We take great care in packaging and delivering our products, but if you are not fully satisfied with your purchase, we&rsquo;re here to help.</p>\r\n<p data-start=\"311\" data-end=\"511\">&nbsp;</p>\r\n<h2 data-start=\"518\" data-end=\"548\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"521\" data-end=\"548\">Eligibility for Returns</strong></span></h2>\r\n<p data-start=\"550\" data-end=\"611\">You may request a return if the following conditions are met:</p>\r\n<ul>\r\n<li data-start=\"615\" data-end=\"677\">The product is <strong data-start=\"630\" data-end=\"677\">unused, unopened, and in original packaging</strong></li>\r\n<li data-start=\"680\" data-end=\"736\">The return request is made within <strong data-start=\"714\" data-end=\"736\">7 days of delivery</strong></li>\r\n<li data-start=\"739\" data-end=\"794\">Proof of purchase (order number or invoice) is provided</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 data-start=\"801\" data-end=\"828\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"804\" data-end=\"828\">Non-Returnable Items</strong></span></h2>\r\n<p data-start=\"830\" data-end=\"917\">Due to hygiene and safety reasons, the following items are <strong data-start=\"889\" data-end=\"916\">not eligible for return</strong>:</p>\r\n<ul>\r\n<li data-start=\"921\" data-end=\"951\">Opened or used food products</li>\r\n<li data-start=\"954\" data-end=\"998\">Items damaged due to misuse or mishandling</li>\r\n<li data-start=\"1001\" data-end=\"1038\">Products without original packaging</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 data-start=\"1045\" data-end=\"1066\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"1048\" data-end=\"1066\">Return Process</strong></span></h2>\r\n<p data-start=\"1068\" data-end=\"1089\">To initiate a return:</p>\r\n<ol>\r\n<li data-start=\"1094\" data-end=\"1144\">Contact our support team via <strong data-start=\"1123\" data-end=\"1144\">WhatsApp or email</strong></li>\r\n<li data-start=\"1148\" data-end=\"1197\">Share your <strong data-start=\"1159\" data-end=\"1175\">order number</strong> and reason for return</li>\r\n<li data-start=\"1201\" data-end=\"1258\">Our team will review and guide you through the next steps</li>\r\n</ol>\r\n<p data-start=\"1260\" data-end=\"1322\">Once approved, the product must be shipped back as instructed.</p>\r\n<p data-start=\"1260\" data-end=\"1322\">&nbsp;</p>\r\n<h2 data-start=\"1329\" data-end=\"1349\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"1332\" data-end=\"1349\">Refund Policy</strong></span></h2>\r\n<ul>\r\n<li data-start=\"1353\" data-end=\"1419\">Refunds are processed <strong data-start=\"1375\" data-end=\"1395\">after inspection</strong> of the returned product</li>\r\n<li data-start=\"1422\" data-end=\"1479\">Approved refunds are issued within <strong data-start=\"1457\" data-end=\"1479\">7&ndash;10 business days</strong></li>\r\n<li data-start=\"1482\" data-end=\"1568\">Refunds are made using the <strong data-start=\"1509\" data-end=\"1536\">original payment method</strong> or store credit (if applicable)</li>\r\n</ul>\r\n<p><span style=\"color: rgb(45, 194, 107);\"><strong>&nbsp;</strong></span></p>\r\n<h2 data-start=\"1575\" data-end=\"1611\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"1578\" data-end=\"1611\">Damaged or Incorrect Products</strong></span></h2>\r\n<p data-start=\"1613\" data-end=\"1659\">If you receive a damaged or incorrect product:</p>\r\n<ul>\r\n<li data-start=\"1663\" data-end=\"1711\">Report the issue within <strong data-start=\"1687\" data-end=\"1711\">48 hours of delivery</strong></li>\r\n<li data-start=\"1714\" data-end=\"1757\">Share clear photos or videos of the product</li>\r\n<li data-start=\"1760\" data-end=\"1825\">We will arrange a <strong data-start=\"1778\" data-end=\"1803\">replacement or refund</strong> at no additional cost</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 data-start=\"1832\" data-end=\"1860\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"1835\" data-end=\"1860\">Return Shipping Costs</strong></span></h2>\r\n<ul>\r\n<li data-start=\"1864\" data-end=\"1962\">Return shipping costs are the responsibility of the customer unless the return is due to our error</li>\r\n<li data-start=\"1965\" data-end=\"2004\">Shipping charges are <strong data-start=\"1986\" data-end=\"2004\">non-refundable</strong></li>\r\n</ul>\r\n<hr data-start=\"2006\" data-end=\"2009\"></div>\r\n</div>', 'return policy', '', 'return, policy', 'en', 2),
(3, 'Refund & Return Policy', 'refund-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h1 data-start=\"290\" data-end=\"309\"><span style=\"color: rgb(45, 194, 107);\"><strong>Refund &amp; Return Policy</strong></span></h1>\r\n<p>Customer satisfaction is our priority. If you&rsquo;re not satisfied with your purchase, we&rsquo;re here to help.</p>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"4481\" data-end=\"4512\"><span style=\"color: rgb(45, 194, 107);\"><strong>Eligibility for Returns</strong></span></h3>\r\n<ul data-start=\"4513\" data-end=\"4627\">\r\n<li data-start=\"4513\" data-end=\"4565\">\r\n<p data-start=\"4515\" data-end=\"4565\">Product must be unused and in original condition</p>\r\n</li>\r\n<li data-start=\"4566\" data-end=\"4627\">\r\n<p data-start=\"4568\" data-end=\"4627\">Return request must be made within <strong data-start=\"4603\" data-end=\"4613\">7 days</strong> of delivery</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"4634\" data-end=\"4656\"><span style=\"color: rgb(45, 194, 107);\"><strong>Refund Process</strong></span></h3>\r\n<p data-start=\"4657\" data-end=\"4728\">Once approved, refunds will be processed within <strong data-start=\"4705\" data-end=\"4727\">7&ndash;10 business days</strong>.</p>\r\n<p data-start=\"4657\" data-end=\"4728\">&nbsp;</p>\r\n<h3 data-start=\"4735\" data-end=\"4763\"><span style=\"color: rgb(45, 194, 107);\"><strong>Non-Returnable Items</strong></span></h3>\r\n<p data-start=\"4764\" data-end=\"4842\">Certain items may not be eligible for return due to hygiene or safety reasons.</p>\r\n</div>\r\n</div>', 'Refund & Return Policy | Swat Organics', 'Read Swat Organics’ refund and return policy for damaged, incorrect, or defective products.', 'refund policy, return policy Pakistan, Swat Organics refunds', 'en', 3),
(4, 'Terms & Conditions', 'terms-conditions', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h3 data-start=\"5000\" data-end=\"5022\"><span style=\"color: rgb(45, 194, 107);\"><strong>Terms &amp; Conditions</strong></span></h3>\r\n</div>\r\n<div class=\"mb-5\">\r\n<p data-start=\"5137\" data-end=\"5198\">By accessing and using Swat Organics, you agree to the following terms and conditions.</p>\r\n<p data-start=\"5137\" data-end=\"5198\">&nbsp;</p>\r\n</div>\r\n<div class=\"mb-5\">\r\n<h3 data-start=\"5112\" data-end=\"5136\"><span style=\"color: rgb(45, 194, 107);\"><strong>Use of Website</strong></span></h3>\r\n</div>\r\n<div class=\"mb-5\">\r\n<ul>\r\n<li data-start=\"5025\" data-end=\"5070\">Content is for personal, non-commercial use</li>\r\n<li data-start=\"5073\" data-end=\"5105\">Unauthorized use is prohibited</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"5112\" data-end=\"5136\"><span style=\"color: rgb(45, 194, 107);\"><strong>Orders &amp; Pricing</strong></span></h3>\r\n<p data-start=\"5137\" data-end=\"5198\">Prices and availability are subject to change without notice.</p>\r\n<p data-start=\"5137\" data-end=\"5198\">&nbsp;</p>\r\n<h3 data-start=\"5205\" data-end=\"5236\"><span style=\"color: rgb(45, 194, 107);\"><strong>Limitation of Liability</strong></span></h3>\r\n<p data-start=\"5237\" data-end=\"5327\">Swat Organics is not liable for indirect or incidental damages resulting from product use.</p>\r\n</div>\r\n</div>', 'Terms & Conditions | Swat Organics', 'Review the terms and conditions governing the use of Swat Organics and its products.', 'terms and conditions, Swat Organics terms, online store policies', 'en', 4),
(5, 'Terms of Use', 'terms-of-use', '<div class=\"static-container\"><div class=\"mb-5\">Terms of Use Page Content</div></div>', 'Terms of use', '', 'term, use', 'en', 5),
(6, 'Customer Service', 'customer-service', '<div class=\"static-container\"><div class=\"mb-5\">Customer Service Page Content</div></div>', 'Customer Service', '', 'customer, service', 'en', 6),
(7, 'What\'s New', 'whats-new', '<div class=\"static-container\"><div class=\"mb-5\">What\'s New page content</div></div>', 'What\'s New', '', 'new', 'en', 7),
(8, 'Payment Policy', 'payment-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h1 data-start=\"290\" data-end=\"309\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"292\" data-end=\"309\">Payment&nbsp;Policy</strong></span></h1>\r\nWe offer secure and convenient payment options for a smooth shopping experience.</div>\r\n<div class=\"mb-5\">&nbsp;</div>\r\n<div class=\"mb-5\">\r\n<h3 data-start=\"4033\" data-end=\"4066\"><span style=\"color: rgb(45, 194, 107);\"><strong>Available Payment Methods</strong></span></h3>\r\n<ul data-start=\"4067\" data-end=\"4134\">\r\n<li data-start=\"4067\" data-end=\"4091\">\r\n<p data-start=\"4069\" data-end=\"4091\">Cash on Delivery (COD)</p>\r\n</li>\r\n<li data-start=\"4092\" data-end=\"4134\">\r\n<p data-start=\"4094\" data-end=\"4134\">Online payment options (where available)</p>\r\n</li>\r\n</ul>\r\n<p><span style=\"color: rgb(45, 194, 107);\"><strong>&nbsp;</strong></span></p>\r\n<h3 data-start=\"4141\" data-end=\"4165\"><span style=\"color: rgb(45, 194, 107);\"><strong>Payment Security</strong></span></h3>\r\n<p data-start=\"4166\" data-end=\"4255\">All transactions are processed through secure payment gateways to ensure customer safety.</p>\r\n</div>\r\n</div>', 'Payment Policy | Cash on Delivery at Swat Organics', 'Learn about Swat Organics payment policy. We offer secure Cash on Delivery (COD) across Pakistan.', 'payment policy, cash on delivery Pakistan, Swat Organics COD', 'en', 8),
(9, 'Shipping Policy', 'shipping-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h1 data-start=\"290\" data-end=\"309\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"292\" data-end=\"309\">Shipping&nbsp;Policy</strong></span></h1>\r\nSwat Organics aims to deliver your orders safely and on time across Pakistan.</div>\r\n<div class=\"mb-5\">&nbsp;</div>\r\n<div class=\"mb-5\">\r\n<h3 data-start=\"3592\" data-end=\"3614\"><span style=\"color: rgb(45, 194, 107);\"><strong>Delivery Areas</strong></span></h3>\r\n<p data-start=\"3615\" data-end=\"3681\">We currently ship to all major cities and regions within Pakistan.</p>\r\n<p data-start=\"3615\" data-end=\"3681\">&nbsp;</p>\r\n<h3 data-start=\"3688\" data-end=\"3709\"><span style=\"color: rgb(45, 194, 107);\"><strong>Delivery Time</strong></span></h3>\r\n<ul data-start=\"3710\" data-end=\"3795\">\r\n<li data-start=\"3710\" data-end=\"3752\">\r\n<p data-start=\"3712\" data-end=\"3752\">Standard delivery: <strong data-start=\"3731\" data-end=\"3752\">3&ndash;5 business days</strong></p>\r\n</li>\r\n<li data-start=\"3753\" data-end=\"3795\">\r\n<p data-start=\"3755\" data-end=\"3795\">Remote areas may require additional time</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"3802\" data-end=\"3826\"><span style=\"color: rgb(45, 194, 107);\"><strong>Shipping Charges</strong></span></h3>\r\n<p data-start=\"3827\" data-end=\"3887\">Shipping charges (if applicable) are calculated at checkout.</p>\r\n</div>\r\n</div>', 'Shipping Policy | Swat Organics Pakistan', 'View Swat Organics shipping policy for delivery timelines, processing details, and nationwide shipping across Pakistan.', 'shipping policy Pakistan, Swat Organics delivery, organic products shipping', 'en', 9),
(10, 'Privacy Policy', 'privacy-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<h1 data-start=\"290\" data-end=\"309\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"292\" data-end=\"309\">Privacy&nbsp;Policy</strong></span></h1>\r\nYour privacy is important to us. This Privacy Policy explains how Swat Organics collects, uses, and protects your personal information.</div>\r\n<div class=\"mb-5\">&nbsp;</div>\r\n<div class=\"mb-5\">\r\n<h3 data-start=\"2977\" data-end=\"3007\"><span style=\"color: rgb(45, 194, 107);\"><strong>Information We Collect</strong></span></h3>\r\n<ul>\r\n<li data-start=\"3010\" data-end=\"3045\">Name, email address, phone number</li>\r\n<li data-start=\"3048\" data-end=\"3078\">Shipping and billing details</li>\r\n<li data-start=\"3081\" data-end=\"3112\">Order and payment information</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"3119\" data-end=\"3154\"><span style=\"color: rgb(45, 194, 107);\"><strong>How We Use Your Information</strong></span></h3>\r\n<ul>\r\n<li data-start=\"3157\" data-end=\"3191\">To process orders and deliveries</li>\r\n<li data-start=\"3194\" data-end=\"3224\">To communicate order updates</li>\r\n<li data-start=\"3227\" data-end=\"3252\">To improve our services</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"3259\" data-end=\"3282\"><span style=\"color: rgb(45, 194, 107);\"><strong>Data Protection</strong></span></h3>\r\n<p data-start=\"3283\" data-end=\"3447\">We implement appropriate security measures to safeguard your personal information and do not share it with third parties without consent, except as required by law.</p>\r\n<p data-start=\"3283\" data-end=\"3447\">&nbsp;</p>\r\n</div>\r\n</div>', 'Privacy Policy | Swat Organics', 'Read Swat Organics’ privacy policy to understand how we protect your personal data and use information responsibly.', 'privacy policy, Swat Organics privacy, data protection Pakistan', 'en', 10),
(11, 'Contact Swat Organics', 'contact-us', '<p>We&rsquo;re here to help. Reach out to Swat Organics for product inquiries, order support, or general questions.</p>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"2473\" data-end=\"2500\"><strong><span style=\"color: rgb(45, 194, 107);\">Contact Information</span></strong></h3>\r\n<ul data-start=\"2501\" data-end=\"2618\">\r\n<li data-start=\"2501\" data-end=\"2540\">\r\n<p data-start=\"2503\" data-end=\"2540\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"2503\" data-end=\"2513\">Email:</strong></span> <a class=\"decorated-link cursor-pointer\" title=\"+92 328 3444141\" href=\"https://wa.me/923283444141\" target=\"_blank\" rel=\"noopener\" data-start=\"2514\" data-end=\"2538\">contact@swatorganics.com</a></p>\r\n</li>\r\n<li data-start=\"2541\" data-end=\"2574\">\r\n<p data-start=\"2543\" data-end=\"2574\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"2543\" data-end=\"2556\">WhatsApp:</strong></span> +92 328 3444141</p>\r\n</li>\r\n<li data-start=\"2575\" data-end=\"2618\">\r\n<p data-start=\"2577\" data-end=\"2618\"><span style=\"color: rgb(45, 194, 107);\"><strong data-start=\"2577\" data-end=\"2602\">Support Availability:</strong> </span>7 days a week</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 data-start=\"2625\" data-end=\"2649\"><span style=\"color: rgb(45, 194, 107);\"><strong>Customer Support</strong></span></h3>\r\n<p data-start=\"2650\" data-end=\"2699\">Our support team is available to assist you with:</p>\r\n<ul data-start=\"2700\" data-end=\"2776\">\r\n<li data-start=\"2700\" data-end=\"2714\">\r\n<p data-start=\"2702\" data-end=\"2714\">Order status</p>\r\n</li>\r\n<li data-start=\"2715\" data-end=\"2736\">\r\n<p data-start=\"2717\" data-end=\"2736\">Product information</p>\r\n</li>\r\n<li data-start=\"2737\" data-end=\"2756\">\r\n<p data-start=\"2739\" data-end=\"2756\">Returns &amp; refunds</p>\r\n</li>\r\n<li data-start=\"2757\" data-end=\"2776\">\r\n<p data-start=\"2759\" data-end=\"2776\">General inquiries</p>\r\n</li>\r\n</ul>', 'Contact Swat Organics | Customer Support & Assistance', 'Contact Swat Organics for order support, delivery information, and product inquiries. We’re here to help across Pakistan.', 'contact Swat Organics, customer support Pakistan, organic products help', 'en', 11),
(12, 'Contact Swat Organics', 'contact-us', '<p>Have questions or need assistance? The Swat Organics team is here to help.</p>\r\n<p>You can contact us for order support, product information, or delivery inquiries.</p>\r\n<p>Email: contact@swatorganics.com &nbsp;<br>WhatsApp: +92-3283444141<br>Location: Swat Organics Office, 2nd Floor, Himalaya Plaza, Chowk, Kanju Town, Kabal, Swat KPK, Pakistan 19201</p>\r\n<p>Our customer support team is available to assist you throughout the week.</p>', 'Contact Swat Organics | Customer Support & Assistance', 'Contact Swat Organics for order support, delivery information, and product inquiries. We’re here to help across Pakistan.', 'contact Swat Organics, customer support Pakistan, organic products help', 'ur_PK', 11);

-- --------------------------------------------------------

--
-- Table structure for table `compare_items`
--

DROP TABLE IF EXISTS `compare_items`;
CREATE TABLE IF NOT EXISTS `compare_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compare_items_product_id_foreign` (`product_id`),
  KEY `compare_items_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

DROP TABLE IF EXISTS `core_config`;
CREATE TABLE IF NOT EXISTS `core_config` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(2, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(3, 'emails.general.notifications.emails.general.notifications.customer_registration_confirmation_mail_to_admin', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(4, 'emails.general.notifications.emails.general.notifications.customer_account_credentials', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(5, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(6, 'emails.general.notifications.emails.general.notifications.new_order_mail_to_admin', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(7, 'emails.general.notifications.emails.general.notifications.new_invoice', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-26 10:24:44'),
(8, 'emails.general.notifications.emails.general.notifications.new_invoice_mail_to_admin', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(9, 'emails.general.notifications.emails.general.notifications.new_refund', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-26 10:24:44'),
(10, 'emails.general.notifications.emails.general.notifications.new_refund_mail_to_admin', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(11, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(12, 'emails.general.notifications.emails.general.notifications.new_shipment_mail_to_admin', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-26 10:24:45'),
(13, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '0', NULL, NULL, '2025-12-13 21:38:35', '2025-12-26 10:24:45'),
(14, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(15, 'emails.general.notifications.emails.general.notifications.cancel_order_mail_to_admin', '1', NULL, NULL, '2025-12-13 21:38:35', '2025-12-26 10:24:45'),
(16, 'customer.settings.social_login.enable_facebook', '0', 'default', NULL, '2025-12-13 21:38:35', '2025-12-26 11:42:50'),
(17, 'customer.settings.social_login.enable_twitter', '0', 'default', NULL, '2025-12-13 21:38:35', '2025-12-26 11:42:50'),
(18, 'customer.settings.social_login.enable_google', '0', 'default', NULL, '2025-12-13 21:38:35', '2025-12-26 11:42:50'),
(19, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(20, 'customer.settings.social_login.enable_github', '0', 'default', NULL, '2025-12-13 21:38:35', '2025-12-26 11:42:50'),
(21, 'sales.carriers.free.description', 'Free Shipping', 'default', 'en', '2025-12-13 21:41:50', '2025-12-13 21:41:50'),
(22, 'sales.carriers.free.active', '1', 'default', NULL, '2025-12-13 21:41:50', '2025-12-13 22:11:18'),
(23, 'sales.carriers.flatrate.title', 'Standard Delivery', 'default', 'en', '2025-12-13 21:41:50', '2025-12-13 22:00:27'),
(24, 'sales.carriers.flatrate.description', 'Standard Delivery', 'default', 'en', '2025-12-13 21:41:50', '2025-12-13 22:00:27'),
(25, 'sales.carriers.flatrate.default_rate', '200', 'default', NULL, '2025-12-13 21:41:50', '2025-12-13 22:00:27'),
(26, 'sales.carriers.flatrate.type', 'per_order', 'default', NULL, '2025-12-13 21:41:50', '2025-12-13 21:41:50'),
(27, 'sales.carriers.flatrate.active', '1', 'default', NULL, '2025-12-13 21:41:50', '2025-12-13 21:41:50'),
(28, 'sales.shipping.origin.country', 'PK', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(29, 'sales.shipping.origin.state', 'Swat', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(30, 'sales.shipping.origin.city', 'Mingora', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(31, 'sales.shipping.origin.address', 'SwatOrganics Office, 2nd Floor, Himalaya Plaza, Kanju Chowk, Kabal, Swat KPK, Pakistan', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(32, 'sales.shipping.origin.zipcode', '19201', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(33, 'sales.shipping.origin.store_name', 'SwatOrganics', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(34, 'sales.shipping.origin.vat_number', '', 'default', NULL, '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(35, 'sales.shipping.origin.contact', '03283444141', 'default', NULL, '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(36, 'sales.shipping.origin.bank_details', '', 'default', 'en', '2025-12-13 21:59:46', '2025-12-13 21:59:46'),
(37, 'sales.carriers.free.title', 'Free Shipping', 'default', 'en', '2025-12-13 22:03:45', '2025-12-13 22:03:45'),
(38, 'sales.carriers.free.minimum_order_amount', '3000', 'default', NULL, '2025-12-13 22:03:45', '2025-12-14 13:06:34'),
(39, 'sales.payment_methods.cashondelivery.title', 'Cash On Delivery', 'default', 'en', '2025-12-14 13:27:27', '2025-12-14 13:27:27'),
(40, 'sales.payment_methods.cashondelivery.description', 'Pay with cash when your order is delivered to your doorstep.', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(41, 'sales.payment_methods.cashondelivery.instructions', 'Please keep the exact amount ready. Our rider will contact you before delivery.', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(42, 'sales.payment_methods.cashondelivery.generate_invoice', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(43, 'sales.payment_methods.cashondelivery.active', '1', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(44, 'sales.payment_methods.cashondelivery.sort', '1', NULL, NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(45, 'sales.payment_methods.cashondelivery.image', 'configuration/64ZWWEAq0Zf7VSmYIIzNLKyVKwUDjfKosOJIGKpf.png', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 14:09:31'),
(46, 'sales.payment_methods.moneytransfer.description', 'Money Transfer', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(47, 'sales.payment_methods.moneytransfer.generate_invoice', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(48, 'sales.payment_methods.moneytransfer.mailing_address', '', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(49, 'sales.payment_methods.moneytransfer.active', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(50, 'sales.payment_methods.moneytransfer.sort', '2', NULL, NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(51, 'sales.payment_methods.paypal_standard.description', 'PayPal Standard', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(52, 'sales.payment_methods.paypal_standard.active', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(53, 'sales.payment_methods.paypal_standard.sandbox', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(54, 'sales.payment_methods.paypal_standard.sort', '3', NULL, NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(55, 'sales.payment_methods.paypal_smart_button.description', 'PayPal', 'default', 'en', '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(56, 'sales.payment_methods.paypal_smart_button.active', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(57, 'sales.payment_methods.paypal_smart_button.sandbox', '0', 'default', NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(58, 'sales.payment_methods.paypal_smart_button.sort', '4', NULL, NULL, '2025-12-14 13:27:28', '2025-12-14 13:27:28'),
(59, 'sales.checkout.shopping_cart.cart_page', '1', NULL, NULL, '2025-12-18 09:02:38', '2025-12-18 09:02:38'),
(60, 'sales.checkout.shopping_cart.cross_sell', '0', NULL, NULL, '2025-12-18 09:02:38', '2025-12-26 11:51:27'),
(61, 'sales.checkout.shopping_cart.estimate_shipping', '1', NULL, NULL, '2025-12-18 09:02:38', '2025-12-18 09:02:38'),
(62, 'sales.checkout.my_cart.summary', 'display_number_of_items_in_cart', NULL, NULL, '2025-12-18 09:02:38', '2025-12-18 09:02:38'),
(63, 'sales.checkout.mini_cart.display_mini_cart', '0', NULL, NULL, '2025-12-18 09:02:38', '2025-12-26 11:51:56'),
(64, 'sales.checkout.mini_cart.offer_info', 'Get Up To 30% OFF on your 1st order', NULL, NULL, '2025-12-18 09:02:38', '2025-12-18 09:02:38'),
(65, 'sales.checkout.form_fields.default_country', 'PK', NULL, NULL, '2025-12-18 09:02:38', '2025-12-19 13:46:58'),
(66, 'sales.checkout.form_fields.use_same_address', '1', NULL, NULL, '2025-12-18 09:02:38', '2025-12-19 14:07:49'),
(67, 'sales.checkout.form_fields.company_name_show', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:09:43'),
(68, 'sales.checkout.form_fields.company_name_required', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(69, 'sales.checkout.form_fields.first_name_show', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(70, 'sales.checkout.form_fields.first_name_required', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:09:43'),
(71, 'sales.checkout.form_fields.last_name_show', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-21 18:32:47'),
(72, 'sales.checkout.form_fields.last_name_required', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(73, 'sales.checkout.form_fields.email_show', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(74, 'sales.checkout.form_fields.email_required', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(75, 'sales.checkout.form_fields.vat_id_show', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:09:43'),
(76, 'sales.checkout.form_fields.vat_id_required', '0', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(77, 'sales.checkout.form_fields.address_show', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(78, 'sales.checkout.form_fields.address_required', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:09:43'),
(79, 'sales.checkout.form_fields.country_show', '1', NULL, NULL, '2025-12-18 09:02:39', '2025-12-18 19:10:53'),
(80, 'sales.checkout.form_fields.country_required', '0', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:10:53'),
(81, 'sales.checkout.form_fields.state_show', '0', NULL, NULL, '2025-12-18 09:02:40', '2025-12-21 18:30:26'),
(82, 'sales.checkout.form_fields.state_required', '0', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:10:53'),
(83, 'sales.checkout.form_fields.city_show', '1', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:10:53'),
(84, 'sales.checkout.form_fields.city_required', '1', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:09:43'),
(85, 'sales.checkout.form_fields.postcode_show', '0', NULL, NULL, '2025-12-18 09:02:40', '2025-12-21 18:23:43'),
(86, 'sales.checkout.form_fields.postcode_required', '0', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:10:53'),
(87, 'sales.checkout.form_fields.phone_show', '1', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:10:53'),
(88, 'sales.checkout.form_fields.phone_required', '1', NULL, NULL, '2025-12-18 09:02:40', '2025-12-18 19:09:43'),
(89, 'sales.checkout.single_methods.auto_select', '1', NULL, NULL, '2025-12-21 19:00:50', '2025-12-21 19:00:50'),
(90, 'emails.configure.email_settings.sender_name', 'Swat Organics', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(91, 'emails.configure.email_settings.shop_email_from', 'contact@swatorganics.com', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(92, 'emails.configure.email_settings.admin_name', 'Swat Organics Admin', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(93, 'emails.configure.email_settings.admin_email', 'contact@swatorganics.com', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(94, 'emails.configure.email_settings.contact_name', 'Swat Organics', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(95, 'emails.configure.email_settings.contact_email', 'contact@swatorganics.com', 'default', NULL, '2025-12-26 10:21:41', '2025-12-26 10:21:41'),
(96, 'general.general.locale_options.weight_unit', 'kgs', 'default', NULL, '2025-12-26 10:42:49', '2025-12-26 10:42:49'),
(97, 'general.general.breadcrumbs.shop', '1', NULL, NULL, '2025-12-26 10:42:49', '2025-12-26 10:42:49'),
(98, 'general.general.visitor_options.enabled', '1', NULL, NULL, '2025-12-26 10:42:49', '2025-12-26 10:42:49'),
(99, 'general.content.header_offer.title', '100% Pure Organic Products from Swat Valley.', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(100, 'general.content.header_offer.redirection_title', 'SHOP NOW', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(101, 'general.content.header_offer.redirection_link', '', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(102, 'general.content.speculation_rules.enabled', '1', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(103, 'general.content.speculation_rules.prerender_enabled', '0', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(104, 'general.content.speculation_rules.prefetch_enabled', '1', NULL, NULL, '2025-12-26 10:47:42', '2025-12-26 10:47:42'),
(105, 'general.content.speculation_rules.prefetch_ignore_urls', 'account|checkout|onepage|cart|login|register', NULL, NULL, '2025-12-26 10:47:43', '2025-12-26 10:47:43'),
(106, 'general.content.speculation_rules.prefetch_ignore_url_params', 'token|session|order|payment|invoice', NULL, NULL, '2025-12-26 10:47:43', '2025-12-26 10:47:43'),
(107, 'general.content.speculation_rules.prefetch_eagerness', 'moderate', NULL, NULL, '2025-12-26 10:47:43', '2025-12-26 10:47:43'),
(108, 'general.content.custom_scripts.custom_css', '/* ===============================\r\n   Footer – Global Fixes\r\n================================ */\r\n\r\n/* Center bottom copyright text */\r\n footer div.flex.justify-between.bg-[#F1EADF] {\r\n    justify-content: center !important;\r\n}\r\n/* Brand color */\r\n :root {\r\n    --brand-green: #01bc53;\r\n}\r\n/* ===============================\r\n   Footer Layout (Desktop)\r\n================================ */\r\n .footer-brand {\r\n    flex: 0 0 32%;\r\n    max-width: 32%;\r\n    line-height: 1.7;\r\n}\r\n.footer-links {\r\n    flex: 0 0 38%;\r\n    max-width: 38%;\r\n}\r\n/* Newsletter block */\r\n footer .grid.gap-2.5 {\r\n    flex: 0 0 26%;\r\n    max-width: 26%;\r\n}\r\n/* Divider for desktop */\r\n @media (min-width: 1060px) {\r\n    .footer-brand {\r\n        padding-right: 28px;\r\n        border-right: 1px solid #e5e7eb;\r\n    }\r\n}\r\n/* ===============================\r\n   Footer Brand Content\r\n================================ */\r\n .footer-title {\r\n    font-size: 1.1rem;\r\n    font-weight: 700;\r\n    color: var(--brand-green);\r\n    margin-bottom: 8px;\r\n}\r\n.footer-desc {\r\n    font-size: 0.9rem;\r\n    color: #374151;\r\n    margin-bottom: 14px;\r\n}\r\n/* Highlight important words */\r\n .footer-brand strong {\r\n    color: var(--brand-green);\r\n    font-weight: 600;\r\n}\r\n/* ===============================\r\n   Contact Info\r\n================================ */\r\n .footer-contact {\r\n    font-size: 0.9rem;\r\n    margin-bottom: 6px;\r\n}\r\n.footer-contact .label {\r\n    font-weight: 600;\r\n    color: var(--brand-green);\r\n    margin-right: 4px;\r\n}\r\n.footer-contact a {\r\n    color: #1f2937;\r\n    text-decoration: none;\r\n}\r\n.footer-contact a:hover {\r\n    color: var(--brand-green);\r\n    text-decoration: underline;\r\n}\r\n/* Support line */\r\n .footer-support {\r\n    font-size: 0.85rem;\r\n    margin-top: 10px;\r\n    color: #374151;\r\n}\r\n/* ===============================\r\n   Footer Links Hover Styling\r\n================================ */\r\n\r\n/* Desktop footer links */\r\n footer ul li a {\r\n    color: #1f2937;\r\n    text-decoration: none;\r\n    transition: color 0.2s ease;\r\n}\r\nfooter ul li a:hover {\r\n    color: var(--brand-green);\r\n    text-decoration: underline;\r\n}\r\n/* Mobile accordion footer links */\r\n footer .accordion-content a:hover {\r\n    color: var(--brand-green);\r\n}\r\n/* ===============================\r\n   Mobile Footer Fix (IMPORTANT)\r\n================================ */\r\n @media (max-width: 1060px) {\r\n    /* Fix parent alignment */\r\n    footer > div.flex {\r\n        align-items: center;\r\n        justify-content: center;\r\n        text-align: center;\r\n    }\r\n    /* Stack sections properly */\r\n    .footer-brand, .footer-links, footer .grid.gap-2.5 {\r\n        flex: 1 1 100%;\r\n        max-width: 100%;\r\n    }\r\n    /* Ensure correct order */\r\n    .footer-brand {\r\n        order: 1;\r\n        margin: 0 auto;\r\n    }\r\n    footer .grid.gap-2.5 {\r\n        order: 2;\r\n        align-items: center;\r\n        text-align: center;\r\n    }\r\n    /* Center brand text */\r\n    .footer-brand p, .footer-contact, .footer-support {\r\n        text-align: center;\r\n    }\r\n}\r\n/* ===============================\r\n   HARD MOBILE FOOTER FIX\r\n================================ */\r\n @media (max-width: 1060px) {\r\n    /* Override Bagisto footer container */\r\n    footer > div.flex {\r\n        flex-direction: column !important;\r\n        align-items: center !important;\r\n        justify-content: center !important;\r\n        gap: 24px !important;\r\n        padding-left: 20px !important;\r\n        padding-right: 20px !important;\r\n        text-align: center;\r\n    }\r\n    /* Brand block */\r\n    .footer-brand {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        text-align: center !important;\r\n        padding-right: 0 !important;\r\n        border-right: none !important;\r\n    }\r\n    /* Links section */\r\n    .footer-links {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        text-align: center;\r\n    }\r\n    /* Newsletter */\r\n    footer .grid.gap-2.5 {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        align-items: center !important;\r\n        text-align: center;\r\n    }\r\n    /* Center contact rows */\r\n    .footer-contact {\r\n        justify-content: center;\r\n    }\r\n}\r\n\r\n/* WhatsApp Floating Button (Simple & Safe) */\r\n.whatsapp-float {\r\n    position: fixed;\r\n    bottom: 22px;\r\n    right: 22px;\r\n\r\n    width: 56px;\r\n    height: 56px;\r\n\r\n    background-color: #25D366;\r\n    border-radius: 50%;\r\n\r\n    display: flex;\r\n    align-items: center;\r\n    justify-content: center;\r\n\r\n    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);\r\n    z-index: 9999;\r\n\r\n    transition: transform 0.2s ease, box-shadow 0.2s ease;\r\n}\r\n\r\n.whatsapp-float:hover {\r\n    transform: scale(1.08);\r\n    box-shadow: 0 12px 26px rgba(0, 0, 0, 0.35);\r\n}\r\n\r\n/* Mobile spacing */\r\n@media (max-width: 768px) {\r\n    .whatsapp-float {\r\n        bottom: 16px;\r\n        right: 16px;\r\n    }\r\n}', 'default', NULL, '2025-12-26 10:47:43', '2026-03-15 18:40:12'),
(109, 'general.content.custom_scripts.custom_javascript', '', 'default', NULL, '2025-12-26 10:47:43', '2025-12-26 10:47:43'),
(110, 'general.design.categories.category_view', 'default', NULL, NULL, '2025-12-26 10:48:31', '2025-12-26 10:48:58'),
(111, 'general.design.admin_logo.logo_image', 'configuration/gqlnHcjhy3l8gvGLWBF3E45WUZrWoHjRNAo5tG58.png', NULL, NULL, '2025-12-26 10:49:37', '2025-12-26 10:49:37'),
(112, 'general.design.admin_logo.favicon', 'configuration/fg6SG3fBm1LQXTRKwv4nBV6rZT8dmjBbQAWpi9q6.png', NULL, NULL, '2025-12-26 10:49:37', '2025-12-26 10:49:37'),
(113, 'general.sitemap.settings.enabled', '1', 'default', NULL, '2025-12-26 10:52:02', '2025-12-26 10:52:02'),
(114, 'general.sitemap.file_limits.max_url_per_file', '1000', 'default', NULL, '2025-12-26 10:52:02', '2025-12-26 10:52:02'),
(115, 'catalog.products.settings.compare_option', '0', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(116, 'catalog.products.settings.image_search', '0', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(117, 'catalog.products.search.engine', 'database', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(118, 'catalog.products.search.admin_mode', 'database', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(119, 'catalog.products.search.storefront_mode', 'database', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(120, 'catalog.products.search.min_query_length', '2', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(121, 'catalog.products.search.max_query_length', '50', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(122, 'catalog.products.product_view_page.no_of_related_products', '4', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(123, 'catalog.products.product_view_page.no_of_up_sells_products', '3', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(124, 'catalog.products.cart_view_page.no_of_cross_sells_products', '2', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(125, 'catalog.products.storefront.mode', 'grid', 'default', NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(126, 'catalog.products.storefront.products_per_page', '12', 'default', NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(127, 'catalog.products.storefront.sort_by', 'created_at-desc', 'default', NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(128, 'catalog.products.storefront.buy_now_button_display', '1', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(129, 'catalog.products.cache_small_image.width', '300', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(130, 'catalog.products.cache_small_image.height', '300', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(131, 'catalog.products.cache_medium_image.width', '600', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(132, 'catalog.products.cache_medium_image.height', '600', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(133, 'catalog.products.cache_large_image.width', '1200', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(134, 'catalog.products.cache_large_image.height', '1200', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(135, 'catalog.products.review.guest_review', '0', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(136, 'catalog.products.review.customer_review', '1', NULL, NULL, '2025-12-26 11:34:15', '2025-12-26 11:34:15'),
(137, 'catalog.products.review.censoring_reviewer_name', '1', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(138, 'catalog.products.review.summary', 'review_counts', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(139, 'catalog.products.attribute.image_attribute_upload_size', '2048', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(140, 'catalog.products.attribute.file_attribute_upload_size', '2048', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(141, 'catalog.products.social_share.enabled', '1', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(142, 'catalog.products.social_share.facebook', '1', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(143, 'catalog.products.social_share.twitter', '0', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(144, 'catalog.products.social_share.pinterest', '0', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(145, 'catalog.products.social_share.whatsapp', '1', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(146, 'catalog.products.social_share.linkedin', '0', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(147, 'catalog.products.social_share.email', '0', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(148, 'catalog.products.social_share.share_message', 'Check out this 100% pure organic product from Swat Valley 🌿', NULL, NULL, '2025-12-26 11:34:16', '2025-12-26 11:34:16'),
(149, 'catalog.products.cache_small_image.url', 'configuration/TkDXWIah6zLvjDMO0vbzlCW8ge2BUlaPv2CYfEYk.png', NULL, NULL, '2025-12-26 11:37:19', '2025-12-26 11:37:19'),
(150, 'catalog.products.cache_medium_image.url', 'configuration/6mXj7KxKkYY78X76CrjoFOnruPVLMUn9vziKwy4I.png', NULL, NULL, '2025-12-26 11:37:19', '2025-12-26 11:37:19'),
(151, 'catalog.products.cache_large_image.url', 'configuration/h8QjrpvTXGVN0GTRoZVFBLKVgZ1wE5gD3qxhsw8G.png', NULL, NULL, '2025-12-26 11:37:19', '2025-12-26 11:37:19'),
(152, 'catalog.rich_snippets.products.enable', '1', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(153, 'catalog.rich_snippets.products.show_sku', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(154, 'catalog.rich_snippets.products.show_weight', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(155, 'catalog.rich_snippets.products.show_categories', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(156, 'catalog.rich_snippets.products.show_images', '1', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(157, 'catalog.rich_snippets.products.show_reviews', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:39:09'),
(158, 'catalog.rich_snippets.products.show_ratings', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:39:09'),
(159, 'catalog.rich_snippets.products.show_offers', '1', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(160, 'catalog.rich_snippets.categories.enable', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(161, 'catalog.rich_snippets.categories.show_search_input_field', '0', NULL, NULL, '2025-12-26 11:38:39', '2025-12-26 11:38:39'),
(162, 'catalog.inventory.stock_options.back_orders', '0', NULL, NULL, '2025-12-26 11:39:55', '2025-12-26 11:39:55'),
(163, 'catalog.inventory.stock_options.out_of_stock_threshold', '2', NULL, NULL, '2025-12-26 11:39:56', '2025-12-26 11:39:56'),
(164, 'customer.address.requirements.country', '1', 'default', NULL, '2025-12-26 11:40:33', '2025-12-26 11:40:33'),
(165, 'customer.address.requirements.state', '1', 'default', NULL, '2025-12-26 11:40:33', '2025-12-26 11:40:33'),
(166, 'customer.address.requirements.postcode', '1', 'default', NULL, '2025-12-26 11:40:33', '2025-12-26 11:40:33'),
(167, 'customer.address.information.street_lines', '2', 'default', NULL, '2025-12-26 11:40:33', '2025-12-26 11:40:33'),
(168, 'customer.settings.wishlist.wishlist_option', '0', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(169, 'customer.settings.login_options.redirected_to_page', 'home', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(170, 'customer.settings.create_new_account_options.default_group', 'general', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(171, 'customer.settings.create_new_account_options.news_letter', '0', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(172, 'customer.settings.newsletter.subscription', '0', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(173, 'customer.settings.email.verification', '0', NULL, NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(174, 'customer.settings.social_login.enable_linkedin-openid', '0', 'default', NULL, '2025-12-26 11:42:50', '2025-12-26 11:42:50'),
(175, 'sales.order_settings.order_number.order_number_prefix', 'SO-', 'default', NULL, '2025-12-26 11:45:38', '2025-12-26 11:45:38'),
(176, 'sales.order_settings.order_number.order_number_length', '6', 'default', NULL, '2025-12-26 11:45:38', '2025-12-26 11:45:38'),
(177, 'sales.order_settings.order_number.order_number_suffix', '', 'default', NULL, '2025-12-26 11:45:38', '2025-12-26 11:45:38'),
(178, 'sales.order_settings.order_number.order_number_generator', '', 'default', NULL, '2025-12-26 11:45:39', '2025-12-26 11:45:39'),
(179, 'sales.order_settings.minimum_order.enable', '0', NULL, NULL, '2025-12-26 11:45:39', '2025-12-26 11:45:39'),
(180, 'sales.order_settings.reorder.admin', '1', NULL, NULL, '2025-12-26 11:45:39', '2025-12-26 11:45:39'),
(181, 'sales.order_settings.reorder.shop', '0', NULL, NULL, '2025-12-26 11:45:39', '2025-12-26 11:45:39'),
(182, 'sales.invoice_settings.invoice_number.invoice_number_prefix', 'INV-', 'default', 'en', '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(183, 'sales.invoice_settings.invoice_number.invoice_number_length', '6', 'default', 'en', '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(184, 'sales.invoice_settings.invoice_number.invoice_number_suffix', '', 'default', 'en', '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(185, 'sales.invoice_settings.invoice_number.invoice_number_generator_class', '', 'default', 'en', '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(186, 'sales.invoice_settings.payment_terms.due_duration', '0', 'default', NULL, '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(187, 'sales.invoice_settings.pdf_print_outs.invoice_id', '1', NULL, NULL, '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(188, 'sales.invoice_settings.pdf_print_outs.order_id', '1', NULL, NULL, '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(189, 'sales.invoice_settings.pdf_print_outs.footer_text', 'Thank you for choosing Swat Organics.\r\nAll products are 100% pure and sourced from Swat Valley.\r\nFor queries: contact@swatorganics.com | WhatsApp: +92-3283444141', 'default', 'en', '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(190, 'sales.invoice_settings.pdf_print_outs.logo', 'configuration/bRDuNKkr8Sm2EG4fEewe6gxquj7rvGvKB3yKuTMz.png', 'default', NULL, '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(191, 'sales.invoice_settings.invoice_reminders.reminders_limit', '0', 'default', NULL, '2025-12-26 11:49:10', '2025-12-26 11:49:10'),
(192, 'sales.taxes.categories.shipping', '0', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(193, 'sales.taxes.categories.product', '0', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(194, 'sales.taxes.calculation.based_on', 'shipping_address', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(195, 'sales.taxes.calculation.product_prices', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(196, 'sales.taxes.calculation.shipping_prices', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(197, 'sales.taxes.default_destination_calculation.country', 'PK', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(198, 'sales.taxes.default_destination_calculation.state', '', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(199, 'sales.taxes.default_destination_calculation.post_code', '', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(200, 'sales.taxes.shopping_cart.display_prices', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(201, 'sales.taxes.shopping_cart.display_subtotal', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(202, 'sales.taxes.shopping_cart.display_shipping_amount', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(203, 'sales.taxes.sales.display_prices', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(204, 'sales.taxes.sales.display_subtotal', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12'),
(205, 'sales.taxes.sales.display_shipping_amount', 'excluding_tax', NULL, NULL, '2025-12-26 11:50:12', '2025-12-26 11:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

DROP TABLE IF EXISTS `country_states`;
CREATE TABLE IF NOT EXISTS `country_states` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int UNSIGNED DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_states_country_id_foreign` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=587 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

DROP TABLE IF EXISTS `country_state_translations`;
CREATE TABLE IF NOT EXISTS `country_state_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_state_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `country_state_translations_country_state_id_foreign` (`country_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

DROP TABLE IF EXISTS `country_translations`;
CREATE TABLE IF NOT EXISTS `country_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `country_translations_country_id_foreign` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal` int UNSIGNED NOT NULL DEFAULT '2',
  `group_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `decimal_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.',
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(2, 'PKR', 'Pakistani Rupee', 'PKR', 0, ',', '.', 'left_with_space', '2025-12-14 13:09:41', '2025-12-14 13:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

DROP TABLE IF EXISTS `currency_exchange_rates`;
CREATE TABLE IF NOT EXISTS `currency_exchange_rates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_suspended` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_phone_unique` (`phone`),
  UNIQUE KEY `customers_api_token_unique` (`api_token`),
  KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  KEY `customers_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adil', 'khan', NULL, NULL, 'adilkhan11228@gmail.com', NULL, NULL, 1, '$2y$12$vNMn/oEtzGVkW4t7TVxxwude2aHOxMrODAN/gvUpswlVTQ5n.2JDe', 'xZvdqpjWh0fptPjcgLTxKJ7Gi4SSo2WhbFprfY58aKWN0D8HkjP8ciPWmiWj2La0T19ojv23ANpNee7z', 2, 1, 0, 1, 0, 'd1a1227f3aaab2ec88daf1e4c4e69f7d', NULL, '2025-12-14 14:10:41', '2025-12-14 14:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_groups_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Guest', 0, NULL, NULL),
(2, 'general', 'General', 0, NULL, NULL),
(3, 'wholesale', 'Wholesale', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_notes`
--

DROP TABLE IF EXISTS `customer_notes`;
CREATE TABLE IF NOT EXISTS `customer_notes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_notes_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

DROP TABLE IF EXISTS `customer_password_resets`;
CREATE TABLE IF NOT EXISTS `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `customer_password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_accounts`
--

DROP TABLE IF EXISTS `customer_social_accounts`;
CREATE TABLE IF NOT EXISTS `customer_social_accounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int UNSIGNED NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  KEY `customer_social_accounts_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datagrid_saved_filters`
--

DROP TABLE IF EXISTS `datagrid_saved_filters`;
CREATE TABLE IF NOT EXISTS `datagrid_saved_filters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_bought` int NOT NULL DEFAULT '0',
  `download_used` int NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `order_item_id` int UNSIGNED NOT NULL,
  `download_canceled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdpr_data_request`
--

DROP TABLE IF EXISTS `gdpr_data_request`;
CREATE TABLE IF NOT EXISTS `gdpr_data_request` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gdpr_data_request_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
CREATE TABLE IF NOT EXISTS `imports` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_strategy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_errors` int NOT NULL DEFAULT '0',
  `processed_rows_count` int NOT NULL DEFAULT '0',
  `invalid_rows_count` int NOT NULL DEFAULT '0',
  `errors_count` int NOT NULL DEFAULT '0',
  `errors` json DEFAULT NULL,
  `field_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_directory_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` json DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_batches`
--

DROP TABLE IF EXISTS `import_batches`;
CREATE TABLE IF NOT EXISTS `import_batches` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `data` json NOT NULL,
  `summary` json DEFAULT NULL,
  `import_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `import_batches_import_id_foreign` (`import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

DROP TABLE IF EXISTS `inventory_sources`;
CREATE TABLE IF NOT EXISTS `inventory_sources` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_sources_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Default', NULL, 'Default', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `order_id` int UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminders` int NOT NULL DEFAULT '0',
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_items_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
CREATE TABLE IF NOT EXISTS `locales` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` enum('ltr','rtl') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locales_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'locales/bXE7FlkQ4QCX9RWYsJTGKoeeRfefWuKe7U5gZ17U.png', NULL, NULL),
(2, 'ur_PK', 'Urdu (Pakistan)', 'rtl', NULL, '2025-12-14 13:10:56', '2025-12-14 13:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

DROP TABLE IF EXISTS `marketing_campaigns`;
CREATE TABLE IF NOT EXISTS `marketing_campaigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spooling` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `marketing_template_id` int UNSIGNED DEFAULT NULL,
  `marketing_event_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_events`
--

DROP TABLE IF EXISTS `marketing_events`;
CREATE TABLE IF NOT EXISTS `marketing_events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketing_events`
--

INSERT INTO `marketing_events` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', 'Birthday', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_templates`
--

DROP TABLE IF EXISTS `marketing_templates`;
CREATE TABLE IF NOT EXISTS `marketing_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_02_180307_create_booking_products_table', 1),
(65, '2019_07_05_154415_create_booking_product_default_slots_table', 1),
(66, '2019_07_05_154429_create_booking_product_appointment_slots_table', 1),
(67, '2019_07_05_154440_create_booking_product_event_tickets_table', 1),
(68, '2019_07_05_154451_create_booking_product_rental_slots_table', 1),
(69, '2019_07_05_154502_create_booking_product_table_slots_table', 1),
(70, '2019_07_30_153530_create_cms_pages_table', 1),
(71, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(72, '2019_08_02_105320_create_product_grouped_products_table', 1),
(73, '2019_08_20_170510_create_product_bundle_options_table', 1),
(74, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(75, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(76, '2019_09_11_184511_create_refunds_table', 1),
(77, '2019_09_11_184519_create_refund_items_table', 1),
(78, '2019_12_03_184613_create_catalog_rules_table', 1),
(79, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(80, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(81, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(82, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(83, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(84, '2020_01_14_191854_create_cms_page_translations_table', 1),
(85, '2020_01_15_130209_create_cms_page_channels_table', 1),
(86, '2020_02_18_165639_create_bookings_table', 1),
(87, '2020_02_21_121201_create_booking_product_event_ticket_translations_table', 1),
(88, '2020_04_16_185147_add_table_addresses', 1),
(89, '2020_05_06_171638_create_order_comments_table', 1),
(90, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(91, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(92, '2020_08_07_174804_create_gdpr_data_request_table', 1),
(93, '2020_11_19_112228_create_product_videos_table', 1),
(94, '2020_11_26_141455_create_marketing_templates_table', 1),
(95, '2020_11_26_150534_create_marketing_events_table', 1),
(96, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(97, '2020_12_21_000200_create_channel_translations_table', 1),
(98, '2020_12_27_121950_create_jobs_table', 1),
(99, '2021_03_11_212124_create_order_transactions_table', 1),
(100, '2021_04_07_132010_create_product_review_images_table', 1),
(101, '2021_12_15_104544_notifications', 1),
(102, '2022_03_15_160510_create_failed_jobs_table', 1),
(103, '2022_04_01_094622_create_sitemaps_table', 1),
(104, '2022_10_03_144232_create_product_price_indices_table', 1),
(105, '2022_10_04_144444_create_job_batches_table', 1),
(106, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(107, '2023_05_26_213105_create_wishlist_items_table', 1),
(108, '2023_05_26_213120_create_compare_items_table', 1),
(109, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(110, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(111, '2023_07_10_184256_create_theme_customizations_table', 1),
(112, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(113, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(114, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(115, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(116, '2023_07_25_171058_create_customer_notes_table', 1),
(117, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(118, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(119, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(120, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(121, '2023_09_26_155709_add_columns_to_currencies', 1),
(122, '2023_10_05_163612_create_visits_table', 1),
(123, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(124, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(125, '2023_11_08_140116_create_search_terms_table', 1),
(126, '2023_11_09_162805_create_url_rewrites_table', 1),
(127, '2023_11_17_150401_create_search_synonyms_table', 1),
(128, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(129, '2024_01_11_154640_create_imports_table', 1),
(130, '2024_01_11_154741_create_import_batches_table', 1),
(131, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(132, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(133, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(134, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(135, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(136, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(137, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(138, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(139, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(140, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(141, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(142, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(143, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(144, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(145, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(146, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(147, '2024_05_10_152848_create_saved_filters_table', 1),
(148, '2024_06_03_174128_create_product_channels_table', 1),
(149, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(150, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(151, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1),
(152, '2024_07_17_172645_add_additional_column_to_sitemaps_table', 1),
(153, '2024_10_11_135010_create_product_customizable_options_table', 1),
(154, '2024_10_11_135110_create_product_customizable_option_translations_table', 1),
(155, '2024_10_11_135228_create_product_customizable_option_prices_table', 1),
(156, '2025_05_07_121250_update_total_weight_columns_in_shipments_and_weight_shipment_items_tables', 1),
(157, '2025_09_05_000100_add_indexes_to_channels_tables', 1),
(158, '2025_09_05_000200_add_indexes_to_product_relation_tables', 1),
(159, '2025_09_05_000300_add_indexes_to_product_media_and_attributes', 1),
(160, '2025_09_05_000400_add_indexes_to_attributes_and_product_types', 1),
(161, '2025_09_05_000500_add_indexes_to_product_grouped_products_and_product_bundle_option_products', 1),
(162, '2025_09_05_000500_add_indexes_to_url_rewrites_and_visits', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 1, 1, '2025-12-13 22:46:46', '2025-12-14 12:29:32'),
(2, 'order', 1, 2, '2025-12-13 22:47:26', '2025-12-14 12:29:32'),
(3, 'order', 1, 3, '2025-12-14 14:18:17', '2025-12-21 18:35:49'),
(4, 'order', 1, 4, '2025-12-14 14:18:26', '2025-12-21 18:35:49'),
(5, 'order', 1, 5, '2025-12-14 14:18:30', '2025-12-21 18:35:49'),
(6, 'order', 1, 6, '2025-12-21 18:36:03', '2025-12-21 18:37:19'),
(7, 'order', 1, 7, '2025-12-21 19:03:24', '2025-12-21 19:04:22'),
(8, 'order', 1, 8, '2025-12-21 19:12:21', '2025-12-21 19:22:21'),
(9, 'order', 1, 9, '2025-12-21 19:31:27', '2025-12-21 19:37:25'),
(10, 'order', 1, 10, '2025-12-25 14:48:39', '2025-12-25 14:49:20'),
(11, 'order', 1, 11, '2025-12-26 10:28:02', '2025-12-26 13:19:13'),
(12, 'order', 1, 12, '2025-12-27 14:55:55', '2026-01-24 19:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `total_item_count` int DEFAULT NULL,
  `total_qty_ordered` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `shipping_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  KEY `orders_channel_id_foreign` (`channel_id`),
  KEY `customer_id_index` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'USD', 'USD', 'USD', 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 2, NULL, '2025-12-13 22:45:45', '2025-12-13 22:45:45'),
(2, '2', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 2, 'USD', 'USD', 'USD', 5800.0000, 5800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 2, NULL, '2025-12-13 22:46:26', '2025-12-13 22:46:26'),
(3, '3', 'pending', 'Default', 0, 'adilkhan11228@gmail.com', 'Adil', 'khan', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 7, NULL, '2025-12-14 14:17:15', '2025-12-14 14:17:15'),
(4, '4', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'USD', 'USD', 'PKR', 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 5, NULL, '2025-12-14 14:17:25', '2025-12-14 14:17:25'),
(5, '5', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'USD', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2025-12-14 14:17:29', '2025-12-14 14:17:29'),
(6, '6', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 12, NULL, '2025-12-21 18:35:53', '2025-12-21 18:35:53'),
(7, '7', 'pending', 'Default', 1, 'asdf@gasd.asd', 'asdf', 'asdf', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 13, NULL, '2025-12-21 19:03:19', '2025-12-21 19:03:19'),
(8, '8', 'canceled', 'Default', 1, 'asdf@gasd.asd', 'asdf', '', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 14, NULL, '2025-12-21 19:12:16', '2025-12-21 19:28:57'),
(9, '9', 'pending', 'Default', 0, 'adilkhan11228@gmail.com', 'Adil', 'khan', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'USD', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 7, NULL, '2025-12-21 19:31:22', '2025-12-21 19:31:22'),
(10, '10', 'canceled', 'Default', 1, '', 'adil', '', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 16, NULL, '2025-12-25 14:48:32', '2025-12-26 10:26:28'),
(11, '11', 'canceled', 'Default', 1, 'adilkhan11228@gmail.com', 'adil', '', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 17, NULL, '2025-12-26 10:27:57', '2025-12-27 14:46:04'),
(12, 'SO-000012', 'pending', 'Default', 1, '', 'asdf', '', 'flatrate_flatrate', 'Standard Delivery - Standard Delivery', 'Standard Delivery', NULL, 0, 1, 1, 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 200.0000, 200.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 18, NULL, '2025-12-27 14:55:51', '2025-12-27 14:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_comments`
--

DROP TABLE IF EXISTS `order_comments`;
CREATE TABLE IF NOT EXISTS `order_comments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_comments_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `total_weight` decimal(12,4) DEFAULT '0.0000',
  `qty_ordered` int DEFAULT '0',
  `qty_shipped` int DEFAULT '0',
  `qty_invoiced` int DEFAULT '0',
  `qty_canceled` int DEFAULT '0',
  `qty_refunded` int DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `tax_category_id` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_parent_id_foreign` (`parent_id`),
  KEY `order_items_tax_category_id_foreign` (`tax_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 1.0000, 2, 0, 0, 0, 0, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 2, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 2, \"quantity\": 2, \"product_id\": 2}', '2025-12-13 22:45:45', '2025-12-13 22:45:45'),
(2, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 1.0000, 2, 0, 0, 0, 0, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 2, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 2, \"quantity\": 2, \"product_id\": 2}', '2025-12-13 22:46:26', '2025-12-13 22:46:26'),
(3, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 7, \"quantity\": 1, \"product_id\": 2}', '2025-12-14 14:17:15', '2025-12-14 14:17:15'),
(4, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 1.0000, 2, 0, 0, 0, 0, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 5600.0000, 5600.0000, 2, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 5, \"quantity\": 2, \"product_id\": 2}', '2025-12-14 14:17:25', '2025-12-14 14:17:25'),
(5, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 5, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 4, \"quantity\": 1, \"product_id\": 2}', '2025-12-14 14:17:29', '2025-12-14 14:17:29'),
(6, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 6, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 12, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 18:35:54', '2025-12-21 18:35:54'),
(7, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 7, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 13, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 19:03:19', '2025-12-21 19:03:19'),
(8, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 1, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 8, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 14, \"quantity\": 1, \"product_id\": 2}', '2025-12-21 19:12:16', '2025-12-21 19:28:57'),
(9, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 9, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 7, \"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"2\"}', '2025-12-21 19:31:22', '2025-12-21 19:31:22'),
(10, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 1, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 10, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 16, \"quantity\": 1, \"product_id\": 2}', '2025-12-25 14:48:32', '2025-12-26 10:26:28'),
(11, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 1, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 11, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 17, \"quantity\": 1, \"product_id\": 2}', '2025-12-26 10:27:57', '2025-12-27 14:46:04'),
(12, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 1, 0, 0, 0, 0, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, 2, 'Webkul\\Product\\Models\\Product', 12, NULL, NULL, '{\"locale\": \"en\", \"cart_id\": 18, \"quantity\": 1, \"is_buy_now\": \"1\", \"product_id\": \"2\"}', '2025-12-27 14:55:51', '2025-12-27 14:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
CREATE TABLE IF NOT EXISTS `order_payment` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_payment_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-13 22:45:45', '2025-12-13 22:45:45'),
(2, 2, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-13 22:46:26', '2025-12-13 22:46:26'),
(3, 3, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-14 14:17:15', '2025-12-14 14:17:15'),
(4, 4, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-14 14:17:25', '2025-12-14 14:17:25'),
(5, 5, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-14 14:17:29', '2025-12-14 14:17:29'),
(6, 6, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-21 18:35:53', '2025-12-21 18:35:53'),
(7, 7, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-21 19:03:19', '2025-12-21 19:03:19'),
(8, 8, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-21 19:12:16', '2025-12-21 19:12:16'),
(9, 9, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-21 19:31:22', '2025-12-21 19:31:22'),
(10, 10, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-25 14:48:32', '2025-12-25 14:48:32'),
(11, 11, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-26 10:27:57', '2025-12-26 10:27:57'),
(12, 12, 'cashondelivery', 'Cash On Delivery', NULL, '2025-12-27 14:55:51', '2025-12-27 14:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
CREATE TABLE IF NOT EXISTS `order_transactions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT '0.0000',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `invoice_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_transactions_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `attribute_family_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`),
  KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  KEY `products_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `created_at`, `updated_at`) VALUES
(9, 'ALM-CONF', 'configurable', NULL, 2, NULL, '2026-04-01 10:55:24', '2026-04-01 10:55:24'),
(10, 'ALM-CONF-variant-001', 'simple', 9, 2, NULL, '2026-04-01 10:55:24', '2026-04-01 12:54:03'),
(11, 'ALM-CONF-variant-002', 'simple', 9, 2, NULL, '2026-04-01 10:55:25', '2026-04-01 12:54:03'),
(12, 'ALM-CONF-variant-003', 'simple', 9, 2, NULL, '2026-04-01 10:55:25', '2026-04-01 12:54:03'),
(13, 'CAS-CONF', 'configurable', NULL, 2, NULL, '2026-04-01 12:50:04', '2026-04-01 12:50:04'),
(14, 'CAS-CONF-variant-001', 'simple', 13, 2, NULL, '2026-04-01 12:50:04', '2026-04-01 12:59:19'),
(15, 'CAS-CONF-variant-002', 'simple', 13, 2, NULL, '2026-04-01 12:50:04', '2026-04-01 12:59:19'),
(16, 'CAS-CONF-variant-003', 'simple', 13, 2, NULL, '2026-04-01 12:50:04', '2026-04-01 12:59:19'),
(17, 'WAL-KERN-CONF', 'configurable', NULL, 2, NULL, '2026-04-01 14:40:53', '2026-04-01 14:40:53'),
(18, 'WAL-KERN-CONF-variant-001', 'simple', 17, 2, NULL, '2026-04-01 14:40:53', '2026-04-01 14:59:48'),
(19, 'WAL-KERN-CONF-variant-002', 'simple', 17, 2, NULL, '2026-04-01 14:40:53', '2026-04-01 14:59:48'),
(20, 'WAL-KERN-CONF-variant-003', 'simple', 17, 2, NULL, '2026-04-01 14:40:53', '2026-04-01 14:59:49'),
(21, 'WAL-SHELL-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:00:32', '2026-04-04 10:00:32'),
(22, 'WAL-SHELL-CONF-variant-001', 'simple', 21, 2, NULL, '2026-04-04 10:00:32', '2026-04-04 10:09:07'),
(23, 'WAL-SHELL-CONF-variant-002', 'simple', 21, 2, NULL, '2026-04-04 10:00:32', '2026-04-04 10:09:07'),
(24, 'WAL-SHELL-CONF-variant-003', 'simple', 21, 2, NULL, '2026-04-04 10:00:32', '2026-04-04 10:09:07'),
(25, 'AJWA-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:18:02', '2026-04-04 10:18:02'),
(26, 'AJWA-CONF-variant-001', 'simple', 25, 2, NULL, '2026-04-04 10:18:02', '2026-04-04 10:24:10'),
(27, 'AJWA-CONF-variant-002', 'simple', 25, 2, NULL, '2026-04-04 10:18:02', '2026-04-04 10:24:10'),
(28, 'AJWA-CONF-variant-003', 'simple', 25, 2, NULL, '2026-04-04 10:18:02', '2026-04-04 10:24:10'),
(29, 'MAB-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:25:12', '2026-04-04 10:25:12'),
(30, 'MAB-CONF-variant-001', 'simple', 29, 2, NULL, '2026-04-04 10:25:12', '2026-04-04 10:30:22'),
(31, 'MAB-CONF-variant-002', 'simple', 29, 2, NULL, '2026-04-04 10:25:12', '2026-04-04 10:30:22'),
(32, 'MAB-CONF-variant-003', 'simple', 29, 2, NULL, '2026-04-04 10:25:12', '2026-04-04 10:30:23'),
(33, 'RAI-GOLD-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:32:41', '2026-04-04 10:32:41'),
(34, 'RAI-GOLD-CONF-variant-001', 'simple', 33, 2, NULL, '2026-04-04 10:32:41', '2026-04-04 10:39:46'),
(35, 'RAI-GOLD-CONF-variant-002', 'simple', 33, 2, NULL, '2026-04-04 10:32:41', '2026-04-04 10:39:47'),
(36, 'RAI-GOLD-CONF-variant-003', 'simple', 33, 2, NULL, '2026-04-04 10:32:41', '2026-04-04 10:39:47'),
(37, 'RAI-BLK-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:43:00', '2026-04-04 10:43:00'),
(38, 'RAI-BLK-CONF-variant-001', 'simple', 37, 2, NULL, '2026-04-04 10:43:00', '2026-04-04 10:50:21'),
(39, 'RAI-BLK-CONF-variant-002', 'simple', 37, 2, NULL, '2026-04-04 10:43:00', '2026-04-04 10:50:21'),
(40, 'RAI-BLK-CONF-variant-003', 'simple', 37, 2, NULL, '2026-04-04 10:43:00', '2026-04-04 10:50:21'),
(41, 'APR-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 10:57:43', '2026-04-04 10:57:43'),
(42, 'APR-CONF-variant-001', 'simple', 41, 2, NULL, '2026-04-04 10:57:43', '2026-04-04 11:03:47'),
(43, 'APR-CONF-variant-002', 'simple', 41, 2, NULL, '2026-04-04 10:57:43', '2026-04-04 11:03:47'),
(44, 'APR-CONF-variant-003', 'simple', 41, 2, NULL, '2026-04-04 10:57:43', '2026-04-04 11:03:47'),
(45, 'FIG-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 11:10:40', '2026-04-04 11:10:40'),
(46, 'FIG-CONF-variant-001', 'simple', 45, 2, NULL, '2026-04-04 11:10:40', '2026-04-04 11:32:14'),
(47, 'FIG-CONF-variant-002', 'simple', 45, 2, NULL, '2026-04-04 11:10:40', '2026-04-04 11:32:14'),
(48, 'FIG-CONF-variant-003', 'simple', 45, 2, NULL, '2026-04-04 11:10:40', '2026-04-04 11:32:14'),
(49, 'CHIA-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 11:34:53', '2026-04-04 11:34:53'),
(50, 'CHIA-CONF-variant-001', 'simple', 49, 2, NULL, '2026-04-04 11:34:53', '2026-04-04 11:41:56'),
(51, 'CHIA-CONF-variant-002', 'simple', 49, 2, NULL, '2026-04-04 11:34:53', '2026-04-04 11:41:57'),
(52, 'CHIA-CONF-variant-003', 'simple', 49, 2, NULL, '2026-04-04 11:34:53', '2026-04-04 11:41:57'),
(53, 'PUM-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 11:45:05', '2026-04-04 11:45:05'),
(54, 'PUM-CONF-variant-001', 'simple', 53, 2, NULL, '2026-04-04 11:45:05', '2026-04-04 11:53:43'),
(55, 'PUM-CONF-variant-002', 'simple', 53, 2, NULL, '2026-04-04 11:45:05', '2026-04-04 11:53:43'),
(56, 'PUM-CONF-variant-003', 'simple', 53, 2, NULL, '2026-04-04 11:45:05', '2026-04-04 11:53:44'),
(57, 'SIDR-CONF', 'configurable', NULL, 2, NULL, '2026-04-04 11:55:39', '2026-04-04 11:55:39'),
(58, 'SIDR-CONF-variant-001', 'simple', 57, 2, NULL, '2026-04-04 11:55:39', '2026-04-04 12:06:43'),
(59, 'SIDR-CONF-variant-002', 'simple', 57, 2, NULL, '2026-04-04 11:55:39', '2026-04-04 12:06:43'),
(60, 'SIDR-CONF-variant-003', 'simple', 57, 2, NULL, '2026-04-04 11:55:39', '2026-04-04 12:06:43'),
(61, 'ACA-CONF', 'configurable', NULL, 2, NULL, '2026-04-06 10:39:44', '2026-04-06 10:39:44'),
(62, 'ACA-250', 'simple', 61, 2, NULL, '2026-04-06 10:39:44', '2026-04-06 10:39:44'),
(63, 'ACA-500', 'simple', 61, 2, NULL, '2026-04-06 10:39:44', '2026-04-06 10:39:44'),
(64, 'ACA-1KG', 'simple', 61, 2, NULL, '2026-04-06 10:39:44', '2026-04-06 10:39:44'),
(65, 'MIX-CONF', 'configurable', NULL, 2, NULL, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(66, 'MIX-250', 'simple', 65, 2, NULL, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(67, 'MIX-500', 'simple', 65, 2, NULL, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(68, 'MIX-1KG', 'simple', 65, 2, NULL, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(69, 'COMBO-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(70, 'COMBO-500', 'simple', 69, 2, NULL, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(71, 'COMBO-1KG', 'simple', 69, 2, NULL, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(72, 'PIS-SHELL-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(73, 'PIS-250', 'simple', 72, 2, NULL, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(74, 'PIS-500', 'simple', 72, 2, NULL, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(75, 'PIS-1KG', 'simple', 72, 2, NULL, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(76, 'BASIL-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(77, 'BASIL-250', 'simple', 76, 2, NULL, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(78, 'BASIL-500', 'simple', 76, 2, NULL, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(79, 'BASIL-1KG', 'simple', 76, 2, NULL, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(80, 'MOR-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(81, 'MOR-250', 'simple', 80, 2, NULL, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(82, 'MOR-500', 'simple', 80, 2, NULL, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(83, 'MOR-1KG', 'simple', 80, 2, NULL, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(84, 'ASH-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(85, 'ASH-250', 'simple', 84, 2, NULL, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(86, 'ASH-500', 'simple', 84, 2, NULL, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(87, 'ASH-1KG', 'simple', 84, 2, NULL, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(88, 'PRU-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(89, 'PRU-250', 'simple', 88, 2, NULL, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(90, 'PRU-500', 'simple', 88, 2, NULL, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(91, 'PRU-1KG', 'simple', 88, 2, NULL, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(92, 'OLV-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(93, 'OLV-250ML', 'simple', 92, 2, NULL, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(94, 'OLV-500ML', 'simple', 92, 2, NULL, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(95, 'OLV-1L', 'simple', 92, 2, NULL, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(96, 'MACA-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(97, 'MACA-250', 'simple', 96, 2, NULL, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(98, 'MACA-500', 'simple', 96, 2, NULL, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(99, 'MACA-1KG', 'simple', 96, 2, NULL, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(100, 'SHIL-CONF', 'configurable', NULL, 2, NULL, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(101, 'SHIL-10G', 'simple', 100, 2, NULL, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(102, 'SHIL-20G', 'simple', 100, 2, NULL, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(103, 'SHIL-50G', 'simple', 100, 2, NULL, '2026-04-08 11:49:18', '2026-04-08 11:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

DROP TABLE IF EXISTS `product_attribute_values`;
CREATE TABLE IF NOT EXISTS `product_attribute_values` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`),
  KEY `prod_attr_product_id_idx` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1, 'en', NULL, '<p>Test Honey 500g</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, 'en|2|9'),
(2, 'en', NULL, '<p>Test Honey 500g</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, 'en|2|10'),
(3, NULL, NULL, 'TH500', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2|1'),
(4, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 27, '2|27'),
(5, 'en', NULL, 'Test Honey 500g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'en|2|2'),
(6, 'en', NULL, 'test-honey-500g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 'en|2|3'),
(7, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 28, 'default|2|28'),
(8, 'en', NULL, 'Test Honey 500g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 16, 'en|2|16'),
(9, 'en', NULL, 'Test Honey 500g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 17, 'en|2|17'),
(10, 'en', NULL, 'Test Honey 500g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 18, 'en|2|18'),
(11, NULL, NULL, NULL, NULL, NULL, 2800.0000, NULL, NULL, NULL, 2, 11, '2|11'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 12, '2|12'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13, '2|13'),
(14, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 'default|2|14'),
(15, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15, 'default|2|15'),
(16, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, '2|5'),
(17, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 6, '2|6'),
(18, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 7, '2|7'),
(19, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, 8, 'default|2|8'),
(20, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 26, '2|26'),
(21, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 19, '2|19'),
(22, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 20, '2|20'),
(23, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 21, '2|21'),
(24, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, '2|22'),
(25, 'en', NULL, 'SO-DM-001-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 4, 10, 'en|4|10'),
(26, 'en', NULL, 'Variant 16', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 'en|4|2'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, '4|11'),
(28, 'en', NULL, 'SO-DM-001-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 4, 9, 'en|4|9'),
(29, NULL, NULL, 'SO-DM-001-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '4|1'),
(30, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 8, 'default|4|8'),
(31, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, 4, 'default|4|4'),
(32, 'en', NULL, 'SO-DM-001-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 'en|4|3'),
(33, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 4, 22, '4|22'),
(34, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 4, 30, '4|30'),
(35, 'en', NULL, 'SO-DM-001-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, 'en|5|10'),
(36, 'en', NULL, 'Variant 17', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 'en|5|2'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 11, '5|11'),
(38, 'en', NULL, 'SO-DM-001-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, 'en|5|9'),
(39, NULL, NULL, 'SO-DM-001-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '5|1'),
(40, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 8, 'default|5|8'),
(41, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, 4, 'default|5|4'),
(42, 'en', NULL, 'SO-DM-001-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 'en|5|3'),
(43, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 5, 22, '5|22'),
(44, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 5, 30, '5|30'),
(45, 'en', NULL, 'SO-DM-001-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 6, 10, 'en|6|10'),
(46, 'en', NULL, 'Variant 18', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2, 'en|6|2'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 11, '6|11'),
(48, 'en', NULL, 'SO-DM-001-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 6, 9, 'en|6|9'),
(49, NULL, NULL, 'SO-DM-001-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '6|1'),
(50, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 8, 'default|6|8'),
(51, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, 4, 'default|6|4'),
(52, 'en', NULL, 'SO-DM-001-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 6, 3, 'en|6|3'),
(53, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 6, 22, '6|22'),
(54, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 6, 30, '6|30'),
(55, 'en', NULL, 'SO-DM-001-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 7, 10, 'en|7|10'),
(56, 'en', NULL, 'Variant 19', NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, 'en|7|2'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 11, '7|11'),
(58, 'en', NULL, 'SO-DM-001-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 7, 9, 'en|7|9'),
(59, NULL, NULL, 'SO-DM-001-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '7|1'),
(60, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 8, 'default|7|8'),
(61, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, 4, 'default|7|4'),
(62, 'en', NULL, 'SO-DM-001-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 'en|7|3'),
(63, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 7, 22, '7|22'),
(64, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 7, 30, '7|30'),
(65, 'en', NULL, 'SO-DM-001-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 8, 10, 'en|8|10'),
(66, 'en', NULL, 'Variant 20', NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 'en|8|2'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 11, '8|11'),
(68, 'en', NULL, 'SO-DM-001-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 8, 9, 'en|8|9'),
(69, NULL, NULL, 'SO-DM-001-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, '8|1'),
(70, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 8, 'default|8|8'),
(71, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, 4, 'default|8|4'),
(72, 'en', NULL, 'SO-DM-001-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 8, 3, 'en|8|3'),
(73, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 8, 22, '8|22'),
(74, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 8, 30, '8|30'),
(75, 'en', NULL, 'ALM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 'en|10|10'),
(76, 'en', NULL, 'Premium Almonds (Badam) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, 'en|10|2'),
(77, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 10, 11, '10|11'),
(78, 'en', NULL, 'ALM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 10, 9, 'en|10|9'),
(79, NULL, NULL, 'ALM-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '10|1'),
(80, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 8, 'default|10|8'),
(81, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 10, 4, 'default|10|4'),
(82, 'en', NULL, 'ALM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 10, 3, 'en|10|3'),
(83, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 10, 22, '10|22'),
(84, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 10, 30, '10|30'),
(85, 'en', NULL, 'ALM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 11, 10, 'en|11|10'),
(86, 'en', NULL, 'Premium Almonds (Badam) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 11, 2, 'en|11|2'),
(87, NULL, NULL, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 11, 11, '11|11'),
(88, 'en', NULL, 'ALM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 11, 9, 'en|11|9'),
(89, NULL, NULL, 'ALM-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, '11|1'),
(90, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 8, 'default|11|8'),
(91, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 11, 4, 'default|11|4'),
(92, 'en', NULL, 'ALM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 11, 3, 'en|11|3'),
(93, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 11, 22, '11|22'),
(94, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 11, 30, '11|30'),
(95, 'en', NULL, 'ALM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 12, 10, 'en|12|10'),
(96, 'en', NULL, 'Premium Almonds (Badam) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 12, 2, 'en|12|2'),
(97, NULL, NULL, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 12, 11, '12|11'),
(98, 'en', NULL, 'ALM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 12, 9, 'en|12|9'),
(99, NULL, NULL, 'ALM-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, '12|1'),
(100, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 8, 'default|12|8'),
(101, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 12, 4, 'default|12|4'),
(102, 'en', NULL, 'ALM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, 'en|12|3'),
(103, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 12, 22, '12|22'),
(104, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 12, 30, '12|30'),
(105, NULL, NULL, 'ALM-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, '9|1'),
(106, 'en', NULL, 'Premium Almonds (Badam)', NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, 'en|9|2'),
(107, 'en', NULL, 'premium-almonds-badam', NULL, NULL, NULL, NULL, NULL, NULL, 9, 3, 'en|9|3'),
(108, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 5, '9|5'),
(109, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 6, '9|6'),
(110, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 7, '9|7'),
(111, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 8, 'default|9|8'),
(112, 'en', NULL, '<p>Premium quality almonds sourced for freshness, rich taste, and high nutritional value. A perfect healthy snack for daily energy and wellness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9, 'en|9|9'),
(113, 'en', NULL, '<p><br>Premium quality almonds (Badam) carefully selected for their rich taste, crunch, and nutritional benefits. These almonds are packed with protein, healthy fats, vitamins, and antioxidants that support overall health and energy.</p>\r\n<p><br>Perfect for daily snacking, adding to desserts, or enhancing your diet with natural nutrition. Hygienically packed to maintain freshness and quality.<br><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, 'en|9|10'),
(114, 'en', NULL, 'Buy Premium Almonds Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 9, 16, 'en|9|16'),
(115, 'en', NULL, 'almonds pakistan, badam price, buy almonds online, organic almonds pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 9, 17, 'en|9|17'),
(116, 'en', NULL, 'Shop premium quality almonds online in Pakistan from Swat Organics. Fresh, healthy, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, NULL, 9, 18, 'en|9|18'),
(117, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 26, '9|26'),
(118, NULL, NULL, 'SO-ALM-001', NULL, NULL, NULL, NULL, NULL, NULL, 9, 27, '9|27'),
(119, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 28, 'default|9|28'),
(120, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 9, 31, '9|31'),
(121, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 9, 32, '9|32'),
(122, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 9, 33, '9|33'),
(123, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 35, '9|35'),
(124, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 9, 36, '9|36'),
(125, 'en', NULL, 'CAS-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 'en|14|10'),
(126, 'en', NULL, 'Premium Cashews (Kaju) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 'en|14|2'),
(127, NULL, NULL, NULL, NULL, NULL, 1200.0000, NULL, NULL, NULL, 14, 11, '14|11'),
(128, 'en', NULL, 'CAS-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 'en|14|9'),
(129, NULL, NULL, 'CAS-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, '14|1'),
(130, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 8, 'default|14|8'),
(131, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, 4, 'default|14|4'),
(132, 'en', NULL, 'CAS-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 14, 3, 'en|14|3'),
(133, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, '14|22'),
(134, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 14, 30, '14|30'),
(135, 'en', NULL, 'CAS-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 15, 10, 'en|15|10'),
(136, 'en', NULL, 'Premium Cashews (Kaju) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 15, 2, 'en|15|2'),
(137, NULL, NULL, NULL, NULL, NULL, 2300.0000, NULL, NULL, NULL, 15, 11, '15|11'),
(138, 'en', NULL, 'CAS-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9, 'en|15|9'),
(139, NULL, NULL, 'CAS-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, '15|1'),
(140, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 8, 'default|15|8'),
(141, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 4, 'default|15|4'),
(142, 'en', NULL, 'CAS-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 15, 3, 'en|15|3'),
(143, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 15, 22, '15|22'),
(144, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 15, 30, '15|30'),
(145, 'en', NULL, 'CAS-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 16, 10, 'en|16|10'),
(146, 'en', NULL, 'Premium Cashews (Kaju) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 16, 2, 'en|16|2'),
(147, NULL, NULL, NULL, NULL, NULL, 4300.0000, NULL, NULL, NULL, 16, 11, '16|11'),
(148, 'en', NULL, 'CAS-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 16, 9, 'en|16|9'),
(149, NULL, NULL, 'CAS-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, '16|1'),
(150, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 8, 'default|16|8'),
(151, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 4, 'default|16|4'),
(152, 'en', NULL, 'CAS-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 16, 3, 'en|16|3'),
(153, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 16, 22, '16|22'),
(154, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 16, 30, '16|30'),
(155, NULL, NULL, 'CAS-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, '13|1'),
(156, 'en', NULL, 'Premium Cashews (Kaju)', NULL, NULL, NULL, NULL, NULL, NULL, 13, 2, 'en|13|2'),
(157, 'en', NULL, 'premium-cashews-kaju', NULL, NULL, NULL, NULL, NULL, NULL, 13, 3, 'en|13|3'),
(158, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 5, '13|5'),
(159, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 6, '13|6'),
(160, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 7, '13|7'),
(161, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 8, 'default|13|8'),
(162, 'en', NULL, '<p>Premium quality cashews with rich taste and smooth texture. Perfect for healthy snacking and daily nutrition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 9, 'en|13|9'),
(163, 'en', NULL, '<p>High-quality cashews known for their creamy texture and delicious taste. Rich in healthy fats, protein, and essential nutrients, ideal for snacking and cooking.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 10, 'en|13|10'),
(164, 'en', NULL, 'Buy Premium Cashews (Kaju) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 13, 16, 'en|13|16'),
(165, 'en', NULL, 'cashews pakistan, kaju price pakistan, buy cashews online, premium kaju, organic cashews pakistan, healthy nuts pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 13, 17, 'en|13|17'),
(166, 'en', NULL, 'Buy premium quality cashews (kaju) online in Pakistan from Swat Organics. Fresh, crunchy, and rich in nutrients — perfect for healthy snacking.', NULL, NULL, NULL, NULL, NULL, NULL, 13, 18, 'en|13|18'),
(167, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 26, '13|26'),
(168, NULL, NULL, 'SO-CAS-001', NULL, NULL, NULL, NULL, NULL, NULL, 13, 27, '13|27'),
(169, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 28, 'default|13|28'),
(170, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 13, 31, '13|31'),
(171, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 13, 32, '13|32'),
(172, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 13, 33, '13|33'),
(173, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 35, '13|35'),
(174, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 13, 36, '13|36'),
(175, 'en', NULL, 'WAL-KERN-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 18, 10, 'en|18|10'),
(176, 'en', NULL, 'Walnut Kernels (Akhrot Giri) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 'en|18|2'),
(177, NULL, NULL, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 18, 11, '18|11'),
(178, 'en', NULL, 'WAL-KERN-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 18, 9, 'en|18|9'),
(179, NULL, NULL, 'WAL-KERN-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 18, 1, '18|1'),
(180, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 8, 'default|18|8'),
(181, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 18, 4, 'default|18|4'),
(182, 'en', NULL, 'WAL-KERN-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 18, 3, 'en|18|3'),
(183, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 18, 22, '18|22'),
(184, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 18, 30, '18|30'),
(185, 'en', NULL, 'WAL-KERN-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 19, 10, 'en|19|10'),
(186, 'en', NULL, 'Walnut Kernels (Akhrot Giri) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 19, 2, 'en|19|2'),
(187, NULL, NULL, NULL, NULL, NULL, 1900.0000, NULL, NULL, NULL, 19, 11, '19|11'),
(188, 'en', NULL, 'WAL-KERN-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 19, 9, 'en|19|9'),
(189, NULL, NULL, 'WAL-KERN-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 19, 1, '19|1'),
(190, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 8, 'default|19|8'),
(191, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 19, 4, 'default|19|4'),
(192, 'en', NULL, 'WAL-KERN-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 19, 3, 'en|19|3'),
(193, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 19, 22, '19|22'),
(194, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 19, 30, '19|30'),
(195, 'en', NULL, 'WAL-KERN-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 'en|20|10'),
(196, 'en', NULL, 'Walnut Kernels (Akhrot Giri) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 20, 2, 'en|20|2'),
(197, NULL, NULL, NULL, NULL, NULL, 3600.0000, NULL, NULL, NULL, 20, 11, '20|11'),
(198, 'en', NULL, 'WAL-KERN-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 20, 9, 'en|20|9'),
(199, NULL, NULL, 'WAL-KERN-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, '20|1'),
(200, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 8, 'default|20|8'),
(201, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, 4, 'default|20|4'),
(202, 'en', NULL, 'WAL-KERN-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 20, 3, 'en|20|3'),
(203, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 20, 22, '20|22'),
(204, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 20, 30, '20|30'),
(205, NULL, NULL, 'WAL-KERN-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, '17|1'),
(206, 'en', NULL, 'Walnut Kernels (Akhrot Giri)', NULL, NULL, NULL, NULL, NULL, NULL, 17, 2, 'en|17|2'),
(207, 'en', NULL, 'walnut-kernels-akhrot-giri', NULL, NULL, NULL, NULL, NULL, NULL, 17, 3, 'en|17|3'),
(208, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 5, '17|5'),
(209, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 6, '17|6'),
(210, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 7, '17|7'),
(211, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 8, 'default|17|8'),
(212, 'en', NULL, '<p>Premium walnut kernels rich in nutrients and healthy fats. Ideal for brain health and daily nutrition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 9, 'en|17|9'),
(213, 'en', NULL, '<p>High-quality walnut kernels (Akhrot Giri) known for their rich taste and nutritional benefits. These walnuts are packed with omega-3 fatty acids, antioxidants, and essential nutrients that support brain health and overall wellness.</p>\r\n<p>Perfect for snacking, baking, or adding to your daily diet. Carefully selected and hygienically packed to preserve freshness and quality.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 10, 'en|17|10'),
(214, 'en', NULL, 'Buy Walnut Kernels (Akhrot Giri) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 17, 16, 'en|17|16'),
(215, 'en', NULL, 'walnut kernels pakistan, akhrot giri price, buy walnuts online, organic walnuts pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17, 'en|17|17'),
(216, 'en', NULL, 'Buy premium walnut kernels (akhrot giri) online in Pakistan. Fresh, healthy, and rich in omega-3 for daily nutrition.', NULL, NULL, NULL, NULL, NULL, NULL, 17, 18, 'en|17|18'),
(217, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 26, '17|26'),
(218, NULL, NULL, 'SO-WAL-001', NULL, NULL, NULL, NULL, NULL, NULL, 17, 27, '17|27'),
(219, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 28, 'default|17|28'),
(220, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 17, 31, '17|31'),
(221, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 17, 32, '17|32'),
(222, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 17, 33, '17|33'),
(223, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 35, '17|35'),
(224, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 17, 36, '17|36'),
(225, 'en', NULL, 'WAL-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 22, 10, 'en|22|10'),
(226, 'en', NULL, 'Walnuts With Shell (Akhrot) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 22, 2, 'en|22|2'),
(227, NULL, NULL, NULL, NULL, NULL, 700.0000, NULL, NULL, NULL, 22, 11, '22|11'),
(228, 'en', NULL, 'WAL-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 22, 9, 'en|22|9'),
(229, NULL, NULL, 'WAL-SHELL-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, '22|1'),
(230, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 8, 'default|22|8'),
(231, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 4, 'default|22|4'),
(232, 'en', NULL, 'WAL-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 22, 3, 'en|22|3'),
(233, NULL, NULL, '0.2500', NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, '22|22'),
(234, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 22, 30, '22|30'),
(235, 'en', NULL, 'WAL-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 23, 10, 'en|23|10'),
(236, 'en', NULL, 'Walnuts With Shell (Akhrot) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 23, 2, 'en|23|2'),
(237, NULL, NULL, NULL, NULL, NULL, 1300.0000, NULL, NULL, NULL, 23, 11, '23|11'),
(238, 'en', NULL, 'WAL-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 23, 9, 'en|23|9'),
(239, NULL, NULL, 'WAL-SHELL-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 23, 1, '23|1'),
(240, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 8, 'default|23|8'),
(241, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, 4, 'default|23|4'),
(242, 'en', NULL, 'WAL-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 23, 3, 'en|23|3'),
(243, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 23, 22, '23|22'),
(244, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 23, 30, '23|30'),
(245, 'en', NULL, 'WAL-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 24, 10, 'en|24|10'),
(246, 'en', NULL, 'Walnuts With Shell (Akhrot) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 24, 2, 'en|24|2'),
(247, NULL, NULL, NULL, NULL, NULL, 2500.0000, NULL, NULL, NULL, 24, 11, '24|11'),
(248, 'en', NULL, 'WAL-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 24, 9, 'en|24|9'),
(249, NULL, NULL, 'WAL-SHELL-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 24, 1, '24|1'),
(250, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 8, 'default|24|8'),
(251, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, 4, 'default|24|4'),
(252, 'en', NULL, 'WAL-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 24, 3, 'en|24|3'),
(253, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 24, 22, '24|22'),
(254, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 24, 30, '24|30'),
(255, NULL, NULL, 'WAL-SHELL-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 21, 1, '21|1'),
(256, 'en', NULL, 'Walnuts With Shell (Akhrot)', NULL, NULL, NULL, NULL, NULL, NULL, 21, 2, 'en|21|2'),
(257, 'en', NULL, 'walnuts-with-shell-akhrot', NULL, NULL, NULL, NULL, NULL, NULL, 21, 3, 'en|21|3'),
(258, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 5, '21|5'),
(259, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 6, '21|6'),
(260, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 7, '21|7'),
(261, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 8, 'default|21|8'),
(262, 'en', NULL, '<p>Fresh walnuts in shell, naturally preserved for longer shelf life and rich taste. A healthy and nutritious snack.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 9, 'en|21|9'),
(263, 'en', NULL, '<p>High-quality walnuts with shell (Akhrot), naturally protected to preserve freshness and flavor. These walnuts are rich in omega-3 fatty acids, antioxidants, and essential nutrients that support brain and heart health.</p>\r\n<p>Crack them fresh to enjoy maximum taste and nutrition. Ideal for daily consumption, snacking, and traditional use.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 10, 'en|21|10'),
(264, 'en', NULL, 'Buy Walnuts With Shell (Akhrot) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 21, 16, 'en|21|16'),
(265, 'en', NULL, 'walnuts with shell pakistan, akhrot price pakistan, buy walnuts online, natural walnuts pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 21, 17, 'en|21|17'),
(266, 'en', NULL, 'Shop fresh walnuts with shell (akhrot) online in Pakistan from Swat Organics. Natural, healthy, and full of nutrients.', NULL, NULL, NULL, NULL, NULL, NULL, 21, 18, 'en|21|18'),
(267, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 26, '21|26'),
(268, NULL, NULL, 'SO-WAL-002', NULL, NULL, NULL, NULL, NULL, NULL, 21, 27, '21|27'),
(269, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 28, 'default|21|28'),
(270, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 21, 31, '21|31'),
(271, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 21, 32, '21|32'),
(272, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 21, 33, '21|33'),
(273, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 35, '21|35'),
(274, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 21, 36, '21|36'),
(275, 'en', NULL, 'AJWA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 26, 10, 'en|26|10'),
(276, 'en', NULL, 'Ajwa Dates (Premium Quality) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 26, 2, 'en|26|2'),
(277, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 26, 11, '26|11'),
(278, 'en', NULL, 'AJWA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 26, 9, 'en|26|9'),
(279, NULL, NULL, 'AJWA-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 26, 1, '26|1'),
(280, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 8, 'default|26|8'),
(281, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, 4, 'default|26|4'),
(282, 'en', NULL, 'AJWA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 26, 3, 'en|26|3'),
(283, NULL, NULL, '0.2500', NULL, NULL, NULL, NULL, NULL, NULL, 26, 22, '26|22'),
(284, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 26, 30, '26|30'),
(285, 'en', NULL, 'AJWA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 27, 10, 'en|27|10'),
(286, 'en', NULL, 'Ajwa Dates (Premium Quality) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, 'en|27|2'),
(287, NULL, NULL, NULL, NULL, NULL, 3100.0000, NULL, NULL, NULL, 27, 11, '27|11'),
(288, 'en', NULL, 'AJWA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 27, 9, 'en|27|9'),
(289, NULL, NULL, 'AJWA-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 27, 1, '27|1'),
(290, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 8, 'default|27|8'),
(291, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 27, 4, 'default|27|4'),
(292, 'en', NULL, 'AJWA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 27, 3, 'en|27|3'),
(293, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 27, 22, '27|22'),
(294, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 27, 30, '27|30'),
(295, 'en', NULL, 'AJWA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 28, 10, 'en|28|10'),
(296, 'en', NULL, 'Ajwa Dates (Premium Quality) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 28, 2, 'en|28|2'),
(297, NULL, NULL, NULL, NULL, NULL, 5800.0000, NULL, NULL, NULL, 28, 11, '28|11'),
(298, 'en', NULL, 'AJWA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 28, 9, 'en|28|9'),
(299, NULL, NULL, 'AJWA-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 28, 1, '28|1'),
(300, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 8, 'default|28|8'),
(301, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 28, 4, 'default|28|4'),
(302, 'en', NULL, 'AJWA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 28, 3, 'en|28|3'),
(303, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 28, 22, '28|22'),
(304, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 28, 30, '28|30'),
(305, NULL, NULL, 'AJWA-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 25, 1, '25|1'),
(306, 'en', NULL, 'Ajwa Dates (Premium Quality)', NULL, NULL, NULL, NULL, NULL, NULL, 25, 2, 'en|25|2'),
(307, 'en', NULL, 'ajwa-dates-premium-quality', NULL, NULL, NULL, NULL, NULL, NULL, 25, 3, 'en|25|3'),
(308, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 5, '25|5'),
(309, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 6, '25|6'),
(310, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 7, '25|7'),
(311, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 8, 'default|25|8'),
(312, 'en', NULL, '<p>Premium Ajwa dates known for their soft texture, rich taste, and natural health benefits. A highly valued and nutritious fruit.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 9, 'en|25|9'),
(313, 'en', NULL, '<p>Ajwa dates are one of the most premium and sought-after varieties of dates, known for their soft texture, rich flavor, and deep nutritional value. These dates are naturally sweet and packed with essential nutrients, making them an excellent source of energy.</p>\r\n<p>Highly valued for their quality and significance, Ajwa dates are perfect for daily consumption, especially for maintaining a healthy lifestyle. Carefully packed to preserve freshness, taste, and natural goodness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, 'en|25|10'),
(314, 'en', NULL, 'Buy Ajwa Dates Online in Pakistan | Premium Ajwa Dates | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 25, 16, 'en|25|16'),
(315, 'en', NULL, 'ajwa dates pakistan, ajwa khajoor price, buy ajwa dates online, premium dates pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 25, 17, 'en|25|17'),
(316, 'en', NULL, 'Buy premium Ajwa dates online in Pakistan from Swat Organics. Soft, nutritious, and naturally sweet dates for daily health.', NULL, NULL, NULL, NULL, NULL, NULL, 25, 18, 'en|25|18'),
(317, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 26, '25|26'),
(318, NULL, NULL, 'SO-DAT-001', NULL, NULL, NULL, NULL, NULL, NULL, 25, 27, '25|27'),
(319, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 28, 'default|25|28'),
(320, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 25, 31, '25|31'),
(321, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 25, 32, '25|32'),
(322, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 25, 33, '25|33'),
(323, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 35, '25|35'),
(324, NULL, NULL, '12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 25, 36, '25|36'),
(325, 'en', NULL, 'MAB-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 'en|30|10'),
(326, 'en', NULL, 'Mabroom Dates 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 30, 2, 'en|30|2'),
(327, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 30, 11, '30|11'),
(328, 'en', NULL, 'MAB-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 9, 'en|30|9'),
(329, NULL, NULL, 'MAB-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, '30|1'),
(330, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 8, 'default|30|8'),
(331, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 30, 4, 'default|30|4'),
(332, 'en', NULL, 'MAB-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, 'en|30|3'),
(333, NULL, NULL, '0.2500', NULL, NULL, NULL, NULL, NULL, NULL, 30, 22, '30|22'),
(334, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 30, 30, '30|30'),
(335, 'en', NULL, 'MAB-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 10, 'en|31|10'),
(336, 'en', NULL, 'Mabroom Dates 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 31, 2, 'en|31|2'),
(337, NULL, NULL, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 31, 11, '31|11'),
(338, 'en', NULL, 'MAB-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 9, 'en|31|9'),
(339, NULL, NULL, 'MAB-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 31, 1, '31|1'),
(340, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 8, 'default|31|8'),
(341, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 31, 4, 'default|31|4'),
(342, 'en', NULL, 'MAB-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 3, 'en|31|3'),
(343, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 31, 22, '31|22'),
(344, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 31, 30, '31|30'),
(345, 'en', NULL, 'MAB-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 32, 10, 'en|32|10'),
(346, 'en', NULL, 'Mabroom Dates 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2, 'en|32|2'),
(347, NULL, NULL, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 32, 11, '32|11'),
(348, 'en', NULL, 'MAB-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 32, 9, 'en|32|9'),
(349, NULL, NULL, 'MAB-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 32, 1, '32|1'),
(350, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 8, 'default|32|8'),
(351, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 32, 4, 'default|32|4'),
(352, 'en', NULL, 'MAB-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 32, 3, 'en|32|3'),
(353, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, '32|22'),
(354, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 32, 30, '32|30'),
(355, NULL, NULL, 'MAB-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 29, 1, '29|1'),
(356, 'en', NULL, 'Mabroom Dates', NULL, NULL, NULL, NULL, NULL, NULL, 29, 2, 'en|29|2'),
(357, 'en', NULL, 'mabroom-dates', NULL, NULL, NULL, NULL, NULL, NULL, 29, 3, 'en|29|3'),
(358, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 5, '29|5'),
(359, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 6, '29|6'),
(360, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 7, '29|7'),
(361, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 8, 'default|29|8'),
(362, 'en', NULL, '<p>Mabroom dates with a chewy texture and mild sweetness. A perfect balance of taste and nutrition for daily consumption.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 29, 9, 'en|29|9'),
(363, 'en', NULL, '<p>Mabroom dates are known for their elongated shape, chewy texture, and mildly sweet taste. These premium dates are rich in fiber, vitamins, and natural sugars, making them a great source of energy.</p>\r\n<p><br>Perfect for everyday snacking or as a healthy addition to your diet. Carefully packed to maintain freshness and natural quality.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 29, 10, 'en|29|10'),
(364, 'en', NULL, 'Buy Mabroom Dates Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 29, 16, 'en|29|16'),
(365, 'en', NULL, 'mabroom dates pakistan, mabroom khajoor price, buy dates online pakistan, premium dates', NULL, NULL, NULL, NULL, NULL, NULL, 29, 17, 'en|29|17'),
(366, 'en', NULL, 'Shop Mabroom dates online in Pakistan from Swat Organics. Fresh, chewy, and naturally sweet dates for daily energy and nutrition.', NULL, NULL, NULL, NULL, NULL, NULL, 29, 18, 'en|29|18'),
(367, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 26, '29|26'),
(368, NULL, NULL, 'SO-DAT-002', NULL, NULL, NULL, NULL, NULL, NULL, 29, 27, '29|27'),
(369, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 29, 28, 'default|29|28'),
(370, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 29, 32, '29|32'),
(371, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 29, 33, '29|33'),
(372, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 29, 35, '29|35'),
(373, NULL, NULL, '12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 29, 36, '29|36'),
(374, 'en', NULL, 'RAI-GOLD-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 34, 10, 'en|34|10'),
(375, 'en', NULL, 'Golden Raisins (Kishmish) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 34, 2, 'en|34|2'),
(376, NULL, NULL, NULL, NULL, NULL, 500.0000, NULL, NULL, NULL, 34, 11, '34|11'),
(377, 'en', NULL, 'RAI-GOLD-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 34, 9, 'en|34|9'),
(378, NULL, NULL, 'RAI-GOLD-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1, '34|1'),
(379, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 8, 'default|34|8'),
(380, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 34, 4, 'default|34|4'),
(381, 'en', NULL, 'RAI-GOLD-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 34, 3, 'en|34|3'),
(382, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 34, 22, '34|22'),
(383, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 34, 30, '34|30'),
(384, 'en', NULL, 'RAI-GOLD-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 35, 10, 'en|35|10'),
(385, 'en', NULL, 'Golden Raisins (Kishmish) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 35, 2, 'en|35|2'),
(386, NULL, NULL, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 35, 11, '35|11'),
(387, 'en', NULL, 'RAI-GOLD-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 35, 9, 'en|35|9'),
(388, NULL, NULL, 'RAI-GOLD-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 35, 1, '35|1'),
(389, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 8, 'default|35|8'),
(390, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 35, 4, 'default|35|4'),
(391, 'en', NULL, 'RAI-GOLD-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 35, 3, 'en|35|3'),
(392, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 35, 22, '35|22'),
(393, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 35, 30, '35|30'),
(394, 'en', NULL, 'RAI-GOLD-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 36, 10, 'en|36|10'),
(395, 'en', NULL, '1  Golden Raisins (Kishmish) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 36, 2, 'en|36|2'),
(396, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 36, 11, '36|11'),
(397, 'en', NULL, 'RAI-GOLD-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 36, 9, 'en|36|9'),
(398, NULL, NULL, 'RAI-GOLD-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 36, 1, '36|1'),
(399, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 8, 'default|36|8'),
(400, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 36, 4, 'default|36|4'),
(401, 'en', NULL, 'RAI-GOLD-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 36, 3, 'en|36|3'),
(402, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 36, 22, '36|22'),
(403, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 36, 30, '36|30'),
(404, NULL, NULL, 'RAI-GOLD-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1, '33|1'),
(405, 'en', NULL, 'Golden Raisins (Kishmish)', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2, 'en|33|2'),
(406, 'en', NULL, 'golden-raisins-kishmish', NULL, NULL, NULL, NULL, NULL, NULL, 33, 3, 'en|33|3'),
(407, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 5, '33|5'),
(408, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 6, '33|6'),
(409, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 7, '33|7'),
(410, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 8, 'default|33|8'),
(411, 'en', NULL, '<p>Premium golden raisins with a soft texture and naturally sweet taste. Perfect for snacking and adding to desserts.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 9, 'en|33|9'),
(412, 'en', NULL, '<p>Golden raisins (Kishmish) are known for their soft texture, vibrant color, and naturally sweet flavor. These raisins are carefully sun-dried to preserve their nutrients and taste.</p>\r\n<p><br>Rich in fiber, antioxidants, and natural sugars, golden raisins are an excellent source of quick energy. Ideal for snacking, baking, or adding to traditional dishes.<br><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 10, 'en|33|10'),
(413, 'en', NULL, 'Buy Golden Raisins (Kishmish) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 33, 16, 'en|33|16'),
(414, 'en', NULL, 'golden raisins pakistan, kishmish price pakistan, buy kishmish online, dried raisins pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 33, 17, 'en|33|17'),
(415, 'en', NULL, 'Shop premium golden raisins (kishmish) online in Pakistan from Swat Organics. Naturally sweet, soft, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, NULL, 33, 18, 'en|33|18'),
(416, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 26, '33|26'),
(417, NULL, NULL, 'SO-DRF-001', NULL, NULL, NULL, NULL, NULL, NULL, 33, 27, '33|27'),
(418, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 28, 'default|33|28'),
(419, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 33, 31, '33|31'),
(420, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 33, 32, '33|32'),
(421, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 33, 33, '33|33'),
(422, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 35, '33|35'),
(423, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 33, 36, '33|36'),
(424, 'en', NULL, 'RAI-BLK-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 38, 10, 'en|38|10'),
(425, 'en', NULL, 'Black Raisins (Kishmish Siyah) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 38, 2, 'en|38|2'),
(426, NULL, NULL, NULL, NULL, NULL, 600.0000, NULL, NULL, NULL, 38, 11, '38|11'),
(427, 'en', NULL, 'RAI-BLK-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 38, 9, 'en|38|9'),
(428, NULL, NULL, 'RAI-BLK-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 38, 1, '38|1'),
(429, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 8, 'default|38|8'),
(430, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 38, 4, 'default|38|4'),
(431, 'en', NULL, 'RAI-BLK-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 38, 3, 'en|38|3'),
(432, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 38, 22, '38|22'),
(433, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 38, 30, '38|30'),
(434, 'en', NULL, 'RAI-BLK-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 39, 10, 'en|39|10'),
(435, 'en', NULL, 'Black Raisins (Kishmish Siyah) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 39, 2, 'en|39|2'),
(436, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 39, 11, '39|11'),
(437, 'en', NULL, 'RAI-BLK-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 39, 9, 'en|39|9'),
(438, NULL, NULL, 'RAI-BLK-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 39, 1, '39|1'),
(439, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 8, 'default|39|8'),
(440, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 39, 4, 'default|39|4'),
(441, 'en', NULL, 'RAI-BLK-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 39, 3, 'en|39|3'),
(442, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 39, 22, '39|22'),
(443, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 39, 30, '39|30'),
(444, 'en', NULL, 'RAI-BLK-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 40, 10, 'en|40|10'),
(445, 'en', NULL, 'Black Raisins (Kishmish Siyah) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 40, 2, 'en|40|2'),
(446, NULL, NULL, NULL, NULL, NULL, 2000.0000, NULL, NULL, NULL, 40, 11, '40|11'),
(447, 'en', NULL, 'RAI-BLK-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 40, 9, 'en|40|9'),
(448, NULL, NULL, 'RAI-BLK-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, '40|1'),
(449, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 8, 'default|40|8'),
(450, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 40, 4, 'default|40|4'),
(451, 'en', NULL, 'RAI-BLK-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 40, 3, 'en|40|3'),
(452, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 40, 22, '40|22'),
(453, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 40, 30, '40|30'),
(454, NULL, NULL, 'RAI-BLK-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 37, 1, '37|1'),
(455, 'en', NULL, 'Black Raisins (Kishmish Siyah)', NULL, NULL, NULL, NULL, NULL, NULL, 37, 2, 'en|37|2'),
(456, 'en', NULL, 'black-raisins-kishmish-siyah', NULL, NULL, NULL, NULL, NULL, NULL, 37, 3, 'en|37|3'),
(457, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 5, '37|5'),
(458, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 6, '37|6'),
(459, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 7, '37|7'),
(460, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 8, 'default|37|8'),
(461, 'en', NULL, '<p>Premium black raisins known for their rich taste and health benefits. A nutritious choice for daily consumption.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 9, 'en|37|9'),
(462, 'en', NULL, '<p>Black raisins (Kishmish Siyah) are naturally sweet and packed with nutrients. Known for their deep color and rich flavor, they are a great source of iron, fiber, and antioxidants.</p>\r\n<p><br>Ideal for improving energy levels and supporting overall health. Perfect for snacking or adding to your daily diet.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 10, 'en|37|10'),
(463, 'en', NULL, 'Buy Black Raisins (Kishmish Siyah) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 37, 16, 'en|37|16'),
(464, 'en', NULL, 'black raisins pakistan, kishmish siyah price, buy raisins online pakistan, healthy dried fruits', NULL, NULL, NULL, NULL, NULL, NULL, 37, 17, 'en|37|17'),
(465, 'en', NULL, 'Shop black raisins (kishmish siyah) online in Pakistan from Swat Organics. Rich in nutrients, naturally sweet, and healthy.', NULL, NULL, NULL, NULL, NULL, NULL, 37, 18, 'en|37|18'),
(466, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 26, '37|26'),
(467, NULL, NULL, 'SO-DRF-002', NULL, NULL, NULL, NULL, NULL, NULL, 37, 27, '37|27'),
(468, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 28, 'default|37|28'),
(469, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 37, 31, '37|31'),
(470, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 37, 32, '37|32'),
(471, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 37, 33, '37|33'),
(472, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 35, '37|35'),
(473, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 37, 36, '37|36'),
(474, 'en', NULL, 'APR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 42, 10, 'en|42|10'),
(475, 'en', NULL, 'Dried Apricots (Khubani) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 42, 2, 'en|42|2'),
(476, NULL, NULL, NULL, NULL, NULL, 800.0000, NULL, NULL, NULL, 42, 11, '42|11'),
(477, 'en', NULL, 'APR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 42, 9, 'en|42|9'),
(478, NULL, NULL, 'APR-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 42, 1, '42|1'),
(479, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 8, 'default|42|8'),
(480, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 42, 4, 'default|42|4'),
(481, 'en', NULL, 'APR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 42, 3, 'en|42|3'),
(482, NULL, NULL, '0.2500', NULL, NULL, NULL, NULL, NULL, NULL, 42, 22, '42|22'),
(483, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 42, 30, '42|30'),
(484, 'en', NULL, 'APR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 43, 10, 'en|43|10'),
(485, 'en', NULL, 'Dried Apricots (Khubani) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 43, 2, 'en|43|2'),
(486, NULL, NULL, NULL, NULL, NULL, 1500.0000, NULL, NULL, NULL, 43, 11, '43|11'),
(487, 'en', NULL, 'APR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 43, 9, 'en|43|9'),
(488, NULL, NULL, 'APR-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 43, 1, '43|1'),
(489, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 8, 'default|43|8'),
(490, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 43, 4, 'default|43|4'),
(491, 'en', NULL, 'APR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 43, 3, 'en|43|3'),
(492, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 43, 22, '43|22'),
(493, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 43, 30, '43|30'),
(494, 'en', NULL, 'APR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 44, 10, 'en|44|10'),
(495, 'en', NULL, 'Dried Apricots (Khubani) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 44, 2, 'en|44|2'),
(496, NULL, NULL, NULL, NULL, NULL, 2800.0000, NULL, NULL, NULL, 44, 11, '44|11'),
(497, 'en', NULL, 'APR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 44, 9, 'en|44|9'),
(498, NULL, NULL, 'APR-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 44, 1, '44|1'),
(499, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 8, 'default|44|8'),
(500, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 44, 4, 'default|44|4'),
(501, 'en', NULL, 'APR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 44, 3, 'en|44|3'),
(502, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 44, 22, '44|22'),
(503, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 44, 30, '44|30'),
(504, NULL, NULL, 'APR-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 41, 1, '41|1'),
(505, 'en', NULL, 'Dried Apricots (Khubani)', NULL, NULL, NULL, NULL, NULL, NULL, 41, 2, 'en|41|2'),
(506, 'en', NULL, 'dried-apricots-khubani', NULL, NULL, NULL, NULL, NULL, NULL, 41, 3, 'en|41|3'),
(507, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 5, '41|5'),
(508, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 6, '41|6'),
(509, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 7, '41|7'),
(510, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 8, 'default|41|8'),
(511, 'en', NULL, '<p>Premium dried apricots with a soft texture and naturally sweet taste. A nutritious and delicious healthy snack.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 9, 'en|41|9');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(512, 'en', NULL, '<p>Dried apricots (Khubani) are naturally sweet, soft, and rich in essential nutrients. Sourced from the northern regions, these apricots are carefully sun-dried to preserve their natural flavor and quality.</p>\r\n<p>Packed with fiber, vitamins, and antioxidants, they are perfect for healthy snacking and improving digestion. Enjoy them as a snack or add them to your meals for a natural sweetness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 10, 'en|41|10'),
(513, 'en', NULL, 'Buy Dried Apricots (Khubani) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 41, 16, 'en|41|16'),
(514, 'en', NULL, 'dried apricots pakistan, khubani price pakistan, buy apricots online, dried fruits pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 41, 17, 'en|41|17'),
(515, 'en', NULL, 'Shop premium dried apricots (khubani) online in Pakistan from Swat Organics. Naturally sweet, soft, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, NULL, 41, 18, 'en|41|18'),
(516, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 26, '41|26'),
(517, NULL, NULL, 'SO-DRF-003', NULL, NULL, NULL, NULL, NULL, NULL, 41, 27, '41|27'),
(518, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 28, 'default|41|28'),
(519, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 41, 31, '41|31'),
(520, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, 41, 32, '41|32'),
(521, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 41, 33, '41|33'),
(522, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 35, '41|35'),
(523, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 41, 36, '41|36'),
(524, 'en', NULL, 'FIG-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 46, 10, 'en|46|10'),
(525, 'en', NULL, 'Dried Figs (Anjeer) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 46, 2, 'en|46|2'),
(526, NULL, NULL, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 46, 11, '46|11'),
(527, 'en', NULL, 'FIG-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 46, 9, 'en|46|9'),
(528, NULL, NULL, 'FIG-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 46, 1, '46|1'),
(529, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 8, 'default|46|8'),
(530, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 46, 4, 'default|46|4'),
(531, 'en', NULL, 'FIG-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 46, 3, 'en|46|3'),
(532, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 46, 22, '46|22'),
(533, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 46, 30, '46|30'),
(534, 'en', NULL, 'FIG-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 47, 10, 'en|47|10'),
(535, 'en', NULL, 'Dried Figs (Anjeer) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 47, 2, 'en|47|2'),
(536, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 47, 11, '47|11'),
(537, 'en', NULL, 'FIG-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 47, 9, 'en|47|9'),
(538, NULL, NULL, 'FIG-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 47, 1, '47|1'),
(539, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 47, 8, 'default|47|8'),
(540, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 47, 4, 'default|47|4'),
(541, 'en', NULL, 'FIG-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 47, 3, 'en|47|3'),
(542, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 47, 22, '47|22'),
(543, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 47, 30, '47|30'),
(544, 'en', NULL, 'FIG-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 48, 10, 'en|48|10'),
(545, 'en', NULL, 'Dried Figs (Anjeer) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 48, 2, 'en|48|2'),
(546, NULL, NULL, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 48, 11, '48|11'),
(547, 'en', NULL, 'FIG-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 48, 9, 'en|48|9'),
(548, NULL, NULL, 'FIG-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 48, 1, '48|1'),
(549, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 48, 8, 'default|48|8'),
(550, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 48, 4, 'default|48|4'),
(551, 'en', NULL, 'FIG-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 48, 3, 'en|48|3'),
(552, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 48, 22, '48|22'),
(553, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 48, 30, '48|30'),
(554, NULL, NULL, 'FIG-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 45, 1, '45|1'),
(555, 'en', NULL, 'Dried Figs (Anjeer)', NULL, NULL, NULL, NULL, NULL, NULL, 45, 2, 'en|45|2'),
(556, 'en', NULL, 'dried-figs-anjeer', NULL, NULL, NULL, NULL, NULL, NULL, 45, 3, 'en|45|3'),
(557, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 5, '45|5'),
(558, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 6, '45|6'),
(559, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 7, '45|7'),
(560, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 8, 'default|45|8'),
(561, 'en', NULL, '<p>Premium dried figs rich in fiber and natural sweetness. A healthy and nutritious snack for daily consumption.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 9, 'en|45|9'),
(562, 'en', NULL, '<p>Dried figs (Anjeer) are a highly nutritious fruit known for their natural sweetness and rich fiber content. Carefully sun-dried to preserve their taste and nutrients, they are an excellent addition to a healthy diet.</p>\r\n<p>Figs are known to support digestion, improve energy levels, and provide essential vitamins and minerals. Perfect for snacking or adding to desserts and meals.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 10, 'en|45|10'),
(563, 'en', NULL, 'Buy Dried Figs (Anjeer) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 45, 16, 'en|45|16'),
(564, 'en', NULL, 'anjeer pakistan, dried figs price pakistan, buy figs online, healthy dried fruits', NULL, NULL, NULL, NULL, NULL, NULL, 45, 17, 'en|45|17'),
(565, 'en', NULL, 'Shop premium dried figs (anjeer) online in Pakistan from Swat Organics. Naturally sweet, rich in fiber, and healthy.', NULL, NULL, NULL, NULL, NULL, NULL, 45, 18, 'en|45|18'),
(566, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 26, '45|26'),
(567, NULL, NULL, 'SO-DRF-004', NULL, NULL, NULL, NULL, NULL, NULL, 45, 27, '45|27'),
(568, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 28, 'default|45|28'),
(569, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 45, 31, '45|31'),
(570, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 45, 32, '45|32'),
(571, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 45, 33, '45|33'),
(572, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 35, '45|35'),
(573, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 45, 36, '45|36'),
(574, 'en', NULL, 'CHIA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, 'en|50|10'),
(575, 'en', NULL, 'Chia Seeds (Superfood) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 50, 2, 'en|50|2'),
(576, NULL, NULL, NULL, NULL, NULL, 600.0000, NULL, NULL, NULL, 50, 11, '50|11'),
(577, 'en', NULL, 'CHIA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 50, 9, 'en|50|9'),
(578, NULL, NULL, 'CHIA-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 50, 1, '50|1'),
(579, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 50, 8, 'default|50|8'),
(580, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 50, 4, 'default|50|4'),
(581, 'en', NULL, 'CHIA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 50, 3, 'en|50|3'),
(582, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 50, 22, '50|22'),
(583, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 50, 30, '50|30'),
(584, 'en', NULL, 'CHIA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 51, 10, 'en|51|10'),
(585, 'en', NULL, 'Chia Seeds (Superfood) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 51, 2, 'en|51|2'),
(586, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 51, 11, '51|11'),
(587, 'en', NULL, 'CHIA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 51, 9, 'en|51|9'),
(588, NULL, NULL, 'CHIA-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 51, 1, '51|1'),
(589, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 51, 8, 'default|51|8'),
(590, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 51, 4, 'default|51|4'),
(591, 'en', NULL, 'CHIA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 51, 3, 'en|51|3'),
(592, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 51, 22, '51|22'),
(593, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 51, 30, '51|30'),
(594, 'en', NULL, 'CHIA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 52, 10, 'en|52|10'),
(595, 'en', NULL, 'Chia Seeds (Superfood) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 52, 2, 'en|52|2'),
(596, NULL, NULL, NULL, NULL, NULL, 2000.0000, NULL, NULL, NULL, 52, 11, '52|11'),
(597, 'en', NULL, 'CHIA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 52, 9, 'en|52|9'),
(598, NULL, NULL, 'CHIA-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 52, 1, '52|1'),
(599, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 52, 8, 'default|52|8'),
(600, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 52, 4, 'default|52|4'),
(601, 'en', NULL, 'CHIA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 52, 3, 'en|52|3'),
(602, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 52, 22, '52|22'),
(603, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 52, 30, '52|30'),
(604, NULL, NULL, 'CHIA-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 49, 1, '49|1'),
(605, 'en', NULL, 'Chia Seeds (Superfood)', NULL, NULL, NULL, NULL, NULL, NULL, 49, 2, 'en|49|2'),
(606, 'en', NULL, 'chia-seeds-superfood', NULL, NULL, NULL, NULL, NULL, NULL, 49, 3, 'en|49|3'),
(607, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 5, '49|5'),
(608, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 6, '49|6'),
(609, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 7, '49|7'),
(610, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 8, 'default|49|8'),
(611, 'en', NULL, '<p>Chia seeds are a nutrient-rich superfood packed with fiber, omega-3, and antioxidants. Ideal for healthy lifestyle and weight management.</p>\r\n<p> </p>', NULL, NULL, NULL, NULL, NULL, NULL, 49, 9, 'en|49|9'),
(612, 'en', NULL, '<p>Chia seeds are one of the most popular superfoods, known for their high nutritional value and health benefits. Rich in fiber, omega-3 fatty acids, protein, and antioxidants, they are perfect for supporting a healthy lifestyle.<br><br>They can be easily added to smoothies, yogurt, or water to boost energy and improve digestion. Ideal for weight management, fitness diets, and daily nutrition.<br><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, 49, 10, 'en|49|10'),
(613, 'en', NULL, 'Buy Chia Seeds Online in Pakistan | Superfood | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 49, 16, 'en|49|16'),
(614, 'en', NULL, 'chia seeds pakistan, chia seeds price pakistan, superfood chia seeds, buy chia seeds online', NULL, NULL, NULL, NULL, NULL, NULL, 49, 17, 'en|49|17'),
(615, 'en', NULL, 'Shop chia seeds online in Pakistan from Swat Organics. Rich in fiber, omega-3, and perfect for healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, NULL, 49, 18, 'en|49|18'),
(616, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 26, '49|26'),
(617, NULL, NULL, 'SO-SED-001', NULL, NULL, NULL, NULL, NULL, NULL, 49, 27, '49|27'),
(618, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 49, 28, 'default|49|28'),
(619, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 49, 31, '49|31'),
(620, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 49, 32, '49|32'),
(621, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 49, 33, '49|33'),
(622, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 49, 35, '49|35'),
(623, NULL, NULL, '12-24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 49, 36, '49|36'),
(624, 'en', NULL, 'PUM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 54, 10, 'en|54|10'),
(625, 'en', NULL, 'Pumpkin Seeds 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 54, 2, 'en|54|2'),
(626, NULL, NULL, NULL, NULL, NULL, 450.0000, NULL, NULL, NULL, 54, 11, '54|11'),
(627, 'en', NULL, 'PUM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 54, 9, 'en|54|9'),
(628, NULL, NULL, 'PUM-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 54, 1, '54|1'),
(629, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 54, 8, 'default|54|8'),
(630, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 54, 4, 'default|54|4'),
(631, 'en', NULL, 'PUM-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 54, 3, 'en|54|3'),
(632, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 54, 22, '54|22'),
(633, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 54, 30, '54|30'),
(634, 'en', NULL, 'PUM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 55, 10, 'en|55|10'),
(635, 'en', NULL, 'Pumpkin Seeds 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 55, 2, 'en|55|2'),
(636, NULL, NULL, NULL, NULL, NULL, 850.0000, NULL, NULL, NULL, 55, 11, '55|11'),
(637, 'en', NULL, 'PUM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 55, 9, 'en|55|9'),
(638, NULL, NULL, 'PUM-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 55, 1, '55|1'),
(639, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 55, 8, 'default|55|8'),
(640, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 55, 4, 'default|55|4'),
(641, 'en', NULL, 'PUM-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 55, 3, 'en|55|3'),
(642, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 55, 22, '55|22'),
(643, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 55, 30, '55|30'),
(644, 'en', NULL, 'PUM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 56, 10, 'en|56|10'),
(645, 'en', NULL, 'Pumpkin Seeds 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 56, 2, 'en|56|2'),
(646, NULL, NULL, NULL, NULL, NULL, 1600.0000, NULL, NULL, NULL, 56, 11, '56|11'),
(647, 'en', NULL, 'PUM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 56, 9, 'en|56|9'),
(648, NULL, NULL, 'PUM-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 56, 1, '56|1'),
(649, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 56, 8, 'default|56|8'),
(650, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 56, 4, 'default|56|4'),
(651, 'en', NULL, 'PUM-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 56, 3, 'en|56|3'),
(652, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 56, 22, '56|22'),
(653, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 56, 30, '56|30'),
(654, NULL, NULL, 'PUM-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 53, 1, '53|1'),
(655, 'en', NULL, 'Pumpkin Seeds', NULL, NULL, NULL, NULL, NULL, NULL, 53, 2, 'en|53|2'),
(656, 'en', NULL, 'pumpkin-seeds', NULL, NULL, NULL, NULL, NULL, NULL, 53, 3, 'en|53|3'),
(657, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 5, '53|5'),
(658, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 6, '53|6'),
(659, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 7, '53|7'),
(660, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 8, 'default|53|8'),
(661, 'en', NULL, '<p>Healthy pumpkin seeds packed with nutrients and antioxidants. A perfect snack for fitness and daily nutrition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 53, 9, 'en|53|9'),
(662, 'en', NULL, '<p>Pumpkin seeds are a highly nutritious snack rich in protein, healthy fats, and essential minerals. Known for their crunchy texture and mild flavor, they are ideal for daily consumption.<br><br>They support heart health, improve immunity, and provide a natural source of energy. Perfect for snacking or adding to salads and meals.<br><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, 53, 10, 'en|53|10'),
(663, 'en', NULL, 'Buy Pumpkin Seeds Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 53, 16, 'en|53|16'),
(664, 'en', NULL, 'pumpkin seeds pakistan, buy seeds online, healthy seeds pakistan, organic seeds', NULL, NULL, NULL, NULL, NULL, NULL, 53, 17, 'en|53|17'),
(665, 'en', NULL, 'Shop pumpkin seeds online in Pakistan from Swat Organics. Healthy, nutritious, and perfect for daily snacking.', NULL, NULL, NULL, NULL, NULL, NULL, 53, 18, 'en|53|18'),
(666, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 26, '53|26'),
(667, NULL, NULL, 'SO-SED-002', NULL, NULL, NULL, NULL, NULL, NULL, 53, 27, '53|27'),
(668, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, 28, 'default|53|28'),
(669, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 53, 31, '53|31'),
(670, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 53, 32, '53|32'),
(671, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 53, 33, '53|33'),
(672, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, 35, '53|35'),
(673, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 53, 36, '53|36'),
(674, 'en', NULL, 'SIDR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 58, 10, 'en|58|10'),
(675, 'en', NULL, 'Pure Sidr Honey 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 58, 2, 'en|58|2'),
(676, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 58, 11, '58|11'),
(677, 'en', NULL, 'SIDR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 58, 9, 'en|58|9'),
(678, NULL, NULL, 'SIDR-CONF-variant-001', NULL, NULL, NULL, NULL, NULL, NULL, 58, 1, '58|1'),
(679, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 58, 8, 'default|58|8'),
(680, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 58, 4, 'default|58|4'),
(681, 'en', NULL, 'SIDR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 58, 3, 'en|58|3'),
(682, NULL, NULL, '0.250', NULL, NULL, NULL, NULL, NULL, NULL, 58, 22, '58|22'),
(683, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 58, 30, '58|30'),
(684, 'en', NULL, 'SIDR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 59, 10, 'en|59|10'),
(685, 'en', NULL, 'Pure Sidr Honey 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 59, 2, 'en|59|2'),
(686, NULL, NULL, NULL, NULL, NULL, 3100.0000, NULL, NULL, NULL, 59, 11, '59|11'),
(687, 'en', NULL, 'SIDR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 59, 9, 'en|59|9'),
(688, NULL, NULL, 'SIDR-CONF-variant-002', NULL, NULL, NULL, NULL, NULL, NULL, 59, 1, '59|1'),
(689, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 59, 8, 'default|59|8'),
(690, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 59, 4, 'default|59|4'),
(691, 'en', NULL, 'SIDR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 59, 3, 'en|59|3'),
(692, NULL, NULL, '0.500', NULL, NULL, NULL, NULL, NULL, NULL, 59, 22, '59|22'),
(693, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 59, 30, '59|30'),
(694, 'en', NULL, 'SIDR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 60, 10, 'en|60|10'),
(695, 'en', NULL, 'Pure Sidr Honey 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 60, 2, 'en|60|2'),
(696, NULL, NULL, NULL, NULL, NULL, 5800.0000, NULL, NULL, NULL, 60, 11, '60|11'),
(697, 'en', NULL, 'SIDR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 60, 9, 'en|60|9'),
(698, NULL, NULL, 'SIDR-CONF-variant-003', NULL, NULL, NULL, NULL, NULL, NULL, 60, 1, '60|1'),
(699, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 60, 8, 'default|60|8'),
(700, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 60, 4, 'default|60|4'),
(701, 'en', NULL, 'SIDR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 60, 3, 'en|60|3'),
(702, NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, 60, 22, '60|22'),
(703, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 60, 30, '60|30'),
(704, NULL, NULL, 'SIDR-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 57, 1, '57|1'),
(705, 'en', NULL, 'Pure Sidr Honey', NULL, NULL, NULL, NULL, NULL, NULL, 57, 2, 'en|57|2'),
(706, 'en', NULL, 'pure-sidr-honey', NULL, NULL, NULL, NULL, NULL, NULL, 57, 3, 'en|57|3'),
(707, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 5, '57|5'),
(708, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 6, '57|6'),
(709, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 7, '57|7'),
(710, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 8, 'default|57|8'),
(711, 'en', NULL, '<p>Pure Sidr honey known for its rich taste, thick texture, and powerful health benefits. A premium natural product.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 57, 9, 'en|57|9'),
(712, 'en', NULL, '<p>Pure Sidr honey is one of the most premium varieties of honey, known for its thick texture, rich flavor, and exceptional health benefits. Sourced from natural Sidr trees, this honey is valued for its purity and high nutritional content.</p>\r\n<p>Rich in antioxidants and natural enzymes, Sidr honey helps boost immunity, improve digestion, and provide natural energy. Perfect for daily use, wellness routines, and traditional remedies.<br><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, 57, 10, 'en|57|10'),
(713, 'en', NULL, 'Buy Pure Sidr Honey Online in Pakistan | Premium Honey | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 57, 16, 'en|57|16'),
(714, 'en', NULL, 'sidr honey pakistan, pure honey price pakistan, buy honey online, organic honey pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 57, 17, 'en|57|17'),
(715, 'en', NULL, 'Shop pure Sidr honey online in Pakistan from Swat Organics. Thick, natural, and rich in health benefits.', NULL, NULL, NULL, NULL, NULL, NULL, 57, 18, 'en|57|18'),
(716, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 26, '57|26'),
(717, NULL, NULL, 'SO-HON-001', NULL, NULL, NULL, NULL, NULL, NULL, 57, 27, '57|27'),
(718, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 57, 28, 'default|57|28'),
(719, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 57, 31, '57|31'),
(720, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 57, 32, '57|32'),
(721, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 57, 33, '57|33'),
(722, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 57, 35, '57|35'),
(723, NULL, NULL, '24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 57, 36, '57|36'),
(724, NULL, NULL, 'ACA-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 61, 1, '61|1'),
(725, 'en', NULL, 'Pure Acacia Honey', NULL, NULL, NULL, NULL, NULL, NULL, 61, 2, 'en|61|2'),
(726, 'en', NULL, 'pure-acacia-honey', NULL, NULL, NULL, NULL, NULL, NULL, 61, 3, 'en|61|3'),
(727, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 5, '61|5'),
(728, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 61, 6, '61|6'),
(729, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 7, '61|7'),
(730, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 8, 'default|61|8'),
(731, 'en', NULL, '<p>Light and mild-flavored acacia honey with natural sweetness. Perfect for daily use and healthy lifestyle.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 61, 9, 'en|61|9'),
(732, 'en', NULL, '<p>Acacia honey is known for its light color, mild taste, and smooth texture. It is a naturally sweet and versatile honey that can be used daily in tea, desserts, or as a healthy sugar alternative.</p>\r\n<p>Rich in natural nutrients and antioxidants, acacia honey supports overall health and provides a natural energy boost. Carefully packed to maintain purity and freshness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 61, 10, 'en|61|10'),
(733, 'en', NULL, 'Buy Acacia Honey Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 61, 16, 'en|61|16'),
(734, 'en', NULL, 'acacia honey pakistan, buy honey online, organic honey pakistan, pure honey price', NULL, NULL, NULL, NULL, NULL, NULL, 61, 17, 'en|61|17'),
(735, 'en', NULL, 'Shop acacia honey online in Pakistan from Swat Organics. Light, natural, and perfect for daily use.', NULL, NULL, NULL, NULL, NULL, NULL, 61, 18, 'en|61|18'),
(736, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 61, 25, '61|25'),
(737, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 26, '61|26'),
(738, NULL, NULL, 'SO-HON-002', NULL, NULL, NULL, NULL, NULL, NULL, 61, 27, '61|27'),
(739, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 61, 28, 'default|61|28'),
(740, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 61, 31, '61|31'),
(741, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 61, 32, '61|32'),
(742, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 61, 33, '61|33'),
(743, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 35, '61|35'),
(744, NULL, NULL, '24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 61, 36, '61|36'),
(745, NULL, NULL, 'ACA-250', NULL, NULL, NULL, NULL, NULL, NULL, 62, 1, '62|1'),
(746, NULL, NULL, 'Acacia Honey 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 62, 2, '62|2'),
(747, NULL, NULL, 'ACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 62, 3, '62|3'),
(748, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 62, 4, '62|4'),
(749, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 62, 8, '62|8'),
(750, NULL, NULL, 'ACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 62, 9, '62|9'),
(751, NULL, NULL, 'ACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 62, 10, '62|10'),
(752, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 62, 11, '62|11'),
(753, NULL, NULL, '0.250', NULL, NULL, 0.2500, NULL, NULL, NULL, 62, 22, '62|22'),
(754, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 62, 30, '62|30'),
(755, NULL, NULL, 'ACA-500', NULL, NULL, NULL, NULL, NULL, NULL, 63, 1, '63|1'),
(756, NULL, NULL, 'Acacia Honey 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 63, 2, '63|2'),
(757, NULL, NULL, 'ACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 63, 3, '63|3'),
(758, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 63, 4, '63|4'),
(759, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 63, 8, '63|8'),
(760, NULL, NULL, 'ACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 63, 9, '63|9'),
(761, NULL, NULL, 'ACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 63, 10, '63|10'),
(762, NULL, NULL, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 63, 11, '63|11'),
(763, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 63, 22, '63|22'),
(764, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 63, 30, '63|30'),
(765, NULL, NULL, 'ACA-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 64, 1, '64|1'),
(766, NULL, NULL, 'Acacia Honey 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 64, 2, '64|2'),
(767, NULL, NULL, 'ACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 64, 3, '64|3'),
(768, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 64, 4, '64|4'),
(769, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 64, 8, '64|8'),
(770, NULL, NULL, 'ACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 64, 9, '64|9'),
(771, NULL, NULL, 'ACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 64, 10, '64|10'),
(772, NULL, NULL, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 64, 11, '64|11'),
(773, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 64, 22, '64|22'),
(774, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 64, 30, '64|30'),
(775, 'en', NULL, 'Pure Acacia Honey 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 62, 2, 'en|62|2'),
(776, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 62, 8, 'default|62|8'),
(777, 'en', NULL, 'Pure Acacia Honey 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 63, 2, 'en|63|2'),
(778, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 63, 8, 'default|63|8'),
(779, 'en', NULL, 'Pure Acacia Honey 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 64, 2, 'en|64|2'),
(780, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 64, 8, 'default|64|8'),
(781, NULL, NULL, 'MIX-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 65, 1, '65|1'),
(782, 'en', NULL, 'Premium Dry Fruit Mix', NULL, NULL, NULL, NULL, NULL, NULL, 65, 2, 'en|65|2'),
(783, 'en', NULL, 'premium-dry-fruit-mix', NULL, NULL, NULL, NULL, NULL, NULL, 65, 3, 'en|65|3'),
(784, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 5, '65|5'),
(785, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 6, '65|6'),
(786, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 7, '65|7'),
(787, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 8, 'default|65|8'),
(788, 'en', NULL, '<p>A premium mix of almonds, cashews, raisins, and more. Perfect for healthy snacking and energy boost.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 65, 9, 'en|65|9'),
(789, 'en', NULL, '<p>Our premium dry fruit mix is a carefully selected combination of high-quality nuts and dried fruits, including almonds, cashews, raisins, and more. This mix offers a perfect balance of taste, nutrition, and energy.</p>\r\n<p>Ideal for daily snacking, travel, or sharing with family. Packed with essential nutrients, it provides a natural boost of energy and supports a healthy lifestyle.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 65, 10, 'en|65|10'),
(790, 'en', NULL, 'Buy Premium Dry Fruit Mix Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 65, 16, 'en|65|16'),
(791, 'en', NULL, 'dry fruit mix pakistan, mixed nuts pakistan, healthy snacks pakistan, buy dry fruits online', NULL, NULL, NULL, NULL, NULL, NULL, 65, 17, 'en|65|17'),
(792, 'en', NULL, 'Shop premium dry fruit mix online in Pakistan from Swat Organics. Healthy, delicious, and perfect for daily snacking.', NULL, NULL, NULL, NULL, NULL, NULL, 65, 18, 'en|65|18'),
(793, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 65, 25, '65|25'),
(794, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 26, '65|26'),
(795, NULL, NULL, 'SO-MIX-001', NULL, NULL, NULL, NULL, NULL, NULL, 65, 27, '65|27'),
(796, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 65, 28, 'default|65|28'),
(797, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 65, 31, '65|31'),
(798, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 65, 32, '65|32'),
(799, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, 65, 33, '65|33'),
(800, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 35, '65|35'),
(801, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 65, 36, '65|36'),
(802, 'en', NULL, 'MIX-250', NULL, NULL, NULL, NULL, NULL, NULL, 66, 1, '66|1'),
(803, 'en', NULL, 'Premium Dry Fruit Mix 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 66, 2, 'en|66|2'),
(804, 'en', NULL, 'MIX-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 66, 3, '66|3'),
(805, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 66, 4, '66|4'),
(806, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 66, 8, '66|8'),
(807, 'en', NULL, 'MIX-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 66, 9, '66|9'),
(808, 'en', NULL, 'MIX-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 66, 10, '66|10'),
(809, NULL, NULL, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 66, 11, '66|11'),
(810, NULL, NULL, '0.250', NULL, NULL, 0.2500, NULL, NULL, NULL, 66, 22, '66|22'),
(811, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 66, 30, '66|30'),
(812, 'en', NULL, 'MIX-500', NULL, NULL, NULL, NULL, NULL, NULL, 67, 1, '67|1'),
(813, 'en', NULL, 'Premium Dry Fruit Mix 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 67, 2, 'en|67|2'),
(814, 'en', NULL, 'MIX-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 67, 3, '67|3'),
(815, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 67, 4, '67|4'),
(816, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 67, 8, '67|8'),
(817, 'en', NULL, 'MIX-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 67, 9, '67|9'),
(818, 'en', NULL, 'MIX-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 67, 10, '67|10'),
(819, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 67, 11, '67|11'),
(820, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 67, 22, '67|22'),
(821, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 67, 30, '67|30'),
(822, 'en', NULL, 'MIX-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 68, 1, '68|1'),
(823, 'en', NULL, 'Premium Dry Fruit Mix 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 68, 2, 'en|68|2'),
(824, 'en', NULL, 'MIX-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 68, 3, '68|3'),
(825, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 68, 4, '68|4'),
(826, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 68, 8, '68|8'),
(827, 'en', NULL, 'MIX-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 68, 9, '68|9'),
(828, 'en', NULL, 'MIX-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 68, 10, '68|10'),
(829, NULL, NULL, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 68, 11, '68|11'),
(830, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 68, 22, '68|22'),
(831, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 68, 30, '68|30'),
(832, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 66, 8, 'default|66|8'),
(833, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 67, 8, 'default|67|8'),
(834, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 68, 8, 'default|68|8'),
(835, NULL, NULL, 'COMBO-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 69, 1, '69|1'),
(836, 'en', NULL, 'Honey & Nuts Energy Combo', NULL, NULL, NULL, NULL, NULL, NULL, 69, 2, 'en|69|2'),
(837, 'en', NULL, 'honey-nuts-energy-combo', NULL, NULL, NULL, NULL, NULL, NULL, 69, 3, 'en|69|3'),
(838, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 5, '69|5'),
(839, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 6, '69|6'),
(840, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 7, '69|7'),
(841, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 8, 'default|69|8'),
(842, 'en', NULL, '<p>A powerful combination of pure honey and premium nuts for natural energy, immunity, and daily health.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 69, 9, 'en|69|9'),
(843, 'en', NULL, '<p>The Honey &amp; Nuts Energy Combo is a perfect blend of pure honey and premium quality nuts, designed to provide natural energy and nutrition. This combination offers a balance of healthy fats, natural sugars, and essential nutrients.</p>\r\n<p>Ideal for boosting immunity, increasing energy levels, and supporting a healthy lifestyle. It also makes a great gift for family and friends.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 69, 10, 'en|69|10'),
(844, 'en', NULL, 'Buy Honey & Nuts Combo Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 69, 16, 'en|69|16'),
(845, 'en', NULL, 'honey nuts combo pakistan, gift box dry fruits, energy mix pakistan, buy honey combo', NULL, NULL, NULL, NULL, NULL, NULL, 69, 17, 'en|69|17'),
(846, 'en', NULL, 'Shop honey and nuts combo online in Pakistan from Swat Organics. Perfect for energy, health, and gifting.', NULL, NULL, NULL, NULL, NULL, NULL, 69, 18, 'en|69|18'),
(847, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 69, 25, '69|25'),
(848, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 26, '69|26'),
(849, NULL, NULL, 'SO-COM-001', NULL, NULL, NULL, NULL, NULL, NULL, 69, 27, '69|27'),
(850, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 69, 28, 'default|69|28'),
(851, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 69, 31, '69|31'),
(852, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 69, 32, '69|32'),
(853, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, 69, 33, '69|33'),
(854, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 35, '69|35'),
(855, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 69, 36, '69|36'),
(856, 'en', NULL, 'COMBO-500', NULL, NULL, NULL, NULL, NULL, NULL, 70, 1, '70|1'),
(857, 'en', NULL, 'Honey & Nuts Energy Combo 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 70, 2, 'en|70|2'),
(858, 'en', NULL, 'COMBO-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 70, 3, '70|3'),
(859, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 70, 4, '70|4'),
(860, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 70, 8, '70|8'),
(861, 'en', NULL, 'COMBO-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 70, 9, '70|9'),
(862, 'en', NULL, 'COMBO-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 70, 10, '70|10'),
(863, NULL, NULL, NULL, NULL, NULL, 2300.0000, NULL, NULL, NULL, 70, 11, '70|11'),
(864, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 70, 22, '70|22'),
(865, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 70, 30, '70|30'),
(866, 'en', NULL, 'COMBO-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 71, 1, '71|1'),
(867, 'en', NULL, 'Honey & Nuts Energy Combo 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 71, 2, 'en|71|2'),
(868, 'en', NULL, 'COMBO-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 71, 3, '71|3'),
(869, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 71, 4, '71|4'),
(870, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 71, 8, '71|8'),
(871, 'en', NULL, 'COMBO-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 71, 9, '71|9'),
(872, 'en', NULL, 'COMBO-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 71, 10, '71|10'),
(873, NULL, NULL, NULL, NULL, NULL, 4200.0000, NULL, NULL, NULL, 71, 11, '71|11'),
(874, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 71, 22, '71|22'),
(875, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 71, 30, '71|30'),
(876, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 70, 8, 'default|70|8'),
(877, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 71, 8, 'default|71|8'),
(878, NULL, NULL, 'PIS-SHELL-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 72, 1, '72|1'),
(879, 'en', NULL, 'Pistachios With Shell', NULL, NULL, NULL, NULL, NULL, NULL, 72, 2, 'en|72|2'),
(880, 'en', NULL, 'pistachios-with-shell', NULL, NULL, NULL, NULL, NULL, NULL, 72, 3, 'en|72|3'),
(881, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 5, '72|5'),
(882, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 6, '72|6'),
(883, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 7, '72|7'),
(884, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 8, 'default|72|8'),
(885, 'en', NULL, '<p>Premium pistachios with shell, lightly roasted for rich taste and crunch. A perfect healthy snack.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 72, 9, 'en|72|9'),
(886, 'en', NULL, '<p>Premium quality pistachios with shell, known for their rich flavor and crunchy texture. These pistachios are lightly roasted to enhance taste while preserving their natural nutrients.</p>\r\n<p>Packed with protein, healthy fats, and antioxidants, pistachios are a great choice for healthy snacking. Perfect for daily use, gatherings, and gifting.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 72, 10, 'en|72|10'),
(887, 'en', NULL, 'Buy Pistachios With Shell Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 72, 16, 'en|72|16'),
(888, 'en', NULL, 'pistachios pakistan, pista price pakistan, buy pista online, roasted pistachios pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 72, 17, 'en|72|17'),
(889, 'en', NULL, 'Shop premium pistachios with shell online in Pakistan from Swat Organics. Fresh, crunchy, and healthy snack.', NULL, NULL, NULL, NULL, NULL, NULL, 72, 18, 'en|72|18'),
(890, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 72, 25, '72|25'),
(891, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 26, '72|26'),
(892, NULL, NULL, 'SO-NUT-003', NULL, NULL, NULL, NULL, NULL, NULL, 72, 27, '72|27'),
(893, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 72, 28, 'default|72|28'),
(894, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 72, 31, '72|31'),
(895, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 72, 32, '72|32'),
(896, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 72, 33, '72|33'),
(897, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 35, '72|35'),
(898, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 72, 36, '72|36'),
(899, 'en', NULL, 'PIS-250', NULL, NULL, NULL, NULL, NULL, NULL, 73, 1, '73|1'),
(900, 'en', NULL, 'Pistachios With Shell 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 73, 2, 'en|73|2'),
(901, 'en', NULL, 'PIS-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 73, 3, '73|3'),
(902, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 73, 4, '73|4'),
(903, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 73, 8, '73|8'),
(904, 'en', NULL, 'PIS-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 73, 9, '73|9'),
(905, 'en', NULL, 'PIS-SHELL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 73, 10, '73|10'),
(906, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 73, 11, '73|11'),
(907, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 73, 22, '73|22'),
(908, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 73, 30, '73|30'),
(909, 'en', NULL, 'PIS-500', NULL, NULL, NULL, NULL, NULL, NULL, 74, 1, '74|1'),
(910, 'en', NULL, 'Pistachios With Shell 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 74, 2, 'en|74|2'),
(911, 'en', NULL, 'PIS-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 74, 3, '74|3'),
(912, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 74, 4, '74|4'),
(913, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 74, 8, '74|8'),
(914, 'en', NULL, 'PIS-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 74, 9, '74|9'),
(915, 'en', NULL, 'PIS-SHELL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 74, 10, '74|10'),
(916, NULL, NULL, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 74, 11, '74|11'),
(917, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 74, 22, '74|22'),
(918, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 74, 30, '74|30'),
(919, 'en', NULL, 'PIS-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 75, 1, '75|1'),
(920, 'en', NULL, 'Pistachios With Shell 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 75, 2, 'en|75|2'),
(921, 'en', NULL, 'PIS-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 75, 3, '75|3'),
(922, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 75, 4, '75|4'),
(923, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 75, 8, '75|8'),
(924, 'en', NULL, 'PIS-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 75, 9, '75|9'),
(925, 'en', NULL, 'PIS-SHELL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 75, 10, '75|10'),
(926, NULL, NULL, NULL, NULL, NULL, 4000.0000, NULL, NULL, NULL, 75, 11, '75|11'),
(927, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 75, 22, '75|22'),
(928, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 75, 30, '75|30'),
(929, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 73, 8, 'default|73|8'),
(930, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 74, 8, 'default|74|8'),
(931, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 75, 8, 'default|75|8'),
(932, NULL, NULL, 'BASIL-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 76, 1, '76|1'),
(933, 'en', NULL, 'Basil Seeds (Tukhmalanga)', NULL, NULL, NULL, NULL, NULL, NULL, 76, 2, 'en|76|2'),
(934, 'en', NULL, 'basil-seeds-tukhmalanga', NULL, NULL, NULL, NULL, NULL, NULL, 76, 3, 'en|76|3'),
(935, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 5, '76|5'),
(936, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 76, 6, '76|6'),
(937, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 7, '76|7'),
(938, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 8, 'default|76|8'),
(939, 'en', NULL, '<p>Basil seeds (Tukhmalanga) are a refreshing superfood used in drinks and desserts. Perfect for cooling and hydration.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 76, 9, 'en|76|9'),
(940, 'en', NULL, '<p>Basil seeds, also known as Tukhmalanga, are a popular natural ingredient used in summer drinks and desserts. These seeds swell when soaked in water and provide a cooling effect to the body.</p>\r\n<p>Rich in fiber and nutrients, basil seeds help improve digestion, hydration, and overall wellness. Perfect for adding to juices, milkshakes, and traditional drinks.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 76, 10, 'en|76|10'),
(941, 'en', NULL, 'Buy Basil Seeds (Tukhmalanga) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 76, 16, 'en|76|16'),
(942, 'en', NULL, 'tukhmalanga pakistan, basil seeds price pakistan, buy basil seeds online, cooling seeds pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 76, 17, 'en|76|17'),
(943, 'en', NULL, 'Shop basil seeds (tukhmalanga) online in Pakistan from Swat Organics. Perfect for summer drinks, hydration, and digestion.', NULL, NULL, NULL, NULL, NULL, NULL, 76, 18, 'en|76|18'),
(944, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 76, 25, '76|25'),
(945, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 26, '76|26'),
(946, NULL, NULL, 'SO-SED-003', NULL, NULL, NULL, NULL, NULL, NULL, 76, 27, '76|27'),
(947, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 76, 28, 'default|76|28'),
(948, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 76, 31, '76|31'),
(949, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 76, 32, '76|32'),
(950, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 76, 33, '76|33'),
(951, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 35, '76|35'),
(952, NULL, NULL, '12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 76, 36, '76|36'),
(953, 'en', NULL, 'BASIL-250', NULL, NULL, NULL, NULL, NULL, NULL, 77, 1, '77|1'),
(954, 'en', NULL, 'Basil Seeds (Tukhmalanga) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 77, 2, 'en|77|2'),
(955, 'en', NULL, 'BASIL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 77, 3, '77|3'),
(956, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 77, 4, '77|4'),
(957, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 77, 8, '77|8'),
(958, 'en', NULL, 'BASIL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 77, 9, '77|9'),
(959, 'en', NULL, 'BASIL-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 77, 10, '77|10'),
(960, NULL, NULL, NULL, NULL, NULL, 400.0000, NULL, NULL, NULL, 77, 11, '77|11'),
(961, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 77, 22, '77|22'),
(962, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 77, 30, '77|30'),
(963, 'en', NULL, 'BASIL-500', NULL, NULL, NULL, NULL, NULL, NULL, 78, 1, '78|1'),
(964, 'en', NULL, 'Basil Seeds (Tukhmalanga) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 78, 2, 'en|78|2'),
(965, 'en', NULL, 'BASIL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 78, 3, '78|3'),
(966, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 78, 4, '78|4'),
(967, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 78, 8, '78|8'),
(968, 'en', NULL, 'BASIL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 78, 9, '78|9'),
(969, 'en', NULL, 'BASIL-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 78, 10, '78|10'),
(970, NULL, NULL, NULL, NULL, NULL, 750.0000, NULL, NULL, NULL, 78, 11, '78|11'),
(971, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 78, 22, '78|22'),
(972, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 78, 30, '78|30'),
(973, 'en', NULL, 'BASIL-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 79, 1, '79|1'),
(974, 'en', NULL, 'Basil Seeds (Tukhmalanga) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 79, 2, 'en|79|2'),
(975, 'en', NULL, 'BASIL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 79, 3, '79|3'),
(976, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 79, 4, '79|4'),
(977, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 79, 8, '79|8'),
(978, 'en', NULL, 'BASIL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 79, 9, '79|9'),
(979, 'en', NULL, 'BASIL-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 79, 10, '79|10'),
(980, NULL, NULL, NULL, NULL, NULL, 1400.0000, NULL, NULL, NULL, 79, 11, '79|11'),
(981, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 79, 22, '79|22'),
(982, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 79, 30, '79|30'),
(983, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 77, 8, 'default|77|8'),
(984, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 78, 8, 'default|78|8'),
(985, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 79, 8, 'default|79|8'),
(986, NULL, NULL, 'MOR-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 80, 1, '80|1'),
(987, 'en', NULL, 'Moringa Powder (Superfood)', NULL, NULL, NULL, NULL, NULL, NULL, 80, 2, 'en|80|2'),
(988, 'en', NULL, 'moringa-powder-superfood', NULL, NULL, NULL, NULL, NULL, NULL, 80, 3, 'en|80|3'),
(989, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 5, '80|5'),
(990, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 6, '80|6'),
(991, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 7, '80|7'),
(992, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 8, 'default|80|8'),
(993, 'en', NULL, '<p>Moringa powder is a powerful superfood rich in nutrients and antioxidants. Ideal for boosting energy and immunity.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 80, 9, 'en|80|9'),
(994, 'en', NULL, '<p>Moringa powder is made from dried moringa leaves and is considered one of the most nutrient-rich superfoods. It is packed with vitamins, minerals, antioxidants, and plant-based protein.</p>\r\n<p>Known for boosting energy, improving immunity, and supporting overall health, moringa powder can be easily added to smoothies, water, or meals. A perfect addition to a healthy lifestyle.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 80, 10, 'en|80|10'),
(995, 'en', NULL, 'Buy Moringa Powder Online in Pakistan | Superfood | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 80, 16, 'en|80|16'),
(996, 'en', NULL, 'moringa powder pakistan, buy moringa online, superfood pakistan, moringa benefits', NULL, NULL, NULL, NULL, NULL, NULL, 80, 17, 'en|80|17'),
(997, 'en', NULL, 'Shop moringa powder online in Pakistan from Swat Organics. Rich in nutrients, perfect for energy, immunity, and healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, NULL, 80, 18, 'en|80|18'),
(998, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 80, 25, '80|25'),
(999, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 26, '80|26'),
(1000, NULL, NULL, 'SO-SUP-001', NULL, NULL, NULL, NULL, NULL, NULL, 80, 27, '80|27'),
(1001, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 80, 28, 'default|80|28'),
(1002, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 80, 31, '80|31'),
(1003, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 80, 32, '80|32'),
(1004, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 80, 33, '80|33'),
(1005, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 35, '80|35'),
(1006, NULL, NULL, '12-24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 80, 36, '80|36'),
(1007, 'en', NULL, 'MOR-250', NULL, NULL, NULL, NULL, NULL, NULL, 81, 1, '81|1'),
(1008, 'en', NULL, 'Moringa Powder (Superfood) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 81, 2, 'en|81|2'),
(1009, 'en', NULL, 'MOR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 81, 3, '81|3'),
(1010, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 81, 4, '81|4'),
(1011, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 81, 8, '81|8'),
(1012, 'en', NULL, 'MOR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 81, 9, '81|9');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1013, 'en', NULL, 'MOR-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 81, 10, '81|10'),
(1014, NULL, NULL, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 81, 11, '81|11'),
(1015, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 81, 22, '81|22'),
(1016, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 81, 30, '81|30'),
(1017, 'en', NULL, 'MOR-500', NULL, NULL, NULL, NULL, NULL, NULL, 82, 1, '82|1'),
(1018, 'en', NULL, 'Moringa Powder (Superfood) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 82, 2, 'en|82|2'),
(1019, 'en', NULL, 'MOR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 82, 3, '82|3'),
(1020, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 82, 4, '82|4'),
(1021, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 82, 8, '82|8'),
(1022, 'en', NULL, 'MOR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 82, 9, '82|9'),
(1023, 'en', NULL, 'MOR-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 82, 10, '82|10'),
(1024, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 82, 11, '82|11'),
(1025, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 82, 22, '82|22'),
(1026, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 82, 30, '82|30'),
(1027, 'en', NULL, 'MOR-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 83, 1, '83|1'),
(1028, 'en', NULL, 'Moringa Powder (Superfood) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 83, 2, 'en|83|2'),
(1029, 'en', NULL, 'MOR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 83, 3, '83|3'),
(1030, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 83, 4, '83|4'),
(1031, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 83, 8, '83|8'),
(1032, 'en', NULL, 'MOR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 83, 9, '83|9'),
(1033, 'en', NULL, 'MOR-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 83, 10, '83|10'),
(1034, NULL, NULL, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 83, 11, '83|11'),
(1035, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 83, 22, '83|22'),
(1036, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 83, 30, '83|30'),
(1037, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 81, 8, 'default|81|8'),
(1038, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 82, 8, 'default|82|8'),
(1039, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 83, 8, 'default|83|8'),
(1040, NULL, NULL, 'ASH-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 84, 1, '84|1'),
(1041, 'en', NULL, 'Ashwagandha Powder', NULL, NULL, NULL, NULL, NULL, NULL, 84, 2, 'en|84|2'),
(1042, 'en', NULL, 'ashwagandha-powder', NULL, NULL, NULL, NULL, NULL, NULL, 84, 3, 'en|84|3'),
(1043, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 5, '84|5'),
(1044, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 6, '84|6'),
(1045, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 7, '84|7'),
(1046, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 8, 'default|84|8'),
(1047, 'en', NULL, '<p>Ashwagandha powder is a natural herbal supplement known for reducing stress, boosting energy, and improving overall wellness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 84, 9, 'en|84|9'),
(1048, 'en', NULL, '<p>Ashwagandha is a well-known herbal supplement used for centuries to support mental and physical health. It helps reduce stress, improve energy levels, and enhance overall well-being.</p>\r\n<p>Rich in natural compounds, ashwagandha powder is ideal for daily use and can be added to milk or smoothies. A perfect addition to a healthy lifestyle and fitness routine.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 84, 10, 'en|84|10'),
(1049, 'en', NULL, 'Buy Ashwagandha Powder Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 84, 16, 'en|84|16'),
(1050, 'en', NULL, 'ashwagandha pakistan, ashwagandha powder price, herbal supplement pakistan, buy ashwagandha online', NULL, NULL, NULL, NULL, NULL, NULL, 84, 17, 'en|84|17'),
(1051, 'en', NULL, 'Shop ashwagandha powder online in Pakistan from Swat Organics. Natural supplement for stress, energy, and wellness.', NULL, NULL, NULL, NULL, NULL, NULL, 84, 18, 'en|84|18'),
(1052, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 84, 25, '84|25'),
(1053, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 26, '84|26'),
(1054, NULL, NULL, 'SO-SUP-002', NULL, NULL, NULL, NULL, NULL, NULL, 84, 27, '84|27'),
(1055, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 84, 28, 'default|84|28'),
(1056, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 84, 31, '84|31'),
(1057, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 84, 32, '84|32'),
(1058, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 84, 33, '84|33'),
(1059, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 35, '84|35'),
(1060, NULL, NULL, '12-24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 84, 36, '84|36'),
(1061, 'en', NULL, 'ASH-250', NULL, NULL, NULL, NULL, NULL, NULL, 85, 1, '85|1'),
(1062, 'en', NULL, 'Ashwagandha Powder 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 85, 2, 'en|85|2'),
(1063, 'en', NULL, 'ASH-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 85, 3, '85|3'),
(1064, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 85, 4, '85|4'),
(1065, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 85, 8, '85|8'),
(1066, 'en', NULL, 'ASH-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 85, 9, '85|9'),
(1067, 'en', NULL, 'ASH-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 85, 10, '85|10'),
(1068, NULL, NULL, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 85, 11, '85|11'),
(1069, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 85, 22, '85|22'),
(1070, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 85, 30, '85|30'),
(1071, 'en', NULL, 'ASH-500', NULL, NULL, NULL, NULL, NULL, NULL, 86, 1, '86|1'),
(1072, 'en', NULL, 'Ashwagandha Powder 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 86, 2, 'en|86|2'),
(1073, 'en', NULL, 'ASH-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 86, 3, '86|3'),
(1074, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 86, 4, '86|4'),
(1075, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 86, 8, '86|8'),
(1076, 'en', NULL, 'ASH-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 86, 9, '86|9'),
(1077, 'en', NULL, 'ASH-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 86, 10, '86|10'),
(1078, NULL, NULL, NULL, NULL, NULL, 1800.0000, NULL, NULL, NULL, 86, 11, '86|11'),
(1079, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 86, 22, '86|22'),
(1080, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 86, 30, '86|30'),
(1081, 'en', NULL, 'ASH-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 87, 1, '87|1'),
(1082, 'en', NULL, 'Ashwagandha Powder 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 87, 2, 'en|87|2'),
(1083, 'en', NULL, 'ASH-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 87, 3, '87|3'),
(1084, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 87, 4, '87|4'),
(1085, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 87, 8, '87|8'),
(1086, 'en', NULL, 'ASH-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 87, 9, '87|9'),
(1087, 'en', NULL, 'ASH-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 87, 10, '87|10'),
(1088, NULL, NULL, NULL, NULL, NULL, 3400.0000, NULL, NULL, NULL, 87, 11, '87|11'),
(1089, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 87, 22, '87|22'),
(1090, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 87, 30, '87|30'),
(1091, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 85, 8, 'default|85|8'),
(1092, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 86, 8, 'default|86|8'),
(1093, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 87, 8, 'default|87|8'),
(1094, NULL, NULL, 'PRU-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 88, 1, '88|1'),
(1095, 'en', NULL, 'Prunes (Dried Aloo Bukhara)', NULL, NULL, NULL, NULL, NULL, NULL, 88, 2, 'en|88|2'),
(1096, 'en', NULL, 'prunes-dried-aloo-bukhara', NULL, NULL, NULL, NULL, NULL, NULL, 88, 3, 'en|88|3'),
(1097, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 5, '88|5'),
(1098, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 88, 6, '88|6'),
(1099, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 7, '88|7'),
(1100, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 8, 'default|88|8'),
(1101, 'en', NULL, '<p>Prunes (dried aloo bukhara) are naturally sweet and known for supporting digestion and overall health.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 88, 9, 'en|88|9'),
(1102, 'en', NULL, '<p>Prunes, also known as dried aloo bukhara, are a nutritious dried fruit with a naturally sweet and slightly tangy taste. They are rich in fiber, vitamins, and antioxidants.</p>\r\n<p>Known for supporting digestion and overall wellness, prunes are perfect for daily snacking or adding to your meals. Carefully selected and packed to maintain freshness and quality.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 88, 10, 'en|88|10'),
(1103, 'en', NULL, 'Buy Prunes (Dried Aloo Bukhara) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 88, 16, 'en|88|16'),
(1104, 'en', NULL, 'aloo bukhara pakistan, prunes pakistan, dried plums pakistan, buy prunes online', NULL, NULL, NULL, NULL, NULL, NULL, 88, 17, 'en|88|17'),
(1105, 'en', NULL, 'Shop prunes (dried aloo bukhara) online in Pakistan from Swat Organics. Naturally sweet, healthy, and great for digestion.', NULL, NULL, NULL, NULL, NULL, NULL, 88, 18, 'en|88|18'),
(1106, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 88, 25, '88|25'),
(1107, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 26, '88|26'),
(1108, NULL, NULL, 'SO-DRF-005', NULL, NULL, NULL, NULL, NULL, NULL, 88, 27, '88|27'),
(1109, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 88, 28, 'default|88|28'),
(1110, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 88, 31, '88|31'),
(1111, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 88, 32, '88|32'),
(1112, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 88, 33, '88|33'),
(1113, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 35, '88|35'),
(1114, NULL, NULL, '6-12 Months', NULL, NULL, NULL, NULL, NULL, NULL, 88, 36, '88|36'),
(1115, 'en', NULL, 'PRU-250', NULL, NULL, NULL, NULL, NULL, NULL, 89, 1, '89|1'),
(1116, 'en', NULL, 'Prunes (Dried Aloo Bukhara) 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 89, 2, 'en|89|2'),
(1117, 'en', NULL, 'PRU-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 89, 3, '89|3'),
(1118, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 89, 4, '89|4'),
(1119, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 89, 8, '89|8'),
(1120, 'en', NULL, 'PRU-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 89, 9, '89|9'),
(1121, 'en', NULL, 'PRU-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 89, 10, '89|10'),
(1122, NULL, NULL, NULL, NULL, NULL, 700.0000, NULL, NULL, NULL, 89, 11, '89|11'),
(1123, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 89, 22, '89|22'),
(1124, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 89, 30, '89|30'),
(1125, 'en', NULL, 'PRU-500', NULL, NULL, NULL, NULL, NULL, NULL, 90, 1, '90|1'),
(1126, 'en', NULL, 'Prunes (Dried Aloo Bukhara) 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 90, 2, 'en|90|2'),
(1127, 'en', NULL, 'PRU-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 90, 3, '90|3'),
(1128, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 90, 4, '90|4'),
(1129, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 90, 8, '90|8'),
(1130, 'en', NULL, 'PRU-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 90, 9, '90|9'),
(1131, 'en', NULL, 'PRU-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, '90|10'),
(1132, NULL, NULL, NULL, NULL, NULL, 1300.0000, NULL, NULL, NULL, 90, 11, '90|11'),
(1133, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 90, 22, '90|22'),
(1134, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 90, 30, '90|30'),
(1135, 'en', NULL, 'PRU-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 91, 1, '91|1'),
(1136, 'en', NULL, 'Prunes (Dried Aloo Bukhara) 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 91, 2, 'en|91|2'),
(1137, 'en', NULL, 'PRU-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 91, 3, '91|3'),
(1138, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 91, 4, '91|4'),
(1139, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 91, 8, '91|8'),
(1140, 'en', NULL, 'PRU-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 91, 9, '91|9'),
(1141, 'en', NULL, 'PRU-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 91, 10, '91|10'),
(1142, NULL, NULL, NULL, NULL, NULL, 2400.0000, NULL, NULL, NULL, 91, 11, '91|11'),
(1143, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 91, 22, '91|22'),
(1144, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 91, 30, '91|30'),
(1145, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 89, 8, 'default|89|8'),
(1146, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 90, 8, 'default|90|8'),
(1147, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 91, 8, 'default|91|8'),
(1148, NULL, NULL, 'OLV-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 92, 1, '92|1'),
(1149, 'en', NULL, 'Extra Virgin Olive Oil', NULL, NULL, NULL, NULL, NULL, NULL, 92, 2, 'en|92|2'),
(1150, 'en', NULL, 'extra-virgin-olive-oil', NULL, NULL, NULL, NULL, NULL, NULL, 92, 3, 'en|92|3'),
(1151, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 5, '92|5'),
(1152, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 92, 6, '92|6'),
(1153, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 7, '92|7'),
(1154, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 8, 'default|92|8'),
(1155, 'en', NULL, '<p>Extra virgin olive oil, cold-pressed and rich in nutrients. Perfect for cooking, salads, and healthy lifestyle.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 92, 9, 'en|92|9'),
(1156, 'en', NULL, '<p>Extra virgin olive oil is the highest quality olive oil, extracted through cold pressing without chemicals. It retains natural nutrients, antioxidants, and healthy fats.</p>\r\n<p>Known for supporting heart health and overall wellness, it is perfect for cooking, salads, and daily use. Carefully packed to preserve purity and freshness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 92, 10, 'en|92|10'),
(1157, 'en', NULL, 'Buy Extra Virgin Olive Oil Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 92, 16, 'en|92|16'),
(1158, 'en', NULL, 'olive oil pakistan, extra virgin olive oil price, buy olive oil online, healthy oil pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 92, 17, 'en|92|17'),
(1159, 'en', NULL, 'Shop extra virgin olive oil online in Pakistan from Swat Organics. Cold-pressed, healthy, and perfect for daily use.', NULL, NULL, NULL, NULL, NULL, NULL, 92, 18, 'en|92|18'),
(1160, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 92, 25, '92|25'),
(1161, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 26, '92|26'),
(1162, NULL, NULL, 'SO-OIL-001', NULL, NULL, NULL, NULL, NULL, NULL, 92, 27, '92|27'),
(1163, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 92, 28, 'default|92|28'),
(1164, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 92, 31, '92|31'),
(1165, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 92, 32, '92|32'),
(1166, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 92, 33, '92|33'),
(1167, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 35, '92|35'),
(1168, NULL, NULL, '18-24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 92, 36, '92|36'),
(1169, 'en', NULL, 'OLV-250ML', NULL, NULL, NULL, NULL, NULL, NULL, 93, 1, '93|1'),
(1170, 'en', NULL, 'Extra Virgin Olive Oil 250ml', NULL, NULL, NULL, NULL, NULL, NULL, 93, 2, 'en|93|2'),
(1171, 'en', NULL, 'OLV-CONF-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 93, 3, '93|3'),
(1172, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 93, 4, '93|4'),
(1173, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 93, 8, '93|8'),
(1174, 'en', NULL, 'OLV-CONF-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 93, 9, '93|9'),
(1175, 'en', NULL, 'OLV-CONF-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 93, 10, '93|10'),
(1176, NULL, NULL, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 93, 11, '93|11'),
(1177, NULL, NULL, '0.2500', NULL, NULL, 0.2500, NULL, NULL, NULL, 93, 22, '93|22'),
(1178, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 93, 37, '93|37'),
(1179, 'en', NULL, 'OLV-500ML', NULL, NULL, NULL, NULL, NULL, NULL, 94, 1, '94|1'),
(1180, 'en', NULL, 'Extra Virgin Olive Oil 500ml', NULL, NULL, NULL, NULL, NULL, NULL, 94, 2, 'en|94|2'),
(1181, 'en', NULL, 'OLV-CONF-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 94, 3, '94|3'),
(1182, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 94, 4, '94|4'),
(1183, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 94, 8, '94|8'),
(1184, 'en', NULL, 'OLV-CONF-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 94, 9, '94|9'),
(1185, 'en', NULL, 'OLV-CONF-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 94, 10, '94|10'),
(1186, NULL, NULL, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 94, 11, '94|11'),
(1187, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 94, 22, '94|22'),
(1188, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 94, 37, '94|37'),
(1189, 'en', NULL, 'OLV-1L', NULL, NULL, NULL, NULL, NULL, NULL, 95, 1, '95|1'),
(1190, 'en', NULL, 'Extra Virgin Olive Oil 1 Liter', NULL, NULL, NULL, NULL, NULL, NULL, 95, 2, 'en|95|2'),
(1191, 'en', NULL, 'OLV-CONF-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 95, 3, '95|3'),
(1192, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 95, 4, '95|4'),
(1193, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 95, 8, '95|8'),
(1194, 'en', NULL, 'OLV-CONF-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 95, 9, '95|9'),
(1195, 'en', NULL, 'OLV-CONF-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 95, 10, '95|10'),
(1196, NULL, NULL, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 95, 11, '95|11'),
(1197, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 95, 22, '95|22'),
(1198, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 95, 37, '95|37'),
(1199, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 93, 8, 'default|93|8'),
(1200, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 94, 8, 'default|94|8'),
(1201, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 95, 8, 'default|95|8'),
(1202, NULL, NULL, 'MACA-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 96, 1, '96|1'),
(1203, 'en', NULL, 'Maca Root Powder', NULL, NULL, NULL, NULL, NULL, NULL, 96, 2, 'en|96|2'),
(1204, 'en', NULL, 'maca-root-powder', NULL, NULL, NULL, NULL, NULL, NULL, 96, 3, 'en|96|3'),
(1205, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 5, '96|5'),
(1206, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 96, 6, '96|6'),
(1207, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 7, '96|7'),
(1208, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 8, 'default|96|8'),
(1209, 'en', NULL, '<p>Maca root powder is a natural superfood known for boosting energy, stamina, and overall wellness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 96, 9, 'en|96|9'),
(1210, 'en', NULL, '<p>Maca root powder is a natural superfood derived from the maca plant, traditionally used to enhance energy, stamina, and overall vitality. It is rich in essential nutrients, vitamins, and minerals.</p>\r\n<p>Perfect for adding to smoothies, milk, or daily diet, maca root supports an active lifestyle and overall wellness. Carefully sourced and packed to ensure quality and freshness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 96, 10, 'en|96|10'),
(1211, 'en', NULL, 'Buy Maca Root Powder Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 96, 16, 'en|96|16'),
(1212, 'en', NULL, 'maca root pakistan, maca powder price pakistan, superfood pakistan, buy maca online', NULL, NULL, NULL, NULL, NULL, NULL, 96, 17, 'en|96|17'),
(1213, 'en', NULL, 'Shop maca root powder online in Pakistan from Swat Organics. Natural superfood for energy, stamina, and healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, NULL, 96, 18, 'en|96|18'),
(1214, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 96, 25, '96|25'),
(1215, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 26, '96|26'),
(1216, NULL, NULL, 'SO-SUP-003', NULL, NULL, NULL, NULL, NULL, NULL, 96, 27, '96|27'),
(1217, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 96, 28, 'default|96|28'),
(1218, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 96, 31, '96|31'),
(1219, NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 96, 32, '96|32'),
(1220, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 96, 33, '96|33'),
(1221, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 35, '96|35'),
(1222, NULL, NULL, '12-24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 96, 36, '96|36'),
(1223, 'en', NULL, 'MACA-250', NULL, NULL, NULL, NULL, NULL, NULL, 97, 1, '97|1'),
(1224, 'en', NULL, 'Maca Root Powder 250 G', NULL, NULL, NULL, NULL, NULL, NULL, 97, 2, 'en|97|2'),
(1225, 'en', NULL, 'MACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 97, 3, '97|3'),
(1226, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 97, 4, '97|4'),
(1227, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 97, 8, '97|8'),
(1228, 'en', NULL, 'MACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 97, 9, '97|9'),
(1229, 'en', NULL, 'MACA-CONF-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 97, 10, '97|10'),
(1230, NULL, NULL, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 97, 11, '97|11'),
(1231, NULL, NULL, '0.250', NULL, NULL, 0.2500, NULL, NULL, NULL, 97, 22, '97|22'),
(1232, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 97, 30, '97|30'),
(1233, 'en', NULL, 'MACA-500', NULL, NULL, NULL, NULL, NULL, NULL, 98, 1, '98|1'),
(1234, 'en', NULL, 'Maca Root Powder 500 G', NULL, NULL, NULL, NULL, NULL, NULL, 98, 2, 'en|98|2'),
(1235, 'en', NULL, 'MACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 98, 3, '98|3'),
(1236, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 98, 4, '98|4'),
(1237, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 98, 8, '98|8'),
(1238, 'en', NULL, 'MACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 98, 9, '98|9'),
(1239, 'en', NULL, 'MACA-CONF-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 98, 10, '98|10'),
(1240, NULL, NULL, NULL, NULL, NULL, 1800.0000, NULL, NULL, NULL, 98, 11, '98|11'),
(1241, NULL, NULL, '0.500', NULL, NULL, 0.5000, NULL, NULL, NULL, 98, 22, '98|22'),
(1242, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 98, 30, '98|30'),
(1243, 'en', NULL, 'MACA-1KG', NULL, NULL, NULL, NULL, NULL, NULL, 99, 1, '99|1'),
(1244, 'en', NULL, 'Maca Root Powder 1 KG', NULL, NULL, NULL, NULL, NULL, NULL, 99, 2, 'en|99|2'),
(1245, 'en', NULL, 'MACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 99, 3, '99|3'),
(1246, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 99, 4, '99|4'),
(1247, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 99, 8, '99|8'),
(1248, 'en', NULL, 'MACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 99, 9, '99|9'),
(1249, 'en', NULL, 'MACA-CONF-variant-20', NULL, NULL, NULL, NULL, NULL, NULL, 99, 10, '99|10'),
(1250, NULL, NULL, NULL, NULL, NULL, 3400.0000, NULL, NULL, NULL, 99, 11, '99|11'),
(1251, NULL, NULL, '1.00', NULL, NULL, 1.0000, NULL, NULL, NULL, 99, 22, '99|22'),
(1252, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 99, 30, '99|30'),
(1253, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 97, 8, 'default|97|8'),
(1254, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 98, 8, 'default|98|8'),
(1255, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 99, 8, 'default|99|8'),
(1256, NULL, NULL, 'SHIL-CONF', NULL, NULL, NULL, NULL, NULL, NULL, 100, 1, '100|1'),
(1257, 'en', NULL, 'Shilajit (Pure Resin)', NULL, NULL, NULL, NULL, NULL, NULL, 100, 2, 'en|100|2'),
(1258, 'en', NULL, 'shilajit-pure-resin', NULL, NULL, NULL, NULL, NULL, NULL, 100, 3, 'en|100|3'),
(1259, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 5, '100|5'),
(1260, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, 6, '100|6'),
(1261, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 7, '100|7'),
(1262, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 8, 'default|100|8'),
(1263, 'en', NULL, '<p>Pure Shilajit resin sourced from the Himalayan region. A natural supplement traditionally used for overall wellness.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 100, 9, 'en|100|9'),
(1264, 'en', NULL, '<p>Shilajit is a natural mineral-rich resin found in mountainous regions, traditionally used as a wellness supplement. It contains essential minerals and natural compounds that support overall health and vitality.</p>\r\n<p>Carefully sourced and purified to ensure quality, Shilajit can be used as part of a balanced lifestyle. It is recommended to use in moderation and consult a professional if needed.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, 'en|100|10'),
(1265, 'en', NULL, 'Buy Shilajit (Pure Resin) Online in Pakistan | Swat Organics', NULL, NULL, NULL, NULL, NULL, NULL, 100, 16, 'en|100|16'),
(1266, 'en', NULL, 'shilajit pakistan, pure shilajit price, buy shilajit online, natural supplement pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 100, 17, 'en|100|17'),
(1267, 'en', NULL, 'Shop pure shilajit resin online in Pakistan from Swat Organics. Natural supplement for wellness and vitality.', NULL, NULL, NULL, NULL, NULL, NULL, 100, 18, 'en|100|18'),
(1268, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 100, 25, '100|25'),
(1269, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 26, '100|26'),
(1270, NULL, NULL, 'SO-SUP-004', NULL, NULL, NULL, NULL, NULL, NULL, 100, 27, '100|27'),
(1271, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, 28, 'default|100|28'),
(1272, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 100, 31, '100|31'),
(1273, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, 100, 32, '100|32'),
(1274, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 100, 33, '100|33'),
(1275, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 35, '100|35'),
(1276, NULL, NULL, '24 Months', NULL, NULL, NULL, NULL, NULL, NULL, 100, 36, '100|36'),
(1277, 'en', NULL, 'SHIL-10G', NULL, NULL, NULL, NULL, NULL, NULL, 101, 1, '101|1'),
(1278, 'en', NULL, 'Shilajit (Pure Resin) 10 G', NULL, NULL, NULL, NULL, NULL, NULL, 101, 2, 'en|101|2'),
(1279, 'en', NULL, 'SHIL-CONF-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 101, 3, '101|3'),
(1280, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 101, 4, '101|4'),
(1281, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 101, 8, '101|8'),
(1282, 'en', NULL, 'SHIL-CONF-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 101, 9, '101|9'),
(1283, 'en', NULL, 'SHIL-CONF-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 101, 10, '101|10'),
(1284, NULL, NULL, NULL, NULL, NULL, 1500.0000, NULL, NULL, NULL, 101, 11, '101|11'),
(1285, NULL, NULL, '0.010', NULL, NULL, 0.0100, NULL, NULL, NULL, 101, 22, '101|22'),
(1286, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 101, 30, '101|30'),
(1287, 'en', NULL, 'SHIL-20G', NULL, NULL, NULL, NULL, NULL, NULL, 102, 1, '102|1'),
(1288, 'en', NULL, 'Shilajit (Pure Resin) 20 G', NULL, NULL, NULL, NULL, NULL, NULL, 102, 2, 'en|102|2'),
(1289, 'en', NULL, 'SHIL-CONF-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 102, 3, '102|3'),
(1290, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 102, 4, '102|4'),
(1291, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 102, 8, '102|8'),
(1292, 'en', NULL, 'SHIL-CONF-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 102, 9, '102|9'),
(1293, 'en', NULL, 'SHIL-CONF-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 102, 10, '102|10'),
(1294, NULL, NULL, NULL, NULL, NULL, 2800.0000, NULL, NULL, NULL, 102, 11, '102|11'),
(1295, NULL, NULL, '0.020', NULL, NULL, 0.0200, NULL, NULL, NULL, 102, 22, '102|22'),
(1296, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 102, 30, '102|30'),
(1297, 'en', NULL, 'SHIL-50G', NULL, NULL, NULL, NULL, NULL, NULL, 103, 1, '103|1'),
(1298, 'en', NULL, 'Shilajit (Pure Resin) 50 G', NULL, NULL, NULL, NULL, NULL, NULL, 103, 2, 'en|103|2'),
(1299, 'en', NULL, 'SHIL-CONF-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 103, 3, '103|3'),
(1300, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 103, 4, '103|4'),
(1301, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 103, 8, '103|8'),
(1302, 'en', NULL, 'SHIL-CONF-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 103, 9, '103|9'),
(1303, 'en', NULL, 'SHIL-CONF-variant-16', NULL, NULL, NULL, NULL, NULL, NULL, 103, 10, '103|10'),
(1304, NULL, NULL, NULL, NULL, NULL, 6000.0000, NULL, NULL, NULL, 103, 11, '103|11'),
(1305, NULL, NULL, '0.050', NULL, NULL, 0.0500, NULL, NULL, NULL, 103, 22, '103|22'),
(1306, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 103, 30, '103|30'),
(1307, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 101, 8, 'default|101|8'),
(1308, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 102, 8, 'default|102|8'),
(1309, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 103, 8, 'default|103|8');

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_options`
--

DROP TABLE IF EXISTS `product_bundle_options`;
CREATE TABLE IF NOT EXISTS `product_bundle_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_bundle_options_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_products`
--

DROP TABLE IF EXISTS `product_bundle_option_products`;
CREATE TABLE IF NOT EXISTS `product_bundle_option_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `product_bundle_option_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  KEY `pbop_option_id_idx` (`product_bundle_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_translations`
--

DROP TABLE IF EXISTS `product_bundle_option_translations`;
CREATE TABLE IF NOT EXISTS `product_bundle_option_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_bundle_option_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  KEY `product_categories_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(9, 5),
(13, 5),
(17, 5),
(21, 4),
(25, 7),
(29, 7),
(33, 9),
(37, 9),
(41, 9),
(45, 9),
(49, 6),
(49, 12),
(53, 6),
(53, 12),
(57, 11),
(61, 11),
(65, 8),
(69, 10),
(69, 11),
(72, 4),
(76, 6),
(80, 12),
(84, 12),
(88, 9),
(92, 13),
(96, 12),
(100, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels`
--

DROP TABLE IF EXISTS `product_channels`;
CREATE TABLE IF NOT EXISTS `product_channels` (
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  KEY `product_channels_channel_id_foreign` (`channel_id`),
  KEY `pc_product_id_channel_id_idx` (`product_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

DROP TABLE IF EXISTS `product_cross_sells`;
CREATE TABLE IF NOT EXISTS `product_cross_sells` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  KEY `product_cross_sells_child_id_foreign` (`child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_group_prices`
--

DROP TABLE IF EXISTS `product_customer_group_prices`;
CREATE TABLE IF NOT EXISTS `product_customer_group_prices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL DEFAULT '0',
  `value_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_options`
--

DROP TABLE IF EXISTS `product_customizable_options`;
CREATE TABLE IF NOT EXISTS `product_customizable_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '1',
  `max_characters` text COLLATE utf8mb4_unicode_ci,
  `supported_file_extensions` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_customizable_options_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_option_prices`
--

DROP TABLE IF EXISTS `product_customizable_option_prices`;
CREATE TABLE IF NOT EXISTS `product_customizable_option_prices` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_customizable_option_id` int UNSIGNED NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pcop_product_customizable_option_id_foreign` (`product_customizable_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_option_translations`
--

DROP TABLE IF EXISTS `product_customizable_option_translations`;
CREATE TABLE IF NOT EXISTS `product_customizable_option_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  `product_customizable_option_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_customizable_option_id_locale_unique` (`product_customizable_option_id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_links`
--

DROP TABLE IF EXISTS `product_downloadable_links`;
CREATE TABLE IF NOT EXISTS `product_downloadable_links` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sample_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloads` int NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_downloadable_links_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_link_translations`
--

DROP TABLE IF EXISTS `product_downloadable_link_translations`;
CREATE TABLE IF NOT EXISTS `product_downloadable_link_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_downloadable_link_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_samples`
--

DROP TABLE IF EXISTS `product_downloadable_samples`;
CREATE TABLE IF NOT EXISTS `product_downloadable_samples` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_downloadable_samples_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_sample_translations`
--

DROP TABLE IF EXISTS `product_downloadable_sample_translations`;
CREATE TABLE IF NOT EXISTS `product_downloadable_sample_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_downloadable_sample_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

DROP TABLE IF EXISTS `product_flat`;
CREATE TABLE IF NOT EXISTS `product_flat` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_family_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  KEY `product_flat_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, 'simple-prd', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-14 03:04:39', 'en', 'default', 1, 1, '2025-12-14 03:04:39', NULL, NULL),
(2, 'TH500', 'simple', '', 'Test Honey 500g', '<p>Test Honey 500g</p>', '<p>Test Honey 500g</p>', 'test-honey-500g', 1, 1, 0, 'Test Honey 500g', 'Test Honey 500g', 'Test Honey 500g', 2800.0000, NULL, NULL, NULL, 0.5000, '2025-12-14 03:05:17', 'en', 'default', 1, 2, '2025-12-29 20:33:57', NULL, 1),
(3, 'SO-DM-001', 'configurable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-15 23:30:34', 'en', 'default', 2, 3, '2026-03-15 23:30:34', NULL, NULL),
(4, 'SO-DM-001-variant-16', 'simple', NULL, 'Variant 16', 'SO-DM-001-variant-16', 'SO-DM-001-variant-16', 'SO-DM-001-variant-16', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2026-03-15 23:30:34', 'en', 'default', 2, 4, '2026-03-15 23:30:34', NULL, NULL),
(5, 'SO-DM-001-variant-17', 'simple', NULL, 'Variant 17', 'SO-DM-001-variant-17', 'SO-DM-001-variant-17', 'SO-DM-001-variant-17', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2026-03-15 23:30:34', 'en', 'default', 2, 5, '2026-03-15 23:30:34', NULL, NULL),
(6, 'SO-DM-001-variant-18', 'simple', NULL, 'Variant 18', 'SO-DM-001-variant-18', 'SO-DM-001-variant-18', 'SO-DM-001-variant-18', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2026-03-15 23:30:34', 'en', 'default', 2, 6, '2026-03-15 23:30:34', NULL, NULL),
(7, 'SO-DM-001-variant-19', 'simple', NULL, 'Variant 19', 'SO-DM-001-variant-19', 'SO-DM-001-variant-19', 'SO-DM-001-variant-19', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2026-03-15 23:30:34', 'en', 'default', 2, 7, '2026-03-15 23:30:34', NULL, NULL),
(8, 'SO-DM-001-variant-20', 'simple', NULL, 'Variant 20', 'SO-DM-001-variant-20', 'SO-DM-001-variant-20', 'SO-DM-001-variant-20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2026-03-15 23:30:34', 'en', 'default', 2, 8, '2026-03-15 23:30:34', NULL, NULL),
(9, 'ALM-CONF', 'configurable', 'SO-ALM-001', 'Premium Almonds (Badam)', '<p>Premium quality almonds sourced for freshness, rich taste, and high nutritional value. A perfect healthy snack for daily energy and wellness.</p>', '<p><br>Premium quality almonds (Badam) carefully selected for their rich taste, crunch, and nutritional benefits. These almonds are packed with protein, healthy fats, vitamins, and antioxidants that support overall health and energy.</p>\r\n<p><br>Perfect for daily snacking, adding to desserts, or enhancing your diet with natural nutrition. Hygienically packed to maintain freshness and quality.<br><br></p>', 'premium-almonds-badam', 1, 1, 1, 'Buy Premium Almonds Online in Pakistan | Swat Organics', 'almonds pakistan, badam price, buy almonds online, organic almonds pakistan', 'Shop premium quality almonds online in Pakistan from Swat Organics. Fresh, healthy, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, '2026-04-01 15:55:25', 'en', 'default', 2, 9, '2026-04-01 16:29:55', NULL, 1),
(10, 'ALM-CONF-variant-001', 'simple', NULL, 'Premium Almonds (Badam) 250 G', 'ALM-CONF-variant-18', 'ALM-CONF-variant-18', 'ALM-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.2500, '2026-04-01 15:55:25', 'en', 'default', 2, 10, '2026-04-08 14:59:25', NULL, NULL),
(11, 'ALM-CONF-variant-002', 'simple', NULL, 'Premium Almonds (Badam) 500 G', 'ALM-CONF-variant-19', 'ALM-CONF-variant-19', 'ALM-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 500.0000, '2026-04-01 15:55:25', 'en', 'default', 2, 11, '2026-04-08 14:59:25', NULL, NULL),
(12, 'ALM-CONF-variant-003', 'simple', NULL, 'Premium Almonds (Badam) 1 KG', 'ALM-CONF-variant-20', 'ALM-CONF-variant-20', 'ALM-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 1.0000, '2026-04-01 15:55:25', 'en', 'default', 2, 12, '2026-04-08 14:59:25', NULL, NULL),
(13, 'CAS-CONF', 'configurable', 'SO-CAS-001', 'Premium Cashews (Kaju)', '<p>Premium quality cashews with rich taste and smooth texture. Perfect for healthy snacking and daily nutrition.</p>', '<p>High-quality cashews known for their creamy texture and delicious taste. Rich in healthy fats, protein, and essential nutrients, ideal for snacking and cooking.</p>', 'premium-cashews-kaju', 1, 1, 1, 'Buy Premium Cashews (Kaju) Online in Pakistan | Swat Organics', 'cashews pakistan, kaju price pakistan, buy cashews online, premium kaju, organic cashews pakistan, healthy nuts pakistan', 'Buy premium quality cashews (kaju) online in Pakistan from Swat Organics. Fresh, crunchy, and rich in nutrients — perfect for healthy snacking.', NULL, NULL, NULL, NULL, NULL, '2026-04-01 17:50:04', 'en', 'default', 2, 13, '2026-04-01 18:04:45', NULL, 1),
(14, 'CAS-CONF-variant-001', 'simple', NULL, 'Premium Cashews (Kaju) 250 G', 'CAS-CONF-variant-18', 'CAS-CONF-variant-18', 'CAS-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1200.0000, NULL, NULL, NULL, 0.2500, '2026-04-01 17:50:04', 'en', 'default', 2, 14, '2026-04-08 14:59:25', NULL, NULL),
(15, 'CAS-CONF-variant-002', 'simple', NULL, 'Premium Cashews (Kaju) 500 G', 'CAS-CONF-variant-19', 'CAS-CONF-variant-19', 'CAS-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 2300.0000, NULL, NULL, NULL, 0.5000, '2026-04-01 17:50:04', 'en', 'default', 2, 15, '2026-04-08 14:59:25', NULL, NULL),
(16, 'CAS-CONF-variant-003', 'simple', NULL, 'Premium Cashews (Kaju) 1 KG', 'CAS-CONF-variant-20', 'CAS-CONF-variant-20', 'CAS-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 4300.0000, NULL, NULL, NULL, 1.0000, '2026-04-01 17:50:04', 'en', 'default', 2, 16, '2026-04-08 14:59:25', NULL, NULL),
(17, 'WAL-KERN-CONF', 'configurable', 'SO-WAL-001', 'Walnut Kernels (Akhrot Giri)', '<p>Premium walnut kernels rich in nutrients and healthy fats. Ideal for brain health and daily nutrition.</p>', '<p>High-quality walnut kernels (Akhrot Giri) known for their rich taste and nutritional benefits. These walnuts are packed with omega-3 fatty acids, antioxidants, and essential nutrients that support brain health and overall wellness.</p>\r\n<p>Perfect for snacking, baking, or adding to your daily diet. Carefully selected and hygienically packed to preserve freshness and quality.</p>', 'walnut-kernels-akhrot-giri', 1, 1, 1, 'Buy Walnut Kernels (Akhrot Giri) Online in Pakistan | Swat Organics', 'walnut kernels pakistan, akhrot giri price, buy walnuts online, organic walnuts pakistan', 'Buy premium walnut kernels (akhrot giri) online in Pakistan. Fresh, healthy, and rich in omega-3 for daily nutrition.', NULL, NULL, NULL, NULL, NULL, '2026-04-01 19:40:53', 'en', 'default', 2, 17, '2026-04-01 19:59:49', NULL, 1),
(18, 'WAL-KERN-CONF-variant-001', 'simple', NULL, 'Walnut Kernels (Akhrot Giri) 250 G', 'WAL-KERN-CONF-variant-18', 'WAL-KERN-CONF-variant-18', 'WAL-KERN-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 0.2500, '2026-04-01 19:40:54', 'en', 'default', 2, 18, '2026-04-08 14:59:25', NULL, NULL),
(19, 'WAL-KERN-CONF-variant-002', 'simple', NULL, 'Walnut Kernels (Akhrot Giri) 500 G', 'WAL-KERN-CONF-variant-19', 'WAL-KERN-CONF-variant-19', 'WAL-KERN-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1900.0000, NULL, NULL, NULL, 0.5000, '2026-04-01 19:40:54', 'en', 'default', 2, 19, '2026-04-08 14:59:25', NULL, NULL),
(20, 'WAL-KERN-CONF-variant-003', 'simple', NULL, 'Walnut Kernels (Akhrot Giri) 1 KG', 'WAL-KERN-CONF-variant-20', 'WAL-KERN-CONF-variant-20', 'WAL-KERN-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3600.0000, NULL, NULL, NULL, 1.0000, '2026-04-01 19:40:54', 'en', 'default', 2, 20, '2026-04-08 14:59:25', NULL, NULL),
(21, 'WAL-SHELL-CONF', 'configurable', 'SO-WAL-002', 'Walnuts With Shell (Akhrot)', '<p>Fresh walnuts in shell, naturally preserved for longer shelf life and rich taste. A healthy and nutritious snack.</p>', '<p>High-quality walnuts with shell (Akhrot), naturally protected to preserve freshness and flavor. These walnuts are rich in omega-3 fatty acids, antioxidants, and essential nutrients that support brain and heart health.</p>\r\n<p>Crack them fresh to enjoy maximum taste and nutrition. Ideal for daily consumption, snacking, and traditional use.</p>', 'walnuts-with-shell-akhrot', 1, 1, 1, 'Buy Walnuts With Shell (Akhrot) Online in Pakistan | Swat Organics', 'walnuts with shell pakistan, akhrot price pakistan, buy walnuts online, natural walnuts pakistan', 'Shop fresh walnuts with shell (akhrot) online in Pakistan from Swat Organics. Natural, healthy, and full of nutrients.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:00:32', 'en', 'default', 2, 21, '2026-04-04 15:09:08', NULL, 1),
(22, 'WAL-SHELL-CONF-variant-001', 'simple', NULL, 'Walnuts With Shell (Akhrot) 250 G', 'WAL-SHELL-CONF-variant-18', 'WAL-SHELL-CONF-variant-18', 'WAL-SHELL-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 700.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:00:32', 'en', 'default', 2, 22, '2026-04-08 14:59:25', NULL, NULL),
(23, 'WAL-SHELL-CONF-variant-002', 'simple', NULL, 'Walnuts With Shell (Akhrot) 500 G', 'WAL-SHELL-CONF-variant-19', 'WAL-SHELL-CONF-variant-19', 'WAL-SHELL-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1300.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:00:32', 'en', 'default', 2, 23, '2026-04-08 14:59:25', NULL, NULL),
(24, 'WAL-SHELL-CONF-variant-003', 'simple', NULL, 'Walnuts With Shell (Akhrot) 1 KG', 'WAL-SHELL-CONF-variant-20', 'WAL-SHELL-CONF-variant-20', 'WAL-SHELL-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 2500.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:00:32', 'en', 'default', 2, 24, '2026-04-08 14:59:25', NULL, NULL),
(25, 'AJWA-CONF', 'configurable', 'SO-DAT-001', 'Ajwa Dates (Premium Quality)', '<p>Premium Ajwa dates known for their soft texture, rich taste, and natural health benefits. A highly valued and nutritious fruit.</p>', '<p>Ajwa dates are one of the most premium and sought-after varieties of dates, known for their soft texture, rich flavor, and deep nutritional value. These dates are naturally sweet and packed with essential nutrients, making them an excellent source of energy.</p>\r\n<p>Highly valued for their quality and significance, Ajwa dates are perfect for daily consumption, especially for maintaining a healthy lifestyle. Carefully packed to preserve freshness, taste, and natural goodness.</p>', 'ajwa-dates-premium-quality', 1, 1, 1, 'Buy Ajwa Dates Online in Pakistan | Premium Ajwa Dates | Swat Organics', 'ajwa dates pakistan, ajwa khajoor price, buy ajwa dates online, premium dates pakistan', 'Buy premium Ajwa dates online in Pakistan from Swat Organics. Soft, nutritious, and naturally sweet dates for daily health.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:18:02', 'en', 'default', 2, 25, '2026-04-04 15:24:11', NULL, 1),
(26, 'AJWA-CONF-variant-001', 'simple', NULL, 'Ajwa Dates (Premium Quality) 250 G', 'AJWA-CONF-variant-18', 'AJWA-CONF-variant-18', 'AJWA-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:18:02', 'en', 'default', 2, 26, '2026-04-08 14:59:25', NULL, NULL),
(27, 'AJWA-CONF-variant-002', 'simple', NULL, 'Ajwa Dates (Premium Quality) 500 G', 'AJWA-CONF-variant-19', 'AJWA-CONF-variant-19', 'AJWA-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 3100.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:18:02', 'en', 'default', 2, 27, '2026-04-08 14:59:25', NULL, NULL),
(28, 'AJWA-CONF-variant-003', 'simple', NULL, 'Ajwa Dates (Premium Quality) 1 KG', 'AJWA-CONF-variant-20', 'AJWA-CONF-variant-20', 'AJWA-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 5800.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:18:02', 'en', 'default', 2, 28, '2026-04-08 14:59:25', NULL, NULL),
(29, 'MAB-CONF', 'configurable', 'SO-DAT-002', 'Mabroom Dates', '<p>Mabroom dates with a chewy texture and mild sweetness. A perfect balance of taste and nutrition for daily consumption.</p>', '<p>Mabroom dates are known for their elongated shape, chewy texture, and mildly sweet taste. These premium dates are rich in fiber, vitamins, and natural sugars, making them a great source of energy.</p>\r\n<p><br>Perfect for everyday snacking or as a healthy addition to your diet. Carefully packed to maintain freshness and natural quality.</p>', 'mabroom-dates', 1, 1, 1, 'Buy Mabroom Dates Online in Pakistan | Swat Organics', 'mabroom dates pakistan, mabroom khajoor price, buy dates online pakistan, premium dates', 'Shop Mabroom dates online in Pakistan from Swat Organics. Fresh, chewy, and naturally sweet dates for daily energy and nutrition.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:25:12', 'en', 'default', 2, 29, '2026-04-04 15:30:23', NULL, 1),
(30, 'MAB-CONF-variant-001', 'simple', NULL, 'Mabroom Dates 250 G', 'MAB-CONF-variant-18', 'MAB-CONF-variant-18', 'MAB-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:25:12', 'en', 'default', 2, 30, '2026-04-08 14:59:25', NULL, NULL),
(31, 'MAB-CONF-variant-002', 'simple', NULL, 'Mabroom Dates 500 G', 'MAB-CONF-variant-19', 'MAB-CONF-variant-19', 'MAB-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:25:12', 'en', 'default', 2, 31, '2026-04-08 14:59:25', NULL, NULL),
(32, 'MAB-CONF-variant-003', 'simple', NULL, 'Mabroom Dates 1 KG', 'MAB-CONF-variant-20', 'MAB-CONF-variant-20', 'MAB-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:25:13', 'en', 'default', 2, 32, '2026-04-08 14:59:25', NULL, NULL),
(33, 'RAI-GOLD-CONF', 'configurable', 'SO-DRF-001', 'Golden Raisins (Kishmish)', '<p>Premium golden raisins with a soft texture and naturally sweet taste. Perfect for snacking and adding to desserts.</p>', '<p>Golden raisins (Kishmish) are known for their soft texture, vibrant color, and naturally sweet flavor. These raisins are carefully sun-dried to preserve their nutrients and taste.</p>\r\n<p><br>Rich in fiber, antioxidants, and natural sugars, golden raisins are an excellent source of quick energy. Ideal for snacking, baking, or adding to traditional dishes.<br><br></p>', 'golden-raisins-kishmish', 1, 1, 1, 'Buy Golden Raisins (Kishmish) Online in Pakistan | Swat Organics', 'golden raisins pakistan, kishmish price pakistan, buy kishmish online, dried raisins pakistan', 'Shop premium golden raisins (kishmish) online in Pakistan from Swat Organics. Naturally sweet, soft, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:32:41', 'en', 'default', 2, 33, '2026-04-04 15:39:47', NULL, 1),
(34, 'RAI-GOLD-CONF-variant-001', 'simple', NULL, 'Golden Raisins (Kishmish) 250 G', 'RAI-GOLD-CONF-variant-18', 'RAI-GOLD-CONF-variant-18', 'RAI-GOLD-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 500.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:32:41', 'en', 'default', 2, 34, '2026-04-08 14:59:25', NULL, NULL),
(35, 'RAI-GOLD-CONF-variant-002', 'simple', NULL, 'Golden Raisins (Kishmish) 500 G', 'RAI-GOLD-CONF-variant-19', 'RAI-GOLD-CONF-variant-19', 'RAI-GOLD-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:32:41', 'en', 'default', 2, 35, '2026-04-08 14:59:25', NULL, NULL),
(36, 'RAI-GOLD-CONF-variant-003', 'simple', NULL, '1  Golden Raisins (Kishmish) 1 KG', 'RAI-GOLD-CONF-variant-20', 'RAI-GOLD-CONF-variant-20', 'RAI-GOLD-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:32:41', 'en', 'default', 2, 36, '2026-04-08 14:59:25', NULL, NULL),
(37, 'RAI-BLK-CONF', 'configurable', 'SO-DRF-002', 'Black Raisins (Kishmish Siyah)', '<p>Premium black raisins known for their rich taste and health benefits. A nutritious choice for daily consumption.</p>', '<p>Black raisins (Kishmish Siyah) are naturally sweet and packed with nutrients. Known for their deep color and rich flavor, they are a great source of iron, fiber, and antioxidants.</p>\r\n<p><br>Ideal for improving energy levels and supporting overall health. Perfect for snacking or adding to your daily diet.</p>', 'black-raisins-kishmish-siyah', 1, 1, 1, 'Buy Black Raisins (Kishmish Siyah) Online in Pakistan | Swat Organics', 'black raisins pakistan, kishmish siyah price, buy raisins online pakistan, healthy dried fruits', 'Shop black raisins (kishmish siyah) online in Pakistan from Swat Organics. Rich in nutrients, naturally sweet, and healthy.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:43:00', 'en', 'default', 2, 37, '2026-04-04 15:50:21', NULL, 1),
(38, 'RAI-BLK-CONF-variant-001', 'simple', NULL, 'Black Raisins (Kishmish Siyah) 250 G', 'RAI-BLK-CONF-variant-18', 'RAI-BLK-CONF-variant-18', 'RAI-BLK-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 600.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:43:00', 'en', 'default', 2, 38, '2026-04-08 14:59:25', NULL, NULL),
(39, 'RAI-BLK-CONF-variant-002', 'simple', NULL, 'Black Raisins (Kishmish Siyah) 500 G', 'RAI-BLK-CONF-variant-19', 'RAI-BLK-CONF-variant-19', 'RAI-BLK-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:43:00', 'en', 'default', 2, 39, '2026-04-08 14:59:25', NULL, NULL),
(40, 'RAI-BLK-CONF-variant-003', 'simple', NULL, 'Black Raisins (Kishmish Siyah) 1 KG', 'RAI-BLK-CONF-variant-20', 'RAI-BLK-CONF-variant-20', 'RAI-BLK-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 2000.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:43:00', 'en', 'default', 2, 40, '2026-04-08 14:59:25', NULL, NULL),
(41, 'APR-CONF', 'configurable', 'SO-DRF-003', 'Dried Apricots (Khubani)', '<p>Premium dried apricots with a soft texture and naturally sweet taste. A nutritious and delicious healthy snack.</p>', '<p>Dried apricots (Khubani) are naturally sweet, soft, and rich in essential nutrients. Sourced from the northern regions, these apricots are carefully sun-dried to preserve their natural flavor and quality.</p>\r\n<p>Packed with fiber, vitamins, and antioxidants, they are perfect for healthy snacking and improving digestion. Enjoy them as a snack or add them to your meals for a natural sweetness.</p>', 'dried-apricots-khubani', 1, 1, 1, 'Buy Dried Apricots (Khubani) Online in Pakistan | Swat Organics', 'dried apricots pakistan, khubani price pakistan, buy apricots online, dried fruits pakistan', 'Shop premium dried apricots (khubani) online in Pakistan from Swat Organics. Naturally sweet, soft, and rich in nutrients.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 15:57:43', 'en', 'default', 2, 41, '2026-04-04 16:03:48', NULL, 1),
(42, 'APR-CONF-variant-001', 'simple', NULL, 'Dried Apricots (Khubani) 250 G', 'APR-CONF-variant-18', 'APR-CONF-variant-18', 'APR-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 800.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 15:57:43', 'en', 'default', 2, 42, '2026-04-08 14:59:25', NULL, NULL),
(43, 'APR-CONF-variant-002', 'simple', NULL, 'Dried Apricots (Khubani) 500 G', 'APR-CONF-variant-19', 'APR-CONF-variant-19', 'APR-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1500.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 15:57:43', 'en', 'default', 2, 43, '2026-04-08 14:59:25', NULL, NULL),
(44, 'APR-CONF-variant-003', 'simple', NULL, 'Dried Apricots (Khubani) 1 KG', 'APR-CONF-variant-20', 'APR-CONF-variant-20', 'APR-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 2800.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 15:57:43', 'en', 'default', 2, 44, '2026-04-08 14:59:25', NULL, NULL),
(45, 'FIG-CONF', 'configurable', 'SO-DRF-004', 'Dried Figs (Anjeer)', '<p>Premium dried figs rich in fiber and natural sweetness. A healthy and nutritious snack for daily consumption.</p>', '<p>Dried figs (Anjeer) are a highly nutritious fruit known for their natural sweetness and rich fiber content. Carefully sun-dried to preserve their taste and nutrients, they are an excellent addition to a healthy diet.</p>\r\n<p>Figs are known to support digestion, improve energy levels, and provide essential vitamins and minerals. Perfect for snacking or adding to desserts and meals.</p>', 'dried-figs-anjeer', 1, 1, 1, 'Buy Dried Figs (Anjeer) Online in Pakistan | Swat Organics', 'anjeer pakistan, dried figs price pakistan, buy figs online, healthy dried fruits', 'Shop premium dried figs (anjeer) online in Pakistan from Swat Organics. Naturally sweet, rich in fiber, and healthy.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 16:10:40', 'en', 'default', 2, 45, '2026-04-04 16:32:14', NULL, 1),
(46, 'FIG-CONF-variant-001', 'simple', NULL, 'Dried Figs (Anjeer) 250 G', 'FIG-CONF-variant-18', 'FIG-CONF-variant-18', 'FIG-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 16:10:40', 'en', 'default', 2, 46, '2026-04-08 14:59:25', NULL, NULL),
(47, 'FIG-CONF-variant-002', 'simple', NULL, 'Dried Figs (Anjeer) 500 G', 'FIG-CONF-variant-19', 'FIG-CONF-variant-19', 'FIG-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 16:10:40', 'en', 'default', 2, 47, '2026-04-08 14:59:25', NULL, NULL),
(48, 'FIG-CONF-variant-003', 'simple', NULL, 'Dried Figs (Anjeer) 1 KG', 'FIG-CONF-variant-20', 'FIG-CONF-variant-20', 'FIG-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 16:10:40', 'en', 'default', 2, 48, '2026-04-08 14:59:25', NULL, NULL),
(49, 'CHIA-CONF', 'configurable', 'SO-SED-001', 'Chia Seeds (Superfood)', '<p>Chia seeds are a nutrient-rich superfood packed with fiber, omega-3, and antioxidants. Ideal for healthy lifestyle and weight management.</p>\r\n<p> </p>', '<p>Chia seeds are one of the most popular superfoods, known for their high nutritional value and health benefits. Rich in fiber, omega-3 fatty acids, protein, and antioxidants, they are perfect for supporting a healthy lifestyle.<br><br>They can be easily added to smoothies, yogurt, or water to boost energy and improve digestion. Ideal for weight management, fitness diets, and daily nutrition.<br><br></p>', 'chia-seeds-superfood', 1, 1, 1, 'Buy Chia Seeds Online in Pakistan | Superfood | Swat Organics', 'chia seeds pakistan, chia seeds price pakistan, superfood chia seeds, buy chia seeds online', 'Shop chia seeds online in Pakistan from Swat Organics. Rich in fiber, omega-3, and perfect for healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 16:34:53', 'en', 'default', 2, 49, '2026-04-04 16:43:56', NULL, 1),
(50, 'CHIA-CONF-variant-001', 'simple', NULL, 'Chia Seeds (Superfood) 250 G', 'CHIA-CONF-variant-18', 'CHIA-CONF-variant-18', 'CHIA-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 600.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 16:34:53', 'en', 'default', 2, 50, '2026-04-08 14:59:25', NULL, NULL),
(51, 'CHIA-CONF-variant-002', 'simple', NULL, 'Chia Seeds (Superfood) 500 G', 'CHIA-CONF-variant-19', 'CHIA-CONF-variant-19', 'CHIA-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 16:34:53', 'en', 'default', 2, 51, '2026-04-08 14:59:25', NULL, NULL),
(52, 'CHIA-CONF-variant-003', 'simple', NULL, 'Chia Seeds (Superfood) 1 KG', 'CHIA-CONF-variant-20', 'CHIA-CONF-variant-20', 'CHIA-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 2000.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 16:34:53', 'en', 'default', 2, 52, '2026-04-08 14:59:25', NULL, NULL),
(53, 'PUM-CONF', 'configurable', 'SO-SED-002', 'Pumpkin Seeds', '<p>Healthy pumpkin seeds packed with nutrients and antioxidants. A perfect snack for fitness and daily nutrition.</p>', '<p>Pumpkin seeds are a highly nutritious snack rich in protein, healthy fats, and essential minerals. Known for their crunchy texture and mild flavor, they are ideal for daily consumption.<br><br>They support heart health, improve immunity, and provide a natural source of energy. Perfect for snacking or adding to salads and meals.<br><br></p>', 'pumpkin-seeds', 1, 1, 1, 'Buy Pumpkin Seeds Online in Pakistan | Swat Organics', 'pumpkin seeds pakistan, buy seeds online, healthy seeds pakistan, organic seeds', 'Shop pumpkin seeds online in Pakistan from Swat Organics. Healthy, nutritious, and perfect for daily snacking.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 16:45:05', 'en', 'default', 2, 53, '2026-04-04 16:53:44', NULL, 1),
(54, 'PUM-CONF-variant-001', 'simple', NULL, 'Pumpkin Seeds 250 G', 'PUM-CONF-variant-18', 'PUM-CONF-variant-18', 'PUM-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 450.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 16:45:05', 'en', 'default', 2, 54, '2026-04-08 14:59:25', NULL, NULL),
(55, 'PUM-CONF-variant-002', 'simple', NULL, 'Pumpkin Seeds 500 G', 'PUM-CONF-variant-19', 'PUM-CONF-variant-19', 'PUM-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 850.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 16:45:05', 'en', 'default', 2, 55, '2026-04-08 14:59:25', NULL, NULL),
(56, 'PUM-CONF-variant-003', 'simple', NULL, 'Pumpkin Seeds 1 KG', 'PUM-CONF-variant-20', 'PUM-CONF-variant-20', 'PUM-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 1600.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 16:45:05', 'en', 'default', 2, 56, '2026-04-08 14:59:25', NULL, NULL),
(57, 'SIDR-CONF', 'configurable', 'SO-HON-001', 'Pure Sidr Honey', '<p>Pure Sidr honey known for its rich taste, thick texture, and powerful health benefits. A premium natural product.</p>', '<p>Pure Sidr honey is one of the most premium varieties of honey, known for its thick texture, rich flavor, and exceptional health benefits. Sourced from natural Sidr trees, this honey is valued for its purity and high nutritional content.</p>\r\n<p>Rich in antioxidants and natural enzymes, Sidr honey helps boost immunity, improve digestion, and provide natural energy. Perfect for daily use, wellness routines, and traditional remedies.<br><br></p>', 'pure-sidr-honey', 1, 1, 1, 'Buy Pure Sidr Honey Online in Pakistan | Premium Honey | Swat Organics', 'sidr honey pakistan, pure honey price pakistan, buy honey online, organic honey pakistan', 'Shop pure Sidr honey online in Pakistan from Swat Organics. Thick, natural, and rich in health benefits.', NULL, NULL, NULL, NULL, NULL, '2026-04-04 16:55:39', 'en', 'default', 2, 57, '2026-04-04 17:06:43', NULL, 1),
(58, 'SIDR-CONF-variant-001', 'simple', NULL, 'Pure Sidr Honey 250 G', 'SIDR-CONF-variant-18', 'SIDR-CONF-variant-18', 'SIDR-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.2500, '2026-04-04 16:55:39', 'en', 'default', 2, 58, '2026-04-08 14:59:25', NULL, NULL),
(59, 'SIDR-CONF-variant-002', 'simple', NULL, 'Pure Sidr Honey 500 G', 'SIDR-CONF-variant-19', 'SIDR-CONF-variant-19', 'SIDR-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 3100.0000, NULL, NULL, NULL, 0.5000, '2026-04-04 16:55:39', 'en', 'default', 2, 59, '2026-04-08 14:59:25', NULL, NULL),
(60, 'SIDR-CONF-variant-003', 'simple', NULL, 'Pure Sidr Honey 1 KG', 'SIDR-CONF-variant-20', 'SIDR-CONF-variant-20', 'SIDR-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 5800.0000, NULL, NULL, NULL, 1.0000, '2026-04-04 16:55:39', 'en', 'default', 2, 60, '2026-04-08 14:59:25', NULL, NULL),
(61, 'ACA-CONF', 'configurable', 'SO-HON-002', 'Pure Acacia Honey', '<p>Light and mild-flavored acacia honey with natural sweetness. Perfect for daily use and healthy lifestyle.</p>', '<p>Acacia honey is known for its light color, mild taste, and smooth texture. It is a naturally sweet and versatile honey that can be used daily in tea, desserts, or as a healthy sugar alternative.</p>\r\n<p>Rich in natural nutrients and antioxidants, acacia honey supports overall health and provides a natural energy boost. Carefully packed to maintain purity and freshness.</p>', 'pure-acacia-honey', 1, 0, 1, 'Buy Acacia Honey Online in Pakistan | Swat Organics', 'acacia honey pakistan, buy honey online, organic honey pakistan, pure honey price', 'Shop acacia honey online in Pakistan from Swat Organics. Light, natural, and perfect for daily use.', NULL, NULL, NULL, NULL, NULL, '2026-04-06 15:39:44', 'en', 'default', 2, 61, '2026-04-06 15:52:25', NULL, 1),
(62, 'ACA-250', 'simple', NULL, 'Pure Acacia Honey 250 G', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.2500, '2026-04-06 15:39:44', 'en', 'default', 2, 62, '2026-04-08 14:59:25', 61, NULL),
(63, 'ACA-500', 'simple', NULL, 'Pure Acacia Honey 500 G', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 0.5000, '2026-04-06 15:39:44', 'en', 'default', 2, 63, '2026-04-08 14:59:25', 61, NULL),
(64, 'ACA-1KG', 'simple', NULL, 'Pure Acacia Honey 1 KG', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 3900.0000, NULL, NULL, NULL, 1.0000, '2026-04-06 15:39:44', 'en', 'default', 2, 64, '2026-04-08 14:59:25', 61, NULL),
(65, 'MIX-CONF', 'configurable', 'SO-MIX-001', 'Premium Dry Fruit Mix', '<p>A premium mix of almonds, cashews, raisins, and more. Perfect for healthy snacking and energy boost.</p>', '<p>Our premium dry fruit mix is a carefully selected combination of high-quality nuts and dried fruits, including almonds, cashews, raisins, and more. This mix offers a perfect balance of taste, nutrition, and energy.</p>\r\n<p>Ideal for daily snacking, travel, or sharing with family. Packed with essential nutrients, it provides a natural boost of energy and supports a healthy lifestyle.</p>', 'premium-dry-fruit-mix', 1, 1, 1, 'Buy Premium Dry Fruit Mix Online in Pakistan | Swat Organics', 'dry fruit mix pakistan, mixed nuts pakistan, healthy snacks pakistan, buy dry fruits online', 'Shop premium dry fruit mix online in Pakistan from Swat Organics. Healthy, delicious, and perfect for daily snacking.', NULL, NULL, NULL, NULL, NULL, '2026-04-06 16:42:09', 'en', 'default', 2, 65, '2026-04-06 16:47:29', NULL, 1),
(66, 'MIX-250', 'simple', NULL, 'Premium Dry Fruit Mix 250 G', 'MIX-CONF-variant-18', 'MIX-CONF-variant-18', 'MIX-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 0.2500, '2026-04-06 16:42:09', 'en', 'default', 2, 66, '2026-04-08 14:59:25', 65, NULL),
(67, 'MIX-500', 'simple', NULL, 'Premium Dry Fruit Mix 500 G', 'MIX-CONF-variant-19', 'MIX-CONF-variant-19', 'MIX-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.5000, '2026-04-06 16:42:09', 'en', 'default', 2, 67, '2026-04-08 14:59:25', 65, NULL),
(68, 'MIX-1KG', 'simple', NULL, 'Premium Dry Fruit Mix 1 KG', 'MIX-CONF-variant-20', 'MIX-CONF-variant-20', 'MIX-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 1.0000, '2026-04-06 16:42:09', 'en', 'default', 2, 68, '2026-04-08 14:59:25', 65, NULL),
(69, 'COMBO-CONF', 'configurable', 'SO-COM-001', 'Honey & Nuts Energy Combo', '<p>A powerful combination of pure honey and premium nuts for natural energy, immunity, and daily health.</p>', '<p>The Honey &amp; Nuts Energy Combo is a perfect blend of pure honey and premium quality nuts, designed to provide natural energy and nutrition. This combination offers a balance of healthy fats, natural sugars, and essential nutrients.</p>\r\n<p>Ideal for boosting immunity, increasing energy levels, and supporting a healthy lifestyle. It also makes a great gift for family and friends.</p>', 'honey-nuts-energy-combo', 1, 1, 1, 'Buy Honey & Nuts Combo Online in Pakistan | Swat Organics', 'honey nuts combo pakistan, gift box dry fruits, energy mix pakistan, buy honey combo', 'Shop honey and nuts combo online in Pakistan from Swat Organics. Perfect for energy, health, and gifting.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 14:46:49', 'en', 'default', 2, 69, '2026-04-08 14:50:26', NULL, 1),
(70, 'COMBO-500', 'simple', NULL, 'Honey & Nuts Energy Combo 500 G', 'COMBO-CONF-variant-19', 'COMBO-CONF-variant-19', 'COMBO-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 2300.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 14:46:49', 'en', 'default', 2, 70, '2026-04-08 15:03:57', 69, NULL),
(71, 'COMBO-1KG', 'simple', NULL, 'Honey & Nuts Energy Combo 1 KG', 'COMBO-CONF-variant-20', 'COMBO-CONF-variant-20', 'COMBO-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 4200.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 14:46:49', 'en', 'default', 2, 71, '2026-04-08 15:03:57', 69, NULL),
(72, 'PIS-SHELL-CONF', 'configurable', 'SO-NUT-003', 'Pistachios With Shell', '<p>Premium pistachios with shell, lightly roasted for rich taste and crunch. A perfect healthy snack.</p>', '<p>Premium quality pistachios with shell, known for their rich flavor and crunchy texture. These pistachios are lightly roasted to enhance taste while preserving their natural nutrients.</p>\r\n<p>Packed with protein, healthy fats, and antioxidants, pistachios are a great choice for healthy snacking. Perfect for daily use, gatherings, and gifting.</p>', 'pistachios-with-shell', 1, 1, 1, 'Buy Pistachios With Shell Online in Pakistan | Swat Organics', 'pistachios pakistan, pista price pakistan, buy pista online, roasted pistachios pakistan', 'Shop premium pistachios with shell online in Pakistan from Swat Organics. Fresh, crunchy, and healthy snack.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 15:26:48', 'en', 'default', 2, 72, '2026-04-08 15:31:37', NULL, 1),
(73, 'PIS-250', 'simple', NULL, 'Pistachios With Shell 250 G', 'PIS-SHELL-CONF-variant-18', 'PIS-SHELL-CONF-variant-18', 'PIS-SHELL-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 15:26:48', 'en', 'default', 2, 73, '2026-04-08 15:31:37', 72, NULL),
(74, 'PIS-500', 'simple', NULL, 'Pistachios With Shell 500 G', 'PIS-SHELL-CONF-variant-19', 'PIS-SHELL-CONF-variant-19', 'PIS-SHELL-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 2100.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 15:26:48', 'en', 'default', 2, 74, '2026-04-08 15:31:37', 72, NULL),
(75, 'PIS-1KG', 'simple', NULL, 'Pistachios With Shell 1 KG', 'PIS-SHELL-CONF-variant-20', 'PIS-SHELL-CONF-variant-20', 'PIS-SHELL-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 4000.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 15:26:48', 'en', 'default', 2, 75, '2026-04-08 15:31:37', 72, NULL),
(76, 'BASIL-CONF', 'configurable', 'SO-SED-003', 'Basil Seeds (Tukhmalanga)', '<p>Basil seeds (Tukhmalanga) are a refreshing superfood used in drinks and desserts. Perfect for cooling and hydration.</p>', '<p>Basil seeds, also known as Tukhmalanga, are a popular natural ingredient used in summer drinks and desserts. These seeds swell when soaked in water and provide a cooling effect to the body.</p>\r\n<p>Rich in fiber and nutrients, basil seeds help improve digestion, hydration, and overall wellness. Perfect for adding to juices, milkshakes, and traditional drinks.</p>', 'basil-seeds-tukhmalanga', 1, 0, 1, 'Buy Basil Seeds (Tukhmalanga) Online in Pakistan | Swat Organics', 'tukhmalanga pakistan, basil seeds price pakistan, buy basil seeds online, cooling seeds pakistan', 'Shop basil seeds (tukhmalanga) online in Pakistan from Swat Organics. Perfect for summer drinks, hydration, and digestion.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 15:46:40', 'en', 'default', 2, 76, '2026-04-08 15:47:34', NULL, 1),
(77, 'BASIL-250', 'simple', NULL, 'Basil Seeds (Tukhmalanga) 250 G', 'BASIL-CONF-variant-18', 'BASIL-CONF-variant-18', 'BASIL-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 400.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 15:46:40', 'en', 'default', 2, 77, '2026-04-08 15:47:34', 76, NULL),
(78, 'BASIL-500', 'simple', NULL, 'Basil Seeds (Tukhmalanga) 500 G', 'BASIL-CONF-variant-19', 'BASIL-CONF-variant-19', 'BASIL-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 750.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 15:46:40', 'en', 'default', 2, 78, '2026-04-08 15:47:34', 76, NULL),
(79, 'BASIL-1KG', 'simple', NULL, 'Basil Seeds (Tukhmalanga) 1 KG', 'BASIL-CONF-variant-20', 'BASIL-CONF-variant-20', 'BASIL-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 1400.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 15:46:40', 'en', 'default', 2, 79, '2026-04-08 15:47:34', 76, NULL),
(80, 'MOR-CONF', 'configurable', 'SO-SUP-001', 'Moringa Powder (Superfood)', '<p>Moringa powder is a powerful superfood rich in nutrients and antioxidants. Ideal for boosting energy and immunity.</p>', '<p>Moringa powder is made from dried moringa leaves and is considered one of the most nutrient-rich superfoods. It is packed with vitamins, minerals, antioxidants, and plant-based protein.</p>\r\n<p>Known for boosting energy, improving immunity, and supporting overall health, moringa powder can be easily added to smoothies, water, or meals. A perfect addition to a healthy lifestyle.</p>', 'moringa-powder-superfood', 1, 1, 1, 'Buy Moringa Powder Online in Pakistan | Superfood | Swat Organics', 'moringa powder pakistan, buy moringa online, superfood pakistan, moringa benefits', 'Shop moringa powder online in Pakistan from Swat Organics. Rich in nutrients, perfect for energy, immunity, and healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 15:51:23', 'en', 'default', 2, 80, '2026-04-08 15:52:11', NULL, 1),
(81, 'MOR-250', 'simple', NULL, 'Moringa Powder (Superfood) 250 G', 'MOR-CONF-variant-18', 'MOR-CONF-variant-18', 'MOR-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 15:51:23', 'en', 'default', 2, 81, '2026-04-08 15:52:11', 80, NULL),
(82, 'MOR-500', 'simple', NULL, 'Moringa Powder (Superfood) 500 G', 'MOR-CONF-variant-19', 'MOR-CONF-variant-19', 'MOR-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 15:51:23', 'en', 'default', 2, 82, '2026-04-08 15:52:11', 80, NULL),
(83, 'MOR-1KG', 'simple', NULL, 'Moringa Powder (Superfood) 1 KG', 'MOR-CONF-variant-20', 'MOR-CONF-variant-20', 'MOR-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 15:51:23', 'en', 'default', 2, 83, '2026-04-08 15:52:11', 80, NULL),
(84, 'ASH-CONF', 'configurable', 'SO-SUP-002', 'Ashwagandha Powder', '<p>Ashwagandha powder is a natural herbal supplement known for reducing stress, boosting energy, and improving overall wellness.</p>', '<p>Ashwagandha is a well-known herbal supplement used for centuries to support mental and physical health. It helps reduce stress, improve energy levels, and enhance overall well-being.</p>\r\n<p>Rich in natural compounds, ashwagandha powder is ideal for daily use and can be added to milk or smoothies. A perfect addition to a healthy lifestyle and fitness routine.</p>', 'ashwagandha-powder', 1, 1, 1, 'Buy Ashwagandha Powder Online in Pakistan | Swat Organics', 'ashwagandha pakistan, ashwagandha powder price, herbal supplement pakistan, buy ashwagandha online', 'Shop ashwagandha powder online in Pakistan from Swat Organics. Natural supplement for stress, energy, and wellness.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 15:55:03', 'en', 'default', 2, 84, '2026-04-08 15:55:55', NULL, 1),
(85, 'ASH-250', 'simple', NULL, 'Ashwagandha Powder 250 G', 'ASH-CONF-variant-18', 'ASH-CONF-variant-18', 'ASH-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 15:55:03', 'en', 'default', 2, 85, '2026-04-08 15:55:55', 84, NULL),
(86, 'ASH-500', 'simple', NULL, 'Ashwagandha Powder 500 G', 'ASH-CONF-variant-19', 'ASH-CONF-variant-19', 'ASH-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1800.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 15:55:03', 'en', 'default', 2, 86, '2026-04-08 15:55:55', 84, NULL),
(87, 'ASH-1KG', 'simple', NULL, 'Ashwagandha Powder 1 KG', 'ASH-CONF-variant-20', 'ASH-CONF-variant-20', 'ASH-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3400.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 15:55:03', 'en', 'default', 2, 87, '2026-04-08 15:55:55', 84, NULL),
(88, 'PRU-CONF', 'configurable', 'SO-DRF-005', 'Prunes (Dried Aloo Bukhara)', '<p>Prunes (dried aloo bukhara) are naturally sweet and known for supporting digestion and overall health.</p>', '<p>Prunes, also known as dried aloo bukhara, are a nutritious dried fruit with a naturally sweet and slightly tangy taste. They are rich in fiber, vitamins, and antioxidants.</p>\r\n<p>Known for supporting digestion and overall wellness, prunes are perfect for daily snacking or adding to your meals. Carefully selected and packed to maintain freshness and quality.</p>', 'prunes-dried-aloo-bukhara', 1, 0, 1, 'Buy Prunes (Dried Aloo Bukhara) Online in Pakistan | Swat Organics', 'aloo bukhara pakistan, prunes pakistan, dried plums pakistan, buy prunes online', 'Shop prunes (dried aloo bukhara) online in Pakistan from Swat Organics. Naturally sweet, healthy, and great for digestion.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 16:16:30', 'en', 'default', 2, 88, '2026-04-08 16:17:19', NULL, 1),
(89, 'PRU-250', 'simple', NULL, 'Prunes (Dried Aloo Bukhara) 250 G', 'PRU-CONF-variant-18', 'PRU-CONF-variant-18', 'PRU-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 700.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 16:16:30', 'en', 'default', 2, 89, '2026-04-08 16:17:19', 88, NULL),
(90, 'PRU-500', 'simple', NULL, 'Prunes (Dried Aloo Bukhara) 500 G', 'PRU-CONF-variant-19', 'PRU-CONF-variant-19', 'PRU-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1300.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 16:16:30', 'en', 'default', 2, 90, '2026-04-08 16:17:19', 88, NULL),
(91, 'PRU-1KG', 'simple', NULL, 'Prunes (Dried Aloo Bukhara) 1 KG', 'PRU-CONF-variant-20', 'PRU-CONF-variant-20', 'PRU-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 2400.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 16:16:30', 'en', 'default', 2, 91, '2026-04-08 16:17:19', 88, NULL),
(92, 'OLV-CONF', 'configurable', 'SO-OIL-001', 'Extra Virgin Olive Oil', '<p>Extra virgin olive oil, cold-pressed and rich in nutrients. Perfect for cooking, salads, and healthy lifestyle.</p>', '<p>Extra virgin olive oil is the highest quality olive oil, extracted through cold pressing without chemicals. It retains natural nutrients, antioxidants, and healthy fats.</p>\r\n<p>Known for supporting heart health and overall wellness, it is perfect for cooking, salads, and daily use. Carefully packed to preserve purity and freshness.</p>', 'extra-virgin-olive-oil', 1, 0, 1, 'Buy Extra Virgin Olive Oil Online in Pakistan | Swat Organics', 'olive oil pakistan, extra virgin olive oil price, buy olive oil online, healthy oil pakistan', 'Shop extra virgin olive oil online in Pakistan from Swat Organics. Cold-pressed, healthy, and perfect for daily use.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 16:21:59', 'en', 'default', 2, 92, '2026-04-08 16:25:42', NULL, 1),
(93, 'OLV-250ML', 'simple', NULL, 'Extra Virgin Olive Oil 250ml', 'OLV-CONF-variant-56', 'OLV-CONF-variant-56', 'OLV-CONF-variant-56', NULL, NULL, 1, NULL, NULL, NULL, 900.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 16:21:59', 'en', 'default', 2, 93, '2026-04-08 16:25:42', 92, NULL),
(94, 'OLV-500ML', 'simple', NULL, 'Extra Virgin Olive Oil 500ml', 'OLV-CONF-variant-57', 'OLV-CONF-variant-57', 'OLV-CONF-variant-57', NULL, NULL, 1, NULL, NULL, NULL, 1700.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 16:21:59', 'en', 'default', 2, 94, '2026-04-08 16:25:42', 92, NULL),
(95, 'OLV-1L', 'simple', NULL, 'Extra Virgin Olive Oil 1 Liter', 'OLV-CONF-variant-58', 'OLV-CONF-variant-58', 'OLV-CONF-variant-58', NULL, NULL, 1, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 16:21:59', 'en', 'default', 2, 95, '2026-04-08 16:25:42', 92, NULL),
(96, 'MACA-CONF', 'configurable', 'SO-SUP-003', 'Maca Root Powder', '<p>Maca root powder is a natural superfood known for boosting energy, stamina, and overall wellness.</p>', '<p>Maca root powder is a natural superfood derived from the maca plant, traditionally used to enhance energy, stamina, and overall vitality. It is rich in essential nutrients, vitamins, and minerals.</p>\r\n<p>Perfect for adding to smoothies, milk, or daily diet, maca root supports an active lifestyle and overall wellness. Carefully sourced and packed to ensure quality and freshness.</p>', 'maca-root-powder', 1, 0, 1, 'Buy Maca Root Powder Online in Pakistan | Swat Organics', 'maca root pakistan, maca powder price pakistan, superfood pakistan, buy maca online', 'Shop maca root powder online in Pakistan from Swat Organics. Natural superfood for energy, stamina, and healthy lifestyle.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 16:37:54', 'en', 'default', 2, 96, '2026-04-08 16:39:45', NULL, 1),
(97, 'MACA-250', 'simple', NULL, 'Maca Root Powder 250 G', 'MACA-CONF-variant-18', 'MACA-CONF-variant-18', 'MACA-CONF-variant-18', NULL, NULL, 1, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 0.2500, '2026-04-08 16:37:54', 'en', 'default', 2, 97, '2026-04-08 16:39:45', 96, NULL),
(98, 'MACA-500', 'simple', NULL, 'Maca Root Powder 500 G', 'MACA-CONF-variant-19', 'MACA-CONF-variant-19', 'MACA-CONF-variant-19', NULL, NULL, 1, NULL, NULL, NULL, 1800.0000, NULL, NULL, NULL, 0.5000, '2026-04-08 16:37:54', 'en', 'default', 2, 98, '2026-04-08 16:39:45', 96, NULL),
(99, 'MACA-1KG', 'simple', NULL, 'Maca Root Powder 1 KG', 'MACA-CONF-variant-20', 'MACA-CONF-variant-20', 'MACA-CONF-variant-20', NULL, NULL, 1, NULL, NULL, NULL, 3400.0000, NULL, NULL, NULL, 1.0000, '2026-04-08 16:37:54', 'en', 'default', 2, 99, '2026-04-08 16:39:45', 96, NULL),
(100, 'SHIL-CONF', 'configurable', 'SO-SUP-004', 'Shilajit (Pure Resin)', '<p>Pure Shilajit resin sourced from the Himalayan region. A natural supplement traditionally used for overall wellness.</p>', '<p>Shilajit is a natural mineral-rich resin found in mountainous regions, traditionally used as a wellness supplement. It contains essential minerals and natural compounds that support overall health and vitality.</p>\r\n<p>Carefully sourced and purified to ensure quality, Shilajit can be used as part of a balanced lifestyle. It is recommended to use in moderation and consult a professional if needed.</p>', 'shilajit-pure-resin', 1, 0, 1, 'Buy Shilajit (Pure Resin) Online in Pakistan | Swat Organics', 'shilajit pakistan, pure shilajit price, buy shilajit online, natural supplement pakistan', 'Shop pure shilajit resin online in Pakistan from Swat Organics. Natural supplement for wellness and vitality.', NULL, NULL, NULL, NULL, NULL, '2026-04-08 16:49:18', 'en', 'default', 2, 100, '2026-04-08 16:50:29', NULL, 1),
(101, 'SHIL-10G', 'simple', NULL, 'Shilajit (Pure Resin) 10 G', 'SHIL-CONF-variant-63', 'SHIL-CONF-variant-63', 'SHIL-CONF-variant-63', NULL, NULL, 1, NULL, NULL, NULL, 1500.0000, NULL, NULL, NULL, 0.0100, '2026-04-08 16:49:18', 'en', 'default', 2, 101, '2026-04-08 16:50:29', 100, NULL),
(102, 'SHIL-20G', 'simple', NULL, 'Shilajit (Pure Resin) 20 G', 'SHIL-CONF-variant-64', 'SHIL-CONF-variant-64', 'SHIL-CONF-variant-64', NULL, NULL, 1, NULL, NULL, NULL, 2800.0000, NULL, NULL, NULL, 0.0200, '2026-04-08 16:49:18', 'en', 'default', 2, 102, '2026-04-08 16:50:29', 100, NULL),
(103, 'SHIL-50G', 'simple', NULL, 'Shilajit (Pure Resin) 50 G', 'SHIL-CONF-variant-16', 'SHIL-CONF-variant-16', 'SHIL-CONF-variant-16', NULL, NULL, 1, NULL, NULL, NULL, 6000.0000, NULL, NULL, NULL, 0.0500, '2026-04-08 16:49:18', 'en', 'default', 2, 103, '2026-04-08 16:50:29', 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_grouped_products`
--

DROP TABLE IF EXISTS `product_grouped_products`;
CREATE TABLE IF NOT EXISTS `product_grouped_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `associated_product_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`),
  KEY `pgp_product_id_idx` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `prod_img_product_id_idx` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(1, 'images', 'product/9/WU99YVtFfVyFUet9SsmeFdO1s4fES5LD9BBLD16W.webp', 9, 1),
(2, 'images', 'product/10/FCnKL3hhNNpKY3jYjVlQh8bpYXTc7AKJYldXlf8p.webp', 10, 1),
(3, 'images', 'product/11/49nhG0XOmO79PeoixQoZVT7RIT1V5874YLmXlvFl.webp', 11, 1),
(4, 'images', 'product/12/0grJtWAltCknHieJOqWLnxP1VAgOlZoTQrlHXpm0.webp', 12, 1),
(5, 'images', 'product/13/O55ltH6Gju2kDHBXWtlYTXHlkuVz0iMW6UPd6KHO.webp', 13, 1),
(6, 'images', 'product/14/PbPnmmHNlFFYUxOWMRXGC87Tlv3BpyKH7TxCJQIP.webp', 14, 1),
(7, 'images', 'product/15/O1bi01qX1Z07Aa8CVhAePcezxQCVDwPti2KdpNAY.webp', 15, 1),
(8, 'images', 'product/16/SlNYER3p1OAPDJebEdT0wQtgXbCqLEsc4QnoBEXv.webp', 16, 1),
(9, 'images', 'product/17/FC23WXTSBXT4gIbIm0cFvTKwWae00ZaVglUXMDS1.webp', 17, 1),
(10, 'images', 'product/18/fUFpQJKXXKcIE21JHVORJbS5FA0kYpm6YcGN3BZ2.webp', 18, 1),
(11, 'images', 'product/19/xwIucJK2ZDvh2fDY5x3nIRMJCpH8bSCmWMIgB34j.webp', 19, 1),
(12, 'images', 'product/20/ccc0y4Ldayv3edYPpAWA4eXtKT6k81xVxXw7hhqW.webp', 20, 1),
(13, 'images', 'product/21/QVfNv0uBCai82ZOkLNu6x7x1lZoC2KvEZWkaNN2e.webp', 21, 1),
(14, 'images', 'product/22/MdT9uUldetEEv7N1YnpDs6J9kxDkIBXnlwV03wOO.webp', 22, 1),
(15, 'images', 'product/23/99EPOCxVlE5AkpgnwKvXRv6NtORg5NGnOzjCCiCD.webp', 23, 1),
(16, 'images', 'product/24/41r9CJsTvZmF9zYiaTEnANUj1lSCl3vACnoHGfnA.webp', 24, 1),
(17, 'images', 'product/25/je2JstzvTxNYiAKnfSj8TmGpYc423YQWqtKth8OA.webp', 25, 1),
(18, 'images', 'product/26/488Cyimjzbgq3RkdFN59crlya7mGQQpoJSrezlBe.webp', 26, 1),
(19, 'images', 'product/27/GkpZ6kCpTKra5CQg2YFO07yTx4476SrAlRdAXwl9.webp', 27, 1),
(20, 'images', 'product/28/VB4JQXDTWSHbmpIA3u6SPBPwRAPGMMNGnUUcSAFA.webp', 28, 1),
(34, 'images', 'product/30/q5gkrK7YAbG14spvfaAUeunyFtOaN1VONMmQC8Gp.webp', 30, 1),
(35, 'images', 'product/31/yCuBeUQ2kTFbwV6m7RyoQDZqL7pH6cfKeBCUq4WX.webp', 31, 1),
(36, 'images', 'product/32/cY35Q8FXocm4NYhIxRlX0lkDJOpQILjTokhlsq8V.webp', 32, 1),
(37, 'images', 'product/41/djKjM56URmNok5RpGOmyR2RX4WTIz1viKI4RUDUK.webp', 41, 1),
(25, 'images', 'product/33/w4EMe7Gc1nhJnV0a4Phwq0VOaoQCaRZZX6oOiOcH.webp', 33, 1),
(26, 'images', 'product/34/SPrzYPcTGQKOisxIT7lOQJaNT4ZOCVJcHB3M6vQ7.webp', 34, 1),
(27, 'images', 'product/35/UatxOJSt9aKxUdjpSKP4vvdyT2lNfYNmu3BRY8QG.webp', 35, 1),
(28, 'images', 'product/36/fIRKfkOHkYxs7vJ8EoT6eV51j94aqlF3yys1Ut49.webp', 36, 1),
(29, 'images', 'product/37/XzRLIIhzbv3MxSYOesRMSrb7Dvqjy9dkEitkI0eu.webp', 37, 1),
(30, 'images', 'product/38/4afwNrgFbaioVlZPBg1Rxr4DoX0M6QMl4HafiwUc.webp', 38, 1),
(31, 'images', 'product/39/ZWD0EaadRQwrIY3rYqGupzgjItZ5OWLvvlyBqo2n.webp', 39, 1),
(32, 'images', 'product/40/1XhTsAGaPEK8SA28lfjrkaffAHU9IfhCK59mMSAF.webp', 40, 1),
(33, 'images', 'product/29/bEzF8ZkE2P8tZ44vAp0CMNCfNRJ6ICSjCpwkMVFl.webp', 29, 1),
(38, 'images', 'product/42/8fm6hcnqOhqKd60FORqaxjWHMlJLHUgBzuK6bNzt.webp', 42, 1),
(39, 'images', 'product/43/djj5RlNouKiMLMInZujZ40dqp03FRHOBDuy0YzlK.webp', 43, 1),
(40, 'images', 'product/44/uewd86Ygpt74Hnf5D3SDbjUuwhSkjmaaInbzBA80.webp', 44, 1),
(41, 'images', 'product/45/bbjo1GUqAcnPSf9YIT41DvKkLp2JxYQlJPoqL4G1.webp', 45, 1),
(42, 'images', 'product/46/XfN9XosxipnQuT7WRJxCZRYU4qWDZh0MQRa76Xn2.webp', 46, 1),
(43, 'images', 'product/47/riGENAFHGBVGSXbnND2Uoc7UvwJCON18Q0vHCZrs.webp', 47, 1),
(44, 'images', 'product/48/bjs8xn2qYNSq7bgvlLowoJL6UozMjsK0FnIp9ome.webp', 48, 1),
(45, 'images', 'product/49/VeRF3it76yYaVNIumObQtSGmnHDDiCuBT2TQ2KpM.webp', 49, 1),
(46, 'images', 'product/50/fJUgnCIUrwh1M8FvncdJ9zApZQAP9I7pjx0Axws1.webp', 50, 1),
(47, 'images', 'product/51/VbAmEIpzOpHptueMRG0KmWAm8UA6TRCcuLTdwbUu.webp', 51, 1),
(48, 'images', 'product/52/lfa2kLb0p7drxqdMIptaShpTHnL3BOkDMiSim0h4.webp', 52, 1),
(49, 'images', 'product/53/g9VM6V6O6EdBHvJgYGqgZ3ikUfCgRvmxsl8rx1NJ.webp', 53, 1),
(50, 'images', 'product/54/fLFJWQFhDVG4URL1qJqqpSszrk3CbnmjqQ6kqadA.webp', 54, 1),
(51, 'images', 'product/55/LCdQtvQNqcPZQOtFYh46w34LvENaJKTVWXxiH6gt.webp', 55, 1),
(52, 'images', 'product/56/HMNXFkcme9jydrpW6M0GJ6CANorQfwjNyVPyCD2O.webp', 56, 1),
(53, 'images', 'product/57/OW2vZW2vCsTX5200mwsoTNBJq6GgDYo64s5TpsaO.webp', 57, 1),
(54, 'images', 'product/58/buWYXv6ejFPenPgLKpXtUgcyft4pleUc40UCXed0.webp', 58, 1),
(55, 'images', 'product/59/l5dXJ2CngGvNoV7uXNiBBdHtIFHIqSImK86thnGC.webp', 59, 1),
(56, 'images', 'product/60/VN53S72Y2NF5ps4LFTUuNGkMOw8W1xZoQONMybwG.webp', 60, 1),
(62, 'images', 'product/62/XBd7kDdH5F9rz4PWD31dJ22ruOEAXuwlrSWgjXHM.webp', 62, 1),
(63, 'images', 'product/63/3TqfDKbdDMP8AytlHaQZioQtOK1BtiPdE4MylXy0.webp', 63, 1),
(64, 'images', 'product/64/F1OPVdHfN0M4gMqkOyBJiHpR8iesmhuzJmyFUAUN.webp', 64, 1),
(65, 'images', 'product/65/fRh1PMnzM3mNDZkacnplPzhlBMIAIVl8dlUVYKSk.webp', 65, 1),
(61, 'images', 'product/61/msRj8JUkBVR6jgQI8bFAjkkK2GbpEv7O8GxiZhN5.webp', 61, 1),
(66, 'images', 'product/66/9CQdc3ZcijYgxJcBvB6dnCvPZNCdwub7fJ1vrLGi.webp', 66, 1),
(67, 'images', 'product/67/ccbu11xfVOey5XyR9DaLeDJjFdtdYIvxfc9VqA6C.webp', 67, 1),
(68, 'images', 'product/68/ONysU2N5aP8fe7Xh0yW5iw2aDIrcySqcImQUnuuy.webp', 68, 1),
(69, 'images', 'product/69/FeKVDIvxVMRMXCDgRMEph8uAv23orgmHhyI0IR4t.webp', 69, 1),
(70, 'images', 'product/70/BKUA5aIjF3okYSED4mN0XoO1ql33wY5ACc0NCAKy.webp', 70, 1),
(71, 'images', 'product/71/Fh956vm1fr6Gld5zWrHkQH1Ly7SUQ8o4eEWizlOo.webp', 71, 1),
(72, 'images', 'product/72/B2olBPhNh09D2lqKGi5DeogSMAIcKnhedjrILnzm.webp', 72, 1),
(73, 'images', 'product/73/nPF7GDeG00h95ko8x478kZfUg5oCMl8toddMsEV2.webp', 73, 1),
(74, 'images', 'product/74/HbVSwK9cMZhRcMF6x9NV9BgL7LWH5WUpofTKrmr4.webp', 74, 1),
(75, 'images', 'product/75/BABNCcPwn2H2jEmEm0d5FotE576hjY0zFCkaztWl.webp', 75, 1),
(76, 'images', 'product/76/HuryrDoAAngNU0afqygSxGVRqgOTwDtaI4cVzC4A.webp', 76, 1),
(77, 'images', 'product/77/0YcJCvNFZU9EhMRf7tjmS0ZFjmPLUT4a7V1zIteF.webp', 77, 1),
(78, 'images', 'product/78/bOnQTgGPBKgES3FhH7dgauiYcXbYmhuHfnTRY26K.webp', 78, 1),
(79, 'images', 'product/79/NamMZuLXQzucSXGYg8k6TIzwuFqFvTajuj76sVvr.webp', 79, 1),
(80, 'images', 'product/80/EzC2C8zhP8ZKPSmKqB3QD2LbrybcHSZ0eAFf1dRr.webp', 80, 1),
(81, 'images', 'product/81/Ruqde5FODEmRhd8VOsBPlJNZ6ydCxXq75W27xcoq.webp', 81, 1),
(82, 'images', 'product/82/oOkQSZZ1QQkW7HQzSIrlgJaQBhydiBBRi0C2nSs5.webp', 82, 1),
(83, 'images', 'product/83/m1pbxfCSrkrLqrw1COEpPFqF4VB268gB2FWavDPX.webp', 83, 1),
(84, 'images', 'product/84/UDcFpiJavW38Odn8ABO1UkJIXFJNEIfyl32KetSR.webp', 84, 1),
(85, 'images', 'product/85/nTelhe9HdIt75J58ELele8oIEK7WyEjcX0OZFAFQ.webp', 85, 1),
(86, 'images', 'product/86/kOqi4mubxAbKC4w9W9IENJhA3tDX3Lc4mz2HrSbX.webp', 86, 1),
(87, 'images', 'product/87/tAgitE6FPlOK67wj4usTinqaG01v3VhanKOzV1is.webp', 87, 1),
(88, 'images', 'product/88/YBBuB9lUV6VetxL0U6VbGzYNggJealNhucM8ZRiw.webp', 88, 1),
(89, 'images', 'product/89/QYsozImDLIbot9CVH09Zq2KHxrfvPrWcTKZ9KOyx.webp', 89, 1),
(90, 'images', 'product/90/s1GORTTlqdQQbjPwNnpibqZA3MxEiQPXZHGP4t2a.webp', 90, 1),
(91, 'images', 'product/91/bkfVo98MTLrt7mktnmXzt8SMkBNdXXVBK1Q7NI1Z.webp', 91, 1),
(92, 'images', 'product/92/M1aMdMZddSrk22wQ2SjhMv5GjfsgLaK6c6rImU2H.webp', 92, 1),
(93, 'images', 'product/93/JYb2Bq07qYemDCe1nVAf08LZEgwnjvwOFULkjPZm.webp', 93, 1),
(94, 'images', 'product/94/nFeung82XjIE1dLv75o343Uz2V62lomIZof4ZKB3.webp', 94, 1),
(95, 'images', 'product/95/IT17lEyjsWbaAzLOGpZ4N4mQRhZANXJun5jnZJIm.webp', 95, 1),
(96, 'images', 'product/96/Yo0PtAGP8zQCwJv3BxoeLiDZ8TN1pnBjUGUtPNUW.webp', 96, 1),
(97, 'images', 'product/97/RuoDIT4UGNsdyjajEL0ORCQYK0mke1NZ2TSsUwDr.webp', 97, 1),
(98, 'images', 'product/98/N6Z5mgS8sMrJtMonYDY5rDNP20DsfHR591GMIHcN.webp', 98, 1),
(99, 'images', 'product/99/N1zZEdLrD2hVUw1uKHUaCtm33RcjaaErig5gcJUG.webp', 99, 1),
(100, 'images', 'product/100/XxTlVUxEVE7YQHuoQvaxEQyHejLtgVaukFm9kdRf.webp', 100, 1),
(101, 'images', 'product/101/ZnYrRA6AFNVjhXEGVbxvE14Qm5cuO4xRnFJ9ktqc.webp', 101, 1),
(102, 'images', 'product/102/aRj1JV3VLRiGvU686BOUvTAQxip0w7TUtGMPHsR9.webp', 102, 1),
(103, 'images', 'product/103/xv8hCSd6K1dAqE3ivfFZ6o6UJlTuIh6Dx8rieDPP.webp', 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

DROP TABLE IF EXISTS `product_inventories`;
CREATE TABLE IF NOT EXISTS `product_inventories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `inventory_source_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(1, 12, 2, 0, 1),
(2, 100, 10, 0, 1),
(3, 100, 11, 0, 1),
(4, 100, 12, 0, 1),
(5, 100, 14, 0, 1),
(6, 100, 15, 0, 1),
(7, 100, 16, 0, 1),
(8, 100, 18, 0, 1),
(9, 100, 19, 0, 1),
(10, 100, 20, 0, 1),
(11, 100, 22, 0, 1),
(12, 100, 23, 0, 1),
(13, 100, 24, 0, 1),
(14, 100, 26, 0, 1),
(15, 100, 27, 0, 1),
(16, 1500, 28, 0, 1),
(17, 100, 30, 0, 1),
(18, 100, 31, 0, 1),
(19, 100, 32, 0, 1),
(20, 100, 34, 0, 1),
(21, 100, 35, 0, 1),
(22, 1000, 36, 0, 1),
(23, 1000, 38, 0, 1),
(24, 1000, 39, 0, 1),
(25, 1000, 40, 0, 1),
(26, 100, 42, 0, 1),
(27, 1000, 43, 0, 1),
(28, 1000, 44, 0, 1),
(29, 100, 46, 0, 1),
(30, 100, 47, 0, 1),
(31, 100, 48, 0, 1),
(32, 1000, 50, 0, 1),
(33, 1000, 51, 0, 1),
(34, 1000, 52, 0, 1),
(35, 1000, 54, 0, 1),
(36, 1000, 55, 0, 1),
(37, 1000, 56, 0, 1),
(38, 1000, 58, 0, 1),
(39, 1000, 59, 0, 1),
(40, 1000, 60, 0, 1),
(41, 500, 62, 0, 1),
(42, 500, 63, 0, 1),
(43, 500, 64, 0, 1),
(44, 50, 66, 0, 1),
(45, 50, 67, 0, 1),
(46, 50, 68, 0, 1),
(47, 30, 70, 0, 1),
(48, 30, 71, 0, 1),
(49, 50, 73, 0, 1),
(50, 50, 74, 0, 1),
(51, 50, 75, 0, 1),
(52, 50, 77, 0, 1),
(53, 50, 78, 0, 1),
(54, 50, 79, 0, 1),
(55, 40, 81, 0, 1),
(56, 40, 82, 0, 1),
(57, 40, 83, 0, 1),
(58, 40, 85, 0, 1),
(59, 40, 86, 0, 1),
(60, 40, 87, 0, 1),
(61, 50, 89, 0, 1),
(62, 50, 90, 0, 1),
(63, 50, 91, 0, 1),
(64, 30, 93, 0, 1),
(65, 30, 94, 0, 1),
(66, 30, 95, 0, 1),
(67, 40, 97, 0, 1),
(68, 40, 98, 0, 1),
(69, 40, 99, 0, 1),
(70, 20, 101, 0, 1),
(71, 20, 102, 0, 1),
(72, 20, 103, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_indices`
--

DROP TABLE IF EXISTS `product_inventory_indices`;
CREATE TABLE IF NOT EXISTS `product_inventory_indices` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  KEY `product_inventory_indices_channel_id_foreign` (`channel_id`),
  KEY `prod_inv_product_id_idx` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 1, NULL, '2025-12-27 14:55:55'),
(2, 100, 10, 1, NULL, NULL),
(3, 100, 11, 1, NULL, NULL),
(4, 100, 12, 1, NULL, NULL),
(5, 0, 9, 1, NULL, NULL),
(6, 100, 14, 1, NULL, '2026-04-01 14:37:00'),
(7, 100, 15, 1, NULL, '2026-04-01 14:37:00'),
(8, 100, 16, 1, NULL, NULL),
(9, 0, 13, 1, NULL, NULL),
(10, 100, 18, 1, NULL, NULL),
(11, 100, 19, 1, NULL, NULL),
(12, 100, 20, 1, NULL, NULL),
(13, 0, 17, 1, NULL, NULL),
(14, 100, 22, 1, NULL, NULL),
(15, 100, 23, 1, NULL, NULL),
(16, 100, 24, 1, NULL, NULL),
(17, 0, 21, 1, NULL, NULL),
(18, 100, 26, 1, NULL, NULL),
(19, 100, 27, 1, NULL, NULL),
(20, 1500, 28, 1, NULL, NULL),
(21, 0, 25, 1, NULL, NULL),
(22, 100, 30, 1, NULL, NULL),
(23, 100, 31, 1, NULL, NULL),
(24, 100, 32, 1, NULL, NULL),
(25, 0, 29, 1, NULL, NULL),
(26, 100, 34, 1, NULL, NULL),
(27, 100, 35, 1, NULL, NULL),
(28, 1000, 36, 1, NULL, NULL),
(29, 0, 33, 1, NULL, NULL),
(30, 1000, 38, 1, NULL, NULL),
(31, 1000, 39, 1, NULL, NULL),
(32, 1000, 40, 1, NULL, NULL),
(33, 0, 37, 1, NULL, NULL),
(34, 100, 42, 1, NULL, NULL),
(35, 1000, 43, 1, NULL, NULL),
(36, 1000, 44, 1, NULL, NULL),
(37, 0, 41, 1, NULL, NULL),
(38, 100, 46, 1, NULL, NULL),
(39, 100, 47, 1, NULL, NULL),
(40, 100, 48, 1, NULL, NULL),
(41, 0, 45, 1, NULL, NULL),
(42, 1000, 50, 1, NULL, NULL),
(43, 1000, 51, 1, NULL, NULL),
(44, 1000, 52, 1, NULL, NULL),
(45, 0, 49, 1, NULL, NULL),
(46, 1000, 54, 1, NULL, NULL),
(47, 1000, 55, 1, NULL, NULL),
(48, 1000, 56, 1, NULL, NULL),
(49, 0, 53, 1, NULL, NULL),
(50, 1000, 58, 1, NULL, NULL),
(51, 1000, 59, 1, NULL, NULL),
(52, 1000, 60, 1, NULL, NULL),
(53, 0, 57, 1, NULL, NULL),
(54, 0, 61, 0, '2026-04-06 10:42:43', '2026-04-06 10:42:43'),
(55, 50, 62, 0, '2026-04-06 10:42:43', '2026-04-06 10:42:43'),
(56, 50, 63, 0, '2026-04-06 10:42:43', '2026-04-06 10:42:43'),
(57, 50, 64, 0, '2026-04-06 10:42:43', '2026-04-06 10:42:43'),
(58, 500, 62, 1, NULL, NULL),
(59, 500, 63, 1, NULL, NULL),
(60, 500, 64, 1, NULL, NULL),
(61, 0, 61, 1, NULL, NULL),
(62, 0, 65, 0, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(63, 50, 66, 0, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(64, 50, 67, 0, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(65, 50, 68, 0, '2026-04-06 11:42:09', '2026-04-06 11:42:09'),
(66, 50, 66, 1, NULL, NULL),
(67, 50, 67, 1, NULL, NULL),
(68, 50, 68, 1, NULL, NULL),
(69, 0, 65, 1, NULL, NULL),
(70, 0, 69, 0, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(71, 30, 70, 0, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(72, 30, 71, 0, '2026-04-08 09:46:49', '2026-04-08 09:46:49'),
(73, 30, 70, 1, NULL, NULL),
(74, 30, 71, 1, NULL, NULL),
(75, 0, 69, 1, NULL, NULL),
(76, 0, 72, 0, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(77, 50, 73, 0, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(78, 50, 74, 0, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(79, 50, 75, 0, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(80, 50, 73, 1, NULL, NULL),
(81, 50, 74, 1, NULL, NULL),
(82, 50, 75, 1, NULL, NULL),
(83, 0, 72, 1, NULL, NULL),
(84, 0, 76, 0, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(85, 50, 77, 0, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(86, 50, 78, 0, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(87, 50, 79, 0, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(88, 50, 77, 1, NULL, NULL),
(89, 50, 78, 1, NULL, NULL),
(90, 50, 79, 1, NULL, NULL),
(91, 0, 76, 1, NULL, NULL),
(92, 0, 80, 0, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(93, 40, 81, 0, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(94, 40, 82, 0, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(95, 40, 83, 0, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(96, 40, 81, 1, NULL, NULL),
(97, 40, 82, 1, NULL, NULL),
(98, 40, 83, 1, NULL, NULL),
(99, 0, 80, 1, NULL, NULL),
(100, 0, 84, 0, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(101, 40, 85, 0, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(102, 40, 86, 0, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(103, 40, 87, 0, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(104, 40, 85, 1, NULL, NULL),
(105, 40, 86, 1, NULL, NULL),
(106, 40, 87, 1, NULL, NULL),
(107, 0, 84, 1, NULL, NULL),
(108, 0, 88, 0, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(109, 50, 89, 0, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(110, 50, 90, 0, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(111, 50, 91, 0, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(112, 50, 89, 1, NULL, NULL),
(113, 50, 90, 1, NULL, NULL),
(114, 50, 91, 1, NULL, NULL),
(115, 0, 88, 1, NULL, NULL),
(116, 0, 92, 0, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(117, 30, 93, 0, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(118, 30, 94, 0, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(119, 30, 95, 0, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(120, 30, 93, 1, NULL, NULL),
(121, 30, 94, 1, NULL, NULL),
(122, 30, 95, 1, NULL, NULL),
(123, 0, 92, 1, NULL, NULL),
(124, 0, 96, 0, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(125, 40, 97, 0, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(126, 40, 98, 0, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(127, 40, 99, 0, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(128, 40, 97, 1, NULL, NULL),
(129, 40, 98, 1, NULL, NULL),
(130, 40, 99, 1, NULL, NULL),
(131, 0, 96, 1, NULL, NULL),
(132, 0, 100, 0, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(133, 20, 101, 0, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(134, 20, 102, 0, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(135, 20, 103, 0, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(136, 20, 101, 1, NULL, NULL),
(137, 20, 102, 1, NULL, NULL),
(138, 20, 103, 1, NULL, NULL),
(139, 0, 100, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

DROP TABLE IF EXISTS `product_ordered_inventories`;
CREATE TABLE IF NOT EXISTS `product_ordered_inventories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 12, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_indices`
--

DROP TABLE IF EXISTS `product_price_indices`;
CREATE TABLE IF NOT EXISTS `product_price_indices` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL DEFAULT '1',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`),
  KEY `product_price_indices_channel_id_foreign` (`channel_id`),
  KEY `ppi_product_id_customer_group_id_idx` (`product_id`,`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL),
(2, 2, 2, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL),
(3, 2, 3, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL),
(4, 10, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(5, 10, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(6, 10, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(7, 11, 1, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(8, 11, 2, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(9, 11, 3, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(10, 12, 1, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(11, 12, 2, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(12, 12, 3, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(13, 9, 1, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(14, 9, 2, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(15, 9, 3, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(16, 14, 1, 1, 1200.0000, 1200.0000, 1200.0000, 1200.0000, NULL, '2026-04-08 09:59:25'),
(17, 14, 2, 1, 1200.0000, 1200.0000, 1200.0000, 1200.0000, NULL, '2026-04-08 09:59:25'),
(18, 14, 3, 1, 1200.0000, 1200.0000, 1200.0000, 1200.0000, NULL, '2026-04-08 09:59:25'),
(19, 15, 1, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, NULL, '2026-04-08 09:59:25'),
(20, 15, 2, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, NULL, '2026-04-08 09:59:25'),
(21, 15, 3, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, NULL, '2026-04-08 09:59:25'),
(22, 16, 1, 1, 4300.0000, 4300.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(23, 16, 2, 1, 4300.0000, 4300.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(24, 16, 3, 1, 4300.0000, 4300.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(25, 13, 1, 1, 1200.0000, 1200.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(26, 13, 2, 1, 1200.0000, 1200.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(27, 13, 3, 1, 1200.0000, 1200.0000, 4300.0000, 4300.0000, NULL, '2026-04-08 09:59:25'),
(28, 18, 1, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, NULL, '2026-04-08 09:59:25'),
(29, 18, 2, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, NULL, '2026-04-08 09:59:25'),
(30, 18, 3, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, NULL, '2026-04-08 09:59:25'),
(31, 19, 1, 1, 1900.0000, 1900.0000, 1900.0000, 1900.0000, NULL, '2026-04-08 09:59:25'),
(32, 19, 2, 1, 1900.0000, 1900.0000, 1900.0000, 1900.0000, NULL, '2026-04-08 09:59:25'),
(33, 19, 3, 1, 1900.0000, 1900.0000, 1900.0000, 1900.0000, NULL, '2026-04-08 09:59:25'),
(34, 20, 1, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(35, 20, 2, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(36, 20, 3, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(37, 17, 1, 1, 1000.0000, 1000.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(38, 17, 2, 1, 1000.0000, 1000.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(39, 17, 3, 1, 1000.0000, 1000.0000, 3600.0000, 3600.0000, NULL, '2026-04-08 09:59:25'),
(40, 22, 1, 1, 700.0000, 700.0000, 700.0000, 700.0000, NULL, '2026-04-08 09:59:25'),
(41, 22, 2, 1, 700.0000, 700.0000, 700.0000, 700.0000, NULL, '2026-04-08 09:59:25'),
(42, 22, 3, 1, 700.0000, 700.0000, 700.0000, 700.0000, NULL, '2026-04-08 09:59:25'),
(43, 23, 1, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, NULL, '2026-04-08 09:59:25'),
(44, 23, 2, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, NULL, '2026-04-08 09:59:25'),
(45, 23, 3, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, NULL, '2026-04-08 09:59:25'),
(46, 24, 1, 1, 2500.0000, 2500.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(47, 24, 2, 1, 2500.0000, 2500.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(48, 24, 3, 1, 2500.0000, 2500.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(49, 21, 1, 1, 700.0000, 700.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(50, 21, 2, 1, 700.0000, 700.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(51, 21, 3, 1, 700.0000, 700.0000, 2500.0000, 2500.0000, NULL, '2026-04-08 09:59:25'),
(52, 26, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(53, 26, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(54, 26, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(55, 27, 1, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(56, 27, 2, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(57, 27, 3, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(58, 28, 1, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(59, 28, 2, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(60, 28, 3, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(61, 25, 1, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(62, 25, 2, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(63, 25, 3, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(64, 30, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(65, 30, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(66, 30, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(67, 31, 1, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(68, 31, 2, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(69, 31, 3, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, NULL, '2026-04-08 09:59:25'),
(70, 32, 1, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(71, 32, 2, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(72, 32, 3, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(73, 29, 1, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(74, 29, 2, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(75, 29, 3, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, NULL, '2026-04-08 09:59:25'),
(76, 34, 1, 1, 500.0000, 500.0000, 500.0000, 500.0000, NULL, '2026-04-08 09:59:25'),
(77, 34, 2, 1, 500.0000, 500.0000, 500.0000, 500.0000, NULL, '2026-04-08 09:59:25'),
(78, 34, 3, 1, 500.0000, 500.0000, 500.0000, 500.0000, NULL, '2026-04-08 09:59:25'),
(79, 35, 1, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(80, 35, 2, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(81, 35, 3, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(82, 36, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(83, 36, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(84, 36, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(85, 33, 1, 1, 500.0000, 500.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(86, 33, 2, 1, 500.0000, 500.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(87, 33, 3, 1, 500.0000, 500.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(88, 38, 1, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(89, 38, 2, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(90, 38, 3, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(91, 39, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(92, 39, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(93, 39, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(94, 40, 1, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(95, 40, 2, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(96, 40, 3, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(97, 37, 1, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(98, 37, 2, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(99, 37, 3, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(100, 42, 1, 1, 800.0000, 800.0000, 800.0000, 800.0000, NULL, '2026-04-08 09:59:25'),
(101, 42, 2, 1, 800.0000, 800.0000, 800.0000, 800.0000, NULL, '2026-04-08 09:59:25'),
(102, 42, 3, 1, 800.0000, 800.0000, 800.0000, 800.0000, NULL, '2026-04-08 09:59:25'),
(103, 43, 1, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, NULL, '2026-04-08 09:59:25'),
(104, 43, 2, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, NULL, '2026-04-08 09:59:25'),
(105, 43, 3, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, NULL, '2026-04-08 09:59:25'),
(106, 44, 1, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(107, 44, 2, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(108, 44, 3, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(109, 41, 1, 1, 800.0000, 800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(110, 41, 2, 1, 800.0000, 800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(111, 41, 3, 1, 800.0000, 800.0000, 2800.0000, 2800.0000, NULL, '2026-04-08 09:59:25'),
(112, 46, 1, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(113, 46, 2, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(114, 46, 3, 1, 900.0000, 900.0000, 900.0000, 900.0000, NULL, '2026-04-08 09:59:25'),
(115, 47, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(116, 47, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(117, 47, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(118, 48, 1, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(119, 48, 2, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(120, 48, 3, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(121, 45, 1, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(122, 45, 2, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(123, 45, 3, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, NULL, '2026-04-08 09:59:25'),
(124, 50, 1, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(125, 50, 2, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(126, 50, 3, 1, 600.0000, 600.0000, 600.0000, 600.0000, NULL, '2026-04-08 09:59:25'),
(127, 51, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(128, 51, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(129, 51, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, '2026-04-08 09:59:25'),
(130, 52, 1, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(131, 52, 2, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(132, 52, 3, 1, 2000.0000, 2000.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(133, 49, 1, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(134, 49, 2, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(135, 49, 3, 1, 600.0000, 600.0000, 2000.0000, 2000.0000, NULL, '2026-04-08 09:59:25'),
(136, 54, 1, 1, 450.0000, 450.0000, 450.0000, 450.0000, NULL, '2026-04-08 09:59:25'),
(137, 54, 2, 1, 450.0000, 450.0000, 450.0000, 450.0000, NULL, '2026-04-08 09:59:25'),
(138, 54, 3, 1, 450.0000, 450.0000, 450.0000, 450.0000, NULL, '2026-04-08 09:59:25'),
(139, 55, 1, 1, 850.0000, 850.0000, 850.0000, 850.0000, NULL, '2026-04-08 09:59:25'),
(140, 55, 2, 1, 850.0000, 850.0000, 850.0000, 850.0000, NULL, '2026-04-08 09:59:25'),
(141, 55, 3, 1, 850.0000, 850.0000, 850.0000, 850.0000, NULL, '2026-04-08 09:59:25'),
(142, 56, 1, 1, 1600.0000, 1600.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(143, 56, 2, 1, 1600.0000, 1600.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(144, 56, 3, 1, 1600.0000, 1600.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(145, 53, 1, 1, 450.0000, 450.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(146, 53, 2, 1, 450.0000, 450.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(147, 53, 3, 1, 450.0000, 450.0000, 1600.0000, 1600.0000, NULL, '2026-04-08 09:59:25'),
(148, 58, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(149, 58, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(150, 58, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, NULL, '2026-04-08 09:59:25'),
(151, 59, 1, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(152, 59, 2, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(153, 59, 3, 1, 3100.0000, 3100.0000, 3100.0000, 3100.0000, NULL, '2026-04-08 09:59:25'),
(154, 60, 1, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(155, 60, 2, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(156, 60, 3, 1, 5800.0000, 5800.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(157, 57, 1, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(158, 57, 2, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(159, 57, 3, 1, 1700.0000, 1700.0000, 5800.0000, 5800.0000, NULL, '2026-04-08 09:59:25'),
(160, 61, 1, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(161, 62, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(162, 63, 1, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(163, 64, 1, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(164, 61, 2, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(165, 62, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(166, 63, 2, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(167, 64, 2, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(168, 61, 3, 1, 1100.0000, 1100.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(169, 62, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(170, 63, 3, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(171, 64, 3, 1, 3900.0000, 3900.0000, 3900.0000, 3900.0000, '2026-04-06 10:42:43', '2026-04-08 09:59:25'),
(172, 65, 1, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(173, 66, 1, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(174, 67, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(175, 68, 1, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(176, 65, 2, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(177, 66, 2, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(178, 67, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(179, 68, 2, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(180, 65, 3, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(181, 66, 3, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(182, 67, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(183, 68, 3, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-06 11:42:09', '2026-04-08 09:59:25'),
(184, 69, 1, 1, 2300.0000, 2300.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(185, 70, 1, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(186, 71, 1, 1, 4200.0000, 4200.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(187, 69, 2, 1, 2300.0000, 2300.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(188, 70, 2, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(189, 71, 2, 1, 4200.0000, 4200.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(190, 69, 3, 1, 2300.0000, 2300.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(191, 70, 3, 1, 2300.0000, 2300.0000, 2300.0000, 2300.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(192, 71, 3, 1, 4200.0000, 4200.0000, 4200.0000, 4200.0000, '2026-04-08 09:46:49', '2026-04-08 09:59:25'),
(193, 72, 1, 1, 1100.0000, 1100.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(194, 73, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(195, 74, 1, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(196, 75, 1, 1, 4000.0000, 4000.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(197, 72, 2, 1, 1100.0000, 1100.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(198, 73, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(199, 74, 2, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(200, 75, 2, 1, 4000.0000, 4000.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(201, 72, 3, 1, 1100.0000, 1100.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(202, 73, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(203, 74, 3, 1, 2100.0000, 2100.0000, 2100.0000, 2100.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(204, 75, 3, 1, 4000.0000, 4000.0000, 4000.0000, 4000.0000, '2026-04-08 10:26:48', '2026-04-08 10:26:48'),
(205, 76, 1, 1, 400.0000, 400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(206, 77, 1, 1, 400.0000, 400.0000, 400.0000, 400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(207, 78, 1, 1, 750.0000, 750.0000, 750.0000, 750.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(208, 79, 1, 1, 1400.0000, 1400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(209, 76, 2, 1, 400.0000, 400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(210, 77, 2, 1, 400.0000, 400.0000, 400.0000, 400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(211, 78, 2, 1, 750.0000, 750.0000, 750.0000, 750.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(212, 79, 2, 1, 1400.0000, 1400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(213, 76, 3, 1, 400.0000, 400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(214, 77, 3, 1, 400.0000, 400.0000, 400.0000, 400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(215, 78, 3, 1, 750.0000, 750.0000, 750.0000, 750.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(216, 79, 3, 1, 1400.0000, 1400.0000, 1400.0000, 1400.0000, '2026-04-08 10:46:40', '2026-04-08 10:46:40'),
(217, 80, 1, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(218, 81, 1, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(219, 82, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(220, 83, 1, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(221, 80, 2, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(222, 81, 2, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(223, 82, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(224, 83, 2, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(225, 80, 3, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(226, 81, 3, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(227, 82, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(228, 83, 3, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 10:51:23', '2026-04-08 10:51:23'),
(229, 84, 1, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(230, 85, 1, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(231, 86, 1, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(232, 87, 1, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(233, 84, 2, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(234, 85, 2, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(235, 86, 2, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(236, 87, 2, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(237, 84, 3, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(238, 85, 3, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(239, 86, 3, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(240, 87, 3, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 10:55:03', '2026-04-08 10:55:03'),
(241, 88, 1, 1, 700.0000, 700.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(242, 89, 1, 1, 700.0000, 700.0000, 700.0000, 700.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(243, 90, 1, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(244, 91, 1, 1, 2400.0000, 2400.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(245, 88, 2, 1, 700.0000, 700.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(246, 89, 2, 1, 700.0000, 700.0000, 700.0000, 700.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(247, 90, 2, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(248, 91, 2, 1, 2400.0000, 2400.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(249, 88, 3, 1, 700.0000, 700.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(250, 89, 3, 1, 700.0000, 700.0000, 700.0000, 700.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(251, 90, 3, 1, 1300.0000, 1300.0000, 1300.0000, 1300.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(252, 91, 3, 1, 2400.0000, 2400.0000, 2400.0000, 2400.0000, '2026-04-08 11:16:30', '2026-04-08 11:16:30'),
(253, 92, 1, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(254, 93, 1, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(255, 94, 1, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(256, 95, 1, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(257, 92, 2, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(258, 93, 2, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(259, 94, 2, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(260, 95, 2, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(261, 92, 3, 1, 900.0000, 900.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(262, 93, 3, 1, 900.0000, 900.0000, 900.0000, 900.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(263, 94, 3, 1, 1700.0000, 1700.0000, 1700.0000, 1700.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(264, 95, 3, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, '2026-04-08 11:21:59', '2026-04-08 11:21:59'),
(265, 96, 1, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(266, 97, 1, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(267, 98, 1, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(268, 99, 1, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(269, 96, 2, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(270, 97, 2, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(271, 98, 2, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(272, 99, 2, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(273, 96, 3, 1, 1000.0000, 1000.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(274, 97, 3, 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(275, 98, 3, 1, 1800.0000, 1800.0000, 1800.0000, 1800.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(276, 99, 3, 1, 3400.0000, 3400.0000, 3400.0000, 3400.0000, '2026-04-08 11:37:54', '2026-04-08 11:37:54'),
(277, 100, 1, 1, 1500.0000, 1500.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(278, 101, 1, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(279, 102, 1, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(280, 103, 1, 1, 6000.0000, 6000.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(281, 100, 2, 1, 1500.0000, 1500.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(282, 101, 2, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(283, 102, 2, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(284, 103, 2, 1, 6000.0000, 6000.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(285, 100, 3, 1, 1500.0000, 1500.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(286, 101, 3, 1, 1500.0000, 1500.0000, 1500.0000, 1500.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(287, 102, 3, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18'),
(288, 103, 3, 1, 6000.0000, 6000.0000, 6000.0000, 6000.0000, '2026-04-08 11:49:18', '2026-04-08 11:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

DROP TABLE IF EXISTS `product_relations`;
CREATE TABLE IF NOT EXISTS `product_relations` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  KEY `product_relations_child_id_foreign` (`child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_rev_product_id_idx` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_attachments`
--

DROP TABLE IF EXISTS `product_review_attachments`;
CREATE TABLE IF NOT EXISTS `product_review_attachments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `review_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_review_images_review_id_foreign` (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

DROP TABLE IF EXISTS `product_super_attributes`;
CREATE TABLE IF NOT EXISTS `product_super_attributes` (
  `product_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_super_attributes`
--

INSERT INTO `product_super_attributes` (`product_id`, `attribute_id`) VALUES
(3, 30),
(9, 30),
(13, 30),
(17, 30),
(21, 30),
(25, 30),
(29, 30),
(33, 30),
(37, 30),
(41, 30),
(45, 30),
(49, 30),
(53, 30),
(57, 30),
(61, 30),
(65, 30),
(69, 30),
(72, 30),
(76, 30),
(80, 30),
(84, 30),
(88, 30),
(92, 37),
(96, 30),
(100, 30);

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

DROP TABLE IF EXISTS `product_up_sells`;
CREATE TABLE IF NOT EXISTS `product_up_sells` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL,
  UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  KEY `product_up_sells_child_id_foreign` (`child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

DROP TABLE IF EXISTS `product_videos`;
CREATE TABLE IF NOT EXISTS `product_videos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `prod_vid_product_id_idx` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
CREATE TABLE IF NOT EXISTS `refunds` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `order_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refunds_order_id_foreign` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

DROP TABLE IF EXISTS `refund_items`;
CREATE TABLE IF NOT EXISTS `refund_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `refund_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_items_parent_id_foreign` (`parent_id`),
  KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  KEY `refund_items_refund_id_foreign` (`refund_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'This role users will have all the access', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

DROP TABLE IF EXISTS `search_synonyms`;
CREATE TABLE IF NOT EXISTS `search_synonyms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
CREATE TABLE IF NOT EXISTS `search_terms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int NOT NULL DEFAULT '0',
  `uses` int NOT NULL DEFAULT '0',
  `redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT '0',
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `uses`, `redirect_url`, `display_in_suggested_terms`, `locale`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'dry fruits', 0, 1, NULL, 0, 'en', 1, '2026-04-01 10:17:58', '2026-04-01 10:17:58'),
(2, 'honey', 0, 1, NULL, 0, 'en', 1, '2026-04-01 10:18:05', '2026-04-01 10:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` int DEFAULT NULL,
  `total_weight` decimal(12,4) DEFAULT NULL,
  `carrier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_number` text COLLATE utf8mb4_unicode_ci,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `order_address_id` int UNSIGNED DEFAULT NULL,
  `inventory_source_id` int UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipments_order_id_foreign` (`order_id`),
  KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

DROP TABLE IF EXISTS `shipment_items`;
CREATE TABLE IF NOT EXISTS `shipment_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `base_price` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) DEFAULT '0.0000',
  `base_total` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `shipment_id` int UNSIGNED NOT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipment_items_shipment_id_foreign` (`shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

DROP TABLE IF EXISTS `sitemaps`;
CREATE TABLE IF NOT EXISTS `sitemaps` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional` json DEFAULT NULL,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

DROP TABLE IF EXISTS `subscribers_list`;
CREATE TABLE IF NOT EXISTS `subscribers_list` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  KEY `subscribers_list_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

DROP TABLE IF EXISTS `tax_categories`;
CREATE TABLE IF NOT EXISTS `tax_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_categories_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

DROP TABLE IF EXISTS `tax_categories_tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_categories_tax_rates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_category_id` int UNSIGNED NOT NULL,
  `tax_rate_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT '0',
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_rates_identifier_unique` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme_customizations`
--

DROP TABLE IF EXISTS `theme_customizations`;
CREATE TABLE IF NOT EXISTS `theme_customizations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `theme_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `theme_customizations_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'default', 'image_carousel', 'Image Carousel', 205, 0, 1, '2025-12-13 21:38:35', '2025-12-26 12:50:08'),
(2, 'default', 'static_content', 'Label Below Carousel', 2, 1, 1, '2025-12-13 21:38:35', '2025-12-27 12:33:17'),
(3, 'default', 'category_carousel', 'Categories Collections', 1, 1, 1, '2025-12-13 21:38:35', '2026-04-01 10:16:05'),
(4, 'default', 'product_carousel', 'New Products', 4, 1, 1, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(13, 'default', 'static_content', 'Label 2', 5, 1, 1, '2025-12-26 12:58:43', '2025-12-27 12:39:06'),
(11, 'default', 'footer_links', 'Footer Links', 11, 1, 1, '2025-12-13 21:38:35', '2025-12-27 11:12:27'),
(12, 'default', 'services_content', 'Services Content', 6, 1, 1, '2025-12-13 21:38:35', '2025-12-27 12:14:38'),
(17, 'default', 'static_content', 'Custom CSS', 15, 0, 1, '2025-12-27 10:57:14', '2025-12-27 14:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customization_translations`
--

DROP TABLE IF EXISTS `theme_customization_translations`;
CREATE TABLE IF NOT EXISTS `theme_customization_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `theme_customization_id` int UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theme_customization_id_foreign` (`theme_customization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(1, 1, 'en', '{\"images\": [{\"link\": \"\", \"image\": \"storage/theme/1/CnIoVU1AQNuH3dcYtOqHK3rRCd0XphsmgngpSLQF.webp\", \"title\": \"Get Ready For New Collection\"}, {\"link\": \"\", \"image\": \"storage/theme/1/0ssq4YsHqCNOjJOg3HWv2siHJAkFfrUVy71B5t24.webp\", \"title\": \"Get Ready For New Collection\"}, {\"link\": \"\", \"image\": \"storage/theme/1/zGndCShcQWdtaMKyvSudGifH7R0fjacwydeV2y9z.webp\", \"title\": \"Get Ready For New Collection\"}, {\"link\": \"\", \"image\": \"storage/theme/1/7M6UUro8lABlOhpSIUG6BQNsShbaXc7tANBDLq5F.webp\", \"title\": \"Get Ready For New Collection\"}]}'),
(2, 2, 'en', '{\"css\": \".home-offer h1 {\\r\\n    display: block;\\r\\n    font-weight: 500;\\r\\n    text-align: center;\\r\\n    font-size: 22px;\\r\\n    font-family: DM Serif Display;\\r\\n    background-color: #E8EDFE;\\r\\n    padding-top: 20px;\\r\\n    padding-bottom: 20px;\\r\\n}\\r\\n.home-hero-titler h1 {\\r\\n    font-weight: 600;\\r\\n    /* softer than bold */\\r\\n    line-height: 1.4;\\r\\n    letter-spacing: 0.4px;\\r\\n    color: #00ba52;\\r\\n    text-transform: none;\\r\\n}\\r\\n.home-hero-title h1 strong {\\r\\n    color: #00ba52;\\r\\n    font-weight: 700;\\r\\n}\\r\\n@media (max-width:768px) {\\r\\n    .home-offer h1 {\\r\\n        font-size:18px;\\r\\n        padding-top: 10px;\\r\\n        padding-bottom: 10px;\\r\\n    }\\r\\n    @media (max-width:525px) {\\r\\n        .home-offer h1 {\\r\\n            font-size:14px;\\r\\n            padding-top: 6px;\\r\\n            padding-bottom: 6px;\\r\\n        }\\r\\n    }\", \"html\": \"<div class=\\\"home-offer home-hero-title\\\">\\r\\n     <h1>\\r\\n      <strong>100% Pure Organic Products</strong> from Swat Valley\\r\\n  </h1>\\r\\n\\r\\n</div>\"}'),
(3, 3, 'en', '{\"filters\": {\"sort\": \"asc\", \"limit\": \"10\", \"parent_id\": \"1\"}}'),
(4, 4, 'en', '{\"title\": \"New Products\", \"filters\": {\"new\": 1, \"sort\": \"name-asc\", \"limit\": 12}}'),
(5, 5, 'en', '{\"css\": \".top-collection-container {overflow: hidden;}.top-collection-header {padding-left: 15px;padding-right: 15px;text-align: center;font-size: 70px;line-height: 90px;color: #060C3B;margin-top: 80px;}.top-collection-header h2 {max-width: 595px;margin-left: auto;margin-right: auto;font-family: DM Serif Display;}.top-collection-grid {display: flex;flex-wrap: wrap;gap: 32px;justify-content: center;margin-top: 60px;width: 100%;margin-right: auto;margin-left: auto;padding-right: 90px;padding-left: 90px;}.top-collection-card {position: relative;background: #f9fafb;overflow:hidden;border-radius:20px;}.top-collection-card img {border-radius: 16px;max-width: 100%;text-indent:-9999px;transition: transform 300ms ease;transform: scale(1);}.top-collection-card:hover img {transform: scale(1.05);transition: all 300ms ease;}.top-collection-card h3 {color: #060C3B;font-size: 30px;font-family: DM Serif Display;transform: translateX(-50%);width: max-content;left: 50%;bottom: 30px;position: absolute;margin: 0;font-weight: inherit;}@media not all and (min-width: 525px) {.top-collection-header {margin-top: 28px;font-size: 20px;line-height: 1.5;}.top-collection-grid {gap: 10px}}@media not all and (min-width: 768px) {.top-collection-header {margin-top: 30px;font-size: 28px;line-height: 3;}.top-collection-header h2 {line-height:2; margin-bottom:20px;} .top-collection-grid {gap: 14px}} @media not all and (min-width: 1024px) {.top-collection-grid {padding-left: 30px;padding-right: 30px;}}@media (max-width: 768px) {.top-collection-grid { row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 0px;} .top-collection-card{width:48%} .top-collection-card img {width:100%;} .top-collection-card h3 {font-size:24px; bottom: 16px;}}@media (max-width:520px) { .top-collection-grid{padding-left: 15px;padding-right: 15px;} .top-collection-card h3 {font-size:18px; bottom: 10px;}}\", \"html\": \"<div class=\\\"top-collection-container\\\"><div class=\\\"top-collection-header\\\"><h2>The game with our new additions!</h2></div><div class=\\\"top-collection-grid container\\\"><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/jcTYp4G7ryisxzSb4tUvJEIzeHYgnT6zxCrdjPzz.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/bsGQWFQoMEBi7QBIge7gVpEHn39yMXxY0QdD7yGM.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/yWDvtTTEQSiyV2hccV3tBjYoAcwwwuCOfGpBYtHD.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/ahnlUOx4fjLMNNJZbjRk2Pb2yMFX6XNEic1MnIbR.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/Maf0PjoCKWUDcqI1GJMiB79W7vYRsEtFaGFthbTZ.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/BjXIANN1uckXKm4zFNLZSSLYvm6ihAnWhcHdSLrv.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections</h3></div></div></div>\"}'),
(6, 6, 'en', '{\"css\": \".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}} @media (max-width:768px){.inline-col-wrapper .inline-col-image-wrapper img {width:100%;} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:28px !important;line-height:normal !important}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px !important;} .inline-col-description{font-size:16px} .inline-col-wrapper{grid-gap:10px}}\", \"html\": \"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/6/hz7Q8FJHBfaLXwaF2PZlmjLS9Uyxh2I3VkUsNtXk.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Get Ready for our new Bold Collections!\\\"> </div> <div class=\\\"inline-col-content-wrapper\\\"> <h2 class=\\\"inline-col-title\\\"> Get Ready for our new Bold Collections! </h2> <p class=\\\"inline-col-description\\\">Introducing Our New Bold Collections! Elevate your style with daring designs and vibrant statements. Explore striking patterns and bold colors that redefine your wardrobe. Get ready to embrace the extraordinary!</p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">View Collections</button> </div> </div> </div>\"}'),
(7, 7, 'en', '{\"title\": \"Featured Products\", \"filters\": {\"sort\": \"name-desc\", \"limit\": \"12\", \"featured\": \"1\"}}'),
(8, 8, 'en', '{\"css\": \".section-game {overflow: hidden;}.section-title,.section-title h2{font-weight:400;font-family:DM Serif Display}.section-title{margin-top:80px;padding-left:15px;padding-right:15px;text-align:center;line-height:90px}.section-title h2{font-size:70px;color:#060c3b;max-width:595px;margin:auto}.collection-card-wrapper{display:flex;flex-wrap:wrap;justify-content:center;gap:30px}.collection-card-wrapper .single-collection-card{position:relative}.collection-card-wrapper .single-collection-card img{border-radius:16px;background-color:#f5f5f5;max-width:100%;height:auto;text-indent:-9999px}.collection-card-wrapper .single-collection-card .overlay-text{font-size:50px;font-weight:400;max-width:234px;font-style:italic;color:#060c3b;font-family:DM Serif Display;position:absolute;bottom:30px;left:30px;margin:0}@media (max-width:1024px){.section-title{padding:0 30px}}@media (max-width:991px){.collection-card-wrapper{flex-wrap:wrap}}@media (max-width:768px) {.collection-card-wrapper .single-collection-card .overlay-text{font-size:32px; bottom:20px}.section-title{margin-top:32px}.section-title h2{font-size:28px;line-height:normal}} @media (max-width:525px){.collection-card-wrapper .single-collection-card .overlay-text{font-size:18px; bottom:10px} .section-title{margin-top:28px}.section-title h2{font-size:20px;} .collection-card-wrapper{gap:10px; 15px; row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 15px;} .collection-card-wrapper .single-collection-card {width:48%;}}\", \"html\": \"<div class=\\\"section-game\\\"><div class=\\\"section-title\\\"> <h2>The game with our new additions!</h2> </div> <div class=\\\"section-gap container\\\"> <div class=\\\"collection-card-wrapper\\\"> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/8/BRSeoP1nb1Z34rKiFvaNcN0vKJjlFUeTLupHEYP5.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"The game with our new additions!\\\"> <h3 class=\\\"overlay-text\\\">Our Collections</h3> </div> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/8/9tvtLlfRfCFOzBKIjFjZ9Q8CcV0y3RLvA7Vkgoyx.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"The game with our new additions!\\\"> <h3 class=\\\"overlay-text\\\"> Our Collections </h3> </div> </div> </div> </div>\"}'),
(9, 9, 'en', '{\"title\": \"All Products\", \"filters\": {\"sort\": \"name-desc\", \"limit\": \"12\"}}'),
(10, 10, 'en', '{\"css\": \".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}}@media (max-width:768px) {.inline-col-wrapper .inline-col-image-wrapper img {max-width:100%;}.inline-col-wrapper .inline-col-content-wrapper{max-width:100%;justify-content:center; text-align:center} .section-gap{padding:0 30px; gap:20px;margin-top:24px} .bold-collections{margin-top:32px;}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper{gap:10px} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px;line-height:normal} .section-gap{padding:0 15px; gap:15px;margin-top:10px} .bold-collections{margin-top:28px;}  .inline-col-description{font-size:16px !important} .inline-col-wrapper{grid-gap:15px}\", \"html\": \"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper direction-rtl\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/10/HSgh2dojs2ITZKNRfEmkSuvHHwAfd4AuKItnubFU.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Get Ready for our new Bold Collections!\\\"> </div> <div class=\\\"inline-col-content-wrapper direction-ltr\\\"> <h2 class=\\\"inline-col-title\\\"> Get Ready for our new Bold Collections! </h2> <p class=\\\"inline-col-description\\\">Introducing Our New Bold Collections! Elevate your style with daring designs and vibrant statements. Explore striking patterns and bold colors that redefine your wardrobe. Get ready to embrace the extraordinary!</p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">View Collections</button> </div> </div> </div>\"}'),
(11, 11, 'en', '{\"column_1\": [{\"url\": \"http://swatorganics.local/page/about-us\", \"title\": \"About Us\", \"sort_order\": \"1\"}, {\"url\": \"http://swatorganics.local/contact-us\", \"title\": \"Contact Us\", \"sort_order\": \"2\"}, {\"url\": \"http://swatorganics.local/page/terms-conditions\", \"title\": \"Terms & Conditions\", \"sort_order\": \"6\"}], \"column_2\": [{\"url\": \"http://swatorganics.local/page/privacy-policy\", \"title\": \"Privacy Policy\", \"sort_order\": \"1\"}, {\"url\": \"http://swatorganics.local/page/payment-policy\", \"title\": \"Payment Policy\", \"sort_order\": \"2\"}, {\"url\": \"http://swatorganics.local/page/shipping-policy\", \"title\": \"Shipping Policy\", \"sort_order\": \"3\"}, {\"url\": \"http://swatorganics.local/page/refund-policy\", \"title\": \"Refund Policy\", \"sort_order\": \"4\"}, {\"url\": \"http://swatorganics.local/page/return-policy\", \"title\": \"Return Policy\", \"sort_order\": \"5\"}]}'),
(14, 14, 'en', '{\"css\": \"footer > div:last-child {\\r\\n    justify-content: center !important;\\r\\n}\", \"html\": \"[object Object]\"}'),
(15, 15, 'en', '{\"column_3\": [{\"url\": \"http://swatorganics.local/admin/settings/themes/edit/15\", \"title\": \"asd\", \"sort_order\": \"12\"}]}'),
(12, 12, 'en', '{\"services\": [{\"title\": \"Free Shipping\", \"description\": \"Free shipping on selected orders across Pakistan\", \"service_icon\": \"icon-truck\"}, {\"title\": \"100% Pure & Organic\", \"description\": \"Naturally sourced products from Swat Valley\", \"service_icon\": \"icon-product\"}, {\"title\": \"Easy Returns\", \"description\": \"Hassle-free return & replacement policy\", \"service_icon\": \"icon-truck\"}, {\"title\": \"Customer Support\", \"description\": \"WhatsApp & email support 7 days a week.\", \"service_icon\": \"icon-support\"}]}'),
(13, 13, 'en', '{\"css\": \"/* ===============================\\r\\n   Home Offer – Brand Statement\\r\\n================================ */\\r\\n .custom-label-1 {\\r\\n    margin: 20px 0px;\\r\\n    padding: 0px 0px;\\r\\n    text-align: center;\\r\\n}\\r\\n.custom-label-1 h1 {\\r\\n    font-size: 1.35rem;\\r\\n    font-weight: 500;\\r\\n    /* softer than bold */\\r\\n    line-height: 1.7;\\r\\n    color: #1f2937;\\r\\n    padding: 15px 10px;\\r\\n}\\r\\n/* Highlight key words softly */\\r\\n .custom-label-1 strong {\\r\\n    color: var(--brand-green);\\r\\n    font-weight: 600;\\r\\n}\\r\\n/* Tablet */\\r\\n @media (max-width: 1024px) {\\r\\n    .custom-label-1 {\\r\\n        margin: 40px 0px;\\r\\n        padding: 20px auto;\\r\\n    }\\r\\n    .custom-label-1 h1 {\\r\\n        font-size: 1.2rem;\\r\\n    }\\r\\n}\\r\\n/* Mobile */\\r\\n @media (max-width: 768px) {\\r\\n    .custom-label-1 {\\r\\n        margin: 32px auto;\\r\\n        padding: 16px auto;\\r\\n    }\\r\\n    .custom-label-1 h1 {\\r\\n        font-size: 1.05rem;\\r\\n        line-height: 1.6;\\r\\n    }\\r\\n}\", \"html\": \"<div class=\\\"home-offer custom-label-1\\\">\\r\\n    <h1>\\r\\n        Swat Organics brings you <strong>100% pure organic products</strong> sourced directly from the pristine valleys of Swat.\\r\\n        We focus on <strong>quality</strong>, <strong>authenticity</strong>, and <strong>natural wellness</strong>.\\r\\n    </h1>\\r\\n</div>\"}'),
(16, 16, 'en', '{\"css\": \".footer-brand {\\r\\n    margin-right: 40px;\\r\\n}\\r\\n\\r\\n@media (max-width: 1060px) {\\r\\n    .footer-brand {\\r\\n        margin-right: 0;\\r\\n        margin-bottom: 20px;\\r\\n    }\\r\\n}\", \"html\": \"<div class=\\\"footer-brand max-w-sm\\\">\\r\\n    <h4 class=\\\"text-lg font-semibold mb-2\\\">\\r\\n        Swat Organics\\r\\n    </h4>\\r\\n\\r\\n    <p class=\\\"text-sm text-zinc-600 leading-relaxed mb-3\\\">\\r\\n        100% pure organic products sourced directly from the pristine valleys of Swat, Pakistan.\\r\\n    </p>\\r\\n\\r\\n    <p class=\\\"text-sm text-zinc-600\\\">\\r\\n        Email: <a href=\\\"mailto:contact@swatorganics.com\\\">contact@swatorganics.com</a><br>\\r\\n        WhatsApp: +92-XXXXXXXXXX\\r\\n    </p>\\r\\n</div>\"}'),
(17, 17, 'en', '{\"css\": \"\", \"html\": \"<div> </div>\"}'),
(18, 18, 'en', '{\"css\": \".footer-brand {\\r\\n    margin-right: 40px;\\r\\n}\\r\\n\\r\\n@media (max-width: 1060px) {\\r\\n    .footer-brand {\\r\\n        margin-right: 0;\\r\\n        margin-bottom: 20px;\\r\\n    }\\r\\n}\", \"html\": \"<div class=\\\"footer-brand max-w-sm\\\">\\r\\n    <h4 class=\\\"text-lg font-semibold mb-2\\\">\\r\\n        Swat Organics\\r\\n    </h4>\\r\\n\\r\\n    <p class=\\\"text-sm text-zinc-600 leading-relaxed mb-3\\\">\\r\\n        Swat Organics brings you 100% pure organic products sourced directly from the pristine valleys of Swat, Pakistan.\\r\\n    </p>\\r\\n\\r\\n    <p class=\\\"text-sm text-zinc-600\\\">\\r\\n        📧 contact@swatorganics.com<br>\\r\\n        📞 WhatsApp support available\\r\\n    </p>\\r\\n</div>\"}');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

DROP TABLE IF EXISTS `url_rewrites`;
CREATE TABLE IF NOT EXISTS `url_rewrites` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_rewrites`
--

INSERT INTO `url_rewrites` (`id`, `entity_type`, `request_path`, `target_path`, `redirect_type`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'category', 'organic-products', 'dried-fruits', '301', 'en', '2026-04-01 09:29:37', '2026-04-01 09:29:37'),
(2, 'category', 'dry-fruits', 'honey', '301', 'en', '2026-04-01 09:43:48', '2026-04-01 09:43:48'),
(3, 'product', 'acacia-honey', 'pure-acacia-honey', '301', 'en', '2026-04-06 10:52:24', '2026-04-06 10:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` mediumtext COLLATE utf8mb4_unicode_ci,
  `url` mediumtext COLLATE utf8mb4_unicode_ci,
  `referer` mediumtext COLLATE utf8mb4_unicode_ci,
  `languages` text COLLATE utf8mb4_unicode_ci,
  `useragent` text COLLATE utf8mb4_unicode_ci,
  `headers` text COLLATE utf8mb4_unicode_ci,
  `device` text COLLATE utf8mb4_unicode_ci,
  `platform` text COLLATE utf8mb4_unicode_ci,
  `browser` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_id` bigint UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` bigint UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  KEY `visits_channel_id_foreign` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/checkout/onepage/success', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/checkout\\/onepage\\/success\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6IjloYjF2MEgzVUt5RUU2czNYd3hXV2c9PSIsInZhbHVlIjoiVnRQSzQ5U2N3aWcxQ3VFUnpQcjhUNTBJNlFjTDgrUVFLRDBXSTBJYUpnYi80UCtGM0t1SytYS3B2anlLWWZqWmZrQUJDTW50V3RBNFRIT0EwNW4wdkpudzJVeDJETUY5ZXhaSGRjZHM2Yk5tbUlBVmR1aWo5N0NnUHE1NVdFbkgiLCJtYWMiOiI4ZDY5ZGY0Mzc0ZjY5ODk5ZDllNGQyNDQ5NWFjMmNmZDk0OWYxN2VlMDk5M2U1MzA0YjNiZTA5ZTczZTYwYmFhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImJoNnhFN1J4VVQvMlVhWEtOUVhYNEE9PSIsInZhbHVlIjoic1FDVmRuZFg5ZWdEcHkxYVpoR1BvRVF5RVNHZnhJeFp4SkxBRERyNTUrRG5qQ0JTTnB0OUFDSmV6cFUwU0M4RWFOSDcvbVBlQXFaL1dSUk1GUTJVVWFRdGdMb2c3U2RqYnppM3drOTA1SnRXeGI4SVBYTFlSVkpEQ1JOdCt6QVQiLCJtYWMiOiJhNDIzMzM5ZWI3NDUzMWJhODk3MmFhOWJiNGQ5ZWU5MWQ2ZWZkMzY0YWFhY2IzZTBhOWVkODE1NThjNjgzMjE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-26 10:48:38', '2025-12-26 10:48:38'),
(2, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/page/return-policy', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/page\\/return-policy\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 10:52:41', '2025-12-27 10:52:41'),
(3, 'GET', '[]', 'http://swatorganics.local/test-honey-500g', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-G973U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.2 Chrome/87.0.4280.141 Mobile Safari/537.36', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Linux; Android 11; SAMSUNG SM-G973U) AppleWebKit\\/537.36 (KHTML, like Gecko) SamsungBrowser\\/14.2 Chrome\\/87.0.4280.141 Mobile Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Im5uUnBiSmh2bW1za0dCMUJlZkZtNGc9PSIsInZhbHVlIjoiNXFiWFQzeTZsUDVFVXFRRTZyMzRFR0RUd0ZIRHYwekk4ZWNONzBTSzJsenlaeVozaklGdnNkTGpGTXpzcE4rd1JUcnRLZWw2YXEwRnVTU3drV2w5YktGdlJJeUMrRzlLMGtGS3pHWUV0VU9iNzNwczhrMzk2YVBycjNERTQwNGoiLCJtYWMiOiJlOGYyMDQwMTRhZGUyNzk2MGYzZGE1NmFjYjYzNDI4NGM1YThhYWVmM2E3YTk4ZThjMjRlNWIwZTQ3OTkxMjQ4IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImpyOFlySHVrN1JOWHY1c1A5RnVxeUE9PSIsInZhbHVlIjoiNWk0b1EvbGVFcGdqWTNSaHdRVHJoM0dWQUpZWllGZHV0Y0NidmdwNk9ia2UwSGU2VjhNcGk3S3Bpck5SUXNubU94RnZ6QkJNVzNvOEVqdmIxekx2Q3N2Rkoxbk1SbjAxdXl3RHE2WHg1a1Ribkl1T1FHSnpmRTZsV2pFT1hmNXgiLCJtYWMiOiI4ZjhiNjM1NGY2NTc4ZDVhNTUzMmFjNGFlYWE3ZmIxYmQwODkxZDc5MWQ1NmMwYmM4ZjJiYWI1OTEzYWY3NDE2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjJzWFBLS0o1ejA1TnVLQjV3VHZJd0E9PSIsInZhbHVlIjoiczlvY1QvTXpnclp4bjl6VDd4TlJZZ2VYdXROU2VXUzh1OStvRDlpdnRWV050bnB6a0ZvQXFKZnM3NnNWcW9vSkU5YXF2ZU80OHJRcHBTTGpScENWQVRWODNRdGZTd0Zvd1daU245eEZTdkVydncrUXk3dVdoWUJJU2tSdmNxK20iLCJtYWMiOiIyMjhiZWM2YjY4NjM0OWJhOGNmMTk3N2ZiYjAxY2EwNjlkZjUyZTJjMzg5MTg5ZmIzYTYwYzY3ZTUyZTdhYWE2IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', 'Samsung', 'Linux', 'Chrome', '::1', 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, 1, '2025-12-27 12:11:08', '2025-12-27 12:11:08'),
(4, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/app-BoUQhNYM.css', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=0\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(5, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/vue-BpIHnJ7o.js', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"*\\/*\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=1\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(6, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/app-C4XCDcMP.js', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"*\\/*\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=1\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(7, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/vendor-DIwtuusy.js', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"*\\/*\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=1\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(8, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/veeValidate-AStS9x6w.js', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"*\\/*\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=1\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(9, 'GET', '[]', 'http://swatorganics.local/themes/shop/default/build/assets/app-DsP8OK1c.css', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik1yVlVqMFhnU1RPLzVwaXgwYTR4Nmc9PSIsInZhbHVlIjoiTGd1UzNhaE9tdlRIU3EvKzFqV3lqTFI5ZUNRR0pFelBxRy9YRGZET1pZOVBJNXpGTnhnRFFPZThMWTI5bERrRmx4dGdGWitHYmp0WTJFQk02Z2o4ZUFOdjJpaEYrRmF6Qm9uR2VzSkxOUkY0bXlrdm9Rclg3aWxsT2YxUmZML1QiLCJtYWMiOiIwOWRjYTMyNDAwY2RiOTYwMmRiNTM4NWY4OTk1ZDIzZmIzYjNiMGM3MGZhM2FkM2FmN2NjNGE3NjMyNjk2N2Q2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFqd3BtaGUyQzZjTmpsbnRJTitlM2c9PSIsInZhbHVlIjoibGsxOXFrdjlWTDBWYlhEN1hlQUc5SThDVVpBcHA3dmx4SkhKT3lxUFdaY1ZRVUJ4VGZQQk9uNTYyVjhJb0tjT1RhV1BsSEtScHpsQ2dGLy9uU2pDYXV2SC9OVmJnSnlmZy8wdUMyeGo3R1pYUDNqMHNmZGk4NmhGTDhSUlBOcnkiLCJtYWMiOiJjODBmZGY0ZTUzYzhlOWQxZWVhMWMxZWE5ZjI3NGJkZjgzNWIzN2UxMDA2OGY2MWY0NGIzNTA5ZDlkZTA0ZWY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBjVytHT2xwWTMrVHAwZmFFQTRkK0E9PSIsInZhbHVlIjoiUXJSa1pKL2dWVVhRd0VvM082QzB1Rk9YRXQwQTVLT24yZ29hR3Y3VEZoa1hSd1NSV3pyWHdJdE9uUlQrdG9Va1lZMXFOKzZES3pYSW5vWkQ2OEdoQ2hpQURmVzVReEFmUEZReE1Fa2ZGYTVHWU9GS2pQV1NoZkRmUFZEZ0NNUUgiLCJtYWMiOiJhYWU1ZDRiMGY3MzE3M2IyZDhjNjU4MmJiODZjNDZlMjJiZDMwMThlMDUxMDE4NTcyNDFmYTQ2ZjExZmMzNGUyIiwidGFnIjoiIn0%3D\"],\"priority\":[\"u=0\"],\"pragma\":[\"no-cache\"],\"cache-control\":[\"no-cache\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 13:46:19', '2025-12-27 13:46:19'),
(10, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-27 20:44:45', '2025-12-27 20:44:45'),
(11, 'GET', '[]', 'http://swatorganics.local/test-honey-500g', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6Ilp4czRScDlacmdOem50YkU3MmFwU2c9PSIsInZhbHVlIjoiOG9IQWVWSE8rRWpPenZWU0d1RXNYN05aem9kRTloNThlRnhCYnQ0bXBrR1k0TXcyRDZoVktSQVp4b2FhQnhYclRBbWZmQldZaDBiOFF6M3pyVlFkSkM1Wmo0RVFIenBKTUdtOFNqTUdJUnBFbnVYODhFS0syOUFtckdkVzZZbDUiLCJtYWMiOiIxYzNkZjlkMDdkMmViOTNhNTY5YThkY2Q3OTViMGY4YmE0YmIzNjAwYWUwMjA1Zjc5NjFiMjYzOTZkNmNjMDIyIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ik4xVW9zQnBMNDdXelBPVXRqZ0JxdVE9PSIsInZhbHVlIjoicEhJMEtSc1c0QjJYajdieHFHVWI0VHFXd0pLNXQ4cjlTSWVCYUNzWG9JTERHMHRvY2J4MjU5Z2Y0SlZKR2MxRU5jZk5jRHBPeGI5S2UyK2l6OXZHVEh4MEtrSmY1a3g1MkNQT0g5cUF3VElDNzNqZ1NCM212cWdMbjk0QjcyMzkiLCJtYWMiOiI3OWIwYjdjYzRjZjcwYTgzMGIzN2Q2NTcwNTQzMjJjNjg2NmQ4YTNmOTU2MjE2OTNmMzZjYTc5NzBlZGIyZWVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, 1, '2025-12-27 20:46:56', '2025-12-27 20:46:56'),
(12, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6ImRWT3ZDWmJSbUFMaWJtc0NHZEowNFE9PSIsInZhbHVlIjoiNnZKeWxFczdjVitsWjVXVEdraFh2cUZWOEFHbFQ0MWZQaktRMWpkTXA3M1YrdlFYVzRSa3k4dnZnaVg4a0NSNDA1b0s2K0MwUkptMFhYL2hnenZybHJ2c0R5TGhJUWttdFd1ZWJIVVFHKzV1eS9pNFFvWEJTdllHNTZyd0tWZE4iLCJtYWMiOiJlMjQxYWNhZWZkZjA2MTg3YmY5ZTA4MTMxOTIyYTgzNTIxOTgzODViNTRhYmU1NWYyYmEzOGMyNWE0ZmRlNDExIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkhuOTJHYWR0N1RRUGVqN2ZDckVXWnc9PSIsInZhbHVlIjoibW8xc0RoZ2hEV042ZmZkYXM4VTZpcmIrc3VHaXY0QnpHN3hIMlo3Y2dyK2pDY0oxQy9qN2pzZEFKdWFTZG9sTU1KZ0tPc2dmQ2pEdktMYU9CUVY3Zk5MQVhWSUZQdjJQSmMyYjM4OFkrUm1FUjVsblVMYU5CckxlT0tOLzVGVk8iLCJtYWMiOiI1NjI5ZGNiZjM4OWQ3YWE2ZjQ5N2Q2NGFmMzhkMmIxODY0ZDE4ZTJlOTI4ODYxZjQ5YmY0ZDY5MDU3ZTM0YTk2IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2025-12-29 20:35:14', '2025-12-29 20:35:14'),
(13, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/test-honey-500g', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/test-honey-500g\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-02 20:52:54', '2026-01-02 20:52:54'),
(14, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-02 20:52:54', '2026-01-02 20:52:54'),
(15, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/test-honey-500g', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/test-honey-500g\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-07 16:39:05', '2026-01-07 16:39:05'),
(16, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/test-honey-500g', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/test-honey-500g\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1; XSRF-TOKEN=eyJpdiI6ImhyMDM4aU9iTGFSOVd4NUFCWkhMMEE9PSIsInZhbHVlIjoiWVdQVVJNRWoxaVJmNWtOdjFzYlVOaGlyODJoL2I4Y2pBTU5ucEt2VFRZNEwxRUZTWkxlQTRHdlhUZ2Z0TFZqODFQcmFhU2pQazQwdXc1d3NPajRPN2s4RE4xMjRlclZIa2RYN3RBT2NiTitIaDgwOGlMVFRacDI4RzdMOGpBM3IiLCJtYWMiOiJjZDM0Y2FjZjlmMTNkZDM0ODFhYTI5NDkzMTgyMmFkM2Q1NmFkZWQ3OTY4ZjgwYjQ5NTZmNWY1YzNiNWU4NzJlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ik5rSmw0Y3ZlOVM2aDJtb3g5T1JEY1E9PSIsInZhbHVlIjoiRlY2ZGJXQ2xYRFJ3YlV0U3ZPeklvb2hvTUQ4VHdMRC93QWJWb2lyZURTbDM3bVhmdFJVa0EwYkZIbmlNdnFic2lVZjc2M2pxNHVTWFNkZDRMcDhnVlJCL3YwL0RJbkpNY0hzTW1SemdBcUFPSGlld2dGSVNsRCtJWXJ4SU9IeU4iLCJtYWMiOiI0OTdjMmRlYjNjMmI5NmZmNGE2MmY4ZmQyYWNiMmI5NmRhZmY3NDdmNTY3Y2I3MmVlYjI2OTI3NzdmZDA5MjA3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-13 16:18:17', '2026-01-13 16:18:17'),
(17, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"dark_mode=1\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-13 16:18:17', '2026-01-13 16:18:17'),
(18, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/test-honey-500g', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko\\/20100101 Firefox\\/146.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/test-honey-500g\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-16 15:20:12', '2026-01-16 15:20:12'),
(19, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko\\/20100101 Firefox\\/147.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-01-24 19:09:49', '2026-01-24 19:09:49'),
(20, 'GET', '[]', 'http://swatorganics.local', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko\\/20100101 Firefox\\/147.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-02-02 13:13:55', '2026-02-02 13:13:55'),
(21, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/page/return-policy', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko\\/20100101 Firefox\\/147.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/page\\/return-policy\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-02-04 08:50:46', '2026-02-04 08:50:46'),
(22, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/page/return-policy', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko\\/20100101 Firefox\\/147.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/page\\/return-policy\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-02-19 21:59:02', '2026-02-19 21:59:02'),
(23, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-03-04 18:03:05', '2026-03-04 18:03:05'),
(24, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/checkout/cart', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/checkout\\/cart\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImVySE1yZU5hM3I2Z0E4VGgrT3NlUFE9PSIsInZhbHVlIjoiQ2xyQ1c1dXd5SG5WWUhrTW1ZVXl3M0VIQ09zM2RTWFAzR2xwdmxUY1ZuWUJvbE1sNjl1WWxTQVZtbFdFYUZVZmRIY2VYd1NSWU5mVFNzV1ZEWU84ZWZFbjBwbXltL2RIUkpabkg0alZQTmU1RXJSK2VQdVIwMGYzUTBEUWJrU0MiLCJtYWMiOiJlOGY4MjYyYzliZjQ1N2IyNjBjZWJhZGFmOTg5ZjJkNmFkMmFjMzEyYzNhOTdmMDM5NDk3MGQxNjlhMjAyZjc2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkVMYllDMzVWS0xqUHhXa0ZyOTQ5TFE9PSIsInZhbHVlIjoiMVMxcW9ldUgwRlFOYnZTQ3A5NDFMKzViOGZBc3l2Y3EwLyt4aEZpdUI2T1A5WWFCNCsyckZNMzEvcXUxS0pvVC9CMW1YKzMyYWl1QVd2QUIrRURVdTRPVTlHdTBCbUNpSkNWU09DOS9Qdk1vWVE1NVg2ZnZWbHZnSGxHeXNTT1QiLCJtYWMiOiIwODcyOTQ1YTUyZGU5ZGJkMmU0ZGQ1NzczOTM1MzBhYmYzMTE2MzYyYzJkMTRlOWQ2Nzc5MDkyNGE3NjVkNDIyIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-03-11 23:18:09', '2026-03-11 23:18:09'),
(25, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-03-13 21:51:01', '2026-03-13 21:51:01'),
(26, 'GET', '[]', 'http://swatorganics.local/dry-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjhScUZZemszbUZHUU5udFBPY21pdkE9PSIsInZhbHVlIjoidCtpUHVQWjVheXI1QzVUMWQ0UnJPOC82YlpxbzlTMVRUeXJ4UCsvQlg2RGQ1ZFpWbjlSZ3BLdW4rdlZ1U2h4aDJ0WmV6bHJZU2NOcTBmQnRyR2t2N052TUxXSUtFczVUZms5d1FxWldwVW5sRVlyYUNSTlMzTE16MndLSGQyY2MiLCJtYWMiOiI1MDE4N2VjODMyMDc4ZjVhNzA5ZjVjMDIwOGNlNzFmZTkxOGE3YzRmZmU3MjVhZGY5Nzc2NDk3MTliZjU5ZWNjIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ik5TbGl3V1padHY1dDNCSFRaWHBzc1E9PSIsInZhbHVlIjoiV3R6U2RNTzlpekNaNG41U2hkeDRWZzdJWlcxU2ZaUjdGRFhmUThDZ3FXaW1laEtJZFpFWXFRWDUzanlxaVo1QnhyL3g2ZEpJdTd6UFJNVXZCQlpNam5nRmJLQTFobEh1VllVVkMybmZPQkl2aHVtTlNJbUVaMUt2c2JzUyt6K3ciLCJtYWMiOiJjYTU0MGQ5OWRmMWY1ZTQyYWQ2Yzc0NTIxZDkyNjE0ZWM0ZWM5NTllNjczNDMyOWZhYmRmMDE5NWY4MTM2ZjYyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IndqeThOK0ZSZ0FyMnc3R0Nsck8rOWc9PSIsInZhbHVlIjoiMU1ibUJkZ3ZzNFMxVVZpRmtCQTJsbDVucThFVVdvTTVhZm80Q2pZd0kzN2Z3RHUwVUs4cTl2NXVCeXNUK3A5UlpXVHNuaUpnRlNJYnpyRkl0Q3ZEZzZ0cUR2N291bTlodUo1eFpYcFEyTlFnb1hyUUJxblY0Q1BQMnBUSW1hd3giLCJtYWMiOiIzMTJiMThjZTQ4YjVjNTg4YmJkYjBiOGYyOGIzMDBmMjcxM2UyODkyZWQxMTcyMjg2Njg5MzA5N2RmZWYzY2I3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-03-13 23:22:15', '2026-03-13 23:22:15'),
(27, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/contact-us', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/contact-us\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZvbm81MXhTUFZnNzUza0V4WUZtZ1E9PSIsInZhbHVlIjoid0FHdDc3WnlQRVVjM0IvYlNlVHYxU2JsSEZ4ZGd0Q1ZBZ2ZxMHBKTG1TMTcrTEpiMnBLMnN6bWxKV2FkTmpwYVJJV0poRDZMbEhPMnFHM2RZV2xDaW9TSTJ3cWVQUXhYR0g2SU0vUmgyQ005VVIzYjUzc0JsZEdxWm8zbjc3c3kiLCJtYWMiOiIxM2YxZGZmMTMwOWJiZWM5YTVlZmE0ZGUyNGRhMjgyN2VjNjkyZGU3OTI5YWNlMjM1Zjc1OGVlOWQ2YjYyOWJlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkZaMlhPMis0bS8rRXZvV0krdzZRdmc9PSIsInZhbHVlIjoiSlVwZll0dWRNeUdZUnphbFFpWVlMWDMwVjZpSG5WbHdweVBnM1U2Unc0c2QzdzAzS3M4NnJFQVdFRjFWbVZUSmMrK0FYc0FReERhUVhBRmYxQWh1c2ozQ2RXbm1VNXpyR3VYTnd3VlFDQ1lhNXFCa3gzNVJaelBuS2JnMUZoa24iLCJtYWMiOiI5MWU2YmZmYzQwYjhhMGZhZjRjOGY2NzNiYzI0ZGFhOWFmYTRiMWJmOGU2MmY2NzkzNmM4NDUxMDIxMGQ4YjMzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InNkTXVBQU9FU1BXNnhUQ2c3Y3d5d3c9PSIsInZhbHVlIjoiK283eHpNZFpOTS93SHlrQnRXYjNIcHplRzJTNGZFb2ZNbHpZbXpqYWtiTDBKM2paUmFuL0xWRU8vWGZLaGN5N2NPQ3M5dWtZbXJudkc2SkJiQ2tiK2gycDNUVmltcDZlYWVTQlUzalVVN0ZrdGF2bnR5R2xQY2x6d3pmUEVVSlkiLCJtYWMiOiI3NDFiMjU4N2FmZDFiMjI3ZmJlMDM3NDZhZDVmZmUwOGVjODU1YmIzZmU1MTQ3OGZiY2RlOGMwNTZlNWQ0OGQyIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-03-15 17:53:32', '2026-03-15 17:53:32'),
(28, 'GET', '[]', 'http://swatorganics.local/dry-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Im5ManFwcGJGaS9xaUZtUGZFSUFyb0E9PSIsInZhbHVlIjoiSk52WHhWMUptZkgvMzN2Wi9uYm5PSHZQbzhoOGpiWHpUL2ZQeFovT3BvcTdaT092NmpwSmhUaHV0WDNTWXl0ait1TTJkUGZvaFhnemZMNDhuWnJIc1FmUGVDSmVUVmwvZXQ1MkNMaWRwTkNKTlRTQmxIZHFMMlhLQ3lTanBtOWciLCJtYWMiOiIwZWIyODg2MjRhMTU1NTAyOTU2MTc5MmI1ZjRhZjI5NzQzODcyNzgxYjZmYTc0MTVhZGNkZDFlMjJmZGE2YjZkIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjI1d0VxcHNRVmF1OFQ3M0pvVzNDVmc9PSIsInZhbHVlIjoiOUVrYXhLdEljT1dRY3Bia3VUNXU2VDB3T0RzeXlrTEVFaGlsL2Zsa2pLN3d5TDVQWlI1cGE3V3dDNVl1QVJjVXJPUlJFZFR2RUpGOU9JdUE4TzRpWEFtbTVJZWFHbjhSVEpSblJHNWJmZFhodC9CRklHSjc1dHo4aHpvcGdCckwiLCJtYWMiOiJkZjU3NWE0OTdmZjA2OTU4ODU4NGQ4MTA0NDcxYTI2MTlhM2NmMGMxZmI2YjMyNmViYjg5YjFjNjEyMWY0ZWUzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InNkTXVBQU9FU1BXNnhUQ2c3Y3d5d3c9PSIsInZhbHVlIjoiK283eHpNZFpOTS93SHlrQnRXYjNIcHplRzJTNGZFb2ZNbHpZbXpqYWtiTDBKM2paUmFuL0xWRU8vWGZLaGN5N2NPQ3M5dWtZbXJudkc2SkJiQ2tiK2gycDNUVmltcDZlYWVTQlUzalVVN0ZrdGF2bnR5R2xQY2x6d3pmUEVVSlkiLCJtYWMiOiI3NDFiMjU4N2FmZDFiMjI3ZmJlMDM3NDZhZDVmZmUwOGVjODU1YmIzZmU1MTQ3OGZiY2RlOGMwNTZlNWQ0OGQyIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-03-15 17:56:03', '2026-03-15 17:56:03'),
(29, 'GET', '[]', 'http://swatorganics.local/nuts-with-shell', 'http://swatorganics.local/dry-fruits', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/dry-fruits\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InhBQlk1S2dpNkR4cTF3VG02d2R6R3c9PSIsInZhbHVlIjoiZTV5TnUyRDhQNys0aitzbU9UbmlqNHZlUjZ6TTI1aFBlVnBldTQxeG9BenhmRlNmbzF0V1ZlZHJYTFZFTVFhdTF3a1c5a2w1bzBjVWxkOXFacWhLQytlS05GUWl3TGtPZGNudk45OGQ5RWRqcXpoVmwvNUNTWFk1eTBrTFBtQTAiLCJtYWMiOiJlM2Q0M2M3MjlmNDQ0M2JhYWJlMjQxNGMyN2VjMzdlZTNkNWNkNDBlZGJlNTZhNzlkNThiZDQ2ZGJlOTdlNmNmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkhEdjIzUnJya0VRSFFLUGF5YjJUMEE9PSIsInZhbHVlIjoicHNBd1ZRZFZxR2VkTStBcC95ZE1OTHIxL1NETCszZDROQUdZRGR4SUlJOXBsU0dtc3EraTl4ZHM1V2RhMGVvNXNYMU9IRzRzZ21tSU9OcUxaMXlIRkU4TjhSRXlWdm9WQ05KSXpoNGhvUlNKeFYwTHc1bW5KMUxHUUxQc05iUnoiLCJtYWMiOiJhYWQwYjM1M2MzNzBjMzZhODY2MDBiMWM1NjcwNDc1MWJiZWViMWRlMDQ0ZWNkZWI2MjkwZDA4Y2FlOTc0MTQ5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJUb3NXZkN6RWhURUtKNHR1UncwSnc9PSIsInZhbHVlIjoiUGdqVUczdTZDNnhnSmZhSDZyNldVdEFJdllhNnRyU2toeXFvRVY1b01lMzduaWwvbHJ6L3pLcS83TFk2VnBpVnpKQngxSlVhMWVHb3NXMEJvamtlMU5oa2VVWjdhbEhHWFFFSTdWUFVkYi9RU2hNcVUwUTRZcUNJVmdTM3JGZU0iLCJtYWMiOiIzNTc3YTA5N2VhNzZhNWU0ZTFkZGIzYjIwMjNhYjYzMzU4ODFlMGYyMzdlNTE3ZDZmNTFlZDQxZWI5MTlmNTk0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 4, NULL, NULL, 1, '2026-03-15 18:06:50', '2026-03-15 18:06:50'),
(30, 'GET', '[]', 'http://swatorganics.local/nuts-without-shell', 'http://swatorganics.local/nuts-with-shell', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/nuts-with-shell\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImZVSHZxaWVCQnZnZG5Ld3VaNUVzeFE9PSIsInZhbHVlIjoiZk5PaTg5QWY0S053YlcveEhBVGZUMVFIRzlXY21VS25nRHptMHdMeHgzSnVzSmVuQ1NuU09CUytKYVVGZ000cUswV3F1R1dpejhFZE5xdStnZitJTDRCNnlZRTRtT05tM21URCtrQUlzenN1dGhhWXJLYWFoZVpleVBRczJnQTgiLCJtYWMiOiJiOTI3OTVjY2E5YWI1ZmMxMWQ2Mjc0NWY4YjA0MDk3OGZhZGJkZDUzZjkyMTcyNzlmNzdhODVmOWZhNzBmYjBhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlF2cXRDSXY3VmNTRjNYWFJDQlJnN2c9PSIsInZhbHVlIjoiTGpmcE8wYlR5Qmh5TjJBRitua3oxY3JvQ3B6eXJwN0lJL1VldW1yMFNUQUpzOXRadWVVSFFsQ0Q3UHlaMUpRakpHOXF1S0JvOHFOdTJ1NXZYQ0x4aWlxaGVVSU53bWhYZUUwRUlKQ1Awc1UwT29VUHlqMW1VdlFRd0pNL0hjL3EiLCJtYWMiOiIxODFiYWUzOWMxNjEyOTgzM2FmY2M3NWY2ZTVhZmM5NWRiODcxMGU3NjdlNmUyZjRmOGFiNWRmZmMwMTA3Y2QyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJUb3NXZkN6RWhURUtKNHR1UncwSnc9PSIsInZhbHVlIjoiUGdqVUczdTZDNnhnSmZhSDZyNldVdEFJdllhNnRyU2toeXFvRVY1b01lMzduaWwvbHJ6L3pLcS83TFk2VnBpVnpKQngxSlVhMWVHb3NXMEJvamtlMU5oa2VVWjdhbEhHWFFFSTdWUFVkYi9RU2hNcVUwUTRZcUNJVmdTM3JGZU0iLCJtYWMiOiIzNTc3YTA5N2VhNzZhNWU0ZTFkZGIzYjIwMjNhYjYzMzU4ODFlMGYyMzdlNTE3ZDZmNTFlZDQxZWI5MTlmNTk0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 5, NULL, NULL, 1, '2026-03-15 18:08:05', '2026-03-15 18:08:05'),
(31, 'GET', '[]', 'http://swatorganics.local/seeds', 'http://swatorganics.local/nuts-without-shell', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/nuts-without-shell\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ind2WitxVmhCbnptdnVKYW8vYVRyT1E9PSIsInZhbHVlIjoiSERiU1hRczJYYUlzQUxPS08ydUxmTHg2WTZxRmdkd2dwYURaUVdyd0Q1aXVMQnF3SW15VHV6Sk9PU1pxaDRlWEEway82bUhMemFLaDdPWkc4Yzg1emVMa3hkN3h1ZFRScDU5KzdvMWdUd3dySk5VdHJBczNsdks5TklmU094V2YiLCJtYWMiOiI5MDNiZDM0ZDk5MDgwZWJiNTNkY2EzMDVmNTMyMTdlNWI2MGEwNzhmMTdmZTIwN2U4MWU3YWRmOWNhY2ExYmMzIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkJWQkgxN1cwRnVqZmNkT1BaVEd6c2c9PSIsInZhbHVlIjoicm80NUU5eGFlbEJFT2h2R1ByaTRSeFpxNVFpa09ZYnk3bUtZL3dkTGNGT0FmMHQ0MGI3MGxZbk95WGhoSm9pY0Y5SnVrZE5QUlZVOEk1MXI5cGlLNTZaRjE1VUJFbzhZSVNrZHBOeGxkbWl5bHN2YU5UYmVpRGl5L2g5ZVFNN1kiLCJtYWMiOiIxMmUxNjk4ZWVkNTc5M2MwZmE0ZTE4NjVmYmYyNmRiZDcyODhmOTA3MTY3ZTQzMzRkMjE5OTUzOGEzN2RkNjI3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJUb3NXZkN6RWhURUtKNHR1UncwSnc9PSIsInZhbHVlIjoiUGdqVUczdTZDNnhnSmZhSDZyNldVdEFJdllhNnRyU2toeXFvRVY1b01lMzduaWwvbHJ6L3pLcS83TFk2VnBpVnpKQngxSlVhMWVHb3NXMEJvamtlMU5oa2VVWjdhbEhHWFFFSTdWUFVkYi9RU2hNcVUwUTRZcUNJVmdTM3JGZU0iLCJtYWMiOiIzNTc3YTA5N2VhNzZhNWU0ZTFkZGIzYjIwMjNhYjYzMzU4ODFlMGYyMzdlNTE3ZDZmNTFlZDQxZWI5MTlmNTk0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 6, NULL, NULL, 1, '2026-03-15 18:09:20', '2026-03-15 18:09:20'),
(32, 'GET', '[]', 'http://swatorganics.local/mixed-dry-fruits', 'http://swatorganics.local/seeds', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/seeds\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjFCbVY5cUVCRW1zMkVzek5vVWwzU3c9PSIsInZhbHVlIjoiUkpGTzZyQ3dBWVk2eDhldEwyR0FBb2RzYTdQV3lhV3RvSTg0cnJFd1JxYmpaaUZjQzN2eDRHT2N5YjlteDhLOGFmVHNSRlVEa014VkNUMitzTExjNkttYjVXdEtiTUp1SHdwWG1UUGVSV1c1bmtKUGZWRzR5QmpQdU5sVTd5SGUiLCJtYWMiOiJlNzVlNTJiY2NlY2FiYTA1NzJlMzExNDQ3MTBiODg1ZjI5ZjdkZDIwMmY0M2RhNDA2MmRiYzQxMTU2NjFjODQ3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im1QYVlJZHlyZEhYWGEzZkV4YjlXY3c9PSIsInZhbHVlIjoiazA5MHFLR3hhL2lROEE2RHZkUkVtQkJMRitHWFV2WllJNkhuVGZ3Nnh3MytyT3cxUS9SOXRmb2tSeUg0cmhadFJyeFFLamNhSmlyRVd2dkVma08xbDNyY0VHSTRpZmFQekxRSG9ZN0hSbUJIbC9WZ0JTcXZvL3FYMHduKzhkUUIiLCJtYWMiOiIzMDYzOTg0NTEwOGYzZjgyOTk5ZjY4NTc4M2IyODcxMzczMjMzMjgwZGM2MjMxY2Q3OGI4Y2NhN2Q3ZmYyZTUzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJUb3NXZkN6RWhURUtKNHR1UncwSnc9PSIsInZhbHVlIjoiUGdqVUczdTZDNnhnSmZhSDZyNldVdEFJdllhNnRyU2toeXFvRVY1b01lMzduaWwvbHJ6L3pLcS83TFk2VnBpVnpKQngxSlVhMWVHb3NXMEJvamtlMU5oa2VVWjdhbEhHWFFFSTdWUFVkYi9RU2hNcVUwUTRZcUNJVmdTM3JGZU0iLCJtYWMiOiIzNTc3YTA5N2VhNzZhNWU0ZTFkZGIzYjIwMjNhYjYzMzU4ODFlMGYyMzdlNTE3ZDZmNTFlZDQxZWI5MTlmNTk0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2026-03-15 18:13:02', '2026-03-15 18:13:02'),
(33, 'GET', '[]', 'http://swatorganics.local/dates', 'http://swatorganics.local/mixed-dry-fruits', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/mixed-dry-fruits\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InRnVHI5ZnJieHlsd1F2cXhYL21KZ1E9PSIsInZhbHVlIjoiRFpMSm9rbmdXU3RtT2VGSkdzZ09UL1VTckFreE1SSUpZMEQwQUN2L2s1SGd0ZnNBeUR3ZHc5bFN6R3JueVJqbGN6TEJJZVZ4ZFp6eTBKSG1vNTkzYzBtUlMrR2N4V2NjcFp4ZjFtdFVTam5KdlRxL2laV2pON0FYbVhsamRMTm8iLCJtYWMiOiIwODYwOGFkY2UxODc1YmUxODg0ODg3OWQzMTk0YmU2NmZhOTI1Yjc2NWNkZDkxZjc4OWQ1OTI5NGU4OWVlNTdmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlVncjNsOWxqYVIrSENIZXRXVkdBTHc9PSIsInZhbHVlIjoiUlNIeXV5M1lZQVBkVEY0QjhqS3dTNmhhNUNnUmxYeGs5SjhFOTVGUGlWeVN0STQ3VStFUEdoQ3Mvc04vc3NmcFJkM2UvbFR1OVpOcUw4U015emowYkZ2djYxMkh6ekdEUVk3aG5JYzVodHc5TU05SkxjZUdwNTUwNHBnSEJYUUciLCJtYWMiOiJhMWU3NmRkNjllNWNiMzZhNWE4NDc0NjA1NjQ0ZmZiOWU4MzJkMmQ2YTdkN2I1MGEwYmQxY2I5MDc4NjgyN2ExIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJUb3NXZkN6RWhURUtKNHR1UncwSnc9PSIsInZhbHVlIjoiUGdqVUczdTZDNnhnSmZhSDZyNldVdEFJdllhNnRyU2toeXFvRVY1b01lMzduaWwvbHJ6L3pLcS83TFk2VnBpVnpKQngxSlVhMWVHb3NXMEJvamtlMU5oa2VVWjdhbEhHWFFFSTdWUFVkYi9RU2hNcVUwUTRZcUNJVmdTM3JGZU0iLCJtYWMiOiIzNTc3YTA5N2VhNzZhNWU0ZTFkZGIzYjIwMjNhYjYzMzU4ODFlMGYyMzdlNTE3ZDZmNTFlZDQxZWI5MTlmNTk0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 7, NULL, NULL, 1, '2026-03-15 18:13:04', '2026-03-15 18:13:04'),
(34, 'GET', '[]', 'http://swatorganics.local/organic-products', 'http://swatorganics.local/dates', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/dates\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IklVYXpTNmc0MEhZVXJHZlFnVjJFMHc9PSIsInZhbHVlIjoiOW1NeEMybnRzZ3V5TGJESkJLbi8vd2MxeHhLMVRaUkZCTUtWSUc2WmdOK3JCV2gzSGIvQSt3VHBXVmo2NG0zK3BQOVVjMUV3UTJMWFpqMnZsZEtKVlUzQmEwQU1HTkRFc3pXZU1yZW1paWVmVlF2WVZrNUpiQTNDZUZ2RHdtRDUiLCJtYWMiOiJiZGU2NWFiZTA5NGFhZTFlZmFkZmZlMTkzMWVmNDRlZDkzYTYwNjQ5NWU4ZDE1MDQ1Y2Q0YTllNmZjOGVhZDdmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkFzR3diREtBMU1jdGpKaDdEZStoSEE9PSIsInZhbHVlIjoibFllNmMwQkI0VHhuRlhDYlYvVW1Bc1lISlBJTlFmNWdGakpJZVMvM294eUR6THNBNTdPRU0zMGZ2MURub01qa3NIWlNPM29mNkt1NTA0ZmhGbWwxeDBjNzhVWkRHQWVQWlRxNnBNUTBNQUs2Zmg3QVg5R1RyRkhJZGJUeVRXODMiLCJtYWMiOiJmMjBjOGE3YzZjYWMxNTdiOTA1ZTdiMzIyMTVkYjZlYmNiMTAyZjUxNjc4Yzc2OWFlNmVlNTFhNTBjOWE0YjhlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlVSQ0xqSm1KQVVrb1dlM0lTNk9TWXc9PSIsInZhbHVlIjoic3NPeDh4MmNOMk1zdEY2L2dack9nZEtRR3RFbktnb1B0Z3ZXYlJuRFJMQVV4MTQrRFhLYkdZU0RJZmJRT2wwUnl4NFFXaXdNR2Y1b0ZMYTh2cFNBL2xOenovRHlLUllNa0xTWnJzZkl2YStTSTB1eVF3UmdSOG01UStNeFdyNnYiLCJtYWMiOiJkZWRlNzk4M2NiNjJmMjJiZDE1ZTI0YzQwYzJlODYzN2RiMzgxNzEzZGQ3YTNjNDNlOWIxZWNlY2JhYjlmZDcwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 9, NULL, NULL, 1, '2026-03-15 18:13:06', '2026-03-15 18:13:06'),
(35, 'GET', '[]', 'http://swatorganics.local/gift-boxes', 'http://swatorganics.local/mixed-dry-fruits', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/mixed-dry-fruits\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IitoRkErcmhJdEkvd0o3SEluQ3llZWc9PSIsInZhbHVlIjoiUHBIdVkwMzNQVlBqT1FEdkJKcWhObVBqcWlyMVJQamZZL011bWVEYnMvSE9xa01zM0FqMjE1d3dNY3c5d010azJxR09KbFVmRCtXUGkva0YveDhOaHkzdjcvVzFtN2RpV2ZVWmhZVHhwZUYvS0VzMjQxemV5ZEhFL3I2bW5GMWMiLCJtYWMiOiJkMjg0ZTYzZGI5MzU4Mzc2NmI2MmMzMzljNmFhNDUxNWMyMWU1MGZiNjI4YmFiNmMwNWMzMjQ2YTJmNDIyMWUwIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InptQS9UNVF2SlYwdTZ6cmJycVFtbGc9PSIsInZhbHVlIjoidUFJTlN0NEN1NW1vdnhzdFRIQTBpdXpNUFVzLzlxcDRjOURBUlBlRmVkNkFaK2dOc3V4NVIvTGdLbzR3c2QrU1UwQXpyWUJtenVCQjlRYmNlMVppNEdQZ3pVRDN0T0Z1K29hdm8rY2JUSFlReTE1QlZ1ekpraE9Mb1E1YXVydU0iLCJtYWMiOiJjZTIzNzU2ODQ2YjY1ZWFmNzJjY2ZiMjI1YzZmYWE0NGNmYjZhZWRjMDZmMjE3NzlmZDBhMmFiZjBjMDFmYTIxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InZLcTBaNVA1akZFY01UU1lyMjJUWkE9PSIsInZhbHVlIjoiZlFPanNkcDN6TEMzeWo4cFBRLzFhSjJ1dVBUei8zYkllcXpjTDFLcklLZUJLcmJHRWJFMkZER2ptNitXN3JrcDI0ZXh3S1JNYTdGcmVWVHpEck1SdmRRY1c5enQxTVZoZmNSQjd6Ymt3dVBKYXVLRzd4bG9TaXpsQm1vb00xVXoiLCJtYWMiOiI4MmVmYjQ3NmI5OWJkYjBmYjA2OWQzZjM5MGI0OGJjOGUyYmM5YWVlZTk4ZmE2ZmY0MjFkZDIxNDI1MTlhZGYwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2026-03-15 18:17:07', '2026-03-15 18:17:07');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(36, 'GET', '[]', 'http://swatorganics.local/dry-fruits', 'http://swatorganics.local/organic-products', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/organic-products\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-03-31 08:59:54', '2026-03-31 08:59:54'),
(37, 'GET', '[]', 'http://swatorganics.local', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjFSdUZxd1BXWXpObWpSZGdJVGJOeUE9PSIsInZhbHVlIjoia0NNclRFZG8xQXF5SDd3Z01tVHpPbzRqbnVWSUZjdXNoWGJZaCtIejJKTnplZU05VXJ6c2JGejIzM0k0Yk5YNUd1THZmSXUydzFzSFh3RlYvQkRkd3cxS0wrTmEzUkxkSzlIWEFKYnAwQ2hocnJlenJPZGZjY1NQSVI2cnZiNUEiLCJtYWMiOiI2OGI1YWI5YmVkNjEyYjgxZGVjZWYyMWU4ZTY0NWQ4ODA0OTI4MDQ4NmUxYTUzYzFlYzcxOTk3NjdiZjUxZWY5IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ikt4UnJPT2JKdG95VWkzSHFyejN5WkE9PSIsInZhbHVlIjoibzlGenp2T1hlY0lUdEYvR3JnL3ZlbUc3M0ZSOGgyMmZTZ3dqOVdoVFluWWRQUnRNUmlRODA3NE1nc3VPdlI4SGRFaFlGWW9aczlyUFNFWHZITXRoMUkvQ2hvY3MvTmd5blFXUUJnTmNQZnROTTZoY2V1ZSs1bFdUODFmTVZaYmIiLCJtYWMiOiJjOWFlYWM4ZjU3NjMzZDQyNDBiODI5OThlZmIwYWRiYWNhZDEyYTVhZGZhODcyYmYyMjAyZjk4MTMzNzRkYTRmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-03-31 09:00:05', '2026-03-31 09:00:05'),
(38, 'GET', '[]', 'http://swatorganics.local/dry-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko\\/20100101 Firefox\\/148.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlhOcTFmMWQ5cjBYcktTZ01qaG9GakE9PSIsInZhbHVlIjoidnRER3Z0OS8wTXlTQU90RTZVNy9rUzc5K2F5WmIrNnRXNWVNT1ZEZU01VVBiNXFZdzdGaGs4SlhNdG15L3Y1OVIrS0EyNkNrV3ZsWE5GRnBjYmRJYlJteWxPTjROZEtoT2RvcitxUkFVYjdwRUFuaVgzUDdHRE96OGpNMXgxT2ciLCJtYWMiOiJkMjg4NDk3ZTQ0NWU4OThhOTBhMjQyMmEwODgwMWRlZThkMTBjMjQ0YzU2ODg4YmQwZTVkN2EzMjc4MjY5YzI3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImYvREJ2V2xVaFdTcDlMTlZxTU4rb2c9PSIsInZhbHVlIjoiaFpQR3lQTEVQMHpkNEgvNjlmbzNOak5UdzVEaXpDSGIrNmszQ3pJT0pub2ZEeDNZVjdBczd2M0grbWxRV1c2STFwL2ZvSURJaHQ2aDMvb1dNb0ZLOVRPbGVMM1gzMnpNK012TnZ5VGtzamxqOHZudS9TV0JtNERDS2JJemRnL2MiLCJtYWMiOiIwMmFiYjRmYTQ5NmM2ZmI2NzQ5YWZjZjU5NDVlYmJiMDZlNGFlMmNlOWJmYTM0N2RhMWIxMTcxNTNiMGQ1MmQwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-03-31 19:58:18', '2026-03-31 19:58:18'),
(39, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/dry-fruits', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/dry-fruits\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlArWnNXV25ScndoSnhlNFR6WkZkdEE9PSIsInZhbHVlIjoiN2RZNGUzZkJJSHJrUmJreUJVOFdFL05PM3hwNnJlY215Y0M0dk1tbnlYaWF2L2RCM3JYUEhXeU42bW95d3lqRE1KT2JZaFpkMFFuZ091MERSZVBRcFV1bFpkRkJxdFhwaXV6OFpNaWxoQm1KeGdUOG1nR2EvcUdSejF3b2hHN3YiLCJtYWMiOiIwMzNiYTBiMDAwOWM4YzZmMmFmYjY5ZGI0NTMyZjU5MzE4NDU0MjQwNTA1ZGFmNGRlMzYxZTQ5ZjkxZTBlNTUwIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ilp3YnJZek1oL3E4Rk96UURRZm9VS0E9PSIsInZhbHVlIjoiUW5pTEtORTY2Rm9WKzhLRHo0bFI2elVvbjlsaE9pOEY5NmN0UEs0ZnJPUWtNekhaRzRpUTFCRkpVaEVyeWpWMHYyZER2S2lyV1BpcU9wVnRXR1haWEVEaE5LZUt2N0RobkF3NzhiWEJIcWdQaXRqVnZXa1M3REUxaGFpRjh3bEkiLCJtYWMiOiI1YzAxZWJmODA2YzY3YzQ1MGIyMzM2Yzg3ODYzOTc3YmRhNzA1NDY4NmIyY2I4MDEzNzZhMTM4MDc5MWRhZDk3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-04-01 09:12:55', '2026-04-01 09:12:55'),
(40, 'GET', '[]', 'http://swatorganics.local/honey', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ik9HZkNGWDl0bDd1M2tJeUZhUmNQYlE9PSIsInZhbHVlIjoiNkYzSGhRalRKeVVFK2EwYzAxcm9oQXpBci9idnU1YUJpcWRnOWdtMkpVcktDeHRNSmVDOEpxNFN3dkdqelBWUzhIMzhOZyszR1BhRFhTa0lSQzF4TWp1dmRqNDBQUHZUS3FKeTNTRUJlclQyaHFDR3ZQY3BmcERhZ1Q2dkxIZXIiLCJtYWMiOiIzMjY5MzBkY2E5ZDZhNTY2MmNhODk1OWQwNGUzZmQ5MTY4ODE1ZWRhN2ViMmQ3MTlhYjJjOTRkOGNjNDAzNWM2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkVyRnNhUlNhRDVYLzhhWm15Mm5BVnc9PSIsInZhbHVlIjoiTEtRMGZBNnpHN0N0VDF5Uy9HZkZxbjVMaE5sNEY4MXpReWtNUXRkS0hmQkUzYVB4bWYxYTFHblpBMjV0N09tVnB3czFGRG9Sb3F1VjE4Y25LODFxM0o5bW8ySCtwQ2RJRm9uRU9IK0NyK25LdW9wRUN5TWhMWTcrakxRMEVEcUMiLCJtYWMiOiJjMWQ0OWUzZjMwYmFkNDc3NDAyN2Q2OGFjY2JkNzg2MDlmNDc1NDlhN2QxODJkNWUyMTFmNGU4NjcyYTg2Yzk2IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-04-01 09:43:58', '2026-04-01 09:43:58'),
(41, 'GET', '[]', 'http://swatorganics.local/raw-honey', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InVOcVVFN3dGY2gzN0VVR3FtbURVTnc9PSIsInZhbHVlIjoidGVrQnB4c3VpY1VQaFRTSkhyb2dDTW9kY0NFM2tJcFdLelFCdUNZaGUzUndSb0tONnc1eVp2aklGWDZQejROYW9KT1d2RzJRREMvOUp6QUxibEpJbitMMUNDTVhFeW5OWWJwejJwS2xYZm13bGxlUTl2QnBObERrclQ0cU54V2IiLCJtYWMiOiJmZGIyYWVmNjlkN2ExNWFjZTcxMTFhZGZkYTc5MTdjZjgyNjdlYTUwODk2MzQxZDdjYTBkNTcyNjdiNDk5MTk5IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlA0L0MrbGNKTGlaSGlKVlVsQ25CR1E9PSIsInZhbHVlIjoiYlZRY2xORkRKcVM3ektJQU16MktSQnAzN2dxTWREU0tuMkFwSDU4ckhZUnJxdFJWN3plNlAzcGwwOU8yNmNsZk1Pb3JKc3dyM09IZ3o3Uyt1bDl4NDZxcVlaZnFSM2gvblZHWmxTYnpIOXp0Q1MwbEZHUHZYSElXUHFoK1hHcU0iLCJtYWMiOiI3YmZjN2NiZDljNTE3YWFjZGUwZmNkMzU4ZTkzMDBjNTE1ZmRkYTJkOTExYjZjMzU1MmNiYzNiN2JhZmVmM2MxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InIvUER6MnNiT21NdklpSnNWSkZ5Tnc9PSIsInZhbHVlIjoiTUFuL1BLVGNWbEhybytZQS84QkdOekIrZER2WXp5dlNWR0U2OFQvYTdJcFdnL1BDUG5zcnJTeGxKb1Q4akdkSWNiVjU2NTd2MU1LeC81Ui9xSnU0aDROTEhKL0RHMFpKM1pJWEdhMnVPa3Q3d0FienVhWHhMZ0ZVcGxMMUF1TVgiLCJtYWMiOiIzYmRiMmRhZDU4NzJlNWUxNjE0ZGE2YTYyZTliM2ZlMjhmMDhjNWQxYTkyM2NkM2QzYzM0ZTQ3MWI1YmZlNGZmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 11, NULL, NULL, 1, '2026-04-01 09:58:16', '2026-04-01 09:58:16'),
(42, 'GET', '[]', 'http://swatorganics.local/dried-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InphTTBjRG9WKy8xUWV2TlpTTVdnWnc9PSIsInZhbHVlIjoiY1N6QWVTeEhLMW5KOWozUThndU5IVGhicnUwS1c2cmdPdXZIUGFiVERvK29MOENYOXVuVk1aaVllMlFLMHN4d2NUdzZleGxKZXcvckxSQmNTVmNhWEhycWVFVnY5SEdVb1J3QWZpOFI3elNmYkZxKzE3NGgrb1pwTmkvNWljb3AiLCJtYWMiOiJkNjA1YTViNzE4MWU5MzI3YzIwZjY0MDA0NWM0ZmFlMjA0ZGViZjI2YWM3OWY1MWQwZjM4NjA4ZjRiMGUyMmZlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjVjdUdla2liMmNDczBZSDdnUlZvZnc9PSIsInZhbHVlIjoiS2NJdzhaWnQvU0k1WHUyWFlKZy9FZ1VEZzRONzV0S0grZXVKcTZEU1kyRU1xdUh5Z044RnNsOWZiaDFQWkVzcU5ZRGpKUkQyVHkzdE4wUS8xK2ZOdHZoOWxLeFRCWnlDVTRZSUIxMjN5OG1VUWIzc2dDYUNDVDBtMG0wVXJPUGMiLCJtYWMiOiI0YjgwNTc1N2RkYjhkYjVlYTliMTI2ZmQyNTIzNThkMmFhM2Q0N2RiNGNjZmY5YWIxOTMxOGUxNWMzOWQ3NTAyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InIvUER6MnNiT21NdklpSnNWSkZ5Tnc9PSIsInZhbHVlIjoiTUFuL1BLVGNWbEhybytZQS84QkdOekIrZER2WXp5dlNWR0U2OFQvYTdJcFdnL1BDUG5zcnJTeGxKb1Q4akdkSWNiVjU2NTd2MU1LeC81Ui9xSnU0aDROTEhKL0RHMFpKM1pJWEdhMnVPa3Q3d0FienVhWHhMZ0ZVcGxMMUF1TVgiLCJtYWMiOiIzYmRiMmRhZDU4NzJlNWUxNjE0ZGE2YTYyZTliM2ZlMjhmMDhjNWQxYTkyM2NkM2QzYzM0ZTQ3MWI1YmZlNGZmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 9, NULL, NULL, 1, '2026-04-01 09:58:25', '2026-04-01 09:58:25'),
(43, 'GET', '[]', 'http://swatorganics.local/gift-boxes', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImxkL0xKYlNCZlkxZUpvZ0FMNXpVTHc9PSIsInZhbHVlIjoiZjhBbU9xKzVyN0V2UzFubWFqZnpteWN2RzhHZ0U5NG83REl6czk3NExlb0ZZaE1UaVIrcVViT2hZTVkwV0VHZy9zZXVFV051NTJzV0JtbmtIeGZMUWJ2dHV1NGRlcFkySk50b1Q2MnJ0ZG5XSC8raVFLNWhxTlQwclRRR1YybGoiLCJtYWMiOiJjOTAwYjEyNTY2YzJmMmRkNGZmMzIxNDkxMTA3OWYyNzhmZTEyMDM1MTk1MGIwNTFkOTE2ZjhhMTI2Y2RmYjk0IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImN6S3NKeHNqYm5qdzFKSVUwMHN4enc9PSIsInZhbHVlIjoiQWZhZkxYcEFMbFU3UVdydERVam5icXlhL2Q4VGM5V0FucFBWbGV3STZERXNXT0svOUIwOHFjTW1HSy85UXJHQmlJRHBHc0dtQ0x0VnI3ZDMwd1kvMjZDRzlOQWlUc1VJbzI1M1N1NjdmUXg0b0l6elZpZnJaYmU4UWQ0ZzgxQVAiLCJtYWMiOiJkZmQyZjc0NjRkNDg1ZGJkNDFiOWEwZjlhYzYwNjY4Zjk1M2QzY2RhZmI1ZjA1MDU3ZTYwMDFhZDhmODE3NjZkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik9tOTZEK2xnNTVkYTlOeGtPUnM2S2c9PSIsInZhbHVlIjoibjBFUDZHbW02a1hvTlJ1OXdob0UzSTE3bm1QUzl5a2Mra2ZmTnkvdWljL0t0ZXVrUkhxaS9QMVgvdm90cVZZQlhlM01OR1h4WFhrWWk5OFF3ZXRURTJmSTMwcGxYMElOaUQzOTFEL0J0VmlvOWFFbkQvaFFhdmtGbU1LSHdEUnAiLCJtYWMiOiJhZWQzZTQ1ZjQxOGVmMGU4YzczZTM4NDhhZmFkZjE3OWVjYjhiMWVkY2FmYjZmZmUwZjM4Yjk5OTRjOGIzODIwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2026-04-01 09:58:41', '2026-04-01 09:58:41'),
(44, 'GET', '[]', 'http://swatorganics.local/superfoods', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ilo2azlmcHNkYytPcUlTejBsM25Ecmc9PSIsInZhbHVlIjoiMFFEVEloL1RLRWhBTWU3WC9ZQ2ZnSzR0TUtuZG5KZVFFMWNucW5oMzFVUDdxWjBGbms3c3RWSG8wdVg1NTN3YS9RTXBhYkM3V3VxRWFOVWszQkVVbG82cHdyeGhla1g3eGpwSXJOQjJWc0twZ1pTc1F0TWRYMjQvVHlyVS9OdEQiLCJtYWMiOiJkNGYzZTc3YjFjMDk4ZWNkYTgwNGY3NGNlZmZkZWZlNTYzNjNiYTA5NDE3ZDg2NzFiNzgxMzAyZTAzNWI5MzcxIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImJUZ3p4VjA0YU43VHI2blNwRDBDa2c9PSIsInZhbHVlIjoicUpvZTcvMWJnRUkvbmU1M000UzZEZDl1T1k0TCsxVE5VUjBLd1h4QWZYaUlHdzNFanJzam9IaksrWlYzQXJxSUxEeEsrcWd6dlhvNHovZ3pYR2hUM05HemdoWTJNYWVwS1lNYm52K0hLNXlDZDlJeVhsditmdHRqaSs3ZjlpWmgiLCJtYWMiOiI0YWYxMDZlZDg0OWU5ZWMzYTQ1Y2YxMzcwMzgyYWU2MzYzZjI2MmZkYmY4NGQyZTJlZTNkMDUyZTYxNGViZTc1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik9tOTZEK2xnNTVkYTlOeGtPUnM2S2c9PSIsInZhbHVlIjoibjBFUDZHbW02a1hvTlJ1OXdob0UzSTE3bm1QUzl5a2Mra2ZmTnkvdWljL0t0ZXVrUkhxaS9QMVgvdm90cVZZQlhlM01OR1h4WFhrWWk5OFF3ZXRURTJmSTMwcGxYMElOaUQzOTFEL0J0VmlvOWFFbkQvaFFhdmtGbU1LSHdEUnAiLCJtYWMiOiJhZWQzZTQ1ZjQxOGVmMGU4YzczZTM4NDhhZmFkZjE3OWVjYjhiMWVkY2FmYjZmZmUwZjM4Yjk5OTRjOGIzODIwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 12, NULL, NULL, 1, '2026-04-01 10:04:18', '2026-04-01 10:04:18'),
(45, 'GET', '[]', 'http://swatorganics.local/dates', 'http://swatorganics.local/superfoods', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/superfoods\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InY0eXhiZUlYY2xCYWUvSDJneGoyWHc9PSIsInZhbHVlIjoiZ0FJMUpsdkNRODl3eHdrekVnL2l6ODQ4SGpoWEFVUTFHdm1nN05rMlRGaXJ5b3dsUDBwRHVrYjBqNVg2TldMZDZpUktnVW05Y0RacjZqWCtsZlRDejRhNUliWnhuS2RONDl5THZTdGUrR2JFUWNTbis2SGhqWjM5RGlYdzlVRzciLCJtYWMiOiI1N2Y2YmIxYTYzNmI3NDJjNjdiOWJlNDYyNDIxMTc3OGI3NTRiYzcxZDg1MDYxNTY3N2U4NDc3MDJmYzM1OWQ4IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkIzYVpIR3hiTEgvUDZqcktuRE5KK3c9PSIsInZhbHVlIjoiVVlJaERENXlKSHdXdU5yb21LdEl0MEZwckhtWEc3Q1J0RHJRdGR2dk15OHAva0k3WnUvZHovdSttejIwZ3FmSEh1MW9xa1VJNGg2RzN2T3dMeGthSElWYkYvSm5NOFlEMUhKMmZpTjJ0Yng3RGw2Qnl3Z1ZqRVh4NVdEbm1FOGgiLCJtYWMiOiIzY2NmZGY2MzJiZDI0NGU3MmFjMTNiNGRjMzEyMDA3OWRmM2JlYWY0YmIxZGEwMDlkMTcyNzQ5YTEyNjBhNWE1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBLanRiMDRUQllvNkVHNmxPcHZTQVE9PSIsInZhbHVlIjoiSTlrL2FBYTBJZGc5MVlGSGltQktUTmlMYnhpaWlyWUVKcVAvRlNFRWlXTVR4SUEraVVJc0NjVldOTVJ4NlYrZ09UWktYNzczd2RxdEt3NEN4QndiOGZ5bGYzVGY3TlgwWVJoWUxjU2RLWTBsTGxBWWhyaDVPdktNZHpkS0VXU0wiLCJtYWMiOiIzNTZlYTE0YzhhYWYwMDZiNmY0OGM0OTViZTNkZjM2ZDE1NjRkZDIwNWI0ZGU5MTdiYTNjNmQ4NDk1OWU0YzVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 7, NULL, NULL, 1, '2026-04-01 10:11:16', '2026-04-01 10:11:16'),
(46, 'GET', '[]', 'http://swatorganics.local/nuts-with-shell', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkxSRmU1Y0lIL0MwS0hwclFVNmhhdlE9PSIsInZhbHVlIjoiWW1FRFlOK214S0tCWHFhTm5qbkUrb3lVbmxIVE1Za2J0VlNCbWp2THV5ZnFHUUd0VUdLQ05DYkdWTGUrdHl6NzdEVmQwc3VwbGllbkx0aDR1UlV3Nll4QVB4QkVPVW5TZm1tU2M5RGhzTmgrNWoyOTlGK0VJOFF3N2ZCTUxUS1IiLCJtYWMiOiIxYTY0OWU3YjNjOWEwOTZiOTFmMzg5MmMzZTBlY2NlMzZmMGVjYTg5YmMxYTEzNjliZDJjZmJjODIxYmM2NTkwIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjIzTU9VVS9lQ3FEdHBmczRNNmVWYkE9PSIsInZhbHVlIjoibzhabzNNcUM2R1REZGs0VllhWFFCSTZydlh2TnBjZ0pCSjg2WHdHT3RPaTlYTU1YdHhxVkdkYmdCN2Fvd1JQZ1pteDFNZGlPTTdkTkZmNnFpMjdaOWNpVU9sMHBvclNmcUZDSzdYL2t5dnFxbFdja3FGNXNwUGlnL1pDNjR4MFAiLCJtYWMiOiJjYWRhNTczZmIzYzE3OGJlNWQ1OTNmYjZiMzI2N2EwMTcyNGEyODhkODgwNzgxNTNlMjEzMGU3ZmFjYzY2NTNhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBLanRiMDRUQllvNkVHNmxPcHZTQVE9PSIsInZhbHVlIjoiSTlrL2FBYTBJZGc5MVlGSGltQktUTmlMYnhpaWlyWUVKcVAvRlNFRWlXTVR4SUEraVVJc0NjVldOTVJ4NlYrZ09UWktYNzczd2RxdEt3NEN4QndiOGZ5bGYzVGY3TlgwWVJoWUxjU2RLWTBsTGxBWWhyaDVPdktNZHpkS0VXU0wiLCJtYWMiOiIzNTZlYTE0YzhhYWYwMDZiNmY0OGM0OTViZTNkZjM2ZDE1NjRkZDIwNWI0ZGU5MTdiYTNjNmQ4NDk1OWU0YzVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 4, NULL, NULL, 1, '2026-04-01 10:11:29', '2026-04-01 10:11:29'),
(47, 'GET', '[]', 'http://swatorganics.local/nuts-without-shell', 'http://swatorganics.local/nuts-with-shell', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/nuts-with-shell\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ik1BUnY0WnBvOVYwd0NOdDVuZ2NUeWc9PSIsInZhbHVlIjoidVFvZHBsTGJsTExaeFk2Q0YvM0lOeXR2RVROVFc4eVpjcUp0VE1rQi93dVZZUkFYVXhiUlp4K0hpbWVZQmlieGRtR3ZFTTNzdnpJU3ltUVZ1Tm5uK3pjMlQ1ZitEbFRHTzZ2Mm5xVGpGdXcxc0JBekJ2RllHcExaQXEycEJueWkiLCJtYWMiOiJiM2QyYzkzZDVkN2UyMTQ4ODdmNzExNGIwMjQ4ZGY3ZTgyNTU1OGMzNWQ0ZGM3NzQ0MDkxY2U5NWIyODNmYzQ4IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImFOOE9JZDRyOVU5K2tmYzdQRUpqNkE9PSIsInZhbHVlIjoiVERESjJ4M2lGMG5WakRUS29FM3lQKzVjN2FLZFdpL3hKaUlYYjJjbFFnU1NxaFRBNnF1aUFhN2wzaUJsOFdLc2ZFTHUxK2hzdHc0djFDVXhSekZOQ2xwanNENWhhM3RmOEsxOFZRUm1mc3drWFN1OE14cFpNYVNUc1FoVUUycTMiLCJtYWMiOiIzYmRkYjVmM2RmNTI2MDkyOTBhZjk5ZWU3OTUxNmYxZjVlNWEwMjBkMGJkNjI2MmVlZWYwNDUyODljYTExOTZjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBLanRiMDRUQllvNkVHNmxPcHZTQVE9PSIsInZhbHVlIjoiSTlrL2FBYTBJZGc5MVlGSGltQktUTmlMYnhpaWlyWUVKcVAvRlNFRWlXTVR4SUEraVVJc0NjVldOTVJ4NlYrZ09UWktYNzczd2RxdEt3NEN4QndiOGZ5bGYzVGY3TlgwWVJoWUxjU2RLWTBsTGxBWWhyaDVPdktNZHpkS0VXU0wiLCJtYWMiOiIzNTZlYTE0YzhhYWYwMDZiNmY0OGM0OTViZTNkZjM2ZDE1NjRkZDIwNWI0ZGU5MTdiYTNjNmQ4NDk1OWU0YzVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 5, NULL, NULL, 1, '2026-04-01 10:11:34', '2026-04-01 10:11:34'),
(48, 'GET', '[]', 'http://swatorganics.local/seeds', 'http://swatorganics.local/nuts-without-shell', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/nuts-without-shell\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkE2UEt2TTlJK0RrdFlhMHg4ZHJpZFE9PSIsInZhbHVlIjoiTzF1ZjR0Qjl0M2plZXBRaTIxMFBtTHVlay9jUjQ1U3R4MmlmZ3ZyZnRSV29nYkZWUVRsUDBvdHpXVVIyTEowNXIvOFVaRDBpYlkrLzFIUGdqemozNVhPQVNVK09ycTFvTXNQQUZydEdPeDdWWmswOFQrRlg2dXVZc1QxUnorNjQiLCJtYWMiOiJhZmJjYzk4MjZmYzVjZDk4YTUyZmFkZDQ2ZjdhMWJiMGFmYjhlMzNmNjEwMDI3ZDg1MTlhYTI2YWM2OGU0MGY2IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ilpvd0xDNHFiaEl1ak5jVlVSR0VJTnc9PSIsInZhbHVlIjoiakRSS0hoa1ZwYlRnTEpoWVdEOWl1UXJvR0J6cDdhVml4WXIrWFd1M3QzeDR1WGhJbXVtanltRDQva0NDTXVwdW9rWCtSNkxyYkFpSGhCMVdHVkVrVmp0RFQvU29JSVN0Z1BjdU5Bb24rVGFlamdJbWJ5VVpRdlRJcWtaTk9Yb2kiLCJtYWMiOiI0YzAxYTc2MGUxOTYwNGUxN2Y3ZDk3ZTIzYzk0MGE0MTVjNTkwNTdlZDZlZmEwMTM4NjUzYTRmZDk5MWIxMmQyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBLanRiMDRUQllvNkVHNmxPcHZTQVE9PSIsInZhbHVlIjoiSTlrL2FBYTBJZGc5MVlGSGltQktUTmlMYnhpaWlyWUVKcVAvRlNFRWlXTVR4SUEraVVJc0NjVldOTVJ4NlYrZ09UWktYNzczd2RxdEt3NEN4QndiOGZ5bGYzVGY3TlgwWVJoWUxjU2RLWTBsTGxBWWhyaDVPdktNZHpkS0VXU0wiLCJtYWMiOiIzNTZlYTE0YzhhYWYwMDZiNmY0OGM0OTViZTNkZjM2ZDE1NjRkZDIwNWI0ZGU5MTdiYTNjNmQ4NDk1OWU0YzVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 6, NULL, NULL, 1, '2026-04-01 10:11:36', '2026-04-01 10:11:36'),
(49, 'GET', '[]', 'http://swatorganics.local/mixed-dry-fruits', 'http://swatorganics.local/seeds', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/seeds\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InBPMHFYdlpmSE1nTDBpT0xjSTV3cWc9PSIsInZhbHVlIjoiVDNmbFBoVFR3UHppK1BPSHhpTTJxTjZReCtla2lVSTJ5U0JpRGhTUUNTckpZUk9nc2hvQW1DZ3MvbXRPVzc1S2U2ZGoyK0hLdGNoTGV2eTBXSjdHMEN0dmF4eVFxclp6a1puL1dVTmk0TDRmbENZL0xLSEFVMzV2UjUvc3F6dEgiLCJtYWMiOiIxOGUzODIzYmYxMjJhMDY0ZDE2NDk4YzA2OTllY2M0NmQ0NDViMjc5ZTdhY2RkMWY3NTAwMDMzMmM1ODAxMmYwIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InVRZDFnRVFRazdZMzR3WVZMMUY3aHc9PSIsInZhbHVlIjoiUWRCVWhmbzZBdEdLWXU0MVhXazNUeG8rZDRvaUx5cWtxQUd5REN2R2hncThiWnFYWk1IbW5nNEdKVG5wZ0xkMGRNVGdESEdETzJ2Wk1LZGsyRFRLRzZlS0JDOGtqVExMUysxdnJzbUp1Sm4zQnpNRXlhcUhLeDl2cjgzSVhVNkUiLCJtYWMiOiI2MmQwOTQ5NzZiNDBkNmQ0YmUzZWE4NmNkNmY1MGZlOGVkYTZlMWE5MzViMjM4OWQyMmNjMDBjMmVkMWY5MjdkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBLanRiMDRUQllvNkVHNmxPcHZTQVE9PSIsInZhbHVlIjoiSTlrL2FBYTBJZGc5MVlGSGltQktUTmlMYnhpaWlyWUVKcVAvRlNFRWlXTVR4SUEraVVJc0NjVldOTVJ4NlYrZ09UWktYNzczd2RxdEt3NEN4QndiOGZ5bGYzVGY3TlgwWVJoWUxjU2RLWTBsTGxBWWhyaDVPdktNZHpkS0VXU0wiLCJtYWMiOiIzNTZlYTE0YzhhYWYwMDZiNmY0OGM0OTViZTNkZjM2ZDE1NjRkZDIwNWI0ZGU5MTdiYTNjNmQ4NDk1OWU0YzVmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2026-04-01 10:11:38', '2026-04-01 10:11:38'),
(50, 'GET', '[]', 'http://swatorganics.local/premium-almonds-badam', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlBUSkhkck1YZDNiNVgzR0loZkV0dEE9PSIsInZhbHVlIjoidlVNbG5LS084elZRb2V6a3ErUG1tdFRuVnptU2RkVFlPSktIUFdObjVsZExtNkJqWHBna3pzZ1lyMGhwWmlLdEpVUWUyQisrRjZ6T3d1RHhnRm91UEFjdGhTbnkzOVJCOUdDSTFSUHQxNU4vUnpoYzZtL0lYazVwUTd2dk9HYWoiLCJtYWMiOiI1MTk2ZTJjMGIxOTk1N2NmZjM0YjA1NzIzMGVlNDAzNGY3MWE5MjdmNjQ5MzY4Mjg0YjVhZTM0MThhZTQ0NWJlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlYvVDlPQ0xDRUw5UGpvbTBPM1ROQ3c9PSIsInZhbHVlIjoiNy9HTWRwREtYZFNQaUZNN0NXU05nbWhuMlpvK0MzZ0hPbXRXTlB6emFJRXdlRkpXWG4ydjBVVHJEMjRvM2ppeXRFUjFIbnp2SjlkREdGRFI2N241SHN1bEc4WWF2Y1ZHVTUwZHR0VmU2b3NsNmwyVnRidW9XZDBja3BBY1YrNngiLCJtYWMiOiI1NDFmNTQ1NjM2NzFiZDhjY2Q0OTI4NzA2MzhmNjM4Y2ZiZmJiMDYwZTdiZGYwMThmN2U0NDVmMjEwMzllOTMwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjNyNVgxNHQ0RmJpN0JtcjQ4WUpFVFE9PSIsInZhbHVlIjoiMkM2Y1p0TlYwZzdGTzI4VnI2RkNtZU1lSjdiK0ZrblQyNzJXc242cHc4TUdTOGtQL3o3OWFXUzhXWXl1cHR3enFDUzAydEtYa3VJNHVacHhoYXdVaWNEQm1seVBld3Y4VGY3ZVRVKzMvOVQzamE0c3FsOHdUellYcCt0THVuUWYiLCJtYWMiOiI1MDAyYmJmM2VhZTczNDkyMjY3M2ZlZWY2MWUwNmIyYWFkZTYzM2Y5ZThkZjE0YTliNWEyYzdkYWFkYWI0Nzk1IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 9, NULL, NULL, 1, '2026-04-01 11:28:44', '2026-04-01 11:28:44'),
(51, 'GET', '[]', 'http://swatorganics.local/premium-cashews-kaju', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZFVEZJd2tqcFYwUkZjL2h5WHFIK3c9PSIsInZhbHVlIjoicy8vc3RDek0vT0d1RkVPTjEyUVJYcnVad3pxdWZ5NU43ZEpVREVTa0o4RTg2c3hLaTFvNVdHTm9PejcxeVFvN2tKb2hFMlFnNXNybm1LV0lBdjhuMXBqa0xYUlNsVWFxb1RNdkF5eENZeXNBREMrQStsZEVFWjBRZk91NllpNTgiLCJtYWMiOiIzYThlZmVhNjRkOTFmMGFhZDc3YmIxNzM3ZDlkYTQ0MDE3MTgxOTMxMGE5YjMxOGZiZWRmYzk1MGI3MDhhMzI3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im5ENzB5SXhQNTBOeWF2Y0t2cDNHQXc9PSIsInZhbHVlIjoiY1lOZm9KK1VKSnQ3ZzcvV3Q2ZGtjUDMvZzBrV0Zsb0FBUktTeFNMbzhOUnRRcFhVbEFCcEVLdVFKOURDaVp6U0hZU3VVWDR5SXRETUNjV2VCT0ZVTDEyQ1M0Ym1iOVQ4Q3NBRCt6enVYK2xBZkZrYmhYNXdvWkhEMURnQ0hyRUYiLCJtYWMiOiIxN2Q2NTc5MGIyN2VmMjc1YjE0YzU5YjMxY2UxNDhkOGY2NThhZjlmNzcxZDE2MTY3NWIwMDNiZTdiYzBhMGZjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlYxVmFZbnYrUGVLNzZlckpSK0d3VGc9PSIsInZhbHVlIjoieHdQWFhnSnltcG9UTXVLcERXUjhkRnlFMkR5YWZZVHg4UStuMWRWTHZGQUxIMzFjOXk1UjdXVERQVk0xb3IwaEhrNUVtMFFQN3BYSVBDeU9vU0gzbWNhQ2U4RkhQd2MyMkFmOHJwbjBYbTNxWWlaL3VuL01vTFVCOHJseTFWTlYiLCJtYWMiOiI5OTJmN2NiNjk4OTJiMGY3YWIyOTgzZTRhOGJkMGFkMTBkNzM2YjdhZTVhYWQ2ZTVhYTg4YWQyOTZmOTJiZTkzIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 13, NULL, NULL, 1, '2026-04-01 14:35:12', '2026-04-01 14:35:12'),
(52, 'GET', '[]', 'http://swatorganics.local/walnut-kernels-akhrot-giri', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkNPRzV3M0hMSFVEbHNjUDBTRnl4b0E9PSIsInZhbHVlIjoiMlBvTUoyUWJXak40QXlZeUxPQ29wWk1LeXhmVVlkWnZCTGlVKy9pL1l5SUZlRnBNK01vWndpd0Z1MG1FekZvTmNkdlE5VG5TMnJMeURwc0h5a1ZjVGlGckpPb1dnNGluTEVQNlA5SjlCNUlVcEUvc0Y1THd6QzhuK0NGYldRM0MiLCJtYWMiOiJmOGJjNWNiMTFlMDdiYTk0NWU0YjdhMzJkMWUxOGRiZmQ1MzFjMzg0N2EzNGQzMzI3ZmRhMTI3OGY5NDAyMzBjIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ii8rK0NtWnRMTVg4R0p4WlFsd1NsN3c9PSIsInZhbHVlIjoiL1ptNURaMlY0ZGNRYVdncExXbXh3NkRVbXJDVmwxbHZhREcxLytjblZZRVoxelJ5RkQ4aUFEbjh1elRGbzAyQ1QxUmxueTZydnI5dHFQR0ZmNnRyY2h0MTJjVDBhcElyZlYyOVFJcXZzL2w0SmRBVTd5VUFBN2dmMlN0YmpqeGkiLCJtYWMiOiI2ZjI0NjAyMDBhODVjZjMzY2JlZDkxNWVjZWI5ZjczMTU4ZGViZTY3YTE1N2ZiNGJiYTI2NGEwZTAzNjJmYzBhIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 17, NULL, NULL, 1, '2026-04-01 15:08:23', '2026-04-01 15:08:23'),
(53, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/checkout/onepage', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/checkout\\/onepage\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"swatorganics_session=eyJpdiI6ImM1SGlTRVB5MnU1djJDWFl6cDVhbVE9PSIsInZhbHVlIjoiSDljQnNZeENFZVdKYlRxT1RUSWFRVXlWeFBsRm1XN09YMVgvWFh5WTBqUXBPRURHdVgxSU5DVE1XeVd4bFFPOXBpc09xSzJjZXpNMVNsSHhDcklUN3MwdzcvbFpnbkQrTi85eVZaQnFPdk9aK1IxT3hLQU56aDNBMDNkd3Z0OE8iLCJtYWMiOiI0MDI5NjBhZTQ4NDVhODVjYWYzMjc4Y2VlMWVlYWMzZWMyNDNhZDE3YWNkMjI1YTNlMTc5Y2YyZDRlOWYwZTRjIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkJQNis0Nnh5MmpIblpRa21PSUhSZmc9PSIsInZhbHVlIjoiN3VVU2ZsanIzMTZNd0hGWVk3aEdPbGVEOWgzamw2TlRGNXV1YjNzSStKSmRSaGlnTnUyTGNORFR1S2dFTUNPTnN1eXJyNldaUGZIY1NOdCtsL2JwellmVUZ5WER4UVpTQ25HamFRVDFybW5sSi9NSU50amFJQlNDU2JKQXdnUE0iLCJtYWMiOiIxN2QzMzdmYTdkYmIzNWI4NjQ5ZTFjZTcwMWZjOTJlYjQzNmY1YWFmODA4Yzk2Mjk4NWJlZDFiZDAyNDA2NTUyIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-04-03 14:27:55', '2026-04-03 14:27:55'),
(54, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/checkout/onepage', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/checkout\\/onepage\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InBraitpY0RTVmlHSXZpRFBkdm1CUWc9PSIsInZhbHVlIjoicFB3RFlnb3ZUYzk3aVE1MWttc010U0E1M1YvMnBDSVRCMExXZ3FVbjVHbUdleHBLN255Rlp5ODVrSUZYTGpoRVh1emQrOWVPVllibmpKOEVwOWM1NitwdHpQbzlPMmJxTHIwNGRyVHZWcldVRnp4dHREeldCZ3RGWll6K0JISTEiLCJtYWMiOiJjNzI4MWRhMGFiMGYxYzQzNTQ4OGExZWJhNzBiNGZjZWY0NjhjZTljNTFlMTRkYTk5Yjk0MzlkOWQ2ODI2MjJkIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImxKaDF5QXo2RWdHRWxkRFBBbk5jaFE9PSIsInZhbHVlIjoiby9pRnVVcitwNE93UkNNVHFadUJNemlMUm9LY08yT0lBT0x1eTFVc3Ntd3RtUTJvU1ljYkJ4b0hJOW5TMGJlZ0NTK0c4RnM5b1gzajZYNE5va09icC8vbEpIbmJxZCtpMm9sTklzdXNFL0toMVVROVdKY3lqb3RrQ1NQZTRsSUEiLCJtYWMiOiIyN2E5MWQwZjE5YzVlYzM0NjJhOTgwYjhkZDg1NzgzNGJjMzcwZTcwMjU5YTZhMmRlOGYwOGI5MjI0ZWVjYmM1IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-04-04 09:57:46', '2026-04-04 09:57:46'),
(55, 'GET', '[]', 'http://swatorganics.local/premium-almonds-badam', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpEWjZod0R4d01yMHRSbXZydVJQb3c9PSIsInZhbHVlIjoiZC8rQnpCTmk0Uys0dVVRY2VSMFJab09qZ2Nqb3dZTmZUYVdRTUF2SWdhbXNWdHpVTEdRT2NxQ1ZRcTdQOGRmbnRLUTZxRTBVRFRKb2dEVTJTY3R6ajVaRkdFWUNaU0RmcTNiQzFweE54dEF3cVNncHRlTjJhYUw4d3ZDVFJpZjUiLCJtYWMiOiI0MzRjM2QyNzUxZjk5MjljNWE3YTAxYjM5MTgxOGMwNzRhNGNmNTA3ZTk0MjQ5N2ZiODAzMzU2NTBmMjBmNGVkIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImxWK05Zd1lEczFlME01K1ZjaythMXc9PSIsInZhbHVlIjoiU3BUT2drK2pReTRJdk9EUWttMno4REV6WWFmd2tVUWVTa2p6YVAwSEp2Qy9BWnpJQVFNeDZsdGo1VUR0YmppTVBuemd4MjdiOGM1TVJpMkxQeEozZFpKc2hIaE1VdndtdTBIbDlPblVjMnR1R05ZRnVraE1GLzI1U1FaM0wwOEoiLCJtYWMiOiIzM2ViM2FhYzgxYmFkNTFiOGMxYmE5ZTBiODg3ZWUwYjkyOWFhNjRhNDM0Nzg3N2M4NDZjMDU4NjRjYjUxYTJiIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 9, NULL, NULL, 1, '2026-04-04 09:59:00', '2026-04-04 09:59:00'),
(56, 'GET', '[]', 'http://swatorganics.local/walnut-kernels-akhrot-giri', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjJoREZNMEVFVkdOSGtvNFkwUXFZdmc9PSIsInZhbHVlIjoiSktNZ0pVMXExQkYxNEZ1YTdwNUNKK1lMU20wL25LbXlpVGk0Q0UwekU1bDlVTE1TcHpnVTR2VFd3aDZKRmZpUW9xVkdRQXJ2SU9jVEJ1OERCNVkxQ1JGR2lka1IzMTJzSDZVS0EzNGgyMmFLTCttNWpXTUxpVzhSU2x6WCtXSEQiLCJtYWMiOiJkMmFjNjA4ODA1OTYxNTMyNjgxNzA2ODI4NzFmZmExY2MzYjFlNTdjZWYyNWNjNGFhOTAzZmNlZjIyM2E1MTFjIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkRIZlZOZCt0TmtOaXU5MVhqYU9hL3c9PSIsInZhbHVlIjoic0puOVZOYkNselByTkYvNytIVmhUQUFBYXpOenlKZFhwY2IyY01xYitIUmdCU3hqdG9YQjd5VndzMWJLQkU5OGc1S2xWai9ySWJ2ZjJaM3pFblpBVktXK011a1ZHaFU1WE45RFBlaEpFeUxCWlliRTFaNE9uUlZtQytSYWxsbEYiLCJtYWMiOiJlM2RjODJkNDVlYjI2YmFhOGI0NWY4OTM3NjZjM2UxNGViNzY5NWJjNWNjODNlNDdiMGU4MjI5ZTA4YTk1YjE1IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 17, NULL, NULL, 1, '2026-04-04 09:59:06', '2026-04-04 09:59:06'),
(57, 'GET', '[]', 'http://swatorganics.local/walnuts-with-shell-akhrot', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlBiWkhadmZ0TWd5MkxNYnUxTE9Wbmc9PSIsInZhbHVlIjoiUm5FcGJKYkZ3b0pGRjZwR0pyV1NpNFZnb1lWbkEzTmxVMVo3ZTcwTWhBbGJuenprRzhWK2h2TWtFbnU3OHZwNTA2bGlXK3VQbE9KVzlBVFlHalRlYklYbTJwT3F1VnhaSEtjSFk3QUMxZjY2NHhUWlBzdUhQQUhPRy80VWZ4MkciLCJtYWMiOiJmMWJkY2Y2OTFhMzU5ZmI0ZTNmOGE0OGQ3OTk0MzNjOTZlZjZlMTQwZDY0M2VlNjJkNTUxMjdiNDZjMTkwMjNhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InZoMThMM1I1YTk5aFFXN05tUnNDN1E9PSIsInZhbHVlIjoieEpzUzV5V0ZDZ2dDNGVaNmk0MStmbFJ4aFNaS3hBQmJiMWRoS2hWL0lYNUtxU2JWTkt5Ukptck1KTjJNaU5WcjFGa2dLbUs3RkYrYUVHZEdybWlCTW95L0NJTlZvRjBkMHhBbHRydi8vL24zc2tVeXB0UUswU3NNUE5XdVJ0ZnMiLCJtYWMiOiI0ZGRhM2ExOGU0N2FlZmM1MDg2M2FiYmMxZTBjNDVlZmQ0ZmM1MDA5MTI3YWU5MzdhYWRhZGE5NTU4ZWVlMWNjIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 21, NULL, NULL, 1, '2026-04-04 10:09:17', '2026-04-04 10:09:17'),
(58, 'GET', '[]', 'http://swatorganics.local/golden-raisins-kishmish', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Im9VVTRPZkFTYXlKL2tEZmdEWnlwenc9PSIsInZhbHVlIjoicGJZY2tpWWk0Y3RtMVlRUGZvSEowaXNERU5ROVU4cXlwb2pxZ3E4YTVialRLUVd1NTdFYWVqdUVGdnpVYTI5dm05VzFJWE1TNlMzRm9mTWxSNllaQUc4QjZSdnZtUmRoaHp3b05hZHoxZFExeTd3M3U0NWJmN1RhYWVOOHFmdm8iLCJtYWMiOiI5YzdlYmRkNzllYjcxOTE5YjVmNDViMDVhYWRjYjA0ZWNhYTM3YjhiMjllYWQ5YjZiNTMxODViY2EzMzgyZjZmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InFnemtjR3MvNDBXWFloZ1NnVWo4SkE9PSIsInZhbHVlIjoidEJvOW1HM3pBYWZqV0RtZWdHQ1M2bHd6L2J6VDlQREl3TExzVTlzdjdmQ1ZKRis2VlR6TXZFUDhYdmtUZ2s4L2VHR1Vjc1BjSXc4SXJpU2VPVWhBb1UwdkF4c2RtbnVia3o2ellpTklyRTBlanorck5ERFozbHZvRkFvVFhNSm4iLCJtYWMiOiI2YmZhOWE5MGQ4ODgwNmYzNjVmZjg0ZGFiNTg2Mzk2OGY4NTIzZjE1NzNlNDgzNDA3Njk4NGZhZjI0MWI4YWQ3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 33, NULL, NULL, 1, '2026-04-04 10:40:24', '2026-04-04 10:40:24'),
(59, 'GET', '[]', 'http://swatorganics.local/black-raisins-kishmish-siyah', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InJ2TlplTFhkZkFSTWZ4UU1OakxHQVE9PSIsInZhbHVlIjoiQ0tqWUFLWXloYit1MW4vc3F6S3UzWmozWmFRbUx2WXZKY1A3Rlg3dFNWUHpQKzlEK2RMUENHdHFaVjVNSVF5MnpIam1QajhMdFV4NE81U3lKaHd6cThEM0sxZmZkcEdFYU44S0cxMlI1bmFkWkhzVW92SWgybWhMMlZmZlBmN3giLCJtYWMiOiIyY2I0MjYwN2I3OTMwOTMxZTM1NTllN2E4OWU0OTFjMjQ5MWNlNDU1Y2FlZDczOWM1Y2I0YTA1NGZmNmNmNGFhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjYvVDE2YTlJRlpHY3VKc3dLNlpGTWc9PSIsInZhbHVlIjoidEEzVDRmSjJhbG1WSjZjMWIyUmNLbmx0SE9nSnRyWmFJZnJkTjM1UmtqY3hMYk82ejR3Z2t1SXVJZFRGRzdqaVRUOXgrOEYvUUIrTjdNNGNJWDFKYkxWMDFhWFNZdjFqMitMM2pja3E3ZkxvZDFGd3R0cm10Y1pKdWNMdXhjYy8iLCJtYWMiOiI0ZDQ1OGJhMGQyYjliYzdkZWI1Zjg0MTY2NzY0NzVjZTNmNjdlMTJiODQ4MjRjMWViMjA2NmE4MDJkOTMwMmRkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjRPRDBQNzBLUXBHY0VraVgydkhpQ3c9PSIsInZhbHVlIjoiZVFrK0ovWG5HR1RmdUtxWHR5NTZkbVFWblVhVHJhVDRWb292RXhyTjNKUzhUN25HL1g5M1U5QlNlcnlkK2dJdFV6VUcwbVJJSW0vN3lCeW5EMW5YV3hBNDZLVUpRSjNpcEI5WGw1SStPK2NYeHZEYnozWVd3L1FFb3VQODljYzciLCJtYWMiOiIyNGY0NGNiOGYyM2Y0M2JmNTY3MjgzMjQwN2EwOGYwY2ZlMTkyZTgxNzZiZTMwZDE0ZTBiMDAxYjVmMzhlMWExIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 37, NULL, NULL, 1, '2026-04-04 10:50:34', '2026-04-04 10:50:34'),
(60, 'GET', '[]', 'http://swatorganics.local/ajwa-dates-premium-quality', 'http://swatorganics.local/search?new=1&price=0%2C1123&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&price=0%2C1123&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Im55Q3JhaDhSd1ZMajdmQktHSnpuSEE9PSIsInZhbHVlIjoiTW9QK3Z5TE1xZEtqYTVXK1V0YUdhWEJTeEdOaHNpV3pBTTB4MmxyNGhSSmQ1K2N6aG11QXBUaDFXanYzZmFyRlB1SGFQTnp4cVNPMzU2RmhvQU0ycUE2bkRsTCtXMlVQRWUwNGhxeXFHQ0RJMVdTR2hKeHJSUmxCNFdsM21sbkwiLCJtYWMiOiJmNzc2Y2Y3ZWRiYjFiMmQyNzZjMzhmYjc4YTMyMTE4ZTQ5YjMyMGQ5NGQ1MDY3ZTg4OGJhNjZmZDMwOGQ4Mzg3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ikx5ZGNReS9MNjdXM3pSd0xqZ1NpUGc9PSIsInZhbHVlIjoiU2xBWlFDY3FxRUhaNk15RlY5Y2d1S3MraFQrRHZWdHBUWTNoRVFvbFNueFNOS21uSm5sVUVhbW4xTG9FbEV2ZDNmMEdkNlBXR0VKS2EvaENoWmQ5WVQ4c1NZRUtYMkU3Smg0Rkg0ZXFRZU5PNnVNWmE5ZmsySTVRN3ZWT01ZZmEiLCJtYWMiOiJkZWZjMDcxYmEzNzgxZTQ3MjYwOGM1MTA4NjEwMTIwZTc2MjgwMjBhNDJhNTU0OWMxZDJiM2E1NjczOTJjYmQ1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjRPRDBQNzBLUXBHY0VraVgydkhpQ3c9PSIsInZhbHVlIjoiZVFrK0ovWG5HR1RmdUtxWHR5NTZkbVFWblVhVHJhVDRWb292RXhyTjNKUzhUN25HL1g5M1U5QlNlcnlkK2dJdFV6VUcwbVJJSW0vN3lCeW5EMW5YV3hBNDZLVUpRSjNpcEI5WGw1SStPK2NYeHZEYnozWVd3L1FFb3VQODljYzciLCJtYWMiOiIyNGY0NGNiOGYyM2Y0M2JmNTY3MjgzMjQwN2EwOGYwY2ZlMTkyZTgxNzZiZTMwZDE0ZTBiMDAxYjVmMzhlMWExIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 25, NULL, NULL, 1, '2026-04-04 10:56:18', '2026-04-04 10:56:18'),
(61, 'GET', '[]', 'http://swatorganics.local', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkQxY3V6RlpQTzM3ZGdxWlZmWGhJc0E9PSIsInZhbHVlIjoiQ0l3Y1paSG5JSktYTTRoeGxKNFh1N3FsQnNnOE9NSFJNOFJhcUlPUWZwUFZSLzFDWDBIdHFlS1BITkx5UHQwczdBMUc1eFR4bWlENmNoc1hkWkZseDdNYUNGelM1Tk1EMU44Z1NwSXdsMDhVRDRWUG5zZUJCakFsdFhsaEE2SlAiLCJtYWMiOiIxNzIwOTk4ZGMxMmUzOTY0MDk1MDk1OWUzZDg5OThmNDcxMzhmYjFhNDYzN2U5MWUzOGQ1NzM2YTQzZDk2OGQxIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InVNUEtEMWVhSFU0MjliSTBrQWk5aGc9PSIsInZhbHVlIjoiemdJdmJpUU0va2pTUldvVUttOWpqaWlwNUcyOUFyekV5M3pKQTM5NE9IRCs0cjlCb1J1bkdTS29iRVdadWFxQVFXNmlickUrbDhOWk5ITDdiNTFmRGtTSWNyNGpjcEFKNVZzZXVFN09NSW9kZElxTVQ4ZktYUFF0Z2krVHVmYmoiLCJtYWMiOiJiMDE0YjY2ZThlZTEzYmI0OTgyNTlkMTRkNGI5MGY3NmYwZjc2YWUzZGJhMGY5MmFiMDdkNjNjZDA0Zjc1NWNiIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-04-06 10:16:34', '2026-04-06 10:16:34'),
(62, 'GET', '[]', 'http://swatorganics.local/acacia-honey', 'http://swatorganics.local/search?new=1&price=0%2C5949&sort=price-desc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&price=0%2C5949&sort=price-desc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InJQa0xXL2YyQWt6bVRGbWFSL0VaK2c9PSIsInZhbHVlIjoiZjhHQUFmY3htb3o4QWJaK0JXNGJxVmFMZ1Vmb3RwanBQUWRGL2RKK2VHTjRrRjRJU0pHY0dtRWErRXB6UW03a0pRNjlKVHd4UDY3UXloRFgvd0JGMStHQnJZMENlOXlBay81SS9MclA4Z0ljRFZ4SkVBeWszOUE5dWdHdkRJeUUiLCJtYWMiOiI1YTQ0NTdjNzA5ZjBkOWE3OTNkZWNiZDM0NjJkNTNkNDg5NzM4YjlkMjA3MjFkYzQ1ZTM1MTYwMWE4OTE0OWZhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im1Ya1M3d0NDUk1WZllVY24velNMb0E9PSIsInZhbHVlIjoiMmFOMmVPZkZGVTFIQ1hwUW9nRExteWxtbWc2aXE1SThJb21ic0RIRkJDd1RWNkI4SGRDdGxqZkFxVDFQZEJicVRWQmtNbFBHWXVtRnBWMWIwQ01LNWRSWU9jNTlabjF4cEFTK2NudW1CL2VxbWhMU1k5eWZnOTNTMitmQmpnWU4iLCJtYWMiOiJjOTE5ZGJiZTBjMjQ5NDViMDcxYzI3NzMyZDJlNDM4NTFkNGQ4MTc3ODhiN2JhZjYyNmRiMWIxN2Q5ZGI1NTY3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 61, NULL, NULL, 1, '2026-04-06 10:47:38', '2026-04-06 10:47:38'),
(63, 'GET', '[]', 'http://swatorganics.local/pure-acacia-honey', 'http://swatorganics.local/search?new=1&price=0%2C5949&sort=price-desc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&price=0%2C5949&sort=price-desc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IndtTUdCTEdLc1pnRFVhOVdyUXdMS1E9PSIsInZhbHVlIjoiK3lJT0NiK045RUxNbElISEw1aU1NWVYxTHZHQWlKMDVGKzBxRzlUeHlSMkJxRWxrd2gwQmN3aVBVOGxGcUFPUmhrK1dGN09LRFJ3d011ZFlKQWV2MUY0UWF0MzFkbnZPN09oYXZFSTJ2TTNqRUI4N2cxVUVKY0RrSjMrZTRJZ08iLCJtYWMiOiJlMjk5OGUwODZmNThlMTIzNGQxZTVhNGEzNTIyYzk2M2Q5NDc2ZjdlZWJkMjI5ODQzZjk1NWRjYWJkMWY2MWZmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IktPTlI0MkFzOTFhK0NXT3IrZCsvWEE9PSIsInZhbHVlIjoiUlRLQ3IyNjVRbW9BVHNRcmxSQWw0MUpLZXZMUUdhRnFrKzZPdmdyejlJYXNYZHZCU2FkYXJxM1pualAwWitVdUJDNjB3SmxwTWVuQmlXd1JLcWJRWkoxQUljUnpxQnZPWW5Ud1dHSU1LWFRsY1p3NVdFb2ZubG9UMHBsZXZUcGgiLCJtYWMiOiI4ZTM3ZDgwMGM5N2M1N2I1NzBjMTk3M2E2Y2Y2NjBkZDA4MmM1NWQ1OTRkMTE0Nzc5ZWVmNDlkMWEwYTAwMjVlIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 61, NULL, NULL, 1, '2026-04-06 10:52:33', '2026-04-06 10:52:33'),
(64, 'GET', '[]', 'http://swatorganics.local/raw-honey', 'http://swatorganics.local/pure-acacia-honey', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/pure-acacia-honey\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IngxK01rdGhldk9obGRqRnQ0Zml5bkE9PSIsInZhbHVlIjoiQzJIalVjd3pwb3NMbFY2M0Y2bWpEQ2JWMys5NVpQMTl0dUU1WkxqWDVsWlpBZERPdkJ1VUVTR1J6dGw3VVRVNlRDNksveURkd25JVEI3QWcxZUJySnZVZS9ZeDdYQm04Vk02SFRLQi9QVmRLUXRBNnFiSy85Z0xySmppSnhIckwiLCJtYWMiOiJkODlhNGM0MzNmOTI5ODc3MjBkOGE3NWQ1OGQxOWJlNTU4ZjQzZDczZjViMzc0NzVmODdlNzMyZmE5Y2ZkZGY5IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlVXdzA1Y3pJc1UyRjBMM01Ebno1dlE9PSIsInZhbHVlIjoiaE1GTDBsUnc3STZ1QXB2TEN3c0xnT0h5Z1dQemxjMUdZN2lWb1lkNzFPQm5HRGdDMWhPZm1kSGtBU0RwYTFsMDlYK044TG14N0xBMWxtV1FhaUdMaUhkajJzb0NVVUFyUDdlbHR2a2xybE1NcW1WY2RMcEVBT0NTcU9qWGxTWDMiLCJtYWMiOiIwYjFlNmEyODAyNTVlNDYyNThlN2QyZTdiMWVhMDBmZGZlNjkxOTc5NDRjYjExOTlhYjRkMzZiNzYxMGEzMmFhIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 11, NULL, NULL, 1, '2026-04-06 11:02:25', '2026-04-06 11:02:25');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(65, 'GET', '[]', 'http://swatorganics.local/pure-sidr-honey', 'http://swatorganics.local/raw-honey', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/raw-honey\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IitEU0p5L3ZNVFlpVnVDMUpKZGpMZ3c9PSIsInZhbHVlIjoiVEs4SFlXL2FlOFpKeTh3SjNxNkowOU84SENxU0Z6S204RnpVdzNYWVhHa0crd2p0SzR3NCtUelY1Q0QyRzZXLzQ2b0I3cTd1MVl1WHF6VHpMYzMxODIvdkpxeGVxMFlZQTk3elY2NlBOKzA4dUVkM1JCUVoyTnlIcnFMamEyT2QiLCJtYWMiOiI1NmM3NjExMGZiMTYwZWU4ZjY2YzlmNjFmODc0ZGE5NmQ1ZjhhMDY4ZDU2ZTczMWYxNTgwYzlkNzk1ZjQwNDIyIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im9yT28rQWtuWlZkUC9lNmZKdCtFYnc9PSIsInZhbHVlIjoiVU53UXErRzl5cDQ5OWJaSXZ5ZThNK3FOSEpiRGsrRUVMaEY5TWZDMWR5WFF1eW1TcnpTZ1pDTThNS2JVeFVqL2tkZmtRYStoZmxMM3V2bCtQK3kzRlhQaUl1ZlBXRVdpWkNMSUJNTkZTSU9nVjVNcTduc1VJK1RMVlNqcUVsaTYiLCJtYWMiOiI0MmE3ZTVhMWIxNjQ2NjdkMDEzYzIzNjIyYWJkNjVjZDQ4MzA4MDk1MzZmNTY3OWUwNzYyZDllODFkMWFmM2QwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjU4VzNFaDJTZDJDaGhRdnhTV0lpalE9PSIsInZhbHVlIjoiYldwYk1QTzRZSU9ic0REcXdyaUk2REEwTGsvMWhxRHhqZjVYdkVXLzlDeG1XUkhPVkMwMXliVjl2WjYybzlWMC90YndxUU5uSG9CbG5mOG10VUxJbmZicm5JWHNYVEg3S1UvTTZPRW4rUXBSVHBDV1F3VjZabU9zL1ZBeUhDR0EiLCJtYWMiOiI4NzdjMTMxZWUwZTUxYTU5ZDI2NWRjM2M3MmE1NTgyNWM4ZjUwZTY0ZjVkMDVlYmVkNDJmMzFmY2I3MmVjN2EwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 57, NULL, NULL, 1, '2026-04-06 11:08:42', '2026-04-06 11:08:42'),
(66, 'GET', '[]', 'http://swatorganics.local/gift-boxes', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ik9yNjhQWU03ODFzMjhlT21IaHVlV2c9PSIsInZhbHVlIjoieTlSRmZRRGVVQU9UTTVldkFqNkVaRlRnYXJZVStSZzh3TW40dEFyTkc5bUJMS3FzZHBSeHRCTDhIN3YrZGxWVTU0cW9FLzJJNDJlWnhxVE9XUjloRUFnb1F1OXhzcExBc1haUW54VnZQeGFrQUpJZmluMzQ0RFdBRjdKZUVLdGMiLCJtYWMiOiJmNmRhZmY4MjQ3MTQzZWU2ZWE0NzVkNzc5MzVjNDc3ZDFmNjNlZDkyYmEzZjNhOGYzZDcxOTQ5MTk3MzllN2U1IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InRwdTl3N0ROUW9MdFpLdGE5SDVCQ2c9PSIsInZhbHVlIjoiKzI2T0pFNktHMVo5aW14bm81cTJvL25uU3dLamEzMjBLdFNzQWdaMEtJUE5iNDFWSEZZT3Z2RCtnSUtaWTFLQ2diTmU3NjExM0U5SDBjbVpmYjRhNm92U1JLYzFrM3NBUm1DQTVRUzZoMC9kZ1J5bE9YazNPdHNUYzVhMWRwbmoiLCJtYWMiOiJkZmU5MzYwMWUyNmZlOTJjNTQwMjFlNTQ0YjVmZjdiMzQ4MDgzMTMyMmUwNjc2NzljOTI4NTVkYmI3M2YxZGE4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjU4VzNFaDJTZDJDaGhRdnhTV0lpalE9PSIsInZhbHVlIjoiYldwYk1QTzRZSU9ic0REcXdyaUk2REEwTGsvMWhxRHhqZjVYdkVXLzlDeG1XUkhPVkMwMXliVjl2WjYybzlWMC90YndxUU5uSG9CbG5mOG10VUxJbmZicm5JWHNYVEg3S1UvTTZPRW4rUXBSVHBDV1F3VjZabU9zL1ZBeUhDR0EiLCJtYWMiOiI4NzdjMTMxZWUwZTUxYTU5ZDI2NWRjM2M3MmE1NTgyNWM4ZjUwZTY0ZjVkMDVlYmVkNDJmMzFmY2I3MmVjN2EwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2026-04-06 11:46:43', '2026-04-06 11:46:43'),
(67, 'GET', '[]', 'http://swatorganics.local/mixed-dry-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ilk1Tyt6dGt3UjhueWlsVjAwd2YzK2c9PSIsInZhbHVlIjoiV3ZibUJTMGdJcTE4d0ZiNkpRWEVCVGxFaHdyejA5QXpiRHVTRGRnS2k4b2dzTTlzeTVsU0FJYm5IaUJGQjlqWHlsclNIUnpWcnAyblpvQWpJU2o2ZXVpUlo3cEphZmtvUDBySUxFTHRNV2RIOHZXWm1iK0svbGpXTmUyMk9HT0ciLCJtYWMiOiJhYmIzMjRlNTBjMjhkZTY2NjJiYjcyODUyOGQ0NDdlNzJhOWU4NDc2MmFjMmVmNDk2ODczOTIyZTJmOTcxM2EwIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6ImQ1ZlovRG5YYlpwNXBJY1hjK1BtTVE9PSIsInZhbHVlIjoiMnY1RnBFSVR4U3RNdFhhUExZRjhrQUpzQmJCNXZZZGU4Q2dvbnRXNVhub3pnUmlnQm83cnpLY1A3RGRtNnVlbGVhWklkajZ2REN1bm1QcVJyZTdPRTVFUUYyUjUrZU5yWGlaK0s5NHppS0pwTHV6RzZBU1l1b0tmeENMWUZMR2UiLCJtYWMiOiJhZTg0NTgwOTJhZDRhN2FmMjY2ZTM5YjI2MzhiMzg4NWFlOGQzYjQ0YmFiMzhlYjhiZDY2MmExZGJiNDY0NTA2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjU4VzNFaDJTZDJDaGhRdnhTV0lpalE9PSIsInZhbHVlIjoiYldwYk1QTzRZSU9ic0REcXdyaUk2REEwTGsvMWhxRHhqZjVYdkVXLzlDeG1XUkhPVkMwMXliVjl2WjYybzlWMC90YndxUU5uSG9CbG5mOG10VUxJbmZicm5JWHNYVEg3S1UvTTZPRW4rUXBSVHBDV1F3VjZabU9zL1ZBeUhDR0EiLCJtYWMiOiI4NzdjMTMxZWUwZTUxYTU5ZDI2NWRjM2M3MmE1NTgyNWM4ZjUwZTY0ZjVkMDVlYmVkNDJmMzFmY2I3MmVjN2EwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2026-04-06 11:46:50', '2026-04-06 11:46:50'),
(68, 'GET', '[]', 'http://swatorganics.local/premium-dry-fruit-mix', 'http://swatorganics.local/mixed-dry-fruits', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/mixed-dry-fruits\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InpXdHZVSWR1eHJGdnk2VFRKLzk2OVE9PSIsInZhbHVlIjoielJIaVp5ejRYV3ExYllvVDVDUjRCSkdMTmYwMEpncVZkd2hHZndPMzQ0OU5LajVSUEtySHkwV2E0dzRJR3VDYnZPRERZbW8vNTEwMHcyc3Mwb2U0a1lIZDNtalgzaVUzMytTWU9mbmkvUk40UTc0UGdhRTE5RnlQb2JrQys5VEQiLCJtYWMiOiJjMmJmZDE1ODk1YWY5NzlkMGE2NDM2N2E1ODZiYWQ3YWMxMDA4NWNiODljNDJmNTBjMzA4MmNmNWQ0MDU2Njk3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlpHWlRsREVQMFBvWi9Nay9XU1FzZGc9PSIsInZhbHVlIjoiOHZTOURDaG5oVjlvTlROS2RyVmxSWGUwV0NZVm1nNytycUIzdzYzTHBZRE1jMXRQTnY3RzcyV09OZG9nZS9IVE1iNEFyNlFvWXduY29RNUx1N1dtb2YvdXF1Z3VJU2xWUk8wZDFkTmp3aU5ncWs4cGZDWWh5M0ZzTmpxYm9xNVgiLCJtYWMiOiI5N2JjNGUwNjUyNzcyOGI0ZDUwODQ0NGY3N2EwMjBkYTYyNTNhMTM2MGY1YjdjMTZlZmZkNmI1ODQ5ZWM4OTgyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjU4VzNFaDJTZDJDaGhRdnhTV0lpalE9PSIsInZhbHVlIjoiYldwYk1QTzRZSU9ic0REcXdyaUk2REEwTGsvMWhxRHhqZjVYdkVXLzlDeG1XUkhPVkMwMXliVjl2WjYybzlWMC90YndxUU5uSG9CbG5mOG10VUxJbmZicm5JWHNYVEg3S1UvTTZPRW4rUXBSVHBDV1F3VjZabU9zL1ZBeUhDR0EiLCJtYWMiOiI4NzdjMTMxZWUwZTUxYTU5ZDI2NWRjM2M3MmE1NTgyNWM4ZjUwZTY0ZjVkMDVlYmVkNDJmMzFmY2I3MmVjN2EwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 65, NULL, NULL, 1, '2026-04-06 11:46:54', '2026-04-06 11:46:54'),
(69, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/premium-dry-fruit-mix', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/premium-dry-fruit-mix\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-04-07 14:48:17', '2026-04-07 14:48:17'),
(70, 'GET', '[]', 'http://swatorganics.local', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"*\\/*\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"priority\":[\"u=4\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-04-07 14:48:49', '2026-04-07 14:48:49'),
(71, 'GET', '[]', 'http://swatorganics.local/pure-sidr-honey', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.0 Mobile\\/15E148 Safari\\/604.1\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlFmeEhacTFaVFpLODd0ak5BYTRzcWc9PSIsInZhbHVlIjoiaGVBVXl1UDlEbWR6ZXRZYnpUU2x0RWttbzJvR3c4WEQxcEhIS01odC9FeHBONDQrTE0vSTkyZDhWZTZkTURZOTMxWHRrVUgyV2ZwQ0hYQXdlVUhJak96cUxFUDBXaDM4ZXlqTmlkM0l3b3VGVTdtbzF6Z2VscHNIYUN2WUVndVoiLCJtYWMiOiJhZDkyMGY4OGMzY2Q5MmYwMjc2MjM1MTI4NDY5MGEyMTc0NGM5NmZmZGNlNWUzZTc1N2I4NDA0OGFjOGU4MmRhIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjBYUzVJTE14MDBiaG5XWWFtYlNwYWc9PSIsInZhbHVlIjoiM1FhQldOM2JOL2FNdmZSaU5DSzRvdms4MXJsVDl0ekVyRzYvRFhsbDQyNktQampHVWVwaWwwanQ2UDNuZTF5VFEzNVRhRjF5WWI5Z0RLUzYxUVRSNVlHM21oV0QxQVhldjBDNllyMm9OQ3Y2K1E5azd0ZEJkd0gwNE9JYURzclYiLCJtYWMiOiJlOWM4ZjAxMzA0MTUwZTcyYTMyY2Y4Y2I5NzBiMDFhNmI1NzNiZTIxMjdmN2NjZjNkODdmNDc5Y2ZiNGRjYmRiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9JVTFlRDlaVEtsTFVIOUs5Y2ZWUmc9PSIsInZhbHVlIjoiN3ZmdkJ2L1YxNXdGMkh2c3dnbVBFN2VUSFIxT1QxSWdOOTlBZVQwdlB5VTBEZVZCMDBGWlA5NlVXUEVGa2JNelJ1U3JDeWlhdURNNmFmKzdITVlhU09NRkdNVGtJUXU5czNKNmlaNkY4TDRGZExqNWZpdG5iYUlMcW5qV2dCYUwiLCJtYWMiOiJmYTRkOTUwNTgwNzQ0ZmE1Y2YzYmNjM2RiZDZkMTIwMWYyNjU0M2UwYTkzODdiNmMzMTM3ZDcwODY2YWZlOTgwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', 'iPhone', 'OS X', 'Safari', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 57, NULL, NULL, 1, '2026-04-07 14:50:01', '2026-04-07 14:50:01'),
(72, 'GET', '[]', 'http://swatorganics.local/mabroom-dates', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Iml0cy9zYVpVaXNhT1BuNUQ3K0d2K1E9PSIsInZhbHVlIjoibTJ6SHpWU2dnMyt1VWpPSElpcnBudjJhRnFBeHVBYldwaXpMV25PZUdKdDNnZWs4bFlPU29yWHZ4T0NwNlpyNnY1UER3UjlUVG9xb0k0WExIS0tIQWFGS3JnYWJhb2JpeHpuc2RCRFNTai84Vzk5RDM3dXpxNjBLcG9YZitEZlQiLCJtYWMiOiJhYmUyMzAwZGIzMTBhZjAzN2Y3MmMwYWM3ZmViMDQ0MThjMjNjNDQ5Zjg0ZDEyNWI5NzBmMzA2N2JmZTQwYjJlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlNTM2lYWEFDVUtMMkEwTmN0UWZvRXc9PSIsInZhbHVlIjoidkhyV0h3cHhrbVZGWFlWcUJRbXB1cStpS1dpTG1iYjRrYmtodVpBUDhBc3BYbXc0QzhXZlZOV2VlS3FOSmNxbmRaV0pwQStKZlIvVmxJUlZzS1p1SUVwYkkzb3NybWFEbzUzMlR4azJtMy9NbFZqQTdHSGlVTnp6UWN4M0RTNHoiLCJtYWMiOiI0NzRkNWU4MjRhMmM4NDMzYmNmZjhkYWQ3YzdiMzkwMzkzMDExYzEwYmM3M2E5Y2YzYmY2N2FjOTg2ZDZhOGEwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9JVTFlRDlaVEtsTFVIOUs5Y2ZWUmc9PSIsInZhbHVlIjoiN3ZmdkJ2L1YxNXdGMkh2c3dnbVBFN2VUSFIxT1QxSWdOOTlBZVQwdlB5VTBEZVZCMDBGWlA5NlVXUEVGa2JNelJ1U3JDeWlhdURNNmFmKzdITVlhU09NRkdNVGtJUXU5czNKNmlaNkY4TDRGZExqNWZpdG5iYUlMcW5qV2dCYUwiLCJtYWMiOiJmYTRkOTUwNTgwNzQ0ZmE1Y2YzYmNjM2RiZDZkMTIwMWYyNjU0M2UwYTkzODdiNmMzMTM3ZDcwODY2YWZlOTgwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 29, NULL, NULL, 1, '2026-04-07 14:55:23', '2026-04-07 14:55:23'),
(73, 'GET', '[]', 'http://swatorganics.local/ajwa-dates-premium-quality', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjRqQVZySWl2SUZvUkdYQ2NmeVFydVE9PSIsInZhbHVlIjoiN1pMNzNrRG9WdlJmTTJxS0xwdm1SUXdaaXlvNHpNemVoR1NtSU80dDM5di9UMXNsbU9NazNYYkVpZ0pYQ2pIWmdaNjVqZURaclpiUldVOEkrcHIxZG9tNWJXM1NvcWI2WndScW92NlVMcStXVm1FVUs1RndqS1ZneGVXSGxZNXoiLCJtYWMiOiIzMzg0ZmUzMDQzYzlkNzY5ZjQ3ZTAzMmFjYmE1NDJhZTEyNmMxZTJkOWNmNGEwODRhN2QxOTQ5ZjRlZjJmZDM3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im4xMkNNTEk3Z2tNOWgwQmFUbCtIQlE9PSIsInZhbHVlIjoicTBZVFdWL1lmNyt6R3BMRUtCelRHZnp5a2o3SytKc1BLb1dvN2ZyM2xKMVRNRGZlRERIYkVmVGVlTUJxY1JaMGRIMUVaZ2lJVnBSbkJzK1FtQVcwRmxwRExDbmRlY2RqbkFIS0lmdXRwS1lqQkNQaHppREV1WkttbUVEWHd1anEiLCJtYWMiOiJlY2NjMjc2MzE3OWY1YzQ4YmM4N2Q2MDJhYTc3NTljZjU0NTM0NjExZWFjNDBjM2M2NTM2YzM5MDhjNGRlM2Q3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9JVTFlRDlaVEtsTFVIOUs5Y2ZWUmc9PSIsInZhbHVlIjoiN3ZmdkJ2L1YxNXdGMkh2c3dnbVBFN2VUSFIxT1QxSWdOOTlBZVQwdlB5VTBEZVZCMDBGWlA5NlVXUEVGa2JNelJ1U3JDeWlhdURNNmFmKzdITVlhU09NRkdNVGtJUXU5czNKNmlaNkY4TDRGZExqNWZpdG5iYUlMcW5qV2dCYUwiLCJtYWMiOiJmYTRkOTUwNTgwNzQ0ZmE1Y2YzYmNjM2RiZDZkMTIwMWYyNjU0M2UwYTkzODdiNmMzMTM3ZDcwODY2YWZlOTgwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 25, NULL, NULL, 1, '2026-04-07 14:55:50', '2026-04-07 14:55:50'),
(74, 'GET', '[]', 'http://swatorganics.local/black-raisins-kishmish-siyah', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlFTUk42TjVsQU1GR0pldHkydUZGZVE9PSIsInZhbHVlIjoiZ0VaLzdjcTRCdU9xVUR3N2xaV3FNRm5XR0hQdGQxRnZTVFZ2RERCdUJRV0NPeEY5ZzMxN1A3RHdNT3FhZDhnL1Rsek55UVRXVm03TUp3WGRtWVFBNC9zVHpEdCtTQ3lmZGJtUFVWNjdGNm4vRXZpZnA1enRBanl5TTBhNHlaeWgiLCJtYWMiOiJmNTllMzVkNzY1OTQyOTM4ZmIwNDhlNTAyZTU3ODA3NTgyMzVlODg1MzQyZGQ5ZjIyZWU4NTg2YTU4ODc3OTgxIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Ikc3d0VvUGtBekY4QUVnaGw4b25uTXc9PSIsInZhbHVlIjoiVjhoSjVnTktmZzBXeVpwTXYrVWhCNFZWaHVQTFhwdmhFV2l2UGYxUXNlU2JIelFCMXRmdGkwcHlvUWRydGVnZVlkeTNWOElXOXF5VnFVd0dBSUUrUHYrMEdZZ25GYnhrV0ZGWHE1d3BLR3VIelg3bVY0UjhKNTF2RDRac2RxN0UiLCJtYWMiOiI0YTdjYTRjMmIwOTY1MTc0Y2Y1ODU3ZTZiMWYyNDdhNjQwMjNhYWFhZWRiZjI2NTI0NDBlNDM0YTA2M2Y5ZWUxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9JVTFlRDlaVEtsTFVIOUs5Y2ZWUmc9PSIsInZhbHVlIjoiN3ZmdkJ2L1YxNXdGMkh2c3dnbVBFN2VUSFIxT1QxSWdOOTlBZVQwdlB5VTBEZVZCMDBGWlA5NlVXUEVGa2JNelJ1U3JDeWlhdURNNmFmKzdITVlhU09NRkdNVGtJUXU5czNKNmlaNkY4TDRGZExqNWZpdG5iYUlMcW5qV2dCYUwiLCJtYWMiOiJmYTRkOTUwNTgwNzQ0ZmE1Y2YzYmNjM2RiZDZkMTIwMWYyNjU0M2UwYTkzODdiNmMzMTM3ZDcwODY2YWZlOTgwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 37, NULL, NULL, 1, '2026-04-07 14:56:14', '2026-04-07 14:56:14'),
(75, 'GET', '[]', 'http://swatorganics.local/golden-raisins-kishmish', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkVCQ2xzUnErNDVVN0tNUjVTMDhqV2c9PSIsInZhbHVlIjoiYzk3WkQ3MFFjQld6MmNPUUVWOHAzSm93U0l6L3d0b1hIMzgvdy8ydmoxdmNCVjkwZHJjdGhXb0doTXN5Zk9walI4ckxIbTdCNDQzNWNFNzNaZ1JlWG5oYWc0OC9XM0dGeksyVkFoTVlYRXJQTDBvL2pFSDBWTEFPcks0a2VQTi8iLCJtYWMiOiJkMDZmNTA0NDk5N2UxYjY2MzBhZDBhODE2MTg2ZDc0ZDUyZDg2ZWNiNTliYWI1OTQ1NzYyNjhmMmUyNjE5ODdmIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlZ2TXF0dEJ0YjFkN2JJSWFTeHhkbWc9PSIsInZhbHVlIjoiS2JhQ1ZmKzE2bVdaMkdCWXdlNEVFTWJ5d2gyWFlydmNJQmdvRGdsdHpJaWd0MkR5VEJISzhySDlwejJiRXg0QzlTTHcrRFhCaVFDcHlTNE51U0VHOElHNUM0eFJmQzhPNEtZQy9FZjIrcnNwQ3R6ZFV6SmM5M3lHY25veXh5OG8iLCJtYWMiOiJhNGM2NTM0MmRiMzlmMGE0MmE4NTJmZGRmZDcxYzJlYWI0Nzk3YjdkODg1NjY5YTFiZWQyZDAxNGMzODQzZmZjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9JVTFlRDlaVEtsTFVIOUs5Y2ZWUmc9PSIsInZhbHVlIjoiN3ZmdkJ2L1YxNXdGMkh2c3dnbVBFN2VUSFIxT1QxSWdOOTlBZVQwdlB5VTBEZVZCMDBGWlA5NlVXUEVGa2JNelJ1U3JDeWlhdURNNmFmKzdITVlhU09NRkdNVGtJUXU5czNKNmlaNkY4TDRGZExqNWZpdG5iYUlMcW5qV2dCYUwiLCJtYWMiOiJmYTRkOTUwNTgwNzQ0ZmE1Y2YzYmNjM2RiZDZkMTIwMWYyNjU0M2UwYTkzODdiNmMzMTM3ZDcwODY2YWZlOTgwIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 33, NULL, NULL, 1, '2026-04-07 14:56:37', '2026-04-07 14:56:37'),
(76, 'GET', '[]', 'http://swatorganics.local', 'http://swatorganics.local/golden-raisins-kishmish', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/golden-raisins-kishmish\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InFrN0xyTy9NTnRlV0ZHeXByYXdqbUE9PSIsInZhbHVlIjoicW9vcHh5M2NwMW9FSFkxUFh5Nm5NM2lZTmdOV3JmeWRsZ1JHWllveGowaW13bWw1Q0x6MlpyUUxzQjVac1J6aktQMGRMQWVUWi93QkFKK2pZQ1VvZ2VFSHhTcXcwa05qbHdRazczaXd6NEVvMFMvMm5ENzdtMWVtbVJDS1lIMjEiLCJtYWMiOiIzM2M1NDkxYjkyYzdkNTc3YTI0ZjcxYzY0OWY4MmRhMGZjNTEzYjE5NjA4NjYxMDA2MWFkODVjYTdhYzUwNTA4IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InZlZFpuaDMvSlMwdXhvNS9ET2NBMFE9PSIsInZhbHVlIjoiem04OVRDVjM1NzR2NmU0dkZlZ21CSlFGd09uZkYyYWFwY1doUGE4eFBZTUpaTzlsUng5NXJ2b0ZVNWFib3Q2R2FGTytJdExscVJIcDRwOWtRYWVqaFp3RDlMQVYvbVBYSGtMazZWUnBPQ2FIa2pqT2lwbWk2L0pEaVlkak9pK1QiLCJtYWMiOiI5MWViMGJkNTJhOTFlZjMwZmRlY2RmYTk2ZWMxN2UyMWVkZDA1NzBmYTU1YzRkZDJhMTNkZDFiNTQxMTA2ZjJmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', NULL, NULL, NULL, NULL, 1, '2026-04-08 09:37:57', '2026-04-08 09:37:57'),
(77, 'GET', '[]', 'http://swatorganics.local/premium-dry-fruit-mix', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ik5UMHZaWlZ5ck05Q0o4SDNadjU2Tnc9PSIsInZhbHVlIjoidXVNQzRMNW9PbWh1NmtJdmZVckM2QW40SmxMWUp6Y0twblJYYkpjb3oyQWc5K3JQdHkyU0ZBNDZFQVQ2UHppVnEySnZRQmg0ZGUvcWpBTjI3amNrMTJoTGExRzh0Y1JaMUdUWHpwK3l5V1N6azFXb21uTUxHdWJiNWZPcmNGcHEiLCJtYWMiOiI3N2EzOTM4YWUxZjhjZjYzMTM0YmIwMjUwMjRjZjYxMWFkNDllZTRiNTdlZWUwNTZlNzNkMmIxNTA0ZjIxYzkyIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IktDVld5Yk1BY1hYOU5Ock1GKzVydXc9PSIsInZhbHVlIjoiWXNQVGFhNGhvKzFHWTNLMEV1WTU0TjNVVVB3WHZ5S2IzeHgyNFJ4NXZUakM3STJPbVFKSmY5WnBsYW5NaTFoNzBJTkdTeWhldm1XYk15SllBZFN0NVR2VTFoSjZIM1RwN0xQV1YrbkVEcGN2QUZCUmRXUHptdExkWGZVcVQ4ajIiLCJtYWMiOiIwODJkMDgxZmIzMTNlOTU3YjFmNzQzZDI3YzFjYWQwNDY1YTNmYmEwZjA3ZGE5NTJkMzU5NWZkYmI3ZDAxZmQxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlJRcnZya25EVy9jZDY3Y3ZGTDg3OVE9PSIsInZhbHVlIjoiaTlzc3c0emRmL1ZHMUo1eHRZV0RXaGsrbjA0SGZmZFA0Rm9Xc0JUaENmQlVGM0Q3UW5lUzE4Qi94UndkcTErdzltVTZiM1liYmlNb0o2dVRQZnd3a2FlV2haTysvV2pIYTY0Y2Mxd2VrL0JrSDdYY3NEeDNzelFNakt1b25PNHciLCJtYWMiOiI1NmY2NDhlODEzMTQ4YmQ2ZmQ0NDdkN2FmMWViMDQ2ZTliMjMzODhjODhmNjc1MGUyYTc4Mjg2MDY0NDQ1OWJmIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 65, NULL, NULL, 1, '2026-04-08 09:38:58', '2026-04-08 09:38:58'),
(78, 'GET', '[]', 'http://swatorganics.local/honey-nuts-energy-combo', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlZXaVhKVUNGUUM4ZURUOEJZUjE4REE9PSIsInZhbHVlIjoiU0ROTS9lRHJDemRBdUJMc0xMVFBtTXkyYkdsYXRVdmM2V0NLVGowS2tDQm5mUFpaM1JidDdTZW8zSHdVYmtheXZXSUN0a0gyV0pCdWRDdjJKMUZqRkR2bVNGNUdjRWRtTWIvWXFYcEpueXE3TlV3cXJuVTJVb2RCbW4zb3Q4K0UiLCJtYWMiOiI0YWQ5M2NhYTU4OTg1OWViYzllOTE5MmY1Y2QwNzAyMzEyZTc3ZGM4MTMxZTU3MTc0NDQzMmZmYmU2NTMyNmU4IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im9QUkxtOW1TMHkxYVBtcXlPRHZqYkE9PSIsInZhbHVlIjoiQVBIOFFsenNiMFNCTEhPbTJYc2tVTWZJZW52UCt2bVJaM3ZEMTZpSkJjcmFZRjdZQzZwWVl4V3pnbGVtNFl3Q0l3OUNOVDdVRVB6alJ0OTZENU16RVBpQWtwUS92b2IyMk1JbzZ0SVhucWhuRnloTFc2bVd4QzJsWnVqbGVUZUIiLCJtYWMiOiIwMjUzZWQ3NWQ0NGJiYjUzMTY5YzU3Mzg4MjAzNWYxODE4MDliYjAyMDNhMmEzYjNiODc2MDM5OThjNzVhZDgwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkJIUFpRcHk2Nm5LY3hyb0F1UDhtaHc9PSIsInZhbHVlIjoiWXBEYmxBNWM4ZUxyamc3MTlDTEQxNG51V04vRUdJeTlLVTBRa1UwblQrME1vakgwR2JlWlRHdjZCb2pDd1RJSXBYSWhHYmpsblQwTGxrenVMSmxVcEJ4QTRUcktHRG1LNHBmbnVPWUxRdTl5bUp3dXFnbmhnOWFJdi9raFM3bzAiLCJtYWMiOiI5MTI1NDZjYjVlNzE3NTk2MTI1MmMxMWQ4YmNlZGU1OTNiMWEyM2Q0MjA3Y2M2MjhiYjkwOWU0YTIwNzgyN2I1IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 69, NULL, NULL, 1, '2026-04-08 09:50:36', '2026-04-08 09:50:36'),
(79, 'GET', '[]', 'http://swatorganics.local/pistachios-with-shell', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InNIalJ3WnBQMVZlVWsyQkg0aWNQR2c9PSIsInZhbHVlIjoid0cwRlRjQkRlV1BnQTFYYkRLN1RNMVdNSTVqM0tOamljTlJITHV6NWs2czhHSXoyVGVhSmszMUp0KzhSa2R6bmQ5RmFJS0h4UE9IU0xNTE9vdHRDR2czamJoWlNOQ1FLQmFUTEN3VURaZ0dYN29oRURqelU4NHVTVG1PQ2R0b2oiLCJtYWMiOiJiM2EyNzlhMjJhNWYzNTJiMzc0OTZhNjczNjk3OWY0ZjIyZDViZjViNjNlZDQ4NGMwYmE5MTM1YWRjNTk5MGY5IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6InYrTDRzZEp0T1gzWkJaR0hIaDFyanc9PSIsInZhbHVlIjoiekN2VzFTNE9NOUJqcnNnTFVwTktZNnphSkFxNHhsSTU0MXJaZlFQMXNkbktLK1pWQ3hOZGY4TFlIY0Q3QXlDVjdDenBRWGwvS3NoV2xOMmNFQytJL1pURVMzVUxPWUNrOTFBaitMaG5BRnM5di9STXc1d0MycGY1QzZkYlcwRHAiLCJtYWMiOiJlMDlmNjA1MTg1MzM5Njk0ZGI0YWU0NDliMjhkZGY3NjEwN2Q1MTE0MGIyYTAxY2U5NTQxYjYyOTE0YTRlZmEzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 72, NULL, NULL, 1, '2026-04-08 10:27:13', '2026-04-08 10:27:13'),
(80, 'GET', '[]', 'http://swatorganics.local/basil-seeds-tukhmalanga', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IldITTVsK3lUcGN2QWNiUkZDV0w4M2c9PSIsInZhbHVlIjoieWk3TGNjbTlZWkpiMFlNUTBjOXY2SEpnZkx5dU93eEJPV1ZrZ3FTR1V1YmFZMENPdFlWeTZuMjdUdFh0UCsvZ1hnZU14MmVManhUVUE4RTdKMHRwaCt3SlUvUldSTW5WWklDNVNvZ2tYZk5KL3J4OTdXZ2R0YS9JdU1TRFhibGciLCJtYWMiOiJmNGYyNWVlMGEwZTI3N2FlMTkxMjQ1OTJlNzFkYjNiMGM0ZWE3MzlmNGIwYTg5NDk0MWE5NzlmMDM5ZWNmNTQ1IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkNaM3J2Nm42Tzg1OFlxV3NzMTE0QVE9PSIsInZhbHVlIjoiVHU3MVkrZENkclM1TXRKQU5ZYThiY2pDSGtTYkREZ2w0aVV4SW9DbDZlMnZ6WGd0UjgxUXNSYVBYZ1lMVkNqc2JYU3BpMmdXMlpyNGVncCtTb3hWT2pVZGJtYjQzVEhNVXQyMm00aFBMMnBXT1RNR2xLK05ZaWI3ajhJVmRQbzIiLCJtYWMiOiJiY2FjMjFkNmJjMzdjNWFhNzU4ZWY2Y2M5YTM5NzFkY2E4MjRjNWE2NWZjOGVkMzkzZjI3YWU4MWY5NzFlMTJiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 76, NULL, NULL, 1, '2026-04-08 10:47:52', '2026-04-08 10:47:52'),
(81, 'GET', '[]', 'http://swatorganics.local/superfoods', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImdXMUZVT3EyT096SkRabkN4UDdaQ0E9PSIsInZhbHVlIjoiV24rc3BkUDlZT3BHT0NxMUZKOUIxT1lIekNzTEVCeUlrSTNKWTlodG1WSFJXaGhWOTNsbmxVMEFFcVpKd002T1h4dlBLZWFXbGJURnR1NVBrbVpucytORnRjRjZlMW1VRDgzZWROdG13UDRHQ21pdmpwaWNJSlBIRDRkc0x4WTIiLCJtYWMiOiJlM2FmZmI0N2U5NWI2MDBkYWU2NzQwMDI3MTYyNDZmMTFlY2RmOTEyZjUyODQ4ZTBmYmQ2N2UyMGVmOTdkNDBkIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6Im9zL2dVdUdoR21DUXlBKzE0Z3U2NEE9PSIsInZhbHVlIjoib3ZRNE1qSE5PQXYwcTFGMFF5TzN2NEFoZENBWlFKRzBZTkRXY2hJOGF5VFMrcTBtNzIzMFJYZk0xNk9jT1FEYUNhWFpZb3ZXNXFQdFBwUlp5czQ4LzlTOHZnYzlkckg5b1ZRUUtsYTBIS1E4L3dTZWM2aXMzTlV1Y2FObzVkV1MiLCJtYWMiOiJkYmUwNDUyYzUxZjMyMGZhZWUyMDAwYTgxNGVhY2MwMzgzNDQ1MTAzYzMwNmE4NWViNzIxODFmNTU5NTI5MDE3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 12, NULL, NULL, 1, '2026-04-08 11:03:34', '2026-04-08 11:03:34'),
(82, 'GET', '[]', 'http://swatorganics.local/raw-honey', 'http://swatorganics.local/superfoods', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/superfoods\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkFkdThuYW1OMDdvclE2Zlc3bmsyY3c9PSIsInZhbHVlIjoiNXEzUzZpNjFJcm1ORlR3Vkh4VlczU2E5aWpoTmhrNExoNzJOTkl2L0VaTWU3eS8wUG8xNGR3c2dnUkpoYVV3Q1RpU2JGOXROTTBZQkZPSVZzWG16dXpuYzM1OExQUHhIU2NqeG9zR09QdkdGUzQzUjQzVEc3ak9zR1NUYmhzNjciLCJtYWMiOiIyNzMyNTI4NmZlMTI2Y2QwODJiMTIwMGU2ZmJjMzY1ZWI0YzE4OGNhNjdlZmMzZTE2YTMzMTU5NWFlYTY4ZWVlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IkZMKy9obkp4R3JVRDhBWHN1Mnoya3c9PSIsInZhbHVlIjoiTEwrUThmZWR6SzhzTHFjUEtuVmcxMitCdzhjVzdBMUpqRmVSdFZHbmI0ZlRZcWJzenFPbUQ3REI4VnJvdlVmVDdvbGVZUmFYbTdGQkUrY0krS0dIeHBHdWkzTUJtS2QrNjZpYlZYRFl5eUVtZWY4QjBaZWllUHBYWTk1c3NaZU8iLCJtYWMiOiI2MmJkYjhhMzAzOTU3MjQ4NTc3NWY1ZjRiYmQ4OGM4MGRkNWM3NDE3NWFlZGMyMDU3NGNkMzMyZWM4NTM2MzRlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 11, NULL, NULL, 1, '2026-04-08 11:12:04', '2026-04-08 11:12:04'),
(83, 'GET', '[]', 'http://swatorganics.local/extra-virgin-olive-oil', 'http://swatorganics.local/search?new=1&sort=name-asc', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/search?new=1&sort=name-asc\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjJjc09tNFRnQXlXdWRYbXlpejVBTkE9PSIsInZhbHVlIjoiZlhlQTFpei92QzV6QTNJalJJSmxuYUd4Skx4NkhCSjEwQjF2ZGtWakw0akJCRFdhTHY3Mjl1b2kzdU5WeE1KRGJGVXlRNC9sWEEwWXpyYTlPNVd1U2NWRC8vLzRhYm1IRitjdDBoZmlzbTg2NlhiMXhRdGx2SklnbTJFaUp6dFIiLCJtYWMiOiIwYjA1ZjEyZjM0OGUwYzgwYWMwMTRlYzlkYTcxMjFjNTI2Y2JmZjlhNGIxZjg0N2I1MzQwOWJhNDBkYzg0MjU3IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IjNzQjZhVnNlZll2d014OTZDZnBuSmc9PSIsInZhbHVlIjoibFZ0Q01LWWE5d3NsUmI0eHBEaWh6UGltcmhvdjVZQkhkNFEwTEpSeTM2WmtRbms1bjJLN01mMFFTcXorUjR0ZGZCUU1rZlVkWm5WUEJLSTc2Q0dWN01Oa0FZdVh1KzZ3WmJRR2lQL3BUQ01HZXozNzZyZVU2N3JPMVIyaTkvUlYiLCJtYWMiOiI0ZmJjN2RkNzU0NzhjNjAyYzhmN2FjNzdhNTk3MDZhOTI2Mzg0ZTlmY2I3ZDMyMDU1MmNjODNjNDNkNmYwMjcyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Product\\Models\\Product', 92, NULL, NULL, 1, '2026-04-08 11:26:30', '2026-04-08 11:26:30'),
(84, 'GET', '[]', 'http://swatorganics.local/mixed-dry-fruits', 'http://swatorganics.local/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IklVNjJHS1B0KzJQSzBkL2V0eFhDdHc9PSIsInZhbHVlIjoiNW5pVWRkZ1VZaUszUlhweTJZeVdRdW5KemJSc1lCb3RzU29aS3Axb3Rwc3ZZK1B2cDU0NDFDNWlPZi8rbWIxQkhFK29PaGo0M0phZHFaYXVhc215YjRCMjRsdkw2Q3JzOGgxZHZWVk13NnZUaUY4UUJiMDZkczJUYUU5WFdkN24iLCJtYWMiOiIxYjUwZjMwOTMzYjJjODlmNGY5MmNlMDlhNmViNzc4NmI2ZjczZTZlOGI0OWQ0NjU5NWIyMDdlMWMxNGEyY2I5IiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlVpVU9kL3dybXBzZy9VRElKNm11YlE9PSIsInZhbHVlIjoiSDA0UU10OUtVSGdIRWJJR3ZKZ29sWkVUbGkrRi94dCtQMDBPWEJ3VVl6SWgzN3BhbUg2eWNtSjFXOUJ5bThHR3NIVnVsYTdRZVZ1UGFDdld5cXNxTDdWYXJBTkJGWHN4VFM4SWIvbCtIMWl1MTJrbkR4a0RSUHBZUW9FQklTS24iLCJtYWMiOiIyOGVmYTM0YjRjNGQxNjc3MDVmOTNkZjk5YjdjMDFiNzdiN2Q5MmM2YzAzODQ2ZDhiM2I2YjUyZWZlMTI0OTA1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBJaDlkb2VtOFV3SmgycmlzcVVTamc9PSIsInZhbHVlIjoiQnRmclpHaEhLblRkQXdjSnYwUnNURWF6N0NXeWM3ZWx0R0pBTDVaaER1eVRqV1dFaWwyU0JGa3FjT2hnL3ZUWXJvWUhOaXVyMDhObWYzZUlLZ2RPSlVWU3lTYzUrTG9zMGdtSTR4SG9Gc3pvYlI3WmRhMStqUktBUmJBL0dkS1kiLCJtYWMiOiI0MWUzZTNmNDdlY2EzNzQzNWZkMWIyMjg1MmE5YWZiYjExMWNhMWNkYzRlYTg4ZjhhZTA2Y2VmYjM4NjUxYmE0IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2026-04-08 11:40:51', '2026-04-08 11:40:51'),
(85, 'GET', '[]', 'http://swatorganics.local/gift-boxes', 'http://swatorganics.local/superfoods', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', '{\"host\":[\"swatorganics.local\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko\\/20100101 Firefox\\/149.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/swatorganics.local\\/superfoods\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlVoQXZHYlIyVzdhd0NmM3Axdnlzcmc9PSIsInZhbHVlIjoiOC8vZzRaekNUamhwTW1sVTByL0tJUm9CNStrTG85ZW0xWHRZYk1odGFEdzh3MDNOaEV4YzRpTVRlNXFCY1JhbVYwenJNaFNJL21KRWVocjlvZ3VjWHpabTVlRFE4aTNxYzk0RFY3L0p6cy9wWGJWZ2c3K1NWZmJVNTdKOGFIM2wiLCJtYWMiOiIzMDhmMzNlYzgyYjliM2IxNTMxYjViOWY4YWIzZDFlMzNjOGIzYTk4ODc1ZWMwZWQ2NDE3MTNhZDU5YzhkNDhlIiwidGFnIjoiIn0%3D; swatorganics_session=eyJpdiI6IlI2K0loc3BFcnFmMGhMbFh0azdGQ3c9PSIsInZhbHVlIjoiaU8rMzJBU3FrNlBSeVNQWjhQK1prazY3K0IvTVZUMjFVVk1yWDBzeTdZM2dCZVpOVnBZazZraC9yL1lma1hPTHV5RDI2amU5YkVWU1crZzZEODJRa2QrMU5PMTA0aVJVbzJxMDFwK1Jrb2h2djBkSFFqKzhkRmxGbDc0OGhLd2wiLCJtYWMiOiIwOTQzYjVmOTg5M2VmODZhNzZkMjg4NTQ1YTAwYTY2MzM0MTBiYjRkMDY1MWJkNDUxMjUzNjQyNDZmNTZlMGVmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImZqUjdkYUhEenY1QzRSZVFMVmw1dHc9PSIsInZhbHVlIjoiMVpaMVVBTUQxRHVaZ1k0bnNEVWh4SXQ3UXdnZmwyaUtPSmZ1Q0l0aEhITTEvMFhpaUtNU0VUdStoSzFRUVk3dW5oSktvaFBpR2FJTGZqUEt1bVgrVUFKd2Nib0lLRklHaHluL0YrdzdKSDV5MlNDZHo3SjVTa1pxTkFmRXhrNVMiLCJtYWMiOiJhMWI3N2U3OTM2MzRmNThmZjJlMGU2ZDU1MTBhNzUwNjRmZjJhNzRjYzFiMWI3Njk4NzFjMTliMDM3YTVjMGI4IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '::1', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2026-04-08 11:41:16', '2026-04-08 11:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `item_options` json DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_channel_id_foreign` (`channel_id`),
  KEY `wishlist_product_id_foreign` (`product_id`),
  KEY `wishlist_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

DROP TABLE IF EXISTS `wishlist_items`;
CREATE TABLE IF NOT EXISTS `wishlist_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `additional` json DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  KEY `wishlist_items_product_id_foreign` (`product_id`),
  KEY `wishlist_items_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
