-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2023 at 10:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(24, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', 'Toy Kit for kids', '400', '1', '1697478314.jpg', '2', '1', '2023-11-15 12:33:04', '2023-11-15 12:33:04'),
(25, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', 'Macbook', '800', '1', '1697478479.jpg', '3', '1', '2023-11-15 12:33:08', '2023-11-15 12:33:08'),
(26, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', 'Shirt', '570', '2', '1697565273.jpg', '5', '1', '2023-11-15 12:33:13', '2023-11-15 12:33:13'),
(32, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '5452515195', 'gaziantep', 'Macbook', '3200', '4', '1697478479.jpg', '3', '3', '2023-11-22 14:05:37', '2023-11-22 15:31:06'),
(33, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '5452515195', 'gaziantep', 'Toy Kit for kids', '1200', '3', '1697478314.jpg', '2', '3', '2023-11-22 14:05:40', '2023-11-22 14:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2023-10-14 10:22:47', '2023-10-14 10:22:47'),
(2, 'Toy', '2023-10-14 10:31:30', '2023-10-14 10:31:30'),
(3, 'Laptop', '2023-10-14 10:34:39', '2023-10-14 10:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmet Ceyran', 'This is my first comment in laravel', '3', '2023-11-20 14:21:48', '2023-11-20 14:21:48'),
(2, 'Ahmet Ceyran', '2nd comment', '3', '2023-11-20 15:16:56', '2023-11-20 15:16:56'),
(3, 'Ahmet Ceyran', '3rd comment', '3', '2023-11-20 15:34:40', '2023-11-20 15:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_11_141803_create_sessions_table', 1),
(7, '2023_10_14_130949_create_categories_table', 2),
(8, '2023_10_15_164818_create_products_table', 3),
(9, '2023_10_19_165809_create_carts_table', 4),
(10, '2023_10_20_182544_create_orders_table', 5),
(11, '2023_11_17_181821_create_notifications_table', 6),
(12, '2023_11_20_164956_create_comments_table', 7),
(13, '2023_11_20_165027_create_replies_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(9, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Shirt', '1', '285', '1697565273.jpg', '5', 'Paid', 'delivered', '2023-10-20 17:03:36', '2023-11-15 14:38:33'),
(10, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Red Shirt', '1', '200', '1697651092.png', '6', 'Paid', 'processing', '2023-11-14 17:23:20', '2023-11-14 17:23:20'),
(11, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Macbook', '2', '1600', '1697478479.jpg', '3', 'Paid', 'delivered', '2023-11-14 17:23:20', '2023-11-15 14:40:15'),
(12, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Shirt', '2', '570', '1697565273.jpg', '5', 'Paid', 'Canceled!', '2023-11-14 17:45:25', '2023-11-19 15:43:01'),
(13, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Toy Kit for kids', '1', '400', '1697478314.jpg', '2', 'Paid', 'Canceled!', '2023-11-14 17:45:25', '2023-11-19 15:40:01'),
(14, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Toy Kit for kids', '2', '800', '1697478314.jpg', '2', 'Paid', 'processing', '2023-11-14 17:48:21', '2023-11-14 17:48:21'),
(15, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Shirt', '1', '285', '1697565273.jpg', '5', 'Paid', 'processing', '2023-11-14 17:48:21', '2023-11-14 17:48:21'),
(16, 'user', 'user@gmail.com', '05443185910', 'asdasfcdcsdvdsvs', '1', 'Macbook', '1', '800', '1697478479.jpg', '3', 'Paid', 'processing', '2023-11-14 17:50:48', '2023-11-14 17:50:48'),
(17, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '5452515195', 'gaziantep', '3', 'Toy Kit for kids', '1', '400', '1697478314.jpg', '2', 'Paid', 'processing', '2023-11-17 13:49:01', '2023-11-17 13:49:01'),
(18, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '5452515195', 'gaziantep', '3', 'Macbook', '1', '800', '1697478479.jpg', '3', 'Paid', 'delivered', '2023-11-17 13:49:01', '2023-11-17 15:56:08'),
(19, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '5452515195', 'gaziantep', '3', 'Shirt', '2', '570', '1697565273.jpg', '5', 'Paid', 'processing', '2023-11-17 13:49:01', '2023-11-17 13:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(2, 'Toy Kit for kids', 'Toy kit for 3-5 year old kids', '1697478314.jpg', 'Toy', '11', '500', '400', '2023-10-16 14:45:14', '2023-11-17 13:49:01'),
(3, 'Macbook', 'Apple macbook laptop', '1697478479.jpg', 'Laptop', '38', '800', '', '2023-10-16 14:47:59', '2023-11-17 13:49:01'),
(5, 'Shirt', 'shirt for men', '1697565273.jpg', 'Shirt', '47', '350', '285', '2023-10-17 13:28:17', '2023-11-17 13:49:02'),
(6, 'Red Shirt', 'Casual red golf shirt', '1697651092.png', 'Shirt', '24', '200', NULL, '2023-10-18 14:44:52', '2023-11-14 17:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmet Ceyran', '1', 'Reply to first comment', '3', '2023-11-20 15:14:22', '2023-11-20 15:14:22'),
(2, 'Ahmet Ceyran', '2', 'Reply to 2nd comment', '3', '2023-11-20 15:19:15', '2023-11-20 15:19:15'),
(4, 'Ahmet Ceyran', '3', 'reply to 3rd comment', '3', '2023-11-20 15:34:59', '2023-11-20 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ckKJoEfpCa0WuxHg8Du0n2v8vccs8GjQgMK6kqy6', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGNxdXZQSTQ4YkM1ZFNqanlpWFJhR3hoU3BMNDh0R1E4SXExNURhOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1700682190);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '05443185910', 'asdasfcdcsdvdsvs', '2023-11-15 19:34:55', '$2y$10$uMxvtowmb8ERlDowQRad9.QFrlISdN1O1yrfXjEGI1e4Yai5UkF6G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-11 12:15:28', '2023-10-11 12:15:28'),
(2, 'admin', 'admin@gmail.com', '1', '05452511595', 'sdamskdlmaskldmlkamd', '2023-11-01 19:35:34', '$2y$10$bKaI3eInUh9aIYlezMYbrulCUQu3mjxNeeK5unJKe3Euon0K11ptu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-11 12:17:42', '2023-10-11 12:17:42'),
(3, 'Ahmet Ceyran', 'ahmettceyran@gmail.com', '0', '5452515195', 'gaziantep', '2023-11-16 16:31:26', '$2y$10$NIx3JKgTy2p8bXT1ZfXzpeGdBtSnzm5macF97JNFe72d5cxaVvroi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 16:30:47', '2023-11-16 16:31:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
