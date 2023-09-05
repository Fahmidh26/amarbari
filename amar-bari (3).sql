-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 10:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
  `amenitis_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(2, 'Air Conditioning', NULL, NULL),
(3, 'Refrigerator', NULL, NULL),
(4, 'fan', NULL, NULL),
(5, 'gym', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Real Estate', 'real-estate', NULL, '2023-09-04 04:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `post_title`, `post_slug`, `post_image`, `short_descp`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Vitae ut odit porro', 'vitae-ut-odit-porro', 'upload/post/1776103879204576.jpg', 'Quo doloremque atque', '<p>sadasdsa asdasd asdasd asdads</p>', 'Realestate,Consequatur commodo', '2023-09-04 04:50:53', NULL),
(2, 1, 1, 'Accusamus modi ea ut', 'accusamus-modi-ea-ut', 'upload/post/1776104429074030.jpg', 'Fuga Eum beatae ali', '<p>sdaadsadsdas</p>', 'Realestate,Dolorum velit ut omn', '2023-09-04 04:59:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(2, 3, 5, '2023-08-31 00:16:37', NULL),
(3, 3, 7, '2023-09-03 00:33:52', NULL),
(4, 3, 6, '2023-09-03 00:33:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(2, 2, 'hello', 'Ut nemo eveniet asp', '2023-08-03 10:04:12', '2023-08-03 10:04:12'),
(3, 1, 'Entertainment', 'Incididunt quia dist', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(4, 1, 'Airport', 'In autem eu voluptat', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(5, 1, 'Bank', 'Ratione est anim eve', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(6, 1, 'Mall', 'Deserunt in perferen', '2023-08-03 10:47:14', '2023-08-03 10:47:14'),
(9, 4, 'SuperMarket', 'Ut repellendus Atqu', '2023-08-05 11:12:47', '2023-08-05 11:12:47'),
(10, 5, 'Hospital', '20', '2023-08-06 23:26:26', '2023-08-06 23:26:26'),
(11, 5, 'School', '10', '2023-08-06 23:26:26', '2023-08-06 23:26:26'),
(12, 5, 'Railways', '10', '2023-08-06 23:26:26', '2023-08-06 23:26:26'),
(13, 5, 'Entertainment', '2', '2023-08-06 23:26:26', '2023-08-06 23:26:26'),
(14, 6, 'Railways', '2', '2023-08-09 03:18:46', '2023-08-09 03:18:46'),
(15, 6, 'Beach', '3', '2023-08-09 03:18:46', '2023-08-09 03:18:46'),
(16, 7, 'Airport', 'Ab dolores officia o', '2023-08-22 04:12:23', '2023-08-22 04:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, '2023_08_05_160951_create_package_plans_table', 6),
(12, '2023_08_09_062822_create_wishlists_table', 7),
(13, '2023_08_29_054848_create_compares_table', 8),
(14, '2023_08_29_062920_create_wishlists_table', 9),
(15, '2023_08_31_062556_create_property_messages_table', 10),
(16, '2023_09_02_070322_create_states_table', 11),
(17, '2023_09_02_112931_create_testimonials_table', 12),
(18, '2023_09_03_044209_create_blog_categories_table', 13),
(19, '2023_09_04_103204_create_blog_posts_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(10, 4, 'upload/property/multi-image/1773409997656111.jpg', '2023-08-05 11:12:47', NULL),
(11, 4, 'upload/property/multi-image/1773409997835242.jpg', '2023-08-05 11:12:47', NULL),
(12, 4, 'upload/property/multi-image/1773409998011181.jpg', '2023-08-05 11:12:47', NULL),
(13, 5, 'upload/property/multi-image/1773546750550153.jpg', '2023-08-06 23:26:26', NULL),
(14, 5, 'upload/property/multi-image/1773546751821984.png', '2023-08-06 23:26:26', NULL),
(15, 6, 'upload/property/multi-image/1773742562670023.jpg', '2023-08-09 03:18:46', NULL),
(16, 6, 'upload/property/multi-image/1773742562868405.jpg', '2023-08-09 03:18:46', NULL),
(17, 7, 'upload/property/multi-image/1774923694759763.jpg', '2023-08-22 04:12:22', NULL),
(18, 7, 'upload/property/multi-image/1774923695937366.png', '2023-08-22 04:12:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_credits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_plans`
--

INSERT INTO `package_plans` (`id`, `user_id`, `package_name`, `package_credits`, `package_amount`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 2, 'Business', '3', '20', 'ERS10069819', '2023-08-05 11:15:39', NULL),
(2, 2, 'Business', '3', '20', 'ERS39756507', '2023-08-06 23:31:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `ptype_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lowest_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upazila` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khatiyan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mouja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khatiyan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dag_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `latitude`, `longitude`, `division`, `district`, `upazila`, `khatiyan_type`, `mouja`, `khatiyan_no`, `owner_name`, `dag_number`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Air Conditioning', 'Shafira Jensen', 'shafira-jensen', 'AB001', 'buy', '200', '211', 'upload/property/thambnail/1773224445495641.jpg', 'Minima amet dolorum', '<p>saas wsaasd sadds</p>', '2', '2', '1', 'Animi id reprehend', '3000', 'https://www.youtube.com/embed/_-6Ess_OUN4', 'Commodo laborum Non', '2', '23.810331', '90.412521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 2, '1', '2023-08-03 10:03:30', '2023-08-08 04:30:20'),
(4, '2', 'Refrigerator,fan', 'Sophia Waters', 'sophia-waters', 'AB004', 'rent', '220', '164', 'upload/property/thambnail/1773409997531513.png', 'Voluptatem at volupt', NULL, '5', '2', '1', 'Aut non qui fugiat e', '2000', 'https://www.youtube.com/embed/_-6Ess_OUN4', 'Eiusmod et et offici', '2', 'Sit adipisicing est', 'Maiores id voluptat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 2, '1', '2023-08-05 11:12:47', NULL),
(5, '2', 'Air Conditioning,Refrigerator,fan,gym', 'ifaz er bari', 'ifaz-er-bari', 'AB004', 'rent', '20000', '50000', 'upload/property/thambnail/1773546748014522.jpg', 'saddsc asdsdads', '<p><span style=\"color: rgb(255, 255, 255);\">sadads sadasdasd asdasd</span></p>', '8', '4', '2', '2000', '50000', 'https://www.youtube.com/embed/_-6Ess_OUN4', 'West Wind Point, Shahjadpur, Dhaka 1212', '4', '22.356852', '91.783180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, '1', '2023-08-06 23:26:24', '2023-09-02 03:41:12'),
(6, '4', 'Air Conditioning,Refrigerator,gym', 'JKH', 'jkh', 'AB005', 'rent', '200', '1800', 'upload/property/thambnail/1773742561560924.jpg', 'sdda vasdads', '<p>asdds asdads asdads</p>', '2', '1', '1', '1500', '20000', 'https://www.youtube.com/embed/hXM0w1DPL3I', 'West Wind Point, Shahjadpur, Dhaka 1212', '4', '23.810331', '90.412521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, '1', '2023-08-09 03:18:45', NULL),
(7, '2', 'gym', 'Lysandra Kelley', 'lysandra-kelley', 'AB006', 'rent', '', '277', 'upload/property/thambnail/1774923693639763.PNG', 'Nostrum occaecat iur', NULL, 'Dolore mollit fuga', 'Commodi laboriosam', 'Expedita sunt expedi', 'Distinctio Non ut m', 'Exercitationem magni', 'Id molestiae accusa', 'Sed velit odit sit v', '2', 'Iste nostrum aut eni', 'Aut laboris Nam ipsu', 'Non in suscipit id n', 'Omnis molestiae sit', 'Eu et est amet corr', 'Est esse do officia', 'Aut placeat volupta', 'Voluptatibus aute it', 'Shelley Woods', '875as', '1', '1', 2, '1', '2023-08-22 04:12:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_messages`
--

INSERT INTO `property_messages` (`id`, `user_id`, `agent_id`, `property_id`, `msg_name`, `msg_email`, `msg_phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, '4', 7, 'Fahmid Hasan', 'fahmidh26@gmail.com', '01964870827', 'hello', '2023-08-31 04:06:06', NULL),
(2, 3, '4', 7, 'Fahmid Hasan', 'fahmidh26@gmail.com', '01964870827', 'jhgfdxz', '2023-08-31 04:07:00', NULL),
(3, 3, '4', 7, 'User', 'user@gmail.com', 'asdads', 'asdasdsadads', '2023-08-31 04:07:57', NULL),
(4, 3, NULL, 6, 'Fahmid Hasan', 'fahmidh26@gmail.com', '01964870827', 'asdasd', '2023-08-31 04:16:55', NULL),
(5, 3, '2', 7, 'User', 'user@gmail.com', 'sa', 'asdadsads', '2023-08-31 04:35:41', NULL),
(6, 3, '2', 7, 'Usersaasd', 'user@gmail.com', 'ads', 'sdadsacxzcxzcasd asdasd sadadsads', '2023-08-31 04:44:54', NULL),
(7, 3, NULL, 5, 'User', 'user@gmail.com', 'saddas', 'asdads', '2023-08-31 04:58:09', NULL),
(8, 3, '2', 7, 'User', 'user@gmail.com', 'asd', 'dsaadsadsda', '2023-09-04 22:30:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(2, 'Apartment', 'icon-1', NULL, NULL),
(3, 'Office', 'icon-2', NULL, '2023-08-06 01:19:00'),
(4, 'Plot', 'icon-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'upload/state/1775914925809271.jpg', NULL, '2023-09-02 02:47:33'),
(2, 'Chittagong', 'upload/state/1775914925809271.jpg', NULL, '2023-09-02 02:47:33'),
(4, 'Khulna', 'upload/state/1775914004619386.jpg', NULL, NULL),
(5, 'Barishal', 'upload/state/1775914020941563.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Martin Walters', 'Perspiciatis dolore', 'upload/testimonial/1775926026093910.webp', 'Reprehenderit aut mo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','agent','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$6NOqq47CWut6dEUOigZ1FexSsbd4GJomIFlxYy8BzxJPZj5scdvNe', NULL, NULL, NULL, 'admin', 'active', '0', NULL, NULL, NULL),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$Wh77X6/C.lNnp0/spGpcb.lC0T/HipS9siv8wMk2fO8kVFQ/45cM2', NULL, NULL, NULL, 'agent', 'active', '4', NULL, NULL, '2023-08-06 23:31:11'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$B0gUnaCosv5eT56Ak9b1O.F6QioVLNyJTzf8ehNEEEIABusUU0g/y', NULL, NULL, NULL, 'user', 'active', '0', NULL, NULL, NULL),
(4, 'Jody Fritsch', NULL, 'emmy99@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa66?text=neque', '(831) 957-1366', '189 Spinka Ports\nNorth Haleighchester, NC 32921-6647', 'agent', 'active', '0', 'UWbgOEbpLN', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(5, 'Immanuel Rau', NULL, 'ozella89@example.org', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/009955?text=ipsa', '479.835.8162', '6377 Lila Inlet Apt. 921\nNicolasshire, ID 82805-1684', 'admin', 'inactive', '0', 'YbdCs6YWIa', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(6, 'Abel Durgan', NULL, 'mikel.collins@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0099bb?text=architecto', '715-623-6498', '773 Nettie Via\nHoegerside, AK 43389-1394', 'admin', 'inactive', '0', 'UYULV10WBa', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(7, 'Murl Cartwright', NULL, 'corkery.lacy@example.com', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055cc?text=eum', '1-701-357-2571', '6712 Schiller Passage\nGutkowskimouth, MD 71071-9401', 'admin', 'active', '0', 'UvUcDjsBIx', '2023-07-31 12:34:47', '2023-07-31 12:34:47'),
(8, 'Mrs. Ayla Monahan DVM', NULL, 'rcronin@example.org', '2023-07-31 12:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00dd11?text=quia', '+15519459622', '52078 Stanton Springs\nBryanachester, AZ 63637', 'admin', 'active', '0', 'rboaXQ3N1X', '2023-07-31 12:34:47', '2023-07-31 12:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(3, 3, 7, '2023-08-29 00:53:35', NULL),
(4, 3, 6, '2023-08-29 00:53:36', NULL),
(5, 3, 5, '2023-08-29 00:53:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
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
-- Indexes for table `property_messages`
--
ALTER TABLE `property_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_messages`
--
ALTER TABLE `property_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
