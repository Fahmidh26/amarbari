-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 07:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amar-bari`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenitis_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(2, 'Air Conditioning', NULL, NULL),
(3, 'Refrigerator', NULL, NULL),
(4, 'fan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, 'Ut nemo eveniet asp', '2023-08-03 10:04:12', '2023-08-03 10:04:12'),
(3, 1, 'Entertainment', 'Incididunt quia dist', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(4, 1, 'Airport', 'In autem eu voluptat', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(5, 1, 'Bank', 'Ratione est anim eve', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(6, 1, 'Mall', 'Deserunt in perferen', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(7, 3, 'Airport', 'Dicta quaerat necess', '2023-08-05 10:26:21', '2023-08-05 10:26:21'),
(8, 3, 'Beach', 'as', '2023-08-05 10:26:21', '2023-08-05 10:26:21'),
(9, 4, 'SuperMarket', 'Ut repellendus Atqu', '2023-08-05 11:12:47', '2023-08-05 11:12:47');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_02_134129_create_property_types_table', 2),
(6, '2023_08_02_143539_create_amenities_table', 3),
(7, '2023_08_02_150636_create_properties_table', 4),
(8, '2023_08_02_151218_create_multi_images_table', 4),
(9, '2023_08_02_151406_create_facilities_table', 4),
(10, '2023_08_05_160511_create_package_plans_table', 5),
(11, '2023_08_05_160951_create_package_plans_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'upload/property/multi-image/1773224488345195.jpg', '2023-08-03 10:04:11', NULL),
(3, 2, 'upload/property/multi-image/1773224488517318.jpg', '2023-08-03 10:04:12', NULL),
(4, 2, 'upload/property/multi-image/1773224488744176.jpg', '2023-08-03 10:04:12', NULL),
(5, 2, 'upload/property/multi-image/1773224488988838.jpg', '2023-08-03 10:04:12', NULL),
(6, 1, 'upload/property/multi-image/1773226552276417.jpg', '2023-08-03 10:37:00', NULL),
(7, 1, 'upload/property/multi-image/1773226564871935.jpg', '2023-08-03 10:37:12', NULL),
(8, 3, 'upload/property/multi-image/1773407076118920.png', '2023-08-05 10:26:21', NULL),
(9, 3, 'upload/property/multi-image/1773407076194960.jpg', '2023-08-05 10:26:21', NULL),
(10, 4, 'upload/property/multi-image/1773409997656111.jpg', '2023-08-05 11:12:47', NULL),
(11, 4, 'upload/property/multi-image/1773409997835242.jpg', '2023-08-05 11:12:47', NULL),
(12, 4, 'upload/property/multi-image/1773409998011181.jpg', '2023-08-05 11:12:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_credits` varchar(255) DEFAULT NULL,
  `package_amount` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_plans`
--

INSERT INTO `package_plans` (`id`, `user_id`, `package_name`, `package_credits`, `package_amount`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 2, 'Business', '3', '20', 'ERS10069819', '2023-08-05 11:15:39', NULL);

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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `amenities_id` varchar(255) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_slug` varchar(255) NOT NULL,
  `property_code` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `lowest_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `property_thambnail` varchar(255) NOT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `garage_size` varchar(255) DEFAULT NULL,
  `property_size` varchar(255) DEFAULT NULL,
  `property_video` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '2', 'Shafira Jensen', 'shafira-jensen', 'AB001', 'buy', '628', '211', 'upload/property/thambnail/1773224445495641.jpg', 'Minima amet dolorum', NULL, 'Obcaecati dolorem la', 'Consectetur unde re', 'Sint totam nostrud o', 'Animi id reprehend', 'Et sunt praesentium', 'Fuga Est dolorem no', 'Commodo laborum Non', 'Saepe in magnam in u', 'Exercitation corrupt', 'Ipsum ullam molestia', 'Consequatur magnam', 'Consequat Harum eum', 'Iusto ut libero comm', NULL, '1', 2, '1', '2023-08-03 10:03:30', '2023-08-03 10:16:09'),
(2, '2', '2', 'Gannon Foreman', 'gannon-foreman', 'AB002', 'buy', '538', '427', 'upload/property/thambnail/1773224488147817.jpg', 'Itaque pariatur Exp', NULL, 'Consequatur in aperi', 'Irure illo numquam d', 'Hic eius atque perfe', 'Sit aliquid repellen', 'Facere eligendi offi', 'Dolor est sint venia', 'Aliquip voluptate al', 'Adipisicing ut dolor', 'Pariatur Tenetur ad', 'Non duis et magnam o', 'Cumque sint sed susc', 'Rerum eaque possimus', 'Amet qui quos in qu', NULL, NULL, 2, '1', '2023-08-03 10:04:11', '2023-08-03 23:35:35'),
(3, '2', 'Refrigerator,fan', 'Idona Stark', 'idona-stark', 'PC003', 'rent', '910', '377', 'upload/property/thambnail/1773407075745218.PNG', 'Nisi aut quod et ad', NULL, 'Occaecat magni unde', 'Irure dolores quo no', 'Impedit modi iste e', 'Deserunt praesentium', 'Qui optio iusto rep', 'Rerum fugit omnis e', 'Optio vero pariatur', 'Omnis officia non ex', 'Voluptate nulla volu', 'Consequatur doloribu', 'Voluptate et ullamco', 'Adipisicing molestia', 'Illo tempor laborios', '1', '1', 2, '1', '2023-08-05 10:26:21', NULL),
(4, '2', 'Refrigerator,fan', 'Sophia Waters', 'sophia-waters', 'AB004', 'rent', '220', '164', 'upload/property/thambnail/1773409997531513.png', 'Voluptatem at volupt', NULL, 'Rerum omnis veritati', 'Mollitia quaerat vol', 'Et aliquam in minima', 'Aut non qui fugiat e', 'Placeat aspernatur', 'Sit autem aut elit', 'Eiusmod et et offici', 'Ad laborum Assumend', 'Minima minim ullam s', 'Deleniti qui laborio', 'Voluptas ipsum iure', 'Sit adipisicing est', 'Maiores id voluptat', NULL, '1', 2, '1', '2023-08-05 11:12:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(2, 'Apartment', 'icon-1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `credit` varchar(255) DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$6NOqq47CWut6dEUOigZ1FexSsbd4GJomIFlxYy8BzxJPZj5scdvNe', NULL, NULL, NULL, 'admin', 'active', '0', NULL, NULL, NULL),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$Wh77X6/C.lNnp0/spGpcb.lC0T/HipS9siv8wMk2fO8kVFQ/45cM2', NULL, NULL, NULL, 'agent', 'active', '10', NULL, NULL, '2023-08-05 11:15:39'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$B0gUnaCosv5eT56Ak9b1O.F6QioVLNyJTzf8ehNEEEIABusUU0g/y', NULL, NULL, NULL, 'user', 'active', '0', NULL, NULL, NULL),
(4, 'Jody Fritsch', NULL, 'emmy99@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa66?text=neque', '(831) 957-1366', '189 Spinka Ports\nNorth Haleighchester, NC 32921-6647', 'agent', 'active', '0', 'UWbgOEbpLN', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(5, 'Immanuel Rau', NULL, 'ozella89@example.org', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/009955?text=ipsa', '479.835.8162', '6377 Lila Inlet Apt. 921\nNicolasshire, ID 82805-1684', 'admin', 'inactive', '0', 'YbdCs6YWIa', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(6, 'Abel Durgan', NULL, 'mikel.collins@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0099bb?text=architecto', '715-623-6498', '773 Nettie Via\nHoegerside, AK 43389-1394', 'admin', 'inactive', '0', 'UYULV10WBa', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(7, 'Murl Cartwright', NULL, 'corkery.lacy@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055cc?text=eum', '1-701-357-2571', '6712 Schiller Passage\nGutkowskimouth, MD 71071-9401', 'admin', 'active', '0', 'UvUcDjsBIx', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(8, 'Mrs. Ayla Monahan DVM', NULL, 'rcronin@example.org', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00dd11?text=quia', '+15519459622', '52078 Stanton Springs\nBryanachester, AZ 63637', 'admin', 'active', '0', 'rboaXQ3N1X', '2023-07-31 12:34:47', '2023-07-31 12:34:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
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
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_plans`
--
ALTER TABLE `package_plans`
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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
