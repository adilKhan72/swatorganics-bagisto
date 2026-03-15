-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2026 at 05:50 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(51, 'order_billing', NULL, NULL, NULL, 12, 'asdf', '', NULL, NULL, 'aadsfasdf\r\naadsfasdf', 'adfdsf', NULL, 'PK', NULL, '', '03443444141', NULL, 0, 0, NULL, '2025-12-27 14:55:51', '2025-12-27 14:55:51');

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'brand', 'Brand', 'select', NULL, NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(26, 'guest_checkout', 'Guest Checkout', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(27, 'product_number', 'Product Number', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(28, 'manage_stock', 'Manage Stock', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(29, 'product_type', 'Product Type', 'select', 'dropdown', NULL, '', 31, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:29:56', '2026-03-13 22:23:25'),
(30, 'net_weight', 'Net Weight', 'select', 'dropdown', NULL, '', 32, 0, 0, 1, 0, 1, 1, 1, 0, 0, NULL, 0, '2026-02-04 09:32:36', '2026-03-13 22:22:47'),
(31, 'packaging', 'Packaging', 'select', 'dropdown', NULL, '', 33, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:34:14', '2026-03-13 22:25:09'),
(32, 'origin', 'Origin', 'select', 'dropdown', NULL, '', 34, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:36:10', '2026-03-13 22:22:36'),
(33, 'processing', 'Processing', 'select', 'dropdown', NULL, '', 29, 0, 0, 1, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-02-04 09:37:07', '2026-03-13 22:22:23'),
(34, 'shelf_life', 'Shelf Life', 'text', NULL, 'regex', '', 30, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL, 0, '2026-02-04 09:40:10', '2026-03-13 22:17:10'),
(35, 'our_production', 'Made By Swat Organics', 'boolean', NULL, NULL, '', 35, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, '2026-02-04 09:40:57', '2026-03-13 22:23:43');

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
(4, 1, 12),
(25, 1, 6),
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
(29, 8, 5),
(25, 8, 6),
(32, 8, 7),
(33, 8, 8),
(31, 8, 9),
(34, 8, 10),
(35, 8, 11),
(4, 8, 12),
(30, 8, 13),
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
(29, 1, 5),
(32, 1, 7),
(33, 1, 8),
(31, 1, 9),
(34, 1, 10),
(35, 1, 11),
(30, 1, 13);

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(37, 33, 'Roasted', 4, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(65, 37, 'ur_PK', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(42, 35, 'ur_PK', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, '', 'asdf', '', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'PKR', 'PKR', 'PKR', 'PKR', 3000.0000, 3000.0000, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 200.0000, 200.0000, 2800.0000, 2800.0000, NULL, 1, 0, NULL, NULL, 1, '2025-12-27 14:55:22', '2025-12-27 14:55:56');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, 1, 'TH500', 'simple', 'Test Honey 500g', NULL, 0.5000, 0.5000, 0.5000, 2800.0000, 2800.0000, NULL, 2800.0000, 2800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL, 2, 18, NULL, NULL, '{\"cart_id\": 18, \"quantity\": 1, \"is_buy_now\": \"1\", \"product_id\": \"2\"}', '2025-12-27 14:55:22', '2025-12-27 14:55:22');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(43, 'cashondelivery', 'Cash On Delivery', 18, '2025-12-27 14:55:50', '2025-12-27 14:55:50');

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
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(127, 'flatrate', 'Standard Delivery', 'flatrate_flatrate', 'Standard Delivery', 'Standard Delivery', 200, 200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, NULL, 1, 49, '2025-12-27 14:55:49', '2025-12-27 14:55:49', 18);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'products_and_description', 1, 22, NULL, NULL, NULL, '2025-12-13 21:38:35', '2025-12-13 21:38:35'),
(3, 1, 'category/3/vEP7ZAW0pK19AP7UETNFBKv5jt3dlJrxdH87vhQv.webp', 1, 'products_and_description', 6, 7, 1, NULL, 'category/3/ByV6zEJFjqU2xZid6qiw1m1Gr4kR2ivFP1KnKy4b.webp', '2026-03-13 22:30:56', '2026-03-15 18:03:47'),
(4, 2, 'category/4/q4NF5UVdlkhK4UIJni3MW4eQFD3nELgk46jP7LTm.webp', 1, 'products_and_description', 8, 9, 1, NULL, 'category/4/sw2Ri5F3T6Pl2s3JEUERWb9gnGhGwqKkEFqSNt7Z.webp', '2026-03-13 22:32:02', '2026-03-15 18:06:45'),
(5, 3, 'category/5/s9xhidZpexU8pET3dHzuMgl7v2VX3855JZG6CJUG.webp', 1, 'products_and_description', 10, 11, 1, NULL, 'category/5/bhZVKkeSeYB0nkRm0ML9K26h1vsmiloFXwfkw7r5.webp', '2026-03-13 22:32:58', '2026-03-15 18:07:30'),
(6, 4, 'category/6/cHgOL2Y569lxfYLiv3aESnoLvGnMbK9YsfOTvixm.webp', 1, 'products_and_description', 12, 13, 1, NULL, 'category/6/NBkMFo63M58MwLxw2kIq8kknPUb4lAvdnaTb9wqI.webp', '2026-03-13 22:34:41', '2026-03-15 18:09:19'),
(7, 5, 'category/7/8GpYTZWQ4uj5MBpiRU5Q5dbdBl8cLLcekCuEkivJ.webp', 1, 'products_and_description', 14, 15, 1, NULL, 'category/7/Ujfceuah7MRlEdO1oDKME1nft1QmNdfJilMm8quR.webp', '2026-03-13 22:35:22', '2026-03-15 18:12:30'),
(8, 6, 'category/8/oSlLY3njnAb8VArNZvmAYH0ZyW15xinEOxN1oETx.webp', 1, 'products_and_description', 16, 17, 1, NULL, 'category/8/rSVWxtPaBbSFKImmjwrrVatotEt5LJcMkIBaI0KT.webp', '2026-03-13 22:36:10', '2026-03-15 18:12:58'),
(9, 7, 'category/9/1gzITplH8HzD7yH40MXhBvv8CFG4rrB2yucSY3Ff.webp', 1, 'products_and_description', 18, 19, 1, NULL, 'category/9/erVj2Na26ERpp34219c1WyBXZKda1IaQQblH5srr.webp', '2026-03-13 22:36:55', '2026-03-15 18:15:10'),
(10, 8, 'category/10/V5fLAfQZwzteGQT2cVoGXx7P90KKVs2PskmnaRpE.webp', 1, 'products_and_description', 20, 21, 1, NULL, 'category/10/0NBm1CUu5lEeLxmaLjlODUvb7gCFQe6EG7PHD07h.webp', '2026-03-13 22:38:50', '2026-03-15 18:18:01');

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
(10, 35);

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'Root', 'root', '', 'Root Category Description', '', '', '', NULL, 'en'),
(2, 2, 'adil category test', 'adil-category-test', '', '<p>adsf</p>', '', '', '', 1, 'en'),
(3, 2, 'adil category test', 'adil-category-test', '', '<p>adsf</p>', '', '', '', 2, 'ur_PK'),
(4, 3, 'Dry Fruits', 'dry-fruits', '', '<p>Explore our premium collection of dry fruits sourced from trusted farms and carefully packed to maintain freshness and natural taste. Our dry fruits are rich in essential nutrients, vitamins, and antioxidants that support a healthy lifestyle.</p>\r\n<p>From almonds and walnuts to pistachios, apricots, and figs, we offer a wide range of natural dry fruits perfect for daily snacking, cooking, and gifting. At Swat Organics, we ensure every product is hygienically packed and delivered fresh to your doorstep across Pakistan.</p>', 'Buy Premium Dry Fruits Online in Pakistan | Swat Organics', 'Shop premium quality dry fruits online in Pakistan including almonds, walnuts, pistachios, apricots and more. Fresh, natural and delivered by Swat Organics.', 'dry fruits pakistan, buy dry fruits online pakistan, premium dry fruits, organic dry fruits pakistan, almonds walnuts pistachios, healthy dry fruits, gilgit baltistan dry fruits', 1, 'en'),
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
(16, 9, 'Organic Products', 'organic-products', '', '<p>Our organic product range includes naturally produced foods made from carefully selected ingredients without harmful chemicals or preservatives.</p>\r\n<p>Swat Organics focuses on delivering pure, natural, and healthy organic products including honey blends, energy mixes, and traditional recipes made from dry fruits and seeds.</p>', 'Buy Organic Products Online in Pakistan | Swat Organics', 'Shop natural and organic products made from dry fruits and seeds. Healthy homemade foods from Swat Organics.', 'organic foods pakistan, natural organic products pakistan, organic dry fruits products, homemade organic foods pakistan', 1, 'en'),
(17, 9, 'Organic Products', 'organic-products', '', '<p>Our organic product range includes naturally produced foods made from carefully selected ingredients without harmful chemicals or preservatives.</p>\r\n<p>Swat Organics focuses on delivering pure, natural, and healthy organic products including honey blends, energy mixes, and traditional recipes made from dry fruits and seeds.</p>', 'Buy Organic Products Online in Pakistan | Swat Organics', 'Shop natural and organic products made from dry fruits and seeds. Healthy homemade foods from Swat Organics.', '', 2, 'ur_PK'),
(18, 10, 'Gift Boxes', 'gift-boxes', '', '<p>Our dry fruit gift boxes are perfect for special occasions, celebrations, and corporate gifts. Each box contains a premium selection of fresh dry fruits beautifully packed for gifting.</p>\r\n<p>These gift boxes combine taste, nutrition, and elegance, making them an ideal present for family, friends, and business partners.</p>', 'Buy Dry Fruit Gift Boxes Online in Pakistan | Swat Organics', 'Order premium dry fruit gift boxes online in Pakistan. Perfect for weddings, events and special occasions.', 'dry fruit gift boxes pakistan, dry fruit gift pack pakistan, premium dry fruit gift box, dry fruit gift hampers pakistan', 1, 'en'),
(19, 10, 'Gift Boxes', 'gift-boxes', '', '<p>Our dry fruit gift boxes are perfect for special occasions, celebrations, and corporate gifts. Each box contains a premium selection of fresh dry fruits beautifully packed for gifting.</p>\r\n<p>These gift boxes combine taste, nutrition, and elegance, making them an ideal present for family, friends, and business partners.</p>', 'Buy Dry Fruit Gift Boxes Online in Pakistan | Swat Organics', 'Order premium dry fruit gift boxes online in Pakistan. Perfect for weddings, events and special occasions.', '', 2, 'ur_PK');

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
(1, 'default', NULL, 'default', 'http://swatorganics.local', 'channel/1/EEo797tmyFZbJACAOJdxIu7WkGMiH8V7QMD3XjTP.png', 'channel/1/2FsEWk082kWtozu7HzsMGJuQ6bg7Q7jSSYoMvhIY.png', NULL, 0, '', 1, 1, 2, '2025-12-13 21:38:35', '2025-12-26 11:56:26');

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
(1, 1, 'en', 'Default', '', '', '{\"meta_title\": \"SwatOrganics – 100% Pure Organic Products from Swat Valley | Honey, Herbal Oils & Natural Ingredients\", \"meta_keywords\": \"swat organics, sidr honey pakistan, pure honey swat valley, natural honey, herbal oils pakistan, cold pressed oils, natural superfoods pakistan, dry fruits swat, organic food store pakistan, dehydrated foods, moringa powder, ashwagandha powder, natural health products\", \"meta_description\": \"Discover premium organic products sourced from the mountains of Swat Valley. Shop pure honey, cold-pressed herbal oils, dry fruits, dehydrated foods, and natural superfoods—fresh, authentic, and delivered across Pakistan.\"}', NULL, '2025-12-26 11:56:26');

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
(108, 'general.content.custom_scripts.custom_css', '/* ===============================\r\n   Footer – Global Fixes\r\n================================ */\r\n\r\n/* Center bottom copyright text */\r\n footer div.flex.justify-between.bg-[#F1EADF] {\r\n    justify-content: center !important;\r\n}\r\n/* Brand color */\r\n :root {\r\n    --brand-green: #01bc53;\r\n}\r\n/* ===============================\r\n   Footer Layout (Desktop)\r\n================================ */\r\n .footer-brand {\r\n    flex: 0 0 32%;\r\n    max-width: 32%;\r\n    line-height: 1.7;\r\n}\r\n.footer-links {\r\n    flex: 0 0 38%;\r\n    max-width: 38%;\r\n}\r\n/* Newsletter block */\r\n footer .grid.gap-2.5 {\r\n    flex: 0 0 26%;\r\n    max-width: 26%;\r\n}\r\n/* Divider for desktop */\r\n @media (min-width: 1060px) {\r\n    .footer-brand {\r\n        padding-right: 28px;\r\n        border-right: 1px solid #e5e7eb;\r\n    }\r\n}\r\n/* ===============================\r\n   Footer Brand Content\r\n================================ */\r\n .footer-title {\r\n    font-size: 1.1rem;\r\n    font-weight: 700;\r\n    color: var(--brand-green);\r\n    margin-bottom: 8px;\r\n}\r\n.footer-desc {\r\n    font-size: 0.9rem;\r\n    color: #374151;\r\n    margin-bottom: 14px;\r\n}\r\n/* Highlight important words */\r\n .footer-brand strong {\r\n    color: var(--brand-green);\r\n    font-weight: 600;\r\n}\r\n/* ===============================\r\n   Contact Info\r\n================================ */\r\n .footer-contact {\r\n    font-size: 0.9rem;\r\n    margin-bottom: 6px;\r\n}\r\n.footer-contact .label {\r\n    font-weight: 600;\r\n    color: var(--brand-green);\r\n    margin-right: 4px;\r\n}\r\n.footer-contact a {\r\n    color: #1f2937;\r\n    text-decoration: none;\r\n}\r\n.footer-contact a:hover {\r\n    color: var(--brand-green);\r\n    text-decoration: underline;\r\n}\r\n/* Support line */\r\n .footer-support {\r\n    font-size: 0.85rem;\r\n    margin-top: 10px;\r\n    color: #374151;\r\n}\r\n/* ===============================\r\n   Footer Links Hover Styling\r\n================================ */\r\n\r\n/* Desktop footer links */\r\n footer ul li a {\r\n    color: #1f2937;\r\n    text-decoration: none;\r\n    transition: color 0.2s ease;\r\n}\r\nfooter ul li a:hover {\r\n    color: var(--brand-green);\r\n    text-decoration: underline;\r\n}\r\n/* Mobile accordion footer links */\r\n footer .accordion-content a:hover {\r\n    color: var(--brand-green);\r\n}\r\n/* ===============================\r\n   Mobile Footer Fix (IMPORTANT)\r\n================================ */\r\n @media (max-width: 1060px) {\r\n    /* Fix parent alignment */\r\n    footer > div.flex {\r\n        align-items: center;\r\n        justify-content: center;\r\n        text-align: center;\r\n    }\r\n    /* Stack sections properly */\r\n    .footer-brand, .footer-links, footer .grid.gap-2.5 {\r\n        flex: 1 1 100%;\r\n        max-width: 100%;\r\n    }\r\n    /* Ensure correct order */\r\n    .footer-brand {\r\n        order: 1;\r\n        margin: 0 auto;\r\n    }\r\n    footer .grid.gap-2.5 {\r\n        order: 2;\r\n        align-items: center;\r\n        text-align: center;\r\n    }\r\n    /* Center brand text */\r\n    .footer-brand p, .footer-contact, .footer-support {\r\n        text-align: center;\r\n    }\r\n}\r\n/* ===============================\r\n   HARD MOBILE FOOTER FIX\r\n================================ */\r\n @media (max-width: 1060px) {\r\n    /* Override Bagisto footer container */\r\n    footer > div.flex {\r\n        flex-direction: column !important;\r\n        align-items: center !important;\r\n        justify-content: center !important;\r\n        gap: 24px !important;\r\n        padding-left: 20px !important;\r\n        padding-right: 20px !important;\r\n        text-align: center;\r\n    }\r\n    /* Brand block */\r\n    .footer-brand {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        text-align: center !important;\r\n        padding-right: 0 !important;\r\n        border-right: none !important;\r\n    }\r\n    /* Links section */\r\n    .footer-links {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        text-align: center;\r\n    }\r\n    /* Newsletter */\r\n    footer .grid.gap-2.5 {\r\n        max-width: 100% !important;\r\n        width: 100%;\r\n        align-items: center !important;\r\n        text-align: center;\r\n    }\r\n    /* Center contact rows */\r\n    .footer-contact {\r\n        justify-content: center;\r\n    }\r\n}\r\n\r\n/* WhatsApp Floating Button (Simple & Safe) */\r\n.whatsapp-float {\r\n    position: fixed;\r\n    bottom: 22px;\r\n    right: 22px;\r\n\r\n    width: 56px;\r\n    height: 56px;\r\n\r\n    background-color: #25D366;\r\n    border-radius: 50%;\r\n\r\n    display: flex;\r\n    align-items: center;\r\n    justify-content: center;\r\n\r\n    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);\r\n    z-index: 9999;\r\n\r\n    transition: transform 0.2s ease, box-shadow 0.2s ease;\r\n}\r\n\r\n.whatsapp-float:hover {\r\n    transform: scale(1.08);\r\n    box-shadow: 0 12px 26px rgba(0, 0, 0, 0.35);\r\n}\r\n\r\n/* Mobile spacing */\r\n@media (max-width: 768px) {\r\n    .whatsapp-float {\r\n        bottom: 16px;\r\n        right: 16px;\r\n    }\r\n}', 'default', NULL, '2025-12-26 10:47:43', '2025-12-27 14:42:08'),
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(24, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, '2|22');

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
(2, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, 'simple-prd', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-14 03:04:39', 'en', 'default', 1, 1, '2025-12-14 03:04:39', NULL, NULL),
(2, 'TH500', 'simple', '', 'Test Honey 500g', '<p>Test Honey 500g</p>', '<p>Test Honey 500g</p>', 'test-honey-500g', 1, 1, 0, 'Test Honey 500g', 'Test Honey 500g', 'Test Honey 500g', 2800.0000, NULL, NULL, NULL, 0.5000, '2025-12-14 03:05:17', 'en', 'default', 1, 2, '2025-12-29 20:33:57', NULL, 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(1, 12, 2, 0, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 1, NULL, '2025-12-27 14:55:55');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL),
(2, 2, 2, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL),
(3, 2, 3, 1, 2800.0000, 2800.0000, 2800.0000, 2800.0000, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'default', 'category_carousel', 'Categories Collections', 10, 1, 1, '2025-12-13 21:38:35', '2026-03-13 23:29:55'),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
