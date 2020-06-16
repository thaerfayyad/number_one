-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 10:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `number_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `mobile`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'number1', 'admin@number1.com', 214868, 123456789, '$2y$10$g7QLmlghGEFSXyy1tMG8MexwQm5KgfsBbCk2HXhV4ZmlD.77F0WgG', 'fHeGeC7BaFByNRRs3kpcsR5wBabzj1DjAn0T0q0Zr5RZ97nGCKXQ8tgauHl8', 'active', NULL, '2020-01-11 21:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JaiygbxQJTW44CB24992621574978922_1650298.jpg', NULL, 'not_active', '2019-10-16 10:41:41', '2019-12-30 03:18:59', NULL),
(2, 'hKueI1JY3gO1Vh379731221580160136_7732616.jpg', NULL, 'active', '2019-10-16 19:19:18', '2020-01-28 06:22:16', NULL),
(3, 'ha4t3UcyfIW8Hk820460211579696876_5362848.jpg', NULL, 'active', '2019-10-16 19:19:53', '2020-01-22 21:41:16', NULL),
(4, 'FZ2HG0EzIkVuHxE11744291579884146_6343833.jpg', NULL, 'active', '2019-10-31 19:45:26', '2020-01-25 01:42:26', NULL),
(5, 'ORLC6Jxh6HtfDL889408561575895917_8095828.jpg', NULL, 'active', '2019-12-09 21:51:57', '2019-12-09 21:53:48', '2019-12-09 21:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `ad_translations`
--

CREATE TABLE `ad_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_translations`
--

INSERT INTO `ad_translations` (`id`, `ad_id`, `locale`, `title`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', NULL, 'google ads', '2019-10-16 10:41:41', '2019-12-16 07:19:33', NULL),
(2, 1, 'ar', NULL, 'تسوق بلا حدود', '2019-10-16 10:41:41', '2019-12-16 07:19:33', NULL),
(3, 2, 'en', 'Why sala', 'Sala Express enables you to purchase easily safely and saves you shopping expenses', '2019-10-16 19:19:18', '2020-01-28 06:20:53', NULL),
(4, 2, 'ar', 'لماذا سلة اكسبرس', 'تطبيق سلة اكسبرس يتيح لك الشراء بكل سهولة وأمان ويوفر لك مصاريف التسوق', '2019-10-16 19:19:19', '2020-01-28 06:20:53', NULL),
(5, 3, 'en', 'Fast Delivery', 'Receive orders in fast time', '2019-10-16 19:19:53', '2019-12-31 23:38:12', NULL),
(6, 3, 'ar', 'سرعة التوصيل', 'استلم طلبك باسرع وقت واقل التكاليف', '2019-10-16 19:19:53', '2019-12-30 03:19:40', NULL),
(7, 4, 'en', 'Ensure Quality', 'Receive orders with high quality', '2019-10-31 19:45:26', '2019-12-31 23:42:30', NULL),
(8, 4, 'ar', 'ضمان الجودة', 'استلم منتجك وفق اخر معايير الجودة والامان', '2019-10-31 19:45:26', '2019-12-31 23:42:30', NULL),
(9, 5, 'en', 'Kram', 'aaaa', '2019-12-09 21:51:57', '2019-12-09 21:51:57', NULL),
(10, 5, 'ar', 'كرم', 'aaaaaaaaaaaaaaa', '2019-12-09 21:51:57', '2019-12-09 21:51:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calibers`
--

CREATE TABLE `calibers` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `status` enum('active','not_active') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calibers`
--

INSERT INTO `calibers` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '20 W', 'active', '2020-05-28 11:33:30', NULL, NULL),
(2, '50 W', 'active', '2020-05-28 11:33:30', '2020-05-28 11:39:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '0=in 1=out',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'terHKIcfDMn1i0735199431581251995_9960212.png', 'not_active', '2020-02-09 21:39:55', '2020-06-16 16:07:59', NULL),
(2, 0, 'DMyYq7IT0znR4Sv40297381581252450_9676252.png', 'active', '2020-02-09 21:47:30', '2020-02-09 21:47:30', NULL),
(3, 0, '4pHCOz7dYKorH7s63186171581252484_7997592.png', 'active', '2020-02-09 21:48:04', '2020-02-09 21:48:04', NULL),
(4, 1, 'EACbl3J7HPXhY9q11493581581258347_1124560.png', 'active', '2020-02-09 23:25:47', '2020-02-09 23:25:47', NULL),
(5, 1, 'QZ0ZtRU2h7SEH8U61070741581258410_2209683.png', 'active', '2020-02-09 23:26:50', '2020-02-09 23:26:50', NULL),
(6, 1, 'RzoscaZOmBQ04Iw62070431581258469_6614908.png', 'active', '2020-02-09 23:27:49', '2020-02-09 23:27:49', NULL),
(7, 1, 'yYaiokyUSSTERT734811441581258506_8500695.png', 'active', '2020-02-09 23:28:26', '2020-02-09 23:28:26', NULL),
(8, 1, 'YgzhYlGlGvKsRXG34166791581258541_9909337.png', 'active', '2020-02-09 23:29:01', '2020-02-09 23:29:01', NULL),
(9, 1, 'ZAuPkXV5FCIgU5137931371581258573_3842747.png', 'active', '2020-02-09 23:29:33', '2020-02-09 23:29:33', NULL),
(10, 1, 'p7NnoVFZYIvyXPX57544581581258675_3182823.png', 'active', '2020-02-09 23:31:15', '2020-02-09 23:31:15', NULL),
(11, 1, 'm9to3cBZhRIw0Ux69569851581258791_6704439.png', 'active', '2020-02-09 23:33:11', '2020-02-09 23:33:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Car Wash', NULL, '2020-02-09 21:39:55', '2020-02-09 21:39:55'),
(2, 1, 'ar', 'غسيل سيارات', NULL, '2020-02-09 21:39:55', '2020-02-09 21:39:55'),
(3, 2, 'en', 'Oil Change', NULL, '2020-02-09 21:47:30', '2020-02-09 21:47:30'),
(4, 2, 'ar', 'تغير زيت', NULL, '2020-02-09 21:47:30', '2020-02-09 21:47:30'),
(5, 3, 'en', 'Others Incoms', NULL, '2020-02-09 21:48:04', '2020-02-09 23:33:54'),
(6, 3, 'ar', 'مقبوضات اخرى', NULL, '2020-02-09 21:48:04', '2020-02-09 23:33:36'),
(7, 4, 'en', 'Location Rental', NULL, '2020-02-09 23:25:47', '2020-02-09 23:25:47'),
(8, 4, 'ar', 'اجرة المكان', NULL, '2020-02-09 23:25:47', '2020-02-09 23:25:47'),
(9, 5, 'en', 'Electricity Fee', NULL, '2020-02-09 23:26:50', '2020-02-09 23:26:50'),
(10, 5, 'ar', 'فواتير الكهرباء', NULL, '2020-02-09 23:26:50', '2020-02-09 23:26:50'),
(11, 6, 'en', 'Water Tank', NULL, '2020-02-09 23:27:49', '2020-02-09 23:27:49'),
(12, 6, 'ar', 'المياه', NULL, '2020-02-09 23:27:49', '2020-02-09 23:27:49'),
(13, 7, 'en', 'Oil Buy', NULL, '2020-02-09 23:28:26', '2020-02-09 23:28:26'),
(14, 7, 'ar', 'شراء زيت', NULL, '2020-02-09 23:28:26', '2020-02-09 23:28:26'),
(15, 8, 'en', 'Maintenance', NULL, '2020-02-09 23:29:01', '2020-02-09 23:29:01'),
(16, 8, 'ar', 'صيانة', NULL, '2020-02-09 23:29:01', '2020-02-09 23:29:01'),
(17, 9, 'en', 'Salaries', NULL, '2020-02-09 23:29:33', '2020-02-09 23:29:33'),
(18, 9, 'ar', 'الرواتب', NULL, '2020-02-09 23:29:33', '2020-02-09 23:29:33'),
(19, 10, 'en', 'Old Loan', NULL, '2020-02-09 23:31:15', '2020-02-09 23:31:15'),
(20, 10, 'ar', 'قروض سابقة', NULL, '2020-02-09 23:31:15', '2020-02-09 23:31:15'),
(21, 11, 'en', 'Others Paymenta', NULL, '2020-02-09 23:33:11', '2020-02-09 23:33:11'),
(22, 11, 'ar', 'مصاريف اخرى', NULL, '2020-02-09 23:33:11', '2020-02-09 23:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `deliveryCost` double DEFAULT 0,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `deliveryCost`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 30, 'not_active', '2020-01-11 12:25:42', '2020-01-11 21:25:42', NULL),
(2, 4, 'active', '2020-01-30 12:26:28', '2020-01-30 21:26:28', NULL),
(3, 0, 'active', '2019-11-01 20:33:37', '2019-11-02 06:33:37', '2019-11-02 06:33:37'),
(4, 0, 'active', '2019-11-01 20:33:37', '2019-11-02 06:33:37', '2019-11-02 06:33:37'),
(5, 0, 'active', '2019-11-01 20:33:37', '2019-11-02 06:33:37', '2019-11-02 06:33:37'),
(6, 4, 'not_active', '2020-01-11 12:25:42', '2020-01-11 21:25:42', NULL),
(7, 0, 'active', '2019-11-01 20:33:23', '2019-11-02 06:33:23', '2019-11-02 06:33:23'),
(8, 4, 'not_active', '2020-01-11 12:25:42', '2020-01-11 21:25:42', NULL),
(9, 4, 'not_active', '2020-01-11 12:25:42', '2020-01-11 21:25:42', NULL),
(10, 4, 'not_active', '2020-01-11 12:25:42', '2020-01-11 21:25:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `locale`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Rafah', NULL, '2019-10-30 20:45:15', '2019-10-30 20:45:15'),
(2, 1, 'ar', 'رفح', NULL, '2019-10-30 20:45:15', '2019-10-30 20:45:15'),
(3, 2, 'en', 'Gaza', NULL, '2019-10-30 20:45:27', '2019-10-30 20:45:27'),
(4, 2, 'ar', 'غزة', NULL, '2019-10-30 20:45:27', '2019-10-30 20:45:27'),
(5, 3, 'en', 'Yafa', NULL, '2019-10-30 20:45:39', '2019-10-30 20:45:39'),
(6, 3, 'ar', 'يافا', NULL, '2019-10-30 20:45:39', '2019-10-30 20:45:39'),
(7, 4, 'en', 'Jerusalem', NULL, '2019-10-30 20:46:05', '2019-10-30 20:46:05'),
(8, 4, 'ar', 'القدس', NULL, '2019-10-30 20:46:05', '2019-10-30 20:46:05'),
(9, 5, 'en', 'Hebron', NULL, '2019-10-30 20:46:42', '2019-10-31 19:41:33'),
(10, 5, 'ar', 'الخليل', NULL, '2019-10-30 20:46:42', '2019-10-30 20:46:42'),
(11, 6, 'en', 'Remal', NULL, '2019-10-30 20:47:18', '2020-01-11 21:22:03'),
(12, 6, 'ar', 'الرمال', NULL, '2019-10-30 20:47:18', '2020-01-11 21:21:49'),
(13, 7, 'en', 'Areha', NULL, '2019-10-31 19:37:31', '2019-10-31 19:37:31'),
(14, 7, 'ar', 'اريحا', NULL, '2019-10-31 19:37:31', '2019-10-31 19:37:31'),
(15, 8, 'en', 'Zayton', NULL, '2020-01-11 21:24:36', '2020-01-11 21:24:36'),
(16, 8, 'ar', 'الزيتون', NULL, '2020-01-11 21:24:36', '2020-01-11 21:24:36'),
(17, 9, 'en', 'Sabra', NULL, '2020-01-11 21:25:00', '2020-01-11 21:25:00'),
(18, 9, 'ar', 'الصبره', NULL, '2020-01-11 21:25:00', '2020-01-11 21:25:00'),
(19, 10, 'en', 'gala', NULL, '2020-01-11 21:25:16', '2020-01-11 21:25:16'),
(20, 10, 'ar', 'الجلاء', NULL, '2020-01-11 21:25:16', '2020-01-11 21:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mobil 1', 'active', '2020-05-28 11:31:05', '2020-05-28 11:24:45', NULL),
(2, 'Valvoline', 'active', '2020-05-28 11:31:08', '2020-05-28 11:24:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL COMMENT '	''0''= suggestion , ''1''=problem , ''2''=other	',
  `read` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `type`, `read`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'emad', 'emadtraner@gmail.com', '886437854', 1, 1, 'test', '2019-12-02 15:15:10', '2020-01-28 02:45:45', NULL),
(2, 'Kulash Sami', 'samix783@gmail.com', '0592601806', 2, 1, 'ممكن نعرف لو التطبيق شغال ووين شغال غزة ولا اي مناطق', '2020-01-28 02:37:06', '2020-01-28 02:48:13', NULL),
(3, 'Noor Chanti', 'noor2003-e3@hotmail.com', '0595566049', 2, 1, 'زبون جديد', '2020-01-28 05:00:31', '2020-01-28 05:01:38', NULL),
(4, 'Noor Chanti', 'noor2003-e3@hotmail.com', '0595566049', 2, 1, 'زبون جديد', '2020-01-28 05:00:31', '2020-01-28 05:02:08', NULL),
(5, 'Noor Chanti', 'noor2003-e3@hotmail.com', '0595566049', 2, 1, 'زبون جديد', '2020-01-28 05:00:31', '2020-01-28 05:07:50', NULL),
(6, 'Noor Chanti', 'noor2003-e3@hotmail.com', '0595566049', 2, 1, 'زبون جديد', '2020-01-28 05:03:54', '2020-01-28 05:43:37', NULL),
(7, 'منير الكحلوت', 'moner_20069@Hotmail.com', '0599445653', 2, 1, 'صباح الخير \nاستفسار بخصوص خدمتكم \nهل تشمل منطقة مخيم جباليا  \nوكم تكلفة التوصيل وهل يوجد حد أدنى للطلبات ؟ \nوفي في حال الطلب كم مدة تسليم الطلبات', '2020-01-28 17:39:19', '2020-01-28 17:41:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '2019-07-22 16:13:14', '2019-07-23 02:13:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_translations`
--

CREATE TABLE `landing_page_translations` (
  `id` int(11) NOT NULL,
  `landing_page_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `aboutUs` text CHARACTER SET utf8 NOT NULL,
  `downlod` text CHARACTER SET utf8 NOT NULL,
  `descriptionFirstStage` text CHARACTER SET utf8 NOT NULL,
  `descriptionSacandtStage` text CHARACTER SET utf8 NOT NULL,
  `descriptionThirdStage` text CHARACTER SET utf8 NOT NULL,
  `features` text CHARACTER SET utf8 NOT NULL,
  `titl1` text CHARACTER SET utf8 NOT NULL,
  `title2` text CHARACTER SET utf8 NOT NULL,
  `title3` text CHARACTER SET utf8 NOT NULL,
  `title4` text CHARACTER SET utf8 NOT NULL,
  `descriptionFeature1` text CHARACTER SET utf8 NOT NULL,
  `descriptionFeature2` text CHARACTER SET utf8 NOT NULL,
  `descriptionFeature3` text CHARACTER SET utf8 NOT NULL,
  `descriptionFeature4` text CHARACTER SET utf8 NOT NULL,
  `howOrder` text CHARACTER SET utf8 NOT NULL,
  `descriptionOrder1` text CHARACTER SET utf8 NOT NULL,
  `descriptionOrder2` text CHARACTER SET utf8 NOT NULL,
  `descriptionOrder3` text CHARACTER SET utf8 NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landing_page_translations`
--

INSERT INTO `landing_page_translations` (`id`, `landing_page_id`, `title`, `description`, `aboutUs`, `downlod`, `descriptionFirstStage`, `descriptionSacandtStage`, `descriptionThirdStage`, `features`, `titl1`, `title2`, `title3`, `title4`, `descriptionFeature1`, `descriptionFeature2`, `descriptionFeature3`, `descriptionFeature4`, `howOrder`, `descriptionOrder1`, `descriptionOrder2`, `descriptionOrder3`, `locale`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'kram', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'KRAM will make your life easier\r\nand more comfortable.', 'Make your business\r\neasy with KRAM', 'First stage text', 'Second stage text', 'Thired stage text', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'Creative Design', 'Unlimited Features', 'User Friendly', 'Friendly Code', 'Most such devices are sold with apps bundled as installed.', 'Most such devices are sold with apps bundled as installed.', 'Most such devices are sold with apps bundled as installed.', 'Most such devices are sold with apps bundled as installed.', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'Lorem ipsum dolor sit amet adipisicing of more of sedis do eiusmod tempor incididunt. Appipsum incididunt.', 'en', '2019-08-30 21:50:07', '2019-08-31 07:50:07', NULL),
(2, 1, 'كرم', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، .', 'كرم لحياة أسهل', 'كرم لحياة أسهل', 'نص الخطوة الاولي', 'نص الخطوة الثانية', 'نص الخطوة الثالثة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'تصميم ابداعي', 'مزايا عديدة', 'سهولة الاستخدام', 'برمجة مميزة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'ar', '2019-08-30 21:50:07', '2019-08-31 07:50:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 'uploads/language/m.png', NULL, NULL, NULL),
(2, 'ar', 'uploads/language/s.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languge_translations`
--

CREATE TABLE `languge_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languge_translations`
--

INSERT INTO `languge_translations` (`id`, `language_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'English', NULL, NULL),
(2, 1, 'ar', 'انجليزي', NULL, NULL),
(3, 2, 'en', 'Arabic', NULL, NULL),
(4, 2, 'ar', 'عربي', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'اذكرو الله', 'لا اله الا الله', '2019-11-27 23:21:59', '2019-11-27 23:27:35', '2019-11-27 23:27:35'),
(2, 'ا', 'لا اله الا الله', '2019-11-27 23:22:58', '2019-11-27 23:27:31', '2019-11-27 23:27:31'),
(3, 'ا', 'لا اله الا الله', '2019-11-27 23:22:59', '2019-11-27 23:27:27', '2019-11-27 23:27:27'),
(4, 'test', 'test message', '2019-11-28 21:22:12', '2019-12-03 17:24:05', '2019-12-03 17:24:05'),
(5, 'test', 'test', '2019-11-28 21:35:50', '2019-12-03 17:23:58', '2019-12-03 17:23:58'),
(6, 'test2', 'test ios', '2019-11-28 21:43:36', '2019-12-03 17:23:56', '2019-12-03 17:23:56'),
(7, 'test', 'new test', '2019-11-28 21:51:31', '2019-12-03 17:23:53', '2019-12-03 17:23:53'),
(8, 'test', 'new test2', '2019-11-28 21:52:00', '2019-12-03 17:23:50', '2019-12-03 17:23:50'),
(9, 'test', 'new test', '2019-11-28 21:52:42', '2019-12-03 17:23:47', '2019-12-03 17:23:47'),
(10, 'اذكرو الله', '.', '2019-11-29 06:36:04', '2019-12-03 17:23:44', '2019-12-03 17:23:44'),
(11, 'تطبيق سله اكسبرس', 'قريبا بالاسواق علي جميع انواع الهواتف \"ايفون.اندرويد\"', '2019-11-30 20:22:54', '2019-12-03 17:23:39', '2019-12-03 17:23:39'),
(12, '????☘️☘️☘️???', 'عروض', '2019-12-01 04:49:24', '2019-12-03 17:23:36', '2019-12-03 17:23:36'),
(13, 'اشعار جديد', 'فحص الاشعارات - تطبيق سلة اكسبرس', '2019-12-03 22:35:29', '2020-01-21 03:06:24', '2020-01-21 03:06:24'),
(14, 'app', 'asd', '2019-12-04 16:19:59', '2019-12-04 16:20:18', '2019-12-04 16:20:18'),
(15, 'عروض', 'السلام عليكم', '2019-12-05 20:39:42', '2020-01-21 03:06:28', '2020-01-21 03:06:28'),
(16, 'اف', 'قفاقف', '2019-12-05 21:21:51', '2019-12-05 21:27:00', '2019-12-05 21:27:00'),
(17, 'غزة', 'كمةكمةوك', '2019-12-05 22:41:31', '2020-01-21 03:06:30', '2020-01-21 03:06:30'),
(18, 'غزة', 'قصة جحا والحمار أراد جحا أن يشتري حماراً فذهب إلى السوق، توقف عند حمار أعجبه، وقال لصاحبه بعد جدال على الثمن: هذا كل ما معي الآن، فإمّا أن تبيعني الحمار أو أنصرف لحالي، أخيراً وافق الرجل ومشى جحا يجرّ الحمار خلفه، فرآه اثنان من الصوص، فأتفقا على سرقة الحمار، تسلّل أحدهما بخفة وفكّ الحبل من رقبة الحمار دون أن يشعر جحا بشيء، وربط رقبته هو بالحبل كل ذلك وجحا لا يشعر بما يجري، مشى اللص خلف جحا بينما اللص الآخر بالحمار، وكان المارّة من الناس يرون ذلك ويتعجبون لهذا المنظر ويضحكون،', '2019-12-05 23:04:07', '2019-12-09 03:14:04', '2019-12-09 03:14:04'),
(19, 'تهنئة', 'قصة جحا والحمار أراد جحا أن يشتري حماراً فذهب إلى السوق، توقف عند حمار أعجبه، وقال لصاحبه بعد جدال على الثمن: هذا كل ما معي الآن، فإمّا أن تبيعني الحمار أو أنصرف لحالي، أخيراً وافق الرجل ومشى جحا يجرّ الحمار خلفه، فرآه اثنان من الصوص، فأتفقا على سرقة الحمار، تسلّل أحدهما بخفة وفكّ الحبل من رقبة الحمار دون أن يشعر جحا بشيء، وربط رقبته هو بالحبل كل ذلك وجحا لا يشعر بما يجري، مشى اللص خلف جحا بينما اللص الآخر بالحمار، وكان المارّة من الناس يرون ذلك ويتعجبون لهذا المنظر ويضحكون،', '2019-12-05 23:37:13', '2019-12-09 03:14:00', '2019-12-09 03:14:00'),
(20, 'test', 'قصة جحا والحمار أراد جحا أن يشتري حماراً فذهب إلى السوق، توقف عند حمار أعجبه، وقال لصاحبه بعد جدال على الثمن: هذا كل ما معي الآن، فإمّا أن تبيعني الحمار أو أنصرف لحالي، أخيراً وافق الرجل ومشى جحا يجرّ الحمار خلفه، فرآه اثنان من الصوص، فأتفقا على سرقة الحمار، تسلّل أحدهما بخفة وفكّ الحبل من رقبة الحمار دون أن يشعر جحا بشيء، وربط رقبته هو بالحبل كل ذلك وجحا لا يشعر بما يجري، مشى اللص خلف جحا بينما اللص الآخر بالحمار، وكان المارّة من الناس يرون ذلك ويتعجبون لهذا المنظر ويضحكون،', '2019-12-05 23:38:36', '2019-12-09 03:13:57', '2019-12-09 03:13:57'),
(21, 'فحص نهائي', 'قصة جحا والحمار أراد جحا أن يشتري حماراً فذهب إلى السوق، توقف عند حمار أعجبه، وقال لصاحبه بعد جدال على الثمن: هذا كل ما معي الآن، فإمّا أن تبيعني الحمار أو أنصرف لحالي، أخيراً وافق الرجل ومشى جحا يجرّ الحمار خلفه، فرآه اثنان من الصوص، فأتفقا على سرقة الحمار، تسلّل أحدهما بخفة وفكّ الحبل من رقبة الحمار دون أن يشعر جحا بشيء، وربط رقبته هو بالحبل كل ذلك وجحا لا يشعر بما يجري، مشى اللص خلف جحا بينما اللص الآخر بالحمار، وكان المارّة من الناس يرون ذلك ويتعجبون لهذا المنظر ويضحكون،', '2019-12-05 23:39:44', '2019-12-09 03:13:53', '2019-12-09 03:13:53'),
(22, 'اذكرو الله', 'لا اله الا الله', '2019-12-05 23:53:38', '2020-01-21 03:06:34', '2020-01-21 03:06:34'),
(23, 'اذكرو الله', 'لا اله الا الله', '2019-12-06 05:51:51', '2019-12-09 03:13:48', '2019-12-09 03:13:48'),
(24, 'Test', 'سلة اكسبرس', '2019-12-09 06:05:37', '2020-01-21 03:06:20', '2020-01-21 03:06:20'),
(25, 'سلة اكسبرس', 'كل عام وانتم بخير', '2019-12-31 03:48:55', '2020-01-21 03:06:16', '2020-01-21 03:06:16'),
(26, 'قريبا...', 'انتظرونا  لاول مرة في قطاع غزة', '2020-01-20 19:51:44', '2020-01-21 03:06:12', '2020-01-21 03:06:12'),
(27, 'التوصيل مجاني?‍♂️?‍♀️', 'يلا شو بتستنا اطلب الذ الفواكه ?والخضروات??من سلة اكسبرس', '2020-01-26 00:36:03', '2020-01-26 00:36:03', NULL),
(28, 'التوصيل مجاني?‍♂️?‍♀️', 'شو مستني اطلب من سلة اكسبرس???والتوصيل علينا', '2020-01-26 17:52:20', '2020-01-26 17:52:20', NULL),
(29, 'التوصيل مجاني?‍♂️?‍♀️', 'شو مستني??? التوصيل مجانا مع سلة اكسبرس', '2020-01-26 18:37:20', '2020-01-26 18:37:20', NULL),
(30, 'بضغطة زر...??', 'اطلب الذ الفواكه ?والخضراوات ?الطازجة يوميا.', '2020-01-27 16:53:09', '2020-01-27 16:53:09', NULL),
(31, 'التوصيل مجاني?‍♂️?‍♀️', 'التوصيل المجاني مستمر ?اطلب وفش غلك?', '2020-01-27 16:59:29', '2020-01-27 16:59:29', NULL),
(32, 'قوي قلبك❤', 'اطلب الذ الفواكه والخضروات??? بجودة عالية واسعار مناسبة', '2020-01-28 01:18:44', '2020-01-28 01:18:44', NULL),
(33, 'فيتامين c الطببعي??', 'متوفر لمون بعلي??  مندلينا ?? قطف الصباح', '2020-01-28 16:21:06', '2020-01-28 16:21:06', NULL),
(34, 'اخر العروض??', 'خصومات حبطرش ?على الفواكه والخضروات تابع اخر العروض عبر التطبيق.', '2020-01-28 16:25:05', '2020-01-28 16:25:05', NULL),
(35, 'التوصيل 2شيكل?', 'اطلب الذ الفواكه والخضار??? كما وانك في السوق.', '2020-01-28 18:03:58', '2020-01-28 18:03:58', NULL),
(36, '?صباح الخيرات?', 'اطلب ?من سلة اكسبرس والتوصيل ب 2شيكل فقط!', '2020-01-29 16:29:40', '2020-01-29 16:29:40', NULL),
(37, 'عروض التوفير??', 'استمتع بعروض التوفير ??من خلال تطبيق سلة اكسبرس⚘', '2020-01-30 00:09:49', '2020-01-30 00:09:49', NULL),
(38, 'بضغطة زر...??', 'اطلب واستمتع بطلباتك ??لباب بيتك', '2020-01-30 19:07:54', '2020-01-30 19:07:54', NULL),
(39, 'منقية بالحبة??', 'تمتع بالطعم الطازج ??لأجود الفواكه والخضار', '2020-01-30 19:50:21', '2020-01-30 19:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `messag_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 = orderNotify',
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `user_id`, `order_id`, `message`, `messag_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 07:25:42', '2019-11-27 07:25:42', NULL),
(2, 1, 1, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 07:26:17', '2019-11-27 07:26:17', NULL),
(3, 1, 1, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 07:26:50', '2019-11-27 07:26:50', NULL),
(4, 1, 2, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 18:23:16', '2019-11-27 18:23:16', NULL),
(5, 1, 2, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 18:23:45', '2019-11-27 18:23:45', NULL),
(6, 1, 2, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 18:35:51', '2019-11-27 18:35:51', NULL),
(7, 1, 2, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 22:50:26', '2019-11-27 22:50:26', NULL),
(8, 1, 2, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 22:50:57', '2019-11-27 22:50:57', NULL),
(9, 1, 2, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 22:51:13', '2019-11-27 22:51:13', NULL),
(10, 2, 4, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 22:58:21', '2019-11-27 22:58:21', NULL),
(11, 2, 4, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 22:59:15', '2019-11-27 22:59:15', NULL),
(12, 2, 4, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 22:59:45', '2019-11-27 22:59:45', NULL),
(13, 4, 3, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 23:01:34', '2019-11-27 23:01:34', NULL),
(14, 4, 3, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 23:03:06', '2019-11-27 23:03:06', NULL),
(15, 4, 3, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 23:10:15', '2019-11-27 23:10:15', NULL),
(16, 2, 5, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 23:11:50', '2019-11-27 23:11:50', NULL),
(17, 2, 5, 'طلبك في طريقه إليك', 0, 'active', '2019-11-27 23:14:55', '2019-11-27 23:14:55', NULL),
(18, 2, 5, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-27 23:15:13', '2019-11-27 23:15:13', NULL),
(19, 1, 8, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-27 23:32:29', '2019-11-27 23:32:29', NULL),
(20, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 17:42:07', '2019-11-28 17:42:07', NULL),
(21, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 17:42:19', '2019-11-28 17:42:19', NULL),
(22, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 17:42:34', '2019-11-28 17:42:34', NULL),
(23, 1, 8, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 17:42:57', '2019-11-28 17:42:57', NULL),
(24, 2, 7, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:43:05', '2019-11-28 17:43:05', NULL),
(25, 2, 7, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:43:18', '2019-11-28 17:43:18', NULL),
(26, 2, 6, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:43:25', '2019-11-28 17:43:25', NULL),
(27, 2, 6, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:43:41', '2019-11-28 17:43:41', NULL),
(28, 2, 5, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 17:43:45', '2019-11-28 17:43:45', NULL),
(29, 2, 7, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:43:49', '2019-11-28 17:43:49', NULL),
(30, 1, 8, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 17:45:35', '2019-11-28 17:45:35', NULL),
(31, 3, 9, 'Your Order in Preparing Now ', 0, 'active', '2019-11-28 18:22:24', '2019-11-28 18:22:24', NULL),
(32, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 18:49:31', '2019-11-28 18:49:31', NULL),
(33, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 18:49:36', '2019-11-28 18:49:36', NULL),
(34, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 18:49:46', '2019-11-28 18:49:46', NULL),
(35, 1, 8, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 18:49:55', '2019-11-28 18:49:55', NULL),
(36, 1, 10, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 21:01:43', '2019-11-28 21:01:43', NULL),
(37, 1, 10, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 21:01:57', '2019-11-28 21:01:57', NULL),
(38, 1, 10, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 21:02:06', '2019-11-28 21:02:06', NULL),
(39, 1, 8, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 21:03:29', '2019-11-28 21:03:29', NULL),
(40, 2, 7, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 21:03:33', '2019-11-28 21:03:33', NULL),
(41, 2, 7, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 21:03:35', '2019-11-28 21:03:35', NULL),
(42, 2, 6, 'طلبك في طريقه إليك', 0, 'active', '2019-11-28 21:03:40', '2019-11-28 21:03:40', NULL),
(43, 2, 6, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 21:04:32', '2019-11-28 21:04:32', NULL),
(44, 2, 7, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-28 21:04:40', '2019-11-28 21:04:40', NULL),
(45, 3, 9, 'Your Order is on Delivery', 0, 'active', '2019-11-28 21:09:53', '2019-11-28 21:09:53', NULL),
(46, 3, 11, 'Your Order in Preparing Now ', 0, 'active', '2019-11-28 21:12:56', '2019-11-28 21:12:56', NULL),
(47, 3, 11, 'Your Order is on Delivery', 0, 'active', '2019-11-28 21:15:34', '2019-11-28 21:15:34', NULL),
(48, 2, 12, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 23:45:59', '2019-11-28 23:45:59', NULL),
(49, 1, 13, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-28 23:46:57', '2019-11-28 23:46:57', NULL),
(50, 1, 13, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:26:15', '2019-11-29 00:26:15', NULL),
(51, 2, 12, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:26:29', '2019-11-29 00:26:29', NULL),
(52, 1, 13, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:27:32', '2019-11-29 00:27:32', NULL),
(53, 2, 12, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:27:39', '2019-11-29 00:27:39', NULL),
(54, 2, 14, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-29 00:30:00', '2019-11-29 00:30:00', NULL),
(55, 2, 14, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:30:22', '2019-11-29 00:30:22', NULL),
(56, 2, 14, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:31:26', '2019-11-29 00:31:26', NULL),
(57, 2, 16, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-29 00:31:49', '2019-11-29 00:31:49', NULL),
(58, 2, 15, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-29 00:32:04', '2019-11-29 00:32:04', NULL),
(59, 2, 15, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:32:28', '2019-11-29 00:32:28', NULL),
(60, 2, 16, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:32:30', '2019-11-29 00:32:30', NULL),
(61, 2, 16, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:32:39', '2019-11-29 00:32:39', NULL),
(62, 2, 15, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:32:44', '2019-11-29 00:32:44', NULL),
(63, 3, 11, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:32:53', '2019-11-29 00:32:53', NULL),
(64, 3, 9, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:32:54', '2019-11-29 00:32:54', NULL),
(65, 4, 3, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-29 00:54:24', '2019-11-29 00:54:24', NULL),
(66, 4, 3, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 00:54:36', '2019-11-29 00:54:36', NULL),
(67, 4, 3, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 00:54:38', '2019-11-29 00:54:38', NULL),
(68, 4, 3, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-29 06:29:01', '2019-11-29 06:29:01', NULL),
(69, 4, 3, 'طلبك في طريقه إليك', 0, 'active', '2019-11-29 06:29:04', '2019-11-29 06:29:04', NULL),
(70, 4, 3, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-29 06:29:06', '2019-11-29 06:29:06', NULL),
(71, 6, 17, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-30 00:20:05', '2019-11-30 00:20:05', NULL),
(72, 6, 17, 'طلبك في طريقه إليك', 0, 'active', '2019-11-30 00:20:07', '2019-11-30 00:20:07', NULL),
(73, 6, 17, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-30 00:20:17', '2019-11-30 00:20:17', NULL),
(74, 2, 18, 'جاري الآن تحضير طلبك', 0, 'active', '2019-11-30 19:20:24', '2019-11-30 19:20:24', NULL),
(75, 2, 18, 'طلبك في طريقه إليك', 0, 'active', '2019-11-30 19:21:01', '2019-11-30 19:21:01', NULL),
(76, 2, 18, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-11-30 19:22:06', '2019-11-30 19:22:06', NULL),
(77, 1, 19, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-04 21:05:14', '2019-12-04 21:05:14', NULL),
(78, 1, 19, 'طلبك في طريقه إليك', 0, 'active', '2019-12-04 21:08:54', '2019-12-04 21:08:54', NULL),
(79, 1, 19, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-12-04 21:09:28', '2019-12-04 21:09:28', NULL),
(80, 9, 0, 'ربحت معنا كوبون خصم .. AfSS', 0, 'active', '2019-12-05 00:04:09', '2019-12-05 00:04:09', NULL),
(81, 10, 21, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-05 23:06:31', '2019-12-05 23:06:31', NULL),
(82, 3, 22, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-07 02:53:53', '2019-12-07 02:53:53', NULL),
(83, 1, 23, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-09 04:24:02', '2019-12-09 04:24:02', NULL),
(84, 1, 24, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-09 18:32:51', '2019-12-09 18:32:51', NULL),
(85, 1, 24, 'طلبك في طريقه إليك', 0, 'active', '2019-12-09 18:32:57', '2019-12-09 18:32:57', NULL),
(86, 1, 24, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-12-09 18:33:00', '2019-12-09 18:33:00', NULL),
(87, 8, 25, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-10 23:25:21', '2019-12-10 23:25:21', NULL),
(88, 3, 22, 'Your Order is on Delivery', 0, 'active', '2019-12-13 02:06:45', '2019-12-13 02:06:45', NULL),
(89, 3, 22, 'Thank You, Your Order is Complete', 0, 'active', '2019-12-13 02:07:27', '2019-12-13 02:07:27', NULL),
(90, 1, 30, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-16 03:54:26', '2019-12-16 03:54:26', NULL),
(91, 1, 30, 'طلبك في طريقه إليك', 0, 'active', '2019-12-16 03:54:42', '2019-12-16 03:54:42', NULL),
(92, 1, 30, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-12-16 03:54:51', '2019-12-16 03:54:51', NULL),
(93, 1, 30, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-12-16 03:55:05', '2019-12-16 03:55:05', NULL),
(94, 1, 36, 'جاري الآن تحضير طلبك', 0, 'active', '2019-12-31 03:47:14', '2019-12-31 03:47:14', NULL),
(95, 1, 36, 'طلبك في طريقه إليك', 0, 'active', '2019-12-31 03:47:21', '2019-12-31 03:47:21', NULL),
(96, 1, 36, 'شكرا لك تم تسليم الطلب', 0, 'active', '2019-12-31 03:47:26', '2019-12-31 03:47:26', NULL),
(97, 21, 41, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 04:48:00', '2020-01-08 04:48:00', NULL),
(98, 21, 41, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 04:48:55', '2020-01-08 04:48:55', NULL),
(99, 21, 41, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 04:49:31', '2020-01-08 04:49:31', NULL),
(100, 21, 42, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:39:00', '2020-01-08 22:39:00', NULL),
(101, 21, 42, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:39:32', '2020-01-08 22:39:32', NULL),
(102, 1, 40, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:39:50', '2020-01-08 22:39:50', NULL),
(103, 1, 40, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:40:10', '2020-01-08 22:40:10', NULL),
(104, 1, 40, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:19', '2020-01-08 22:40:19', NULL),
(105, 21, 42, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:27', '2020-01-08 22:40:27', NULL),
(106, 1, 39, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:40:31', '2020-01-08 22:40:31', NULL),
(107, 8, 38, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:40:32', '2020-01-08 22:40:32', NULL),
(108, 1, 37, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:40:33', '2020-01-08 22:40:33', NULL),
(109, 1, 37, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:40:35', '2020-01-08 22:40:35', NULL),
(110, 1, 37, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:37', '2020-01-08 22:40:37', NULL),
(111, 1, 37, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:37', '2020-01-08 22:40:37', NULL),
(112, 1, 37, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:37', '2020-01-08 22:40:37', NULL),
(113, 1, 39, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:40:46', '2020-01-08 22:40:46', NULL),
(114, 1, 39, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:40:47', '2020-01-08 22:40:47', NULL),
(115, 1, 39, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:49', '2020-01-08 22:40:49', NULL),
(116, 8, 38, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:40:52', '2020-01-08 22:40:52', NULL),
(117, 8, 38, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:40:56', '2020-01-08 22:40:56', NULL),
(118, 1, 33, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:41:05', '2020-01-08 22:41:05', NULL),
(119, 1, 33, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:41:05', '2020-01-08 22:41:05', NULL),
(120, 1, 33, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:41:05', '2020-01-08 22:41:05', NULL),
(121, 8, 35, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:41:09', '2020-01-08 22:41:09', NULL),
(122, 8, 35, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:41:10', '2020-01-08 22:41:10', NULL),
(123, 8, 35, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:41:11', '2020-01-08 22:41:11', NULL),
(124, 1, 34, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:41:43', '2020-01-08 22:41:43', NULL),
(125, 1, 34, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:41:45', '2020-01-08 22:41:45', NULL),
(126, 1, 33, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:41:48', '2020-01-08 22:41:48', NULL),
(127, 1, 33, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:41:52', '2020-01-08 22:41:52', NULL),
(128, 1, 34, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:42:27', '2020-01-08 22:42:27', NULL),
(129, 1, 32, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:42:44', '2020-01-08 22:42:44', NULL),
(130, 1, 32, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:42:44', '2020-01-08 22:42:44', NULL),
(131, 1, 32, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:42:45', '2020-01-08 22:42:45', NULL),
(132, 1, 32, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:42:49', '2020-01-08 22:42:49', NULL),
(133, 1, 31, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:42:52', '2020-01-08 22:42:52', NULL),
(134, 1, 31, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:42:53', '2020-01-08 22:42:53', NULL),
(135, 1, 31, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:42:55', '2020-01-08 22:42:55', NULL),
(136, 8, 29, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:42:57', '2020-01-08 22:42:57', NULL),
(137, 8, 29, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:42:58', '2020-01-08 22:42:58', NULL),
(138, 8, 29, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:42:59', '2020-01-08 22:42:59', NULL),
(139, 8, 28, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:01', '2020-01-08 22:43:01', NULL),
(140, 8, 28, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:02', '2020-01-08 22:43:02', NULL),
(141, 8, 28, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:02', '2020-01-08 22:43:02', NULL),
(142, 8, 27, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:04', '2020-01-08 22:43:04', NULL),
(143, 8, 27, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:05', '2020-01-08 22:43:05', NULL),
(144, 8, 27, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:07', '2020-01-08 22:43:07', NULL),
(145, 13, 26, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:08', '2020-01-08 22:43:08', NULL),
(146, 13, 26, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:09', '2020-01-08 22:43:09', NULL),
(147, 13, 26, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:09', '2020-01-08 22:43:09', NULL),
(148, 13, 26, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:11', '2020-01-08 22:43:11', NULL),
(149, 13, 26, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:13', '2020-01-08 22:43:13', NULL),
(150, 8, 25, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:31', '2020-01-08 22:43:31', NULL),
(151, 8, 25, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:31', '2020-01-08 22:43:31', NULL),
(152, 8, 25, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:32', '2020-01-08 22:43:32', NULL),
(153, 1, 23, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:34', '2020-01-08 22:43:34', NULL),
(154, 1, 23, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:35', '2020-01-08 22:43:35', NULL),
(155, 1, 23, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:36', '2020-01-08 22:43:36', NULL),
(156, 10, 21, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:45', '2020-01-08 22:43:45', NULL),
(157, 10, 21, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:46', '2020-01-08 22:43:46', NULL),
(158, 10, 21, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:43:56', '2020-01-08 22:43:56', NULL),
(159, 10, 21, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:43:57', '2020-01-08 22:43:57', NULL),
(160, 9, 20, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-08 22:43:59', '2020-01-08 22:43:59', NULL),
(161, 9, 20, 'طلبك في طريقه إليك', 0, 'active', '2020-01-08 22:44:00', '2020-01-08 22:44:00', NULL),
(162, 9, 20, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-08 22:44:01', '2020-01-08 22:44:01', NULL),
(163, 8, 44, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:46', '2020-01-18 05:02:46', NULL),
(164, 8, 44, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:46', '2020-01-18 05:02:46', NULL),
(165, 8, 44, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:46', '2020-01-18 05:02:46', NULL),
(166, 8, 44, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:46', '2020-01-18 05:02:46', NULL),
(167, 8, 44, 'طلبك في طريقه إليك', 0, 'active', '2020-01-18 05:02:53', '2020-01-18 05:02:53', NULL),
(168, 8, 44, 'طلبك في طريقه إليك', 0, 'active', '2020-01-18 05:02:53', '2020-01-18 05:02:53', NULL),
(169, 8, 44, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-18 05:02:55', '2020-01-18 05:02:55', NULL),
(170, 8, 44, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-18 05:02:55', '2020-01-18 05:02:55', NULL),
(171, 1, 43, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:57', '2020-01-18 05:02:57', NULL),
(172, 1, 43, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:57', '2020-01-18 05:02:57', NULL),
(173, 1, 43, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:58', '2020-01-18 05:02:58', NULL),
(174, 1, 43, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-18 05:02:58', '2020-01-18 05:02:58', NULL),
(175, 1, 43, 'طلبك في طريقه إليك', 0, 'active', '2020-01-18 05:03:00', '2020-01-18 05:03:00', NULL),
(176, 1, 43, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-18 05:03:02', '2020-01-18 05:03:02', NULL),
(177, 1, 45, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-20 19:13:48', '2020-01-20 19:13:48', NULL),
(178, 1, 45, 'طلبك في طريقه إليك', 0, 'active', '2020-01-20 19:46:17', '2020-01-20 19:46:17', NULL),
(179, 1, 45, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-20 19:46:42', '2020-01-20 19:46:42', NULL),
(180, 2, 46, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-20 23:25:05', '2020-01-20 23:25:05', NULL),
(181, 2, 46, 'طلبك في طريقه إليك', 0, 'active', '2020-01-20 23:25:14', '2020-01-20 23:25:14', NULL),
(182, 2, 46, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-20 23:25:18', '2020-01-20 23:25:18', NULL),
(183, 1, 47, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-25 16:26:31', '2020-01-25 16:26:31', NULL),
(184, 1, 47, 'طلبك في طريقه إليك', 0, 'active', '2020-01-25 16:26:34', '2020-01-25 16:26:34', NULL),
(185, 1, 47, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-25 16:26:36', '2020-01-25 16:26:36', NULL),
(186, 1, 48, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-25 19:33:11', '2020-01-25 19:33:11', NULL),
(187, 1, 48, 'طلبك في طريقه إليك', 0, 'active', '2020-01-25 19:33:12', '2020-01-25 19:33:12', NULL),
(188, 1, 48, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-25 19:33:15', '2020-01-25 19:33:15', NULL),
(189, 2, 49, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-25 21:06:30', '2020-01-25 21:06:30', NULL),
(190, 2, 49, 'طلبك في طريقه إليك', 0, 'active', '2020-01-25 21:06:46', '2020-01-25 21:06:46', NULL),
(191, 2, 49, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-25 21:06:47', '2020-01-25 21:06:47', NULL),
(192, 44, 50, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-25 22:12:51', '2020-01-25 22:12:51', NULL),
(193, 44, 50, 'طلبك في طريقه إليك', 0, 'active', '2020-01-25 23:29:44', '2020-01-25 23:29:44', NULL),
(194, 44, 50, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-25 23:29:46', '2020-01-25 23:29:46', NULL),
(195, 45, 51, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 02:17:13', '2020-01-26 02:17:13', NULL),
(196, 45, 51, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 02:18:52', '2020-01-26 02:18:52', NULL),
(197, 45, 51, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 02:27:47', '2020-01-26 02:27:47', NULL),
(198, 45, 51, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 03:00:27', '2020-01-26 03:00:27', NULL),
(199, 53, 52, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 03:11:35', '2020-01-26 03:11:35', NULL),
(200, 53, 52, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 03:11:39', '2020-01-26 03:11:39', NULL),
(201, 53, 52, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 03:11:41', '2020-01-26 03:11:41', NULL),
(202, 74, 53, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 18:08:20', '2020-01-26 18:08:20', NULL),
(203, 74, 53, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 18:26:21', '2020-01-26 18:26:21', NULL),
(204, 74, 53, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 18:40:46', '2020-01-26 18:40:46', NULL),
(205, 67, 54, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 18:49:02', '2020-01-26 18:49:02', NULL),
(206, 67, 54, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 18:59:39', '2020-01-26 18:59:39', NULL),
(207, 72, 55, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 19:02:18', '2020-01-26 19:02:18', NULL),
(208, 72, 55, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 19:02:19', '2020-01-26 19:02:19', NULL),
(209, 72, 55, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 19:02:19', '2020-01-26 19:02:19', NULL),
(210, 72, 55, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 19:02:20', '2020-01-26 19:02:20', NULL),
(211, 72, 55, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 19:02:22', '2020-01-26 19:02:22', NULL),
(212, 67, 54, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 19:21:10', '2020-01-26 19:21:10', NULL),
(213, 74, 56, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-26 21:17:41', '2020-01-26 21:17:41', NULL),
(214, 74, 56, 'طلبك في طريقه إليك', 0, 'active', '2020-01-26 21:39:22', '2020-01-26 21:39:22', NULL),
(215, 74, 56, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-26 22:07:32', '2020-01-26 22:07:32', NULL),
(216, 27, 58, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 03:44:23', '2020-01-27 03:44:23', NULL),
(217, 27, 57, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 03:44:26', '2020-01-27 03:44:26', NULL),
(218, 27, 58, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 04:00:23', '2020-01-27 04:00:23', NULL),
(219, 27, 57, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 04:00:24', '2020-01-27 04:00:24', NULL),
(220, 27, 58, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 04:46:31', '2020-01-27 04:46:31', NULL),
(221, 27, 57, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 04:46:33', '2020-01-27 04:46:33', NULL),
(222, 133, 59, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:22:00', '2020-01-27 17:22:00', NULL),
(223, 133, 59, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:22:00', '2020-01-27 17:22:00', NULL),
(224, 133, 59, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 17:22:02', '2020-01-27 17:22:02', NULL),
(225, 133, 59, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 17:22:03', '2020-01-27 17:22:03', NULL),
(226, 136, 60, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:32:31', '2020-01-27 17:32:31', NULL),
(227, 136, 60, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:32:31', '2020-01-27 17:32:31', NULL),
(228, 136, 60, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:32:31', '2020-01-27 17:32:31', NULL),
(229, 136, 60, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 17:32:34', '2020-01-27 17:32:34', NULL),
(230, 136, 60, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 17:32:37', '2020-01-27 17:32:37', NULL),
(231, 75, 61, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 17:51:50', '2020-01-27 17:51:50', NULL),
(232, 75, 61, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 18:21:19', '2020-01-27 18:21:19', NULL),
(233, 75, 61, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 19:27:41', '2020-01-27 19:27:41', NULL),
(234, 2, 62, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 22:59:34', '2020-01-27 22:59:34', NULL),
(235, 2, 62, 'طلبك في طريقه إليك', 0, 'active', '2020-01-27 23:02:32', '2020-01-27 23:02:32', NULL),
(236, 2, 62, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-27 23:02:35', '2020-01-27 23:02:35', NULL),
(237, 156, 63, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-27 23:52:41', '2020-01-27 23:52:41', NULL),
(238, 156, 63, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 00:14:31', '2020-01-28 00:14:31', NULL),
(239, 68, 64, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 01:25:02', '2020-01-28 01:25:02', NULL),
(240, 68, 64, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 01:25:02', '2020-01-28 01:25:02', NULL),
(241, 68, 64, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 01:25:03', '2020-01-28 01:25:03', NULL),
(242, 68, 64, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 01:25:05', '2020-01-28 01:25:05', NULL),
(243, 156, 63, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 01:25:07', '2020-01-28 01:25:07', NULL),
(244, 144, 65, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 03:28:35', '2020-01-28 03:28:35', NULL),
(245, 45, 66, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 03:36:45', '2020-01-28 03:36:45', NULL),
(246, 45, 66, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 03:36:46', '2020-01-28 03:36:46', NULL),
(247, 45, 66, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 03:36:48', '2020-01-28 03:36:48', NULL),
(248, 144, 65, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 03:45:39', '2020-01-28 03:45:39', NULL),
(249, 144, 65, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 04:09:51', '2020-01-28 04:09:51', NULL),
(250, 179, 67, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 16:40:17', '2020-01-28 16:40:17', NULL),
(251, 179, 67, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 16:56:36', '2020-01-28 16:56:36', NULL),
(252, 136, 69, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 17:05:09', '2020-01-28 17:05:09', NULL),
(253, 180, 68, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 17:05:10', '2020-01-28 17:05:10', NULL),
(254, 180, 68, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 17:05:12', '2020-01-28 17:05:12', NULL),
(255, 180, 68, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 17:05:14', '2020-01-28 17:05:14', NULL),
(256, 136, 69, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 17:05:16', '2020-01-28 17:05:16', NULL),
(257, 136, 69, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 17:05:29', '2020-01-28 17:05:29', NULL),
(258, 2, 71, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 18:22:54', '2020-01-28 18:22:54', NULL),
(259, 2, 70, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 18:22:56', '2020-01-28 18:22:56', NULL),
(260, 2, 70, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 18:23:00', '2020-01-28 18:23:00', NULL),
(261, 2, 71, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 18:23:04', '2020-01-28 18:23:04', NULL),
(262, 2, 70, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 18:23:05', '2020-01-28 18:23:05', NULL),
(263, 179, 67, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 18:23:12', '2020-01-28 18:23:12', NULL),
(264, 2, 71, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 18:35:16', '2020-01-28 18:35:16', NULL),
(265, 183, 72, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 18:39:28', '2020-01-28 18:39:28', NULL),
(266, 183, 72, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 18:39:29', '2020-01-28 18:39:29', NULL),
(267, 183, 72, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 18:39:30', '2020-01-28 18:39:30', NULL),
(268, 183, 72, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 18:39:31', '2020-01-28 18:39:31', NULL),
(269, 8, 73, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 19:55:42', '2020-01-28 19:55:42', NULL),
(270, 8, 73, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 19:55:44', '2020-01-28 19:55:44', NULL),
(271, 8, 73, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 19:55:46', '2020-01-28 19:55:46', NULL),
(272, 187, 74, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-28 20:47:26', '2020-01-28 20:47:26', NULL),
(273, 187, 74, 'طلبك في طريقه إليك', 0, 'active', '2020-01-28 21:07:38', '2020-01-28 21:07:38', NULL),
(274, 187, 74, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-28 21:55:19', '2020-01-28 21:55:19', NULL),
(275, 195, 77, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-29 18:28:51', '2020-01-29 18:28:51', NULL),
(276, 195, 77, 'طلبك في طريقه إليك', 0, 'active', '2020-01-29 18:47:48', '2020-01-29 18:47:48', NULL),
(277, 195, 77, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-29 19:07:03', '2020-01-29 19:07:03', NULL),
(278, 277, 80, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 17:58:53', '2020-01-30 17:58:53', NULL),
(279, 277, 80, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 18:06:57', '2020-01-30 18:06:57', NULL),
(280, 277, 80, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-30 18:08:08', '2020-01-30 18:08:08', NULL),
(281, 195, 81, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 20:11:53', '2020-01-30 20:11:53', NULL),
(282, 278, 82, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 20:12:17', '2020-01-30 20:12:17', NULL),
(283, 328, 83, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 20:15:26', '2020-01-30 20:15:26', NULL),
(284, 195, 81, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 20:26:43', '2020-01-30 20:26:43', NULL),
(285, 170, 84, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 20:40:53', '2020-01-30 20:40:53', NULL),
(286, 332, 85, 'جاري الآن تحضير طلبك', 0, 'active', '2020-01-30 20:51:13', '2020-01-30 20:51:13', NULL),
(287, 195, 81, 'شكرا لك تم تسليم الطلب', 0, 'active', '2020-01-30 20:58:38', '2020-01-30 20:58:38', NULL),
(288, 278, 82, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 21:18:37', '2020-01-30 21:18:37', NULL),
(289, 328, 83, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 21:18:41', '2020-01-30 21:18:41', NULL),
(290, 170, 84, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 21:20:37', '2020-01-30 21:20:37', NULL),
(291, 332, 85, 'طلبك في طريقه إليك', 0, 'active', '2020-01-30 21:25:25', '2020-01-30 21:25:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('003ff1c18c4ce182303f3dfb019433087948d04055d27c11377af6c8f8dc29fc0cdb167d3739430c', 62, 1, 'mobile', '[]', 0, '2020-01-26 06:09:15', '2020-01-26 06:09:15', '2021-01-25 23:09:15'),
('008450747a676faaa8d4de1b81c3ae8d7fbece3f5cde07b6d3587d11678596e5a31340df68bf51a6', 10, 1, 'mobile', '[]', 1, '2019-12-08 04:06:24', '2019-12-08 04:06:24', '2020-12-07 21:06:24'),
('00b76f722e778399c206536681796e7d01813f567650641b7b317561a20019574c684cb040cc6232', 1, 1, 'mobile', '[]', 0, '2020-05-05 19:54:00', '2020-05-05 19:54:00', '2021-05-05 12:54:00'),
('00edc3061f3e382942e78e88ac676d49f594923cc12bc959b58c657954ee8ffe4717a12be06a5ae1', 101, 1, 'mobile', '[]', 1, '2020-01-27 01:43:19', '2020-01-27 01:43:19', '2021-01-26 18:43:19'),
('00fa3350df7835ddaa4c44958859d30341049f28b2b2d457546aeda325fd978ca27ac2b0231cefea', 143, 1, 'mobile', '[]', 0, '2020-01-27 18:48:01', '2020-01-27 18:48:01', '2021-01-27 11:48:01'),
('01437c212ad304a421bbc89553b5166b6dea37e2ea661e00f0bee40101ea498abd7a46a4375097ea', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:11:15', '2020-03-07 22:11:15', '2021-03-07 15:11:15'),
('018580c834799015c4a079d3cd79224dac9d141d046a9e5f57ecf3da0f7ce01367f9691b202faa05', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:37:06', '2020-03-07 21:37:06', '2021-03-07 14:37:06'),
('01a8c05dfc8f512b0ff20e2abc0ade9f122280652bbde01ab19526c3be68c58bb42ac6478402ea9c', 124, 1, 'mobile', '[]', 0, '2020-01-27 16:06:52', '2020-01-27 16:06:52', '2021-01-27 09:06:52'),
('021cb109ad0143b9797d30d92c8dac83d683dd168b3d8129bdb6b67ad66546def973eb52e4f5fa28', 329, 1, 'mobile', '[]', 0, '2020-01-30 20:13:17', '2020-01-30 20:13:17', '2021-01-30 13:13:17'),
('0224f534ca3d54d79bb1479083befa9addb54b8756132b2326917e821e4a1a19d4e437f0d2c64112', 8, 1, 'mobile', '[]', 0, '2019-12-10 23:33:41', '2019-12-10 23:33:41', '2020-12-10 16:33:41'),
('022a066058798420d185237535530aedf7e8c45b27d3f00dd911c41a38b1daabcf9bbd27f501c6d6', 1, 1, 'mobile', '[]', 0, '2019-12-02 18:35:05', '2019-12-02 18:35:05', '2020-12-02 11:35:05'),
('022feae832266b09b3fabb4174d904e588d3d690a051d5321967a93b52d19e35620fb81d6dc96d49', 1, 1, 'mobile', '[]', 0, '2020-03-05 04:17:27', '2020-03-05 04:17:27', '2021-03-04 21:17:27'),
('02c790863f4532ad4efd1265153f24364416f7bcdc74effafc16b07cae4e20105391ed1645c83463', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:47:15', '2020-03-04 16:47:15', '2021-03-04 09:47:15'),
('02f1d8dc5744b2390d6e93fa0354950fad861c547874d05a1c88645544b6948faba2a95112840534', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:46:05', '2020-03-10 03:46:05', '2021-03-09 20:46:05'),
('032a740df5f344b2a174e9c641abef0fc146c43727a235cdfe3ed2d3c3feb4171ed28100c13e0320', 1, 1, 'mobile', '[]', 0, '2020-02-25 16:11:07', '2020-02-25 16:11:07', '2021-02-25 09:11:07'),
('0344aca61a48e7b172d2656bb8a41faeaa4bca0c01e80cfeec248fd6967b9575b6cd7c722e51d347', 189, 1, 'mobile', '[]', 0, '2020-01-28 21:43:41', '2020-01-28 21:43:41', '2021-01-28 14:43:41'),
('034f54a02ee611e074e69a2df1c525ef790c835698f234949b43fa3fc9b2d746379a5e50bc51520b', 3, 1, 'mobile', '[]', 0, '2019-12-02 20:01:41', '2019-12-02 20:01:41', '2020-12-02 13:01:41'),
('03664e8e228a3a1d9324c9ed676d457b5b462352078ccb363d018ced96b7f2dfe45987e1188dca2c', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:11:24', '2020-03-05 20:11:24', '2021-03-05 13:11:24'),
('036fab853a3edb7020466269e60ada386b962368a479c51dbc39ab69bab33c014cbdbb37a7f09b9f', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:55:40', '2020-03-05 19:55:40', '2021-03-05 12:55:40'),
('0378084b5ebb024b3cfb054906e3316844235b8f413f3d676702da19d8125b971100b0c3ec3809db', 214, 1, 'mobile', '[]', 0, '2020-01-29 12:01:21', '2020-01-29 12:01:21', '2021-01-29 05:01:21'),
('0393751893a279fb9785b31c43a6be251b25fafd783a853cb533726a77e6ef757b98859e31179571', 1, 1, 'mobile', '[]', 0, '2020-02-19 18:09:06', '2020-02-19 18:09:06', '2021-02-19 11:09:06'),
('045098b1d7293aab6d8c0231a8195ce864532e42ebcfe4860108ac2253e7e9e23c152cfbd14264aa', 334, 1, 'mobile', '[]', 0, '2020-01-30 21:04:00', '2020-01-30 21:04:00', '2021-01-30 14:04:00'),
('045d126442f24a596307aa804c4bffa05448492323633d8ce023ec3b0efaacbb80810fc4c8578c88', 42, 1, 'mobile', '[]', 0, '2020-01-25 19:41:03', '2020-01-25 19:41:03', '2021-01-25 12:41:03'),
('0489a341f68c7aaa7c7f301fec31f6b54843484fc4621dd0d7fb27fa4b571f988696746502306de8', 34, 1, 'mobile', '[]', 0, '2020-01-25 03:08:55', '2020-01-25 03:08:55', '2021-01-24 20:08:55'),
('04a514d81ca9fdee43e4288e619593a38d477ee26e64acf6c4380fc182979d14387272dc3a80a4da', 10, 1, 'mobile', '[]', 1, '2019-12-08 03:18:41', '2019-12-08 03:18:41', '2020-12-07 20:18:41'),
('04bc72746a7beadf8e47a9e8242a5a745cdd2c7726ea48656613cb5a9eb593d4c07dd276436dcf9e', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:32:29', '2020-03-08 01:32:29', '2021-03-07 18:32:29'),
('0541f6816029c4796fb1fc91d00ddab09a5e2864b0ea590b0ca40d35c3b6563b92285a23e27cea7d', 301, 1, 'mobile', '[]', 0, '2020-01-30 10:14:07', '2020-01-30 10:14:07', '2021-01-30 03:14:07'),
('054fc02e84375d4c861cf1e1a04b73f661df3b7a3e42abde277b913f92322f32292003c9a2ea7457', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:34:14', '2020-03-05 03:34:14', '2021-03-04 20:34:14'),
('0562255c1b125b8fc176abb24d7d177824ca65eb5d64ba4fea258cfb092b3ae1aaa69f02d12290fe', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:56:19', '2020-03-11 19:56:19', '2021-03-11 12:56:19'),
('056645bde08348a51eacdb508a2c16611ac75328301bc0698c52955ee0784ab7bd74760a5f30189b', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:47:41', '2020-03-09 01:47:41', '2021-03-08 18:47:41'),
('05d8f45d5b74002d5c30a3c1e7dc0d8b27e0e70f78f03ea665f724293f228217d3b0c0702af07a8f', 1, 1, 'mobile', '[]', 0, '2020-02-19 22:03:30', '2020-02-19 22:03:30', '2021-02-19 15:03:30'),
('05fdbe02fd64aa5885f58e88e2649e7d90b583746dc37564f3fc6af5719a95b01b2b976ca685b555', 277, 1, 'mobile', '[]', 0, '2020-01-30 05:59:05', '2020-01-30 05:59:05', '2021-01-29 22:59:05'),
('060d8d3215844cc9b08ebeeffedfe44d448d94c02fede3692070bbf7b42316fdeee3d68558db402f', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:24:42', '2020-03-04 18:24:42', '2021-03-04 11:24:42'),
('06729e6b1d38d0662d33247272074c82e1288cf233cf6ae83b8c6ba195fc0ef99a5901a89dc47b58', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:59:45', '2020-03-05 21:59:45', '2021-03-05 14:59:45'),
('06e0b314d85d284b686ea664f6bbabc70bd1e7c6c22ca47a86666fbb8428014b717283acd37f69f3', 1, 1, 'mobile', '[]', 0, '2020-03-08 03:31:56', '2020-03-08 03:31:56', '2021-03-07 20:31:56'),
('06f566b7e3411469ae4bb56a6e52b2ca5522ffefa8e4a875908ec82a1b797e58886926e85727177a', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:13:00', '2020-03-10 19:13:00', '2021-03-10 12:13:00'),
('072d607fe217a4a259f591d2b940f2f2125bef839664f71fd0e3d92a99516335bccf26bd72899668', 3, 1, 'mobile', '[]', 1, '2019-12-25 05:41:51', '2019-12-25 05:41:51', '2020-12-24 22:41:51'),
('073fe344484e1aa3ebb384ded532c7183e8860cb110af201f25e0d5b8cc3d691555ece05b1cb18d4', 330, 1, 'mobile', '[]', 0, '2020-01-30 20:27:04', '2020-01-30 20:27:04', '2021-01-30 13:27:04'),
('0774f50c07bdd64ebb38f1c0b3fe724097aa65c5abdf23d775e13831da06f2c8f1dd0e4d8b561b17', 1, 1, 'mobile', '[]', 0, '2020-03-06 02:56:30', '2020-03-06 02:56:30', '2021-03-05 19:56:30'),
('07848a0c8670f2242f8ca45bed1ef3000e3b272faf2852d1f2c4a4f4b97013ad754ab924c3a812b5', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:17:06', '2020-03-05 03:17:06', '2021-03-04 20:17:06'),
('0796f32cfc5345c1dc776680298258ca58e88ba4c802e26e5f6ab13ec74bf8945c737c9ddf9e6910', 1, 1, 'mobile', '[]', 0, '2020-05-05 20:08:57', '2020-05-05 20:08:57', '2021-05-05 13:08:57'),
('07b4c67abccedf84da0515dfb329a5e7209004d9a911004b1257a4ee4e30fa542434368a36f5e26b', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:43:41', '2020-03-05 02:43:41', '2021-03-04 19:43:41'),
('07da82f77cc750a2e292eefb43de0f82c3deebb177fae98410dfbc925121ee318c11c8b8ef3327e2', 1, 1, 'mobile', '[]', 0, '2020-03-08 06:10:26', '2020-03-08 06:10:26', '2021-03-07 23:10:26'),
('0839d67dfd5a3da9fc0d5ef5ef384c35e1ed746099dac229fb66b410cfa832d1091ae618515559ec', 1, 1, 'mobile', '[]', 0, '2020-03-11 15:39:43', '2020-03-11 15:39:43', '2021-03-11 08:39:43'),
('08485c88add8bbf3cac45ef11711aa9b4c500d89cda83efde90a4d5acc34043cfec8d61f01465480', 1, 1, 'mobile', '[]', 0, '2020-03-16 06:36:55', '2020-03-16 06:36:55', '2021-03-15 23:36:55'),
('086a5562639101dac98a0f668b3f535b5cdd0c71a3932b9343ac624f75f49f0ced5d283b8126fb49', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:07:30', '2020-03-10 19:07:30', '2021-03-10 12:07:30'),
('08a099cafbd0fadd37fa2b11e72f7fcaa6d66c7922771b8fb8d3b9e717e5ff10fbc794a76b3d3f06', 28, 1, 'mobile', '[]', 0, '2020-01-21 04:56:53', '2020-01-21 04:56:53', '2021-01-20 21:56:53'),
('08ee7cf93d7007044cda89a9f16c18dda4b5ee741efa047a15cadcc5246301b079873320e64d809f', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:13:47', '2020-03-09 01:13:47', '2021-03-08 18:13:47'),
('08f4602e7454dd13a3c296d2269e4b510c8ee3d2f9400f99b0b4fbb0713f1b825cf7aeb093d9fa6d', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:48:06', '2020-03-10 02:48:06', '2021-03-09 19:48:06'),
('0906bf8eda559cbed52ed337dec473673b75d7b0a4203c2ed6fedacc7460bc0bbe0dabef244a033c', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:18:57', '2020-03-11 18:18:57', '2021-03-11 11:18:57'),
('094b54d1d586e239c9c7b8aab3c98483697ae6992efec3537fdac66f0442e80606d1d556806aec91', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:54:22', '2020-03-05 02:54:22', '2021-03-04 19:54:22'),
('0955fc80201f36460fa2a132e37ec8054d831179675bead2a01e9479f1259a0fe347e19364c1c6a9', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:04:59', '2020-03-05 21:04:59', '2021-03-05 14:04:59'),
('098209bc0e69db71adf0b23aead4f84109d5d6f35fb464639bccd001c3aa667e2dd043f2e6cdd71f', 295, 1, 'mobile', '[]', 0, '2020-01-30 07:20:33', '2020-01-30 07:20:33', '2021-01-30 00:20:33'),
('09a1bfaeb9b30a9404861bebed4063f394614e4b68cbe6c4a8e8e8f8deed10c6af46534441272c2b', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:57:16', '2020-03-05 05:57:16', '2021-03-04 22:57:16'),
('09abadb5c651d90a672bf8304b7c9ca15229e9ed7277df7c368ce1675707bce18b655d9758076690', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:10:38', '2020-03-07 23:10:38', '2021-03-07 16:10:38'),
('0a6011167dfd2f05abb9aa0abca027df69c07e0078fa6965817a5367283851b0ca49004e938e5459', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:21:21', '2020-03-10 04:21:21', '2021-03-09 21:21:21'),
('0a71ab31d4dc7e1a79d761788fce81dba153702b0afe57eb5a050d7dd507ea94dafdf39cecf001b6', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:41:50', '2020-03-05 19:41:50', '2021-03-05 12:41:50'),
('0a737f349f535c86ab91e05badf03b67f45871175919882c68f90e4cb4d6c49dfb08265f302aa0da', 61, 1, 'mobile', '[]', 0, '2020-01-26 05:51:37', '2020-01-26 05:51:37', '2021-01-25 22:51:37'),
('0ae1b515570be2ef5b17f4ebdd8cade780cb7ccc25608eea1b1113c00bdbb64904fec1a6ff2335d7', 1, 1, 'mobile', '[]', 0, '2020-03-05 04:18:44', '2020-03-05 04:18:44', '2021-03-04 21:18:44'),
('0af19a9ca0ac6cd5fc4a4614abe7331aed1c626c8c1e3af2cbac013d5abb07c063e76e79faf42c61', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:44:18', '2020-03-05 05:44:18', '2021-03-04 22:44:18'),
('0b6c621d0f74184a9eebca0a51e4305327c7bfbbc90dbe31c79314dbde342cff62d02b094027f912', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:04:26', '2020-03-10 19:04:26', '2021-03-10 12:04:26'),
('0bdab2bf57a7f622c22a9af35a31e2b26fdc2c49d09c1f4dfab4da3593d6167a3407a184d8f2ccd4', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:24:30', '2020-03-08 20:24:30', '2021-03-08 13:24:30'),
('0c5eb2bfd7ca3f84f4f3f6c48487c60cb9a7d421dec596b319b541de18e15b654a35427898a07774', 1, 1, 'mobile', '[]', 0, '2020-01-02 01:33:00', '2020-01-02 01:33:00', '2021-01-01 18:33:00'),
('0c6ee51233351f6fb57b6e372783d0b68beba345cb27e1fed619b1039e61143dee6e6c3af8ed529f', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:47:41', '2020-03-10 04:47:41', '2021-03-09 21:47:41'),
('0c8917c77ce30a1a365cbe2dabe75aee8f6ca9c6c38e7bfea5060d27f6bc8beba7c97e5a53cf68b8', 146, 1, 'mobile', '[]', 0, '2020-01-27 19:03:51', '2020-01-27 19:03:51', '2021-01-27 12:03:51'),
('0c928841f3ad1cfb607b01326e7a52113cae299caec73486f46f41754f7c1f3926c236d1f8936005', 3, 1, 'mobile', '[]', 0, '2019-12-03 20:48:03', '2019-12-03 20:48:03', '2020-12-03 13:48:03'),
('0ce466b2c87b058e3059e48933f5263f678a820900837b2e0ae7243cda99149d6640cf8b1cc634f9', 1, 1, 'mobile', '[]', 0, '2020-05-28 15:22:17', '2020-05-28 15:22:17', '2021-05-28 08:22:17'),
('0d518f7f614017b5fe051048371ed1bc3cd8fe20c1bbac8eec82e52344970a792f7291110425368c', 215, 1, 'mobile', '[]', 0, '2020-01-29 13:57:12', '2020-01-29 13:57:12', '2021-01-29 06:57:12'),
('0d549a8c30e302dc5e4185fa8ee7e39b334a3846c3ce39db29bc14cf428490834ff77151f130d3e1', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:15:35', '2020-03-09 13:15:35', '2021-03-09 06:15:35'),
('0d75e1157e800d3e262fc1a0bb11e355ef03b02ab19f3f4684d621c44be5fb021395500e49cb68f0', 121, 1, 'mobile', '[]', 0, '2020-01-27 15:54:12', '2020-01-27 15:54:12', '2021-01-27 08:54:12'),
('0d85aaaf835d322f307bf377b53fc3f647b76617e841b0b94339967e44abdb4324b1110d86b6ad6d', 1, 1, 'mobile', '[]', 0, '2020-05-14 22:13:29', '2020-05-14 22:13:29', '2021-05-14 15:13:29'),
('0d96d0df6b053b147a003dbdab3d6605cd922bee56ef68806d8e2e6ab768fc5fc78dfbbfd8f8beaf', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:53:13', '2020-03-07 23:53:13', '2021-03-07 16:53:13'),
('0dcabf2c6310dbba38e0872b332f1c9a5957e6253797ae5d7b3dbf055d736190c27f80dae7730c7a', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:54:58', '2020-03-05 05:54:58', '2021-03-04 22:54:58'),
('0dd2b8ae2ae460bac7f9517499749985df1f0573de16c0ed0aeed6d31e7fae703ce6bc9d66df588a', 1, 1, 'mobile', '[]', 0, '2020-03-04 14:36:55', '2020-03-04 14:36:55', '2021-03-04 07:36:55'),
('0ea558b0d30175017e2ef0b7912f11c58b0e3199ba642dd36b68131c8f318f31b181a01ea2987afa', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:14:07', '2020-03-10 17:14:07', '2021-03-10 10:14:07'),
('0ea65aceb6e5bb442fb8e8aa2781b43ebf03138a4c9c2e842a703f2c6a7d455f2beba09315b15d54', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:22:05', '2020-03-10 17:22:05', '2021-03-10 10:22:05'),
('0f018077c839a1c09c5a1f096a24fe840b2e67805d9fd9deb55d8065f55b834e6792e48694aee8b3', 1, 1, 'mobile', '[]', 0, '2020-02-19 18:15:50', '2020-02-19 18:15:50', '2021-02-19 11:15:50'),
('0f0ca1d24cc4b2f022c61e116daa44be45e728bdc68c243289df9521c2343a4e1e7fd9685ef4f36f', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:44:11', '2020-03-07 21:44:11', '2021-03-07 14:44:11'),
('0f13ca0843c33f09df52feaa1040642293815e9044722e4f845eca82910aa9918de2409b00e103a6', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:16:42', '2020-03-04 17:16:42', '2021-03-04 10:16:42'),
('0f71facac1e6c5d4d1e18a86a8140576161c329b4ca60471dda2af7c675ca134ec334f1557f022ad', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:11:03', '2020-03-04 18:11:03', '2021-03-04 11:11:03'),
('0f7a5c6f4cabca7d91370f6a4974df7d63d45800ffaec984f5b18c94d925b529dc2f6fd79bb983dd', 137, 1, 'mobile', '[]', 0, '2020-01-27 17:32:38', '2020-01-27 17:32:38', '2021-01-27 10:32:38'),
('0f8723ca04561b2292381746d646e438669750e40e567da86ce77a533d30eea5e8550052b2be44f2', 96, 1, 'mobile', '[]', 0, '2020-01-27 00:39:25', '2020-01-27 00:39:25', '2021-01-26 17:39:25'),
('0faea923053d756d45899b1431df24803bfa29ae67a99a8935006cdf47ce4a0a3eeec26c6629ce9e', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:53:05', '2020-03-09 14:53:05', '2021-03-09 07:53:05'),
('0ff748144979c4c8179fa2cad38916a4112f45573618d382158b45496df457b8ea851986c345e793', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:19:22', '2020-03-05 19:19:22', '2021-03-05 12:19:22'),
('1008259e3ea5df377d77c7a1b5a531ec8277749cf9feae7b96cdcd679a6c05ab26740a04ada7ccbe', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:16:26', '2020-03-09 01:16:26', '2021-03-08 18:16:26'),
('101689efcaaf53b2f357087e6b8bae4725119a0370b58e59955b425a1cc0f26c0b5eb2190af30fe4', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:14:26', '2020-03-05 06:14:26', '2021-03-04 23:14:26'),
('103526d5e584ce0f74e068d826fd9a948171e16f09c6df4d7df8d6116e0dd6afec79af8e23f4bd40', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:09:18', '2020-03-10 17:09:18', '2021-03-10 10:09:18'),
('103b292a511451096fe1d595a9c73e2406727d41b05e6c5604b6f5a2990a6d682a4603d9369f6f8c', 1, 1, 'mobile', '[]', 0, '2020-02-19 21:59:59', '2020-02-19 21:59:59', '2021-02-19 14:59:59'),
('1055064c9441974a79310509c5d940cd55a1be3cfb183f6853e7b02602debdd3594ed1a782664356', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:55:12', '2020-03-10 03:55:12', '2021-03-09 20:55:12'),
('106e420250e6f05185f39c9a1aaca8944c5d0a154920e527494a1d503c4327257b6db68770750c09', 142, 1, 'mobile', '[]', 0, '2020-01-27 18:33:15', '2020-01-27 18:33:15', '2021-01-27 11:33:15'),
('108d3856a155e9fa79ae6443b1ea8fcd2e548fe6ff925325694a99aa37244f5cdaed853dfb42e996', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:14:36', '2020-03-10 01:14:36', '2021-03-09 18:14:36'),
('10bb36435691cd913f37b6efb3ae0423a39874129757e5511a4bad67c846db897cd8bcba6ee8ff8d', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:28:02', '2020-03-07 22:28:02', '2021-03-07 15:28:02'),
('10bf7e0a70903e201fe83e49662c3bb6aa888840c0367d3cc3e7d2eef4d659b13e4b00619eeabf16', 130, 1, 'mobile', '[]', 0, '2020-01-27 16:46:25', '2020-01-27 16:46:25', '2021-01-27 09:46:25'),
('10c0f9a8d84e5dd95046f8710dd63d6be0492d0cf7c174ab533572a7a40b78b8d2bf3c89736fb963', 83, 1, 'mobile', '[]', 0, '2020-01-26 19:31:22', '2020-01-26 19:31:22', '2021-01-26 12:31:22'),
('10f1ded8a936ee6cdafb1d2369233888590b52fb225fab87ae3aa4dda4861032f5b4427242fced81', 16, 1, 'mobile', '[]', 0, '2019-12-21 15:31:09', '2019-12-21 15:31:09', '2020-12-21 08:31:09'),
('10f27650ae0be01d389f8fd2999da06f56d61823a480ce7542b02165390262df5941710cadc569be', 257, 1, 'mobile', '[]', 0, '2020-01-30 03:49:13', '2020-01-30 03:49:13', '2021-01-29 20:49:13'),
('11533ed2ac4799c757328374b372b6b3039ef9f603c3bb68101cf8807c9076ef60811693cc67cc12', 249, 1, 'mobile', '[]', 0, '2020-01-30 02:54:51', '2020-01-30 02:54:51', '2021-01-29 19:54:51'),
('11649d52e7a22880a259d63d90fa522b0ce2370fc4db05273dbf4c654371561ae405723caa659d73', 243, 1, 'mobile', '[]', 0, '2020-01-30 01:52:15', '2020-01-30 01:52:15', '2021-01-29 18:52:15'),
('119aaaf72b7d6d383949455036724801a48292a6650e609d82cebb4a13092945cd4bcc4dfff83e02', 3, 1, 'mobile', '[]', 0, '2019-12-15 22:28:02', '2019-12-15 22:28:02', '2020-12-15 15:28:02'),
('11b0348aaf54671f07e9eff15594b67db364c3f6f2d27ee18b96ab437285e38f73cd8d9cc2070882', 1, 1, 'mobile', '[]', 1, '2019-12-16 03:40:12', '2019-12-16 03:40:12', '2020-12-15 20:40:12'),
('11d53814cbee2834f97a9b6cecb5aaa50d1ec0fc3661058f66f1192f6de25f8901028b9b931996fd', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:15:25', '2020-03-10 01:15:25', '2021-03-09 18:15:25'),
('1217812745372ac924d102933f9f17da7497d491841e6c6226819c7c5af1656822de5f0049cc13eb', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:10:45', '2020-03-10 19:10:45', '2021-03-10 12:10:45'),
('1249a4ce7f2ba9825fb96b707f7869d567a3125c2a8d054551d01c4db5db12e32842749f52765934', 7, 1, 'mobile', '[]', 0, '2019-12-02 00:59:22', '2019-12-02 00:59:22', '2020-12-01 17:59:22'),
('12b8632026ba9b317cf3176cf355f84a7c8fcca726997cf2674e6d48851c9467357e9631c16fa7ec', 1, 1, 'mobile', '[]', 0, '2020-03-03 20:42:55', '2020-03-03 20:42:55', '2021-03-03 13:42:55'),
('12d1a771f15039bad80a0e1da6f0f313ac75b44ef69354fb051bf2f8fa1cda6011b754f8c6d5ff13', 123, 1, 'mobile', '[]', 0, '2020-01-27 16:00:40', '2020-01-27 16:00:40', '2021-01-27 09:00:40'),
('1335e7285ac1c84be1e2b24f2091fbf04bbb5f51ba9f9211ea3907eab79c05ae47afa0a5aa2d48a4', 3, 1, 'mobile', '[]', 1, '2019-12-02 17:45:50', '2019-12-02 17:45:50', '2020-12-02 10:45:50'),
('139ba7e66bf9f8623b7c3483919e84d1961b5fecd9a780ebf34c4cc3c907f97f8e64f3567400cd30', 12, 1, 'mobile', '[]', 0, '2019-12-11 22:09:43', '2019-12-11 22:09:43', '2020-12-11 15:09:43'),
('13ab66c92eae765d596f30ae754421ec042ddf05e28dfd5f9e354656985ce34d850de59357cd05a8', 316, 1, 'mobile', '[]', 0, '2020-01-30 15:19:07', '2020-01-30 15:19:07', '2021-01-30 08:19:07'),
('13b38e40693cf519c206848dfc83a2bb725a2f381afc96e14ca25cf28c36ccd66da247979ab01379', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:43:31', '2020-03-04 18:43:31', '2021-03-04 11:43:31'),
('1411eb1abda804775ef1ec47ea0f8931c55989937e12337211750a1f6e027b247cac88f12525a81a', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:29:49', '2020-03-10 02:29:49', '2021-03-09 19:29:49'),
('1486f9b95f4152b8adbbf73d37db4b6f78cb2a99316767e3ef3fba8551da2f7ff1a23d7011c55486', 265, 1, 'mobile', '[]', 0, '2020-01-30 04:21:41', '2020-01-30 04:21:41', '2021-01-29 21:21:41'),
('14bd7dda54cca208eab2933c96adf42eec6768eda9d6d4ef0d7e6874a91c0ade74176bb7639a28e9', 1, 1, 'mobile', '[]', 0, '2020-03-07 17:58:59', '2020-03-07 17:58:59', '2021-03-07 10:58:59'),
('14fac1d7dbf8dc2b6bb8f09611a04acbdf17e13ce6e0405d9ec715a0aec3a06c019ca7d2a62628f5', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:49:06', '2020-03-05 19:49:06', '2021-03-05 12:49:06'),
('15077468f0f62dcbc239965ab2cea355064b33fc76f9848bff48bac4bf675fe3fae31421c85e81a8', 1, 1, 'mobile', '[]', 0, '2020-03-09 15:00:29', '2020-03-09 15:00:29', '2021-03-09 08:00:29'),
('1536995983538f3a2f4a26aa7255ce0fa03067bcf8ab3c92bf6e3f73bc7db37028bc4d05fa70f27c', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:06:39', '2020-03-09 01:06:39', '2021-03-08 18:06:39'),
('16238205090b41110b101004e758814e1bf9c2c338aeff95ab5ad3b3450d23825951a96328d2f761', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:23:04', '2020-03-10 19:23:04', '2021-03-10 12:23:04'),
('162f8b01f03925a692cdc75a542c6d724ad54d710c2124fa7d80cc4ad99b49118c704484af1a4d00', 320, 1, 'mobile', '[]', 0, '2020-01-30 17:30:20', '2020-01-30 17:30:20', '2021-01-30 10:30:20'),
('164004edf5852090477bfadcc874999798056a74ff8eea7ecefbd0f8a92fcf4f67f6f6bead6506d6', 1, 1, 'mobile', '[]', 0, '2019-12-04 21:03:18', '2019-12-04 21:03:18', '2020-12-04 14:03:18'),
('16adb2614f053673f2ed9e2ca2e4e4271afbf1e8e5b526970d24ca34539d3fff2e529ba1391d0535', 110, 1, 'mobile', '[]', 0, '2020-01-27 06:41:15', '2020-01-27 06:41:15', '2021-01-26 23:41:15'),
('16c5885cbf8fb2d63e0cc3972f141d129a155a491031fece6f97e7f739ab23d315672c325d3f1900', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:30:32', '2020-03-07 21:30:32', '2021-03-07 14:30:32'),
('16dbcf3ff1667727f36ed3fba4b5587a50ce9bb573caa7be354525dee02c337bd24dba45c999938c', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:30:05', '2020-03-10 22:30:05', '2021-03-10 15:30:05'),
('170eab18d75913e2a84022a038195cc0a3dde4ada947eaf969f91625716c536c3e2896ef0bd619f5', 24, 1, 'mobile', '[]', 0, '2020-01-18 22:56:20', '2020-01-18 22:56:20', '2021-01-18 15:56:20'),
('171533661b00bf7be20e81536fca1db269e15d7176aab5c12f887e0e39aa8b34b45ce59d0833249a', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:45:10', '2020-03-10 03:45:10', '2021-03-09 20:45:10'),
('17bfbc4f13037d76228900e38a44211e6ec353c5aa0cebdfa0b472236eda9c16c3174f6ff2c2ee84', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:24:17', '2020-03-07 23:24:17', '2021-03-07 16:24:17'),
('1826504e6e5fe7e72f300179936f0e460d4d95c44d27b506c30d9b984f891f080dd41f901a769c6d', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:23:05', '2020-03-09 14:23:05', '2021-03-09 07:23:05'),
('186d227030557711b7222248f6bce7591c3f2b1314803559487a6b5200a15cb534622abd63a22c44', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:18:45', '2020-03-08 00:18:45', '2021-03-07 17:18:45'),
('188cc0bf2ae77003d9dc8e3ee432d2c28a6c7288acfa539f3f04034cc95e649bbe40175292142e4a', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:50:57', '2020-03-11 18:50:57', '2021-03-11 11:50:57'),
('1896ce25b147e120b058af257aeaaa0d56c25b8c50e743c436fc9ae37c944a628d13919d0e9bd09e', 1, 1, 'mobile', '[]', 0, '2020-03-31 00:28:31', '2020-03-31 00:28:31', '2021-03-30 17:28:31'),
('18c0b1dd8e6db9bd3beee30c5060f818495c2029fc2aead7cb2bb753be3a94de031d8f886965620a', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:39:01', '2020-03-08 18:39:01', '2021-03-08 11:39:01'),
('18d9fe79d64ccba937d72b4fed3632527e7abf043a49c073b533df53fdf93fe27aa5d97b98a6e971', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:21:38', '2020-03-10 15:21:38', '2021-03-10 08:21:38'),
('18de0bd43f8a761ae3fb1f67a8aafe0ce72a36d918d710ddc54fef756e65787ab0b74488c903ffe9', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:03:59', '2020-03-10 04:03:59', '2021-03-09 21:03:59'),
('1993783fecebe879cbe08632ca6f2c5f51c32f6f1c5a3561d0fdc92a3b99508566b38ebd47b0c20f', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:31:25', '2020-03-03 22:31:25', '2021-03-03 15:31:25'),
('1a030ddee16411c43621e2d4da82c53cb071efaf945809fbea8db0f6fb3afdc79e064be4d63d9269', 111, 1, 'mobile', '[]', 0, '2020-01-27 07:34:16', '2020-01-27 07:34:16', '2021-01-27 00:34:16'),
('1a137af31a89c5b310a335c39cad0154e9cbcb1502c185dbb16f654ca17bd50b45cd84245a14eb46', 322, 1, 'mobile', '[]', 0, '2020-01-30 17:38:55', '2020-01-30 17:38:55', '2021-01-30 10:38:55'),
('1a21863b67d8cc9757aeecdce0f6838c84f4da8ee97949636e8633aa1c7030d558bf0cec3c2f3d1e', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:18:14', '2020-03-04 17:18:14', '2021-03-04 10:18:14'),
('1a62798075dbb718f1578fd3e904eca86826340925829fd9d8916b9be7f38cf892e277ae69727135', 340, 1, 'mobile', '[]', 0, '2020-02-04 17:59:39', '2020-02-04 17:59:39', '2021-02-04 10:59:39'),
('1a806107c44c62ee3bda984c61e917c76c8820aae0c24740f035bf56f2b2e80a38db6fb8f1a341a3', 93, 1, 'mobile', '[]', 0, '2020-01-26 23:14:02', '2020-01-26 23:14:02', '2021-01-26 16:14:02'),
('1ab3285a67db91780847037aa802f99aa9160231e8c8be5d7a9e6dbfc43a502b51e326fbb0199214', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:50:04', '2020-03-05 08:50:04', '2021-03-05 01:50:04'),
('1ab63a43b33c13637eda21c3d2d0a456ce84f9967bb2ba58ffb3241c92c13f76a5ddda04f3805454', 331, 1, 'mobile', '[]', 0, '2020-01-30 20:39:07', '2020-01-30 20:39:07', '2021-01-30 13:39:07'),
('1b48b6276e176e583d7474d01c6ad3089834b9da8d04cf1eef4c7f892a8a3443ce15a0697166c961', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:45:03', '2020-03-05 02:45:03', '2021-03-04 19:45:03'),
('1b5053f49613d20c18fdbbed0f92b2437cd78091c53e6e3ca12f2cffd2ba0c6dbb7f644db5412667', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:06:24', '2020-05-14 23:06:24', '2021-05-14 16:06:24'),
('1b9e9e8eb719bc23efc4fe3592892117d27048a712ed91498b376c7727714ec653a5925a6839cbc6', 3, 1, 'mobile', '[]', 0, '2019-12-02 15:41:14', '2019-12-02 15:41:14', '2020-12-02 08:41:14'),
('1b9f6cc010af68784958bd93f3beb2a0783ab0345d64213b228ac0bb1e991c8621c7ef0212cbc2db', 1, 1, 'mobile', '[]', 0, '2020-02-09 21:25:04', '2020-02-09 21:25:04', '2021-02-09 14:25:04'),
('1baf6fd39d5135fc4ce35181df3dcca454173507b95b9aee534e3420a66b5bfda116ddf046323c66', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:02:03', '2020-03-09 13:02:03', '2021-03-09 06:02:03'),
('1be30c6ed3721a58f8e99bf77b0c5236db73835ace007d58edb0fb291b13ef769f16553628e456fb', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:58:52', '2020-03-10 20:58:52', '2021-03-10 13:58:52'),
('1c21e2cd6f5af323bd340424bfa9665a5dd2dc079d5ac05aa47e70d4a49d7095070ec12767e42075', 8, 1, 'mobile', '[]', 0, '2019-12-15 22:17:17', '2019-12-15 22:17:17', '2020-12-15 15:17:17'),
('1c2c5c532501eeb6a23710fcdeb22f948200380a4b201649657ed7de16e19b31e1b90cd2482f2806', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:14:44', '2020-03-10 17:14:44', '2021-03-10 10:14:44'),
('1c35bdb07376286988cc12d3376fbf2a32d983fbfc23549c266d4bfbb8007ad1dc966af85103bfee', 1, 1, 'mobile', '[]', 0, '2020-03-12 17:25:38', '2020-03-12 17:25:38', '2021-03-12 10:25:38'),
('1c411bcc4bc2fd7d6fee2e8aa38485bc843571edabaa0aa969707ff74e7a8e8886363ff9c633d793', 157, 1, 'mobile', '[]', 0, '2020-01-27 23:57:21', '2020-01-27 23:57:21', '2021-01-27 16:57:21'),
('1c7e3079c617f9ba94eeb350180cd04b767a6fa4909b11706d48114368a011d7b7a0a40d327f6b51', 3, 1, 'mobile', '[]', 1, '2019-11-28 21:50:46', '2019-11-28 21:50:46', '2020-11-28 14:50:46'),
('1ca909bca9c08b4fdbd76c70aacdaa34452f5c21675f5accf2a505bfd0a4ae403c27e65a96b62ce2', 179, 1, 'mobile', '[]', 0, '2020-01-28 16:31:15', '2020-01-28 16:31:15', '2021-01-28 09:31:15'),
('1cb0916e6e11311c4e252aab0d65f33edad6c4fd51d25c8161be003f204e84c6dcc4f4e36be8fd9a', 1, 1, 'mobile', '[]', 0, '2020-03-08 03:26:05', '2020-03-08 03:26:05', '2021-03-07 20:26:05'),
('1ccda4f86d2719673640b614cc3e1a3a7710f006c9069ca34a9462678476a51523f6ee0e787cb437', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:49:11', '2020-03-10 20:49:11', '2021-03-10 13:49:11'),
('1cee7d42601bcc1087d2fdfef095af7320745b1ef1563a02f5f601ed7706ea1feeaa8990fc2779e0', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:26:17', '2020-03-03 22:26:17', '2021-03-03 15:26:17'),
('1cee9eea481e0cd0127b496ae42522c9ea147e077ebd0f7ec901d4eda6651f9cded086307e6668ef', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:28:35', '2020-03-10 01:28:35', '2021-03-09 18:28:35'),
('1d0aebee26190924d2f961a6b94b5acfdfd8a9cad50d1f536d03fd77372993062c701b6f048555ed', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:48:41', '2020-03-07 23:48:41', '2021-03-07 16:48:41'),
('1d31d8b74023f25ff9912cf8cf9b827f1a74a7e8d3ffa8f163d29b63e1ef643bb8c50aeabdbf7aa4', 1, 1, 'mobile', '[]', 0, '2020-03-03 17:55:30', '2020-03-03 17:55:30', '2021-03-03 10:55:30'),
('1d730cd39525743f7a1094271b2965078bc027f8dd5889fd4f95ebce504a1a885724288af28ededf', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:07:44', '2020-03-07 21:07:44', '2021-03-07 14:07:44'),
('1d80bc62527b57710c7f1fff158a8c23e281a792b6bd149a44fb659747aa64a6f523b8be25cdbdb2', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:45:56', '2020-03-10 03:45:56', '2021-03-09 20:45:56'),
('1d8ad93d4f6a7dcb3b1f8eaff5b68a198dfbdfe4a40800263514ff00cfde8085c222f0dcbbd2d871', 1, 1, 'mobile', '[]', 0, '2020-02-23 19:42:30', '2020-02-23 19:42:30', '2021-02-23 12:42:30'),
('1e3403792fd1eba79626cb1de22e1da0fdf4897cb6d4218a4f0fbe88239c791b46e6ab7550a8717a', 1, 1, 'mobile', '[]', 0, '2020-05-06 09:51:56', '2020-05-06 09:51:56', '2021-05-06 02:51:56'),
('1e3bde0c6e5c00e43a0ae62ac12fb5a7512a5eefdac58d400d1e6569ab7995979e363e47a952fd7d', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:12:35', '2020-03-08 00:12:35', '2021-03-07 17:12:35'),
('1e5bdd49cc6bbaa80c09fd3554f6b5ab69d63b7953108d6ac29c74ac55b9a69a092fdcd3b2294804', 29, 1, 'mobile', '[]', 0, '2020-01-21 07:55:52', '2020-01-21 07:55:52', '2021-01-21 00:55:52'),
('1eab78dc7cea1a56f748a286c7a43ff94b523b8c35ed11b49c81867463e0ae4f67bdedce2a82e1ff', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:13:33', '2020-03-07 20:13:33', '2021-03-07 13:13:33'),
('1eaefc40d22be4018efc7dad65ea19e88ca7344cef5fc27c22b02d49a61c6afdb57bac772dc568a2', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:43:23', '2020-03-08 20:43:23', '2021-03-08 13:43:23'),
('1ef2eb336c82049c9d11d20a3f60e362dc1a85e8da0ea72d4ad083f5431da5bf2197a19f94d7d5c5', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:00:50', '2020-03-11 14:00:50', '2021-03-11 07:00:50'),
('1efebeb6de368e956f200bcbeafc14e444367031c869ed5c1e86621982d2deabdac01622df88eac0', 3, 1, 'mobile', '[]', 0, '2019-11-28 16:37:40', '2019-11-28 16:37:40', '2020-11-28 09:37:40'),
('1f1d4ade011edc558183cfdbe9589bfa028966d702a6f393ba8f58ddef6971d7f973caf46ac490a9', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:51:52', '2020-03-05 08:51:52', '2021-03-05 01:51:52'),
('1f55d1254c7022e520823706ab168b87dfac970629b609d813c1f85c07534acf7c5f81913bf4e05a', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:48:02', '2020-03-07 23:48:02', '2021-03-07 16:48:02'),
('1f6daab2697cf46bd518a6466156e638e11fd4e9e0368f6da163ae9f31c7a290264a5b449e45544d', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:20:31', '2020-03-06 03:20:31', '2021-03-05 20:20:31'),
('1fcf336527cf76acac373daaf9be2dbfff0ed254cce5b650b0df664fe2deea4ee1c8c80a39d92150', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:12:35', '2020-03-10 02:12:35', '2021-03-09 19:12:35'),
('1fdb6dcd5a78328b0ec73d81fed9b33c6dadba27f25ba5f21c9843e5e62fcb99cb7253d1f7a79a21', 1, 1, 'mobile', '[]', 0, '2019-11-28 23:06:35', '2019-11-28 23:06:35', '2020-11-28 16:06:35'),
('1fe28519db1e4be3eeda766967029cec8e8d98a721282f857360f4a64500a63f55407f055cacdb2a', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:35:38', '2020-03-10 01:35:38', '2021-03-09 18:35:38'),
('2019fd6a637355ceb35bc18d4cc7790a9c43d086f177fdb4e06f2e377cd137b96bc49b415d58bce5', 66, 1, 'mobile', '[]', 1, '2020-01-26 07:05:11', '2020-01-26 07:05:11', '2021-01-26 00:05:11'),
('2025187468c0b0cb1793a063e5a4ae5325000bec2a9b57aa7d98fc2ce30c589cf5404ea8ae0012da', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:17:51', '2020-03-11 19:17:51', '2021-03-11 12:17:51'),
('205ca54c4f935416b2f338595729dc58cf4c0c4a6be8fcadadc261e5478a2bac62f9fa2884a5856c', 3, 1, 'mobile', '[]', 0, '2019-12-01 03:33:43', '2019-12-01 03:33:43', '2020-11-30 20:33:43'),
('2091665814682758dc5c76177dab31fa05014c972210fc84cc416632d2a6cdbe11a5564e8da4f249', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:58:53', '2020-03-11 18:58:53', '2021-03-11 11:58:53'),
('20a4a55245cfc9158c4633922fad739800df90c55bb0d7ed493a029c9cf0712e51b20b9cae7e8b94', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:57:02', '2020-03-05 19:57:02', '2021-03-05 12:57:02'),
('20c960366b244d3653f1f9dfa00df5af8d819ee1faf95455611da253d3e20ea993988678eedf1e97', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:30:12', '2020-03-10 17:30:12', '2021-03-10 10:30:12'),
('2108c1c4f16511349ea611f8e100487ad762aaa28d8e4a98ecb0ea088a78ec456d21f0ce26d4b909', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:29:15', '2020-03-04 17:29:15', '2021-03-04 10:29:15'),
('211b9397373274a9c6aea015dfb6ba57595a2f6c9b6ccf063524a1466cb3e2233e19922462d2b2bd', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:17:04', '2020-03-07 21:17:04', '2021-03-07 14:17:04'),
('215672da63241eb44a442fb042d6a0f07360ec39ca4ccc3f11e0cf00edab1db7928e31bc3da69874', 8, 1, 'mobile', '[]', 1, '2019-12-10 23:24:53', '2019-12-10 23:24:53', '2020-12-10 16:24:53'),
('2175a48591c035c53333eee2198e3143479ab47ce24f1e93a87341eb54e02146e06a75741a8a8066', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:20:56', '2020-03-10 19:20:56', '2021-03-10 12:20:56'),
('2184116f15fc0c4342655c4dc38614ce18614827cabbb5785d9886cd8d1a852e6a00c8f0a7f9d6d2', 197, 1, 'mobile', '[]', 0, '2020-01-29 03:19:30', '2020-01-29 03:19:30', '2021-01-28 20:19:30'),
('221dd0ba13a56ca6e7fdb8e299e1bc464bc52beb72e755d892c3b0edebef7a6fffc491c38efbd484', 77, 1, 'mobile', '[]', 0, '2020-01-26 17:36:40', '2020-01-26 17:36:40', '2021-01-26 10:36:40'),
('222677fbc24985c4d7d0b290bc9620890ca5a35f2f218e305ce6b791b81387a62614e6a695a115a3', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:18:14', '2020-03-09 14:18:14', '2021-03-09 07:18:14'),
('2247c9d5e6d43d08190e1ae62515022347b333ec670bba1154d7da5d088741e211dca2e475d93c48', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:20:01', '2020-03-04 16:20:01', '2021-03-04 09:20:01'),
('226adb10e61fd96c3346b6c8c9bab627b1076a038ad1af53fddc3a72c669e36941f21be9251f627d', 1, 1, 'mobile', '[]', 0, '2020-03-03 18:45:22', '2020-03-03 18:45:22', '2021-03-03 11:45:22'),
('22e29f578db1e94f197e32320ab1124b05ae3438cd593c3265a6040b01a865dd9cb73c453c3bc87b', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:54:58', '2020-03-10 03:54:58', '2021-03-09 20:54:58'),
('2397a9a94b7919a6215924f60b1f74f4a8e56089b6bb53f14a5627670c100813e78a5fb74419d78f', 1, 1, 'mobile', '[]', 1, '2019-11-27 07:23:56', '2019-11-27 07:23:56', '2020-11-27 00:23:56'),
('23dec936a5c9442b2580a56754b72451cf151db31e13105b5171b6f0ec765f6bf482e2997006d5a0', 187, 1, 'mobile', '[]', 0, '2020-01-29 04:28:38', '2020-01-29 04:28:38', '2021-01-28 21:28:38'),
('23ed4802680a45d226b51b77988211aa7125366c8b51f2957909b04c16e0508c7404f53b17a92808', 53, 1, 'mobile', '[]', 0, '2020-01-26 01:37:48', '2020-01-26 01:37:48', '2021-01-25 18:37:48'),
('2418ca002a1d38d7f69733ae694f0aaf0df5c3f5217098fe14f34060133f25992acbe248c9ca439a', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:09:46', '2020-03-10 02:09:46', '2021-03-09 19:09:46'),
('243040ae0ef374e399d88c6678cd4bc17f19d674899e70e79bde044f6bcf6958a1e24572240b7988', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:30:28', '2020-03-07 21:30:28', '2021-03-07 14:30:28'),
('244825a3f66513696d2fa9fc49921ec4a5b06546fd636249ee033bd98952cecbc25a0bd8948afe7d', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:40:13', '2020-03-05 05:40:13', '2021-03-04 22:40:13'),
('2457d1ce9b4834005e3eead8c53493dc3b09ba08cb9415993dcad07a53ee2a1861d44539af902605', 6, 1, 'mobile', '[]', 0, '2019-11-29 21:39:50', '2019-11-29 21:39:50', '2020-11-29 14:39:50'),
('2481f0b8b91b68b4d5b415e4282af026c71ba9431559add18694bec38637ea9fdb3cde9dd725646b', 250, 1, 'mobile', '[]', 0, '2020-01-30 03:02:35', '2020-01-30 03:02:35', '2021-01-29 20:02:35'),
('248c83b98c4ff81eb39d46207c0c81b6dd4b2a2fb29fc355eb8a3f1bbbff0155edfb607e0ac91c34', 226, 1, 'mobile', '[]', 0, '2020-01-29 19:13:54', '2020-01-29 19:13:54', '2021-01-29 12:13:54'),
('24cfb1c38ce1fcca37b37fe7372ffc58e15f1d0943a54d499240d3d25508dbcc3a60233c12002be8', 174, 1, 'mobile', '[]', 0, '2020-01-28 05:59:16', '2020-01-28 05:59:16', '2021-01-27 22:59:16'),
('24da7ff6dc27b5fd133ee9f23e5c6206626513f6d14ab2de04e693f4dd215fd1317fc6c45322e63d', 3, 1, 'mobile', '[]', 0, '2019-12-15 22:25:19', '2019-12-15 22:25:19', '2020-12-15 15:25:19'),
('2527ff7f6e1100dd4c2ef09cba31ead8344af38b8259d2049f7d3e927383e15bee1c4389f646c58b', 303, 1, 'mobile', '[]', 0, '2020-01-30 12:59:47', '2020-01-30 12:59:47', '2021-01-30 05:59:47'),
('2566722c1ee0fa0f0900ba21be2b6eaa3dfb04e94d06809bb2462094622f5a7e94367a0e97b5e254', 3, 1, 'mobile', '[]', 1, '2019-11-28 16:41:54', '2019-11-28 16:41:54', '2020-11-28 09:41:54'),
('2573a73ec2306383aeb7bc5ccf0989955efcd822fbb53ac03ef7d1c28aae437ed2442cd49047680c', 1, 1, 'mobile', '[]', 0, '2019-12-31 03:38:33', '2019-12-31 03:38:33', '2020-12-30 20:38:33'),
('257d3b42479da4a73d850f20bc893e019e3579cff798a1a0bef9b36d6977aba3077c792b8ad60949', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:37:59', '2020-03-09 12:37:59', '2021-03-09 05:37:59'),
('2582e9efaf538bf646d2c6c88e2c2a66a42beb8fad8f8b3d557a051c81e97b77ff5851216f81c013', 1, 1, 'mobile', '[]', 0, '2020-02-24 04:53:03', '2020-02-24 04:53:03', '2021-02-23 21:53:03'),
('258e74a7070c93b0ada2fec3f4e93991e2e4a59487076c56c8fc607c314a81d5c8fab54608bf1902', 1, 1, 'mobile', '[]', 0, '2020-03-03 16:05:49', '2020-03-03 16:05:49', '2021-03-03 09:05:49'),
('25a7c49e9a7520daea2513bebb71a8db4fbe63378f730909d480d5e1611ac87d34f9b3c59400aece', 202, 1, 'mobile', '[]', 0, '2020-01-29 04:50:22', '2020-01-29 04:50:22', '2021-01-28 21:50:22'),
('25ce9a349355a1e1496466e8588259afa555777267c275df6d6aad92423cf320c28d7037a6e491ec', 76, 1, 'mobile', '[]', 0, '2020-01-26 17:34:40', '2020-01-26 17:34:40', '2021-01-26 10:34:40'),
('260b91558c306864309934f8229901fa880a15a19c9f8e2369488302b4fc9d370b90c038c23dc3ec', 12, 1, 'mobile', '[]', 1, '2019-12-11 17:53:08', '2019-12-11 17:53:08', '2020-12-11 10:53:08'),
('26148ec72a4e97fceff75329540c6ed1b3818d726f792044c74fb31536c8bb8d65a25be20d0f6da6', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:15:27', '2020-03-10 15:15:27', '2021-03-10 08:15:27'),
('26312308abf93bf02a2a462acdd4995cac425c3c7a95d9ec49c4fcff80177901c42719ea2844c2e1', 274, 1, 'mobile', '[]', 0, '2020-01-30 05:38:30', '2020-01-30 05:38:30', '2021-01-29 22:38:30'),
('265df8d4e0fd2acefe12ed1c7cf31b64cab0ed4f311e606b75c77d93dfc42e1936f12356e5de72e7', 3, 1, 'mobile', '[]', 1, '2019-12-13 02:03:44', '2019-12-13 02:03:44', '2020-12-12 19:03:44'),
('2680b6ca7fe885628478f6c3ce657b877365c02c0454eaf3dad844661c7925a604f1167d3c47faaa', 285, 1, 'mobile', '[]', 0, '2020-01-30 06:28:30', '2020-01-30 06:28:30', '2021-01-29 23:28:30'),
('26a3fe58a27c04bbd7aa3a2c597d632d7714864e4fc279e1b5b7be47e54df0d1bbca4ebd05e1667d', 3, 1, 'mobile', '[]', 0, '2019-12-02 17:45:27', '2019-12-02 17:45:27', '2020-12-02 10:45:27'),
('26b3b85d1264c0a1565addefcbb3302dd444f11bd2fa88e98b8a14265f61c5c6f2eaf66ddabf3555', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:41:17', '2020-03-05 08:41:17', '2021-03-05 01:41:17'),
('26d712f452852c18390ad1f2f90393c68209a4011fec6d05b6fa8c7aef5da09e7b5e6a391bc5fdcf', 8, 1, 'mobile', '[]', 1, '2020-01-02 20:46:40', '2020-01-02 20:46:40', '2021-01-02 13:46:40'),
('26dc8c9bea963941263d268547e8fdb8587dcc3103560052aeff25db21b5d1da27739c76830d4227', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:13:51', '2020-03-10 02:13:51', '2021-03-09 19:13:51'),
('272bef18247dec2db98b020232430e558f727f194b1640cb1aea4ca3cb90fee12a57a9de4c421dc5', 340, 1, 'mobile', '[]', 0, '2020-02-04 17:58:54', '2020-02-04 17:58:54', '2021-02-04 10:58:54'),
('27d92f16e0430798e4cd4057160cbb327c5e506acdb1c5ad3f9093374f4c69454e75a0ade9fb6efa', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:00:46', '2020-03-08 00:00:46', '2021-03-07 17:00:46'),
('27dc0c6fd9ccaa4af2faaa82cfde4099e3a8dc99395b31195b77af7121c92602ade8f6ce8e1306e1', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:09:29', '2020-03-04 17:09:29', '2021-03-04 10:09:29'),
('282c51096ff19a47e3f47358f7b9b67758c5d57305391dbfc96958b6cf3248c1309a2b94d3a6ba8c', 2, 1, 'mobile', '[]', 0, '2019-12-02 18:46:59', '2019-12-02 18:46:59', '2020-12-02 11:46:59'),
('285e45c09276a86252b3a92ec48dfffa885f2c2ba26ef9c62ad4854bc4a9028f4d8f8865487e0338', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:21:52', '2020-03-07 21:21:52', '2021-03-07 14:21:52'),
('2881483c81d4c24ee07d2549e21ef09a143ac7d0d4665148a724aa668a3d618cb3da9ffc8564444a', 3, 1, 'mobile', '[]', 0, '2019-12-01 03:37:20', '2019-12-01 03:37:20', '2020-11-30 20:37:20'),
('28b4c93b760344ee5e97f533f6cca3e5d3ad3b040340c60878a573cbdcc8c42cd82fa9581ded7865', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:04:09', '2020-03-10 02:04:09', '2021-03-09 19:04:09'),
('28d8376542099c6f5088d01f0ee2aab016841951c223dea2a7013bb05f22d8147a9a01d7b9b303dd', 306, 1, 'mobile', '[]', 0, '2020-01-30 13:33:34', '2020-01-30 13:33:34', '2021-01-30 06:33:34'),
('28da390ecbeaaa9dc9d4cf793298233f094c932641f8b2eaf70c220639994be6726eb64fec495236', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:13:52', '2020-03-10 19:13:52', '2021-03-10 12:13:52'),
('2920b94517a87d24f6b654a21fa62142f35c776af164570ca099b3951d90c20639eee969c2d2d953', 8, 1, 'mobile', '[]', 1, '2020-01-28 18:24:06', '2020-01-28 18:24:06', '2021-01-28 11:24:06'),
('298e7fd30165abf64cb6aca87e5f035c425563cb2e1b213400b96c3b489d5fd004a521994a1fcc9a', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:38:56', '2020-03-07 20:38:56', '2021-03-07 13:38:56'),
('29e4da31243c8ed055ca38420c4a0d468ef8fde47fee0d29a908ef55b82206564d998dd3ce930f9f', 1, 1, 'mobile', '[]', 0, '2019-12-02 18:17:13', '2019-12-02 18:17:13', '2020-12-02 11:17:13'),
('29fdf5beb404605aeaf3da78fe05650f2a1e71f7509e4247bb91409d6ddba47372a05ccba8961e66', 263, 1, 'mobile', '[]', 0, '2020-01-30 04:12:17', '2020-01-30 04:12:17', '2021-01-29 21:12:17'),
('2a273d84231181857b4a9c91756a64928b0d7ef16e0816ce1266e3c681a886a5127c254377e7afb9', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:21:13', '2020-03-10 19:21:13', '2021-03-10 12:21:13'),
('2a2f1e9c70ed53d8454ab3090f6437375b2cc55a05849566015fb063f9bc80c2a9bd045c2477ab1a', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:44:21', '2020-03-07 20:44:21', '2021-03-07 13:44:21'),
('2a442c5f8fecb9b7ad06be28d1c8c9b432cac5c8fcf91aeea89443339184d50d4279ce8ea302f123', 1, 1, 'mobile', '[]', 0, '2020-03-07 17:42:11', '2020-03-07 17:42:11', '2021-03-07 10:42:11'),
('2a6228962938ddd0032cacf1db5ecfe8ebef49e94fdf403b5583c5f74c8e049f94bda92f0ce7d394', 1, 1, 'mobile', '[]', 1, '2019-11-27 07:54:01', '2019-11-27 07:54:01', '2020-11-27 00:54:01'),
('2b18bfe1dc47658485deb8b1e6ce9da3c73d5229f4d3f8a9d3949c5727314da5aaa2e700f6a5e908', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:43:53', '2020-03-04 17:43:53', '2021-03-04 10:43:53'),
('2bee4a14ae1fbf6317e85c95beee0042b698b6bb2d5ef375298c043d2f5c1ee3cb44787c79d8fa28', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:07:30', '2020-03-07 22:07:30', '2021-03-07 15:07:30'),
('2c8653af4e84b1435a017d8c2c01c1f34bc07a19c775d6bff6031221e70fb840cd1a1140f5dacc0c', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:08:02', '2020-03-10 20:08:02', '2021-03-10 13:08:02'),
('2c8d897352d62da437cdc0ed97f38b48bd5abac8acc6ae02f549def479fd4afb7b5329414780e7cf', 3, 1, 'mobile', '[]', 1, '2019-11-27 18:32:13', '2019-11-27 18:32:13', '2020-11-27 11:32:13'),
('2ca4bc0d2682f4db901d26fd9e2f84803cf2eb580d6db81b25d70da960a5aac1b22a1c998b434944', 168, 1, 'mobile', '[]', 0, '2020-01-28 04:50:48', '2020-01-28 04:50:48', '2021-01-27 21:50:48'),
('2cb17aee5f80b3a650c8cd0a203520a74a9842213458e9e8f627a96bf66f14d4f3dd331dd7541e32', 1, 1, 'mobile', '[]', 0, '2020-03-29 18:45:48', '2020-03-29 18:45:48', '2021-03-29 11:45:48'),
('2d1188384c6b0bf40047bcd0e254b19ffd677f22ed85b2be664edd3fb536831092a706d5e46017e9', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:44:20', '2020-03-04 20:44:20', '2021-03-04 13:44:20'),
('2d2a675029eb11991949217f2f69aca2377ea496765dcbe740e358e304b5a354c2f29cd1f9fb628d', 159, 1, 'mobile', '[]', 0, '2020-01-28 00:37:20', '2020-01-28 00:37:20', '2021-01-27 17:37:20'),
('2d5b904fc2743273776174a82502702f68b504c05b876b06a2e5a846fdf72fab31546d269a6ac85d', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:24:07', '2020-03-04 16:24:07', '2021-03-04 09:24:07'),
('2ddcae62c0112d21421ae7846808f7a3a6ca9bf3967fd3c117968f809f4cdcc79234bfda252c4495', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:25:32', '2020-03-11 18:25:32', '2021-03-11 11:25:32'),
('2e08bf79ba53f3c4c2673eb9fb9d48ca923d07675f4237960ba87d759cb365481c27bee647801f9e', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:15:11', '2020-03-07 22:15:11', '2021-03-07 15:15:11'),
('2e1d78e06fe54e4b585050ea0746dea7fa6b57f49e87a3c360b1edae402b1a9cd1added019861c6a', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:13:28', '2020-03-07 20:13:28', '2021-03-07 13:13:28'),
('2e461764ee5c9a6478292571c50a3d8984895af6ec1d72956cdcbef838e283733f93a3e07bda2762', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:37:25', '2020-03-10 16:37:25', '2021-03-10 09:37:25'),
('2e4b242447b4891cce881b4ffa68560aafad6978e6390a97b4464f7d026053abc4baf04ae201ca33', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:16:29', '2020-03-11 14:16:29', '2021-03-11 07:16:29'),
('2e5ef10a1183d31fec2991c8ff2c99d3d67c6cde65adc898b8aaee7003dbf75683eb9c87e2a4fe43', 3, 1, 'mobile', '[]', 0, '2019-12-01 19:43:37', '2019-12-01 19:43:37', '2020-12-01 12:43:37'),
('2e6dc015181457e9faad20edc2f3c505be9be44c45451397644dfe771af494c7ab3d2d981adbf343', 1, 1, 'mobile', '[]', 0, '2020-03-16 07:22:15', '2020-03-16 07:22:15', '2021-03-16 00:22:15'),
('2f395e225fef87d643846f1713c077c87a57b6f87b21ee017cc3cd6817c2d84e8a21c6881a214364', 78, 1, 'mobile', '[]', 0, '2020-01-26 17:58:26', '2020-01-26 17:58:26', '2021-01-26 10:58:26'),
('2f675b1d00caacb79248186d7a74bb17cd64e76b13582d8a0f63b747def804015d3c3f5575189c67', 125, 1, 'mobile', '[]', 0, '2020-01-27 16:28:23', '2020-01-27 16:28:23', '2021-01-27 09:28:23'),
('2f68fa3cc115df5bbddd1ced3bc7717007b9964435f8d698595afe7f99426c606449216a9bc135ff', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:32:30', '2020-03-07 22:32:30', '2021-03-07 15:32:30'),
('2f697e1da44b8ead480af93fd574e3bba8b28efc8cb2da8c3c5c3cbcf9d2f1f534adb55e715f6788', 1, 1, 'mobile', '[]', 0, '2020-03-05 22:09:32', '2020-03-05 22:09:32', '2021-03-05 15:09:32'),
('2f7a89f5ad29d3b2e2c8df38d663fbe7f7159e03e35b7a00e40791fa6d1d0521750359d168557aca', 67, 1, 'mobile', '[]', 0, '2020-01-26 07:23:05', '2020-01-26 07:23:05', '2021-01-26 00:23:05'),
('3019eca7374f8d083812f36cf3b9a921e4e1974d5298d8a5afd4faa6b2ffcccb22fe493625aa4962', 1, 1, 'mobile', '[]', 0, '2020-03-13 01:17:53', '2020-03-13 01:17:53', '2021-03-12 18:17:53'),
('301a1c6e45643ba60d0a4a5bd87d9740e38454467a8bfd5f46d3e0bc1f48dd7f0c7620d5691f1d7b', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:29:14', '2020-03-07 22:29:14', '2021-03-07 15:29:14'),
('303ec394f5a3a45fd27e2b6a906fc357fb53829d001d7cfc9fceabe855ba8eec9b77badda97f403f', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:15:24', '2020-03-03 21:15:24', '2021-03-03 14:15:24'),
('3051187043dbbfd36b21e5ea8765ad053aba66eb4cdd1152de601c7fe58549d4a6069c52492bcfbc', 1, 1, 'mobile', '[]', 0, '2020-03-17 22:08:11', '2020-03-17 22:08:11', '2021-03-17 15:08:11'),
('30885a5ea08616f73b6cf788ee3d5910a9b7f3578508a9f89752b5550ee5101a05b3cf4fe388c320', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:36:40', '2020-03-11 18:36:40', '2021-03-11 11:36:40'),
('308eba790ec4a7bfc2df75c7d90aaaea5141b069ea599c693626cf40dc85d101a14b7b02cad13603', 300, 1, 'mobile', '[]', 1, '2020-01-30 08:33:59', '2020-01-30 08:33:59', '2021-01-30 01:33:59'),
('30a9a3816146dee437fea6e1fbeb9c33012f1f88e85c15256ce11ce9ace4ad786ce2ea09df8f593e', 1, 1, 'mobile', '[]', 0, '2020-03-05 18:59:33', '2020-03-05 18:59:33', '2021-03-05 11:59:33'),
('30ec20597e2226d65c6c6f23605d69777488dedd1c733ebb8d838b38fdb6e0b10d8a198fdfc908b9', 268, 1, 'mobile', '[]', 0, '2020-01-30 04:44:28', '2020-01-30 04:44:28', '2021-01-29 21:44:28'),
('30ecadf1975afefb578fc42e644945ed0f7f4cbec3ac55c3f65015aef0a10762a2f03049bea48046', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:32:11', '2020-03-05 03:32:11', '2021-03-04 20:32:11'),
('31600fb43d476b5f1aa74c654a74ea5ee5f6125c1da28889e83b9cce92037175afca3deb8003d350', 1, 1, 'mobile', '[]', 0, '2020-03-05 17:26:02', '2020-03-05 17:26:02', '2021-03-05 10:26:02'),
('31650c209522ac01e2893a23dd44bc19e90d9684cc2b388fa3037f9938c2b3d2594bc55b4615d3de', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:21:26', '2020-03-10 19:21:26', '2021-03-10 12:21:26'),
('318f995838fea389ec976d486733f368d4ce8c039926992724f482a818ada657127a1285e669e60b', 160, 1, 'mobile', '[]', 0, '2020-01-28 02:19:57', '2020-01-28 02:19:57', '2021-01-27 19:19:57'),
('31de0a0f2e90bcb64e1fa09c551cea94a99be883829728f61398a508c3fc0e2eb675d80316073264', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:31:09', '2020-03-10 01:31:09', '2021-03-09 18:31:09'),
('31e662decfa7242c1c83fd25446735b4175432ae588530440a8c67b1043e31d8c7f67b776cee80a4', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:44:33', '2020-03-07 21:44:33', '2021-03-07 14:44:33'),
('31f639c92eed0cee6d74c562cf9ab9ea0501e343c62a6eef2ebbbd071a42e927ad08966cadc2d486', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:36:54', '2020-03-05 05:36:54', '2021-03-04 22:36:54'),
('320cdd6db4ba01fc13107592da1baaf0806ff8a270849de967f7126b7ccea710a0d186ebcee43ed1', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:38:14', '2020-03-04 19:38:14', '2021-03-04 12:38:14'),
('32b5b8d78e67911a667e7d7098fd695d38260b8b772a6c0570305809fa301e085f88fa931e303891', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:08:26', '2020-03-10 19:08:26', '2021-03-10 12:08:26'),
('32c72a87e02cb45a08ca9f280995820a310cf62ea23654dcbb4bcb16c9f92636875a7adb0b3e3029', 1, 1, 'mobile', '[]', 0, '2020-03-05 07:02:29', '2020-03-05 07:02:29', '2021-03-05 00:02:29'),
('3305a09e19701f5fae82919bfa070e62763519ffc2b2c0c14b35da1e80bc89eaa2fdfe366223ca0f', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:11:10', '2020-03-03 21:11:10', '2021-03-03 14:11:10'),
('33dbcfa130ab380c09d47f0490b1ef825aa7b65aa8bd08e25ea831bcfe44d204f2a7011c040ede63', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:16:08', '2020-03-07 23:16:08', '2021-03-07 16:16:08'),
('33ffbd574b3181a6f9b62057084196aafc0bfed26417f6b317c7c5b029cc2383146ae8fb4138466d', 162, 1, 'mobile', '[]', 0, '2020-01-28 03:34:35', '2020-01-28 03:34:35', '2021-01-27 20:34:35'),
('343ecb269db7054c21df0c7709464b274421745a9b76ea3c660ad2066990b37a3b4c74b8c7478c7d', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:54:19', '2020-03-05 06:54:19', '2021-03-04 23:54:19'),
('347b7f8ac471f2ef95bc09300bbd2d258d108fb8fa8030cb8bfa42070db1b7492da49469272c601b', 22, 1, 'mobile', '[]', 1, '2020-01-08 18:29:11', '2020-01-08 18:29:11', '2021-01-08 11:29:11'),
('348240e31a8ada7adcf77ed72b0bd557ddb5cf68ba2ecd1c113f02624fb903350989edad3e62fb68', 3, 1, 'mobile', '[]', 1, '2019-11-29 15:52:06', '2019-11-29 15:52:06', '2020-11-29 08:52:06');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3484d05d6f9784435c2baf2a6f8649ac0b0726e5f37aaae50f948b89ed06d22c31de60535ebabf37', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:52:57', '2020-03-10 20:52:57', '2021-03-10 13:52:57'),
('348b2212309d828097cc15cf3841f94a16e55cb25cdbb6084dc5252aed99b140e0fea67c4fab297c', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:59:12', '2020-03-06 03:59:12', '2021-03-05 20:59:12'),
('34d0e9251dd40d1c1b0b7ba6742a4f33f64322e4863345c080b3fa92b477c00bceb85d84646751a5', 211, 1, 'mobile', '[]', 0, '2020-01-29 10:15:45', '2020-01-29 10:15:45', '2021-01-29 03:15:45'),
('3537c7f991129782edfe4bc8d63757653d25265856cae6d97116dad9c9e74af40e75c9baac6b3a26', 234, 1, 'mobile', '[]', 0, '2020-01-29 23:11:29', '2020-01-29 23:11:29', '2021-01-29 16:11:29'),
('355755d96810dc327a8266e0296f55a680f6899aaa6d42d681a88ab8a0e19b6a1b645a9f92291e05', 1, 1, 'mobile', '[]', 0, '2020-03-06 02:59:05', '2020-03-06 02:59:05', '2021-03-05 19:59:05'),
('357ff91bdbf99cf115d8406215a2e7e43f023cd94a72191465da38db59334613a05ec562dc0a17f6', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:12:58', '2020-03-11 19:12:58', '2021-03-11 12:12:58'),
('359a56c59f92e06df41201d9a9810a5792917ff30a7e688723c3b97dfb5dfa7f3a48b8980b3298cb', 305, 1, 'mobile', '[]', 0, '2020-01-30 13:14:14', '2020-01-30 13:14:14', '2021-01-30 06:14:14'),
('35ab4fe1187bfc948a1cfc41e25517c34e1e5cdf2b4e8544581039d87fa9be0d2e16af1c19a4b2d6', 84, 1, 'mobile', '[]', 0, '2020-01-26 19:42:18', '2020-01-26 19:42:18', '2021-01-26 12:42:18'),
('35abeda19300f80a4aa1a084128128ecc27fd961019a4b609ef94f88bbd9797559abb396ec2a2b98', 210, 1, 'mobile', '[]', 0, '2020-01-29 08:21:18', '2020-01-29 08:21:18', '2021-01-29 01:21:18'),
('36006725bd1f20c5a076854777ed0b55fc4c758fb6fa7cb90042bfdaa2ed2946f63587c4cd476a0f', 259, 1, 'mobile', '[]', 0, '2020-01-30 04:05:38', '2020-01-30 04:05:38', '2021-01-29 21:05:38'),
('36118866aea5bd9fecb5f6ffc66dcb97323747a0261a1c12bc56c3ae853926f8715d91504c0d800e', 70, 1, 'mobile', '[]', 0, '2020-01-26 09:11:10', '2020-01-26 09:11:10', '2021-01-26 02:11:10'),
('361b9a081b53aeb41432d1e583e6ea9047c46ef3a178b03fc2a920c4be49aba652d7211e78854181', 313, 1, 'mobile', '[]', 0, '2020-01-30 14:53:59', '2020-01-30 14:53:59', '2021-01-30 07:53:59'),
('36380d297629aed47f5a0a379e6fc9a9586b7a77f7e6526de5008beb1c74857cec239937138cb655', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:05:55', '2020-03-05 19:05:55', '2021-03-05 12:05:55'),
('36396298b17266b8aafbfdc3ef7bf0dd976b30890fabb31f60407285c5626d802c85662c94531a59', 136, 1, 'mobile', '[]', 0, '2020-01-27 17:26:05', '2020-01-27 17:26:05', '2021-01-27 10:26:05'),
('3697a03205b6c2cde3bfd048ea577759f1e83a108acc8e232b75e84481b0c43f683940f5e41cb79b', 229, 1, 'mobile', '[]', 0, '2020-01-29 19:29:01', '2020-01-29 19:29:01', '2021-01-29 12:29:01'),
('36b181a69065f691fe9ee689e00ba906968f137fef7673e7e65891d35ebce92ff3803837cb7e701e', 106, 1, 'mobile', '[]', 0, '2020-01-27 05:50:25', '2020-01-27 05:50:25', '2021-01-26 22:50:25'),
('36b3bed9a92e24208eaba40c09053f2e1c665c63ba875d7cfaca3d6ed50518a22afd85bc1f18f499', 58, 1, 'mobile', '[]', 0, '2020-01-26 04:27:45', '2020-01-26 04:27:45', '2021-01-25 21:27:45'),
('36e5cb2a7884888dcc50e736671278b8ad9b3febfcb0785b7ae62c2b016c0d81895671aff50cbb9f', 1, 1, 'mobile', '[]', 0, '2020-03-03 16:38:46', '2020-03-03 16:38:46', '2021-03-03 09:38:46'),
('37466e03465d4ec9a46bd5d8e814fa2684705e63a6dbcdd56ea6ed605277eeedf38b2646fb8aa167', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:39:03', '2020-03-05 08:39:03', '2021-03-05 01:39:03'),
('3791055c2912bac07cbe1a5a6aaf1c7419a3782c6013c6ad271ebde0c03ffbd204f17bfac8a46c07', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:54:26', '2020-03-07 23:54:26', '2021-03-07 16:54:26'),
('383611da3a484fad577179653d132a5c62f8d46b425349f2aceb75074a62335131379269d48ed23d', 3, 1, 'mobile', '[]', 1, '2019-12-12 17:42:13', '2019-12-12 17:42:13', '2020-12-12 10:42:13'),
('38ae751e485613d31dc2c659c1a74941c2918dbfe2e712a5906d046bf8fab90bab691877dac8609d', 27, 1, 'mobile', '[]', 0, '2020-01-21 02:19:09', '2020-01-21 02:19:09', '2021-01-20 19:19:09'),
('38b22fb368bd0d95ead38e58a3626ae44611385cf2456d597987e33160761b578d826422a185ad15', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:41:14', '2020-03-10 16:41:14', '2021-03-10 09:41:14'),
('38d63d4c3fcdf1e71aa54db4312c9e96334f0e7eb1814108f9563a4172d64779b2d4f8013e464cce', 8, 1, 'mobile', '[]', 1, '2020-01-02 20:34:00', '2020-01-02 20:34:00', '2021-01-02 13:34:00'),
('38e9cfb73081d4bfc799d789aef876d99056c3b558407e080d36ab58cc7c3dbaf9978fbab338e059', 241, 1, 'mobile', '[]', 0, '2020-01-30 00:11:22', '2020-01-30 00:11:22', '2021-01-29 17:11:22'),
('391623b185ec837cd136e5fc4a1ec8e310b3c393c0baba6a1dd0b199cfab8578cd6841c85e49250b', 201, 1, 'mobile', '[]', 0, '2020-01-29 04:37:38', '2020-01-29 04:37:38', '2021-01-28 21:37:38'),
('396d14627d821a7c689ffc602d01c0be694ab0794ab252ddc258efd0a8e6b71e6297aabdfd1bc44f', 152, 1, 'mobile', '[]', 0, '2020-01-27 20:27:02', '2020-01-27 20:27:02', '2021-01-27 13:27:02'),
('39a297dee91fabd0583e89439d359c4542cdaa63227d660ac9463fbe87251a96d72501338bb9bcf8', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:41:47', '2020-03-09 01:41:47', '2021-03-08 18:41:47'),
('39dc30aae122cd53ec5dca9cd56b5fa5cbeffa8c55fe9bd1dbe0953d4a3c38b7edb334e77f291de4', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:39:53', '2020-03-10 01:39:53', '2021-03-09 18:39:53'),
('3a1b53c5a968f671208f371d103059f2f4a39ddf935a5d1ec7da208fcd3ee904ff4ceab91e9ac48b', 1, 1, 'mobile', '[]', 0, '2020-03-11 00:17:51', '2020-03-11 00:17:51', '2021-03-10 17:17:51'),
('3a1e03eab8d2198a410c51dad682dfda18e83067071d9f87fbfd4f4812479d0a3b202691a53d4b95', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:59:15', '2020-03-10 02:59:15', '2021-03-09 19:59:15'),
('3a55717d433a4154fb8d1dc601fe4a5521209274cac4b7a968de90ca06d4a7f68de9fa2e6317372c', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:35:01', '2020-03-05 05:35:01', '2021-03-04 22:35:01'),
('3a57012abc43668d170bce6cc406f7295a00f98aae882d9009801abcd3c2d256daf40446eacfb249', 8, 1, 'mobile', '[]', 0, '2020-01-28 18:22:55', '2020-01-28 18:22:55', '2021-01-28 11:22:55'),
('3a7bc75473513fae4f2a0a5027a81bb23d952885f6b2145468d298d10f5ca680323fa338c93cd9ba', 231, 1, 'mobile', '[]', 0, '2020-01-29 21:46:43', '2020-01-29 21:46:43', '2021-01-29 14:46:43'),
('3a80302edeef8519516e7262fdbdb1c1bbb51d0f85a643ae418c0cac35520036b2c057e74cdea480', 205, 1, 'mobile', '[]', 1, '2020-01-29 05:08:15', '2020-01-29 05:08:15', '2021-01-28 22:08:15'),
('3ad60adacf15814a87472b12df37431cbcaf20913116f240e89d9b54a43fd49564c4b09eb8b18c3e', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:25:51', '2020-03-05 19:25:51', '2021-03-05 12:25:51'),
('3b1f7ed7128b9cd55314670c13cde1fb014595ba8502ce0cad775ad24f4b6a415081bfaa6f9c05ba', 278, 1, 'mobile', '[]', 0, '2020-01-30 06:02:08', '2020-01-30 06:02:08', '2021-01-29 23:02:08'),
('3b2d3eddf0889998de28cfb304ede04d3a3cae190b4a7cae68de93f39adabad4c8d22ac8657d4c2c', 335, 1, 'mobile', '[]', 0, '2020-01-30 21:06:30', '2020-01-30 21:06:30', '2021-01-30 14:06:30'),
('3c0cb0d07af3159ec1db74defb6bb57c1ed051c769284bb738cb4605cfa80e2d1e847494dea97761', 1, 1, 'mobile', '[]', 0, '2020-03-31 01:15:33', '2020-03-31 01:15:33', '2021-03-30 18:15:33'),
('3c131ee14aff028e4311e0c565eb2af60226d904cdabce48a838bb57761535131cb791cd11138718', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:41:56', '2020-03-05 06:41:56', '2021-03-04 23:41:56'),
('3c39d3d6a8d1fa8248f456f78b4bf766facd657bd8799b570e3eb9cc96f813df9329a7220f0fbb26', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:12:09', '2020-03-05 05:12:09', '2021-03-04 22:12:09'),
('3c5ee117a60e6817bd31394a187e61e05e5d25fe36c3777107f479548ca8653ea47e76c8d36e1a84', 220, 1, 'mobile', '[]', 0, '2020-01-29 18:00:01', '2020-01-29 18:00:01', '2021-01-29 11:00:01'),
('3c5f04a7fc864e4073c176a24b3ca387e36f2e3d1a6d30763581bfce9d9195ea1c9a3721f4a1f4d9', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:39:09', '2020-03-10 17:39:09', '2021-03-10 10:39:09'),
('3c97dcb78255244152ea8ec9a6ce5ab4abd20a2ca280e667f453050cb5462393f487afc46f2a85f8', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:06:41', '2020-03-04 18:06:41', '2021-03-04 11:06:41'),
('3cd0675809fd35510fcf4ddf9613acc922ce3e37ac766faa7bb403546c2b30895d3b8ad2c0858c1f', 318, 1, 'mobile', '[]', 0, '2020-01-30 15:36:09', '2020-01-30 15:36:09', '2021-01-30 08:36:09'),
('3cd55c8e9063ccbbe0fd65977d3f6790257e710434828bc3053a7c66f5d37a6b39028422ef364cf3', 31, 1, 'mobile', '[]', 0, '2020-01-21 17:15:35', '2020-01-21 17:15:35', '2021-01-21 10:15:35'),
('3cde4f18fb895924a51a247c15baa4bd157c0f02a505105787428fe6e5d67584f1f71e3d225a60b8', 1, 1, 'mobile', '[]', 0, '2020-03-10 18:01:00', '2020-03-10 18:01:00', '2021-03-10 11:01:00'),
('3ce6aaac27a6b247f2bf386f42ceb425655b019bf948e18c9b237bee58a510fe799253b13e528889', 99, 1, 'mobile', '[]', 0, '2020-01-27 00:47:04', '2020-01-27 00:47:04', '2021-01-26 17:47:04'),
('3d127f513557e3905cc3157dd54eac12dd23bdc86a5a6927b6205e8f453558ffb2a81dde0370f77f', 54, 1, 'mobile', '[]', 0, '2020-01-26 01:41:12', '2020-01-26 01:41:12', '2021-01-25 18:41:12'),
('3dbea5ac3649dff2d4688023e0c4f624f1d9a4f4cf0e9b344fa344025fd191f0924ef87653b74ac1', 192, 1, 'mobile', '[]', 0, '2020-01-28 23:19:52', '2020-01-28 23:19:52', '2021-01-28 16:19:52'),
('3de59d8c53e94740fa26df64aaeee166a5111e1c4dcdb41ba0a999bf28162b3334831a9605df3c09', 33, 1, 'mobile', '[]', 0, '2020-01-25 02:16:56', '2020-01-25 02:16:56', '2021-01-24 19:16:56'),
('3df0c9352897dfd3b33fe4b7c4f85fc8437825f5d0c6c9c2e4026f64e5d1f2bd3a26a2e48c3c155b', 36, 1, 'mobile', '[]', 0, '2020-01-25 17:25:57', '2020-01-25 17:25:57', '2021-01-25 10:25:57'),
('3df2575c2310e6829b670dd1133b8d28bbd4f150423811e03583c5d1857d97422ca4b9b7ce171e68', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:57:28', '2020-03-07 22:57:28', '2021-03-07 15:57:28'),
('3e3ffb33796329eceb36533139e76d87a197a6498f4d8285f84c5a2640f4769ca353db9e8f2e6461', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:21:17', '2020-03-10 19:21:17', '2021-03-10 12:21:17'),
('3eadba3c8d3f6e75eb4e6dc14442cdd222d5797be781e374afa1278253ee30ce1c00e8c70f016690', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:03:06', '2020-03-08 00:03:06', '2021-03-07 17:03:06'),
('3ee4c14e9f64504ca07847bc8c613b4fd7f01e565840582e59c3a4ff6b0c4c85e2a4032206c7431e', 293, 1, 'mobile', '[]', 0, '2020-01-30 07:16:03', '2020-01-30 07:16:03', '2021-01-30 00:16:03'),
('3f34ca2debff7b21c8ca01123baa8539bb5f6591db7647ac9666084727e4d3ce7cba4df16bf09795', 8, 1, 'mobile', '[]', 1, '2020-01-02 20:31:49', '2020-01-02 20:31:49', '2021-01-02 13:31:49'),
('3f38e68a6337291cd7bb02017a27a5f9665edb23f2a12f590fa219d8fa706a4ed8dbbbdd38669f27', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:21:11', '2020-03-10 01:21:11', '2021-03-09 18:21:11'),
('3ff7caad3d3a0cbd68be963aaca0018d378ccf901dcf60a4967d65842b1017a6a4d7307a38f253cd', 332, 1, 'mobile', '[]', 0, '2020-01-30 20:43:55', '2020-01-30 20:43:55', '2021-01-30 13:43:55'),
('3ffda3dfb1c42ca2836c187cb398c40a0dabb795ca0b539e52fe924e6ac2789e44a85e0eddb5bb9b', 1, 1, 'mobile', '[]', 0, '2020-03-04 15:01:34', '2020-03-04 15:01:34', '2021-03-04 08:01:34'),
('4020dc15400cecd98d515ac01d4e9f4ca920bcf46280ea5e98b844d7fc0ccc22f023766647f5d478', 5, 1, 'mobile', '[]', 0, '2020-05-07 09:51:30', '2020-05-07 09:51:30', '2021-05-07 02:51:30'),
('4037867f2fc1495ffeb2de3f428217f44ea1caf33bfa10e3c61362dee962facd5e095efa6d4c6866', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:44:26', '2020-03-07 21:44:26', '2021-03-07 14:44:26'),
('408ba4f612daa8ce4616679f2dd25ea39f560703a2e08ac0074fe1634e81f113c8407ccab9b17f43', 177, 1, 'mobile', '[]', 0, '2020-01-28 12:03:37', '2020-01-28 12:03:37', '2021-01-28 05:03:37'),
('40f9f785a94b1361265981e5c8f59692b46a20d71436dcd224f4853f24bdce613a72da5225120d7e', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:09:01', '2020-03-04 18:09:01', '2021-03-04 11:09:01'),
('41212d0d784974f9e324608b074281a908aab11f473404a3f4d8cc314c72267d7a79466257106797', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:05:20', '2020-03-07 02:05:20', '2021-03-06 19:05:20'),
('413d9b54e06dab306b63a0f7092f4aa11c328e2dd26d8e5f1650bb419ba8b1e521ba0b5eff71a91c', 238, 1, 'mobile', '[]', 0, '2020-01-29 23:29:37', '2020-01-29 23:29:37', '2021-01-29 16:29:37'),
('418bfe893237179a96204f439c74b2e235312edeeaf662015cf529719e26505449ca8bbcb41fb467', 98, 1, 'mobile', '[]', 0, '2020-01-27 00:45:37', '2020-01-27 00:45:37', '2021-01-26 17:45:37'),
('41938c9599bbd6bf3ddc18a915e29a5090f287732d2d897e91a45084c1757c929d0998ede712e0ce', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:24:43', '2020-03-07 20:24:43', '2021-03-07 13:24:43'),
('41e7573a2dd54f9316d7289337ec7d096d361f70218470d909a5c1b2dc9b810b218b19813035db2f', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:06:19', '2020-03-07 20:06:19', '2021-03-07 13:06:19'),
('41f1989d971dac5ff207f0f030f66f75b4baeaaadbc50caa517f0e3eca4400f161e9a52c85630d5f', 1, 1, 'mobile', '[]', 0, '2020-03-29 16:26:42', '2020-03-29 16:26:42', '2021-03-29 09:26:42'),
('421bd6fa618997f5826bce4070a94ed692b55111de3211558e584e2cf49433a6c5425d6385e32de0', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:50:10', '2020-03-05 05:50:10', '2021-03-04 22:50:10'),
('42377a51f11fc7f3f189c81b441a299eea7ba7d86ef1d50d2c05974be6309e3262d32ca1d389c285', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:18:21', '2020-03-09 01:18:21', '2021-03-08 18:18:21'),
('42428f25e46b24ad0cb7801eed697ca99a2b337d585a0f292d9d8d41c6bd4285a782a2485d0e5a0e', 40, 1, 'mobile', '[]', 0, '2020-01-25 18:41:24', '2020-01-25 18:41:24', '2021-01-25 11:41:24'),
('4266c1e13924790a78a2718f70b9c957641c5088e69ef3955e11729b56bbc1d1f551268ddc0cbd21', 1, 1, 'mobile', '[]', 0, '2020-03-07 17:30:54', '2020-03-07 17:30:54', '2021-03-07 10:30:54'),
('42abb4bf49451668a5ace675ede6d4eaff3c6b48019fe071197f82bdcaca135460f4e34c62eb47eb', 1, 1, 'mobile', '[]', 0, '2020-03-08 03:37:11', '2020-03-08 03:37:11', '2021-03-07 20:37:11'),
('42bef485716d299ddd421ee16f4b7f2b95a822f0f3a2a250528d4e3bfd6510a2630ac86bdd155be4', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:30:10', '2020-03-07 23:30:10', '2021-03-07 16:30:10'),
('42c1d408ed575968e8b65de371af6949dc982ad9fd47207ee9749e421156c4fe6d4c3c52d3f5f52a', 144, 1, 'mobile', '[]', 0, '2020-01-28 20:26:59', '2020-01-28 20:26:59', '2021-01-28 13:26:59'),
('433325c6434de3cc38a8b35bbb22004405929f0ce2429a9fbbe25642529355c136bcb32e314f233f', 171, 1, 'mobile', '[]', 0, '2020-01-28 05:26:37', '2020-01-28 05:26:37', '2021-01-27 22:26:37'),
('43e63a934242a58f55df5e46d3c7848e5e8a40b36430f75842a85772de4c1f55a634d42a89be103e', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:19:20', '2020-03-07 21:19:20', '2021-03-07 14:19:20'),
('43ea48c7ae90b91b2de68c332cb72460c4e90908076337467dfc742bb622c0a5ff4a5676d28a46d9', 1, 1, 'mobile', '[]', 0, '2020-03-05 09:05:15', '2020-03-05 09:05:15', '2021-03-05 02:05:15'),
('440adb5edfafd30781f11781658261596bd70bb6699e161f3a72f23cb903edb685689ba8523a395e', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:20:51', '2020-03-05 19:20:51', '2021-03-05 12:20:51'),
('44422ac5ce0f597e7923b8e78b12f67d41d74cbf55431c413324133f9c4c939881b5711069f3391e', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:09:56', '2020-03-07 22:09:56', '2021-03-07 15:09:56'),
('4443349ad7072eaea291ca7da189422cce3ac710f1e43abe63f2f74506e78aefad3c9cea67c9da59', 1, 1, 'mobile', '[]', 0, '2020-03-17 22:12:28', '2020-03-17 22:12:28', '2021-03-17 15:12:28'),
('447b07b2aa4e0d2c0c49259f47afed16e297437947f4d92c987b4eaaa083e43db421bfc2df9ca9bb', 224, 1, 'mobile', '[]', 0, '2020-01-29 18:46:34', '2020-01-29 18:46:34', '2021-01-29 11:46:34'),
('44b203ffbeaccda84763e5fa5967137e6ccc737764b30ecba3823fb7be6d7f0cb364846ebb8b1aed', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:47:45', '2020-03-08 17:47:45', '2021-03-08 10:47:45'),
('44b612d907d10f6df8c87d67ec0526b86db939b2ee875d6ab6c385a6aef41878bbea9aabfb9069c0', 2, 1, 'mobile', '[]', 0, '2019-11-28 23:11:52', '2019-11-28 23:11:52', '2020-11-28 16:11:52'),
('44c95c12eefc8622e31ffe07c9eabc879aa5a84fec54f1eb027ee81906237640b1b1ad5f21d4b9c0', 144, 1, 'mobile', '[]', 0, '2020-01-28 20:26:46', '2020-01-28 20:26:46', '2021-01-28 13:26:46'),
('44ea7b5ad2f7eaccb4f937c6d864fdad00ba112e13439c3ad59719a8b0c9a2f78da1956fa06497d8', 190, 1, 'mobile', '[]', 0, '2020-01-28 22:08:08', '2020-01-28 22:08:08', '2021-01-28 15:08:08'),
('4501edb0d7c5729d170d5bf77ff2465e34a48f88d5c2a6fea2773d4c74382ebe8df222678abac64a', 1, 1, 'mobile', '[]', 0, '2020-03-08 23:47:34', '2020-03-08 23:47:34', '2021-03-08 16:47:34'),
('450319510e6d3550c727e110f3ef19f331cdadaecade26b73ebec85c38f06be4113c3bfeb9407cbb', 12, 1, 'mobile', '[]', 0, '2020-03-17 22:13:55', '2020-03-17 22:13:55', '2021-03-17 15:13:55'),
('4507b2909130d515fa1a94e073efb190184d49d836cfbffb6158281ad0fe9e3c8e5bd5790e7eb71a', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:33:36', '2020-03-07 21:33:36', '2021-03-07 14:33:36'),
('453b79091312047f3f13f4b1e3dd9058e38dc78eb39707576063daa0fdf2d682410bd7ea03cc3ee5', 219, 1, 'mobile', '[]', 0, '2020-01-29 17:42:28', '2020-01-29 17:42:28', '2021-01-29 10:42:28'),
('4583b9ef4d53fd89136c65b0209b8fdb0520ab1ba6918c2391d09a5cc1980f692da04f53160cf48f', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:49:03', '2020-03-08 17:49:03', '2021-03-08 10:49:03'),
('4648e8eabffa0a6e38e99f4ea11fa538a3edcb2fc7df025875c81474bca4d8f6ea15cef2dbf30abf', 284, 1, 'mobile', '[]', 0, '2020-01-30 06:23:27', '2020-01-30 06:23:27', '2021-01-29 23:23:27'),
('466687682d5ec8c95174d106154103146208055629fa2565d63e67826352c64f0ff0a9083913eaf2', 18, 1, 'mobile', '[]', 1, '2019-12-25 05:42:54', '2019-12-25 05:42:54', '2020-12-24 22:42:54'),
('46844494b13c46b05b3bb6c6cc7a4c9f42b879572f77b825f3010a013c6cc3f9108854443d9b025b', 1, 1, 'mobile', '[]', 0, '2020-03-03 17:59:12', '2020-03-03 17:59:12', '2021-03-03 10:59:12'),
('46c793e73f6decf5100b6502982b937b0bba14b5e6d8adb46bb54a45045ce54ee156ebce1fd0427a', 82, 1, 'mobile', '[]', 0, '2020-01-26 19:14:45', '2020-01-26 19:14:45', '2021-01-26 12:14:45'),
('46e541d4008723119de9745259d7039023d34727c785b228a5f25e414a04ffdd560e41bfcc3c2d40', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:31:20', '2020-03-08 20:31:20', '2021-03-08 13:31:20'),
('471226989ef0a983fdef7ec1b9d74e65fc10e6e206240c15cf75c7a9fa383e7848d44614030ae21c', 2, 1, 'mobile', '[]', 1, '2019-12-16 18:30:22', '2019-12-16 18:30:22', '2020-12-16 11:30:22'),
('47d97b187b89f00b67d9da182ef8252d0ca67f8704c400845c26c9a919cbd4f65f68a64db09eebb2', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:59:49', '2020-03-10 16:59:49', '2021-03-10 09:59:49'),
('47e95808619e328d6851ae94295053c9abb74a6e9a0c29b693ab315a6598451f7942d4b35c0bfcce', 2, 1, 'mobile', '[]', 0, '2019-12-09 18:30:31', '2019-12-09 18:30:31', '2020-12-09 11:30:31'),
('4808dc9579d42d98da356f4a5433bd8cc1d603b90dc20c58859d05692de3d741dca09823032bcb28', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:21:31', '2020-03-05 16:21:31', '2021-03-05 09:21:31'),
('4827b5b6b097f345890a4d38ef79d4881bfd397e2a33df9dd5213ebec1b0894386047bb2ce59d8b1', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:26:24', '2020-03-10 01:26:24', '2021-03-09 18:26:24'),
('484fae0ce863f232bf203587822ff08aa5888f6312859da967516e9e85dcef223a975f097f4330bd', 118, 1, 'mobile', '[]', 0, '2020-01-27 15:45:27', '2020-01-27 15:45:27', '2021-01-27 08:45:27'),
('4867c35e78997c9ec16467add1f0b3183753f59c55dfe702db373e46b34ad9dd05a272598e910497', 338, 1, 'mobile', '[]', 0, '2020-01-30 21:26:17', '2020-01-30 21:26:17', '2021-01-30 14:26:17'),
('4894011e41485552aba30fcb17825fcc03b6197d453000e99bae3c6560415c771309a9ec39e56062', 213, 1, 'mobile', '[]', 0, '2020-01-29 11:58:06', '2020-01-29 11:58:06', '2021-01-29 04:58:06'),
('4897b326b8e0d2b79d127bb4dc926e90433d44ebf75278daed4e81e2bca6098d125df4acb3488f98', 321, 1, 'mobile', '[]', 0, '2020-01-30 17:38:07', '2020-01-30 17:38:07', '2021-01-30 10:38:07'),
('48bd5a4fd5073fa95ae0fc7b3022a77f4549a1da9829a1f0b7d319bf1f4eeb9a54f1c0175fc58653', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:28:31', '2020-03-05 05:28:31', '2021-03-04 22:28:31'),
('48cb900a5085843428712caf13dd073cf582a594ad24744d992068a2c7182c3a46e9bd1d1933f79a', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:24:05', '2020-03-05 05:24:05', '2021-03-04 22:24:05'),
('48f9b1a051eb8952b892919b51fc79869a7fb87617987d83eee300eab54903afb448f9353f9acfac', 269, 1, 'mobile', '[]', 0, '2020-01-30 04:47:47', '2020-01-30 04:47:47', '2021-01-29 21:47:47'),
('4934ff2a209efb673ad325b8728aa7ad8c759cb6478b29e90990f1466c0d65f26555369ad01d8b1b', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:47:02', '2020-03-10 01:47:02', '2021-03-09 18:47:02'),
('497c17290a84f83d05157c287a525ac94a955c4414ff74e06683c7ad50fc2cd99286bb5a3a15e3cf', 8, 1, 'mobile', '[]', 0, '2019-12-02 16:24:58', '2019-12-02 16:24:58', '2020-12-02 09:24:58'),
('49a1825d2bd5e23e2e8906a548bea58ea82b600eabccdea680443979e9e5652da2788e2f4cacafee', 147, 1, 'mobile', '[]', 0, '2020-01-27 19:05:01', '2020-01-27 19:05:01', '2021-01-27 12:05:01'),
('49a90759ad211cc58331808cfe964275e27542691a7cc09b6ac2439b362101746c1fdeeba7a5eafd', 1, 1, 'mobile', '[]', 0, '2020-05-14 22:13:46', '2020-05-14 22:13:46', '2021-05-14 15:13:46'),
('4a5917dfba3f66ef99b7acf497dff7296c85ce98f3cb74e1137921c2d88d9136e5aee811848d63bb', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:48:40', '2020-03-05 05:48:40', '2021-03-04 22:48:40'),
('4a7df59944c4057d12bf10e103eeb87c7d59000d5ffe121307e57691b2ee2daaa1837a2f4bf71ed7', 138, 1, 'mobile', '[]', 0, '2020-01-27 18:00:44', '2020-01-27 18:00:44', '2021-01-27 11:00:44'),
('4a86d11dc4e350dc3e4458b87658619cb4d9cda364df05c717b96fc7d03ce7fef3cd2c85bb04962d', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:13:22', '2020-03-05 21:13:22', '2021-03-05 14:13:22'),
('4a8b981847ecd97ecebed09c479fe7a9b19fae2b41d2f05e83d9c0d5983d666ac86c4a3e5014a843', 85, 1, 'mobile', '[]', 0, '2020-01-26 19:45:59', '2020-01-26 19:45:59', '2021-01-26 12:45:59'),
('4aae58120f77f82121c966fc45b9153169cfbb882f860229f72fb6743b82f3571c25213f3d9e397b', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:19:40', '2020-03-10 16:19:40', '2021-03-10 09:19:40'),
('4af471002cae1fa70748951a2f909b4d84daabae758708b44eddae9de629f481ce95ec0ad10c03b7', 52, 1, 'mobile', '[]', 0, '2020-01-26 01:08:03', '2020-01-26 01:08:03', '2021-01-25 18:08:03'),
('4b02327aab6d9b2aa3a6c3a477e649b70257ca766a2dc13d89da1804157000c04d544798a0bd805d', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:05:18', '2020-03-09 13:05:18', '2021-03-09 06:05:18'),
('4b291c7cb7d01fb483afa9ad7a981cb1ee091071469c8d26d1999a613fe54e5e4dd2ec4a75b5db85', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:12:27', '2020-03-05 06:12:27', '2021-03-04 23:12:27'),
('4b2a28046daa600f6ed20c771a0f6f34083a524521d2247b2b37c8798804b016b28d07fa9c13f2a1', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:13:28', '2020-03-10 02:13:28', '2021-03-09 19:13:28'),
('4bab09fa56003d05d059572036df68fd14f93b00609007ee2854a09ed100f8ea49b2e7b6aec65e1c', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:38:58', '2020-03-09 12:38:58', '2021-03-09 05:38:58'),
('4bab7941152c261034bf7c00ab7cad25d3e60cd6fe2eacdd46b99ca746955a57b11c975983655c4e', 154, 1, 'mobile', '[]', 0, '2020-01-27 22:27:53', '2020-01-27 22:27:53', '2021-01-27 15:27:53'),
('4bf56252930873f5b50449f9779ef8e2237edc031b4d5c3deae52e7341fd8c7d6a0a6cef01da4934', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:33:58', '2020-03-05 08:33:58', '2021-03-05 01:33:58'),
('4bfaede020deecf49e0e20fb27dd8c1827be4321d31055567beac1f3ee134a05a8a295d758392258', 9, 1, 'mobile', '[]', 0, '2019-12-05 00:53:44', '2019-12-05 00:53:44', '2020-12-04 17:53:44'),
('4c128cab461548b8953864ff44f26f60d558caff1047bea3e863c2764bd7b1a800e044cdc97a23ab', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:41:47', '2020-03-07 22:41:47', '2021-03-07 15:41:47'),
('4c2386aa3fe538eca62bfd81fd520ddf1855b6cff968b2658825d02262958992063365c3de11031b', 1, 1, 'mobile', '[]', 0, '2020-05-27 20:05:46', '2020-05-27 20:05:46', '2021-05-27 13:05:46'),
('4c25c3dfe89ebda410779450075d3e5abf2681189fb3abd73d312bbbbb56f1362bc94e8a6914e7d5', 186, 1, 'mobile', '[]', 0, '2020-01-28 20:35:07', '2020-01-28 20:35:07', '2021-01-28 13:35:07'),
('4c46b6f576917b27832887d027301ba2fa5bf01c60aa6bddab1a4d9f2a52ef1cf819e5136605872a', 89, 1, 'mobile', '[]', 0, '2020-01-26 20:36:04', '2020-01-26 20:36:04', '2021-01-26 13:36:04'),
('4c7df8f05d1906dd9e7b233a4558bfb698dad363e76edf98973eb54b00ea02187ecd37ff1152f684', 223, 1, 'mobile', '[]', 0, '2020-01-29 18:40:02', '2020-01-29 18:40:02', '2021-01-29 11:40:02'),
('4c9ca0d56579528f1bde887623892c56c2f6387c2994ad7bd3981936c22d7ffcad631a55f83dbf9d', 309, 1, 'mobile', '[]', 0, '2020-01-30 13:53:31', '2020-01-30 13:53:31', '2021-01-30 06:53:31'),
('4cb4b860e91a552ada7b860d34a40876892c0893545911ebe5f5743cb51b01b441b82a270ae538e5', 1, 1, 'mobile', '[]', 0, '2020-03-09 03:03:28', '2020-03-09 03:03:28', '2021-03-08 20:03:28'),
('4d4b5900dce07e670b4d22bbcc5b648d039acb3fd290ba141587bb476655405c6de289a9dfeb5218', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:30:49', '2020-03-10 17:30:49', '2021-03-10 10:30:49'),
('4d94ade32dd7ac4323d074bea77fdb23be63fafbc0ff96d81b46873ea9e66165a8b403a75cbfd6eb', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:52:40', '2020-03-10 03:52:40', '2021-03-09 20:52:40'),
('4da71bbdbbab8efc3014b008d308498cc916e4878d7f6074b0b88557e0b6be08c5f3c09395bfa010', 1, 1, 'mobile', '[]', 0, '2020-03-11 13:54:37', '2020-03-11 13:54:37', '2021-03-11 06:54:37'),
('4dd705f2a7940649c49980c11af1593c08f81a702887c2e2722dd153f6e63235a7a2083d398f2b4d', 86, 1, 'mobile', '[]', 0, '2020-01-26 19:47:44', '2020-01-26 19:47:44', '2021-01-26 12:47:44'),
('4e0d411faafc529d915bea8297a1b1d66740668282b96e41b19011501fc4afde43674ff3fef2fc03', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:28:14', '2020-03-10 19:28:14', '2021-03-10 12:28:14'),
('4e22d0a7704fd4f42fb626770e1a1c28a455125b33bde87e1bbaa1a77ff49f848cca1bc161895c4e', 176, 1, 'mobile', '[]', 0, '2020-01-28 07:52:14', '2020-01-28 07:52:14', '2021-01-28 00:52:14'),
('4e4ed23ebe38c648da11a888315f7cf93117ff7ae2a0b8eed45a55541d775d7c65e2f8ffe5d7705b', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:41:27', '2020-03-10 04:41:27', '2021-03-09 21:41:27'),
('4eeaf9053cbf2a3d923e4f552ac40c8babde2ef4acea45a8964a011938fbcb22a37cda37ecdb94bc', 262, 1, 'mobile', '[]', 0, '2020-01-30 04:10:29', '2020-01-30 04:10:29', '2021-01-29 21:10:29'),
('4f38d3843abf030fbd7dde7f08c19db0922af87ceb4501cf1eea481b721d17b989d190a59ab16c4b', 297, 1, 'mobile', '[]', 0, '2020-01-30 07:38:56', '2020-01-30 07:38:56', '2021-01-30 00:38:56'),
('4f70aa3328e66d462cb07399d38d4ac1c1806e36857c1208f3d3c5a99f514127c2d33f26cd6982c2', 10, 1, 'mobile', '[]', 0, '2020-05-06 10:26:08', '2020-05-06 10:26:08', '2021-05-06 03:26:08'),
('4fd951fd0afbe51b4cb6ca881664861e68735797c1d6aa91a4545cb752f76db516429c585bae71c2', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:37:58', '2020-03-04 16:37:58', '2021-03-04 09:37:58'),
('50285a529c789ba5699651c3e8e44377a20cfbd26b8aa65a5fb9f7aa6a2141a40b17948932bf82bb', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:18:41', '2020-03-08 00:18:41', '2021-03-07 17:18:41'),
('50b920792512ec11918594771427e8a0a4dcb4f1a4c7c5b17ba78beb88f75aa9a2692893afcaf20b', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:15:08', '2020-03-05 19:15:08', '2021-03-05 12:15:08'),
('5117632bc72ac21b5372505455b73c9dd055419b96d7acacd3c1aba613cfa2907d7c62457b95a625', 8, 1, 'mobile', '[]', 1, '2019-12-10 22:55:19', '2019-12-10 22:55:19', '2020-12-10 15:55:19'),
('5145cd791f238ebd19d49272cf98549d5e8b56c2e5dc269628cc882a9b4d5d76fd7b61ef3c6fbcd3', 248, 1, 'mobile', '[]', 0, '2020-01-30 02:39:15', '2020-01-30 02:39:15', '2021-01-29 19:39:15'),
('516b15a8471eb82eb9a8166dcecf5dd3ab5d8d1c831bed2121ed14dd3dbebeda37eb5b80987b1b69', 1, 1, 'mobile', '[]', 0, '2020-03-10 23:17:01', '2020-03-10 23:17:01', '2021-03-10 16:17:01'),
('5194825587cb21ea58d1c9e6d63ccc45b8c9ce54a5806b82c409acf4e15cf744dd0c019c09382a5f', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:40:58', '2020-03-10 04:40:58', '2021-03-09 21:40:58'),
('51dc6e474c5efdf7907f7d0aa285cebd4a97fa90d247cef0999961ea2912341822cb5341ae61fe1d', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:25:32', '2020-03-08 01:25:32', '2021-03-07 18:25:32'),
('51f77f397f012230f80c80ab63369426147258d77dea8d2fdb0707deb153fcff73d19ac3d6a1c721', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:14:48', '2020-03-10 04:14:48', '2021-03-09 21:14:48'),
('52167508a65233972671c09b69e3d2d1c99dd7c4affb8cc03835ba72b8506da1c93a981f42e0e6e6', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:33:59', '2020-03-07 23:33:59', '2021-03-07 16:33:59'),
('5241050053a049581a9192a6370dbd90cf1f10167c82ff9544d28bf7a541593016676c31af8d8656', 1, 1, 'mobile', '[]', 0, '2020-03-11 17:14:47', '2020-03-11 17:14:47', '2021-03-11 10:14:47'),
('5262a328ec01e59dcb1f70946a76c972aba4c32578c5661f917a94f9392c1fd727648f1112110ca4', 144, 1, 'mobile', '[]', 0, '2020-01-27 18:57:44', '2020-01-27 18:57:44', '2021-01-27 11:57:44'),
('52724fc2a1c9f1f213bf431fc498defee287ce255e623f3b8d11aef34a79a08ec88a112e93541964', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:00:17', '2020-03-10 17:00:17', '2021-03-10 10:00:17'),
('5272ac3c6b15c9964c9f76df3c2a4c73f35f1a7c9c4e365b365ac031c13e3df820107a1e9cda5745', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:22:23', '2020-03-05 03:22:23', '2021-03-04 20:22:23'),
('52e2c80274f408242275da20ec7adacd669dafd7c21ea39865ee9954d7276fd4ee22741492a48009', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:38:48', '2020-03-07 21:38:48', '2021-03-07 14:38:48'),
('52f24c52c563d684d83faab72217201ccd7698e48f8caffb7e2e7f084a0883869745a537d1e41c5b', 1, 1, 'mobile', '[]', 1, '2020-02-09 21:17:33', '2020-02-09 21:17:33', '2021-02-09 14:17:33'),
('53035f102b6489029403426bab06ebeab62ac7f9788862230073e2652b8a5dd377508bbf13f5fe32', 264, 1, 'mobile', '[]', 0, '2020-01-30 04:16:19', '2020-01-30 04:16:19', '2021-01-29 21:16:19'),
('53101c31de57b457fe014c3f98574ad60f11f2b45859666061a9d1d632efd12f0d4fbe0f2258661b', 1, 1, 'mobile', '[]', 0, '2020-03-10 18:55:38', '2020-03-10 18:55:38', '2021-03-10 11:55:38'),
('531e9677053a2ea116cf54e36ae9d719f09cf7d39fb9ce3731b2465484107e0e8d88e4f68be641a2', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:01:32', '2020-03-05 21:01:32', '2021-03-05 14:01:32'),
('533704f12b57e66b7568d702b6ed3f361d14b7882018481219a185fb9598c86687550dd967d0f9a2', 228, 1, 'mobile', '[]', 0, '2020-01-29 19:27:50', '2020-01-29 19:27:50', '2021-01-29 12:27:50'),
('533ceac4eaa7cf260cf8d481e6663f1a5e9ad4ab70bef5a6a120e5b80078ac770fe11e5841778044', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:16:13', '2020-03-10 15:16:13', '2021-03-10 08:16:13'),
('540b661fc446776f9d7ef5e69d17680c3f7d1ab0ff04c25a4a5ea3426815e0b7fd9a2c2fd76130e3', 38, 1, 'mobile', '[]', 0, '2020-01-25 18:13:19', '2020-01-25 18:13:19', '2021-01-25 11:13:19'),
('5425dd24700f86d985bf7463d18ade915c874bc06e5a6d7a4e94dcfeb9f37e6e2f3dfac6cb6d7686', 6, 1, 'mobile', '[]', 0, '2020-05-07 10:09:55', '2020-05-07 10:09:55', '2021-05-07 03:09:55'),
('542e214bda9e1f5b6f899d11433baac46a9d3b2f03d40aca1dc205f33386790a58ee819d1c433e7e', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:06:12', '2020-03-10 20:06:12', '2021-03-10 13:06:12'),
('5445e471a6a17b8a013c0c79551bfc884608c144de83981794773856b8e4bae76304e92b29fbec7f', 1, 1, 'mobile', '[]', 0, '2019-12-09 05:29:24', '2019-12-09 05:29:24', '2020-12-08 22:29:24'),
('54cbfaca594be570805057372d49131a8b8880becbe2fef2fac901d8227d550b4762099e490e1a01', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:20:48', '2020-03-07 23:20:48', '2021-03-07 16:20:48'),
('54d1bc1a430fd4e7123b2d48185371f1d9839b2af8cf2c131fbcb68255a571aa551d5c361b0c658f', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:56:03', '2020-03-10 20:56:03', '2021-03-10 13:56:03'),
('5503370e862ecdb0e1e1db45a1d41a2689d06b46acf0a63243a6ec0720feac59de8ae8158c4db743', 245, 1, 'mobile', '[]', 0, '2020-01-30 02:07:03', '2020-01-30 02:07:03', '2021-01-29 19:07:03'),
('553238f9b39104f925759c2d844ee4401b5e0923ec73901ee0c08c973f90aac0444146166cf3c15e', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:24:01', '2020-03-04 18:24:01', '2021-03-04 11:24:01'),
('5572127f7cbb355e51b3bd83930d1439f719f03ae2d9682e9502eae6c165da910eb64d66f3bed45f', 237, 1, 'mobile', '[]', 0, '2020-01-29 23:27:45', '2020-01-29 23:27:45', '2021-01-29 16:27:45'),
('5596ce1aea988b151cd1f9d560927923961737ed531f5172ac4961f6c6836dc30aaad7953ab65fb1', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:30:11', '2020-03-11 18:30:11', '2021-03-11 11:30:11'),
('55de4b2f5a3f51935c84af2b9f66a772bc4610f96711c9b36a78e9ee19885ac27aaef8ac361b3a9d', 1, 1, 'mobile', '[]', 0, '2020-03-03 20:41:53', '2020-03-03 20:41:53', '2021-03-03 13:41:53'),
('56711322bc419bcf25073abe1e6226ec577c8b13d36ca8bac8c4776ed6a1fdf44c6604d471977def', 1, 1, 'mobile', '[]', 0, '2020-03-06 04:45:55', '2020-03-06 04:45:55', '2021-03-05 21:45:55'),
('5691bbae098d4e78c5d7d731f28e07d6ad70d1471616ac697cfc473b72d162c1f3f0dc1ce303ca1f', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:41:26', '2020-03-10 01:41:26', '2021-03-09 18:41:26'),
('56bc4e0bfdb4284e23fa4fa47c84f38af5f08ee6cd81c2df6365c9993234915111250c0eebd3e188', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:03:48', '2020-03-10 04:03:48', '2021-03-09 21:03:48'),
('56c0f5a33612d21c449f70bfa33ef5e0178d8d2d05b220516a23dbb5d0022617461c860dd60e5a6c', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:30:27', '2020-03-08 01:30:27', '2021-03-07 18:30:27'),
('56dad8c0693d97734f362175ea80f1634d1cf9766c75376ab1e92922d3669719016064df7cb8256e', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:42:34', '2020-03-05 05:42:34', '2021-03-04 22:42:34'),
('571d90e6ac3e5114153d56936fa61a31f37988901b70445df9d765e85d3fed41f03a82fc673a4c0d', 1, 1, 'mobile', '[]', 0, '2019-12-25 05:18:54', '2019-12-25 05:18:54', '2020-12-24 22:18:54'),
('57b27d0b8ea3a0ac81e59048445f2ec4cf2f3181aa0e709b43661e9b2cd02a67847bf1e51de488e0', 1, 1, 'mobile', '[]', 0, '2020-03-05 15:59:47', '2020-03-05 15:59:47', '2021-03-05 08:59:47'),
('57e8833cf2bf18c77680cfc54c32de712fb5994161990b49d417081d02c31860d9a042359f8fe97c', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:05:07', '2020-03-07 21:05:07', '2021-03-07 14:05:07'),
('57fe40a9cd25bdd7fb63ba71b09ecaef4b5bbec22b2b642c5ab3b951fa38c885c048a1fd06d88265', 14, 1, 'mobile', '[]', 1, '2019-12-12 20:05:05', '2019-12-12 20:05:05', '2020-12-12 13:05:05'),
('58078e65104ceafc1fa82fcefeb365adb2fe601d9a9f28f19818ad46e655a0bac48314a98592d26b', 1, 1, 'mobile', '[]', 0, '2020-03-03 19:53:05', '2020-03-03 19:53:05', '2021-03-03 12:53:05'),
('580ec0eeb9f6445981677e313747570c83960e7c12c6742442df3da8c2fec672ab0013014d105485', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:57:06', '2020-03-08 01:57:06', '2021-03-07 18:57:06'),
('5810907f5896b5e3ae97151a4b17ceba1b7119754430c810562651591630e5fb96abce37d83d6e86', 60, 1, 'mobile', '[]', 0, '2020-01-26 05:40:59', '2020-01-26 05:40:59', '2021-01-25 22:40:59'),
('584df85c8489f8ca4fffdc9b365a31a24822947479b1fb3f6a27ac3c4f8290094164047f1e5203ae', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:21:37', '2020-03-10 17:21:37', '2021-03-10 10:21:37'),
('584ed3092c7bed2c89c923347b8175fbc2ac199df8417515d5cf06595b90bb4663e7ef32705f95b6', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:36:27', '2020-03-05 19:36:27', '2021-03-05 12:36:27'),
('5858974b1a2b2e2d9ae19b4311c70a38fce2ab22e206b9f20fbbfd62f665a65757f0459fe0e86313', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:36:50', '2020-03-05 03:36:50', '2021-03-04 20:36:50'),
('5861ada1f586413e61f8261345b3bdd8dbd2cb8d50541f362e36d93810ced27d3ee0f051fb621a24', 91, 1, 'mobile', '[]', 0, '2020-01-26 22:52:38', '2020-01-26 22:52:38', '2021-01-26 15:52:38'),
('587b4ab85e8cacaf6bde9b324bb4cc776a6768d87428b791c12af9b278dcaa91a3f0379d845ff58f', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:20:15', '2020-03-11 14:20:15', '2021-03-11 07:20:15'),
('58f925989a7236ea961f1ec980dd9d021e5f5cbb40f4f2745ed90e824e16f0f8b0db39a4eaeae733', 323, 1, 'mobile', '[]', 0, '2020-01-30 19:04:51', '2020-01-30 19:04:51', '2021-01-30 12:04:51'),
('594c0f54ba043aad53eb2ee10c8a27098d8b2273ab01f52c3429f16736fddccfa6ba2538d116847a', 1, 1, 'mobile', '[]', 0, '2020-02-19 21:44:53', '2020-02-19 21:44:53', '2021-02-19 14:44:53'),
('595aa8f530f3076ce36598753d518439fde13710d923d02f65554453f07286a9312144e7413fe1dd', 134, 1, 'mobile', '[]', 0, '2020-01-27 17:08:32', '2020-01-27 17:08:32', '2021-01-27 10:08:32'),
('5983f9672981d2e036a26bd9c2b361e52fd1693801b1d06ad5e053ed2a9c0aa1c1e16a7ee1ba0172', 1, 1, 'mobile', '[]', 0, '2019-12-10 01:34:37', '2019-12-10 01:34:37', '2020-12-09 18:34:37'),
('59918c8144e2a359f583105c3203eceb8873a6ec44e5582408585e185ef8ba58ca3e9e304c09b8fe', 1, 1, 'mobile', '[]', 0, '2020-03-08 05:32:42', '2020-03-08 05:32:42', '2021-03-07 22:32:42'),
('59e5f69ed9e9dfa4324f2b98c01e0ce43865c269cbe602ea3eb94fb8b7cbda9ca7f7d58549c21efb', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:16:56', '2020-03-05 16:16:56', '2021-03-05 09:16:56'),
('5a332610f72281d934bf2a37e0d2d89c6ed31122c295eff16ebe8aa22058fe38755ab2d2aa5e5b2e', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:35:50', '2020-03-08 01:35:50', '2021-03-07 18:35:50'),
('5a3b44be015ca493e481b9c6eb52684d8290091ec99101fdeb03784723f30647e7c692f8395ef7f5', 1, 1, 'mobile', '[]', 0, '2020-03-08 06:12:51', '2020-03-08 06:12:51', '2021-03-07 23:12:51'),
('5a9e88b5eef92137715eac1b7fd13d1c262c286fe95167b5af480f9f245f1c4e97bb3146d4d7c9c0', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:23:46', '2020-03-10 01:23:46', '2021-03-09 18:23:46'),
('5ae634b298e0a812d4f5b1cb9fd04809f8fae5cdef7b2b365865c153039e85e79b78995e38218973', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:22:34', '2020-03-10 19:22:34', '2021-03-10 12:22:34'),
('5af24b79341b9cf8171a73e7dbcf73af24aaf7355c98f939ecc977388daa3f845366fe886d9e420c', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:58:55', '2020-03-10 04:58:55', '2021-03-09 21:58:55'),
('5b02dd4f67feba39a4d0f69564d481e4313655874c6a0ffb570fee7d4a51a97688c26bb85ce8e4e2', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:21:04', '2020-03-09 14:21:04', '2021-03-09 07:21:04'),
('5b1a623861d43bf199560be6d2a22e13391a0648caeabe9d2198eaee0b78c1229fef882f555262c7', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:52:37', '2020-03-09 12:52:37', '2021-03-09 05:52:37'),
('5b29ab7ef13539206a454211c89b27de4d997e6c4b3d77d350d612161c4fd4acf7ecb823aabf35a4', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:40:14', '2020-03-05 05:40:14', '2021-03-04 22:40:14'),
('5b49908be5e70d6ad81d22a708cf6f34e6736622cc306944309841c4c6eba799d3ac54d93b070d8c', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:19:58', '2020-03-03 21:19:58', '2021-03-03 14:19:58'),
('5b5de1c7e1ac32806f437edb7b7bf9c09ecf155488bf35bb7743088a98b16e0b464d844b2f995bb4', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:45:14', '2020-03-07 23:45:14', '2021-03-07 16:45:14'),
('5bf68b61d293d3a9983513bccd387a6122e7eb30180348ee15dbb79d05ba28be9705bccc00e66393', 25, 1, 'mobile', '[]', 0, '2020-01-20 08:31:50', '2020-01-20 08:31:50', '2021-01-20 01:31:50'),
('5c642402a9fc26564b0b855a126c485b02cc5965af2019e5b631666f4a291a40485fe3a4ec290f66', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:53:53', '2020-03-10 16:53:53', '2021-03-10 09:53:53'),
('5ce3d346ca47c5e368ddb5b7ffbfef55b5eb34efd7217717d262959c8c28d752e8695875d370b938', 8, 1, 'mobile', '[]', 1, '2020-01-02 18:52:59', '2020-01-02 18:52:59', '2021-01-02 11:52:59'),
('5ce7aebbbc2d749e4cd57d29a28d35c70ed1877e4289f850b057a18b629b59bf28c0dbff031fe8d1', 20, 1, 'mobile', '[]', 0, '2020-01-06 16:12:06', '2020-01-06 16:12:06', '2021-01-06 09:12:06'),
('5d36745492a9d1118dbcda72d719652752779bb4d5b5f62453b8e441731f850ccb4cd8e6a5c8a2df', 1, 1, 'mobile', '[]', 0, '2020-02-25 17:31:40', '2020-02-25 17:31:40', '2021-02-25 10:31:40'),
('5d54386a273a7226aaec76ae75b5ffc183ec90073cd4d180edf7683206e70921708387e49ac0298f', 1, 1, 'mobile', '[]', 0, '2020-03-06 02:54:15', '2020-03-06 02:54:15', '2021-03-05 19:54:15'),
('5d6332c094a06127ace3eb6f550949bad08b0de812b85fbbd79486c8c22203eebeb2465f1d7d19f9', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:33:38', '2020-03-05 05:33:38', '2021-03-04 22:33:38'),
('5d64ff8e492056591b080abc6c1ae751063b71d614b3ab68b4e71dfc0a1393a9631a4b1fe49ee196', 193, 1, 'mobile', '[]', 0, '2020-01-29 00:53:40', '2020-01-29 00:53:40', '2021-01-28 17:53:40'),
('5dae71b071ab6716a4639c4927a2dbbe0aba69989e3ce521ea45d986add28db8094a54c8ed5e785b', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:05:59', '2020-03-07 22:05:59', '2021-03-07 15:05:59'),
('5ece51b7409df3ffff30ad8ef4b68774e962ccf9d3e92a6531328f196ead1f406e0c53fa0870e20b', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:59:14', '2020-03-07 23:59:14', '2021-03-07 16:59:14'),
('5ef85f610ad63b2e3e25bd1e4c34d996ad43616323d8f01e8f73a3dabe74255c073e2c60e42caaa7', 1, 1, 'mobile', '[]', 0, '2020-03-03 20:45:25', '2020-03-03 20:45:25', '2021-03-03 13:45:25'),
('5effdac2ad039d0718e680e74538ee0e6bf1d9324ceb322baf02c54e5454289b4890c94d3f0a4d4d', 1, 1, 'mobile', '[]', 0, '2020-03-10 05:01:17', '2020-03-10 05:01:17', '2021-03-09 22:01:17'),
('5f31b0115bcd61833b02c95ec445be69ec48f17b7524643353f1a530380604c1cf8a2e271df7a84b', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:59:12', '2020-03-08 18:59:12', '2021-03-08 11:59:12'),
('5f351d3f4d9ea9f99a1c718b5ad1af9c9a13f40f937d0e2efe530fc71f57b964dae5b7eb548ba09c', 217, 1, 'mobile', '[]', 0, '2020-01-29 17:29:11', '2020-01-29 17:29:11', '2021-01-29 10:29:11'),
('5f3b1e7e4bc95e0736292149bb67849da3f7f19df56133b01a8f21091050c11e43445c6751e78181', 3, 1, 'mobile', '[]', 0, '2019-12-01 02:34:54', '2019-12-01 02:34:54', '2020-11-30 19:34:54'),
('5f547b89e4e209764cb46b6e22c4d1b20654cd70943a5949d8c65f3cc2cc01d4a8288f78bbd48d24', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:22:32', '2020-03-04 16:22:32', '2021-03-04 09:22:32'),
('5f8fefaabf5a4e152cb058ec447b890562b48a4a0701bd25322828492b659858ecc7efea77a999db', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:17:41', '2020-03-10 02:17:41', '2021-03-09 19:17:41'),
('5fb2d969b35e9713ef5237c56f7f8f13080bf219d702145dea97f271cf78541e3824c60487be730b', 150, 1, 'mobile', '[]', 0, '2020-01-27 19:53:18', '2020-01-27 19:53:18', '2021-01-27 12:53:18'),
('5fd23279f018c43486b74c958b0e863eb5cadaab1927ad3a922bf04885312a4860efb29be1734ae3', 9, 1, 'mobile', '[]', 0, '2019-12-05 00:02:22', '2019-12-05 00:02:22', '2020-12-04 17:02:22'),
('5fef6a90105c2e8660b1cd56e79b66accc776e4b8ff1c9ee29a8a16c17d7c048b843e17d27f4a22a', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:41:28', '2020-03-08 20:41:28', '2021-03-08 13:41:28'),
('6067c4a0abcc86ff7106670aea98c5d22abc86ed8888d2b807e98a661cb1b252a2783180fabf2e70', 1, 1, 'mobile', '[]', 0, '2020-03-06 19:38:00', '2020-03-06 19:38:00', '2021-03-06 12:38:00'),
('60774e6063c453b41544b556af8c72a882071cb979d629da4ebca7ba23284db5a82e2c8dada4f344', 23, 1, 'mobile', '[]', 0, '2020-01-14 20:05:25', '2020-01-14 20:05:25', '2021-01-14 13:05:25'),
('60befcfaff3eb3c21f2cc9144f91e98471237e1d1d2b19ffc1f5425474168d35df648de1ae1b39c1', 3, 1, 'mobile', '[]', 0, '2019-11-28 16:14:28', '2019-11-28 16:14:28', '2020-11-28 09:14:28'),
('60c2f30eda878c9a819e37f93c2edca70e8c167f6b813e8c0f089e38e7891f6ba1603153d2dba0e6', 75, 1, 'mobile', '[]', 0, '2020-01-26 17:21:28', '2020-01-26 17:21:28', '2021-01-26 10:21:28'),
('613bea81718a8c30fdd06544d4d7c400ef26c4aad5aa37020d75b39cb9bd3d64323b8c5d935e1183', 275, 1, 'mobile', '[]', 0, '2020-01-30 05:44:18', '2020-01-30 05:44:18', '2021-01-29 22:44:18'),
('615c8885287843a906032c54137d2ae0b59a895e5e886ab3a60975fdf3d68c633c6150168a197845', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:47:22', '2020-03-08 17:47:22', '2021-03-08 10:47:22'),
('61af02867106496d52677b570d2763cfe7dc90724ee33543624e856b946c4b9778d12b0b2c5cea1f', 140, 1, 'mobile', '[]', 0, '2020-01-27 18:14:26', '2020-01-27 18:14:26', '2021-01-27 11:14:26'),
('61b1e8b580eba17448104350e7e0fa93ba9ffeccdea7a280e9030bd1d9fbf03a5a10068f1dde9d26', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:20:42', '2020-03-10 19:20:42', '2021-03-10 12:20:42'),
('61c16fecb52ffa9510c31ab8df7ba50a92305f28ff64ac5247441cc56bd5df9fb05e578b6b4d083a', 325, 1, 'mobile', '[]', 0, '2020-01-30 19:35:47', '2020-01-30 19:35:47', '2021-01-30 12:35:47'),
('625564635bcb4e26b51120d7edf1810e5554c3e52b39fd76d33f2f5caebeec7a512ec9da15b931a8', 221, 1, 'mobile', '[]', 0, '2020-01-29 18:34:46', '2020-01-29 18:34:46', '2021-01-29 11:34:46'),
('62683a0294d673b78f51bce632f72a681a557bcad4381dc254010e5067c5bdf82476ae04a2cb98fe', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:39:08', '2020-03-05 03:39:08', '2021-03-04 20:39:08'),
('62a9ea846bc978c0b87103d8f6f311d8ac7cb2924ed7ce8ecca4b885d1e5c57d296d1bf9cb3401e5', 1, 1, 'mobile', '[]', 0, '2020-03-05 04:24:36', '2020-03-05 04:24:36', '2021-03-04 21:24:36'),
('6343aeff83d3a2dca31b5cfca19c0e0ab91d8df10b6332031422d31b8bcd8e72bc798abe127db370', 13, 1, 'mobile', '[]', 0, '2019-12-11 18:47:41', '2019-12-11 18:47:41', '2020-12-11 11:47:41'),
('638193670515146d2179cebb45774ebf797ad191b4eac88b4a999c52515a8b398ff78e90b2c78c66', 3, 1, 'mobile', '[]', 0, '2019-12-13 02:14:39', '2019-12-13 02:14:39', '2020-12-12 19:14:39'),
('63db9aa18456e26e1ceb42131d1e80ad76ca32df588bbc89ca1a80e9f12557cd18e0e29a2cb357c9', 199, 1, 'mobile', '[]', 0, '2020-01-29 03:35:18', '2020-01-29 03:35:18', '2021-01-28 20:35:18'),
('63ee5e932efe35117517693e547e8e094dc96c05e68d7a0757c533adc238dff41ec86f23f495c567', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:20:05', '2020-05-14 23:20:05', '2021-05-14 16:20:05'),
('63fbcd2ea5466c236ba708f90f72be577c9e3c051b59598d6ef80efdb05aedf1955271ffab29d93b', 1, 1, 'mobile', '[]', 1, '2019-11-27 17:07:01', '2019-11-27 17:07:01', '2020-11-27 10:07:01'),
('6463b2a01c52ece2387d1ef12e06c67cb263fd5f201927f0ffc31ca92f7ba19da68d9191bd5b3e19', 173, 1, 'mobile', '[]', 0, '2020-01-28 05:50:58', '2020-01-28 05:50:58', '2021-01-27 22:50:58'),
('64ba88c651f9642e1cea04cb1b135a590696f72adc957d6a77ea3968ca332f5e327ade71375a00c4', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:40:10', '2020-03-10 17:40:10', '2021-03-10 10:40:10'),
('64e299204bde5f61f2473ebb370d3efaa5de6a67199b6b6d036e54fae76bcbdf7347980e1bc7a961', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:16:12', '2020-03-10 22:16:12', '2021-03-10 15:16:12'),
('651faeaa58c64ce014deb821648c22a738719bba17217514ce21eaf5fd8a5d07e279da2cebc016d7', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:01:40', '2020-03-10 19:01:40', '2021-03-10 12:01:40'),
('6528db4031efc312307fc898f090664b46c79b8604f2ada916db5f6d5ab99162fa7b03fba04b0e59', 1, 1, 'mobile', '[]', 0, '2019-12-02 19:14:35', '2019-12-02 19:14:35', '2020-12-02 12:14:35'),
('65b8e749aeceffabe82425cf9ed6a693d26b727e454e04a59b39e138fff409b2f69d56d35729cb51', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:48:05', '2020-03-08 17:48:05', '2021-03-08 10:48:05'),
('661009e4e017d01112879d94d241446061f55e1f41293b41e365deea2dc31e9176fc876192aa086f', 172, 1, 'mobile', '[]', 0, '2020-01-28 05:41:36', '2020-01-28 05:41:36', '2021-01-27 22:41:36'),
('663783638c83b2692a900884d4ca88a2dc0133bfcba89adecec07fc66fa7b6266549f1c91e842f6b', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:14:48', '2020-03-10 04:14:48', '2021-03-09 21:14:48'),
('66972a32c5404560bdfe7bcec189681e3eafaf181f3954e944017b359df2cbcecb5a14efc5bb8e71', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:27:37', '2020-03-04 16:27:37', '2021-03-04 09:27:37'),
('66dfa28dff9831953980af8fc2463a78ab7a21759e2f54eaf8dcadb28a755e89c7d28378babfab4e', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:45:17', '2020-03-07 23:45:17', '2021-03-07 16:45:17'),
('674282c956252d093365676f7566c2838a04dfedec9dcc94f345bc4b5feeee85cf383abca812e5ae', 244, 1, 'mobile', '[]', 0, '2020-01-30 01:59:26', '2020-01-30 01:59:26', '2021-01-29 18:59:26'),
('675f7491e120cef126b4b2f5b420a8e48b9e2ba703f69a690d9c75656f1ce2fd3f699fd4b9a29c42', 4, 1, 'mobile', '[]', 0, '2019-11-27 22:17:11', '2019-11-27 22:17:11', '2020-11-27 15:17:11'),
('676518c23d74d4fcb978732cdf9d309e9e081fc4dc9e1b8265ef66bbadf7bbf283524ee0e5034f28', 71, 1, 'mobile', '[]', 0, '2020-01-26 11:09:02', '2020-01-26 11:09:02', '2021-01-26 04:09:02'),
('67fcb6fbf4d7c69c674f6e0cf9e567ecc1f6f8fc8c7cf218aa79f4ddbef5e53c1384025532befaaa', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:06:43', '2020-03-03 22:06:43', '2021-03-03 15:06:43'),
('688476078ba9dc3818c1ae109a0dd8aad59df890ec57c7a1e9389e5f84f656d5c2b483de5bfb56d1', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:16:46', '2020-03-10 15:16:46', '2021-03-10 08:16:46'),
('68aa232df78d9bf6b3642f4c516ab612a928541de30319a45f6c6d803ede49ecce020d4fb821a795', 1, 1, 'mobile', '[]', 0, '2020-02-23 17:23:37', '2020-02-23 17:23:37', '2021-02-23 10:23:37'),
('6923e87fb03afcb35c5d869c250311baa66a23b686fd61c68f85f592661389033d277725885decf2', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:46:00', '2020-03-05 05:46:00', '2021-03-04 22:46:00'),
('692dcc24f887a2dac47ddd4493d3e0b15bb4c15da7d4f25d1689c47bbf28a3a8072228b091e8c7e0', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:38:45', '2020-03-07 21:38:45', '2021-03-07 14:38:45'),
('69446a5aab406b5eb475073cf980b49c8eded5710345ec669eb471384a42fd13b423b158bdc11deb', 119, 1, 'mobile', '[]', 0, '2020-01-27 15:50:36', '2020-01-27 15:50:36', '2021-01-27 08:50:36'),
('69548fc5e544c67a78fba4a78fdf7ca1c979077180439b519e646f29a31db7cb3b48f3f85e959949', 1, 1, 'mobile', '[]', 0, '2020-03-03 19:49:11', '2020-03-03 19:49:11', '2021-03-03 12:49:11'),
('698ba881a508ea1f968f240b331641a6e0f6a7e84758b5608acd44357b93f7a682408152d9b4b22d', 8, 1, 'mobile', '[]', 1, '2020-01-02 20:44:34', '2020-01-02 20:44:34', '2021-01-02 13:44:34'),
('69b13340d4d73abefd95557c6521ba25d4dded6b9851038c431f40d454dd908a7f1c182334f078f2', 170, 1, 'mobile', '[]', 0, '2020-01-28 05:20:34', '2020-01-28 05:20:34', '2021-01-27 22:20:34'),
('69ddf52924fc6e2044abf7082c740707afd9b8fafc8948ec6316d74431e049663ee861801cfe8f36', 1, 1, 'mobile', '[]', 0, '2020-02-19 17:23:50', '2020-02-19 17:23:50', '2021-02-19 10:23:50'),
('69e21cc26959aeaf9bf5d79e878b8ee13c6be39ee609db281cfe6466bcdbf82b3b1830b2319ad240', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:47:29', '2020-03-10 19:47:29', '2021-03-10 12:47:29'),
('6a0bdc3aa6e43359cff676ddebff5b53af8a5cf3cc66f8530d0de46f77fc1c5f0dd7afebbaf934ad', 1, 1, 'mobile', '[]', 1, '2020-03-08 18:36:03', '2020-03-08 18:36:03', '2021-03-08 11:36:03'),
('6ae0cdd3002b9e1d32727941e3a4ba6c9a3351df39e394133bfc90b57095d2be85539fe9d0dfedfa', 66, 1, 'mobile', '[]', 0, '2020-01-28 23:58:02', '2020-01-28 23:58:02', '2021-01-28 16:58:02'),
('6b1757726d1ec5b447416bb6615e9b6ed3a2ffe7de9824a42c236da3eaf04d152ca909b6183a7ac7', 1, 1, 'mobile', '[]', 0, '2020-02-16 17:38:33', '2020-02-16 17:38:33', '2021-02-16 10:38:33'),
('6b5fcfef867e4ae2bf96000ad130158141dde8f683fd9456ba865b29d7c6e9085d66275252f8c9b0', 1, 1, 'mobile', '[]', 0, '2020-02-19 18:40:57', '2020-02-19 18:40:57', '2021-02-19 11:40:57'),
('6b77f780ac593ab1ac2dd735c37e4f14965b11413577e5256901f32207a732ee88397502d30bc10a', 3, 1, 'mobile', '[]', 1, '2019-11-27 18:28:50', '2019-11-27 18:28:50', '2020-11-27 11:28:50'),
('6b8dfdfddf191f321a78be9f76f89322cff875c871cba12c1413b24409cf423b3a1f65d6cdbd0ef9', 239, 1, 'mobile', '[]', 0, '2020-01-29 23:33:47', '2020-01-29 23:33:47', '2021-01-29 16:33:47'),
('6bbaa66051b0ed979fc8664ddd966fc2ba05f45b2d4f573bb1c0633d7ce410a9bea4325e2d70711e', 104, 1, 'mobile', '[]', 0, '2020-01-27 02:46:54', '2020-01-27 02:46:54', '2021-01-26 19:46:54'),
('6bdaf0da0db90cb72306f6891fd92d25e824faa4f75fe575cfdb8f8cc6fcc5aaeb369e0b2a0ee410', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:25:49', '2020-03-05 05:25:49', '2021-03-04 22:25:49'),
('6c18599796abbe1dce0fbd269586c89c602d9e49c1b7f579964440e6665f06a87c2d1a0cb9985520', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:59:11', '2020-03-07 23:59:11', '2021-03-07 16:59:11');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6c7489170a23a98e1d9be3ff32d339cb6d469c7e3426b996338b1442ddae7992e2881f00628259ee', 180, 1, 'mobile', '[]', 0, '2020-01-28 16:57:07', '2020-01-28 16:57:07', '2021-01-28 09:57:07'),
('6cbd21e2a2ee2061a1d539db7c6431136d2c1a377a887e6a89019a42da3c9a81840307b427426cac', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:03:10', '2020-05-14 23:03:10', '2021-05-14 16:03:10'),
('6cc3c09e3cd78d620de15d028ec50a5656523da1043e5b3de37f6b131ccf7e178872516db05ef517', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:44:15', '2020-03-07 20:44:15', '2021-03-07 13:44:15'),
('6cc9f9aa4f0309da9f890b1760847212073051b5141daa637094dfefa58155e6cd35d1c50c67d435', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:23:44', '2020-03-07 23:23:44', '2021-03-07 16:23:44'),
('6d666e48c0e4a29acadf8afc796c3e9e90770d638e027be684046dfe2dcb4502274a6ab2a15a2751', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:34:48', '2020-03-10 17:34:48', '2021-03-10 10:34:48'),
('6e0f0288a717d4d69ab6b99018b7f133d0912e6607edc83b5b99acf9d65b464f65517f7132084212', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:51:53', '2020-03-08 01:51:53', '2021-03-07 18:51:53'),
('6e3f2916a7e3fb3d57785a3c274484a6d5bd7c542c52bb2e15382541bac2be2d60a9b49981081622', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:01:40', '2020-03-08 20:01:40', '2021-03-08 13:01:40'),
('6e649d2df901994bc6549de03a99d80fed0510f3412e609a1a65a8ba1897a16eebdadb37172cf5d2', 1, 1, 'mobile', '[]', 0, '2020-02-18 05:56:50', '2020-02-18 05:56:50', '2021-02-17 22:56:50'),
('6e9bf7d51586b3fec9729c885958453a4b9b671c2d3e32dc71981e711792b2df6a6b56fa0ad19167', 216, 1, 'mobile', '[]', 0, '2020-01-29 16:37:50', '2020-01-29 16:37:50', '2021-01-29 09:37:50'),
('6e9c78cda88306e4a2e3b2eed3abb830d5c7e457a98359ee14f1f813959a7368768a9be7d592508b', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:34:53', '2020-03-10 01:34:53', '2021-03-09 18:34:53'),
('6f0441fcac122ade24bb88d1fc4439574560446d71a05c82ce81bb84cdc2c7139462a1a42f1ede60', 80, 1, 'mobile', '[]', 0, '2020-01-26 19:00:49', '2020-01-26 19:00:49', '2021-01-26 12:00:49'),
('6f2ae71b7da5d70ba4461e973d1bf84c7897b2e1de081277b0c0d7a732729abd077ca45ebff0ccc2', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:30:14', '2020-03-04 19:30:14', '2021-03-04 12:30:14'),
('6f34fcc42e4c8f8a8d0317875255361c8e2719b65b10804e8c49559f4df46eb3803b8a2e7da2bfa8', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:27:56', '2020-03-11 19:27:56', '2021-03-11 12:27:56'),
('6f3576246c34bdb671a1a34f24a4efc2cd890d2d6d50472a88b1f20af25012547665eb32013c0bf3', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:48:05', '2020-03-07 23:48:05', '2021-03-07 16:48:05'),
('6ffaef48c5d72c702d7bb7597c63be6dad6224ef9010ef126a29279c5b8d9943cfefb0f163cf3e6a', 252, 1, 'mobile', '[]', 0, '2020-01-30 03:11:19', '2020-01-30 03:11:19', '2021-01-29 20:11:19'),
('7091d94b9846d7c236bbffb6ab08391e9f5554072a387024acb6ef86c27ff97d2db1b978434255ec', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:06:11', '2020-03-10 04:06:11', '2021-03-09 21:06:11'),
('70be392f58ac4e78f44a56bc1baf5a744d17eed1c8bc5750ff81afd4df7ba3c3920628478d933013', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:09:42', '2020-03-05 05:09:42', '2021-03-04 22:09:42'),
('70c57371b8f137e5ba17348ab8aab3faed21eddac096617e060ba3ac9c6c6c6f658ad18d07d51942', 304, 1, 'mobile', '[]', 0, '2020-01-30 13:03:29', '2020-01-30 13:03:29', '2021-01-30 06:03:29'),
('712304a37134b736d29183ce81293770960289c50f78dd6df3eb90e982a34108dc1653b0e2ca084e', 4, 1, 'mobile', '[]', 0, '2019-11-27 21:52:02', '2019-11-27 21:52:02', '2020-11-27 14:52:02'),
('712810c3451f0db89a58fc9da4d26a5b06607669c5c28e8650e8fb3febfdfb49901e536fd1a23a33', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:22:16', '2020-03-10 19:22:16', '2021-03-10 12:22:16'),
('71a0349384f0dbca7074ac3c66889e3209ff1d70845d7ec6dcc4701b306184d3c34c8227986059fd', 8, 1, 'mobile', '[]', 0, '2019-12-02 16:52:29', '2019-12-02 16:52:29', '2020-12-02 09:52:29'),
('71ce64a529bbe3177e726b81969b4bd552e74e34a7184ac360d3261f208117f2e405f048fa776e9e', 122, 1, 'mobile', '[]', 0, '2020-01-27 15:59:16', '2020-01-27 15:59:16', '2021-01-27 08:59:16'),
('7224dd194224730136ec68ffc6fcdb4f1d59cd130be6e58309b7a95935100efcef169671282a14a0', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:26:01', '2020-05-14 23:26:01', '2021-05-14 16:26:01'),
('72716b5e3029acb1604c11de0ae7957b9b148ffdadd65485173f64809b7695b338920d1c8fac8262', 222, 1, 'mobile', '[]', 0, '2020-01-29 18:38:03', '2020-01-29 18:38:03', '2021-01-29 11:38:03'),
('7295fd46aa20d91ce9978dc224f5df67b928b2461a3dc5f522a5462490564f3d283659deb7e258df', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:55:14', '2020-05-14 23:55:14', '2021-05-14 16:55:14'),
('729a480dc88284449fcb4d3d6c5ce81eb79b210e514dbc8b0b10b6c8f2376351ac68cc79b833fb3c', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:40:06', '2020-03-09 01:40:06', '2021-03-08 18:40:06'),
('72abdd4c05a3676592c2a83eaedbb833ab1cca8034051a9fe43405aff7f5b200bc1211e5b9544a0f', 1, 1, 'mobile', '[]', 0, '2020-03-07 19:56:52', '2020-03-07 19:56:52', '2021-03-07 12:56:52'),
('72ad652dbf9eccf16cb3e568b7bd579539be86693a1c5268055a0e5cbbc449cdbd72a3eef5a98c14', 56, 1, 'mobile', '[]', 0, '2020-01-26 02:35:47', '2020-01-26 02:35:47', '2021-01-25 19:35:47'),
('73703c1b7777268c126c51419f3a03dc2708b99481ab1f9b072e45e34085f6ae31f553652d4968e9', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:35:54', '2020-03-08 01:35:54', '2021-03-07 18:35:54'),
('7375418919620a10830cb42b93a9e52a00c3af9e16834fe653466959b82d68890b4bded6d77b9e8b', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:48:16', '2020-03-04 17:48:16', '2021-03-04 10:48:16'),
('73be2055e7aea70b0469c4b47cb14bbe38103f3391b0312ce76b83ba2cfda297666196ac8ef0ffe9', 1, 1, 'mobile', '[]', 0, '2020-02-09 21:22:06', '2020-02-09 21:22:06', '2021-02-09 14:22:06'),
('7404277161384b3d1050c77c2212a797d7e186848c1280881717e037f9b8e96c7c2ab36d17b84b42', 276, 1, 'mobile', '[]', 0, '2020-01-30 05:48:09', '2020-01-30 05:48:09', '2021-01-29 22:48:09'),
('746f33fb0cf0779fb5ee78befcbe0748dcaa6b76b7e52b9c1da742d02036c7dd077c02d6322f017d', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:07:33', '2020-03-09 14:07:33', '2021-03-09 07:07:33'),
('74b6e152fa20469cb0828192cf5fb45cfa33e95b7c5d29fcb389ce2a1b159902e107c845f52a41f6', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:41:50', '2020-03-07 22:41:50', '2021-03-07 15:41:50'),
('74e0ebb9d22e965a82bba1011e4be26161dfe63a9e8f8d421b569f70192eb38a74764990aa557542', 19, 1, 'mobile', '[]', 0, '2020-01-04 04:43:08', '2020-01-04 04:43:08', '2021-01-03 21:43:08'),
('7505c17794dddf683c7bd8cf46db7c61b1fbb3a74ff07ecc6ca8243bb247ca430012b07f1dd88703', 236, 1, 'mobile', '[]', 0, '2020-01-29 23:22:03', '2020-01-29 23:22:03', '2021-01-29 16:22:03'),
('753face8d9761694769e3720001686763bb61d6342f97463c034bb46b3287a200a28d6ebc5cc3b02', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:05:47', '2020-03-09 13:05:47', '2021-03-09 06:05:47'),
('7554e009faf097b7180b839c44e32184c902aadc1d9ebb486d1f84fe8f41e69ae465382c4737cc25', 1, 1, 'mobile', '[]', 0, '2020-02-18 21:41:25', '2020-02-18 21:41:25', '2021-02-18 14:41:25'),
('7559d4ff71ef01c14ab102e7cae4049db1655a5d47606b13e0762db3bf59d9dbbff85751ec712d5e', 208, 1, 'mobile', '[]', 0, '2020-01-29 06:01:04', '2020-01-29 06:01:04', '2021-01-28 23:01:04'),
('7589753c44f3c6ce3c629fd9dfbd19af58df5f3b884fd7b6c9f3be868c9f19dd59b0721e5ec63eb5', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:12:26', '2020-03-08 20:12:26', '2021-03-08 13:12:26'),
('75ac980de0eb24a187749fef6000e2879d58437ca4f27187fc21352c9a6e925bea8ad390858792a5', 1, 1, 'mobile', '[]', 0, '2020-05-14 23:38:11', '2020-05-14 23:38:11', '2021-05-14 16:38:11'),
('75e62eb3fb02a327732a243334875dfc243a7da69b6288432e6a402ca72a69e979e4fb07bd4df535', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:14:48', '2020-03-08 20:14:48', '2021-03-08 13:14:48'),
('764028ad0f4f61de6c833c5071f3f8d1a144a6841d261172bb6a2a607b5e0ad8ebfc97e372deafa8', 1, 1, 'mobile', '[]', 0, '2020-03-12 17:19:32', '2020-03-12 17:19:32', '2021-03-12 10:19:32'),
('769a2191e7d9c47f1f7a22b633012009140f816b868c2acf703cb3a4f9919c2bf8b1c929b4954e89', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:30:16', '2020-03-10 01:30:16', '2021-03-09 18:30:16'),
('76a7a5893d7b1f4021295d7b823bc8a9f2d5bc578eec46bdae7b39eed73cefe03e57dc28b3f4b6a5', 1, 1, 'mobile', '[]', 0, '2020-03-07 00:41:26', '2020-03-07 00:41:26', '2021-03-06 17:41:26'),
('773723e71e7b4eec5d5612c324113a5eb7931dde981df007423bf31b9ed32376397d03745dfcabb9', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:20:51', '2020-03-07 23:20:51', '2021-03-07 16:20:51'),
('777ec941adfff9f3e1d45748caaac8b2222a1a046d4401c55d9e44d0009a9e3ae47b66d7418205f8', 1, 1, 'mobile', '[]', 0, '2020-03-11 15:43:34', '2020-03-11 15:43:34', '2021-03-11 08:43:34'),
('7787c7eb6484938a8ef8ba3d8537bcce45250cbb1db1aef6af80e23a2bcc6b0cad2ddadc9dcb0a33', 1, 1, 'mobile', '[]', 0, '2020-03-07 19:55:03', '2020-03-07 19:55:03', '2021-03-07 12:55:03'),
('77e6cab9869b6c5a28c0a3c10408324925232c13da02bb49a0dc466441da856abba3658580c5f8f0', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:54:24', '2020-03-10 16:54:24', '2021-03-10 09:54:24'),
('78046f3d2a121b3a1a7e2a0aaca9e7423d1a879e6cde7d5fb4f78211c425c191eb8ed9deb02f6e9b', 3, 1, 'mobile', '[]', 0, '2019-12-02 15:40:14', '2019-12-02 15:40:14', '2020-12-02 08:40:14'),
('78373ecf483545bdebf96f831d1207a52b77162a13e25da10f61ea97972299430fb3226e4584f0cc', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:08:37', '2020-03-07 02:08:37', '2021-03-06 19:08:37'),
('78765078d3a044f459ba4c4d3cfa78c9a045ca2bdf165d36e3f59aa6a99f3182496f9e58370d980d', 1, 1, 'mobile', '[]', 0, '2020-03-09 18:01:15', '2020-03-09 18:01:15', '2021-03-09 11:01:15'),
('78c8f3ef325f42f847e1536f745209f9f03dbe61f99024065515966b501c3caac9282768411dc912', 102, 1, 'mobile', '[]', 0, '2020-01-27 02:27:59', '2020-01-27 02:27:59', '2021-01-26 19:27:59'),
('78ea5e09410cdcaa743578214e7b7c7bd90f30b8ea0dbd71064256a6de2d372f310dbcaef7397001', 3, 1, 'mobile', '[]', 0, '2019-11-27 21:45:22', '2019-11-27 21:45:22', '2020-11-27 14:45:22'),
('78ecee512808992cce5d25e3b0a74b464a20809e898df9f8057915811a88ca34fd4847e5978d4564', 251, 1, 'mobile', '[]', 0, '2020-01-30 03:06:55', '2020-01-30 03:06:55', '2021-01-29 20:06:55'),
('7907382282401c4f8b5ba1a0e6b76714c12b88c46ccc0ff4bf507131cec4d9884f7415b13154241b', 1, 1, 'mobile', '[]', 0, '2020-01-03 07:10:36', '2020-01-03 07:10:36', '2021-01-03 00:10:36'),
('79866c9556c68648c94ab508dd8e2d44e5082df7ee7672e69d5f7280d200a10f862856b83d34506f', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:51:50', '2020-03-05 05:51:50', '2021-03-04 22:51:50'),
('79b2fd22fa40ef2e3081d33f6473734a0951b387b60bde943ee6f4723c9d5374e4a4de0785ee3842', 1, 1, 'mobile', '[]', 0, '2020-03-05 07:01:23', '2020-03-05 07:01:23', '2021-03-05 00:01:23'),
('79bd147aacfa9019e36eba911ac804d91ba7ae981e433afe54ebc56adaf0c6390aed71c03d02bddd', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:21:42', '2020-03-10 04:21:42', '2021-03-09 21:21:42'),
('79edc481a1b9fceebcc057ce3b786e9525fd9865d2d5768dc22c5d1581f12601b9d96cae11a1f1ea', 314, 1, 'mobile', '[]', 0, '2020-01-30 15:17:45', '2020-01-30 15:17:45', '2021-01-30 08:17:45'),
('7a5ebfedf99e158cc5d830c928e6c6dc34b693019c41a3a082394eadda1fbf65ca14a48d15095db1', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:28:35', '2020-03-11 18:28:35', '2021-03-11 11:28:35'),
('7ab60fc2f91dbbdcbf660b1f74a25fb48743c17e6d82844263b5870a0fcbfa42d1873fa49a6ce8fe', 37, 1, 'mobile', '[]', 0, '2020-01-25 17:58:27', '2020-01-25 17:58:27', '2021-01-25 10:58:27'),
('7abbd35a1765cbfc0d961099d47eb93bf3e6c016fb3e59829954dd42a3de3a90d500701fd2c4a3b7', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:23:07', '2020-03-10 04:23:07', '2021-03-09 21:23:07'),
('7aff106a5655bd8252759ddc1dd0cea282dfff4967157de90dce4809619922fc6358f7a4564312f9', 169, 1, 'mobile', '[]', 0, '2020-01-28 04:56:30', '2020-01-28 04:56:30', '2021-01-27 21:56:30'),
('7b161ef301cb59c94ba7ce182c05fb0aa4f6b7133ee06d8e92eb6db3e3f08ac814b98c1c71d54335', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:11:48', '2020-03-08 01:11:48', '2021-03-07 18:11:48'),
('7b536fc929db6bfabb5a6e91b68674e540018255e3fd29a50e4c1e6aa900ff19aa13a4786ed6d08b', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:45:43', '2020-03-05 06:45:43', '2021-03-04 23:45:43'),
('7b5caa1c2acae34092ffcae51f80d5a119bcf6ffb4e6ccb21f07a76cbcf60c751d5dfde23e480b39', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:51:44', '2020-03-10 02:51:44', '2021-03-09 19:51:44'),
('7bc0ff003d2927e39ad524165e0df96e6b711e7ce3302d04f3fdf7438727422bfdb6ffbcc6d3c5cc', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:09:39', '2020-03-05 06:09:39', '2021-03-04 23:09:39'),
('7bd59e4a53f017286d695f8661796cf97eff22115bafc182961d0986146ccc9808886d2c97c9078b', 287, 1, 'mobile', '[]', 0, '2020-01-30 06:46:36', '2020-01-30 06:46:36', '2021-01-29 23:46:36'),
('7be57e97ccd4b66f61e26e2d32a3064f758b563b5f69d474bebc0d319f12ce8ec12451803ae79a69', 1, 1, 'mobile', '[]', 0, '2020-03-05 09:06:58', '2020-03-05 09:06:58', '2021-03-05 02:06:58'),
('7bf4aacbf61fe31ed1b188a05c2c399f5e85c69b01e7ab2349960d86283f186aacb09393293e4f7a', 1, 1, 'mobile', '[]', 0, '2019-12-21 02:52:53', '2019-12-21 02:52:53', '2020-12-20 19:52:53'),
('7c5cfd87658c0ca9e9ed8296d1b97ebb2f12f2e83e08bde2e25abcf441c5b9151725601eb84c8021', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:29:19', '2020-03-10 01:29:19', '2021-03-09 18:29:19'),
('7c6323fa3f2b197e5d5a5281549670b20da2ba25183f16f3480aa98bc4bbb652c272ce746bbdce2e', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:40:31', '2020-03-09 12:40:31', '2021-03-09 05:40:31'),
('7c743817dda97d9280b1b6a5d9a255534a6e710950b75916b12f35a6c5db2848a24ed84dd1b2c009', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:51:23', '2020-03-09 01:51:23', '2021-03-08 18:51:23'),
('7cc6111a8133b56494061719f8f0193e94d5a2b52402eaf98883c30ee3a8669aa5a86058c71ace13', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:03:30', '2020-03-10 02:03:30', '2021-03-09 19:03:30'),
('7ccc83793d091a5abe8bcccc4bffad9f876114df4768d2b689339427465a4dbdac9224b422fc3e53', 112, 1, 'mobile', '[]', 0, '2020-01-27 07:54:58', '2020-01-27 07:54:58', '2021-01-27 00:54:58'),
('7d5127ec2bb3676bfb1508aa868e86b21f57fcd97e568c09d1fd3c2f79cd5ce83d859fb0707e2c01', 279, 1, 'mobile', '[]', 0, '2020-01-30 06:08:26', '2020-01-30 06:08:26', '2021-01-29 23:08:26'),
('7db09936f62340bb7d6a35de7a529ea64009ce6a6f419e1c929af866c6100205a734790985371ace', 1, 1, 'mobile', '[]', 0, '2020-02-19 21:46:07', '2020-02-19 21:46:07', '2021-02-19 14:46:07'),
('7e22adf0720908693c69ff7e941d2f34081a3eb8a0b25738c96c9a2e1ac9d892508ac029f98a7ede', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:30:11', '2020-03-10 19:30:11', '2021-03-10 12:30:11'),
('7e2fa6f9b75274119fa31f1630a92995998885b8374f78a7e7e0f9f07cab90b45d323b144494bc9a', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:26:07', '2020-03-07 22:26:07', '2021-03-07 15:26:07'),
('7e61f4c9de9faabf9ec9f419b026d82576de5bc61de1bfb19835cb5465568d82e3d4ecc4eeb25767', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:39:37', '2020-03-10 16:39:37', '2021-03-10 09:39:37'),
('7e7009bf07c586d978de40f42469c8e536250df1e3db58baec9ff569e6a222d605224f758101e59e', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:00:29', '2020-03-10 04:00:29', '2021-03-09 21:00:29'),
('7f3d231a22231c26ccd550297e2ce8231e9b6d81f6cf2642bf20352979fce66a5f0c9213bdae60fb', 155, 1, 'mobile', '[]', 0, '2020-01-27 23:29:48', '2020-01-27 23:29:48', '2021-01-27 16:29:48'),
('7f54d679de177e639e3cfc8ee49f7be89fcfd376f75c15f88923a16d2b84b6e13381408e71678574', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:27:12', '2020-03-10 19:27:12', '2021-03-10 12:27:12'),
('7f6f538367f5213bb20748b7085e45e216159337c6862a4c3d5a973396979dc105d893e7929f9c6f', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:04:46', '2020-03-03 21:04:46', '2021-03-03 14:04:46'),
('7f8cfdeb0571e7932e336ae2572dd9b722e9d1797e891a4c3dfc4af8740d041efd711bf1bc66a493', 88, 1, 'mobile', '[]', 0, '2020-01-26 20:35:02', '2020-01-26 20:35:02', '2021-01-26 13:35:02'),
('7fc013e4cfd122afac4b417799afac047bbec4eec70ddb21d7339d9e768fb85928675fbdd19388b2', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:20:23', '2020-03-10 15:20:23', '2021-03-10 08:20:23'),
('7fea3f198465cade5b94c3ed942aed4153222900927e561121dcf47b6ded5d787f68537584446b5e', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:50:58', '2020-03-07 23:50:58', '2021-03-07 16:50:58'),
('7ff637d19d7733a0d71dbe917c97e08330232c8465dabdfd0f649c624a8729538dae724bd8096eaa', 198, 1, 'mobile', '[]', 0, '2020-01-29 03:25:50', '2020-01-29 03:25:50', '2021-01-28 20:25:50'),
('8007f108ae5035dcf257f44c4c853fa65866f7d1fbe014f83a5a1290301454b01b02f4ae6c063ff8', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:03:05', '2020-03-03 21:03:05', '2021-03-03 14:03:05'),
('801f12407141867e83746d5a6f687ffae0e01e8734755ada478a3d7921957774fe0f166bc24cb396', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:17:03', '2020-03-08 20:17:03', '2021-03-08 13:17:03'),
('8067a5fab65023af06224168755af9ad3d40554cfb7abdbf4d87397662639bdde4228ca92b4d8213', 129, 1, 'mobile', '[]', 0, '2020-01-27 16:44:33', '2020-01-27 16:44:33', '2021-01-27 09:44:33'),
('80a9d3ca7e65852958427bb95fcc70f0cadeb4f6bcd660f59b0f45c4427949e90025873b33250a1d', 92, 1, 'mobile', '[]', 1, '2020-01-26 22:58:11', '2020-01-26 22:58:11', '2021-01-26 15:58:11'),
('80bf8287e477ce2904baa05dce32bcf676104d76f46e2d5f747c73c77d6eed75f0161dc7fd21ddbf', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:09:37', '2020-03-09 13:09:37', '2021-03-09 06:09:37'),
('8107210b1e2a35bee9db6b8f8a3f1968da4d677ae4ed9184525930ac8c482825c5b36d966410fb88', 289, 1, 'mobile', '[]', 0, '2020-01-30 06:51:26', '2020-01-30 06:51:26', '2021-01-29 23:51:26'),
('8117ea4983b305206d5236b68596457558a1af8fd22eaab473ad966a87098a65a218feb592a9a5c5', 1, 1, 'mobile', '[]', 0, '2020-05-17 19:52:24', '2020-05-17 19:52:24', '2021-05-17 12:52:24'),
('818af520a4bd723645157042fceb1cdca6674e142719c706d088e647b0d80df1aad485d0e7f46fae', 1, 1, 'mobile', '[]', 0, '2019-12-21 02:48:41', '2019-12-21 02:48:41', '2020-12-20 19:48:41'),
('819f6e1045edebe79a461917521d62512c56a12cbdb5187595b166e762da9f120e68235af54883a9', 174, 1, 'mobile', '[]', 0, '2020-01-28 06:03:17', '2020-01-28 06:03:17', '2021-01-27 23:03:17'),
('81ab6fa6bd5fc2f52c1426906d8fa3a7e5d412fde3ce7ad220d9f6937200bcab3d22e53481f26fea', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:27:28', '2020-03-07 21:27:28', '2021-03-07 14:27:28'),
('823f7f32e4718096a9acea132e8f9ceb3346a262eb42b8c387345aef3bbaf0fb57cbf31a4800930a', 9, 1, 'mobile', '[]', 1, '2019-12-05 20:48:57', '2019-12-05 20:48:57', '2020-12-05 13:48:57'),
('828eb86055cc8d63c730d412ac0cfbbae8b1303d191a9fa616a458b4829dd15a824635411824183c', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:39:22', '2020-03-09 01:39:22', '2021-03-08 18:39:22'),
('832cff9ba9e63a226b2c09fbb6e1cccda8aea2659a86298ef196ce5d3aeccdc961e8f9fec45a3d29', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:35:01', '2020-03-07 20:35:01', '2021-03-07 13:35:01'),
('838246c3c60d10fa4e779945a8e9e20abc860d0deff50292aa44c31cdfca837c5b6998a6dbd403a1', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:52:37', '2020-03-10 03:52:37', '2021-03-09 20:52:37'),
('83839a8d57acbbe5356b74e754eb1b7f0bb6131f3cce468b09fe062ba67b55d659d3a0cf17aef444', 194, 1, 'mobile', '[]', 0, '2020-01-29 01:31:44', '2020-01-29 01:31:44', '2021-01-28 18:31:44'),
('838c77dd7e7b47e7dc943b6186d6685db3912c8eb6d53d3a072450862213e024e0513436048794ec', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:57:15', '2020-03-05 20:57:15', '2021-03-05 13:57:15'),
('83db3e9afa988e46dc49da878293eccdb58f7be4fb9fb6016da8cc8b3bf6cd0c9ca495b50f07f747', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:36:56', '2020-03-10 16:36:56', '2021-03-10 09:36:56'),
('83ff2bbdbc770fe00ac50bc86165be4383efa2c7975bab65cd53bf62db002162e2ae2adb94e741e3', 166, 1, 'mobile', '[]', 0, '2020-01-28 04:38:36', '2020-01-28 04:38:36', '2021-01-27 21:38:36'),
('84183b6892fa8df91281f79e411334cf528c2e7742b87326c3dc0ebf8e41b4ddc7ef4cf49757eba4', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:57:36', '2020-03-10 16:57:36', '2021-03-10 09:57:36'),
('845c44eda4cdd2f605e94524bbbe885b537d4e24c2dd6dcbfa58372e1b422678a9782052fbbafd6f', 266, 1, 'mobile', '[]', 0, '2020-01-30 04:23:52', '2020-01-30 04:23:52', '2021-01-29 21:23:52'),
('857a2b81eec4c25a7ea683d3a9e5acff85354492a3e7ca270ebefaf92a83cc3053bdb9b515f4afe5', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:25:09', '2020-03-10 04:25:09', '2021-03-09 21:25:09'),
('85bda36c2df7bf0e3fee7d599a871687fa1236939af43fd405117eba5377b16b0f170fcc853daab7', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:57:21', '2020-03-09 12:57:21', '2021-03-09 05:57:21'),
('85c8d9908e53332340279ab9c68918fb8d64591447705af5bb7bb426273c7a1c3553fe52147e9931', 1, 1, 'mobile', '[]', 0, '2020-03-11 15:37:33', '2020-03-11 15:37:33', '2021-03-11 08:37:33'),
('85de54680f23a9a2a13cdd7431f85dd8f62d25a5798d40b326730df1bb3e3c20a56a6f5ec5f26113', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:37:03', '2020-03-07 21:37:03', '2021-03-07 14:37:03'),
('85e531b5cc31471f273c8e7031cf7fd984e244460ad85178882810fbd262042b7d31ba86b6a12613', 209, 1, 'mobile', '[]', 0, '2020-01-29 06:11:32', '2020-01-29 06:11:32', '2021-01-28 23:11:32'),
('86dd60387b7c3e27e85168d0a518cb5b37a7939d8541dd5018d80a7bd9fa463c6cb122c4d6c59349', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:23:17', '2020-03-06 03:23:17', '2021-03-05 20:23:17'),
('87010c4929a57e1dc2eb20ec4dda0c73c68749ede0ccb07b4a45ab5800644ced5330d6041064322d', 1, 1, 'mobile', '[]', 0, '2020-03-05 22:38:08', '2020-03-05 22:38:08', '2021-03-05 15:38:08'),
('8731458ab204fd3be131a075391ff45e72aa22bb965998b74384a037e280038ea877805f5a999493', 1, 1, 'mobile', '[]', 0, '2020-05-05 20:01:30', '2020-05-05 20:01:30', '2021-05-05 13:01:30'),
('874d674c32a364f36938623939e132b10a2d1f5f31dd8b9898cbc8ac57e69a8035f2b633658a0a5c', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:27:19', '2020-03-05 05:27:19', '2021-03-04 22:27:19'),
('8793a4ce082a4d7e5b0df65f874dc75e015c337b020f774dedca5c74d0a445bc884d4aa462a2f886', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:29:47', '2020-03-07 02:29:47', '2021-03-06 19:29:47'),
('8794c1521d91e29bda589d76283f307e16a264bfdcabd388892da9d6179518d410b87e8ef66b4c32', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:20:27', '2020-03-06 03:20:27', '2021-03-05 20:20:27'),
('87a0c2c13c907fdcb915898cef3c9e01806d0d931df72cfc3cf56a826506a891b9f3c68ba291903e', 204, 1, 'mobile', '[]', 0, '2020-01-29 05:07:30', '2020-01-29 05:07:30', '2021-01-28 22:07:30'),
('87d75ca81873ab97a7e1f6d9c17e763368c1e308a79c8bfeae132ad9651af2dd9b872bdf650cc430', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:11:05', '2020-03-03 22:11:05', '2021-03-03 15:11:05'),
('88363ef666fd28613471ec5c7f2a8eb895d786cbf491a78013df72edeb1323de5e37465f575baa92', 184, 1, 'mobile', '[]', 0, '2020-01-28 18:50:10', '2020-01-28 18:50:10', '2021-01-28 11:50:10'),
('88448c41f8c9cdd7456ad0bed143cb03a780784c582cb3c5fa654fcf3808a6c05c0619b74fd42014', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:41:40', '2020-03-05 02:41:40', '2021-03-04 19:41:40'),
('8892383c399acae0f4b491b5888ee954ebdb27e6bd837c6d3d43e430d7c047a07ea5a3a2aff363d9', 97, 1, 'mobile', '[]', 0, '2020-01-27 00:44:44', '2020-01-27 00:44:44', '2021-01-26 17:44:44'),
('89457fe5d39899df9b9c434beda01d54a083b596c9b47eec6b1b96b218f52ed57a37f3c0c828f974', 133, 1, 'mobile', '[]', 1, '2020-01-27 17:05:35', '2020-01-27 17:05:35', '2021-01-27 10:05:35'),
('8955c49be2437bbc470b8af0b2a51254f4a11273e2494b8d0341671963f039db9c6256fe2a8dc8d9', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:00:55', '2020-03-10 03:00:55', '2021-03-09 20:00:55'),
('89b3614a4f89c4581bd168a8c62e6878e4004a943873a6c901aa466fc9527542a518a7bba50fa18a', 74, 1, 'mobile', '[]', 0, '2020-01-26 17:14:26', '2020-01-26 17:14:26', '2021-01-26 10:14:26'),
('89c3a49729835db378fbd31190a758bde233682de1b582f8c92c7ed728c20b5bd9e32df033c02b10', 1, 1, 'mobile', '[]', 0, '2020-03-05 04:08:12', '2020-03-05 04:08:12', '2021-03-04 21:08:12'),
('89d44facaa69e8dd33456cbb40d6c045285f11771cc6a4f4f2558ee7f1694fa19da0db4ef2b8e45e', 327, 1, 'mobile', '[]', 0, '2020-01-30 20:02:19', '2020-01-30 20:02:19', '2021-01-30 13:02:19'),
('8a3f580e49f7cddc0f84d5d5bec4ef65b29773bba83eecb464adadcadcc795feca0018d062d8ca31', 63, 1, 'mobile', '[]', 0, '2020-01-26 06:15:46', '2020-01-26 06:15:46', '2021-01-25 23:15:46'),
('8a4837be352134ffd3d646ca852550aefa21f88fe5fb9e237d8eeef6e20c03dc53e065cb15c9c05f', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:45:14', '2020-03-10 02:45:14', '2021-03-09 19:45:14'),
('8a5d54124ed4bc72a3afafc5b6af96a93f3cb3709d5e93492d950468d4593082822b27c942633aeb', 1, 1, 'mobile', '[]', 0, '2020-01-10 07:08:54', '2020-01-10 07:08:54', '2021-01-10 00:08:54'),
('8a7a3929d8b491026c165bdadac60fdf2a9d865cb1b82204f4736f39d247f81f0bd7b216ac10bdf2', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:10:39', '2020-03-10 20:10:39', '2021-03-10 13:10:39'),
('8a94ded8b74272d5416a412291aa0d3f45731a4cdd334fea0a1cc092aef02e9517ef032d28438065', 2, 1, 'mobile', '[]', 1, '2019-11-27 17:44:57', '2019-11-27 17:44:57', '2020-11-27 10:44:57'),
('8aaf305fadbd3fbe074e6ebdce089f513b22efba9d62b1b9e5c92fffe8a074ea8a18c129bd15303b', 29, 1, 'mobile', '[]', 0, '2019-11-27 06:57:16', '2019-11-27 06:57:16', '2020-11-26 23:57:16'),
('8ae9911bf9f7f0af1f058eecc6930fa678640396657c79343151f691a03eb66290c42351838f1ab2', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:02:56', '2020-03-06 03:02:56', '2021-03-05 20:02:56'),
('8afa4e41c5e9baae78d5e967f2f87817f57e7f30b0102643ac973ed33c2c45e3c3fed2b0827b149b', 49, 1, 'mobile', '[]', 0, '2020-01-26 00:32:20', '2020-01-26 00:32:20', '2021-01-25 17:32:20'),
('8afa975c7c5ba5b092f0fe1d9ec0060aa78a969014824f6bd9d43aaabe8c90d3879c808bbcf542a8', 1, 1, 'mobile', '[]', 0, '2020-02-19 22:24:55', '2020-02-19 22:24:55', '2021-02-19 15:24:55'),
('8b5dbe284d8ba24e73df85885547d3415db2c5268118cae8664a715ef72aa5b2ef510a13b8aa5637', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:04:08', '2020-03-10 04:04:08', '2021-03-09 21:04:08'),
('8b922df1c87e24950cce339e39dc56dc7a04d94e594d79089e42eec75fc3ddede819a68ac0b4f784', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:58:07', '2020-03-10 16:58:07', '2021-03-10 09:58:07'),
('8c26f7f53f5d9c142a47c85113307d7911afe08b7ae7b6cad829d3509122c2512de0540f7f43e590', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:43:03', '2020-03-04 20:43:03', '2021-03-04 13:43:03'),
('8c5280d2cf6cc8cfde3b12b3eb725962dea5f84bbe9e2f845afe523e4e7c0369fed0d6c2db511e65', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:38:33', '2020-03-04 20:38:33', '2021-03-04 13:38:33'),
('8c7ebcfa9a4a599ea42d71d7123c8b8a50102a204aaf1f4f9eba7db7c2a9e9cdc0a9e0b100834a26', 1, 1, 'mobile', '[]', 0, '2020-03-06 19:16:05', '2020-03-06 19:16:05', '2021-03-06 12:16:05'),
('8c7fa60640fa2a79ce8b3f3e998ec9b25dc402deb2b4730416a1c43769c5173bb0ceee58f1591c70', 254, 1, 'mobile', '[]', 0, '2020-01-30 03:40:56', '2020-01-30 03:40:56', '2021-01-29 20:40:56'),
('8cde909017b12ccf106f09e667de9d1657320347925e1aa3caad4225c5a748b78c8f7be67a12fd29', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:48:42', '2020-03-10 03:48:42', '2021-03-09 20:48:42'),
('8d3b4ff5f558c898049d6390ee06606733b2e4a8a8d10f260f9687a37589aa0dd0480e4b5b4e96cf', 1, 1, 'mobile', '[]', 0, '2020-05-27 19:50:37', '2020-05-27 19:50:37', '2021-05-27 12:50:37'),
('8db26fdce7b51451a85d996fba4e147b0ca96fdc06e642a3eeed14195824989733f3c65b7ced5eca', 55, 1, 'mobile', '[]', 0, '2020-01-26 02:23:29', '2020-01-26 02:23:29', '2021-01-25 19:23:29'),
('8dd96285b0dfd44303407351c5e8259a018e236db7e4e4f71f56c44d7019c9725175196785ea8dff', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:07:09', '2020-03-03 21:07:09', '2021-03-03 14:07:09'),
('8ddba7dae23807ada038c9347f8f5b9ee891d82499058e6818b0fffb0abf4ee9e994a6e0c06a5d78', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:51:36', '2020-03-07 23:51:36', '2021-03-07 16:51:36'),
('8e05fc36562732d535cedcd25427a819d1e6e9134f729f08ffa649572c3ca74711902c0fafcd4ff0', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:26:24', '2020-03-07 23:26:24', '2021-03-07 16:26:24'),
('8e20e4f769626b82378bcb603b291208b2e65ac8eecae164a93f03e7e216fc34abbd07d1087397ba', 41, 1, 'mobile', '[]', 0, '2020-01-25 19:19:19', '2020-01-25 19:19:19', '2021-01-25 12:19:19'),
('8eaa5c5d667dac61878dc3abc9530ab24f3a86c94c9bddd6ffd47784fa7a199d4674dccabc8a4c40', 9, 1, 'mobile', '[]', 0, '2019-12-05 00:53:24', '2019-12-05 00:53:24', '2020-12-04 17:53:24'),
('8ebd8c226ee352bb888c06b1b8c260f8bc9bcf8d63305a250267adaed07153036da51b93a1393e0e', 3, 1, 'mobile', '[]', 0, '2019-11-30 16:45:39', '2019-11-30 16:45:39', '2020-11-30 09:45:39'),
('8ecbb0e71eff54c74a72dc5a1bc869e3b5e0490075b5a826381b0270b87476a78cc45f54aa95276c', 1, 1, 'mobile', '[]', 0, '2020-05-27 23:01:36', '2020-05-27 23:01:36', '2021-05-27 16:01:36'),
('8ee802ba8126be1085db246862d6eae1283f839b579f7a3fecaf269241d9d0a3eaf09865a4bace71', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:00:27', '2020-03-11 14:00:27', '2021-03-11 07:00:27'),
('8f2f430258c4f1abf55abeb6a4bb60462068b4e74cd75f426f7715d44e641efeb820de34851a72ad', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:48:17', '2020-03-10 19:48:17', '2021-03-10 12:48:17'),
('8fba9ee27e823bbb5fc165a5d9da119be22e1dc030369b3d1dd558f066cb72242b47a72a0b87f48c', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:50:25', '2020-03-10 16:50:25', '2021-03-10 09:50:25'),
('8fc475e72482d406225449d9c0d7d9cfe92f816abcf267801d4c296a36af605cba0b8e779841e5a4', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:13:24', '2020-03-08 01:13:24', '2021-03-07 18:13:24'),
('901dcc690500a94f3acdde406c704245fc33945dfa3e13e1ef44d9e9072b0a47bf79c20a8744a776', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:50:25', '2020-03-10 02:50:25', '2021-03-09 19:50:25'),
('90227714e9c70bf754e0ed32b4262ab09a87f11b4c358f2fac4051e491cfafda8e485bdcd1523242', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:07:39', '2020-03-07 21:07:39', '2021-03-07 14:07:39'),
('906b6087e80db6c9f849a0b56139d724ee4d4555a315ef9d2bf85c7909446126b85b3acce8e750e7', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:33:13', '2020-03-04 16:33:13', '2021-03-04 09:33:13'),
('90b9f52242cf339047e21702623d9f14649e5e89d4fcfcf1798e4355dad44b5c85363484eb4062f0', 271, 1, 'mobile', '[]', 0, '2020-01-30 04:58:18', '2020-01-30 04:58:18', '2021-01-29 21:58:18'),
('90e10328cf99861fe1a44a63fe221b1275c4b58276b43638f261f6c512a33a76bd8868e6b895f77e', 1, 1, 'mobile', '[]', 1, '2020-01-09 00:21:45', '2020-01-09 00:21:45', '2021-01-08 17:21:45'),
('914a3a4813d19bbb17f1cf2f77627526097af24aa4906c33104ad3e96d5efc4ddb28ba6e606fd8de', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:34:02', '2020-03-07 23:34:02', '2021-03-07 16:34:02'),
('9176962fafc550a8077aaf82eaabc0d2538004637ad3c94bfa9914cfc943fc4bba0e093d719ccd1d', 1, 1, 'mobile', '[]', 0, '2020-02-25 17:26:02', '2020-02-25 17:26:02', '2021-02-25 10:26:02'),
('91aede4ed5617ae6583f4e5edd02ed1e6cfd937621b215f13fa31160129cea9c248e4ffc3f3108ec', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:04:01', '2020-03-10 04:04:01', '2021-03-09 21:04:01'),
('91e8f1738a4f1c269bdb96bbddd0deca0bf44650c5acdb6c63aedcc24e54aa496ec34ca7ccb5f7a5', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:21:22', '2020-03-08 01:21:22', '2021-03-07 18:21:22'),
('9235304009442fab0b16776ee9e7e0e14e0b7baa7e4090aab85858f4a9333496d4f8947a6eef920e', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:19:32', '2020-03-03 22:19:32', '2021-03-03 15:19:32'),
('927c5fbe82263631b640fcee6a737718adf8c325893771ad5095d483aeb1878e4c15154f56aa84d1', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:22:15', '2020-03-07 02:22:15', '2021-03-06 19:22:15'),
('92821232770ce27e6321257e701d29eb74251505bbdcfd3a2b01d20b63ce26a49f2795ab965674cf', 1, 1, 'mobile', '[]', 0, '2020-03-03 18:47:08', '2020-03-03 18:47:08', '2021-03-03 11:47:08'),
('9293ede6a83abcea03aae63b139162437d2ccff26931a0a50da1f028466c9fe1fb0e2e9ebd31e3c3', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:13:39', '2020-03-04 16:13:39', '2021-03-04 09:13:39'),
('92b521d09417bce17bdd730aa20c4b6a76282c8de340620492bad37adca58bbcb048f8822c9079b4', 291, 1, 'mobile', '[]', 0, '2020-01-30 06:58:50', '2020-01-30 06:58:50', '2021-01-29 23:58:50'),
('92b6730f36278ad45ac0fd95d40d56852287125579acd5d625cdda0f7176d46a1923a418cc602cd0', 256, 1, 'mobile', '[]', 0, '2020-01-30 03:42:50', '2020-01-30 03:42:50', '2021-01-29 20:42:50'),
('92c978079b0390f6c5797934fe3cb4f7cff5e8dc23851d880416f00850f01256cd880e1d73000e8f', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:30:22', '2020-03-07 22:30:22', '2021-03-07 15:30:22'),
('937a7429d132bb97af4fdc95540199bd4ef82e5bb9bc22749ac6405b4ac8f5104f32b359d247254a', 8, 1, 'mobile', '[]', 1, '2020-01-02 20:32:32', '2020-01-02 20:32:32', '2021-01-02 13:32:32'),
('93932e61de35ee0565a32badc1939294b415f31b57d50a875ec0d3549161dfb2fb02eddfe4e7fc45', 196, 1, 'mobile', '[]', 0, '2020-01-29 02:23:03', '2020-01-29 02:23:03', '2021-01-28 19:23:03'),
('93c6215c41b4ea3fb18e536be1db1607823109b12773b2436c4144494a81974a2cc630d7eb56dae8', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:03:31', '2020-03-11 19:03:31', '2021-03-11 12:03:31'),
('93df44ce4836136998d982d52f63096adf82468b8f3bdb490eb76981a0466d7fb27dc0d579e81c5a', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:24:53', '2020-03-07 22:24:53', '2021-03-07 15:24:53'),
('93e763e067e084d880d77fc744a89180677bff7960d0e99913503a8a4017b79857aa55089624895e', 32, 1, 'mobile', '[]', 0, '2020-01-25 00:18:03', '2020-01-25 00:18:03', '2021-01-24 17:18:03'),
('93fdcd9762fa97a70a9204670c386d61399a535471b9a5e5cead8b69b373d24d3e38b6ca939ab796', 69, 1, 'mobile', '[]', 0, '2020-01-26 08:34:11', '2020-01-26 08:34:11', '2021-01-26 01:34:11'),
('9405c57ad70202bb8ff100444981adfdff0c609a37e87f35f62226497eac79d7bdf33af25e8ca842', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:09:59', '2020-03-08 01:09:59', '2021-03-07 18:09:59'),
('9406c87667e4507db9f092e2db1fc6e410d7cffcb01e8ddd9b93b1a95bc6cc41b67249dd5dcd0225', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:42:36', '2020-03-08 18:42:36', '2021-03-08 11:42:36'),
('9414f278bececf4363f7f9b1ce42b123063e31b027e8911a82fb890d6cc980f1f8a2aebdb05879ae', 267, 1, 'mobile', '[]', 0, '2020-01-30 04:29:42', '2020-01-30 04:29:42', '2021-01-29 21:29:42'),
('94672677e449a52b3235ff814f9bd85e8435d053f3ac33a302697ba07c7e02b1b75133422dfd557c', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:20:26', '2020-03-10 04:20:26', '2021-03-09 21:20:26'),
('949e62af6f0ac7c77203fb9d072c2784ecb6b743e252b435f9f6c37b4810ff984969364fb8fdc95b', 1, 1, 'mobile', '[]', 0, '2020-02-09 21:18:20', '2020-02-09 21:18:20', '2021-02-09 14:18:20'),
('955751d2b3cf0902d91def3eb7e6be89245c65522206e9feceaed7dad20ce3fe52e4abf4663b4b84', 1, 1, 'mobile', '[]', 0, '2020-03-29 18:14:54', '2020-03-29 18:14:54', '2021-03-29 11:14:54'),
('9565f418c4e9ebde4a9c00be89d690ce2f610379c428a5af1df3da54b0056622f0fb72c270d7cec8', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:34:02', '2020-03-09 14:34:02', '2021-03-09 07:34:02'),
('95a8caaec8fc16df248efe1349a206565d1526a217266336d6e881777312e96afda83a925f0c3749', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:13:28', '2020-03-04 20:13:28', '2021-03-04 13:13:28'),
('95cf8da24a7c7276ed2f582752c797c1c73e44c7a49b56cb1c94e4e9cd2c7d6adaac3d9d7029bb14', 325, 1, 'mobile', '[]', 0, '2020-01-30 19:38:30', '2020-01-30 19:38:30', '2021-01-30 12:38:30'),
('9683a8806c17a3bcdb0f3d2ed31f9347fe09dc85cad8def11ee0b29dacb1f363f992a40b8df51c24', 212, 1, 'mobile', '[]', 0, '2020-01-29 11:02:31', '2020-01-29 11:02:31', '2021-01-29 04:02:31'),
('96fb66db7861e9b839f9cc5cc8a0d03562f45b4e32bac9ccf92813ecec06bb366fbb8e936faa1de0', 35, 1, 'mobile', '[]', 0, '2020-01-25 03:13:32', '2020-01-25 03:13:32', '2021-01-24 20:13:32'),
('970ff041ff6a0f9aa94bc1f07fa22e010d5b607d5566925a4f155f33ca3dafc687c7006bcabdd103', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:16:41', '2020-03-05 05:16:41', '2021-03-04 22:16:41'),
('972093a352b417d5ca09f23ab7d1623d96a60dc89053017b2b2c56347580d0d2d9a82e36940f3008', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:46:21', '2020-03-08 17:46:21', '2021-03-08 10:46:21'),
('97392c43b013bddd925fb9cf80018aa1d1c407a493786753df0fe6a3e623e3fadcfba203aa97834c', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:29:21', '2020-03-05 08:29:21', '2021-03-05 01:29:21'),
('975cbdebdc4e9499d7363a22b0551328a0a93fa4608452848adb94e22b5b46a3b1bac32797c216e3', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:29:43', '2020-03-10 19:29:43', '2021-03-10 12:29:43'),
('9776f35434a8de57c78630d95e3c6ec9d0c0f3ebab6f3a6b30383737394a38b04818b1506e9cc566', 1, 1, 'mobile', '[]', 0, '2020-02-19 19:29:07', '2020-02-19 19:29:07', '2021-02-19 12:29:07'),
('977cb697b41b8c4884c0f142e47540d782517acd82ec1b43debc2659436aef26a17d921136268cd8', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:54:00', '2020-03-10 22:54:00', '2021-03-10 15:54:00'),
('9834d5f5fb097ead1a021fccf54dfff96038b8a151616f6191b51dbcf6c23337a376bd3e84fc6102', 1, 1, 'mobile', '[]', 0, '2020-03-10 18:53:41', '2020-03-10 18:53:41', '2021-03-10 11:53:41'),
('9872abf17b196478d6bb3551b910466eeedb027ad8172f501d96687651f2ee1fa8d114d2a2cae96b', 141, 1, 'mobile', '[]', 0, '2020-01-27 18:18:51', '2020-01-27 18:18:51', '2021-01-27 11:18:51'),
('9933ba5f10e18ada978e3c5f24b17c500742c7a9247f4b1b86cd6d47e083d2d71f86fb6081d21b06', 315, 1, 'mobile', '[]', 0, '2020-01-30 15:18:41', '2020-01-30 15:18:41', '2021-01-30 08:18:41'),
('9947d952807cb457be9f14e6f7ace865debe3daf23e37c7d3001a057824a9f46aaa59fad2abd12ef', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:40:46', '2020-03-10 01:40:46', '2021-03-09 18:40:46'),
('998ab9777200f3d13195e21be9f827d530a37d590751aa53befc08110fa622d862c248023066abad', 131, 1, 'mobile', '[]', 0, '2020-01-27 16:54:17', '2020-01-27 16:54:17', '2021-01-27 09:54:17'),
('99b31053e25834ae01e86c63fee0d21c5c89ea03ade4aa32d1bdd5b0298cb52398d0a61c6e8de068', 1, 1, 'mobile', '[]', 0, '2020-04-12 14:29:15', '2020-04-12 14:29:15', '2021-04-12 07:29:15'),
('99d989dcf73b053e05c369dd84782a9031b03a31a1be7b4c0642f1cf37115ae032032474323150b6', 1, 1, 'mobile', '[]', 0, '2019-12-09 18:13:14', '2019-12-09 18:13:14', '2020-12-09 11:13:14'),
('99ea46739ff2de64fdcd6d3974f9cf30c061f586921fe8d5538d3ae10558152e99955bf4e4440c48', 1, 1, 'mobile', '[]', 0, '2020-03-06 19:01:06', '2020-03-06 19:01:06', '2021-03-06 12:01:06'),
('9a36d36a858a9f01c40b6b3c9b20289fae628bdcb3b216ecad7f0e1195003d3cf03aa8ef87901274', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:14:58', '2020-03-09 13:14:58', '2021-03-09 06:14:58'),
('9a84c38d20a46ce82a0beb7460bb995b0e3085219f074b03a18ec0ac6e0aaff02c750f7a1fcb802d', 1, 1, 'mobile', '[]', 0, '2020-03-08 02:02:37', '2020-03-08 02:02:37', '2021-03-07 19:02:37'),
('9a8e1c4782d91999efe5218aec596898282efb02c03fb6437b65be9bc57399e041ea4bb127e7ad18', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:02:34', '2020-03-05 19:02:34', '2021-03-05 12:02:34'),
('9a9b480db40df91782d7e12a1b890ae74f4df0cf08a643e9a1636ec999e2dd2b540fe80de7c904ad', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:04:45', '2020-03-09 14:04:45', '2021-03-09 07:04:45'),
('9b3ec8f8efba3e69e4622843e3ed3137c6e152bd244a6d56e9a3d4007e99fbcdb9a164e0dca9d65d', 3, 1, 'mobile', '[]', 0, '2019-11-28 22:39:31', '2019-11-28 22:39:31', '2020-11-28 15:39:31'),
('9b6716a13a7f7eda342bfcf549e8182d528266492d5813907ed0e4c6d491b375d8ba7a5035be0498', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:10:03', '2020-03-05 16:10:03', '2021-03-05 09:10:03'),
('9b880b8147d680b92ef06ee86bf55e0f4579720e1664f77244ce2d11915e9d239764cb04458176d2', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:26:46', '2020-03-04 16:26:46', '2021-03-04 09:26:46'),
('9bb5e2cc57b6b577c3d4602bc18fadea83c2fb9aefbd1f3621235a4296a88e6413d576f194b061e2', 11, 1, 'mobile', '[]', 0, '2020-03-17 22:13:20', '2020-03-17 22:13:20', '2021-03-17 15:13:20'),
('9bd825736467f4c3488cdd36e1ed6b9427506ee6a21424ea1d71d17447cfdb75163125be02271639', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:09:36', '2020-03-10 03:09:36', '2021-03-09 20:09:36'),
('9bd9dc71cbda3e4900f19d3913f83526c2fac50921b79dc191366ce61d4e96903e57421f5f1ce4c5', 20, 1, 'mobile', '[]', 0, '2020-01-07 09:46:16', '2020-01-07 09:46:16', '2021-01-07 02:46:16'),
('9cea14da9ef13e4771cee20f995bd44754bd3f34f5b69fd4c7549371ad90b753a518d2900a49183a', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:26:29', '2020-03-10 19:26:29', '2021-03-10 12:26:29'),
('9ceba10991bb8bb6306303ea6d51353fec609c0aa51153b3c65618d16cec19f1c8706ce02a8d3e0a', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:40:34', '2020-03-07 23:40:34', '2021-03-07 16:40:34'),
('9d066175f659a37737fc2232bd17a836d7e6b15dde5d0c328d2d3ebfa72a187484203b014d0c2413', 178, 1, 'mobile', '[]', 0, '2020-01-28 16:27:14', '2020-01-28 16:27:14', '2021-01-28 09:27:14'),
('9d552076e6e7851a336d01859c217ac8cb12d39c722d1337897515692397fe2352cd8309456193d1', 87, 1, 'mobile', '[]', 0, '2020-01-26 20:06:12', '2020-01-26 20:06:12', '2021-01-26 13:06:12'),
('9de97cfb06aa31aaefc014f4826f69e93969b8eaf37789b44dfd698e53184aea30a5639148bc0917', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:32:10', '2020-03-05 06:32:10', '2021-03-04 23:32:10'),
('9ee16422a7fc3562d42231cc2ab78f25fea9b1c66eda3014b2e8b011e86a5c4db2f0f4117d7c4b0d', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:55:43', '2020-03-05 20:55:43', '2021-03-05 13:55:43'),
('9f0363e705f082e525e571b4f5c4c1210d175438a8d2c71d40d00d851344c2599ea9d170ccb8b2c7', 1, 1, 'mobile', '[]', 0, '2020-03-05 07:28:38', '2020-03-05 07:28:38', '2021-03-05 00:28:38'),
('9f6b85452788f4595e3589c61b2a5f221662546cb9ad1f5c72eb196b163c6e98354b31aa798ef6ad', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:01:36', '2020-03-03 21:01:36', '2021-03-03 14:01:36'),
('a0222a2e2276da1cb877eac19a3fb8f87257f07050a35364520eabda6fdaf1f91a00bc9aa8099e20', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:35:17', '2020-03-07 22:35:17', '2021-03-07 15:35:17'),
('a031ba827df6c148f516d49f1224c08346fd8f4fac9a68e2585706a7c60b6a9bc20812ab9164de53', 255, 1, 'mobile', '[]', 0, '2020-01-30 03:42:28', '2020-01-30 03:42:28', '2021-01-29 20:42:28'),
('a03f94e4ab5d6702de0dd63accd81065e349d02a830dd9aebfeedb07cb746c2cec47dc1b77590e2c', 1, 1, 'mobile', '[]', 0, '2020-03-06 19:06:29', '2020-03-06 19:06:29', '2021-03-06 12:06:29'),
('a0cf4b786079e18654cb78bc430db6fd345687770bd60263ec2f0455202c9547eed36cbeb1fab66e', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:14:41', '2020-03-09 13:14:41', '2021-03-09 06:14:41'),
('a0d5ad7c85ec4fbe826e8f47e1ce8323f391c896d7dc0ca19a39231b8fa2749415166bcb1a32c6bf', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:42:48', '2020-03-07 23:42:48', '2021-03-07 16:42:48'),
('a0e51e36815f32182298765fc50c63f31c109dae81eae5f20557292f9d81928b538e208060a0fd10', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:05:07', '2020-03-05 16:05:07', '2021-03-05 09:05:07'),
('a127e276f4e51b3f9f17bf4bb208da2050273a13a5bdce44035deebe100b05af9dd178f1bcca5f02', 1, 1, 'mobile', '[]', 0, '2020-03-10 00:32:35', '2020-03-10 00:32:35', '2021-03-09 17:32:35'),
('a1377c7470f3a68f05289b04d47b6f93b02f59c39e8594a2cd06f6e0d011602d4f47a09a06019654', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:31:03', '2020-03-03 21:31:03', '2021-03-03 14:31:03'),
('a152ed8ccabdb3f8a490aa4b6fbaff894552eb050613540188cd868f4422ce31f01d71e7df44d1c0', 167, 1, 'mobile', '[]', 0, '2020-01-28 04:50:10', '2020-01-28 04:50:10', '2021-01-27 21:50:10'),
('a1b8bb772c877af1415fba3c281210986a7761619b272f9554c4e7d0206a5e1d512215b778953cdc', 115, 1, 'mobile', '[]', 0, '2020-01-27 15:20:00', '2020-01-27 15:20:00', '2021-01-27 08:20:00'),
('a1d1815a48533458aa22cb9b8e9af6c9b70356a3d546046b092d115ca68ccb19c35f41dc3b010b5e', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:54:48', '2020-03-10 03:54:48', '2021-03-09 20:54:48'),
('a1e1b9a78736b1c2c9b2e18c08870ba46fbce0727077f6ff8deda49371faa5be4259f26e94a9ebee', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:45:07', '2020-03-10 16:45:07', '2021-03-10 09:45:07'),
('a2297e29bd42aa46ef228e7678e80bd1533d5af63556658468f68e5f45cdd5888bb1c0cbaf18d12a', 1, 1, 'mobile', '[]', 0, '2020-03-11 20:16:09', '2020-03-11 20:16:09', '2021-03-11 13:16:09'),
('a319afe1e8f506239c77160913246b068bde76b4e0c90375fd364c6a284f4f401be16eac00803047', 9, 1, 'mobile', '[]', 1, '2019-12-05 20:51:19', '2019-12-05 20:51:19', '2020-12-05 13:51:19'),
('a31f8cf42e2a4b1d698008db97223f3d7a81802718827ad191882d71bc5da8b7f1911c81ce75f411', 175, 1, 'mobile', '[]', 0, '2020-01-28 06:18:17', '2020-01-28 06:18:17', '2021-01-27 23:18:17'),
('a33784364ba10fe800a136690679f446383e53e97b6d63ea1a766962c526a5d204f1ea8c75645f56', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:42:51', '2020-03-07 23:42:51', '2021-03-07 16:42:51'),
('a384e7be7e245d6df508684b318b0da50d32409e52d8740c1a60c3831f1441422e0583fa24ced4d5', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:09:47', '2020-03-10 17:09:47', '2021-03-10 10:09:47'),
('a3a558b13e094f00b3024278708b189e0cef361e19e19a81e7fb23c37daf1fb6d5524028781b510c', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:21:50', '2020-03-10 16:21:50', '2021-03-10 09:21:50'),
('a459865e941a6dc8f44fa5960a44a7985c8c4349dfad32db008f33411afe19517c4854be0bf0701c', 120, 1, 'mobile', '[]', 0, '2020-01-27 15:50:59', '2020-01-27 15:50:59', '2021-01-27 08:50:59'),
('a4640757edb04b25e1c4917a910d26045d4c13aab58c943da25a52ad00aa7654f493642a5cc57afd', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:49:44', '2020-03-10 01:49:44', '2021-03-09 18:49:44'),
('a4c42687fdc4a46ebd1e448a6c7d2623dfc954dc229e5c43f7b256263270a55f018ca87f8800095e', 1, 1, 'mobile', '[]', 0, '2020-03-09 15:01:53', '2020-03-09 15:01:53', '2021-03-09 08:01:53'),
('a4cb33912a3c58edfc201ddb2a2cc18ca3d7538f80b76e253371b665ce52d807e38beb9e446de071', 333, 1, 'mobile', '[]', 0, '2020-01-30 20:47:45', '2020-01-30 20:47:45', '2021-01-30 13:47:45'),
('a4fbc0fc638a3344faf4e5edf2d1c978664b7c4a78ebd92adcfe1fcec58cf80e3ae85d87288fab4c', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:52:01', '2020-03-05 02:52:01', '2021-03-04 19:52:01'),
('a51c876f7e116d3950a96c1a0c3040653cd69131d89296290df60b7532f60be795bbe8524cc083f4', 1, 1, 'mobile', '[]', 0, '2020-03-11 18:40:09', '2020-03-11 18:40:09', '2021-03-11 11:40:09'),
('a581bf2821ac99d6831c88f16bb2eae7ada25ff3513485dffea3bda8398ea423c454f3d9d349c302', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:40:55', '2020-03-08 01:40:55', '2021-03-07 18:40:55'),
('a5e906ca553c9d69ba9b681a1f1be504899e5612d2004cf79af039f540d9678e29e80c00582d3e6b', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:48:18', '2020-03-09 01:48:18', '2021-03-08 18:48:18'),
('a64581975fe206c11a10903112ac0dd0c150818f7135bcf15ff3fecdd19e72a7c6a087b2ca8c5e6c', 1, 1, 'mobile', '[]', 0, '2020-03-13 01:17:53', '2020-03-13 01:17:53', '2021-03-12 18:17:53'),
('a645b0237ea7aff082c71feb51316fb5dcaf22fbd93ca75aacee0de2e7c07bd8c619aaf3bc8113b3', 1, 1, 'mobile', '[]', 0, '2020-03-11 20:19:47', '2020-03-11 20:19:47', '2021-03-11 13:19:47'),
('a66c35715275010c1914cdf40d178b54b07919bf8fa813104aa6fa338b369fec667ded121409c9cf', 1, 1, 'mobile', '[]', 0, '2020-03-05 18:36:31', '2020-03-05 18:36:31', '2021-03-05 11:36:31'),
('a75b469cf65070836c6e9a9c5a6caabc621c7747ec127192b3b7b7ec646b5834cc67c15447bc2eed', 65, 1, 'mobile', '[]', 0, '2020-01-26 06:58:03', '2020-01-26 06:58:03', '2021-01-25 23:58:03'),
('a7680e152a67776d933117cff86527363a33af639bde053588e37eef6cae262bcf9899acb4d1122d', 187, 1, 'mobile', '[]', 0, '2020-01-28 20:37:33', '2020-01-28 20:37:33', '2021-01-28 13:37:33'),
('a7cf76cff4a67903fd659ee9d6ff7e3698594ae1a245714ddf0fc22022160265f54265334b93a7e7', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:49:32', '2020-03-07 22:49:32', '2021-03-07 15:49:32'),
('a7d0ce057f55fd2a5a8ba51ccf89be7a70e5280c5be5ddd7e4f0f3aa8ea389467299c624a38e789a', 326, 1, 'mobile', '[]', 0, '2020-01-30 19:55:19', '2020-01-30 19:55:19', '2021-01-30 12:55:19'),
('a7f9ec6248e0add00d2ec0aabc51c9187c13740031ff045c63bc09daa97e3bc8c074876e5fb699ef', 1, 1, 'mobile', '[]', 0, '2020-03-06 04:01:33', '2020-03-06 04:01:33', '2021-03-05 21:01:33'),
('a896c9027892d549f2f4fda4421c1f33b097f99450ada9c35c5738ca7993f623d649d3da3d6c6bf4', 298, 1, 'mobile', '[]', 0, '2020-01-30 08:06:31', '2020-01-30 08:06:31', '2021-01-30 01:06:31'),
('a8bcb513ff3df5a384e3faedbd37872a772f0b5f90ee1178376798c6778125f02e505edc76619077', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:47:59', '2020-03-08 17:47:59', '2021-03-08 10:47:59'),
('a8dc1927dadb3d00c89e63b0966441412f16f6f987e402b8cbdc60f68c2b72635130c30a8c783d22', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:06:41', '2020-03-11 14:06:41', '2021-03-11 07:06:41'),
('a8ed7a20e383f98574ed856398627b637981827b89411f2fec5815b2d79195177b0abd1144cf68db', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:27:25', '2020-03-07 21:27:25', '2021-03-07 14:27:25'),
('a8ffd1c5f6993a026b38101b3721f77f07af4056e9fddb8eca3d709cf8f29360ec19e1b662fa26d3', 1, 1, 'mobile', '[]', 0, '2020-02-19 22:03:50', '2020-02-19 22:03:50', '2021-02-19 15:03:50'),
('a93b59d4db81656559c03338f1b22cf538135da19851c417bb36bed20d15048e3508f8d278afa635', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:08:50', '2020-03-10 04:08:50', '2021-03-09 21:08:50'),
('a974e857b13359e1ebbaff2899a9f9c945ea858708f6606d585316b5bd160b335fc60c3d764f4709', 15, 1, 'mobile', '[]', 0, '2019-12-18 02:01:00', '2019-12-18 02:01:00', '2020-12-17 19:01:00'),
('a9958227477551c47e2fd25af65f4660d832adc9b1735cbb735fd4a0d3a5ee2f986125f07398a1d3', 169, 1, 'mobile', '[]', 0, '2020-01-28 05:31:42', '2020-01-28 05:31:42', '2021-01-27 22:31:42'),
('a9c0e2e7df3c19cadfe743aadcae301ec9c6957f9532da97af12777d4356ade6e30a1eb7af5d1806', 328, 1, 'mobile', '[]', 0, '2020-01-30 20:03:53', '2020-01-30 20:03:53', '2021-01-30 13:03:53'),
('a9d6164a023883acff30d7cf2dba84620f6a801dd3d010eaa7d6728211411bae8f0e3007092f0e3a', 1, 1, 'mobile', '[]', 0, '2020-02-19 18:49:03', '2020-02-19 18:49:03', '2021-02-19 11:49:03'),
('ab09229d9012ae04a8b619ffc676a5ac98fd81f9c9270a141ebb10588b848cad27a4ba305ffee2c9', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:24:04', '2020-03-07 23:24:04', '2021-03-07 16:24:04'),
('ab68e2f921133cbd2ccea91877716127fe4372cae91eb48d576522977e84be0c0a638a5f8568186e', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:00:52', '2020-03-08 01:00:52', '2021-03-07 18:00:52'),
('ab6be045810d6641a8bd46c14fe3f7296e0201e15f24b63bcdd7ac8fd9d7a9d30b8b0fe322dc18f5', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:34:44', '2020-03-10 01:34:44', '2021-03-09 18:34:44'),
('ab7f8b83bd3c912237ce5648f7b03703c186cca472877e7a3dfb8376b107dd1d8a76668fe538a27a', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:57:31', '2020-03-07 22:57:31', '2021-03-07 15:57:31'),
('ab8873018db0f3d2363ab598a18215ecc355c969da48cfb07e665bfb7295f75b1fea8b7c965c96e0', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:13:00', '2020-03-03 21:13:00', '2021-03-03 14:13:00'),
('ab9addf0d8b6cbb82cd9703012fce8448dc28483d4b0c75624c7a871cdf5f48b18d711bafd563f73', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:28:31', '2020-03-04 20:28:31', '2021-03-04 13:28:31'),
('ab9b2fc9106aa0ead628f1d2481a3cb71603d0875eb9a5b4b264b0e4bf1b9d6b0652387f660ecf59', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:10:29', '2020-03-04 16:10:29', '2021-03-04 09:10:29'),
('abdda27996edb95c120619ab44f3d795fff302ba6c095d9dd446bef469397f7a5e311e3c26a46f53', 8, 1, 'mobile', '[]', 0, '2019-12-12 20:42:56', '2019-12-12 20:42:56', '2020-12-12 13:42:56'),
('abe2855823e5cee1211370e7e6314a4631c3192fa0bed46058001afcdcf50ddfa3af9d7f5215ac68', 116, 1, 'mobile', '[]', 0, '2020-01-27 15:33:31', '2020-01-27 15:33:31', '2021-01-27 08:33:31'),
('abe7f0c7d5fc793b290ea7fea83e1185a19ebf71fc12850de74de86669b4a0309dd29bad3e03c8e9', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:42:30', '2020-03-04 16:42:30', '2021-03-04 09:42:30'),
('ac080fda14df3d80d4d873d212e59098d230236813a7aa86a95d37adb2e45f02b7fbd26c0677e870', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:23:35', '2020-03-10 04:23:35', '2021-03-09 21:23:35');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('acce50dc271bab9db216b44acd90fda95d92da62fb32e708752ebcba46a6783840d0d493d8532a03', 1, 1, 'mobile', '[]', 0, '2020-05-28 05:28:49', '2020-05-28 05:28:49', '2021-05-27 22:28:49'),
('acf6e49b77d8d6f504685834f684d1b4e78add56038669e303146108ffb00b5b57d8c7b5fddb0b85', 3, 1, 'mobile', '[]', 0, '2019-12-11 03:13:32', '2019-12-11 03:13:32', '2020-12-10 20:13:32'),
('ad3227efafb0b2151fc2e324377f9cd303e50c8e1b38a643f3f8e71ea1fd7066cfbed19a05349984', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:41:50', '2020-03-10 16:41:50', '2021-03-10 09:41:50'),
('ad73249c340d9c7d4b4d318235f30a0d887ed136e1bf8ef07a6e7334599c2fc0c6d277126836ce82', 1, 1, 'mobile', '[]', 0, '2020-02-18 19:58:31', '2020-02-18 19:58:31', '2021-02-18 12:58:31'),
('ae69a0c335cfca86a93dbd56672aa41710a6500e503ff29f12561a01dca6df199227f2ab6ef49a23', 1, 1, 'mobile', '[]', 0, '2020-03-01 17:12:33', '2020-03-01 17:12:33', '2021-03-01 10:12:33'),
('aea36d51a36a2eb72049cc83da8c74faaaed5dad1c725420b41a53cc423610b728fef40b41b66617', 294, 1, 'mobile', '[]', 0, '2020-01-30 07:17:56', '2020-01-30 07:17:56', '2021-01-30 00:17:56'),
('aed9de2d8099d57318baebb44d72968eb049a100898425757ab41a7008cce87d928b983aa15a6d16', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:24:49', '2020-03-10 22:24:49', '2021-03-10 15:24:49'),
('aee3b3c295c615ca7700027883a28b4958eb8c29ee3498f6c0e486fec556d59efdbd6e54482e5aef', 1, 1, 'mobile', '[]', 0, '2020-01-30 00:03:08', '2020-01-30 00:03:08', '2021-01-29 17:03:08'),
('af0a9cd13668c8e321800fc054283106995a499863bb13728fb9d4276f844ff5b1b7e29ceb2a9500', 1, 1, 'mobile', '[]', 0, '2020-05-05 19:52:38', '2020-05-05 19:52:38', '2021-05-05 12:52:38'),
('af59866c7a44b0fbabdb891429ecd5cecf06360f4c88faa1e7ded9ad9cc3bc107a0cf31486e14e52', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:10:18', '2020-03-03 21:10:18', '2021-03-03 14:10:18'),
('af976bc32f2910aac4628d6b46a6d1b482f65b18ac8be169068f51f8bd2192b5a4cf32f4d82a7a5e', 296, 1, 'mobile', '[]', 0, '2020-01-30 07:24:41', '2020-01-30 07:24:41', '2021-01-30 00:24:41'),
('af99965c7d71a7734ff4b0901dedbd92e08b7d3ed1930cb31f067c111db9c0363d5e5ee0279f12ae', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:02:50', '2020-03-05 20:02:50', '2021-03-05 13:02:50'),
('af9f2b30d9699e8195aacb487a7759a655094b991cdee62bd843898c5c3056f02e5e720433e4e607', 10, 1, 'mobile', '[]', 1, '2019-12-05 22:57:23', '2019-12-05 22:57:23', '2020-12-05 15:57:23'),
('b003aa90698df006c475c067c40ce339747955bd7f71354521c7866bc6cee280980df31497cf88ee', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:24:54', '2020-03-05 16:24:54', '2021-03-05 09:24:54'),
('b046b78a236661bf63cc989e9a679574f96ac99c3178303f90f2a81513c5052bee295913f1345bbd', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:20:56', '2020-03-04 16:20:56', '2021-03-04 09:20:56'),
('b06d992886f772cece69f15c52196612f66121294a6ff013a75344fa80c3e279cd8d0799b87caf9d', 1, 1, 'mobile', '[]', 0, '2020-03-05 18:43:24', '2020-03-05 18:43:24', '2021-03-05 11:43:24'),
('b0cb8149477979a1766b5d2e7e362e40596dc3abe943197336924347ffeb2d101c7dd8815518aadc', 5, 1, 'mobile', '[]', 0, '2019-11-28 20:10:08', '2019-11-28 20:10:08', '2020-11-28 13:10:08'),
('b0e77c38929f9985dbcb73e25520fae4f0ea38a9945232e9935f1609c9990e60759502e7ece716ab', 3, 1, 'mobile', '[]', 0, '2019-12-06 02:55:54', '2019-12-06 02:55:54', '2020-12-05 19:55:54'),
('b0fb6527479126979db9e45786b5a71c52690de974a58b074dc166f064178df72ef8e7f24521cff2', 1, 1, 'mobile', '[]', 0, '2020-03-06 04:41:07', '2020-03-06 04:41:07', '2021-03-05 21:41:07'),
('b1406946ec5a2cc9628437a0fdc4bab2d63ba61120f76d7d978c0866ea33588207a1bba211dd7b43', 1, 1, 'mobile', '[]', 0, '2020-02-18 19:05:49', '2020-02-18 19:05:49', '2021-02-18 12:05:49'),
('b15888262aaf06660b7961032852e63c3bc7226997034db012fa7bda92a4779420ba6dd141827153', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:59:44', '2020-03-08 00:59:44', '2021-03-07 17:59:44'),
('b17b051510cab5e2f592ac865febbfd2a078fc4e3d12f865c1ef5249caed36acc47b68fa23ce13ea', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:30:49', '2020-03-10 19:30:49', '2021-03-10 12:30:49'),
('b1c1452cfdcdeb42bb147d5b1c37593395126a8e8fd63f5f7e8e20e6c40fbd66741188010df330d4', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:45:34', '2020-03-10 16:45:34', '2021-03-10 09:45:34'),
('b1da50295b85dde10e0e109f09e6080be5425e9ea8a11d30b4d7121c17ee59e031fbec3aa19e490a', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:39:11', '2020-03-09 14:39:11', '2021-03-09 07:39:11'),
('b1f805966d45b8bc052f2f4eae729182c4c544366bda6efa92c1dee882c20652d1a4a594c632186c', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:36:08', '2020-03-07 23:36:08', '2021-03-07 16:36:08'),
('b2c468c2aa6cb5cf9050643a7ae3c6989131860f98a19925e3abaea0fbcab3494964e2c570694fd0', 310, 1, 'mobile', '[]', 0, '2020-01-30 14:14:15', '2020-01-30 14:14:15', '2021-01-30 07:14:15'),
('b2d3afca42f5300d6cc35dbaa3f61b0d9ed72be90c5456ec6ea2fa6295f8a2b9d531297be6952431', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:54:55', '2020-03-09 01:54:55', '2021-03-08 18:54:55'),
('b2daac2d7c8dcb4c8b55e6ac734295aa04694ff3de0250b70fca81cdedd0cba03bfebccbdc637845', 1, 1, 'mobile', '[]', 0, '2020-03-08 21:19:42', '2020-03-08 21:19:42', '2021-03-08 14:19:42'),
('b33141f5a92b539c666ece9bb2045f0b0f96db6593e960d8e313c2a1f46aef386b0497f3e390c363', 1, 1, 'mobile', '[]', 0, '2020-03-04 15:19:51', '2020-03-04 15:19:51', '2021-03-04 08:19:51'),
('b38483cc7a42cff1e3e1f033570ce0db61134e94b0303b8f0bfb617854fb43c732fbbf0296619ac2', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:35:18', '2020-03-07 23:35:18', '2021-03-07 16:35:18'),
('b3fdcb502541573890db54b6f4384804daa9cad1bf858bd9c6ba1fec353ac693b6132dfc89a407d0', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:44:47', '2020-03-10 04:44:47', '2021-03-09 21:44:47'),
('b42d3e80fa3d4a8eeb24ee288fb894a5ea601a1a12c7609c3ce743a7197f74934ea26d98ab95c8bd', 260, 1, 'mobile', '[]', 0, '2020-01-30 04:06:27', '2020-01-30 04:06:27', '2021-01-29 21:06:27'),
('b4d2c9fb991c69baceeb02497e0936b3e2fedafa32b14a1d7c5097c5536bb232b4a49627ac1bfe17', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:57:46', '2020-03-05 06:57:46', '2021-03-04 23:57:46'),
('b559dfa8ce2af013ce712a430c22fc01ea09247ea02db8e6509307cd762eb9883e69515f6f903101', 1, 1, 'mobile', '[]', 0, '2020-04-20 23:37:41', '2020-04-20 23:37:41', '2021-04-20 16:37:41'),
('b5647a75b8d3ef31eac0ea990fe54db7a78a3f24d652c2777faed3b5bf6801466d156efc6e0f56b1', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:41:15', '2020-03-10 17:41:15', '2021-03-10 10:41:15'),
('b582dd7fdc4ff687638b8ba95325f2c550378e35e50acad5b0b4425f08c84cfd7cd346722e3f552a', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:50:46', '2020-03-07 23:50:46', '2021-03-07 16:50:46'),
('b60958488043c48dea34218d2258dfcf08cd99d29a0cea08a437da7c2a59f78f04ed51f82f55d35b', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:12:29', '2020-03-07 23:12:29', '2021-03-07 16:12:29'),
('b6610f9702d5792483a647c417b8e3fc988060f59eda999c99c1ea4696a9da45eac05fb398b07a51', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:16:59', '2020-03-04 18:16:59', '2021-03-04 11:16:59'),
('b6a926cd92108efcd992aa0dbf19103d4ca3fe64d17f0c5c91510555927fd08c66e95bb5eba8f63a', 1, 1, 'mobile', '[]', 0, '2020-03-01 17:30:01', '2020-03-01 17:30:01', '2021-03-01 10:30:01'),
('b70749c4ffcb80d1cfebd1357cbba89c213231b80818c477abb5afc59f214cd9a57f4979be533f1e', 165, 1, 'mobile', '[]', 0, '2020-01-28 04:00:56', '2020-01-28 04:00:56', '2021-01-27 21:00:56'),
('b7176c20a830cbf8d8d106002fed9b18653033153810e746be1a034f0cd9f38b22a9990d0a715d2f', 1, 1, 'mobile', '[]', 0, '2020-03-11 22:55:21', '2020-03-11 22:55:21', '2021-03-11 15:55:21'),
('b7311d381bc24ae8259893a65cc786327e5c60f3577a845602c46f14f1c86533e0e1e78c1c28ca98', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:13:00', '2020-03-09 13:13:00', '2021-03-09 06:13:00'),
('b75979f490261344f62f2d2a361673e0b359988a01ecf3500527625a40bb3bdfa462adf29e17ec44', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:00:41', '2020-03-07 21:00:41', '2021-03-07 14:00:41'),
('b7f85c31a3a9d2e769d864b02d9c92ad7d64f213944705167f82c2c08a2cbb10384cc7ce37ed4fd6', 45, 1, 'mobile', '[]', 0, '2020-01-25 23:28:58', '2020-01-25 23:28:58', '2021-01-25 16:28:58'),
('b807e4560bdefc0574ae4d77c5771117407f872b76cd51ff3e3235caa1ed52397ffe30cace901f6d', 203, 1, 'mobile', '[]', 0, '2020-01-29 04:59:19', '2020-01-29 04:59:19', '2021-01-28 21:59:19'),
('b829f9a5d03c17a8233b1b46b5e668396d2bd586054e6e40339fdf59f3b24a9fbab5d81a64c55ed9', 258, 1, 'mobile', '[]', 0, '2020-01-30 04:00:12', '2020-01-30 04:00:12', '2021-01-29 21:00:12'),
('b8c9acbb53f17495a52695e9e669a53ee8a2b646bc7214b19248883bc1088a6ad45979a0d567635c', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:49:12', '2020-03-10 01:49:12', '2021-03-09 18:49:12'),
('b8e40c38e4159ea0487add186eaab3cdec77f8fd4998c4b17148665a08a373b2c4e99ee47c9427cf', 1, 1, 'mobile', '[]', 0, '2020-03-08 23:42:33', '2020-03-08 23:42:33', '2021-03-08 16:42:33'),
('b909ea48d899dd7ff3ee7b7b1553e91359012fb5ebed500f243f9efd00c8b00b502a4243faef308f', 43, 1, 'mobile', '[]', 0, '2020-01-25 21:51:46', '2020-01-25 21:51:46', '2021-01-25 14:51:46'),
('b9a1b777b8792938ff41ae4ceef1431c0f59ec6af6357fbabbe53d7a046a1f4f33df910f18d3bdd2', 79, 1, 'mobile', '[]', 0, '2020-01-26 18:28:08', '2020-01-26 18:28:08', '2021-01-26 11:28:08'),
('b9cfbdf101c0e636e607b885051fb8b57915da645314c9b5b8c1850f7edbbd7040aaa1160746a127', 1, 1, 'mobile', '[]', 0, '2020-03-10 21:08:01', '2020-03-10 21:08:01', '2021-03-10 14:08:01'),
('ba22d82a862d1664f12499b46c8ec95cea0a2d549f599cf13db613560e40557395dcf6b0a0cf0c1b', 148, 1, 'mobile', '[]', 0, '2020-01-27 19:25:58', '2020-01-27 19:25:58', '2021-01-27 12:25:58'),
('ba854871f99a467a96cc0f0d18a820abde868ae0bd34a95193e657f280d4ff0a31167d49b64c468e', 1, 1, 'mobile', '[]', 0, '2020-03-05 09:18:39', '2020-03-05 09:18:39', '2021-03-05 02:18:39'),
('baf722631fabcaf3134d36be35e2edac0312cfd0492f2ba42f5232baf0be62bafe455b255295f343', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:37:18', '2020-03-04 16:37:18', '2021-03-04 09:37:18'),
('bafeb2cc480a5f6b1b283fcb3fc7e610a6129c8b716d2e05bfe0f1dac982149ffeb8afdc0a1f9f4d', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:50:34', '2020-03-10 02:50:34', '2021-03-09 19:50:34'),
('bb79d1a8fcc0c60d6ffa7490f649f48fb40ef9e3fb6c66d0ea635d3ad8032e0655a66997b4ff6694', 1, 1, 'mobile', '[]', 1, '2020-01-02 01:46:05', '2020-01-02 01:46:05', '2021-01-01 18:46:05'),
('bbbeed9a14a9c02a99c9594659711886c3b0c916002233ba18a96bf846e61b97dd329850f60f7e15', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:21:49', '2020-03-07 21:21:49', '2021-03-07 14:21:49'),
('bc27c208aba6ece9b561afe62bceeb54eea0382297ceda13ad2a37b3e9ffb4e5d798d0c658afe005', 12, 1, 'mobile', '[]', 0, '2019-12-11 22:20:28', '2019-12-11 22:20:28', '2020-12-11 15:20:28'),
('bc402f501f2eda911dfaf84f33567cebd17ab6db05dae2b05c07adc7f282c7bad2a251224da7cdb3', 337, 1, 'mobile', '[]', 0, '2020-01-30 21:11:56', '2020-01-30 21:11:56', '2021-01-30 14:11:56'),
('bc7377a2ae978e2e31ab8f717367ef7a7b34d1cd9156678e6c1dad074b607053cedde39c50cb5b4c', 8, 1, 'mobile', '[]', 0, '2020-01-09 21:01:25', '2020-01-09 21:01:25', '2021-01-09 14:01:25'),
('bcbdc007e9ae5522531100240effcd5260962cac5f3356ade69fc48a53b4f0aa5aee8f743c49f876', 11, 1, 'mobile', '[]', 0, '2020-03-17 22:17:25', '2020-03-17 22:17:25', '2021-03-17 15:17:25'),
('bcc800305ed952a24cdbd42b84be651cf2813fc9975fb91113ae68588fd1d4db91b09c4c4acdb52a', 319, 1, 'mobile', '[]', 0, '2020-01-30 16:35:02', '2020-01-30 16:35:02', '2021-01-30 09:35:02'),
('bcf7a13e383ea1b52f06481a0b67f13d7f3fefc956227acc64acee6c42a90841de3351f5b88cacf9', 53, 1, 'mobile', '[]', 0, '2020-01-26 01:45:03', '2020-01-26 01:45:03', '2021-01-25 18:45:03'),
('bd551bdcc52dd1270c96d6046ff34f3e304e07cfb4c5a09c529af0d9445c3a32dbd2c28df883f10f', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:15:58', '2020-03-10 20:15:58', '2021-03-10 13:15:58'),
('bd67ec2793d5e4595d867791afec907459af5bff77c79eec4ce66591609acaa493a14f4e4cab1f57', 1, 1, 'mobile', '[]', 0, '2020-03-03 21:14:23', '2020-03-03 21:14:23', '2021-03-03 14:14:23'),
('bd8bed9c8cb29bf0e9821c105500641c241d902b6524e562a66454470b4dfe26b981d256b496b63c', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:00:49', '2020-03-10 19:00:49', '2021-03-10 12:00:49'),
('bda632fffd9d6e65e2920c0ae3b1db26441980243557b6e7ea275bdabed204ae99d66c26b56e2377', 1, 1, 'mobile', '[]', 0, '2019-12-23 02:50:20', '2019-12-23 02:50:20', '2020-12-22 19:50:20'),
('be5c6f1911e6338925967d695ad007b0697c9aba640e9d05cd4afdca3bd92604ab70fe4bfc765393', 280, 1, 'mobile', '[]', 0, '2020-01-30 06:08:31', '2020-01-30 06:08:31', '2021-01-29 23:08:31'),
('beaade27e0fbf78c59b3202825f0cb1e7a0fcff6b422c7b2e906b616de7446acf626cef6664ab490', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:35:47', '2020-03-07 21:35:47', '2021-03-07 14:35:47'),
('beb74191e8944b16f9d29a5707846f5dc2db83af210f45d2485ae7381209fb78cdde8ecdb94250fd', 132, 1, 'mobile', '[]', 0, '2020-01-27 17:04:27', '2020-01-27 17:04:27', '2021-01-27 10:04:27'),
('bef0cababacc75a6526beef9fb6b6964f03b5efaa333ae7c6fa82d8bf7ccb2d2a20a1a7cf8490171', 290, 1, 'mobile', '[]', 0, '2020-01-30 06:58:35', '2020-01-30 06:58:35', '2021-01-29 23:58:35'),
('bf11747a8115abba074c71badb243927841a649550c725b46ea4ccd7bde243a9e9b4fdcecbbfc487', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:44:27', '2020-03-04 18:44:27', '2021-03-04 11:44:27'),
('bf3f00fd4b720b3788ecece2986daad1b129a8908fd6d7336438c0f3a0fad616c8b3b3de41b5a5a0', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:33:08', '2020-03-09 14:33:08', '2021-03-09 07:33:08'),
('bf65dd34b4a9623852303710f03710403ff1ea1216f7c911d22b92b23321178f44afbbd7379b0325', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:04:59', '2020-03-07 20:04:59', '2021-03-07 13:04:59'),
('bf883c2dec559c457065e128ee49d8dc0cf22eb78365ecc508a508651e01595ae93d7e44d4f794a1', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:24:33', '2020-03-10 01:24:33', '2021-03-09 18:24:33'),
('bf8f58e0abe58f2973b6792b60bd73eb3014c19209e7ea5c2995f516b010a69b1fd7468129e18c3c', 153, 1, 'mobile', '[]', 0, '2020-01-27 22:29:21', '2020-01-27 22:29:21', '2021-01-27 15:29:21'),
('bfe14761ee0b9de1cb3120fc1d033fd70b341a58a3f57f12037683f0b0c1612ab9177f425cae8d3d', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:18:19', '2020-03-10 22:18:19', '2021-03-10 15:18:19'),
('c02f8f6aa11dddaffc1ff68583a1d7e9efb4ecd68189f5fd59b5e9e255ee534f5ef32d86a2aefdcb', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:18:10', '2020-03-07 20:18:10', '2021-03-07 13:18:10'),
('c03b9093815ac37d03a9570721587433c6463ec93524a3f949584b5765fc486bc88688c8ac446cdc', 317, 1, 'mobile', '[]', 0, '2020-01-30 15:28:13', '2020-01-30 15:28:13', '2021-01-30 08:28:13'),
('c04b2c31deef2d8800dea6fe618a581a9aa0005dfcdb116a05d32fbc542df35b7ccd2ba582fad4b2', 95, 1, 'mobile', '[]', 0, '2020-01-26 23:52:54', '2020-01-26 23:52:54', '2021-01-26 16:52:54'),
('c06faf101aa3ddc22b3de2464b8dcff5a6b9e70d0afb105d287f602ae44f3dbef88d700f4d466a93', 1, 1, 'mobile', '[]', 0, '2020-03-09 22:02:24', '2020-03-09 22:02:24', '2021-03-09 15:02:24'),
('c0cb0e7cebcc75249e38b0c8518effc673fbf372aada8d7e4291ae099dfc9193abb7dbf3cbddade5', 105, 1, 'mobile', '[]', 0, '2020-01-27 04:51:34', '2020-01-27 04:51:34', '2021-01-26 21:51:34'),
('c100ec4d82beb88f5004977f82226563efe3ee02451a0f0a10c2463e0d987e6a960e7f71df0dc7c1', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:13:06', '2020-03-05 19:13:06', '2021-03-05 12:13:06'),
('c11058715e276459e4dce5b7186738e5589e6f4e77ca3a021ce1aef6201022eb409b22807d3b48d6', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:24:04', '2020-03-07 22:24:04', '2021-03-07 15:24:04'),
('c1145fae702343ead69ae1a98370241f739f53b1ed5ee15eb56e190979f488bf1d7f17bbec292beb', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:05:55', '2020-03-10 17:05:55', '2021-03-10 10:05:55'),
('c14abb87ab503f4c433ef75b25991bbfcd9d813221e304ee793c1b8ed81448d21bbfed8eb12125b1', 233, 1, 'mobile', '[]', 0, '2020-01-29 21:58:14', '2020-01-29 21:58:14', '2021-01-29 14:58:14'),
('c16acd0b1c736bd3349b56281fe60f161b8e56aedbcc765840b73b29acafc92a1b610a3b9030990f', 8, 1, 'mobile', '[]', 0, '2019-12-10 23:26:14', '2019-12-10 23:26:14', '2020-12-10 16:26:14'),
('c1a9349687041d3fe8a790f28b82cda6a147a95adc31cdab99d729333a2e9b271ef56d93bcff904e', 206, 1, 'mobile', '[]', 0, '2020-01-29 05:22:35', '2020-01-29 05:22:35', '2021-01-28 22:22:35'),
('c1beb9cb9339ac7a1874bab7b068c8195dd9ef45b08277389e8c20568060db9ac6aee41c33111895', 1, 1, 'mobile', '[]', 0, '2020-03-09 03:14:52', '2020-03-09 03:14:52', '2021-03-08 20:14:52'),
('c1c135426c6d28430bc109592f1a5daddf024d4ecee16b153d2a7ed21ceffeb3c921db71aaf984b8', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:30:08', '2020-03-05 20:30:08', '2021-03-05 13:30:08'),
('c1c8746e2060d8ebde94349279a85c70de66e52e39b1d7f96b97c6d234973fc2cdb78c9dc3758241', 1, 1, 'mobile', '[]', 0, '2020-03-10 15:17:45', '2020-03-10 15:17:45', '2021-03-10 08:17:45'),
('c1d31eac876e8ac30cdc602d01bfe4606e273f55d5be61b67e6a64dc69c11af5394cfad12eba6aa0', 162, 1, 'mobile', '[]', 0, '2020-01-28 02:59:14', '2020-01-28 02:59:14', '2021-01-27 19:59:14'),
('c244e9aad091acf8fd63972b1e747cb74c8c969cebd60b736faa5a0ac7955d7dfb4ac614f5cb9194', 3, 1, 'mobile', '[]', 0, '2019-11-28 16:47:48', '2019-11-28 16:47:48', '2020-11-28 09:47:48'),
('c2f230a0b2cb151d3c52076ab63ccf306b547076bad11f0a3bada98f825a761a7a1618319575e160', 3, 1, 'mobile', '[]', 1, '2019-12-19 19:34:45', '2019-12-19 19:34:45', '2020-12-19 12:34:45'),
('c2f31869a9cd4775477f8c4d1ca875fcab7b667bd83fa4adb7ed1795a1ed420d9192bccff6e99b10', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:32:58', '2020-03-10 02:32:58', '2021-03-09 19:32:58'),
('c325300d39c54d1c90a1633de6ca59b2ca2a096b1f7798d42c7dd9d42f2ac8220c6f24e8f3016a51', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:10:19', '2020-03-10 19:10:19', '2021-03-10 12:10:19'),
('c329c2a053267b6248e5e68a937bed317b1982f1565491b5e6d9daef2ee3684704189347cd0205ee', 1, 1, 'mobile', '[]', 0, '2020-02-19 17:14:11', '2020-02-19 17:14:11', '2021-02-19 10:14:11'),
('c32a5c3776554a4b357f3bccaa14610691c0667bc876629d85617d42c3211121899a65c9a0eb9f95', 1, 1, 'mobile', '[]', 0, '2020-03-10 21:42:30', '2020-03-10 21:42:30', '2021-03-10 14:42:30'),
('c3c1a46f4a8a5184f69d48b7e69089bb15a84cc82e6e5af08ee5b724606e27c081acee5e3b7e0f5c', 11, 1, 'mobile', '[]', 0, '2019-12-09 18:10:50', '2019-12-09 18:10:50', '2020-12-09 11:10:50'),
('c404fba8099fc7bd8d07b916ccf8401f874eab91e3eb0c238dbbd54b1b0cb42efb5d47c887b5706e', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:58:49', '2020-03-05 19:58:49', '2021-03-05 12:58:49'),
('c4318bcfc210eebe7711df15d00f70f46601373208d681f77689bcbe6a5bc2f407eff848e10c12ed', 183, 1, 'mobile', '[]', 0, '2020-01-28 18:24:52', '2020-01-28 18:24:52', '2021-01-28 11:24:52'),
('c4459d36e97139832dd2ce03d71f60e4d4a7c299b04427f04a7c4347a3a0ea039faa9ec05c1f442b', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:44:10', '2020-03-10 04:44:10', '2021-03-09 21:44:10'),
('c44de62e18317352c1e43f9c48af9e659e76af412574125e5d830dc9f5d783536d994c0166b2eab9', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:55:45', '2020-03-08 00:55:45', '2021-03-07 17:55:45'),
('c485f96e8ea135a88a829e6eba37ef5eed1a3e998c0531721659da7b928d6824c37a287e0b179ee7', 1, 1, 'mobile', '[]', 0, '2020-03-05 22:25:17', '2020-03-05 22:25:17', '2021-03-05 15:25:17'),
('c486219235eeb6516b3c9eaa6e61208f6db62a0d332f91eb332f4c287c55d3fc9ac67d2997afd5fa', 1, 1, 'mobile', '[]', 0, '2020-03-29 16:18:14', '2020-03-29 16:18:14', '2021-03-29 09:18:14'),
('c4b08cb0d43435d25d188245572897d19640d4a2898971a6788486ed93386efee9dccbb38c079fb2', 94, 1, 'mobile', '[]', 0, '2020-01-26 23:49:36', '2020-01-26 23:49:36', '2021-01-26 16:49:36'),
('c4b51b3b0fa85d57aff1d84d4b332deac30c48607b9bd61d798e5cf04a1fef056bafeae2eea2bec1', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:24:05', '2020-03-07 02:24:05', '2021-03-06 19:24:05'),
('c4ba66908df7c1e06bc825a9a4d3e6b728c0bb361c40b3b17d0ca1a92f5b2093686429c5c20e73a1', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:37:40', '2020-03-10 02:37:40', '2021-03-09 19:37:40'),
('c4e6e19966de3efb7200a11789f5047fee969db679d7858529fe0cbe39d4a2778a190f92daa7d7c9', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:50:08', '2020-03-09 01:50:08', '2021-03-08 18:50:08'),
('c50728965a4fa15e1869407bf276f91c17304120a2332a851a03defecb75f10414543850e623cfe3', 1, 1, 'mobile', '[]', 0, '2020-05-05 20:03:29', '2020-05-05 20:03:29', '2021-05-05 13:03:29'),
('c54b8948c6cab4c3560f027f5945e550eefbd41c37e14b485b932295339c7328c354efdc42b31090', 8, 1, 'mobile', '[]', 0, '2019-12-26 00:49:56', '2019-12-26 00:49:56', '2020-12-25 17:49:56'),
('c5a2c8dde44648daa934f2f4e3cc986fb268dc5e9f96840cfae1a4059e68c076c184e720b4bfe6a7', 1, 1, 'mobile', '[]', 0, '2020-05-05 19:54:14', '2020-05-05 19:54:14', '2021-05-05 12:54:14'),
('c5abb8487dd58bb7924be2f4d904aa7955b21618823dc451b213475a1f8502c0a12cfe13c0dbebea', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:49:56', '2020-03-10 16:49:56', '2021-03-10 09:49:56'),
('c61cb458f9dc343392940c539ee823b2c32f7071bba66b1b6c4c7f16e4642a1b55305eaf9a102160', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:17:55', '2020-03-10 19:17:55', '2021-03-10 12:17:55'),
('c61daf0b1e53914d22f0ae0413b694985a2f7ca74d39ca21154f06f26263e6aadbb45b22b47d72f7', 1, 1, 'mobile', '[]', 0, '2020-03-04 20:45:58', '2020-03-04 20:45:58', '2021-03-04 13:45:58'),
('c62f4d9f75589714e950114ae24a1a08c21f2d4992513ff812c2f38ae46554be4d721a754838b49e', 1, 1, 'mobile', '[]', 0, '2020-03-11 14:17:40', '2020-03-11 14:17:40', '2021-03-11 07:17:40'),
('c63c841984c2064070bc7476ac5d7b93b4c95dd0d1e56a920eb74584468b56150dcb48b19d370ed4', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:05:51', '2020-03-06 03:05:51', '2021-03-05 20:05:51'),
('c64f4b93a85922f81fe5e4634ad28f248872f03c4c5c1dde6a105578694322a5b7a1d5bd66b34c84', 281, 1, 'mobile', '[]', 0, '2020-01-30 06:12:09', '2020-01-30 06:12:09', '2021-01-29 23:12:09'),
('c65b731b0bc5de08506e384f8b6bd54a1a9f29452f64d10ca04a3aee36eb69ffdb95e10f920181e2', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:11:25', '2020-03-10 03:11:25', '2021-03-09 20:11:25'),
('c66a055d9461e55514b20283c35b3de93d5e51c8e75209e06c0bac0f92d7a7b95239793cf48de1d4', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:59:18', '2020-03-08 18:59:18', '2021-03-08 11:59:18'),
('c6812c37a54b6b67c173f9530dd88673efb49183a5c28894918cf29f288efe67037ed224d693cf26', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:53:32', '2020-03-05 20:53:32', '2021-03-05 13:53:32'),
('c72fa73744efcc231e745b168a1fad0c74868145bfe4be65b9b8457740e2f010ec783cf7936015bf', 153, 1, 'mobile', '[]', 0, '2020-01-27 22:22:19', '2020-01-27 22:22:19', '2021-01-27 15:22:19'),
('c77cc33c1a9d6fdbe36d9c935cb35dd61e73504e3b2c35d8770ae712c89e5bdd77f628999112a7c3', 218, 1, 'mobile', '[]', 0, '2020-01-29 17:31:23', '2020-01-29 17:31:23', '2021-01-29 10:31:23'),
('c77ef26f7b2a80e40deb3cfcb86857b15f7b02b2765151c950c4937787a455c2b0ecb2a4a0c2b96f', 1, 1, 'mobile', '[]', 0, '2020-03-07 00:40:27', '2020-03-07 00:40:27', '2021-03-06 17:40:27'),
('c78a533c4081f8042e7333969c927d99f90dc0ce227593fa8377a4e92ef17c408e0c53b46dee1213', 156, 1, 'mobile', '[]', 0, '2020-01-27 23:44:29', '2020-01-27 23:44:29', '2021-01-27 16:44:29'),
('c797db6d36e5dd14749b727c4ebf7605a1a3565f995f0aa50d12da13b857acfff4cad86ff13e8596', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:00:36', '2020-03-09 13:00:36', '2021-03-09 06:00:36'),
('c8163a792e760d9b01f6230760636e058aca7e54d895c5ddbd039e81d3b6014ff72e6d42b45a7fda', 100, 1, 'mobile', '[]', 0, '2020-01-27 00:47:59', '2020-01-27 00:47:59', '2021-01-26 17:47:59'),
('c81d75a7e00defebe5bc928909f21abe956ee448882deca5d93eb0f749717228d5f6e4551d3aafb6', 2, 1, 'mobile', '[]', 0, '2019-11-28 17:44:48', '2019-11-28 17:44:48', '2020-11-28 10:44:48'),
('c824f5a136ed76902fb1d140332994071e199222ca0c70976dbccd765154792cc2e6b00ca837a328', 1, 1, 'mobile', '[]', 0, '2020-03-03 20:48:37', '2020-03-03 20:48:37', '2021-03-03 13:48:37'),
('c82f5d2b5760d655b54613535bbac3d3040aa4ce80351a372aa20a7ff1cb8e4a358bd2587af87f75', 225, 1, 'mobile', '[]', 0, '2020-01-29 18:50:36', '2020-01-29 18:50:36', '2021-01-29 11:50:36'),
('c84eac5bff68af829fad80b91b0e92070b2931e5c476d95c1aa429f0941573eaf25164d537062911', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:35:06', '2020-03-10 22:35:06', '2021-03-10 15:35:06'),
('c8623e5622f5640cef48888dfe0831043103667b94ffa5960ee95287de6a004a6b12df17fb2fc3b6', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:44:14', '2020-03-07 21:44:14', '2021-03-07 14:44:14'),
('c87af64bc051d7279639e96faf65354247b327650f044ded665b7df6b042081f3a372e28192f287b', 163, 1, 'mobile', '[]', 0, '2020-01-28 03:11:30', '2020-01-28 03:11:30', '2021-01-27 20:11:30'),
('c8d902c622391e64f53e0174dba7347b4069c7141a555104e87b8fb6f907ff0367ad2aee9ed0f52b', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:07:05', '2020-03-10 20:07:05', '2021-03-10 13:07:05'),
('c94028fbff4e7b97ac4501490bb2b3f5c62b3f9e005004c0beaa8fe552d35d8d0d78b726696e83cf', 21, 1, 'mobile', '[]', 1, '2020-01-08 04:38:14', '2020-01-08 04:38:14', '2021-01-07 21:38:14'),
('c955ddd217325fc4779f1d0f1166549ff983439a8c3cf30a9027d558f1235b64c41cc408413aae15', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:14:32', '2020-03-05 05:14:32', '2021-03-04 22:14:32'),
('c9b02c43da37408fe5d2377209fbe444be79f87572d4c34f5c96ea2eedff2071095aac5424090b90', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:26:17', '2020-03-10 04:26:17', '2021-03-09 21:26:17'),
('c9d0add6a51be3a38427bf8426c462bfb0ce41134038d75e2362823d9991c525b6a157fe03c59b58', 1, 1, 'mobile', '[]', 0, '2020-03-11 19:19:24', '2020-03-11 19:19:24', '2021-03-11 12:19:24'),
('ca3826d05846cd0dc3557efc851c128b41d37bc7c6ef3ed33bb9e0cac5035ad0f98339be49d81934', 3, 1, 'mobile', '[]', 0, '2019-11-30 17:48:07', '2019-11-30 17:48:07', '2020-11-30 10:48:07'),
('ca439818729e9b776028ac765455ccb0dc9fc11c1b7e2edf650c626ac54752afe5679aff29251e6d', 3, 1, 'mobile', '[]', 0, '2019-11-28 00:47:16', '2019-11-28 00:47:16', '2020-11-27 17:47:16'),
('ca9f60d66ffcfa03354e44010d4344fc54b7707d7ec28677a6838a89300ffed4980bb3933c7b8f52', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:23:35', '2020-03-09 14:23:35', '2021-03-09 07:23:35'),
('cb127481b8c8a1473f95f95c80d0579a748d89485f954f574764f3655a33f4b5410df2e1d5e3c247', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:05:30', '2020-03-08 01:05:30', '2021-03-07 18:05:30'),
('cb1e3f8ce169f04f8730da40ed289b335d15bbd5c21ab9009e977ce14e7cab30eb3b94e4d3e04d49', 1, 1, 'mobile', '[]', 0, '2020-03-05 08:33:03', '2020-03-05 08:33:03', '2021-03-05 01:33:03'),
('cb7534787a1c630bfdbf2c2984f874ac6aad1508e081242542c75938e1a027c5ca2fd49f2bb062b8', 3, 1, 'mobile', '[]', 0, '2019-12-17 03:38:47', '2019-12-17 03:38:47', '2020-12-16 20:38:47'),
('cbd4bb474b4d3ec3a44196bdd79732786f124153de23dd026d20fcd83d9ba8e603cb47b45ec7909b', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:21:45', '2020-03-10 19:21:45', '2021-03-10 12:21:45'),
('cbe9fe28c55b7236ec2d09998f760bc1b944ccf82d8f0694152c9ee252fe4cdd5d74338af89cc02f', 261, 1, 'mobile', '[]', 0, '2020-01-30 04:06:37', '2020-01-30 04:06:37', '2021-01-29 21:06:37'),
('cc3190fa5e46d8a36f6dad9c8b7ac1cc79acd7dfff85470979fc6c361e397fab595e699ce19a7c95', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:46:10', '2020-03-10 02:46:10', '2021-03-09 19:46:10'),
('cc86a5a3aae29720aa493702db67beebe1a3f8b5c8369ac2fee93a0251ce0ba5d4e60908ba5c2945', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:10:18', '2020-03-09 13:10:18', '2021-03-09 06:10:18'),
('cc8c1161482b4480595e843cf8940ad4fddad7cf867757216203bf57f615fc06be39209ae55076e9', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:19:49', '2020-03-05 05:19:49', '2021-03-04 22:19:49'),
('ccced74957dced0179bda45e645402f9b9d987716aec768cd873b7c5429c4b96120dd3c058b76f95', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:33:35', '2020-03-09 14:33:35', '2021-03-09 07:33:35'),
('cd0e06b4a08340164952b7a1dfe07d21d321284c6aff2ab1e5d3fcb836da5c1203a49f4cf4e85632', 312, 1, 'mobile', '[]', 0, '2020-01-30 14:46:57', '2020-01-30 14:46:57', '2021-01-30 07:46:57'),
('cd65741adaa7ae19b933fef9b71e17e20f91ee0726053b8013ce0908eb1badf460b62eca959b8445', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:53:47', '2020-03-07 22:53:47', '2021-03-07 15:53:47'),
('cd759b18f542db9ba142784eed8c76a305693503358f8239686fc94037a21b596a0b37a71c80def8', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:34:55', '2020-03-09 14:34:55', '2021-03-09 07:34:55'),
('cdd4ecd6b9dc4ce7199b473395fbc7e84c81673752e9ec37b6d0890e0131e1a26ccb5628943352af', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:35:30', '2020-03-09 14:35:30', '2021-03-09 07:35:30'),
('ce69a142a0607f18588d37eb72b09ae019d7c7c98621bddb59350c18e8e9e543e3b48f8ad3d91715', 3, 1, 'mobile', '[]', 1, '2019-11-28 21:53:12', '2019-11-28 21:53:12', '2020-11-28 14:53:12'),
('ceec66c0c0be1d76ef0d743196ea58d20ebbaad0167e3de3c84517b9d1e2d68fa2a2aef6bd997f62', 128, 1, 'mobile', '[]', 0, '2020-01-27 16:42:42', '2020-01-27 16:42:42', '2021-01-27 09:42:42'),
('cf51f72f02b821231a9cd8a67cc9cd5f7d1cec2d71dad7801a79b62def6e716495004bfa0755e07b', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:21:34', '2020-03-10 04:21:34', '2021-03-09 21:21:34'),
('cf78d45453076131ed776ab585bf0c3be758d14ebfa80152592b2fa402aafed6de61817fa7121b64', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:03:10', '2020-03-08 00:03:10', '2021-03-07 17:03:10'),
('cf9b48b3f1245d12d39f19aab86ae7673b1e5410b82c0d8f02ed5142f01f8f42a023d6ddff6fd2e3', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:35:26', '2020-03-10 17:35:26', '2021-03-10 10:35:26'),
('cf9d22c3b15cea0eaf8d7f2ca6e38884d0e3e8541da6917771eca051d1f9cd3b7c0df4effa421531', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:00:16', '2020-03-09 13:00:16', '2021-03-09 06:00:16'),
('cfa723fffa69432ceb57c076514985e1acd88ca0cdf388ada979dd92e7e5300e64db9fdbe06c4ba7', 68, 1, 'mobile', '[]', 0, '2020-01-26 07:43:44', '2020-01-26 07:43:44', '2021-01-26 00:43:44'),
('cfbddd6b9f95c1064d892e2eb5fa18377098a56f495468886430df5c554bbc19b3346235280c1810', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:42:53', '2020-03-09 01:42:53', '2021-03-08 18:42:53'),
('d00d0114ed2fe7b9fb21873028a74878c95b54a082a8937e0e05429f8eaddd37c45ff82f618f22bc', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:42:54', '2020-03-08 18:42:54', '2021-03-08 11:42:54'),
('d057d67028089195354097957e56ba7c0ea8c39d88e3baa370c654b27aa10d31f0556882ef53c545', 185, 1, 'mobile', '[]', 0, '2020-01-28 19:55:14', '2020-01-28 19:55:14', '2021-01-28 12:55:14'),
('d093e0751217d9f01661c47bc5f92f4738a2a2aaf7d4ea22a56441573149bcfb37f13505e2fddbe5', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:39:57', '2020-03-05 02:39:57', '2021-03-04 19:39:57'),
('d0cd015f5db956b15a4e6fd26d200db1643cd6bb58fa0f967b71c5d968fb2f0b6ea01bce0ccba383', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:06:19', '2020-03-10 04:06:19', '2021-03-09 21:06:19'),
('d1460966616d566ff19d4511f8121ba343f99cc3e2efcc749a9dd3b4889371657d51ed37ca3aced2', 26, 1, 'mobile', '[]', 0, '2020-01-20 21:08:15', '2020-01-20 21:08:15', '2021-01-20 14:08:15'),
('d16f752040abbc7c4ec4bb307be8c403396ec7adf6ddda8615f78a6bedbf0c09615427a6a700f0e4', 50, 1, 'mobile', '[]', 0, '2020-01-26 00:49:43', '2020-01-26 00:49:43', '2021-01-25 17:49:43'),
('d171ceed9d39391fc79836191c41f7e1390c8cf920c360485d5e79a21588751c5e62c26726a7853a', 164, 1, 'mobile', '[]', 0, '2020-01-28 03:12:56', '2020-01-28 03:12:56', '2021-01-27 20:12:56'),
('d19410a2413551a820613e92473db5295c4da3ab5570aaf6beebc84a3ce48c44e6cdcd26a7b125d0', 66, 1, 'mobile', '[]', 0, '2020-01-28 23:58:22', '2020-01-28 23:58:22', '2021-01-28 16:58:22'),
('d1b0fa6d9cb4055235d6843e7012ba6a74982bb7583f6cdbf5cb1814bbe2aa0476938ec12c901200', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:19:22', '2020-03-07 21:19:22', '2021-03-07 14:19:22'),
('d1de3acc2a0ae4971aa9f5572795b7f3009438f19abd4acbfb73c185d81677bde03f1336f3cc1118', 1, 1, 'mobile', '[]', 0, '2020-03-04 17:41:34', '2020-03-04 17:41:34', '2021-03-04 10:41:34'),
('d1f279443b3409e529ee9e9baa2cb978dcfba2a5d903ab9ba8718d4137f931a9078d6ea70ec6306b', 283, 1, 'mobile', '[]', 0, '2020-01-30 06:18:12', '2020-01-30 06:18:12', '2021-01-29 23:18:12'),
('d20c94c7d59ad1ff8c9e83719fccf49d10a45e4d85f6c01eb07d0584961397bfc17346ba35a24fdd', 1, 1, 'mobile', '[]', 0, '2020-02-16 17:49:21', '2020-02-16 17:49:21', '2021-02-16 10:49:21'),
('d24488ce0f8a42c6f0c49a07df64a50bc47fd8880fde174f307600b53e88dac198c39cc1cce6e5fc', 232, 1, 'mobile', '[]', 0, '2020-01-29 21:47:22', '2020-01-29 21:47:22', '2021-01-29 14:47:22'),
('d2642025b20f269a6648b175be2fcac824cb214d2524e278c13f21eb2dfaa79aefe33462d10932f1', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:24:04', '2020-03-07 23:24:04', '2021-03-07 16:24:04'),
('d273d0dcd57bcbd449c9d69b40fe1a83c0f8fc242381760b376c99010da1505e23e491da00a57db0', 1, 1, 'mobile', '[]', 0, '2020-03-05 05:30:06', '2020-03-05 05:30:06', '2021-03-04 22:30:06'),
('d2ec57f081bad466015d0e3ffec0c25e3599461d77049a495a2c362d6c2fb26f5d8fc9bbe5986893', 8, 1, 'mobile', '[]', 1, '2020-01-01 02:49:19', '2020-01-01 02:49:19', '2020-12-31 19:49:19'),
('d31b1ba57af8e70bdbc5bdfdbca3faae401dc4e0eb553e0c7784667bbcd00a21d66f436df9cbf56a', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:34:13', '2020-03-10 02:34:13', '2021-03-09 19:34:13'),
('d37dcf8668ad9377973ca96c11e8958f0911a006691d08998ea563e13ed98fa3332d8b4b33cfc3c6', 66, 1, 'mobile', '[]', 0, '2020-01-26 18:42:44', '2020-01-26 18:42:44', '2021-01-26 11:42:44'),
('d38313a9309b0e69807b9117e25ce06154692b3059749a82e7b91ae030fbbff7acc21ed583cd8277', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:38:42', '2020-03-09 14:38:42', '2021-03-09 07:38:42'),
('d44399226f33379b6808999f0761ea3d1233349ee9eb51a752065596a804edc6189920506017f6ca', 1, 1, 'mobile', '[]', 0, '2020-03-07 01:14:12', '2020-03-07 01:14:12', '2021-03-06 18:14:12'),
('d464c3d9c8c2a7be8d5720d0f032296af7a2001087c84dbc12cb9656d652b7f802a31d3fbfb55993', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:11:24', '2020-03-05 21:11:24', '2021-03-05 14:11:24'),
('d46b9e4c84d7fc27a45b6eb9cf39b396a40887a5cdc7666448e4ed40ed9589bc52c658fd82537479', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:31:41', '2020-03-07 21:31:41', '2021-03-07 14:31:41'),
('d4a638b47f9dfb7a3ef9e47146636317d65a303d6e28cf3c3dc343777495da040044fc86e65620d5', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:39:16', '2020-03-10 01:39:16', '2021-03-09 18:39:16'),
('d4f48722df5c3623087538e6564f58979c0b79f51592ba9cc2291cd3bb1d4980fdfdbb16a27ff361', 240, 1, 'mobile', '[]', 1, '2020-01-29 23:54:38', '2020-01-29 23:54:38', '2021-01-29 16:54:38'),
('d50bf8f1e87dcbeb8f077e912b6c1d429620d24fcdd7606cea235d320e5b37740b8f24e24d13d343', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:29:46', '2020-03-07 22:29:46', '2021-03-07 15:29:46'),
('d516901e4590aa5397806031aa59d59c345d449a7558107b2a1a74797fc5c477d7f5617669f9ca41', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:35:53', '2020-03-07 21:35:53', '2021-03-07 14:35:53'),
('d551631259a126ad2a4f77264d11c92faf56e7356271fe9a04ca7acd35f3e410d2f0938c3b362949', 151, 1, 'mobile', '[]', 0, '2020-01-27 19:53:23', '2020-01-27 19:53:23', '2021-01-27 12:53:23'),
('d569a44e4dc9a9178373838434297c011ac1d002363541d5d4390f46b0d7b64e7c1dd316ddc1a6bb', 127, 1, 'mobile', '[]', 0, '2020-01-27 16:38:04', '2020-01-27 16:38:04', '2021-01-27 09:38:04'),
('d5814184790addf8a567f45912684dd2dd5675030ef1b3c3747752110fc2d7de0e0869ce26727db0', 1, 1, 'mobile', '[]', 0, '2020-03-29 18:14:01', '2020-03-29 18:14:01', '2021-03-29 11:14:01'),
('d588fa3b041165079d710a3fa879046fdb17b5c155ea419e446b38b1e812506ade98fe22709c87da', 182, 1, 'mobile', '[]', 0, '2020-01-28 17:34:40', '2020-01-28 17:34:40', '2021-01-28 10:34:40'),
('d592ef111a738840acc460ca9755791fa9e74908d3786ab9b7d62a6e3539587cbba526e9b59a565e', 59, 1, 'mobile', '[]', 0, '2020-01-26 04:37:47', '2020-01-26 04:37:47', '2021-01-25 21:37:47'),
('d5e0414f3c67851ce52886b55fc0e33c168098feaf628d7ce02fab3cb44677f1ffa86b0f52bc2a6b', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:31:18', '2020-03-04 16:31:18', '2021-03-04 09:31:18'),
('d5ee455730e0c47d3ba6601b28f11821cb1068000c989def10a4565495474ac100a32bd8ce3fd7ac', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:14:11', '2020-03-05 02:14:11', '2021-03-04 19:14:11'),
('d6021088756f3637dfcd5015b2ce1cc4b5e0222ab47ebfe16cb484655cc7d8a7c6250c26c227a827', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:20:07', '2020-03-07 21:20:07', '2021-03-07 14:20:07'),
('d606dc254d0776ba13f7ccbfbea65d708d833e8e55e89ee11097ceaeda7373b45de72c11d3d53e36', 4, 1, 'mobile', '[]', 0, '2020-05-06 10:01:03', '2020-05-06 10:01:03', '2021-05-06 03:01:03'),
('d62649f755c760f1a121cdc3d33e8fed69d0e46836f6f49f63432952aeb74ffd63c00efb1df92939', 246, 1, 'mobile', '[]', 0, '2020-01-30 02:10:42', '2020-01-30 02:10:42', '2021-01-29 19:10:42'),
('d66d17ac9fa4a68f0050bae23f04ee60c0d1d7b85fab2ad298983f25793544275087f233c306da25', 12, 1, 'mobile', '[]', 0, '2019-12-11 20:46:26', '2019-12-11 20:46:26', '2020-12-11 13:46:26'),
('d6754df0e11fb9a5ee632d7f2639dc79c288c5ef60ab82cadfa07f75288ca5f274994a0c75266939', 1, 1, 'mobile', '[]', 0, '2020-03-04 18:13:13', '2020-03-04 18:13:13', '2021-03-04 11:13:13'),
('d6a5a871383a92b859afb88d366323ab624e9f86c451f1da1efbc0500ed59a2925e39deaf9437417', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:10:18', '2020-03-06 03:10:18', '2021-03-05 20:10:18'),
('d6e03d962ed6bfef0a544330d33e20f23b7949cbca896ec95f00fb772d7cef6d561cf74369d99f95', 90, 1, 'mobile', '[]', 0, '2020-01-26 20:50:11', '2020-01-26 20:50:11', '2021-01-26 13:50:11'),
('d6f8e57ea32acffc73c27c3812de7d633a151c77099f85f7952ffc013a1ca9d7c3b458cf333c1171', 1, 1, 'mobile', '[]', 0, '2020-03-08 19:23:31', '2020-03-08 19:23:31', '2021-03-08 12:23:31'),
('d71a99c4648b9454418f9ec5451a0be6f2d0d45da1ced4db1dbffee94e8cbf8c267b823921e15bf6', 188, 1, 'mobile', '[]', 0, '2020-01-28 21:24:19', '2020-01-28 21:24:19', '2021-01-28 14:24:19'),
('d7343b5e8ef94787638d5a6bd7718e502ea2e25514227cfc1f043deb1af482f31b5f2320d2db7300', 307, 1, 'mobile', '[]', 0, '2020-01-30 13:50:53', '2020-01-30 13:50:53', '2021-01-30 06:50:53'),
('d7624929b64d51af94d20c8a1681753b4d19a9fc307cc3ec72c0275a3bc6d279764aec2b6d18890e', 230, 1, 'mobile', '[]', 0, '2020-01-29 21:44:21', '2020-01-29 21:44:21', '2021-01-29 14:44:21'),
('d767630e8b3704a6a27d180b9cec8a460d1ee25276d99e63e2a62492ec004aa7f1b8d23f4c650912', 17, 1, 'mobile', '[]', 0, '2019-12-23 20:51:34', '2019-12-23 20:51:34', '2020-12-23 13:51:34'),
('d79adf11c37c349e0ce167758b662fbada96be461dddc4fd405fe45c8ca1df2e1f3237a751e315d4', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:17:48', '2020-03-10 04:17:48', '2021-03-09 21:17:48'),
('d7c6350957fc140fc2ac2b119f747342944d2662b2f60921bdaa9cba0788ca5c7fa4cfd60a003e5d', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:14:37', '2020-03-08 20:14:37', '2021-03-08 13:14:37'),
('d7dbeca079c62b0687bb515a13303ff278a5c9644dc8966a0a69d67c8da9d15c128b88e185ee8da0', 73, 1, 'mobile', '[]', 0, '2020-01-26 15:18:41', '2020-01-26 15:18:41', '2021-01-26 08:18:41'),
('d88e9b5040ede6e462791473b39cc874d8fab3d50965408368448bf04c4543a4bf70ec7640d5ff42', 227, 1, 'mobile', '[]', 0, '2020-01-29 19:21:39', '2020-01-29 19:21:39', '2021-01-29 12:21:39'),
('d896f2b222b2843b4aefde45f330e7bcad4bc9ad8016bf0c248da0d7d68574b04be80709e24a7627', 286, 1, 'mobile', '[]', 0, '2020-01-30 06:30:16', '2020-01-30 06:30:16', '2021-01-29 23:30:16'),
('d8bebaa447e3a889da9e77fb59d1d1015a150b28979d154ef71fdb3e01367d53b7dc0cf9d1e3c845', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:50:14', '2020-03-05 02:50:14', '2021-03-04 19:50:14'),
('d96772c80a2a4bef0274a62e70050b68d9624e3b5cc0bc4ca77f02aa49becdf194000c42837a8b15', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:19:22', '2020-03-04 16:19:22', '2021-03-04 09:19:22'),
('d971b611a96e9b699e7950183451c5dcf0e7332e58587965b6f5800bf7aed9adbb7543b52df9286f', 1, 1, 'mobile', '[]', 0, '2020-03-06 03:15:51', '2020-03-06 03:15:51', '2021-03-05 20:15:51'),
('d99b4751e6f5ec37ce4ec5b17ee5907f85df5239d70f2fed489f29a618cdfd990ebf296e40b41838', 242, 1, 'mobile', '[]', 0, '2020-01-30 01:41:53', '2020-01-30 01:41:53', '2021-01-29 18:41:53'),
('da687471263fdb4ec2f21c790a9dca38c5e85e4bbe3a310b69a0a2d07284985336f26f28c07ccf53', 1, 1, 'mobile', '[]', 0, '2020-03-09 03:04:09', '2020-03-09 03:04:09', '2021-03-08 20:04:09'),
('da98bd1e77b029db9495820233d1c3bc1d1f474dd19e26ca671f63f9e028b8f1f1ccb4772a4282c4', 1, 1, 'mobile', '[]', 0, '2020-03-08 18:59:16', '2020-03-08 18:59:16', '2021-03-08 11:59:16'),
('dac43ecf361ee25d1f5bc247a7ea349ab9f93f8f57ee4cfddc0c1f8b710a15d8950949e0abe828d7', 1, 1, 'mobile', '[]', 0, '2020-03-07 17:34:35', '2020-03-07 17:34:35', '2021-03-07 10:34:35'),
('dac6bcd7b06230b337f78cc41bbd6cd7c48852d25ca681f4f1660727c85897f359a0df4203e052da', 1, 1, 'mobile', '[]', 0, '2020-03-05 07:08:54', '2020-03-05 07:08:54', '2021-03-05 00:08:54'),
('daf363e926867279bdd42b0e7eb0f3d341faca3c1691c46a37b1690d00e1c25dc85ebda8b6c714d9', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:17:29', '2020-03-08 01:17:29', '2021-03-07 18:17:29'),
('daf4b9aaaa9affb885ae65619f692140149b9eb14ccb353518c918dc509b1b03e136ae162c49b82d', 1, 1, 'mobile', '[]', 0, '2020-02-09 21:25:18', '2020-02-09 21:25:18', '2021-02-09 14:25:18'),
('daf9f1fc5f7816a227f5aef8d9bbb5e93998786787597f2c709a7d7c071b0f18bab8795d8729bf3e', 1, 1, 'mobile', '[]', 0, '2020-03-03 18:40:40', '2020-03-03 18:40:40', '2021-03-03 11:40:40'),
('dc0623b635665b07cd2bfca93b454603b0b9d203dbc4fb1bc3692790bff6a94cc6671a4056fe11ac', 161, 1, 'mobile', '[]', 0, '2020-01-28 02:39:46', '2020-01-28 02:39:46', '2021-01-27 19:39:46'),
('dc6086bbf822b92617d61619cabf0c806c02b6d795ab648fdee468e464b5804461d2463df3ffb522', 8, 1, 'mobile', '[]', 0, '2020-01-28 19:09:28', '2020-01-28 19:09:28', '2021-01-28 12:09:28'),
('dcb932b26f38d91e0beb95c63f9c4110a662b8034af95eb433b1d8de451dd1565d01801f6b233187', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:08:12', '2020-03-05 16:08:12', '2021-03-05 09:08:12'),
('dcdbaac91e318882e195258ef4357f1d61c52108bb96bf3cddaad1fbe0691f01c6c5c3e67f49bbc9', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:23:30', '2020-03-04 16:23:30', '2021-03-04 09:23:30'),
('dceef632d709a0de20bb9c474545353420e9ba30f911b13431841e943b698061531e26743c8395c1', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:31:47', '2020-03-05 19:31:47', '2021-03-05 12:31:47'),
('dd4dd78cbd71a430d4b3a5f06db20288ebbf74cb356ac8a7ca951cec1681e2d610635c9bf8de15a7', 1, 1, 'mobile', '[]', 0, '2020-03-08 23:52:47', '2020-03-08 23:52:47', '2021-03-08 16:52:47'),
('dd9c411b0fafc69e472c7adb69493e946b90b7671e25c54b065f7862b6106ec16ff72fd554162671', 149, 1, 'mobile', '[]', 0, '2020-01-27 19:45:47', '2020-01-27 19:45:47', '2021-01-27 12:45:47'),
('dde5f7a21f59ee75ac4ba13a90ec3000c97efdd9e387f559352072d9a11d92d7f8944b21e4298840', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:01:36', '2020-03-10 19:01:36', '2021-03-10 12:01:36'),
('ddeda3c8ab4c5c6023e9e32b02716b92c92ee8a0859b33c781536a82e36b6d253b2eae526db70489', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:55:29', '2020-03-04 16:55:29', '2021-03-04 09:55:29'),
('de0f171953e4ee267ca48e1288adabb483eafd2a2105ac9fb2b179d97dd0e20c302a3a8e64261e4c', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:33:39', '2020-03-07 21:33:39', '2021-03-07 14:33:39'),
('de5e1a8b219eb8fe78c56052a887b7584b0f5c3cad0b363f99bb157d867ddfc347aff86a95220220', 1, 1, 'mobile', '[]', 0, '2020-03-10 22:51:51', '2020-03-10 22:51:51', '2021-03-10 15:51:51'),
('de6e268c2725892288d3a6c7afbfb8e788e2bf51529f636f69d906cfc915b49d23edf124182a4f77', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:15:19', '2020-03-05 20:15:19', '2021-03-05 13:15:19'),
('de717856eba9d2daeb5650f93fa0a1970780c8b7661ce5c563617ebd866b85337e8d130a9f92dcbd', 145, 1, 'mobile', '[]', 0, '2020-01-27 19:01:07', '2020-01-27 19:01:07', '2021-01-27 12:01:07'),
('de829e035abd316da8bc4c8c3a22db671c2b2c1be03e2a348b97f0522ed1643c53d07212c79d5c95', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:08:10', '2020-03-05 06:08:10', '2021-03-04 23:08:10'),
('de881f2fd2048ce05ec5e1fca7f4255dbb444343de10d459fe06ebb821e1438171786a11cc3315f2', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:21:10', '2020-03-05 02:21:10', '2021-03-04 19:21:10'),
('decd9fba6b9d60e236cf19472040e895d5648efc4714fcade7021d9cc2ea1343762bf0d2ed916982', 207, 1, 'mobile', '[]', 0, '2020-01-29 05:34:08', '2020-01-29 05:34:08', '2021-01-28 22:34:08'),
('df252ec62cb52727c01d6c763f0a2b9ac69ff8b766743403b99b8df29bd21c7013e045beb2aa6ca8', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:09:40', '2020-03-10 19:09:40', '2021-03-10 12:09:40'),
('df5e7c53fa7b4613cc20e90e43f21132b09abc5486b68068dac543e9a724233884c4daa4211d0720', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:24:53', '2020-03-04 19:24:53', '2021-03-04 12:24:53'),
('df6560612c854b2f5e8dd42c003c7e69b5919a5d9c7262441aec6242c9f76d6c3e8310f7c1535187', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:12:19', '2020-03-10 19:12:19', '2021-03-10 12:12:19'),
('dfbd876a44cdad093455c9207ba0f44b47a0694917808ca6162f8d3adac45f4190884f0cf717b322', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:34:54', '2020-03-10 03:34:54', '2021-03-09 20:34:54'),
('dfeede8d5b1e23517f8ce6e22aa159201aa1ab19eb20001069b6a9b307392cf65a163f47d72c73c1', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:52:45', '2020-03-05 02:52:45', '2021-03-04 19:52:45'),
('e01a7660b1b53bd82f9769c941b351f41feb5dfb6d53cd4012bee6c6ab683c1463cb56c140cf4be6', 135, 1, 'mobile', '[]', 0, '2020-01-27 17:24:12', '2020-01-27 17:24:12', '2021-01-27 10:24:12'),
('e01fdffc60056c3faa084edd11dc838d48f3b28299f81503bc2bd429593860da6200ed67aff25911', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:42:53', '2020-03-05 03:42:53', '2021-03-04 20:42:53'),
('e0a67fc71c86fe6b28a29384a1b4731f044ca8c10c9c7c028f41ad0147092e401bb1cfe460fd78da', 39, 1, 'mobile', '[]', 0, '2020-01-25 18:26:39', '2020-01-25 18:26:39', '2021-01-25 11:26:39'),
('e0cab9dea641af474d06543b52fafbb615797444f796759dc3cd73dedaa7d2f7daaa1614edb087bb', 282, 1, 'mobile', '[]', 0, '2020-01-30 06:14:35', '2020-01-30 06:14:35', '2021-01-29 23:14:35'),
('e12998cb1ebd4242c6376e71e3df4ae8d93274dba0fa5ec37be431dd4ef82ef3bfa37f250434b3b0', 44, 1, 'mobile', '[]', 0, '2020-01-25 22:09:36', '2020-01-25 22:09:36', '2021-01-25 15:09:36'),
('e1547210cc9c804b8e8486e83e6cab9e2574e9e21fea79c5c0c0981ea78c0b0978932888ce7a81d8', 3, 1, 'mobile', '[]', 0, '2019-12-25 19:30:46', '2019-12-25 19:30:46', '2020-12-25 12:30:46'),
('e196af4df83abcd345182310080ccd3a4417dd654e60966e49225e332598dc22bf44f58944660ce4', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:39:40', '2020-03-04 19:39:40', '2021-03-04 12:39:40'),
('e1c321da243c543a66fe056684688f7b127981183c6e18eb8f34a02c4ae2d041cf0a5f3932cd0f2a', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:13:43', '2020-03-05 16:13:43', '2021-03-05 09:13:43'),
('e1d82b0d19993e81105fa87ef671c50e434841bcd3e1a3eacc15e7cd06351154103e57e869a7e58f', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:22:06', '2020-03-08 20:22:06', '2021-03-08 13:22:06'),
('e20e31b67c116f3d1cba951026ed1e5e064eeb9c4f32afa39c1f78361c2d181c610e201cd2140cd2', 1, 1, 'mobile', '[]', 0, '2020-03-05 16:28:30', '2020-03-05 16:28:30', '2021-03-05 09:28:30'),
('e2277fd017fc32d6d636b36d364216d26f3502a2ffacc918746bb35ae16599cef95a059bd917502e', 1, 1, 'mobile', '[]', 0, '2020-03-05 20:06:00', '2020-03-05 20:06:00', '2021-03-05 13:06:00'),
('e2672943b3b01d82537f15f36c354581a6181f1008419c466b2731763770507ec8223ff4040d3e34', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:20:53', '2020-03-07 23:20:53', '2021-03-07 16:20:53'),
('e2abba8c274e371f8c6c9c6851042a5b0bf893d1c66bf1362ac6d6a0abbd1558457a0906e0f0e664', 1, 1, 'mobile', '[]', 0, '2020-03-07 19:56:56', '2020-03-07 19:56:56', '2021-03-07 12:56:56'),
('e2edc0cde41da16361ad0c9145687b2dd425e766c7cfd4a503cd89024f63c0df9a8dd857206bca29', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:49:05', '2020-03-05 02:49:05', '2021-03-04 19:49:05'),
('e333bccd91a6fb9495b73381ec418a675fd96279cd6c19bfbc65c9b462d374332b6032f93583be63', 57, 1, 'mobile', '[]', 0, '2020-01-26 03:25:27', '2020-01-26 03:25:27', '2021-01-25 20:25:27'),
('e358c75770539787a668e45210529a506736c80e296b0710621ce26b54fc75f4aa9a42b363b79897', 158, 1, 'mobile', '[]', 0, '2020-01-28 00:01:33', '2020-01-28 00:01:33', '2021-01-27 17:01:33'),
('e38fda52987531a18db408ce24099e3c510aa073a37d506f24033e24af2438e51b6726111734a1b5', 253, 1, 'mobile', '[]', 0, '2020-01-30 03:29:33', '2020-01-30 03:29:33', '2021-01-29 20:29:33'),
('e3aa9d3f6ee319384580ece99a3b17eef9a4e20a08b9615fa5fd9282b8969ea822936f3cc4715516', 292, 1, 'mobile', '[]', 0, '2020-01-30 07:07:16', '2020-01-30 07:07:16', '2021-01-30 00:07:16'),
('e3ea245ff49572fedb0cefc9c4565438ceb9d0f948b940223f3e23d18a442865d428b31cc42a82fd', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:36:48', '2020-03-10 01:36:48', '2021-03-09 18:36:48'),
('e3fd345870dc425e862f2abb4a4c123022c5b6095789bc038bf91ec391879aafe743dd5c33e8eaea', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:38:38', '2020-03-10 17:38:38', '2021-03-10 10:38:38'),
('e411e94bf1547e6cd63237841130b707ecd87034b29aa029207b373cbe70174769fbd27b36f124ab', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:00:45', '2020-03-10 04:00:45', '2021-03-09 21:00:45'),
('e43b6e4fb841fc7d5bc5d044e2cf2fa476cb726935fa914e46dad9452d6095e08596a2f823849d41', 288, 1, 'mobile', '[]', 0, '2020-01-30 06:46:56', '2020-01-30 06:46:56', '2021-01-29 23:46:56'),
('e4524fce78ad978a1246918badd32021f62e8bfc03631488189f8b7cb163bb1012e66184a9f73d35', 1, 1, 'mobile', '[]', 0, '2020-02-19 21:46:10', '2020-02-19 21:46:10', '2021-02-19 14:46:10'),
('e4a52a412ca795e0f69400202243ce047a27a7049ab89be056f561b374a0692b53db45bfc8a48c42', 273, 1, 'mobile', '[]', 0, '2020-01-30 05:35:18', '2020-01-30 05:35:18', '2021-01-29 22:35:18'),
('e4b91482b66526b81ba272bd4647959b4aa8ebf2b46b381ccefcef7069925845b9a0b25beb15ca8f', 1, 1, 'mobile', '[]', 0, '2019-11-30 20:13:56', '2019-11-30 20:13:56', '2020-11-30 13:13:56'),
('e58f2a63fcfaf461d9ea5cfb97b6a140237226f50d834ba21ff599d5af4ad571766f58a2842934a0', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:26:47', '2020-03-07 22:26:47', '2021-03-07 15:26:47'),
('e63eb797f91740b6da1af3b61b79a8b9a5916aea6e955cfd28dabed1810a296841293c9b58768a53', 308, 1, 'mobile', '[]', 0, '2020-01-30 13:51:21', '2020-01-30 13:51:21', '2021-01-30 06:51:21'),
('e640c14d4fd5228fb4e05651381e6a8a2244f016f81ceb4cd6cb7d0d03e8dffdfdfc88f719d84d41', 1, 1, 'mobile', '[]', 0, '2020-02-11 17:38:49', '2020-02-11 17:38:49', '2021-02-11 10:38:49'),
('e64958cfc4299f6ab3e4fba1a80fe7e0a00d2ca583424f50809421db91bdda545699ca7405706bf4', 48, 1, 'mobile', '[]', 1, '2020-01-26 00:20:39', '2020-01-26 00:20:39', '2021-01-25 17:20:39'),
('e6a022e1372959afccbf5bf9d1f40a259e0c2352fd5acdd4ad58eb4c64d1c675271e3704f92f609d', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:29:42', '2020-03-04 19:29:42', '2021-03-04 12:29:42'),
('e6fd62816561a50f24276a58fdbf51eed08a0fb52e745b7bc882a9c2d207658327df47c8a7c0e1c3', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:11:26', '2020-03-07 22:11:26', '2021-03-07 15:11:26'),
('e703304bf334c51c6978799a92cf44212339833917663d4b05e58fa002abe980dff68fe380e87f20', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:26:39', '2020-03-05 02:26:39', '2021-03-04 19:26:39'),
('e7467f1fefd8e1817799b5c770137d3a033083621311edfd81b2a0d84cc5727242edd37b8a825a14', 139, 1, 'mobile', '[]', 0, '2020-01-27 18:04:43', '2020-01-27 18:04:43', '2021-01-27 11:04:43'),
('e75bb08688f17dc4094d22ad8e867979c34552c0bc415e23f32c55f83ae54f0909ea166ef4d78f17', 1, 1, 'mobile', '[]', 0, '2020-03-07 22:35:21', '2020-03-07 22:35:21', '2021-03-07 15:35:21'),
('e782e130f06d5d64282c9b9745c061ae3e1bcfec66defa4786cf49effa76a9aecea1b7e29d0f4f4e', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:37:06', '2020-03-10 17:37:06', '2021-03-10 10:37:06');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e788f8a8b2ebe155705789355e30d8281bc86ea53c7e6c4a433d9b6e392dd1509ebf9652f58783cb', 46, 1, 'mobile', '[]', 0, '2020-01-25 23:40:07', '2020-01-25 23:40:07', '2021-01-25 16:40:07'),
('e7b6655451c180f2bc21ef6cc382fcf91b0bd563054172659749ea70cf53ec4b4d560a72202d1424', 1, 1, 'mobile', '[]', 0, '2020-05-05 19:57:43', '2020-05-05 19:57:43', '2021-05-05 12:57:43'),
('e7bf2c79f2097fd91ea7b624432840500551e9080c8818cbd4e89ea28ef1f5f0dd57c8b75713d1b6', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:20:32', '2020-03-10 01:20:32', '2021-03-09 18:20:32'),
('e7f67b8fa4db14accb847d92b8b4b07906a6361b1928067b0259a6ddbe56d02ffcbaa22ef43739a5', 126, 1, 'mobile', '[]', 0, '2020-01-27 16:36:35', '2020-01-27 16:36:35', '2021-01-27 09:36:35'),
('e81cf6be293b0a915553a41cb7c80e78925c6684b40ee6d4e82ad9d298d6812419d4b02b72154475', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:29:08', '2020-03-10 02:29:08', '2021-03-09 19:29:08'),
('e827f4eb22b0c7b85365f00f51096a4b6492fe0c9db3f3bb47ffa3e4d3d6f7df3785ba49778991b3', 2, 1, 'mobile', '[]', 0, '2020-01-27 01:43:53', '2020-01-27 01:43:53', '2021-01-26 18:43:53'),
('e82a08b2ff78baeda1cd2101a089ab402bb8430e6c9f51a33a616fd42a711634e1e023f3e1943b79', 64, 1, 'mobile', '[]', 0, '2020-01-26 06:34:13', '2020-01-26 06:34:13', '2021-01-25 23:34:13'),
('e898a347e5a542d1345b63f31bc3005f9db903208c5bdd3f75438f7fc4fe592042d56bb6b1cc5c25', 1, 1, 'mobile', '[]', 0, '2020-03-05 18:03:25', '2020-03-05 18:03:25', '2021-03-05 11:03:25'),
('e8aa2cff44fb8a123e7a5354ce50f37e71566fd74db17729a3c742c520ad75a56773ceb785ec4220', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:33:14', '2020-03-07 20:33:14', '2021-03-07 13:33:14'),
('e8e46782c40f804750f161d607fb3af290f6f735058b65ed8729d25a401a54b203f7158a8f197a65', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:22:29', '2020-03-10 19:22:29', '2021-03-10 12:22:29'),
('e934eda9f34f50551effa3e751016e76f25499ae08826f94f1ae92b1e56976d20be32f3b1504e4cb', 108, 1, 'mobile', '[]', 0, '2020-01-27 06:08:24', '2020-01-27 06:08:24', '2021-01-26 23:08:24'),
('e9459f89221db3d1a1f43cde11af2ecd0366d05ade7d4cec8d50ba8048072b34729bea8d29c89211', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:31:37', '2020-03-07 21:31:37', '2021-03-07 14:31:37'),
('e96ebd5b84dbb03fe346625b60803bb9185b52edb1fea425be0aae439c439e048433994ee5d48380', 1, 1, 'mobile', '[]', 0, '2020-03-08 20:01:42', '2020-03-08 20:01:42', '2021-03-08 13:01:42'),
('e98d3c611f6e934bdd1c79bd1573ad47aa7312111067cc9d4a16994e07484fb24786a27499e9ef72', 1, 1, 'mobile', '[]', 0, '2020-03-08 03:23:33', '2020-03-08 03:23:33', '2021-03-07 20:23:33'),
('e9b1bc43c3ea24fd2a6ffd04da4c9d2e2978d1e84ff8e68b4b26041d7226deece37d075d2999d3bd', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:50:19', '2020-03-10 02:50:19', '2021-03-09 19:50:19'),
('e9bf334931f26a1e5240c74d5005df6dd9745490c5bdfbeb879f6566423c3f4ddf391096c10dfac0', 30, 1, 'mobile', '[]', 0, '2020-01-21 13:03:53', '2020-01-21 13:03:53', '2021-01-21 06:03:53'),
('e9cfe60afc0561097870f0a8ecc1578400f68fd415a8984825eba49c7b9876cd2a237add0eda641f', 103, 1, 'mobile', '[]', 0, '2020-01-27 02:46:19', '2020-01-27 02:46:19', '2021-01-26 19:46:19'),
('ea31044855e077d01a9bf1d76c5ee2b968eb514f4d052bc5ce86f276c08a7648abc8fd487d95215d', 1, 1, 'mobile', '[]', 0, '2020-03-05 04:01:03', '2020-03-05 04:01:03', '2021-03-04 21:01:03'),
('ea48e0baa57bb85da759f5459b16f353a296e6e0e10faad270ea4e792188ebfd37e6480795d27d80', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:42:08', '2020-03-09 12:42:08', '2021-03-09 05:42:08'),
('ea7927c2da7642a4621c1782297a38cc7ba973bfc0ac5dbea2a807b501254f490f1c5c2cdee2db78', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:10:17', '2020-03-10 02:10:17', '2021-03-09 19:10:17'),
('ea80ba99d21699aa41002c659f9fe46e55dde7f07f402c40334a8bc7f6d715ed0537bf7af33a5e0f', 47, 1, 'mobile', '[]', 0, '2020-01-26 00:18:31', '2020-01-26 00:18:31', '2021-01-25 17:18:31'),
('eaa4f66a970b9269976985789a0fca0a28730e89631d112adfcecf6970a853dd375768a7425a58f8', 1, 1, 'mobile', '[]', 0, '2020-03-29 18:12:31', '2020-03-29 18:12:31', '2021-03-29 11:12:31'),
('ead30b00d1e9decdbd7d8409ddad65498f47049f3473af911472d023ad8dbfc515bd78e073828c3e', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:31:57', '2020-03-10 16:31:57', '2021-03-10 09:31:57'),
('eaeebcaf3efaf917f0b6354b9d6220e275c0e740c794ae7e9d0729dd64b32935e9a10eab7ff67699', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:26:32', '2020-03-07 23:26:32', '2021-03-07 16:26:32'),
('eaf8437b9cfd1daee5e4464000795c4463e6227e91c46f773e86ad2f5d620bf09f87819eb3db1d7c', 12, 1, 'mobile', '[]', 0, '2019-12-11 22:53:08', '2019-12-11 22:53:08', '2020-12-11 15:53:08'),
('eb8e27672eb2b19534704f797abc35031009675e166cfea22a31f85f523ca84cc7e98cbf7dcc5978', 117, 1, 'mobile', '[]', 0, '2020-01-27 15:40:23', '2020-01-27 15:40:23', '2021-01-27 08:40:23'),
('eb90961cecfd990ed16d94aed1446e1eede3219276b03308997dc354459d877ea850d5ac6d4b0733', 1, 1, 'mobile', '[]', 0, '2020-03-09 00:55:24', '2020-03-09 00:55:24', '2021-03-08 17:55:24'),
('ec8d76782c6439929bc4a7cb00eba88b646aaa68555df83ca18711f818ba54085b1119193114fe98', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:31:17', '2020-03-05 21:31:17', '2021-03-05 14:31:17'),
('edaa9061c6e78058f8782fc43022780662a102376d11b919b8a5fc8e3f65e7d84a2f96b5fc3f412b', 1, 1, 'mobile', '[]', 0, '2020-03-04 16:11:19', '2020-03-04 16:11:19', '2021-03-04 09:11:19'),
('edf83a55b4f1fdc1e337d120283cdb0ad1e1f2ec1f43677f8a4d3e51a820cf1a3a2c3124be23fa73', 299, 1, 'mobile', '[]', 0, '2020-01-30 08:30:47', '2020-01-30 08:30:47', '2021-01-30 01:30:47'),
('eecf256ccd1d8706492a675c9c3ed0204fc58b98a3381087f8df236cc630e6da58ad152548c4c1ca', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:42:04', '2020-03-07 20:42:04', '2021-03-07 13:42:04'),
('eeff70ba5166e61d8898e5463f8c209b0d5f7e876a0871f68fff57649ee6e2dc9b01c121201a36fd', 114, 1, 'mobile', '[]', 0, '2020-01-27 10:57:03', '2020-01-27 10:57:03', '2021-01-27 03:57:03'),
('ef06d0db6202ac3ddfe63ac7aa5deedeb62423a1f0bb6624741751bc7b6051d8abc50016c82637e1', 1, 1, 'mobile', '[]', 0, '2020-03-10 23:01:49', '2020-03-10 23:01:49', '2021-03-10 16:01:49'),
('ef11096e9b95a889e8bd320f70e7b69cdd8b3b03aaf5ac7cf7706b15348880bd6a602abb8c4b9648', 1, 1, 'mobile', '[]', 0, '2020-03-10 19:29:42', '2020-03-10 19:29:42', '2021-03-10 12:29:42'),
('efdd7f0bc1c50a9cd88be0698231c650a23a5f0bced9d979f84c3d374f63152d1cd5a2c3c7a1b3b0', 191, 1, 'mobile', '[]', 0, '2020-01-28 22:52:13', '2020-01-28 22:52:13', '2021-01-28 15:52:13'),
('efead652df165d76dc87516f74d402ea5926d32b71ab61b7cc526e379d90c064aba747bd8d36163c', 1, 1, 'mobile', '[]', 0, '2020-03-09 13:15:58', '2020-03-09 13:15:58', '2021-03-09 06:15:58'),
('f000153815a96b3a2a711ce09fa50b8782a77ad0028c7d9e37fefee68e33f5ae5c2194b124054d5b', 1, 1, 'mobile', '[]', 0, '2020-03-10 04:09:56', '2020-03-10 04:09:56', '2021-03-09 21:09:56'),
('f03deccc546ec857dc790349a086ef3dba4a948081f33d6ef3ed0c1b3badd206ca18c7b292206f5e', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:43:30', '2020-03-05 06:43:30', '2021-03-04 23:43:30'),
('f0452a4f13b81453cd86eb0920ce83fe27b1b26ebddd8215b0284bf94629d2ea551dd9b72ab04d10', 1, 1, 'mobile', '[]', 0, '2020-03-08 00:00:53', '2020-03-08 00:00:53', '2021-03-07 17:00:53'),
('f05ee0a79db383c95265c7d2d50d3d02816041f4bfd17fd7beb9ea8b4c885248a1d4ddb0691df0dd', 270, 1, 'mobile', '[]', 0, '2020-01-30 04:50:18', '2020-01-30 04:50:18', '2021-01-29 21:50:18'),
('f0769fb9c4871a3fa5109a99c2c6061e1a685e14731a90ec60efd86c3cf62ddb735935379b2cf176', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:50:12', '2020-03-08 01:50:12', '2021-03-07 18:50:12'),
('f17195a7f58533076974316d1516b285f16774167a8d967eddad189ec7dcf5cc7e63a5a5a9cedb1b', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:05:04', '2020-03-07 20:05:04', '2021-03-07 13:05:04'),
('f1c8b5315e203849038a509771565f7fa663af24b8e047f25481f18b0f9bff5322069af467f315f5', 195, 1, 'mobile', '[]', 0, '2020-01-29 01:52:46', '2020-01-29 01:52:46', '2021-01-28 18:52:46'),
('f1ec5360699135206af4a5728776e27e97b3e4facb3b6814173e38c9fef73ccf43d2239c7e026d6b', 200, 1, 'mobile', '[]', 0, '2020-01-29 03:39:47', '2020-01-29 03:39:47', '2021-01-28 20:39:47'),
('f213a8ec2df6a81e1345c3265034ed79d1d110c5e7508e744fff72f21694eb119f9e6adee2d3ff00', 1, 1, 'mobile', '[]', 0, '2020-03-05 03:23:53', '2020-03-05 03:23:53', '2021-03-04 20:23:53'),
('f263f8b06134280fec58d5698d4f0b14b850cac13870485fecaf16291e5c0bdafd748f622c8ea563', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:41:57', '2020-03-04 19:41:57', '2021-03-04 12:41:57'),
('f28856a383cc4a7d1b98f7f4016396d07bfa4b133c09460d29eccca4e1f0110d4df0dab332365753', 1, 1, 'mobile', '[]', 0, '2019-12-09 05:38:26', '2019-12-09 05:38:26', '2020-12-08 22:38:26'),
('f2c9820d722a0ad581dc744324d5f2b14b32d2e7cf573787f337ba7642850ebece3266ed142822fe', 1, 1, 'mobile', '[]', 0, '2020-02-19 18:43:33', '2020-02-19 18:43:33', '2021-02-19 11:43:33'),
('f33882eb21eac26cec1f045bdf5d762f80f3a8872618ccbb91a3a3629ced8785d8d36faba55821cd', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:17:12', '2020-03-10 02:17:12', '2021-03-09 19:17:12'),
('f3a627da457b56cf026f823bf576f037c0683b95f38e781c174210ed2452ec6ae5c262cb1c0a8ff1', 51, 1, 'mobile', '[]', 0, '2020-01-26 00:58:39', '2020-01-26 00:58:39', '2021-01-25 17:58:39'),
('f3e68d31860bc0764b3055850f373bdd1222f9ed8ea40c1a7a3741919ae899cdb9ec4876ca228cb1', 1, 1, 'mobile', '[]', 0, '2020-03-10 01:22:30', '2020-03-10 01:22:30', '2021-03-09 18:22:30'),
('f42bc53f52824491ac830dde688aec3beee284713188bfc95b67398b8dc99dcf4a63da6f6c8844a8', 1, 1, 'mobile', '[]', 0, '2020-03-10 20:04:51', '2020-03-10 20:04:51', '2021-03-10 13:04:51'),
('f473a170f365518d3ccfc2a40aa2e6d39194b27ed0b561d654a14f458db73fdc0f6e45f5e5e10213', 1, 1, 'mobile', '[]', 0, '2020-03-09 01:27:04', '2020-03-09 01:27:04', '2021-03-08 18:27:04'),
('f4a820258130f0cacf414a51f4704e4315c4490dd3d13a27d721cb780c298d459afb96d8ea8d7999', 1, 1, 'mobile', '[]', 0, '2020-03-08 17:43:50', '2020-03-08 17:43:50', '2021-03-08 10:43:50'),
('f51a16224a3521887d58ece48e032c69162829ed63740829c48dc10da9a012698184f2f0cb3d2c87', 324, 1, 'mobile', '[]', 0, '2020-01-30 19:31:08', '2020-01-30 19:31:08', '2021-01-30 12:31:08'),
('f5b8d86714c837890d598679ce2d0fbe3d7c26a2aacd99834edf2296b6e3682c43deb10f0413e307', 3, 1, 'mobile', '[]', 0, '2019-11-30 00:50:39', '2019-11-30 00:50:39', '2020-11-29 17:50:39'),
('f6455e97ec5ceaf103c30552cb93b74ecfa2abd75ce8d3026eaa066bcbe6ac6e4c70463f7963f38c', 1, 1, 'mobile', '[]', 0, '2019-12-13 04:53:14', '2019-12-13 04:53:14', '2020-12-12 21:53:14'),
('f6a7f68f32bb3515274bf9dfa2e1e90f21b748ac080a02ffa1600141cb0aa038b34f06bf0bc09650', 181, 1, 'mobile', '[]', 0, '2020-01-28 17:25:56', '2020-01-28 17:25:56', '2021-01-28 10:25:56'),
('f719471cd2722ab994c485507fb7e18c4d022c5a75de78e482e7075834c62496694ee60cd4730608', 1, 1, 'mobile', '[]', 0, '2020-03-07 23:09:04', '2020-03-07 23:09:04', '2021-03-07 16:09:04'),
('f72960376e7f5d4f098562eae28119763a3a596aef9171446a3bba6814c6bc24dfa729ee017c9a0a', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:00:08', '2020-03-05 06:00:08', '2021-03-04 23:00:08'),
('f771841b3a9f719aedcc4e55b62d3c4cc345d31337b413b7dd8142ccb2b4280271186455c5ed0ea4', 1, 1, 'mobile', '[]', 0, '2020-03-10 02:18:49', '2020-03-10 02:18:49', '2021-03-09 19:18:49'),
('f78a60460e0d56b422377cfbf474316cca2f7a8a30b32de4bdaa3ab260a8523970c271724646a187', 4, 1, 'mobile', '[]', 0, '2020-05-06 09:54:17', '2020-05-06 09:54:17', '2021-05-06 02:54:17'),
('f7a78297a770f430fb3178b1b958c705eb8ecea3fb4920681ae87ae60533549aabab7ba11a752998', 113, 1, 'mobile', '[]', 0, '2020-01-27 08:15:26', '2020-01-27 08:15:26', '2021-01-27 01:15:26'),
('f7a8d55a8b7d0468000bf4ae029a9924bc1c8a01742bd79f569713edd5defe06c37d8d74b5e6f7f1', 1, 1, 'mobile', '[]', 0, '2020-03-07 02:15:02', '2020-03-07 02:15:02', '2021-03-06 19:15:02'),
('f7cc373ed47738ebe3f745483b9c4fb65034f0a4f39890cd882b05661bebbaa7f7460c11d9042465', 1, 1, 'mobile', '[]', 0, '2020-03-07 21:19:31', '2020-03-07 21:19:31', '2021-03-07 14:19:31'),
('f86a2de0f0213ed1173065a8c7056f6e83219dc9ef2dfedd0239e7541c22503aab500277022e052b', 235, 1, 'mobile', '[]', 0, '2020-01-29 23:13:58', '2020-01-29 23:13:58', '2021-01-29 16:13:58'),
('f8ca277f35922fd926f9654a82558ef83cac9c23756a4a89568481812556da1df74a21f07cf20f48', 339, 1, 'mobile', '[]', 0, '2020-01-30 21:27:44', '2020-01-30 21:27:44', '2021-01-30 14:27:44'),
('f9435a262f2b433a359794121bb77620902b6565f68ffa6478b40bc508f79216d236f1aa78c54199', 336, 1, 'mobile', '[]', 0, '2020-01-30 21:08:28', '2020-01-30 21:08:28', '2021-01-30 14:08:28'),
('f9a2077fa34a901ee29f0952e4119cfbd2dd7a6ce81a7d535ec219b0cc9ea703ee791b9830a5226b', 302, 1, 'mobile', '[]', 0, '2020-01-30 10:48:19', '2020-01-30 10:48:19', '2021-01-30 03:48:19'),
('f9dc670276a3f6a350c4eea0926958da88f8e095924cd6a97eefc5dd4b5eb04532bdb8b24d4bde81', 1, 1, 'mobile', '[]', 0, '2020-03-05 21:28:56', '2020-03-05 21:28:56', '2021-03-05 14:28:56'),
('f9f2532505b395783125ecf670987bc891faefa50f80dfd6c3d42790f15a6ab5157bbf9d6c7fbbeb', 272, 1, 'mobile', '[]', 0, '2020-01-30 04:59:34', '2020-01-30 04:59:34', '2021-01-29 21:59:34'),
('fa2798660a847a0766a8aa26e9317b5a401f8517e17bb161935f287f8123ac0c7705d91635787ac7', 1, 1, 'mobile', '[]', 0, '2020-03-05 19:11:23', '2020-03-05 19:11:23', '2021-03-05 12:11:23'),
('fa82ce585eed12b0a8e82c0978eb62ba092d62e480dea4acdfc432026c45644ab5562e2e3d853ac5', 1, 1, 'mobile', '[]', 0, '2020-03-04 19:49:25', '2020-03-04 19:49:25', '2021-03-04 12:49:25'),
('fac55c260104b385a209fe6243aacd833e319d62e2318996332dc45c06c5be28a098e6dbd07c5b75', 1, 1, 'mobile', '[]', 0, '2020-03-07 19:55:08', '2020-03-07 19:55:08', '2021-03-07 12:55:08'),
('fad1d068331ae1a49fc8cc829f45152224d7298f560c2d77dfe36b992ecde7896b7205a4b6b4e020', 109, 1, 'mobile', '[]', 0, '2020-01-27 06:20:53', '2020-01-27 06:20:53', '2021-01-26 23:20:53'),
('faf371463794bb12e3cd452ae9cf53b1af4a3ab192fbc64cb5413215867bf36e3e9dcab6c59aa230', 81, 1, 'mobile', '[]', 0, '2020-01-26 19:01:25', '2020-01-26 19:01:25', '2021-01-26 12:01:25'),
('fafacc3f126d596453b7b1c552a0b5012b661252c008ad6598cef957d5a735e5098d8c40c70d8cdd', 1, 1, 'mobile', '[]', 0, '2020-03-10 03:35:34', '2020-03-10 03:35:34', '2021-03-09 20:35:34'),
('fb0828d207e7b92c0c2ddbfe4934bb991e357d5fbe1e829c017b67bab8529e9e6b00e779d1dc5fae', 1, 1, 'mobile', '[]', 0, '2020-01-09 00:20:53', '2020-01-09 00:20:53', '2021-01-08 17:20:53'),
('fb39c2fe5e115eab1fb9c7bcaf4564ef5dd4c23bfa4ffd74b8e498ad1145821077cb01579913575f', 1, 1, 'mobile', '[]', 0, '2020-03-04 15:00:44', '2020-03-04 15:00:44', '2021-03-04 08:00:44'),
('fb3ebc7168e03d499d4e185ef838b844fb557bd3965986c396d7882039217a07e501fcd7b603ae28', 1, 1, 'mobile', '[]', 0, '2020-03-07 20:42:09', '2020-03-07 20:42:09', '2021-03-07 13:42:09'),
('fb4ca5cfd9b255b029a04ba639f33f7540c2ee7dcbfd0d45c09621c2e01b62a9cc274c44a72b8993', 2, 1, 'mobile', '[]', 0, '2019-11-30 17:37:12', '2019-11-30 17:37:12', '2020-11-30 10:37:12'),
('fb78a60a59ad19152e9a50eb976322cad3660e0707d8faa26d0bafc015aa0bdf2152d620b7a9337e', 247, 1, 'mobile', '[]', 0, '2020-01-30 02:32:46', '2020-01-30 02:32:46', '2021-01-29 19:32:46'),
('fbec896da2b5d09c61ecdf97ed237217767c1e5179a5eb34974e0aa3e9cf6791d9960b830bcaea3b', 1, 1, 'mobile', '[]', 0, '2020-03-05 06:03:45', '2020-03-05 06:03:45', '2021-03-04 23:03:45'),
('fc538daa09a37a71179cf7fe1e3335eb7bedaf8d5351bd14527ed4f8c4b54d65b701ea9e4edcb54b', 1, 1, 'mobile', '[]', 0, '2020-03-08 01:37:40', '2020-03-08 01:37:40', '2021-03-07 18:37:40'),
('fc7214afbe6e72cf96d8f0a8a73fcfb5978492949b78a3703b414763e29352b905cf6c96f14110a6', 1, 1, 'mobile', '[]', 0, '2020-03-10 18:31:59', '2020-03-10 18:31:59', '2021-03-10 11:31:59'),
('fc83a06c1aa1cce3d183ebf4d21fbb801c8225711ec58ae9d9e3b84b05777ad6e12dcb9faffd6aba', 1, 1, 'mobile', '[]', 0, '2020-03-03 19:50:24', '2020-03-03 19:50:24', '2021-03-03 12:50:24'),
('fce1d704cc31ea03b767a1d6841900643e72b734a34ab39fe19ca6644b6db6de23fe1d923e9d1278', 1, 1, 'mobile', '[]', 0, '2020-03-03 22:24:18', '2020-03-03 22:24:18', '2021-03-03 15:24:18'),
('fd5172021dc0bc11d83075963c1e9b315d5a9bd726424e498777d416eec97fdbf3645bcdbc159ca0', 107, 1, 'mobile', '[]', 0, '2020-01-27 05:58:02', '2020-01-27 05:58:02', '2021-01-26 22:58:02'),
('fd9c30df5b6fecf668a349693ba30239044aae475dfceeb00379a30acb3d92b76d36f9dd7bedd5a9', 1, 1, 'mobile', '[]', 0, '2020-03-03 20:38:47', '2020-03-03 20:38:47', '2021-03-03 13:38:47'),
('fe07bae647d0ccc44c4dc4c10c18f960761f5ca237b2800d74d0800acf451a584b4c897150221665', 1, 1, 'mobile', '[]', 0, '2020-03-09 14:00:59', '2020-03-09 14:00:59', '2021-03-09 07:00:59'),
('fe5073ebead134312684f0a4f6bd4c6309390985fce3d1e902bde7672adf5e4efe4e9386a8ca31f8', 1, 1, 'mobile', '[]', 0, '2020-03-05 02:17:39', '2020-03-05 02:17:39', '2021-03-04 19:17:39'),
('fe8862373bec43cae576f9923ceb12ebab528cf00d3452d0537aa1d2f81561da2c03c24ac6eef6ee', 311, 1, 'mobile', '[]', 0, '2020-01-30 14:38:52', '2020-01-30 14:38:52', '2021-01-30 07:38:52'),
('fef0e2a3dfcee32cfd5d7b289b53aeecf031e57cf0acf36aef3ba1fc9535c418777cc8c592c622d0', 1, 1, 'mobile', '[]', 0, '2020-03-10 17:05:25', '2020-03-10 17:05:25', '2021-03-10 10:05:25'),
('ff2c16e1adb760023538b962d96aaae123249c6ec5f6a66114dd4320d4bda6dfc00f3da999b97ca5', 1, 1, 'mobile', '[]', 0, '2020-03-09 12:47:35', '2020-03-09 12:47:35', '2021-03-09 05:47:35'),
('ff785615b40e4341aad9257ba12f2c7470b662b426f828cd78646d9cc9434098478d0dce34b86ef4', 1, 1, 'mobile', '[]', 0, '2020-03-10 16:31:26', '2020-03-10 16:31:26', '2021-03-10 09:31:26'),
('ff7a4c2429ae3ba7e22d531c194857f00e8d0a2d1969491060dc5f2e9800d686d80deebddf9148d1', 1, 1, 'mobile', '[]', 0, '2020-03-08 03:37:15', '2020-03-08 03:37:15', '2021-03-07 20:37:15'),
('ff997fc5a89981c8b85094b9e6574599fb8e36e1e3cb291aed1af653ffa385d421a718ae12226753', 72, 1, 'mobile', '[]', 0, '2020-01-26 13:28:23', '2020-01-26 13:28:23', '2021-01-26 06:28:23'),
('ffe0eae587f146876f70d70a861ddb82bc1d2c4c1349df760e70f6bcdd1b44d9e2152b172cd86a89', 1, 1, 'mobile', '[]', 0, '2020-03-05 07:38:38', '2020-03-05 07:38:38', '2021-03-05 00:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'b5R7r18pfp92zTbIeNbcAEUnUOKAFj4RF26OQBQ9', 'http://localhost', 1, 0, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13'),
(2, NULL, 'Laravel Password Grant Client', '8FeNSQNGX4ImJ1IScKBaEi1XzD76DFIifSRBjn9j', 'http://localhost', 0, 1, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-04 05:12:13', '2018-04-04 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oils`
--

CREATE TABLE `oils` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `caliber_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 in - 1=out',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oils`
--

INSERT INTO `oils` (`id`, `company_id`, `caliber_id`, `size_id`, `quantity`, `price`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 50, 0, '2020-05-28 22:43:05', '2020-05-28 22:43:05', NULL),
(2, 1, 1, 1, 1, 50, 1, '2020-05-28 23:03:34', '2020-05-28 23:03:34', NULL),
(3, 1, 1, 1, 10, 50, 0, '2020-05-28 23:30:49', '2020-05-28 23:30:49', NULL),
(4, 1, 1, 1, 5, 5, 1, '2020-05-30 17:58:51', '2020-05-30 17:58:51', NULL),
(5, 2, 2, 2, 50, 50, 0, '2020-05-30 18:05:39', '2020-05-30 18:05:39', NULL),
(6, 2, 2, 2, 50, 50, 0, '2020-05-30 18:05:51', '2020-05-30 18:05:51', NULL),
(7, 1, 1, 1, 5, 5, 0, '2020-05-30 18:13:27', '2020-05-30 18:13:27', NULL),
(8, 1, 1, 1, 5, 5, 0, '2020-05-30 18:14:01', '2020-05-30 18:14:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0=in 1=out',
  `category_id` int(11) NOT NULL,
  `source_money` int(11) DEFAULT 1 COMMENT '1=carwash 2=employee 3= Supplier',
  `amount` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `price_one` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT -1 COMMENT '-1=> new, 0->preparing, 1->on Delivery, 2->completed, 3->rejected',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `type`, `category_id`, `source_money`, `amount`, `quantity`, `description`, `employee_id`, `price_one`, `month`, `year`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 1, NULL, 250, 5, NULL, NULL, 50, NULL, NULL, -1, '2020-05-28 19:40:13', '2020-05-28 19:40:13', NULL),
(2, 1, 0, 2, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-28 19:41:25', '2020-05-28 19:41:25', NULL),
(3, 1, 0, 3, NULL, 500, NULL, 'دفعات اخرى', NULL, NULL, NULL, NULL, -1, '2020-05-28 19:42:16', '2020-05-28 19:42:16', NULL),
(4, 1, 1, 4, 1, 500, NULL, NULL, NULL, NULL, 1, 2020, -1, '2020-05-28 19:42:54', '2020-05-28 19:42:54', NULL),
(5, 1, 1, 4, 3, 500, NULL, NULL, 10, NULL, 2, 2020, -1, '2020-05-28 19:43:24', '2020-05-28 19:43:24', NULL),
(6, 1, 1, 4, 3, 500, NULL, NULL, 10, NULL, 3, 2020, -1, '2020-05-28 19:43:28', '2020-05-28 19:43:28', NULL),
(7, 1, 1, 4, 3, 500, NULL, NULL, 10, NULL, 4, 2020, -1, '2020-05-28 19:43:50', '2020-05-28 19:43:50', NULL),
(8, 1, 1, 5, 2, 50, NULL, NULL, 4, NULL, 1, 2020, -1, '2020-05-28 19:47:10', '2020-05-28 19:47:10', NULL),
(9, 1, 1, 7, 13, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:40:59', '2020-05-28 22:40:59', NULL),
(10, 1, 1, 7, 13, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:42:22', '2020-05-28 22:42:22', NULL),
(11, 1, 1, 7, 13, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:42:31', '2020-05-28 22:42:31', NULL),
(12, 1, 1, 7, 13, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:42:40', '2020-05-28 22:42:40', NULL),
(13, 1, 1, 7, 13, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:43:05', '2020-05-28 22:43:05', NULL),
(14, 1, 0, 2, NULL, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 22:59:01', '2020-05-28 22:59:01', NULL),
(15, 1, 0, 2, NULL, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:03:34', '2020-05-28 23:03:34', NULL),
(16, 1, 0, 2, NULL, 50, 1, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:28:38', '2020-05-28 23:28:38', NULL),
(17, 1, 1, 7, 13, 50, 10, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:30:49', '2020-05-28 23:30:49', NULL),
(18, 1, 0, 1, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:31:04', '2020-05-28 23:31:04', NULL),
(19, 1, 0, 1, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:32:07', '2020-05-28 23:32:07', NULL),
(20, 1, 0, 2, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:32:19', '2020-05-28 23:32:19', NULL),
(21, 1, 0, 2, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:32:40', '2020-05-28 23:32:40', NULL),
(22, 1, 0, 2, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-28 23:39:11', '2020-05-28 23:39:11', NULL),
(23, 1, 0, 2, 13, 50, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:27:32', '2020-05-30 17:27:32', NULL),
(24, 1, 0, 2, 13, 50, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:27:52', '2020-05-30 17:27:52', NULL),
(25, 1, 0, 2, 13, 50, 11, 'description', NULL, 10, NULL, NULL, -1, '2020-05-30 17:28:02', '2020-05-30 17:28:02', NULL),
(26, 1, 0, 2, 13, 50, 11, NULL, NULL, 10, NULL, NULL, -1, '2020-05-30 17:31:28', '2020-05-30 17:31:28', NULL),
(27, 1, 0, 2, 13, 50, 11, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:31:39', '2020-05-30 17:31:39', NULL),
(28, 1, 0, 2, 13, 50, 11, NULL, NULL, 10, NULL, NULL, -1, '2020-05-30 17:31:52', '2020-05-30 17:31:52', NULL),
(29, 1, 0, 2, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:32:06', '2020-05-30 17:32:06', NULL),
(30, 1, 0, 2, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:32:14', '2020-05-30 17:32:14', NULL),
(31, 1, 0, 2, 13, 50, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:32:20', '2020-05-30 17:32:20', NULL),
(32, 1, 0, 2, 13, 50, 11, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:32:26', '2020-05-30 17:32:26', NULL),
(33, 1, 0, 2, NULL, 50, 11, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:34:21', '2020-05-30 17:34:21', NULL),
(34, 1, 0, 2, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:58:51', '2020-05-30 17:58:51', NULL),
(35, 1, 0, 2, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 17:59:17', '2020-05-30 17:59:17', NULL),
(36, 1, 0, 2, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:00:05', '2020-05-30 18:00:05', NULL),
(37, 1, 0, 2, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:00:35', '2020-05-30 18:00:35', NULL),
(38, 1, 0, 2, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:01:17', '2020-05-30 18:01:17', NULL),
(39, 1, 1, 7, 13, 50, 50, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:05:39', '2020-05-30 18:05:39', NULL),
(40, 1, 1, 7, 1, 50, 50, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:05:51', '2020-05-30 18:05:51', NULL),
(41, 1, 1, 7, 1, 5, 5, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-30 18:13:27', '2020-05-30 18:13:27', NULL),
(42, 1, 1, 7, 2, 5, 5, NULL, 4, NULL, NULL, NULL, -1, '2020-05-30 18:14:01', '2020-05-30 18:14:01', NULL),
(43, 1, 1, 6, 1, 100, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2020-05-31 16:27:30', '2020-05-31 16:27:30', NULL),
(44, 1, 1, 6, 3, 1, NULL, NULL, 13, NULL, NULL, NULL, -1, '2020-05-31 16:27:44', '2020-05-31 16:27:44', NULL),
(45, 1, 1, 11, 2, 100, NULL, 'ok', 1, NULL, NULL, NULL, -1, '2020-05-31 16:28:10', '2020-05-31 16:28:10', NULL),
(46, 1, 0, 3, NULL, 1, NULL, 'oh', NULL, NULL, NULL, NULL, -1, '2020-05-31 16:28:42', '2020-05-31 16:28:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/pages/5dd457f5b1d6f.gif', 0, '2018-08-05 12:27:40', '2019-11-20 06:00:37', NULL),
(2, 'uploads/pages/5db95c988172a.jpg', 0, '2018-08-05 12:27:42', '2019-10-30 19:49:12', NULL),
(3, 'uploads/pages/5db95d144e23d.jpg', 0, '2018-08-05 12:27:49', '2019-10-30 19:51:16', NULL),
(4, 'cvdvwfvfwv', 0, '2018-08-05 12:27:51', NULL, '2018-08-16 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `key_words` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `description`, `key_words`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'About Us', 'about-us', '<p>&nbsp;</p>\r\n\r\n<pre style=\"text-align:center\">\r\n  Sala Express\r\n\r\nIs an application that allows you to buy fresh fruits and vegetables with ease via the application and delivered to you wherever you are and at affordable prices.\r\n\r\nWe choose items for you very carefully as if you are buying it yourself.</pre>', 'about us', '2018-08-05 12:29:09', '2019-11-20 06:05:33', NULL),
(2, 1, 'ar', 'About Us', 'about-us', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>تطبيق سلة اكسبرس</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">هو تطبيق يتيح لك شراء الفواكه والخضروات الطازجة </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">بكل سهولة&nbsp; عبر التطبيق&nbsp; و توصيلها&nbsp; لك اينما&nbsp; كنت&nbsp; </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">وبأسعار مناسبة.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">نحن نختار لك الأصناف بعناية تامة كما لو أنك تشتري بنفسك&nbsp;.</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', 'about us', '2018-08-05 12:29:12', '2019-11-20 06:11:36', NULL),
(3, 2, 'en', 'Privacy Policy', 'privacy-policy', '<p><span style=\"font-size:14px\">Thanks for using the Sala Express app.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Our application respects your privacy and seeks to protect your personal data. To learn more, please read the Privacy Policy below.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">The Privacy Policy explains how we collect and use your personal data. Also, remember the procedures used to ensure the privacy of your information. Finally, this policy determines your options regarding the collection, use, and disclosure of personal data.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Your use of the &quot;Sala Express&quot; application&nbsp;and providing us with your personal information to register within our application is tantamount to agreeing to the terms mentioned in the privacy policy, referring to &quot;the company&quot; or &quot;we&quot;, it represents the team and management of the sala express as the official entity that owns the application, either &quot;you&quot; or &quot;User&quot; represents any person who uses the Sala Express application. If you do not agree to these terms, you do not have to use the application at all.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>1- Is your information secure with us?</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">In the event that you use the application services and benefit from them not only for the purpose of browsing and discovery, then make absolutely sure that we do our best to protect your personal data and prevent illegal or unauthorized access to it and even protect it from processing, alteration and loss. In spite of taking various protection measures and working to improve them, no system or technology can remain completely safe from damages, so if you feel any vulnerability within the application, you can contact us to work to solve this problem through the following e-mail info @ sala- express.com.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>2- Do we share your personal data with any other parties?</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">The privacy of users of the Sala Express is one of the most important things that we try to protect in all possible ways, as we never sell or share this data and do not disclose it or share it with any third party for any purpose whatsoever, and the goals that we collect this data for are statistical goals such as the numbers of users and where they can benefit from the service.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>3- What are the required permissions from the user?</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Notifications: The application requests the authority to use it in the request operations and provide the service to the user, in order to keep the user informed of all details of the service.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>4- The right to amend the privacy policy</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">We have the full right to update the privacy policy of the Sala Express application, either by adding or removing new items or by modifying existing terms at any time.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>5- How do we notify users of Express Cart of any update of this Privacy Policy?</strong></span></span></p>\r\n\r\n<p>We send notifications or email to users of the Sala Express app about any updates to this privacy policy. You can also know any update by checking the date of the last update of this policy, which is in the last line on this page.</p>', 'Privacy Policy', '2018-08-05 12:30:08', '2019-12-30 02:28:08', NULL),
(4, 2, 'ar', 'Privacy Policy', 'privacy-policy', '<p style=\"direction: rtl; \">شكرًا لاستخدامك تطبيق &quot;سلة اكسبرس&quot;.</p>\r\n\r\n<div style=\"direction: rtl;\">إنّ تطبيقنا يحترم خصوصيّتك ويسعى لحماية بياناتك الشخصية. لمعرفة المزيد، يُرجى قراءة سياسة الخصوصيّة أدناه.</div>\r\n\r\n<div style=\"direction: rtl;\">&nbsp;</div>\r\n\r\n<div style=\"direction: rtl;\">توضح سياسة الخصوصيّة كيفية جمع واستخدام بياناتك الشخصية (تحت ظروفٍ معينةٍ). كما تذكرُ أيضًا الإجراءات المتبعة لضمان خصوصية معلوماتك. وأخيرًا، تُحدّد هذه السياسة الخيارات المتاحة لكَ فيما يتعلَّق بجمع البيانات الشخصية واستخدامها والكشف عنها.<br />\r\n&nbsp;</div>\r\n\r\n<p style=\"direction: rtl;\">إن استخدامكَ لتطبيق &quot;سلة اكسبرس&quot; وتقديمك معلوماتك الشخصية للتسجيل داخل التطبيق لدينا هو بمثابة الموافقة منك على البنود الواردة في سياسة الخصوصية، بالإشارة إلى &ldquo;الشركة&rdquo; أو &ldquo;نحن&rdquo; فإنها تمثل فريق وادارة سلة اكسبرس كجهة رسمية مالكة للتطبيق، أما &ldquo;أنت&rdquo; أو &ldquo;المستخدم&rdquo; فإنها تمثل أي شخص يقوم باستخدام تطبيق سلة اكسبرس. إن كنت لا توافق على هذه البنود، فلا يتوجب عليك استخدام التطبيق اطلاقاً.</p>\r\n\r\n<p style=\"direction: rtl;\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>1- هل المعلومات الخاصة بكَ لدينا مؤمنة؟</strong></span></span></p>\r\n\r\n<p dir=\"RTL\">في حال قمتَ باستخدام خدمات التطبيق والانتفاع منها لا لغرض التصفح والاكتشاف فقط، فتأكد تماماً بأننا نبذل أقصى ما في وسعنا لحماية بياناتك الشخصية ومنع الوصول غير القانوني أو غير المصرح به لها وحتى حمايتها من المعالجة والتغيير والفقدان. وعلى الرغم من اتخاذ إجراءات الحماية المتنوعة والعمل على تحسينها، لا يمكن لأي نظام أو تقنية أن تبقى في مأمن تام عن الأضرار، ولذلك إذا شعرت بأي ثغرة داخل التطبيق، يمكنك التواصل معنا للعمل على حل هذه المشكلة من خلال البريد الإلكتروني التالي <a href=\"mailto:info@sala-express.com\"><span dir=\"LTR\">info@sala-express.com</span></a></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>2- هل نقوم بمشاركة بياناتك الشخصية مع أي أطراف أخرى؟</strong></span></span></p>\r\n\r\n<p dir=\"RTL\">خصوصية مستخدمي سلة اكسبرس هي من أهم الأشياء التي نحاول حمايتها بكل الطرق الممكنة، حيث أننا لا نقوم إطلاقًا ببيع أو مشاركة هذه البيانات ولا نقوم بالكشف عنها أو مشاركتها مع أي طرف ثالث لأي غرض كان، والأهداف التي نقوم بجمع هذه البيانات لها هي أهداف إحصائية لا غير كأعداد المستخدمين وأماكن انتفاعهم من الخدمة<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>3- ما هي الصلاحيات المطلوبة من المستخدم؟</strong></span></span></p>\r\n\r\n<p dir=\"RTL\">الاشعارات : حيث يقوم التطبيق بطلب الصلاحية وذلك لاستخدامها في عمليات الطلب وتقديم الخدمة للمستخدم، وذلك ليبقى المستخدم على علم بكافة تفاصيل الخدمة<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>4- حق تعديل سياسة الخصوصية</strong></span></span></p>\r\n\r\n<p dir=\"RTL\">سلة اكسبرس يملك الحق الكامل في تحديث سياسة الخصوصية الخاصة بتطبيق سلة اكسبرس سواء بإضافة أو حذف بنود جديدة أو بتعديل بنود حالية في أي وقت<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>5- كيف نقوم بإخطار مستخدمي سلة اكسبرس بأي تحديث في سياسة الخصوصية؟</strong></span></span></p>\r\n\r\n<p dir=\"RTL\">نقوم بإرسال إشعارات أو بريد إلكتروني لمستخدمي تطبيق سلة اكسبرس حول أية تحديثات في سياسة الخصوصية<span dir=\"LTR\">.</span>&nbsp;كما&nbsp;يمكنك دائماً معرفة أي تحديث وذلك بتفقد تاريخ آخر تحديث لهذه السياسة والموجود في آخر سطر في هذه الصفحة.</p>', 'Privacy Policy', '2018-08-05 12:30:11', '2019-12-30 02:16:19', NULL),
(5, 3, 'en', 'Terms Of Use', 'terms-of-use', '<p><span style=\"font-size:14px\">Your use of the &quot;Sala Express&quot; application and your provision of your personal information for registration within our application is tantamount to agreeing to the terms mentioned in the Privacy Policy, by referring to &ldquo;the company&rdquo; or &ldquo;we&rdquo;, it represents the team and administration of the &ldquo;Sala Express&rdquo;, whereas &ldquo;you&rdquo; or &ldquo;the user&rdquo; It represents anyone using the Sala Express app. If you do not agree to these terms, you do not have to use the application at all.</span></p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>1- Do we collect your personal data?</strong></span></span><br />\r\n<span style=\"font-size:14px\">When you&nbsp;install&nbsp;the application for&nbsp;use or internal browsing, we collect the personal information shown below:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">The name</span></li>\r\n	<li><span style=\"font-size:14px\">E-mail</span></li>\r\n	<li><span style=\"font-size:14px\">Mobile number</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>2- How do we use personal data?</strong></span></span><br />\r\n<span style=\"font-size:14px\">We collect your personal information for the following reasons:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Register for the app</span></li>\r\n	<li><span style=\"font-size:14px\">Personalize your app experience to get the best possible shopping experience with Sala Express</span></li>\r\n	<li><span style=\"font-size:14px\">Plan to find out when it will take your delivery</span></li>\r\n	<li><span style=\"font-size:14px\">Check out the promotions</span></li>\r\n	<li><span style=\"font-size:14px\">Communicate with you</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><strong><span style=\"color:#008000\">&nbsp;3- Do we share your personal data with any other parties?</span></strong></span><br />\r\n<span style=\"font-size:14px\">The privacy of Sala Express users is one of the most important things that we try to protect in all possible ways, as we never sell or share this data nor do we disclose or share it with any third party for any purpose, and the goals that we collect this data for statistical goals only,&nbsp;such as the numbers of users and where they can benefit from the service.</span></p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>4- Is your personal data secure?</strong></span></span><br />\r\n<span style=\"font-size:14px\">All of your information is protected using modern and accurate technologies, which methods are followed for many applications with high protection, so preserving your personal information and the privacy of your accounts from penetration or theft is our highest concern, but we completely disclaim our responsibility for any breaches that occur from your side.</span></p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>5- Can you modify your data?</strong></span></span><br />\r\n<span style=\"font-size:14px\">You can modify your personal data by logging into your account via the application or by communicating with customer service by pressing the Contact Us button from the side menu within the application or by communicating with us via email at info@sala-express.com or through social networks.</span></p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>6- Return policy</strong></span></span><br />\r\n<span style=\"font-size:14px\">In the event that there is a defect in the products or customer&rsquo;s dissatisfaction with the quality, you can call a customers service teams or by sending a complaint message via the following email: info@sala-express.com to exchange or return it.</span></p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>7- Order Cancellation Policy</strong></span></span><br />\r\n<span style=\"font-size:14px\">You can cancel any order that you made within only half an hour from the time of completing the request, by contacting customer service at the number mentioned on the Contact Us screen. Otherwise, the order are treated as if they were actually approved by you.</span></p>\r\n\r\n<p><span style=\"color:#008000\"><strong><span style=\"font-size:22px\">8- The right to amend the conditions of use</span></strong></span><br />\r\n<span style=\"font-size:14px\">Sala-Express has the full right to update the privacy policy of the Sala Express application, whether by adding or deleting new terms or by modifying existing terms at any time.</span></p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>9- What is the law subject to the conditions?</strong></span></span><br />\r\nTerms of use are governed by the law of the State of Palestine, and your approval of them means your consent to submit to the judiciary in the courts of the Palestinian National Authority.</p>\r\n\r\n<p><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>10- Do you have any questions?</strong></span></span><br />\r\n<span style=\"font-size:14px\">If you have any inquiries, questions or concerns about these conditions, we are always welcome to answer your questions and inquiries, you can contact us directly through the e-mail info@sala-express.com and we will answer you as soon as possible.</span></p>\r\n\r\n<p>&nbsp;</p>', 'Terms Of Use', '2018-08-05 12:31:01', '2019-12-30 02:08:10', NULL),
(6, 3, 'ar', 'Terms Of Use', 'terms-of-use', '<p style=\"text-align:right\">إن استخدامكَ لتطبيق سلة اكسبرس وتقديمك معلوماتك الشخصية للتسجيل داخل التطبيق لدينا هو بمثابة الموافقة منك على البنود الواردة في سياسة الخصوصية، بالإشارة إلى &ldquo;الشركة&rdquo; أو &ldquo;نحن&rdquo; فإنها تمثل فريق وادارة تطبيق &quot;سلة اكسبرس&quot;، أما &ldquo;أنت&rdquo; أو &ldquo;المستخدم&rdquo; فإنها تمثل أي شخص يقوم باستخدام تطبيق سلة اكسبرس. إن كنت لا توافق على هذه البنود، فلا يتوجب عليك استخدام التطبيق اطلاقاً.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"color:#008000\"><span style=\"font-size:22px\"><strong>1- هل نقوم بجمع بياناتك الشخصية؟</strong></span></span></h2>\r\n\r\n<p style=\"text-align:right\">في حال استخدامك للتطبيق للأنتفاع أو الاستخدام أو التصفح الداخلي فاننا نقوم بجمع البيانات الشخصية الموضحة أدناه:</p>\r\n\r\n<ul>\r\n	<li dir=\"rtl\" style=\"text-align:right\">الاسم</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">البريد الإلكتروني</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">رقم الجوال</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><strong><span style=\"color:#008000\"><span style=\"font-size:22px\">2- كيف نستخدم البيانات الشخصية؟</span></span></strong></h2>\r\n\r\n<p style=\"text-align:right\">نقوم بجمع معلوماتك الشخصية سابقة الذكر للأسباب التالية:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:right\">التسجيل في التطبيق</li>\r\n	<li style=\"text-align:right\">تخصيص تجربتك في التطبيق للحصول على أفضل تجربة ممكنة لعملية التسوق مع سلة اكسبرس</li>\r\n	<li style=\"text-align:right\">التخطيط لمعرفة الوقت الذي سيتم استغراقه في عملية التوصيل</li>\r\n	<li style=\"text-align:right\">إطلاعك على العروض الترويجية</li>\r\n	<li style=\"text-align:right\">التواصل معك</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><strong><span style=\"color:#008000\"><span style=\"font-size:22px\">3- هل نقوم بمشاركة بياناتك الشخصية مع أي أطراف أخرى؟</span></span></strong></h2>\r\n\r\n<p style=\"text-align:right\">خصوصية مستخدمي Sala Express هي من أهم الأشياء التي نحاول حمايتها بكل الطرق الممكنة، حيث أننا لا نقوم إطلاقًا ببيع أو مشاركة هذه البيانات ولا نقوم بالكشف عنها أو مشاركتها مع أي طرف ثالث لأي غرض كان، والأهداف التي نقوم بجمع هذه البيانات لها هي أهداف إحصائية لا غير كأعداد المستخدمين وأماكن انتفاعهم من الخدمة.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><strong><span style=\"color:#008000\"><span style=\"font-size:22px\">4- هل بياناتك الشخصية لدينا مؤمنة؟</span></span></strong></h2>\r\n\r\n<p style=\"text-align:right\">جميع المعلومات الخاصة بك يتم حمايتها باستخدام تقنيات حديثة و دقيقة و المتبعة اساليبها للعديد من التطبيقات ذات الحماية العالية، لذلك فإن الحفاظ على معلوماتك الشخصية و خصوصية حساباتك من الاختراق او السرقة هي أقصى اهتماماتنا، ولكن نُخلي مسؤوليتنا التامة عن أي خرق يحدث من طرف الاتصال الخاص بك.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"font-size:22px\"><strong><span style=\"color:#008000\">5- هل يمكنك تعديل بياناتك؟</span></strong></span></h2>\r\n\r\n<p style=\"text-align:right\">يمكنك تعديل بياناتك الشخصية من خلال الدخول إلى حسابك عبر التطبيق أو من خلال التواصل مع خدمة العملاء من خلال الضغط على زر اتصل بنا من القائمة الجانبية داخل التطبيق أو من خلال التواصل معنا عبر البريد الالكتروني info@sala-express.com أو عبر شبكات التواصل الاجتماعي.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><strong><span style=\"font-size:22px\"><span style=\"color:#008000\">6- سياسة الإرجاع</span></span></strong></h2>\r\n\r\n<p style=\"text-align:right\">في حال وجود خلل في المنتجات أو عدم رضا من قبل العميل على الجودة، يمكنك تقديم شكوى من خلال خدمة العملاء عبر إرسال رسالة عبر الإيميل التالي: info@sala-express.com&nbsp;لاستبدالها أو إرجاعها.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>7- سياسة إلغاء الطلب</strong></span></span></h2>\r\n\r\n<p style=\"text-align:right\">بإمكانك أن تقوم بإلغاء أي طلب قمتْ به خلال مدة نصف ساعة فقط من وقت إتمام الطلب، وذلك بالتواصل مع&nbsp;خدمة العملاء على الرقم المذكور في شاشة اتصل بنا. بخلاف ذلك يتم التعامل مع الطلبات على إنها تمت الموافقة الفعلية عليها من قبلكم.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"color:#008000\"><strong>8- حق تعديل شروط الاستخدام</strong></span></h2>\r\n\r\n<p style=\"text-align:right\">Sala-Express يمتلك&nbsp;الحق الكامل في تحديث سياسة الخصوصية الخاصة بتطبيق سلة اكسبرس سواء بإضافة أو حذف بنود جديدة أو بتعديل بنود حالية في أي وقت.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"color:#008000\"><strong><span style=\"font-size:22px\">9-&nbsp;</span>ما هو القانون الذي تخضع له الشروط؟</strong></span></h2>\r\n\r\n<p style=\"text-align:right\">تخضع شروط الاستخدام لقانون دولة فلسطين، و موافقتك عليها تعني موافقتك على الخضوع للسلطة القضائية في المحاكم التابعة للسلطة الوطنية الفلسطينية.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:right\"><span style=\"font-size:22px\"><span style=\"color:#008000\"><strong>10- هل لديك أي استفسار؟</strong></span></span></h2>\r\n\r\n<p style=\"text-align:right\">إذا كانت لديك أي استفسارات أو أسئلة أو مخاوف حول هذه الشروط، فنحن نرحب دائماً بالإجابة على أسئلتكم و استفساراتكم، يمكنكم التواصل معنا مباشرة من خلال البريد الإلكتروني info@sala-express.com&nbsp;وسنقوم بالرد عليكم في اسرع وقت.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>', 'Terms Of Use', '2018-08-05 12:31:03', '2019-12-30 02:11:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yasmin.e.wadi.5@gmail.com', '$2y$10$0C2i5ZNUNqru.03Vi1RKpuQZiJaON2nEitsWLkI68lMuYWUrnaEXy', '2020-01-26 19:51:34'),
('emadtraner@gmail.com', '$2y$10$qu2zC7C/oJftW9AUGFJBCO2LrG//J6eG8Ja2jpbuBuvNsj6GxiIa.', '2020-01-02 20:23:06'),
('user@gmail.com', '$2y$10$FcvXNbiP3DLMVZ.UGRahZOxioV4g4KGWiyPlBdpn3k9FRRGwjwpJm', '2020-03-11 15:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `roleSlug` varchar(191) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `roleSlug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users', '2019-03-19 06:03:34', NULL, NULL),
(2, 'categories', '2019-03-19 06:03:34', NULL, NULL),
(3, 'products', '2019-03-19 06:03:34', NULL, NULL),
(4, 'orders', '2019-03-19 06:03:34', NULL, NULL),
(5, 'cities', '2019-03-19 06:03:34', NULL, NULL),
(6, 'coupons', '2019-03-19 06:03:34', NULL, NULL),
(7, 'ads', '2019-03-19 06:03:34', NULL, NULL),
(8, 'notifications', '2019-03-19 06:03:34', NULL, NULL),
(9, 'contact-us', '2019-03-19 06:03:34', NULL, NULL),
(10, 'pages', '2019-03-19 06:03:34', NULL, NULL),
(11, 'faq', '2019-03-19 06:03:34', NULL, NULL),
(12, 'admins', '2019-03-19 06:03:34', NULL, NULL),
(13, 'settings', '2019-03-19 06:03:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_translations`
--

CREATE TABLE `permission_translations` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `locale` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_translations`
--

INSERT INTO `permission_translations` (`id`, `permission_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Customers', '2019-03-19 06:04:53', NULL, NULL),
(2, 1, 'ar', 'العملاء', '2019-03-19 06:04:53', NULL, NULL),
(3, 2, 'en', 'Categories', '2019-03-19 06:05:46', NULL, NULL),
(4, 2, 'ar', 'التصنيفات', '2019-03-19 06:05:46', NULL, NULL),
(5, 3, 'en', 'Products', '2019-03-19 06:06:34', NULL, NULL),
(6, 3, 'ar', 'المنتجات', '2019-03-19 06:06:34', NULL, NULL),
(7, 4, 'en', 'Orders', '2019-03-19 06:07:28', NULL, NULL),
(8, 4, 'ar', 'الطلبات', '2019-03-19 06:07:28', NULL, NULL),
(9, 5, 'en', 'Cities', '2019-03-19 06:11:48', NULL, NULL),
(10, 5, 'ar', 'المدن', '2019-03-19 06:11:48', NULL, NULL),
(11, 6, 'en', 'Coupons', '2019-03-19 06:11:48', NULL, NULL),
(12, 6, 'ar', 'كوبون الخصم', '2019-03-19 06:11:48', NULL, NULL),
(13, 7, 'en', 'Ads', '2019-03-19 06:11:48', NULL, NULL),
(14, 7, 'ar', 'الاعلانات', '2019-03-19 06:11:48', NULL, NULL),
(15, 8, 'en', 'Notifications', '2019-03-19 06:11:48', NULL, NULL),
(16, 8, 'ar', 'التنبيهات', '2019-03-19 06:11:48', NULL, NULL),
(17, 9, 'en', 'Contact us', '2019-03-19 06:11:48', NULL, NULL),
(18, 9, 'ar', 'رسائل اتصل بنا', '2019-03-19 06:11:48', NULL, NULL),
(19, 10, 'en', 'Pages', '2019-03-19 06:17:30', NULL, NULL),
(20, 10, 'ar', 'الصفحات ', '2019-03-19 06:17:30', NULL, NULL),
(21, 11, 'en', 'Faq', '2019-03-19 06:17:30', NULL, NULL),
(22, 11, 'ar', 'الاسئلة الشائعة', '2019-03-19 06:17:30', NULL, NULL),
(23, 12, 'en', 'Admins', '2019-03-19 06:17:30', NULL, NULL),
(24, 12, 'ar', 'المدراء والمشرفين', '2019-03-19 06:17:30', NULL, NULL),
(26, 14, 'ar', 'الدول', '2019-03-19 06:17:30', NULL, NULL),
(41, 13, 'en', 'Settings', NULL, NULL, NULL),
(42, 13, 'ar', 'الاعدادات', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2019-11-05 07:42:26', '2019-11-05 16:42:26', '2019-11-05 16:42:26'),
(2, 'active', '2019-10-31 16:26:40', '2019-11-01 02:26:40', NULL),
(3, 'active', '2019-10-31 16:27:10', '2019-11-01 02:26:58', NULL),
(4, 'active', '2019-11-05 07:41:03', '2019-11-05 16:40:48', NULL),
(5, 'not_active', '2019-11-28 00:14:00', '2019-11-28 00:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_translations`
--

CREATE TABLE `question_translations` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_translations`
--

INSERT INTO `question_translations` (`id`, `question_id`, `locale`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'question 1؟', 'answer 1', '2019-10-31 09:58:42', '2019-10-31 19:58:42', NULL),
(2, 1, 'ar', 'السؤال 1 ؟', 'الجواب 1', '2019-10-31 09:58:42', '2019-10-31 19:58:42', NULL),
(3, 2, 'en', 'How do I register?', 'Signing in is very easy, just click on the register icon in order to register in the application and enter your e-mail, name, password and mobile number', '2019-11-28 21:40:09', '2019-11-29 06:40:09', NULL),
(4, 2, 'ar', 'كيف أقوم بالتسجيل؟', 'تسجيل الدخول سهل جداً , فكل ما عليك هو الضغط على أيقونة تسجيل  لكي تتمكن من التسجيل بالتطبيق وإدخال بريدك الإلكتروني واسمك وكلمة السر الخاصة بك  ورقم الجوال', '2019-11-28 21:40:09', '2019-11-29 06:40:09', NULL),
(5, 3, 'en', 'I have an iPhone, can I take advantage of the app?', 'Yes, you can benefit from the application, and each customer has an iPhone or Android phone can benefit from the services provided by the application.', '2019-11-27 14:54:46', '2019-11-27 23:54:46', NULL),
(6, 3, 'ar', 'لدي هاتف أيفون , هل يمكنني الاستفادة من التطبيق؟', 'نعم تستطيع الاستفادة من التطبيق , وكل عميل لديه أيفون أو هاتف أندرويد يمكنه الاستفادة من الخدمات المقدمة من التطبيق.', '2019-11-27 14:54:46', '2019-11-27 23:54:46', NULL),
(7, 4, 'en', 'Question 4 ؟How can I get a discount code?', 'You get the discount code through the notifications sent to you.', '2019-11-27 15:17:25', '2019-11-28 00:17:25', NULL),
(8, 4, 'ar', 'كيف يمكنني الحصول علي كود الخصم', 'تحصل علي كود الخصم وذلك من خلال الاشعارات المرسله لك .', '2019-11-27 15:17:25', '2019-11-28 00:17:25', NULL),
(9, 5, 'en', 'How can I benefit from the offers?', 'Make sure your notifications are turned on as we send you offers and discounts available via notifications.', '2019-11-28 00:14:00', '2019-11-28 00:14:00', NULL),
(10, 5, 'ar', 'كيف يمكنني الاستفاده من العروض ؟', 'تاكد من تشغيل الاشعارات لديك حيث اننا نرسل لك العروض و الخصومات المتوفره عبر الاشعارات.', '2019-11-28 00:14:00', '2019-11-28 00:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order` double NOT NULL DEFAULT 0,
  `from_hour` time DEFAULT NULL,
  `to_hour` time DEFAULT NULL,
  `enforce_close` int(11) NOT NULL DEFAULT 0,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `url`, `logo`, `app_store_url`, `play_store_url`, `info_email`, `mobile`, `phone`, `facebook`, `twitter`, `linked_in`, `instagram`, `google_plus`, `min_order`, `from_hour`, `to_hour`, `enforce_close`, `latitude`, `longitude`, `image`, `created_at`, `updated_at`) VALUES
(1, 'http://salah.b1-store.com/', 'j1XyxmYCCBxiEMN58466431583393653_2994383.png', 'https://www.apple.com/ios/app-store/', 'https://play.google.com/store?hl=en', 'info@number1.com', '0597974233', '0597974233', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com/', 'https://www.linkedin.com', 20, '08:00:00', '22:00:00', 0, '24.782759385577478', '46.6370350187467', 'aec7LcMhNkGcyKF85955591583393470_8109222.png', NULL, '2020-03-05 16:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `title`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'NumberOneForCarService', 'KSA', 'NumberOneForCarService', NULL, '2020-03-05 16:33:51'),
(2, 1, 'ar', 'نمبر ون لخدمات السيارات', 'السعودية - الرياض', 'NumberOneForCarService', NULL, '2020-03-05 16:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1 Liter', 'active', '2020-05-28 11:38:51', '2020-05-28 11:38:51', NULL),
(2, '1/2 Liter', 'active', '2020-05-28 11:38:51', '2020-05-28 11:38:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accept` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `fcm_token`, `device_type`, `accept`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'djODo9sswvo:APA91bGrB0lEibYIAGdjgxAvko7XuVyxKhT1ASqfWH1jAJcgSnVNnl8580gf70Ixx57TMtjZ_fD0lQ8rcUO4-nDjUKP4NjEpH_un7Qzd9EXBXylC65dEcxsPt3Wnl70W9shRbg8Nx7yK', 'android', 0, '2019-11-27 07:23:56', '2019-11-27 07:53:52', '2019-11-27 07:53:52'),
(2, 1, 'djODo9sswvo:APA91bGrB0lEibYIAGdjgxAvko7XuVyxKhT1ASqfWH1jAJcgSnVNnl8580gf70Ixx57TMtjZ_fD0lQ8rcUO4-nDjUKP4NjEpH_un7Qzd9EXBXylC65dEcxsPt3Wnl70W9shRbg8Nx7yK', 'android', 0, '2019-11-27 07:54:01', '2019-11-27 07:54:11', '2019-11-27 07:54:11'),
(3, 1, 'djODo9sswvo:APA91bGrB0lEibYIAGdjgxAvko7XuVyxKhT1ASqfWH1jAJcgSnVNnl8580gf70Ixx57TMtjZ_fD0lQ8rcUO4-nDjUKP4NjEpH_un7Qzd9EXBXylC65dEcxsPt3Wnl70W9shRbg8Nx7yK', 'android', 0, '2019-11-27 17:07:01', '2019-11-28 23:06:30', '2019-11-28 23:06:30'),
(4, 2, 'cv8pMpbYMzs:APA91bGBOKSObUE0ytbUmZHlpeD2IuVEVpbc4lC3afSVnezlI-qMvzBx4CPGzqEdzKfwFk7iK6w_NnonH0uue21UvS8OKY6AB8XrGhiB5C872WhaIER1ac1437p1Yz10c3Em5088IdzL', 'android', 0, '2019-11-27 17:44:57', '2019-11-27 23:48:00', '2019-11-27 23:48:00'),
(5, 3, 'dfb4ziw5g9E:APA91bFsNTLS01m6Wzyh2dt5eIINiEtrNx-yFAZCtervQnhl-DzC4-hHeOZG_LJhlmeFwu5Ziw6Hf_FUS4dcW22dAPQbFEGlbzypzH25tjtX3gUyqp95x81MbBCKcAAqxSCHuvuN8kgF', 'ios', 0, '2019-11-27 18:28:50', '2019-11-27 18:28:58', '2019-11-27 18:28:58'),
(6, 3, 'dfb4ziw5g9E:APA91bFsNTLS01m6Wzyh2dt5eIINiEtrNx-yFAZCtervQnhl-DzC4-hHeOZG_LJhlmeFwu5Ziw6Hf_FUS4dcW22dAPQbFEGlbzypzH25tjtX3gUyqp95x81MbBCKcAAqxSCHuvuN8kgF', 'ios', 0, '2019-11-27 18:32:13', '2019-11-27 18:32:17', '2019-11-27 18:32:17'),
(7, 3, 'dnoQJAsG7QQ:APA91bG48hSzCVs8LmIktNDLfoliHja9x2DaayhBfd6t8PMvLWB3kQW_m5Jf2Gmtv0y04EDUJQOryUz2xBaYB5sxQsW4tnaK-5RdCeJcbASaiExUs0hzmh8Tz7gz-KsaU7WHNL7a6Mx2', 'ios', 0, '2019-11-27 21:45:22', '2019-11-28 21:43:04', '2019-11-28 21:43:04'),
(8, 4, 'eRphzl9zU_E:APA91bGOu1MVV7mmtHRqEma68hqo9LaFLxy8o0raBzHRg9Ppn71zsMgvmRH_XpLjg5rdJ2IWmlK3i1NzSNq_b4IOtay5SjhVPa_AcPBEUILBbe6rtLE4UlS2cGTVJ0ktU2ZsYLooPtll', 'android', 0, '2019-11-27 21:52:02', '2019-11-27 21:52:02', NULL),
(9, 3, 'c8lJRN6kyK0:APA91bH-V_FW7HHDVBgnI1VDZI324J3QpNHlK-BSrEv8WyBfZecFvPAbwhH0VCWxXna9hrkyZxQcy8bD4390OqxC73sc79ZtjfYXBfKFXNd_8jo3ojimEoHRJJxdnB5WCVD4gu37et6j', 'ios', 0, '2019-11-28 00:47:15', '2019-11-28 21:43:04', '2019-11-28 21:43:04'),
(10, 3, 'f2lyzTLBQZk:APA91bElZLPxZTCibPH4cP-LVqto6qqYqjvpG0bJPCm5iAppd5C6YhqC1Aw1D4GhHo54Oa4dJbugtNVFnfKAZPms2VuU_sLg7DBuBLltE6SKzkMQyYlK2yB4A37Soe3lZx3IjfTgsBnE', 'ios', 0, '2019-11-28 16:37:40', '2019-11-28 21:43:04', '2019-11-28 21:43:04'),
(11, 3, 'djWcBhmZSOo:APA91bGA6gFDtMlWp1nSMEDhIBvE9c8B1nVUhoR8T4gehB1yx9oRuMzZlo2fvGWPswfNCUKg9QEB8WIrKSngAyvrFu6qqAsvm_9PQEIcRk3PpOL5G4lGceRKwqYgLIQqJLnvZfzwBurk', 'ios', 0, '2019-11-28 16:41:54', '2019-11-28 21:43:04', '2019-11-28 21:43:04'),
(12, 3, 'dfb4ziw5g9E:APA91bFsNTLS01m6Wzyh2dt5eIINiEtrNx-yFAZCtervQnhl-DzC4-hHeOZG_LJhlmeFwu5Ziw6Hf_FUS4dcW22dAPQbFEGlbzypzH25tjtX3gUyqp95x81MbBCKcAAqxSCHuvuN8kgF', 'ios', 0, '2019-11-28 16:47:48', '2019-11-28 21:43:04', '2019-11-28 21:43:04'),
(13, 2, 'cv8pMpbYMzs:APA91bGBOKSObUE0ytbUmZHlpeD2IuVEVpbc4lC3afSVnezlI-qMvzBx4CPGzqEdzKfwFk7iK6w_NnonH0uue21UvS8OKY6AB8XrGhiB5C872WhaIER1ac1437p1Yz10c3Em5088IdzL', 'android', 0, '2019-11-28 17:44:48', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(14, 5, 'estJoTda0rY:APA91bHj_Fr_m38LKnpiiJ9bYAB7mh0xGFUbFRkx42kF4pXfNYolQwB-glvAHD4t67pYjbRcbkageI3cUJ3wX_4z6sSwYKLIjIgzD0S0BFokjRqZAmuKvvP7R_XSNVc-Ye4box40EqBh', 'android', 0, '2019-11-28 20:10:07', '2019-11-28 20:10:07', NULL),
(15, 3, 'eBfOoV8zfOk:APA91bG6PGfKoypXZFerU8y_Qe0i7I6mJ_IDTsYHZXXd1OOeAR2mpTmrXYUygLhp-0QGI0XNPZ49RNcuSJkbCjfNpSvxS0Pbuxs4qm45Vfvcqiam1nVep3i8fDfU-WdN966lp75RnUxM', 'ios', 0, '2019-11-28 21:50:46', '2019-11-28 21:52:29', '2019-11-28 21:52:29'),
(16, 3, 'eBfOoV8zfOk:APA91bG6PGfKoypXZFerU8y_Qe0i7I6mJ_IDTsYHZXXd1OOeAR2mpTmrXYUygLhp-0QGI0XNPZ49RNcuSJkbCjfNpSvxS0Pbuxs4qm45Vfvcqiam1nVep3i8fDfU-WdN966lp75RnUxM', 'ios', 0, '2019-11-28 21:53:12', '2019-11-28 22:44:25', '2019-11-28 22:44:25'),
(17, 3, 'djWcBhmZSOo:APA91bGA6gFDtMlWp1nSMEDhIBvE9c8B1nVUhoR8T4gehB1yx9oRuMzZlo2fvGWPswfNCUKg9QEB8WIrKSngAyvrFu6qqAsvm_9PQEIcRk3PpOL5G4lGceRKwqYgLIQqJLnvZfzwBurk', 'ios', 0, '2019-11-28 22:39:30', '2019-11-28 22:44:25', '2019-11-28 22:44:25'),
(18, 1, 'fsYzDlxckok:APA91bG4SOQe6_XCaxm6YSHur0NemJvueQ-LwNDbIz6PauxzOTVYb51Be-x5ZMr_olAMJsPLbWKmTT1OlpsbZ72KGt4ZRM5Z6GYMqMTQPvQWnW13HxpojYTK6RUkn6VKcJsft2GFJxj4', 'android', 0, '2019-11-28 23:06:35', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(19, 2, 'eFT7F4HzLvs:APA91bGwXXOG_xvb3WR5ZbCHZhhdyeoL4svhzst7OwH8N9fMOKTcidrAujNisdIaleYaZsw2M35Gf_DE45RFiFmU9HPD6ja9bXHC5TfebvH47w7cDCDljLzZLoFEJ1PWlUjEo8B3SnFT', 'android', 0, '2019-11-28 23:11:52', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(20, 3, 'e-dO4zzUhJM:APA91bGH6p57xB9hIh4FsBpxFT3VtmotObdJUD2E3L3P6s6SkT3THYzW2vUvuDBuq9_1jE3X7h5T4QQru7irN4M2wNoVIxD_b53LZOymAja313BdvS0CFBGJ3fVA7Su_ctrvYvel8a26', 'ios', 0, '2019-11-29 15:52:05', '2019-11-29 18:17:18', '2019-11-29 18:17:18'),
(21, 6, 'flansfTXVk4:APA91bGFMfB-5fmg86_nG0QCCWgoTVxnEEP4bMrKj8cjjDefXY9GmwezNOFEGMS6-bv8tVT8i5LCHJ1-wi6IHNeX4rWPJIg_gJDq2wNKbCiPwuMxO-JSz7qgvbgKmA17ngF5x1PV1bEt', 'android', 0, '2019-11-29 21:39:49', '2019-11-29 21:39:49', NULL),
(22, 3, 'dlYq2iO6W0w:APA91bEuQ70OsTbuYZ94Al2dNUJUy2S2DwkRaTK-IMNcijfk89kZkG4LUGY3Pn4AvonQKFiMLlHIKRQW7ZOk_2M0hEseaF83gMHdcCvDz18B0u_F13OUlGg_fh1_k_BU73O71aEWQsN_', 'ios', 0, '2019-11-30 00:50:39', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(23, 3, 'cVCDN2DcuIM:APA91bHs621N3mT0wJkWqEpx8O0GF1VSjZDvsrRW9pbb536ZnQ7PLzmfrYlwocu-EiHS8wmxaxmH83OLVQc9-jrbi9y4e5dao90wvmUeCjRNCQHPZ6EC0G2BkKU8dRM2dnQtm-DeDqyo', 'ios', 0, '2019-11-30 16:45:39', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(24, 2, 'chLVjsRIzXk:APA91bFZd466qlBqXANM_zRg_QwVINvHbI-wA-ljxRCyrQ1zmRtz9oefRvUf-1E5z303RbbZEX-Ps_7jR3hT6PPHQFjTJnBYWoiqm-FRGao1BPywF5sRgM71cwT2P5g-sKnDuoiNBjZM', 'android', 0, '2019-11-30 17:37:12', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(25, 3, 'cHU8U0tr1F4:APA91bFjS0jjG8acjkw-wsBMJzaoWPkNVlqJ_eqnRg8yPsJ3S5WZQKRmgKGzenukvousG7_c4fOhaL7dNFYdYkysO4DV-pe12pIDa7va36V8mm-u5DJdHbuDOmPlBynJjJWM80icfTz7', 'ios', 0, '2019-11-30 17:48:06', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(26, 1, 'coV6hRw9vhQ:APA91bEWA_zPn4Sv3M4_VOrTHFbCvtY9xJfQFAcHHE6IaNiss_xs5uttKlOQ_fIL09adQ6fexiPtphRPlNDwZYolVUe69A6AX07MigWQPece5mTgZnhKkU4FL_QIwPTPogx4UMKDpbFm', 'android', 0, '2019-11-30 20:13:56', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(27, 3, 'cmGg6z4_Kp0:APA91bEXAvVdOl4y5PSNl0dqQHgb5PhROgGtKtIPSXv7V7m1_9T3Iv1Veh_7VvnEtQsMFhnwxnQD3BpY57mvvw4pQ2VuGsgzWWH6AvchSLuc-JOpsPZono_HK9AknoAopYhQgvvrdsnO', 'ios', 0, '2019-12-01 03:33:42', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(28, 3, 'eGVukdiJLk8:APA91bELL5SIwH-DJDqS07INWiudopBs3qUIUa-ew4aKyTTFTOJZwDdiqD1K42msDd4rZoXXOBceHNXo5aCoNiZHcF6YexOa00NXkMDtfbZuaTUmfrmvK1BLWrUcPwsGpw_hq6ltKxY_', 'ios', 0, '2019-12-01 03:37:20', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(29, 7, 'dGRm35MWg_k:APA91bFKSPmL0vZyqwShZdBUjTo98UKDEJQw432GP1a8CQM4JYVyY0Me_ERFfdAkRUVpNOynRBSF5yYR3rKegkmMSKtMSRviyeTf0r2YcQF6zFRL2FSQSspqvdO3HoM2wd45Ikm1YxVm', 'android', 0, '2019-12-02 00:59:22', '2019-12-02 00:59:22', NULL),
(30, 3, 'ct-1jXa1xjA:APA91bFtNqwvbYCoslGF8L16rP4vZsXREhX-J__96Ib_cGodQVQMnQwMfqw9ftURYN10cywpznU0ly18Z_RiAmjM2FKNf5i7_JTDjXKVVeJNjgA8OG8JjEMDno4sm5BW7JiGYAehCXEM', 'ios', 0, '2019-12-02 15:40:14', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(31, 3, 'cA-1gHS-5fo:APA91bGb3VbGKJiUa2_XtgDGT5o4EvqgYHT3RSPmZ3filTKbcp4zRpJQiJ-NnlYEZ6ahsSO6M5wPd6xQzcDC57P4qYIH4-jGZdkihZbsVthZnn1xZRhschs1CBmlapWZ9iuT5Vh4iWM-', 'ios', 0, '2019-12-02 15:41:14', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(32, 8, 'eBfOoV8zfOk:APA91bG6PGfKoypXZFerU8y_Qe0i7I6mJ_IDTsYHZXXd1OOeAR2mpTmrXYUygLhp-0QGI0XNPZ49RNcuSJkbCjfNpSvxS0Pbuxs4qm45Vfvcqiam1nVep3i8fDfU-WdN966lp75RnUxM', 'ios', 0, '2019-12-02 16:24:58', '2019-12-10 23:24:28', '2019-12-10 23:24:28'),
(33, 3, 'd1DNqfFY0xw:APA91bGr_qLwrUwVbOMLFlIwW8Skp51MjEzyOPJL-NxAnDX4LcwDBI62teTv8ga2eeg7T6APnaw1Y_4rQamBvd9cvQfb1oECt0cHvVzZGN6tHxSLA9wYiAUZk9iEGyyfEbpucqleNUqf', 'ios', 0, '2019-12-02 17:45:27', '2019-12-02 20:00:45', '2019-12-02 20:00:45'),
(34, 1, 'fPOlgs6Pmgs:APA91bEi2YLMrKkJjEV9aRlUIxlJq8hixQ60dRUoUBN0lmUKUv9asN9tpOSAxpbQsGFQv9gBsvUkFcBXyzCl7aPRNKFfuntGeZ0u25vxNg6APQCzHzYZWk4nh5xKojWhKAanEGSu4rzo', 'android', 0, '2019-12-02 18:17:13', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(35, 1, 'cKjeAM0WFyE:APA91bH5iE5mHUPaTJOY-0GCY_WG78hH1ur5FrKCl0NmOmUxfuXRFRIPHi0MMia_kPxHfaCDerubtJK8Al04656-QEHC7kqXZT2VmPBPlu30yFl8WuDcdvkh90RefFJPDQOuNRcUGAnD', 'android', 0, '2019-12-02 18:35:05', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(36, 2, 'fFEGpK5hLXE:APA91bHhaNUN3YkZ9NJSSyDSoeo0ArASe0OQMgR8ZAWlR_vPAEh_xnGc9JLM4M5tMYNDPHsNVo4GQEuqjEgdwBfD3PQ8F7a4ZuMoli82i8Nmj8RAYkwc2HIKMcGLElwsI1EbrE2MDKDa', 'android', 0, '2019-12-02 18:46:59', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(37, 1, 'cqoEsem7bII:APA91bFmz0UiSBcR2PT3drG0Z26TGmjOELNLducIWnV5rGCpI-Z-WLIsfgpoA916CMl0I6XThj6dUIrMJKa8yd_U_npkMucQ66KlXOgj3dXFxSupBhj2gUZMDAFXl4o935GdTKe2LRGY', 'android', 0, '2019-12-02 19:14:35', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(38, 3, 'd1DNqfFY0xw:APA91bGr_qLwrUwVbOMLFlIwW8Skp51MjEzyOPJL-NxAnDX4LcwDBI62teTv8ga2eeg7T6APnaw1Y_4rQamBvd9cvQfb1oECt0cHvVzZGN6tHxSLA9wYiAUZk9iEGyyfEbpucqleNUqf', 'ios', 0, '2019-12-02 20:01:40', '2019-12-12 20:03:49', '2019-12-12 20:03:49'),
(39, 3, 'dOKAvPYBILs:APA91bEexZ6cKcz2DZPaezkiQQWNxyr13sor7FfZU8SNpAsmD9m83QJLFYHeqJadhqaag5seJNc8rph8tdXMEEOS7Pjid-ub4vOz29wfVxo-YtdwTQcFpdSou1-OQaIyEuBs5XJ1V0gK', 'ios', 0, '2019-12-03 20:48:02', '2019-12-12 20:03:49', '2019-12-12 20:03:49'),
(40, 1, 'eFeJoIWD90k:APA91bE04s8PgYHpeQeLfUgRUNgeXHTRfxReMwASdCPA66SmN1Zyfr97cN-M4AkPQzi9gUpoR5loFR-xjp5lS0O7qztPU-wcTTMCRnfKyrNGAIp_fp6AJ-v3BiPFxXLZ42GXMkcPV8_A', 'android', 0, '2019-12-04 21:03:18', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(41, 9, 'dw996bU7xXA:APA91bFKQHb5U0jRR33kjLnaJwbAU1brAmqza7UCNpOp80kOi6Vno0hha5ebaafHfrWqIEHkwnhD7E-sVcFH2WwTS6gn5wnNQZ_Ni3xFTEoTI3e15dZOIrlcSjXvMJhYlsWMVi9iIPDK', 'android', 0, '2019-12-05 00:02:22', '2019-12-05 20:51:03', '2019-12-05 20:51:03'),
(42, 9, 'ege6arUMWOI:APA91bG4UQ1eBPtt_42-aSyGMiQvz7BlS7UMy16oUYATs2iJzjPiQCP99oLoYFS_B99pdIHSWEd8nkPGLcEoDgIkVWZFzVN6YOtblx3fgEG1bHxn4tyRmJswef9FECo4lHaVKBwF0lJv', 'android', 0, '2019-12-05 00:53:24', '2019-12-05 20:51:03', '2019-12-05 20:51:03'),
(43, 9, 'eOezymDNuqQ:APA91bG-rm6UDbyeWz5IocwAQGHGAkNabEYdvoNYh8GVdmrWLeuwDYtUhFbjiOXopPGTd7Qf1KE_s_fjqqMPCjMhhl1rXfbqbbUrMT64lU0FUJrZFp9U4_cixStku2mrtWobsOhr2nKt', 'android', 0, '2019-12-05 20:48:56', '2019-12-05 20:51:03', '2019-12-05 20:51:03'),
(44, 9, 'eOezymDNuqQ:APA91bG-rm6UDbyeWz5IocwAQGHGAkNabEYdvoNYh8GVdmrWLeuwDYtUhFbjiOXopPGTd7Qf1KE_s_fjqqMPCjMhhl1rXfbqbbUrMT64lU0FUJrZFp9U4_cixStku2mrtWobsOhr2nKt', 'android', 0, '2019-12-05 20:51:19', '2019-12-10 23:33:11', '2019-12-10 23:33:11'),
(45, 10, 'fDtx7w1nOf4:APA91bEYPel9S7eW_Sq5gVjcMuOfBahvuaw0rGkxSdzv2WxLHU0B5dgCrPqE-t11q9pPzpzn4MSolG-MhvlhApxrJs7mC-lwVS2Ds6VgbWLHHSiK5oqgRFA73ywHlkjV3F-q5F20msyU', 'android', 0, '2019-12-05 22:57:23', '2019-12-05 23:09:14', '2019-12-05 23:09:14'),
(46, 3, 'ev0y_NaSVUY:APA91bGDgf6VGGSfdLbsHaKD6URYHtT-5nYoYczOOxBzRsGkfQTlh9GBkhVNA4h9SXy8Mhnx5aDBsi_J1Gnk2vgzDPadkD8TAj6MHd0E4-gG0PoaxQkSGtGGEMFaOTgq2SQXH5q4yGga', 'ios', 0, '2019-12-06 02:55:54', '2019-12-12 20:03:49', '2019-12-12 20:03:49'),
(47, 10, 'fDtx7w1nOf4:APA91bEYPel9S7eW_Sq5gVjcMuOfBahvuaw0rGkxSdzv2WxLHU0B5dgCrPqE-t11q9pPzpzn4MSolG-MhvlhApxrJs7mC-lwVS2Ds6VgbWLHHSiK5oqgRFA73ywHlkjV3F-q5F20msyU', 'android', 0, '2019-12-08 03:18:40', '2019-12-08 04:01:09', '2019-12-08 04:01:09'),
(48, 10, 'f6QSsIYgv00:APA91bEZO2NIXY4GN4cxOW3HHhjHxmefsJgzlN1LSYA3b_lXMT5SptfNJc_UJjoAiBpQcnaCh1Jcxy5jhgxbHw7lChHVeHxaBNODzeECNnex__OroheELfiY5h7zZ1IYLd3iQPneSk3e', 'android', 0, '2019-12-08 04:06:24', '2019-12-11 23:24:37', '2019-12-11 23:24:37'),
(49, 1, 'fsMJvAAEPHY:APA91bG1zvEX4tAWWZ3-hjlDkpaPwb4zM8N-4LvRjUDpdBGBEZspS4QH0X98EONwIBkAVD9k0dyylmMjvO7x6iSf9d7p8nYBLhCJk49nBFNgJiNisAf2SEMQja_5mCz016rvvEEqSB7Y', 'android', 0, '2019-12-09 05:29:24', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(50, 1, 'elPS5RM1Rtw:APA91bH5KFhC9Z75839d8vi1VNcb1mYsrr7_Szwg5qtXONfHdycQ8KD81LVCd56ut7rYnKedHvZXb9K7D5ND06Erj3a7s0vcbFy2DkUyEnhEfur5lE1BLCJJeSCBzAUSuO5HmgKOUEMi', 'android', 0, '2019-12-09 05:38:26', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(51, 11, 'dwQFqsIacsg:APA91bHVSTzffbyEUvlpqhcBEIABYVSaMf_bAPuuY8g-h_bvhjp9SdvP0xbNZ7aH88stwWVEchfpH5s7nZ8PFoQjjf8kMreixPizwfnr7q6Zm4G4A7sHfm9JnyucvXvzLV_W0A9VxGUF', 'android', 0, '2019-12-09 18:10:49', '2019-12-09 18:10:49', NULL),
(52, 1, 'eZrMQEyiQLU:APA91bEjt75ILJYjYR1lPvtvf4NG5YYdSx603X74Crxx6pR1YL2K7IvuO6o39jE4gS3KKx6dq6wtXy0iL4YLYrNz3EsjXw-aWQ0ybsUjA22nvXdgmmLFEpyaAKPbSWgt6CmtO93UnYII', 'android', 0, '2019-12-09 18:13:14', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(53, 2, 'c6DN2MnClf0:APA91bFqO81jCryiF66wabrYj3uUkax6EB-qEVgjgbNbnFZXDRirmYg3u4JwhOjc9Yr32bb_RdMZyHQ8g8QzD1lhfqrcn_Ow61x3sJw5wMLiEKp2LbZ5HR7qIvEVPfznFrhV6mSbKQ6L', 'android', 0, '2019-12-09 18:30:31', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(54, 1, 'cUk4B3WvF0k:APA91bHvoaKPkrGCxevA2BxrnHKLhJQbKfQqbvl0c52oGaQI4zcgVwpgt-fCzmYdQuoFeXUex2aGLaam09xyZYHNrLCs_a_aMWCdu4a27OW-F1q3ZLkzxWDhsR_WxxBlpzrGaxIxBTpC', 'android', 0, '2019-12-10 01:34:37', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(55, 8, 'evg4BlrMrmc:APA91bEZgzOdsnXUc-nGtdISondrh6DksWw5VOkJyAtmZj0rMLHvWpx-260OOwQX-T6UBv62ZiwIrbnDbmxCv8-2uMBGXodSSgCbHxBJnbcoC1WliYO1a6WmrDZsviPKuQGveWIaawpT', 'ios', 0, '2019-12-10 22:55:19', '2019-12-10 23:24:28', '2019-12-10 23:24:28'),
(56, 8, 'evg4BlrMrmc:APA91bEZgzOdsnXUc-nGtdISondrh6DksWw5VOkJyAtmZj0rMLHvWpx-260OOwQX-T6UBv62ZiwIrbnDbmxCv8-2uMBGXodSSgCbHxBJnbcoC1WliYO1a6WmrDZsviPKuQGveWIaawpT', 'ios', 0, '2019-12-10 23:24:53', '2019-12-10 23:25:38', '2019-12-10 23:25:38'),
(57, 8, 'evg4BlrMrmc:APA91bEZgzOdsnXUc-nGtdISondrh6DksWw5VOkJyAtmZj0rMLHvWpx-260OOwQX-T6UBv62ZiwIrbnDbmxCv8-2uMBGXodSSgCbHxBJnbcoC1WliYO1a6WmrDZsviPKuQGveWIaawpT', 'ios', 0, '2019-12-10 23:26:14', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(58, 8, 'eOezymDNuqQ:APA91bG-rm6UDbyeWz5IocwAQGHGAkNabEYdvoNYh8GVdmrWLeuwDYtUhFbjiOXopPGTd7Qf1KE_s_fjqqMPCjMhhl1rXfbqbbUrMT64lU0FUJrZFp9U4_cixStku2mrtWobsOhr2nKt', 'android', 0, '2019-12-10 23:33:41', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(59, 3, 'dMTKotcGwIU:APA91bGRn1oHpigHLrM4HACGDr8o5uZl8TK6i-XJm1RYyyPIZ6aehu9JNpwoCAy18XlPuyTfx5sUh7zTbyB3Af-PZEjRq8A0PUm3cjqVIUhNIKHcQ1Id9mdtjZVALqlGqFbao4EX7Mnl', 'ios', 0, '2019-12-11 03:13:32', '2019-12-12 20:03:49', '2019-12-12 20:03:49'),
(60, 12, 'eTg_gZc3HVM:APA91bGK4USlGn6dQzH-_fuN0YSKNopJgsTxVuQkAYVfQ1tPd-VKTnRcJUL7TdyQJ-hJj6hZtedaWHW-yYlulQHQ5YSWSgzbvic7KPZGtlwUiyPGflfs01z2OVnecINiaCqTCVuOmV1T', 'android', 0, '2019-12-11 17:53:07', '2019-12-11 20:42:43', '2019-12-11 20:42:43'),
(61, 13, 'fJxFrwez5II:APA91bGf5nl1t-4ZpfJ1w8xo119dPsdZB0gKjCaTN6jJTJLteFspj4X_0WOwK0eyiXSGZwGz8V4Ge4wrLkEZnBxuZDBh7Ot8hgmcmkhuAEC17fY3Z7et1hd2jX1FVXwajWDMbeDgZCYk', 'android', 0, '2019-12-11 18:47:40', '2019-12-11 18:47:40', NULL),
(62, 12, 'eTg_gZc3HVM:APA91bGK4USlGn6dQzH-_fuN0YSKNopJgsTxVuQkAYVfQ1tPd-VKTnRcJUL7TdyQJ-hJj6hZtedaWHW-yYlulQHQ5YSWSgzbvic7KPZGtlwUiyPGflfs01z2OVnecINiaCqTCVuOmV1T', 'android', 0, '2019-12-11 20:46:26', '2019-12-11 20:46:26', NULL),
(63, 12, 'c1zyCFGIapo:APA91bG5_9P_U5bp4rHzwcXuxYs-fpV7PFeDJPkzibB1sXXLaApRhwGKmvR0R-6d4k1B8pVHU21XfbEG9yA31P3FVXfFUmERHvFeHEZz0CeMPyYhb6X_WCABlZ_Ks_M8nnCFLkA4JWtz', 'android', 0, '2019-12-11 22:09:43', '2019-12-11 22:09:43', NULL),
(64, 12, 'eWkbIhh2quo:APA91bGKZjKEZo_EDyqG3-_fUMDGQQox_3eHEspTZU03a9XeVdeVdEE6nTucJHinXbFdWmvJKpPZh39eDaPiJ1Njx2hkcW-8u-Dm51fAjFqRQYzg_l1iQBPjcDRBmwqSIu8bbLca5_I1', 'android', 0, '2019-12-11 22:20:28', '2019-12-11 22:20:28', NULL),
(65, 12, 'fyU8EqXhtqI:APA91bFM7hglAOfPmWwet_x5Zebkild3l9YCTpZNGeY1DKf47LgXprOiYylEm9YanGOSXyE9f5MwDsBOrbhpZARrttPbwU1y6crbXFr5bMu0G_-SuzON5-WGgXFKf6tiwXIk3XEdyMhB', 'android', 0, '2019-12-11 22:53:08', '2019-12-11 22:53:08', NULL),
(66, 3, 'dc5B2OqCyNE:APA91bEZZD4aaVjWM-uAsWYSThSdZ11JZhIvB-AXB5GSnZljyPKKbT75U8QzDs4NrOK1RHUZp7w7eCOx9A0DJ2ywbP3lDq07ca3H3dG36xRhByy2x-aS3sFwTg5fAv8PecdCr0qvUAo6', 'ios', 0, '2019-12-12 17:42:13', '2019-12-12 20:03:49', '2019-12-12 20:03:49'),
(67, 14, 'dc5B2OqCyNE:APA91bEZZD4aaVjWM-uAsWYSThSdZ11JZhIvB-AXB5GSnZljyPKKbT75U8QzDs4NrOK1RHUZp7w7eCOx9A0DJ2ywbP3lDq07ca3H3dG36xRhByy2x-aS3sFwTg5fAv8PecdCr0qvUAo6', 'ios', 0, '2019-12-12 20:05:05', '2019-12-13 02:03:19', '2019-12-13 02:03:19'),
(68, 8, 'dROzN8NxPP8:APA91bE6Cl7USjfxX9wN8ubPGG3UloLeW1uZM-A2z2_2j8p60KnSYWgNAXVdH26gGj7k62C1J2aFmYvilXO0Q9hF_IuyF54HWn7AeMs11xMjK4sNqDgwkYU6vtR_RG4jPkTuNxGUg2f1', 'ios', 0, '2019-12-12 20:42:56', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(69, 3, 'dc5B2OqCyNE:APA91bEZZD4aaVjWM-uAsWYSThSdZ11JZhIvB-AXB5GSnZljyPKKbT75U8QzDs4NrOK1RHUZp7w7eCOx9A0DJ2ywbP3lDq07ca3H3dG36xRhByy2x-aS3sFwTg5fAv8PecdCr0qvUAo6', 'ios', 0, '2019-12-13 02:03:44', '2019-12-15 20:43:22', '2019-12-15 20:43:22'),
(70, 3, 'ePWw-rbAxO8:APA91bHhKMq9yOWIY_V4vOAb2esfp8nA91LW-jqw5u_BOij--Q825F0yVrnnc1SC961ozsSiw3X_FxfNHMR3Ey16IWJqvmWMvTkNG32dYGQhq0rQ-tAH-ajX74IIgQj0zTQBkmu6XLhT', 'ios', 0, '2019-12-13 02:14:39', '2019-12-15 20:43:22', '2019-12-15 20:43:22'),
(71, 1, 'eyb9Ymi8gYo:APA91bH0E8I7WWE3f6KirIEX8eImWqHM709YRw6u5RlebDcSMwdYb1gpgMa-sEIe2zue2dYUC-sMsicajtl4c30wUKOXuy6l1CAXJEPpzyZ5eFUM0kHj04D7BVZ7iu-tJ4x2n5Y87eyJ', 'ios', 0, '2019-12-13 04:53:14', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(72, 8, 'e_hJRaxT-Lg:APA91bEdER1M8ikr7zpkwYima83BBemtUfvmLkmlR3mJOnuWtPpJe7Bv71hTZk9bEosc1Z6pQeTP4gDIOjnIQSNrTxoJBElHSC0oFWeTnkqmcLIDyW27jZkVIhgDqxUC3Ev3p4oVSWGj', 'ios', 0, '2019-12-15 22:17:17', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(73, 3, 'fuVvWrXE_YI:APA91bF5gOb2aduUhBZz_mehlDW5XECrYpqsQ2nTMiV_NkyJmTn3vypPhDwOiM5eeuU5EPDUmVuyL0It6Um7nTHsiezqtYO-Abm9BRHP_Ihdg8V-ZstWFqu_uVYLSwvmyyMBQcmNfucc', 'ios', 0, '2019-12-15 22:25:19', '2019-12-19 19:39:50', '2019-12-19 19:39:50'),
(74, 3, 'fLhYHpbQgFw:APA91bGFCAtsUyqEN7D6_-qp04Xmkme0t88G3IToBM0NkjbtF4PwDWVwePx58STv8IjLaeyuZzZGsmOw2ZmATkYzpwTxPc2Fr0PBVF4PwH2qAW2vEwP6Vkyb3ROXpJaMRLaX3QxMwGN5', 'ios', 0, '2019-12-15 22:28:02', '2019-12-19 19:39:50', '2019-12-19 19:39:50'),
(75, 1, 'cSxNItaCzcM:APA91bFhaZSBsuZSVnc7Up9GpiTIRyTE_JLDxfVZXih2Uw-1hj0jYbgsvT2O_aKJJld-KerG_DvUItPl_mmgmKl_ys_s5KG-zrqWHr8Dne0GGNvdQtK82Kry921Olpetlhlc3xFeywPP', 'android', 0, '2019-12-16 03:40:12', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(76, 2, 'ffCbRGRS0mg:APA91bEbKBjGUCym1thbe0kKqESN1mvK69XdIfWGJj4un2dBKgF-ynA7pT_Ryc9wmPd35bdJF-pK8KQINUgIfbNDrb5zZftIi2593iBBKLHdWt7DzsNS2YEDcV2HmAfUBcByTwqfKwju', 'android', 0, '2019-12-16 18:30:22', '2020-01-27 01:42:01', '2020-01-27 01:42:01'),
(77, 3, 'egZghHDSRZA:APA91bGxBE1PEt4LbAoIAqAL4REgeTr25rzOGFiboAZJR0ZPwtnx8fTebDkdoHsxfoSZCCy_BDjCgvFYIpDsaDyJntWyLmhFVXM-4d2BDYhufj-VLpD3akPH2pjVE-_VlmVzWhE7atFW', 'ios', 0, '2019-12-17 03:38:47', '2019-12-19 19:39:50', '2019-12-19 19:39:50'),
(78, 15, 'eX6CkxkCrUw:APA91bFNeqIhTcCseRu-R9kQMoKCFosncuifwGcnS7jkzxE5XMkIu-eFlbt7Nhf5Zc8jjK18hl5NVshHqg4qrfn1AbLObsSxnew70_Q5MKpzR-3GUwbBGq6VkBwF_pFpt8MCaYNfxiK1', 'android', 0, '2019-12-18 02:01:00', '2019-12-18 02:01:00', NULL),
(79, 3, 'ct5ZOUvAU4o:APA91bEjf5ruFJ1iL0ZttBlF_CTZwI6wC0SHsC00U9dgxd-W8A7qK3h_ggETdwN-Pq_7RFHHaSdPeRykTHONohexWexl4zdDGCL5PV0mzmDNgQ-vj-aHd5wbuVx0BUN3MIduJMYwAJyy', 'ios', 0, '2019-12-19 19:34:45', '2019-12-19 19:39:50', '2019-12-19 19:39:50'),
(80, 1, 'e5gN24bWUfo:APA91bH9YT6rKNro8rgWJnXhwdnfpcQ6wLrWvjB7IFGP8ghGzg6ujbHJIVPjDKi78jKVZYuJ0mC_SgUMiUIcy-SiwjLazm5LlBqtgP3TQ-G35fJm6eVLyolG68jEU6dJH8OY_H_aZzNd', 'ios', 0, '2019-12-21 02:48:41', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(81, 1, 'cYJztfBxGpA:APA91bHAqcFWRWTJR02F01V4XLkaOBq5ZX3cGRhtqRBrMLRVGYjokfyV7EipOSBOj92I0htC0kEpR9ssTyNv08wwP8LI5KaUAS0uYLGG3dHKj2H1aSo5Q-AMCxoRWAwh_5ZyYePYq92t', 'ios', 0, '2019-12-21 02:52:53', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(82, 16, 'eh4S4Pvio34:APA91bHs5arR87x4Ft1R5DZ2z1aRoiU3wPt4thaPXnSYRRGQloQARa2nJ76EQ8z909uVmxArOZME2T5tls7Bv6y_4xvfa8MwvaL3pD95iB_TEkYMzcKw5-4BNEijKzeyu0y0LYKLov3e', 'ios', 0, '2019-12-21 15:31:09', '2019-12-21 15:31:09', NULL),
(83, 1, 'e0k3R1lz-_c:APA91bHDbDf7OuUrv5OLszI3vw325HxwWADm5CL-_feoGGAqeTl5eGqCoBOZXYTI1l655RPRMzkiiYR1ljCCHL50EhM6oV-ObL9IZLjyEEIONB4YMWixBuqvV_SfniqIF1OH0EkSPRAy', 'ios', 0, '2019-12-23 02:50:19', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(84, 17, 'fsklyzOiOes:APA91bFcP3IlgVcbvLso5rnpwhClVJDXKNjtGAujTD73p0BulfUcUkOW4NVO7sm5t1ALlm3-V7O8q1ZH3CmenRbwrFedE5zJaY1ORgL_QE-3sx-VSKi5l9MY0imIIg404Y7KgisEmnve', 'android', 0, '2019-12-23 20:51:33', '2019-12-23 20:51:33', NULL),
(85, 1, 'czJYloJljUM:APA91bED5krEFDzaHFKPEqW7zpVBkGs5D8f-LK0OeW4iVA0G5Kq-lVZdoPk-BWHQZ3bawyOFv28NNVAyFAKecmUSLXrC1DeXD71nFFy9nhPsfPaSNsETuX3LHsL861V2JGf6acqZ6Yy1', 'ios', 0, '2019-12-25 05:18:53', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(86, 3, 'ct5ZOUvAU4o:APA91bEjf5ruFJ1iL0ZttBlF_CTZwI6wC0SHsC00U9dgxd-W8A7qK3h_ggETdwN-Pq_7RFHHaSdPeRykTHONohexWexl4zdDGCL5PV0mzmDNgQ-vj-aHd5wbuVx0BUN3MIduJMYwAJyy', 'ios', 0, '2019-12-25 05:41:51', '2019-12-29 22:07:30', '2019-12-29 22:07:30'),
(87, 18, 'd3lN94OsWyo:APA91bEn2IiCutA9SL7crGeZATQ6pNsUz7KOD9rjDGEoV_QSwcMI9gE-0vDwL1-7v4ULv69H_a8zWDVs6k7caZmVh8RA5nzgGk8Ay_TjPVIVL0RuKu5qnV_bjHeEsjLaqHIMsad5XGn3', 'ios', 0, '2019-12-25 05:42:54', '2019-12-25 16:50:54', '2019-12-25 16:50:54'),
(88, 3, 'd3lN94OsWyo:APA91bEn2IiCutA9SL7crGeZATQ6pNsUz7KOD9rjDGEoV_QSwcMI9gE-0vDwL1-7v4ULv69H_a8zWDVs6k7caZmVh8RA5nzgGk8Ay_TjPVIVL0RuKu5qnV_bjHeEsjLaqHIMsad5XGn3', 'ios', 0, '2019-12-25 19:30:46', '2019-12-29 22:07:30', '2019-12-29 22:07:30'),
(89, 8, 'fYwDAlJgfr4:APA91bHsUq2E59ga4ZCLE1mIcJoNTFZrJbhSy2yfkJANZ1QmCketRTWhHhX4DEybWj3t54rP4X3L_fX4Ef5-VpeLoFwX7HOKS-KH_3P7zpcs1ekW-frVgCMSTSPZZndwr3oajcCy8I6P', 'ios', 0, '2019-12-26 00:49:56', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(90, 1, 'fLR160XZ17I:APA91bHRWdFy3U3x2hj07OAYGOVU8l2_8x41vXGgY103nn1cZ3JN20mbbwA6NjKkdlgkv2KuscSApQD5LwS26OfcT0VbZ7PBGOR78b9NHKsA3BPDqwdyzQZ2dn9kV2AwiIsQMXelW6XE', 'ios', 0, '2019-12-31 03:38:33', '2020-01-02 01:28:59', '2020-01-02 01:28:59'),
(91, 8, 'cxQ4KACGBco:APA91bHe_StumNsZKZYY3FoXZAScJQGIheUC7UT4AkW8lfjqGg5ZYSeSXOwHh_GkRuYlAg-qNpGmWBRBvLaz9WO5ZrB8stYUkq9R2l1bY9mdV3iw5T-JIayBzfVlOAw_NlAJe2O__iQq', 'ios', 0, '2020-01-01 02:49:19', '2020-01-01 02:49:24', '2020-01-01 02:49:24'),
(92, 1, 'ch-53lybikU:APA91bFeuQxsUWNdCbxTb369Xo_dQyCpPS1YlaeHUdnUk3fs2_HKYd5xFBkhW7NnmpHYFRPLpYY3ondXEC4HdBFAPLaYo_yqw4-lUZmyj4tNaPPwE0m4PSjRNgeP-NSpI1vcUV6zr6gn', 'ios', 0, '2020-01-02 01:33:00', '2020-01-09 00:09:10', '2020-01-09 00:09:10'),
(93, 1, 'cSxNItaCzcM:APA91bFhaZSBsuZSVnc7Up9GpiTIRyTE_JLDxfVZXih2Uw-1hj0jYbgsvT2O_aKJJld-KerG_DvUItPl_mmgmKl_ys_s5KG-zrqWHr8Dne0GGNvdQtK82Kry921Olpetlhlc3xFeywPP', 'android', 0, '2020-01-02 01:46:05', '2020-01-09 00:09:10', '2020-01-09 00:09:10'),
(94, 8, 'dS9kGsXx_tw:APA91bGKp7VpW6UVl1L6vgYmYYtZE9Phe4it9UmPvAMw7vBRiuieWW8x4GQb1GzCWkJyyr_Ni5ZIHPlSjYN87XQTuBMZW3isCZ13VzJeG1qywcBFLlBTr5bCU3IVd81D0jUZ7wU97SpY', 'ios', 0, '2020-01-02 18:52:59', '2020-01-02 18:54:39', '2020-01-02 18:54:39'),
(95, 8, 'eMnNf5_Dr20:APA91bHuwk3J4jISTNuDoeXttfCTzng4hW3rvoUXOaMMwYgEorVhlP_qbHOueV2ELqGxV1Gd1NcesnAfy5B2ONsICNIZVTs1ETdJAlHxrNzeaVoaBYhE7JAboG6ikgTACHQlQ7xZZvl6', 'ios', 0, '2020-01-02 20:31:49', '2020-01-02 20:32:04', '2020-01-02 20:32:04'),
(96, 8, 'eMnNf5_Dr20:APA91bHuwk3J4jISTNuDoeXttfCTzng4hW3rvoUXOaMMwYgEorVhlP_qbHOueV2ELqGxV1Gd1NcesnAfy5B2ONsICNIZVTs1ETdJAlHxrNzeaVoaBYhE7JAboG6ikgTACHQlQ7xZZvl6', 'ios', 0, '2020-01-02 20:32:32', '2020-01-02 20:33:32', '2020-01-02 20:33:32'),
(97, 8, 'eMnNf5_Dr20:APA91bHuwk3J4jISTNuDoeXttfCTzng4hW3rvoUXOaMMwYgEorVhlP_qbHOueV2ELqGxV1Gd1NcesnAfy5B2ONsICNIZVTs1ETdJAlHxrNzeaVoaBYhE7JAboG6ikgTACHQlQ7xZZvl6', 'ios', 0, '2020-01-02 20:34:00', '2020-01-02 20:43:27', '2020-01-02 20:43:27'),
(98, 8, 'eMnNf5_Dr20:APA91bHuwk3J4jISTNuDoeXttfCTzng4hW3rvoUXOaMMwYgEorVhlP_qbHOueV2ELqGxV1Gd1NcesnAfy5B2ONsICNIZVTs1ETdJAlHxrNzeaVoaBYhE7JAboG6ikgTACHQlQ7xZZvl6', 'ios', 0, '2020-01-02 20:44:34', '2020-01-02 20:46:01', '2020-01-02 20:46:01'),
(99, 8, 'eMnNf5_Dr20:APA91bHuwk3J4jISTNuDoeXttfCTzng4hW3rvoUXOaMMwYgEorVhlP_qbHOueV2ELqGxV1Gd1NcesnAfy5B2ONsICNIZVTs1ETdJAlHxrNzeaVoaBYhE7JAboG6ikgTACHQlQ7xZZvl6', 'ios', 0, '2020-01-02 20:46:40', '2020-01-04 21:09:12', '2020-01-04 21:09:12'),
(100, 1, 'fBlCmqxXjOI:APA91bE0_xnTCIJRpv0RJCVe7sR3TeIKpdGhO3qNWSTRGruRu4xPwlhYFvOGRsznQ9DF7iqsdTL5IDJkpfukJYgTTRlySAqmjkT1XsWUrLraGmKsSbSuYJwGzP1lFVID9y8DGOtgposa', 'ios', 0, '2020-01-03 07:10:36', '2020-01-09 00:09:10', '2020-01-09 00:09:10'),
(101, 19, 'cex416QgAu8:APA91bEnYNw4okdcFFMG5_37-P66PVveXMVt_D0oYCT9l63988vTEsGYNP-3RM1EhLC6kz7RW2RaxLJC79R5OsnJ--zlhTxx7F_M19fFh-eG1BU5cu8hX82WIPZM8kzbNBzcJYf26oKj', 'ios', 0, '2020-01-04 04:43:08', '2020-01-04 04:43:08', NULL),
(102, 20, 'fx2yhTAxguQ:APA91bE3Xtxjy0_JknlGKn5m0Bx3XKzniKTYVrL1Cq9Ilp4xjSna5iCJ1BtRLlJr_bdUCuWlQKhTmv9-M8UC8Q3iSX6DSEzSNVrkikvi1gERfOUSt3BjRc3ExjH38ii8hWe96mhm4ZMH', 'android', 0, '2020-01-06 16:12:06', '2020-01-06 16:12:06', NULL),
(103, 20, 'fKWP-r1ZDvo:APA91bHxad3cSSfV0XQf-FH5B8l5zS7WzvfVkNLaTgwcpOZohFEjTPqGHuRUkuln1VvybunB8VeKN-tskzQ8FWmXdnYcHaNvC_KL-k2hMgW951La9SCVEu2_So2Es6lqJkHOcOwW52Ng', 'ios', 0, '2020-01-07 09:46:16', '2020-01-07 09:46:16', NULL),
(104, 21, 'eTiLIS4ZTEk:APA91bGj4uT1iEZFW6Uc_PocQ4WcRJTk3n5h95qVolszxgGcGDAKMUT4PASxdG4irc1nlbcvNa3dim42zkFQn2-fveyoqdNs1Jdo9MXYvrpZatvLdHjOELZ4HRkhOstVJwRshQDDpeHG', 'ios', 0, '2020-01-08 04:38:14', '2020-01-28 18:53:54', '2020-01-28 18:53:54'),
(105, 22, 'eLWL1spsCfE:APA91bE2mKbHPp8RTdURpIS9FYSSr-Cv_6YedgmW3EyVyjAKkHLnP2vlrbQbhe6QwXdyl4GpS45D9_O3boTG14kQ3yWxxz7zQ4iRuH79IR6G2WiGoykXC13LPbNSrtjio6K5kA16McZN', 'ios', 0, '2020-01-08 18:29:11', '2020-01-25 17:43:06', '2020-01-25 17:43:06'),
(106, 1, 'cSxNItaCzcM:APA91bFhaZSBsuZSVnc7Up9GpiTIRyTE_JLDxfVZXih2Uw-1hj0jYbgsvT2O_aKJJld-KerG_DvUItPl_mmgmKl_ys_s5KG-zrqWHr8Dne0GGNvdQtK82Kry921Olpetlhlc3xFeywPP', 'android', 0, '2020-01-09 00:20:53', '2020-01-29 23:53:53', '2020-01-29 23:53:53'),
(107, 8, 'dS9kGsXx_tw:APA91bGKp7VpW6UVl1L6vgYmYYtZE9Phe4it9UmPvAMw7vBRiuieWW8x4GQb1GzCWkJyyr_Ni5ZIHPlSjYN87XQTuBMZW3isCZ13VzJeG1qywcBFLlBTr5bCU3IVd81D0jUZ7wU97SpY', 'ios', 0, '2020-01-09 21:01:25', '2020-01-28 18:25:13', '2020-01-28 18:25:13'),
(108, 1, 'c4fb0Q7Bab0:APA91bEvhOaJ4rEuzd9tcLO_8FNJDRKQa93pL7NeugRdSxprGEe1JQV4JHOoZKIuy1eXexMknKgm1u2EIE6bH9xBUyCwe8LGhUesnQvQccCbPikzmlqb80_xMtCwCUJmX7yWCIZvIFD8', 'ios', 0, '2020-01-10 07:08:53', '2020-01-29 23:53:53', '2020-01-29 23:53:53'),
(109, 23, 'fCAbl21UDd0:APA91bHY4YBFnBDNOqmW2NwB6l0RcjRiMNQjGb7N_IWeykfbgbuxit_66ozyKeAojAQN614rTBMe_JlSGhvTIP3fo44PJrgkbSdGGXZNh4sSWv5YYktuFWNsmdw-JHbOgJVR7CmZ3XH3', 'ios', 0, '2020-01-14 20:05:24', '2020-01-14 20:05:24', NULL),
(110, 24, 'cNgfVVD3AqM:APA91bE4_dLz7Fxxbmgqfl7A-OtET1nv5IT2Tx_w4Fi24AnM7FtNpkW570XkbsoX1qvWcBzH10OqaxhRgE34sbhKUekVtlMT0_pJngacJmx9YZozx3ZTS32NTL5DcP0OFBaqECfZlFmy', 'android', 0, '2020-01-18 22:56:20', '2020-01-18 22:56:20', NULL),
(111, 25, 'duCBDL5AY5c:APA91bHWeoPpB7YMnGBolAqefM2RhcIVUQT4APxOAelJ1x4OdyzBI4P2mxbxrXXXLPrbv3l6cAxyS1L80LixqK2oGa_mP5X3g9Ppd-8watA7WrC6ZEVTSVGdIZXFXiMUKPIhBFbwZACW', 'android', 0, '2020-01-20 08:31:50', '2020-01-20 08:31:50', NULL),
(112, 26, 'd3PMLbuwAJc:APA91bE4VtOB7ZMr1DBGppG_VZcC259yt7KZMt7dBi3xl3ToYN7ch_6Iw7KNzvai9yuNYA0MgPocaj-lu4W4MgWDBur_N5k1zjLXbUL0VyKB7rgurSbeJkaQIDWMhxyNR5dIl7lZT3aG', 'ios', 0, '2020-01-20 21:08:15', '2020-01-20 21:08:15', NULL),
(113, 27, 'f34YjhwsCrM:APA91bEKvmtFZE3bxcyTvoaAETEL-z8nEp22PMeGQHQwlPWFRZ3OepUf1tOkJU28RDC-FqkgU7GdGxNUvAzpwqgusYZ1iYXTtQuQYMlMn5Q8lYIFZphthUa1ZBK-xBz1uRBt3obDrB0G', 'ios', 0, '2020-01-21 02:19:08', '2020-01-21 02:19:08', NULL),
(114, 28, 'dQEBBL7vyfI:APA91bFfhDE2b42mnB4tiZD8Y2MlX_LKyE9FQ1iDvcPH43PFrKxIVwXTxDiJGSROJeGRC4fsr_hAOCw5OBq1ZHrKWcQnNgW7PfaxKtt5-Jq718s2aJjZoJ0-DoE3eWyqkQ54BXjv5vzd', 'ios', 0, '2020-01-21 04:56:53', '2020-01-21 04:56:53', NULL),
(115, 29, 'eISF0hgP9CU:APA91bHiU-9_ddy1jRb8tVebc8St2yCDJrGkKQkCuLTdcRHhQIcuTIaNv6cluKA8o-u7QoKLb4bOmgcYKajSDHcqyRvVAAA8iOAmcX17ceOi5Pxu3QDSHYlRsLK74ym-qAM3c-7O3HMy', 'ios', 0, '2020-01-21 07:55:52', '2020-01-21 07:55:52', NULL),
(116, 30, 'dqc-CAEZTaY:APA91bGYOyF3_CMzZpJ7mKJk39Rmj-PpjTZkWzESn_Rp1DX_6XDI2mk_eympM5ez1lMMmz-9pGIkE9MlcO9Mak5oB0P6NC8j-PpJLQ97AydSUlIKKXcrTFdEMxslKJEQeurP0r50pRxa', 'android', 0, '2020-01-21 13:03:53', '2020-01-21 13:03:53', NULL),
(117, 31, 'csIDuGoZLJA:APA91bE4To2Kflb8pdKWvKNSIQDynXxdZzKSa8-Ah9Ccx_cIg4SkoDauHsM6UDjPfb2SsfVkkRyq13qEm_lCWsitxf6G_w4TpCZ1f1L7oY1pimxg7T_Vv5-bSuNQLwpFkTRatqKqjkGY', 'android', 0, '2020-01-21 17:15:35', '2020-01-21 17:15:35', NULL),
(118, 33, 'chHZJ98_ZYI:APA91bFwLobbtAplnuT7yJXyUz_4xMMyG_f-ohkSAPfscl6wOAadbtVhO548xBCojpOak5Q1udDTBLiu82W3zurSZ3P6os1u_izMEMXZnsNG2eGxa5KcVkLJONx7oQ1mprq3WWJ5GP0w', 'android', 0, '2020-01-25 02:16:55', '2020-01-25 02:16:55', NULL),
(119, 34, 'f4E3ouCfcLE:APA91bEj5lgJMEQM_6ofFU5iZWwMfdggcSkJh7_m6M8IrRHQ25yQ1Bm_y1DAPRnGmDWK32j0TA1FWmGqKm94mYcpypF6dCXKJZRfZiJwf3dGtv2XAe7aI_LprtCHJjTjUySlrDp6QwdH', 'ios', 0, '2020-01-25 03:08:55', '2020-01-25 03:08:55', NULL),
(120, 35, 'dEaLK7diIEs:APA91bFzD1zYbp-0r8BlIm6zFgcpFkfqDjvNqjkG_Oo5FWVKLZ5RBR9zs85ew7Z2U3WdskGtM883q3WobJhXpv0wud-sKuZtrLCfY79suPp5MAtxYMBMuP402gqebNdqhEc6Jm5KPMXp', 'android', 0, '2020-01-25 03:13:32', '2020-01-25 03:13:32', NULL),
(121, 36, 'fNUUbwVFgt4:APA91bGHkkQLcylfov7f8vh0WvuhHQb6K226XNttm6ptSUUxwLQTprHEE0_QTcASyQz0X8MrBWMaCOZN-izVHFKouF3nAYb4_GoLYT4Y7SB4aW_ku61QFzB-GTT2vq38zLy1_fdg1m2t', 'ios', 0, '2020-01-25 17:25:57', '2020-01-25 17:25:57', NULL),
(122, 37, 'djz-IBWnHVc:APA91bEie9oqJ5z7BR7bQ6KwYmDf05g6zlkFgkqEdWp3cL6XznMXFqa0NCSaPn-6NhpX3ugcsgid86XUtzqRu4zOuG3xnzE9MKAjwnV0-z-Ayylj2k_YJI539_52T9C-sspp_7eojrNX', 'ios', 0, '2020-01-25 17:58:26', '2020-01-25 17:58:26', NULL),
(123, 38, 'cDFIf4RANXI:APA91bHd2gD0UaY1sHkattAmR-p_rVOmuiB7Dlq2VoEb_KCpYsQ0SfkqlvSHsWbEq9BwbfiuMXj6YWZ1dOSbUqN5Tt3dDwiVgs7j1KLC0BV8N9omHjGdFlm4zky1nzU7aQyz12Kifwst', 'android', 0, '2020-01-25 18:13:19', '2020-01-25 18:13:19', NULL),
(124, 39, 'f18as0r8MvI:APA91bF8F91YGgzOIVuBiBsrTDYmYS9Aknc_v9PpGel4lSdBG_PguhbPnm5dmjTEf97RzKilQ-ikrPJvIYhdYkPDyb7NTSdujejZ9Q2b9ax8xFpF69BXUwOYiX4WRf9xtSMm-kxq8TCZ', 'android', 0, '2020-01-25 18:26:39', '2020-01-25 18:26:39', NULL),
(125, 40, 'cBA-KkW7wR8:APA91bEd0qHXpGsJwv0q1hwmFYicrWDol8g3o_mq8JDbJCasrVEfVBFIHwhMZqcp0UHNV-AINqnLcjdFdMjg88ajqQWP02IJ5awGIul7MImf5xgnxAQsK1qifsJgK6FdBwfvYNG41B2v', 'android', 0, '2020-01-25 18:41:24', '2020-01-25 18:41:24', NULL),
(126, 41, 'csdq8qu-OqY:APA91bGYw4VMTuBS2R8Hxg1k0IpUwg4tFbadfleiB6rr36sM8um6mokI3SlUURcGInn7xllGXjNekq-lCcX0QWQlfYlaL4D8Xv2HsaFsBYatJd2wfW5w2mRlQ_rwCamxoU7uFrkzJvbt', 'android', 0, '2020-01-25 19:19:19', '2020-01-25 19:19:19', NULL),
(127, 42, 'cuB7yUueW1o:APA91bFGcgw1NluQETYFB7-mLRu0ipqNz7msxIUEv2sjNLj6YIqYfpnyY65Y4sVto5DycIO7fN5Ih9BaemhNAM_OMCKfqpamavIZLxVaY56v0csS3F-ZL3f3MNH3tOsHQPgHJw0JoUMp', 'ios', 0, '2020-01-25 19:41:03', '2020-01-25 19:41:03', NULL),
(128, 43, 'ddJFFAHi3Mk:APA91bGV2sKDBZLJ_usIzEvOC_7_TEQhMQo5qJrqytSQVsipdQvFEIBWqqibzeireBZhokf2P91slU157rekdFknoZ7LyqdroHf5vEnCxzS4K7lWiPvNHVHdHjJ0OYWCYavtBskcNFBl', 'android', 0, '2020-01-25 21:51:46', '2020-01-25 21:51:46', NULL),
(129, 44, 'elvqs53qcJU:APA91bG_WA_DvjYx8FSy0LncDv8W7DOMjNGsOSO5S8r6Wv4es6JTAtA0CP9geTos-wyZFpC2CCOKmZyVa5ynMx_Te5tcCjCFQfmBHDld91ZQWIqVxaEsNyU6aU_l9J4EFp-5v-TWdXV5', 'android', 0, '2020-01-25 22:09:36', '2020-01-25 22:09:36', NULL),
(130, 45, 'cgOYFg_pTKE:APA91bG-2HZ9v-BxdckotSya_e7XczJZoOhmoBZpjx4pn3lGSI0l_Ji_3oW1B7-rrdrTDrc_bkORMshcg0piwhlyA_bFSPc_swl71DjnBiJ8KswUsuwZt6kjTgC_HrzBw1Cw6656zcwE', 'android', 0, '2020-01-25 23:28:57', '2020-01-25 23:28:57', NULL),
(131, 46, 'd2Gwtp_Ezx0:APA91bGO7K_-nJNywH60jRffRbhx6bg3cYcgOfxyOJZH8vjUMlDtQ1UZJP74uhkc-oropUID7h_NUDE7TujFG4J-Byb_U4Hc-o5OAUhwiu4d8R6nQ8TmWtcDNNODhDgYZKwoRd7ioatb', 'android', 0, '2020-01-25 23:40:07', '2020-01-25 23:40:07', NULL),
(132, 47, 'dm6gB8djEww:APA91bEzzaT9gWSN_-TtJy5SaNpBSGErg-5aw2rWKAU3ywRe2jXGA5XPrEuN0gKNgQOY8VhZZfnJFErtyZPDu4ZEGVIzormoGn2p6-Pf85qZDU2ZT3yjUCoazd8_8Ot9CbggIlD-_GiX', 'ios', 0, '2020-01-26 00:18:31', '2020-01-26 00:18:31', NULL),
(133, 48, 'dwAQbhHnE0s:APA91bFmHk03e4HdCSnAiIGuFXnvfXWe9uiCWXcADEJ-5HIbDXsczLGN2sfHQ2sbGErpKk319bgiLQj9Kzhy92F3MxMzwVe827JJSPckFIthJgKOlrZLKh2kwFR6QUU93Gd8sgug5Bcz', 'ios', 0, '2020-01-26 00:20:39', '2020-01-27 05:58:28', '2020-01-27 05:58:28'),
(134, 49, 'ewKbCuMwR30:APA91bE12Wgd4GkZ6YbD3aMJDSNaD5a9WbrYpDCRIMHw28E4DoXoeUWdQuSipJ9gnssVGO4CwUWcf_itfhNiju9c9vcK8keL3mpS735rfcCque4QW-Tigm7TBMtTcXiJ99CJVKv-B0ce', 'android', 0, '2020-01-26 00:32:20', '2020-01-26 00:32:20', NULL),
(135, 50, 'fS1Pz6yIoFM:APA91bG3tqFin71BxhfDbL0cRp0twD7hoNvlP9T0qvWzMcRg8Ne7OlCx_OrODt3izOlrCnLKhYQDrvxdVPZ8al7652iJ4XZGdVEoACMmZiQ5ZuuWNnPA7jImc7G6w7W2E21bLqgb3e3b', 'android', 0, '2020-01-26 00:49:43', '2020-01-26 00:49:43', NULL),
(136, 51, 'fygQKdJoAZI:APA91bFgYYe6NfbF9Vq-jqMVnW-XtJAwOfFuk8GtoaBmGdBr-F862QPWmIoddxu5Vs2uJrZO6OZEFFxLLPPUP4FW_dZOYW4E2B3R3ZHHVdFy2F_yoeb6AEIV8eUXWSkFVSD8_rvvbbxn', 'ios', 0, '2020-01-26 00:58:39', '2020-01-26 00:58:39', NULL),
(137, 52, 'fSJLIIinwY4:APA91bF5yfN1trpdpkF7Kj5eWDqnxRJjoUd5BDzofZ9XwrqKc9p8Hwtzy495yrIu9fb5ammOKJ4Ol4nuASYwwDIVBqNc1yNd99Awl-nciB0MuKX7XQ82-6JPhcQT8HNnr3S9xSRt-4pL', 'ios', 0, '2020-01-26 01:08:03', '2020-01-26 01:08:03', NULL),
(138, 53, 'fwbyCBpeI2Q:APA91bGkt-i4CIyB7XqlRGxzkmhd_-Gdsihz3BVm4e2SqKSYjN8VeFAFOLTVOWp_0M_R6y4_G16RMPwDVTOqtFLr0MN5VBo-wOUyHkUPVUlbI9e_G6s2uGA-ew-Xyhij1ZGdxx2SS1qJ', 'android', 0, '2020-01-26 01:37:48', '2020-01-26 01:37:48', NULL),
(139, 54, 'dziMsFXF2lg:APA91bEzEbs7F-iJr4eXiMKvgR09L-cnsw6Dh5KbayyqdBUqdxpbcdnn7ITjicbBHYDoqVwthStsKlJSx4zHcn2DmfBrSizs-BtPS-cCxg1A6OzCtH_Gq7mF1uMCMdOlK3PyygfOFMCQ', 'android', 0, '2020-01-26 01:41:12', '2020-01-26 01:41:12', NULL),
(140, 55, 'dGVl1fEoA28:APA91bH64wN12h_e5wNcH35onkLLaFLvL52iKD3yIAGsZn-SV3OvP2ddms4Q_CJj2-5gLt4ZSGc5vpCGGEBxwbdwMcj2Y6z5kbgJlmZzzdEibljLNaCb11-ePYNiMUxmeXotO7lTYBSg', 'android', 0, '2020-01-26 02:23:29', '2020-01-26 02:23:29', NULL),
(141, 56, 'eCG3jJMrnPU:APA91bFeXCKa7R-4RYixyBlcbVQnrQDsGpAo95jneWDxpOMuYsuLyb-D-p8TrIjey5yh7JLpe0OCT7nuotZJH50Mjm9z8nMFwZ6dPcs-LA_2glPb8g6mpsxZnNoZh63jgXrpAV2iynF2', 'android', 0, '2020-01-26 02:35:47', '2020-01-26 02:35:47', NULL),
(142, 57, 'esVwhu7sXw8:APA91bGw9ZvJfK15WXBSdhWebS0UhVd7VAGv1QdQoL8UR1dr28ex_paqchCo76QuSOgoC0XIA7p69Ch1RDrKpEE18MpxRWcDiPpwdEjB7HNl_mcZc4y6b6sjbhDw9YFprOEeHOSbpFjm', 'android', 0, '2020-01-26 03:25:27', '2020-01-26 03:25:27', NULL),
(143, 58, 'fQFqgkosufM:APA91bEpkXBjjdtJyJw87ylreB7vxIkbLt2RDqfvo68iBMQyjU38hsd5gZAufIrvDZ87g1xLfD0UYzEQ50DC-y-58jSXFyBcL3UR4RULcQTCOEzfXH9RxKBcuVOgGSpssuPRzXVEi2bi', 'android', 0, '2020-01-26 04:27:45', '2020-01-26 04:27:45', NULL),
(144, 59, 'ct3kUl3fKv8:APA91bEy8KAHQ6iEdzNfruloNP-Z50-DV29GNkMJ3wc4u2LyaOIKNSmihuOgCmwiPM92ah-S5b43euX4Ucp9LnHW2fiYVmD7FP8si_kY0Bejza8MEGVV-0gCtHMHnfhwlY737iUaBj2g', 'ios', 0, '2020-01-26 04:37:47', '2020-01-26 04:37:47', NULL),
(145, 60, 'cns0a73ugAM:APA91bFg1uhqo-hwFI51mXY0uoqdMpBYv8dEglUnebo5lWJBAHOsJLBGE1gBwMCNmYjdnjcyiTCa5mZ-rJQD2YTMZ8E9BtvOAqIYbqcUdpvrNXgz04SWQpaBAkuDYRKBdJEq5U7nzrxC', 'ios', 0, '2020-01-26 05:40:59', '2020-01-26 05:40:59', NULL),
(146, 61, 'f9aCAmah0Vg:APA91bGEmE5VAxbEyDEGz8m9juLu6TfML11vCBbbohlJC9LQGi_DC6amb2K7Lpan14lzccbTrp71046cDa3QQl2C4HlH7u3YG_6BHxhBX6iVoRMt0CSoISmPFBaHViGD_r1x3AiDeP8n', 'ios', 0, '2020-01-26 05:51:37', '2020-01-26 05:51:37', NULL),
(147, 62, 'chAlWYRaH7Q:APA91bFtVjSSEEuldlgQCjmeHKv_2pUzILW9RP6Itg1b1G48bDKjm4Of132Bz7fCaSecR7G1FL5IjUKkXMXozLdbNQhHyV8kjSJELjW1NG_aUuvq905NxvLlwD-xYWZBVn9zJDybtxhp', 'ios', 0, '2020-01-26 06:09:15', '2020-01-26 06:09:15', NULL),
(148, 63, 'dlXZm-skWsg:APA91bEMc348iIcNhYbACm2Xp04NvQaFmsWRavEyuTDAcUf-mzrBtLrVteIPdncZa9NJsstE81as3QkpW-cx2MxTf2VzK_7IExDiZjpDXw1TCSZc1AYcyBivksndqZHr1EpOZUxBhqwV', 'android', 0, '2020-01-26 06:15:46', '2020-01-26 06:15:46', NULL),
(149, 64, 'eBb0PP8oBYM:APA91bFNYUY6OjU2MaBUELlq2FsKk15aHrOoU49YGNSHdOe8kQhku3Kk8knl_turawBYiEwyHLd9t93LkJin9Q22SwyfvMGCB89M_uMi6989Tp3CpL4cbhVQv-6FGIz5mw-mL56GcjSa', 'android', 0, '2020-01-26 06:34:13', '2020-01-26 06:34:13', NULL),
(150, 65, 'exwFGg3gPZ8:APA91bHb_ugNHViNBWYryEeRy0b4grbpc6zpZd_sr_HiENb7pRWlb0VvvYIXWwxOzjRTEFeXT7RpdLRjOQWudUmkhv6luSE8lesro0yM0A8ON3XXBTmKwBo0Ofzif7lE73wPBWy6tDPv', 'android', 0, '2020-01-26 06:58:03', '2020-01-26 06:58:03', NULL),
(151, 66, 'cWHYYPbDv8I:APA91bFcOmJ4nbyLKU8csEyPYSCAnYPX8zVWQ4SdsWzst9T0pA4Ux2ZqfK2_GiQnXFh-pcBWIBM2azLTisk9L2T1Wy8IpoQB9l43yP7ubWXbQeVJ6yvMZ17nGKUS2QN8x_Y4g0B_5T6m', 'android', 0, '2020-01-26 07:05:11', '2020-01-26 07:08:34', '2020-01-26 07:08:34'),
(152, 67, 'dwUbhX59ivM:APA91bE2o1V02SuhkEtgG3OXIaHbIPWEMZC4CspySMroECHTK51U-xmtlnRJq_c-31cSBIJpsf-3M4sdZt_YIYx1aWyAiPvV1GdGMtdkCgWovK3h6J-NGuT3Vv6tDVTF6HFhpHMaL7Ay', 'android', 0, '2020-01-26 07:23:05', '2020-01-26 07:23:05', NULL),
(153, 68, 'f9PM0KpPsJc:APA91bGGNSHE1Olh-5InJHUWTzO7i3W8FMIFZuh3ec_ZXWTNLzhMSy4_zptBeFNTEGVlZAwyYbNN3ymUQZxGb-7OPq_VFIPgdnPNLezwp2qnXT1CG_Zg-Z-eu_O982ByM0yPEOWor7-b', 'android', 0, '2020-01-26 07:43:44', '2020-01-26 07:43:44', NULL),
(154, 69, 'fGBfV9bD0-E:APA91bHr-ytLMTSSCv1QD0_ZqyhPk4NBuW9FGs013wNBYdiSsTP6iwWWTmGpOvTvoo79QFBpJ9kYu7SotudQpRx1SNFuJgDuiElRDsH7nObsT0Dwssz7mkZvCmarV5KPCtD9GXncu4So', 'ios', 0, '2020-01-26 08:34:11', '2020-01-26 08:34:11', NULL),
(155, 70, 'dFTY_E1cIUY:APA91bG48we2eIbdWyxGRDb6dmsaKJERqqpFrzvY4pzxhTE8BbFKUY9QSfZYrBMHJwuAzNy32y1MLeTHF2c-8_063cO_cgxL9T3uGtSZuYk8LiCv4amiXLocaZZUYXXMKaX-hOZRtGGD', 'ios', 0, '2020-01-26 09:11:10', '2020-01-26 09:11:10', NULL),
(156, 71, 'c5TJ8JHiR6c:APA91bF5QxMum9r2xKwv1toKRD9RjxdeXG7SQqa1yZm6fhPdyXFIeNZs917VdEXrRn0pVbiBvsE_3kQUDpysp-I2zPTKNAbF6q71FUQi5tVPOPUko3eYrntu7NK_gRGbI_x_AgYZja-V', 'android', 0, '2020-01-26 11:09:02', '2020-01-26 11:09:02', NULL),
(157, 72, 'diQLx2SDJFY:APA91bEXjeHk5-QgBvJRL-wdTRwBdWlmzCVpSoC7Yx9ko0LRlIz7jIKw9f9kaG0aaTtLbYRAxTmi7GAS0OP9mIgMVaNNBflNIeTEcnj7Yc5m2L3_3ETYTkeXkuMkOjqF_rKxtzMcUJlx', 'android', 0, '2020-01-26 13:28:23', '2020-01-26 13:28:23', NULL),
(158, 73, 'e8r6HmDadHo:APA91bEYmT6kL__3M97FmexELFxgc2ApMGxY_6A5CDx-Tx9GK3KunsjJxCTz3MHrmTVURUOOqXU1zz6o6HYYMwNhFtzgMh7XHE2CdIw_A5e97ON1zb2ZX1xvTgdCKogouTsbmGbYvJTi', 'android', 0, '2020-01-26 15:18:41', '2020-01-26 15:18:41', NULL),
(159, 74, 'c5DC2VyRVlE:APA91bE_Zp4eRil9WxwaFiyI1gjppx827-vah4BeVBLd-sSfn7HDKPffybCtXpsF1ikUa69wz1czBBADVH76ocM9zo9EXYrUtyBXuWT3q1lC6tCfL21QEOBZ0Em4Z2ctyHV7uxEPFTU3', 'android', 0, '2020-01-26 17:14:26', '2020-01-26 17:14:26', NULL),
(160, 75, 'fZVJNW8DZnM:APA91bGliZDYeu_kP5xJljq2zZjPanSluexdW4Pb138Sk4TsTqhc06-V3R1yWKFVdZ8S5bwXf16iJ3ZAr5V1IB9WP5STSigH98V7Y44cAidCzXI_hoR40FudtINeoooHNHG3npCddqwa', 'ios', 0, '2020-01-26 17:21:28', '2020-01-26 17:21:28', NULL),
(161, 76, 'eygFqzC3UH4:APA91bES4VTIyIZMq3oLl6IHTgph1qkeUEFh0rUo2PWw7DrP7tlfnhF2YXyO6kV-TE0MdofOJgixprE8lVF3gsghof-cwjb44m3vg0xASpD9CQ05Y-E5Up1VwWGg5JKurDMYNaGPUqj2', 'ios', 0, '2020-01-26 17:34:40', '2020-01-26 17:34:40', NULL),
(162, 77, 'cU4e71HnAP0:APA91bFWRpP77bIqCepcOcFIEPE7SPOEhlJC0H-JA1iZ2aIdLEeDwcR7pDV_0nWdBxFS2-uEJLLMswbnhq0_lUSixoe_P4pYddy9BwjyNZtfRKZjJ1ybDiaJ6SORVzJYtjI69f5-04fT', 'ios', 0, '2020-01-26 17:36:40', '2020-01-26 17:36:40', NULL),
(163, 78, 'ez9amUpV4zU:APA91bHho1wjsGNSeJoA5SVOgyrgFlOignB0g810ZcYW_uUUs3ZbVPAghMFfR7OgZ5kEor89pxi_y6EgcrsJ-e33vaQYz7KHeMP1G_h_1XccNTD4UfdTfUFM9CPEKDvZDaXMdfnct9BW', 'android', 0, '2020-01-26 17:58:26', '2020-01-26 17:58:26', NULL),
(164, 79, 'eY_xKLEe3VU:APA91bHXvjuYNZ62ZwoKYrGKgz9gK7mQpGtzda_RUTkEZ5pJB1YIvnN83Cs_ZOfC_pvSl7sirZi9jM8wY8xy1tFnFLeYXNs1p7hdIWJgelrm57N6gle2Wh_BkCai3_vOBcjm0zt2KQ5p', 'android', 0, '2020-01-26 18:28:08', '2020-01-26 18:28:08', NULL),
(165, 66, 'cWHYYPbDv8I:APA91bFcOmJ4nbyLKU8csEyPYSCAnYPX8zVWQ4SdsWzst9T0pA4Ux2ZqfK2_GiQnXFh-pcBWIBM2azLTisk9L2T1Wy8IpoQB9l43yP7ubWXbQeVJ6yvMZ17nGKUS2QN8x_Y4g0B_5T6m', 'android', 0, '2020-01-26 18:42:44', '2020-01-26 18:42:44', NULL),
(166, 80, 'czLubCAEKUY:APA91bElBbJX3n4x2TGXLVk7UHtxx2zW2mQ9-6EfYL8I5gs6YVepVFsbY_eOQYfkGfX_JM3aq_mILuBDUjxuHx-37LzFbVc8gUQtHsV92X0zrHWcrcuG0TdB2eEObAiJoD8HDOV8LUUL', 'android', 0, '2020-01-26 19:00:49', '2020-01-26 19:00:49', NULL),
(167, 81, 'fWbpvaCTK2w:APA91bF_kIUvS22EhgYFZ78Vb5vD1EUTbw5VQjGTcZJUocRSdLj01oGWzCkGhzc4HSf3tGmLPoraEQ1xtlIOWgoB0Nk-0oHAY-Ukzzm_p_czsc6IAyjQotcTyi4KcHRn_r48eIHxwe_J', 'android', 0, '2020-01-26 19:01:25', '2020-01-26 19:01:25', NULL),
(168, 82, 'f8js2fk4gvs:APA91bFjXv-AnUkBYEavgHd8mcH7y0WYd0FYaBFgtSIVj5cMfa0Q4gkAlrCFV-ImMjiHsxoNrEfr0u7c0wUJxm2_Szrtm-rq9LlGrQqVdjIV2gK5nTb2SFupAIVkIt-HTQaktzLuJcrN', 'android', 0, '2020-01-26 19:14:45', '2020-01-26 19:14:45', NULL),
(169, 83, 'dntkrvKitWQ:APA91bHWYf9YC8dlIEZCh5fU5PxyK5duWFwG-8KaeiGOWhW3eyat6XmsZhsDLhKtPlPjbSyf4ek3fwRKHgrZKsCIe0yd3a_Bt8HnRfLtPOWS6xb9RjfkEs_HbAw__Iu7fT2s-1Jup2Ya', 'android', 0, '2020-01-26 19:31:22', '2020-01-26 19:31:22', NULL),
(170, 84, 'fHy21gzva2Q:APA91bHxy38gS2Ug8K4WwSdLYZdX9IKEALazt9xvP_xEn7eAmGwmXgdNtGQLks10zKaN5iReDwEq8XMh5k3E2Jlk2gI4mJcnLwtqQIo7efx7_df4Ky0mZrfJBbFJWO8UrfbkbmfS1CA8', 'android', 0, '2020-01-26 19:42:18', '2020-01-26 19:42:18', NULL),
(171, 85, 'fKQD__40iy8:APA91bF0VpR3NUCRWiL4gAqRRuOruI-4wo1TNT2D_86PH71LaM3EQckR7iHirN6VNTNgQ-WYpv1t7EUSNVRl_JmQl_IeYOkAB7Ubq8iknw91k0k_L2xZ0jG4sAiZLEb6RvzHHMRF4gjl', 'android', 0, '2020-01-26 19:45:59', '2020-01-26 19:45:59', NULL),
(172, 86, 'dnfbUD-e4RM:APA91bEbewoG0XM6o_6DlNpSVz4Zgbof0G-610_ciw3Ww_JknKIcRVeoz722QA9ZMDSfgJoqh-bJr-jVwTmf_3tXrf5hoNO_PKB0cM7h9iGhRfmR_sXxmavqr50CO65-U9ukSG88vmdM', 'android', 0, '2020-01-26 19:47:44', '2020-01-26 19:47:44', NULL),
(173, 87, 'eBsqAZ-jook:APA91bEBu99qE6jWupd_k7c0L_5PP2kq53lS4Bb0-nBabGYn7YROz5i5MCjJCrZOJYq-5G0gbj5nVJd1HzXW4kV7X2ZhXbSzE3ahblUHiiD_vry8esPkWtjIhbxhcuuU_4Zza130vjBE', 'android', 0, '2020-01-26 20:06:12', '2020-01-26 20:06:12', NULL),
(174, 88, 'ebE4cH64ROc:APA91bGuSL0WMHSzEagwi9MUzxt0qO3i4ahKvNG0IOIXM9VnkmxIBm2jDlmKTV4AK2YHAAwRghh4ZP-er7r0jLAapIBpTBSg4dJz9R5CQ9LqRadwovVrXjxSoHobuz43jBq7thPvjEZ7', 'ios', 0, '2020-01-26 20:35:02', '2020-01-26 20:35:02', NULL),
(175, 89, 'ePKU5K_IK9g:APA91bFAfxC1UU24Zswy2PQXDXN1paUXn5h0WFaShgDn2-RhPxUCMUSDZSo-xFxATIpgL560vfhm1eV853utfLSRN4vehBclv2UQN2RCwjT-TMbjnoAxAiZ-BUdz-otCXaJOWS0SGG0N', 'android', 0, '2020-01-26 20:36:04', '2020-01-26 20:36:04', NULL),
(176, 90, 'eiAfnAQYpXY:APA91bF_qxPLS_f3irbv-ojn2Wik-PzNFzCQHdMkSuw0gLyTUYPssGgY77TCfv1GvHUtkVccwC_lIyA8-dK5X2G-GXT2cWES7Bd2osDbVilQeViyUKOGlk3BluALrvmrkcHrSbPHuCKh', 'android', 0, '2020-01-26 20:50:11', '2020-01-26 20:50:11', NULL),
(177, 91, 'd2TGsEN7drU:APA91bF1gcX7tcl5bN2tJ8OHGFUU8E3aadntrbxrn9-h_bSmbCx_xy9JZdqMwckoZgNo0XGscKiixGm8lWSX1e8FtuAd9KMMcCXKU8b9RG4phr6f5XVpConWYdtUK3v368IxjMOof4zl', 'android', 0, '2020-01-26 22:52:38', '2020-01-26 22:52:38', NULL),
(178, 92, 'dSb0YsVEK7k:APA91bH5t5VAE2Q3u1w7pjfL65RbjHPiJfs-IznaedgQLjgXzQxsgqzFov_dqtuLXFFM-4nEyZstsAmXn_rLFU4tPqQTPwuMYSNJm6vg7m1r-9gs9WepIeTdt2Zq_E8BLmX3ksFCX0OZ', 'android', 0, '2020-01-26 22:58:11', '2020-01-26 23:06:05', '2020-01-26 23:06:05'),
(179, 93, 'fZrks7okdZw:APA91bFLwka7hbPRXiI1QQmMH3lt2kJ0LnJtwH1WKpMD7v9wFjC2q9SX5uPbbWyeG8vidrnx6jfvLj5OQvwhvnQ10ewT_qopfWOEWcesklWh6d5vxSC4MDKWIyp2De2-5O9upLuk7C5M', 'android', 0, '2020-01-26 23:14:02', '2020-01-26 23:14:02', NULL),
(180, 94, 'c8D5HGQL3Ns:APA91bGfh6ktclMPkZ03s8Dlg9Am80xFs99gbL07v2BmTIGdTOP8wgiBlD8oJsBGyPvTb4hLR5ffgIdfDE6ckHGiJILj9aqKSmnObpdruksAj5BYxKoECeVVXlgQ1vSLruXmyw-cL-Fg', 'android', 0, '2020-01-26 23:49:36', '2020-01-26 23:49:36', NULL),
(181, 95, 'dr4mIch2mMc:APA91bFTkE4k_q9apvzxIqJxyZHR0FbQTq0akAPogo8I1nsWdXgBXkrajj6IHOWIT5HHVYmfl2eKgvOSZfCth8JxG63F02fQB_ypBvvZV3ylcfKQbvcKT_FiEVWPFVCIrm2UGffeYEHL', 'android', 0, '2020-01-26 23:52:54', '2020-01-26 23:52:54', NULL),
(182, 96, 'cmCicRb9Z0s:APA91bG7CdnLRlEocov9Nt0jZTQ_JhMgkjMg_g00vGtuXiY_GrfYF-Zy5Hz6JYxlvSvTtZBpaZR6qrO64ZWqonVEg3ZEdcSbhH6cQ8E4vuY3p9WrtNnSiLun4GLoF0S_2Zkpobwcj35B', 'android', 0, '2020-01-27 00:39:25', '2020-01-27 00:39:25', NULL),
(183, 97, 'eIUrDNDX8g4:APA91bFpLuIXXMvz_Mg0zDSz7RSerTv3IvgEhfbFxTFoYNYJoKY1d1wlCH1J981ufdwqfM8Xku6bC79GGb7fEtoy1kNpfQrDOkMpeJsHhApHZarPOEKCtaLJyIyPhR6h3qg8bqToXoRg', 'android', 0, '2020-01-27 00:44:44', '2020-01-27 00:44:44', NULL),
(184, 98, 'eDAgcM06V58:APA91bHfDlDwkXDlqa1WpLWBeN2oYCvhxMmMgA7r_myBySK_STvFcgaguvKz5ujBqK1KeHPtkBCR9NmarvmU4hpmh1_C18pnYcA6Ajoi-VyBCqkB7vbeEVrDoD57Op7ZT2S1neoi0Dv8', 'android', 0, '2020-01-27 00:45:37', '2020-01-27 00:45:37', NULL),
(185, 99, 'eaW050III6M:APA91bEMl8CcDRGerKVems9qq3xfAeiLNIb5W1WnBbSq9CRLh2k_dqqZw2bFjmPNIXNfFIG5sfnT1ZOz3sDslv4yLSjQemzcOSKkkCTeDHe4udOAxqbH1MGTkN4xU4z267Cn7zIJ2j1T', 'ios', 0, '2020-01-27 00:47:04', '2020-01-27 00:47:04', NULL),
(186, 100, 'cbz3oD0m58s:APA91bEfkdN3bMTQO3Kfp4PG8i1n0G1oRjTj481aB8lv_Caj1kL7SvYxf7zSiogLN_IALPj8Kl9eQggUVnN6cVQffEXWtFZ5IOMcUV89u4iXuE7Iz_KxwhN1A-KECiL8J18-vslnvvoR', 'android', 0, '2020-01-27 00:47:59', '2020-01-27 00:47:59', NULL),
(187, 101, 'ffCbRGRS0mg:APA91bEbKBjGUCym1thbe0kKqESN1mvK69XdIfWGJj4un2dBKgF-ynA7pT_Ryc9wmPd35bdJF-pK8KQINUgIfbNDrb5zZftIi2593iBBKLHdWt7DzsNS2YEDcV2HmAfUBcByTwqfKwju', 'android', 0, '2020-01-27 01:43:19', '2020-01-27 01:43:46', '2020-01-27 01:43:46'),
(188, 2, 'ffCbRGRS0mg:APA91bEbKBjGUCym1thbe0kKqESN1mvK69XdIfWGJj4un2dBKgF-ynA7pT_Ryc9wmPd35bdJF-pK8KQINUgIfbNDrb5zZftIi2593iBBKLHdWt7DzsNS2YEDcV2HmAfUBcByTwqfKwju', 'android', 0, '2020-01-27 01:43:53', '2020-01-27 01:43:53', NULL),
(189, 102, 'ftEil4nQ49Y:APA91bHpPGWo3XFei32pZEvkLJ1PkgggLyoQ9xuApwttsyw8lzKTlOOy5AY0TRpv14ZjNvsGGHWakyNIbwXY6z3upsuV-0ZDZAmfHin2PDuHm1XLEbOzV7KbzX05Y3jk0S_IBl319udU', 'android', 0, '2020-01-27 02:27:59', '2020-01-27 02:27:59', NULL),
(190, 103, 'e_BDr3xx3_M:APA91bFZgCr2y6e41Nf3Df_WU6QZgy2tCoODqpCdZG4XEJO_-jOR6cPyP-NiASchBtlrUFuvF3ABRZWnTc-FPWy5DWw2WhZu8659j1aOG6oowN1bIBbYMVrAR5_am5w61a2TQdOKNHJi', 'ios', 0, '2020-01-27 02:46:19', '2020-01-27 02:46:19', NULL),
(191, 104, 'dzEJxRYVozw:APA91bF0Wr0y3AfxVAYWdtL7zwX9XblMkGeJVQSh_PtlHrbc7Gu86P2BLLeNhu7w-JzQhZre-OtabFXLapg-LAHSkm9HfC71qMG35VVx0pyApFun7Ox0pBFfModrb9-KxsQlyyB06B3x', 'android', 0, '2020-01-27 02:46:54', '2020-01-27 02:46:54', NULL),
(192, 105, 'eu5jgqHRAp4:APA91bExH1HwH7E6EFuIY4yggrE0Q4TKW74_OXlRxcSBs-GJ_E-qmXy7s5nhTg88XaMeoKstScMMxTALyE2Z_c32kEflSu4EJE9UzmltdendGQUE2Sv9UdjU_2Dlt0BVBRFMKIHB0u8w', 'android', 0, '2020-01-27 04:51:34', '2020-01-27 04:51:34', NULL),
(193, 106, 'esdwogRtabQ:APA91bH7kadjUvjHC1JkzkA3cfS5wLD3JWoc_mIXuPA6UyMOkBLtSe9oq8yfUnWme8S8ZAhq10Rl2AJDQVSvLZpF8a9shiW2D8Eymk3B2KWAlWsSVymPpfmEKiKiCYaEB0aK-Aj6akpJ', 'android', 0, '2020-01-27 05:50:25', '2020-01-27 05:50:25', NULL),
(194, 107, 'cJ_hY1WwBck:APA91bFC6Xtf6P1OrsOj5jApSyzw6CKtsfVsYPqxBfRn0OOw5PQHXS5GdiSj3OI1nRx6CgmadwfIKJ5OkApyPBn7bjJ5HG0YCCh9h4rAerlBNMzWfgNFTG3CxLXuhKGmlVLv_yWKD9cU', 'android', 0, '2020-01-27 05:58:02', '2020-01-27 05:58:02', NULL),
(195, 108, 'dSWmDDqua9A:APA91bFSFO1zS2HqzEnj7nPFRu2VEtjrloOD2MqE13BtAaLd-krXSH43ZdYoJG8HE5dGoJQ0L_ctCB0cKEq2YU4GN2l7GEBahq_t7QCTZ3g93XAz9h5HvB6aK4rSw1yKQOtLYMafikcC', 'android', 0, '2020-01-27 06:08:24', '2020-01-27 06:08:24', NULL),
(196, 109, 'deUv80bPBnA:APA91bEwosaw-iuT8Yh8-OngZtQhx4ntxaOOsOYFfQlzdsx6cwSRsIlarVvX0XbcXLIBz9uTz-TrLSnAnJwz8hitRpv8dRQjHhN28ajaU1jLswwUz028i9C80b8NJGYLIZbfa14LsB0W', 'android', 0, '2020-01-27 06:20:53', '2020-01-27 06:20:53', NULL),
(197, 110, 'deAEpf24QDY:APA91bGXJnpsf9SaDKpCYKAm8LuAlv6I8xRL6YKZrj9vR4df9sGNworUTsTS2cGmHNhysJG1TYwg0GiEfbhLMWvxDOpBLIDN6KUEljYtz3Itk7Xzx_MbvOYmqT_Ah4B7ePnIrFC2ELfB', 'ios', 0, '2020-01-27 06:41:15', '2020-01-27 06:41:15', NULL),
(198, 111, 'd9Y_pY09nUk:APA91bFNXIjfXIIVkIbAH2Ae4yXbPNSpkBd_KjHtvMYtAgRzXJnX9gg6BTwvKv31Ob6DMMef3jzlBKb_1mlJ54w01cVXiSrcPny1_8ay3ZqUk-1bKkMsrsCsXMx7nOnrVBXoQdCiBO5c', 'android', 0, '2020-01-27 07:34:16', '2020-01-27 07:34:16', NULL),
(199, 112, 'enwdu_hLl7g:APA91bEy9z3JM1yUOhOn_rjp6fUvXIWBYUXR5Qf55cfrKNw02sMlaGRyXqGNNScMAQ3w3TC8w0fdNs_cAFkYdEz3D6zf1gjEbyKdWdA7wz0aHdFzVn-WQEvb0cQX_Ia0o-sbn6OxVbIq', 'ios', 0, '2020-01-27 07:54:58', '2020-01-27 07:54:58', NULL),
(200, 113, 'f3bBnLUtPNE:APA91bHJ5yWbGYxYwWyuZTED9dAFsXYIKl-oRQAp6rRBz0Cw8Hrp4dey2GtJMI6fhcUmrgCxGsliU7rE4hfkoqKV6LrIGi1Ut65DG7MpGuiRUfv6Ohk7P8RtstayWEti3SKJGB_1KU-D', 'android', 0, '2020-01-27 08:15:26', '2020-01-27 08:15:26', NULL),
(201, 114, 'dLbrtdRktBs:APA91bF6jOdl9NXGMSQMHx3vN7nkLx_wmA6aQHGRLHMA6zn5r407PBF7Jf8GX23gJeSzqzaJHUAeO_B1FdtkPjGpMbddcF9VrYh_2Pk4gOeLlPjgp0r_JbwsC4m_rx0Os_bxrZlCbjzL', 'ios', 0, '2020-01-27 10:57:03', '2020-01-27 10:57:03', NULL),
(202, 115, 'dH8Fn8ogOxc:APA91bF2NnMK87vNX69AM2L-McSq2fyfVcMIZf_C4PjE_MJ_eR1F8HVVt-qdtO-D-aGC-23b4_8rfNgOZ6ikHAcJlvb7rHwOrQ3assZx3yqPt06a1XiXo0ukNkmHKhR9FdB-W1hqwd3v', 'android', 0, '2020-01-27 15:20:00', '2020-01-27 15:20:00', NULL),
(203, 116, 'etYSS8OpJzs:APA91bGoMY94355U9b3pvyz7mOhYKp_jkF8ZKe52N7xcAElhEy-tTEWGU2H9Hk-CvNHI2XO_YxUwMdQxMYotfjAiRAgKnQgCaV-RBUKsKz6gPYutrUdTXPiUjp3UwZDw4aztnDHKItiF', 'android', 0, '2020-01-27 15:33:31', '2020-01-27 15:33:31', NULL),
(204, 117, 'cP3kBNLKuEY:APA91bFMfPM4XrxKonZg8Ej5Bs4zVkux9E8U27Ubvo9U9cGZ7kmx7kBKZabYsyLjzcfpMOm6ESN36o0BaBdGv3nNlB3UXKyJVjEVhsQiP7VzGc2XfQBzK2rKNVA2jlAYqPkAtE38XQp6', 'android', 0, '2020-01-27 15:40:23', '2020-01-27 15:40:23', NULL),
(205, 118, 'elnWLy3Yv9s:APA91bHq2zpLNtoi_keFsa8qRL66QR5Z1kIFWEv-p6c-85sda3grhx9Bv-cXQ018KxY363ITxW4zMn7CUBfW725k8q5liJMQFw8Y4AEJ35cYn3NIOCsQ4bHoRdwBpPxeqcgmpnSZi8ed', 'ios', 0, '2020-01-27 15:45:27', '2020-01-27 15:45:27', NULL),
(206, 119, 'd3Hd-Lgr9Eo:APA91bFFTEws5WzvERCny3dMxvaJfqKHNGLX6mHFmx8K0LiNJXpLB5W6czOQ-0_d5S3hkgOUw6-n36CiNtABrgoZRoWbp1II-ctpEpuS7zyUgWKrkrdHWAmi47gOQ0jrQGNUO3hlIIXM', 'android', 0, '2020-01-27 15:50:36', '2020-01-27 15:50:36', NULL),
(207, 120, 'cEgacl-BrgI:APA91bGtr34_PNxQOfEiNSvUjIi9TaEerhsu-bfIpfBIBzjzHUfadBadOdbBi4kGKK53MicHjBo3mMCsUpawGPldPDFaKRG0TAOUCARf8NUBL0hKcsdUQ6kXmt0F48MgDp8ggUiQRe5s', 'android', 0, '2020-01-27 15:50:59', '2020-01-27 15:50:59', NULL),
(208, 121, 'cS6M-d45y0s:APA91bGVwdgRLGTY-sge0cwShwlkAoYuL0Ce7-UZwcGHbPgT01x6bedU4HpLM3RiJh7PLVO5wjF3B_9TukdP4RirpaD86luKaiD1vUJxe0Hi0fMTkzGvSrqXPwKAmo86-AIjsqrhcdFV', 'android', 0, '2020-01-27 15:54:12', '2020-01-27 15:54:12', NULL),
(209, 122, 'c46VXwhSgPc:APA91bGqIhDbUXDSG490lFA0RGeEzQcyqpLhVmkF6M_F-5ndAa7Gykf84wBzloMDKQrE1Tmdf0PpVoKochDQXhbOYwQZKpJ3S2qTDyxHydEUeT7zNPLrvzqqRVNO6R5YPg_cgEnkBoP0', 'android', 0, '2020-01-27 15:59:16', '2020-01-27 15:59:16', NULL),
(210, 123, 'd2QkHneVTfM:APA91bH3HscME1KTbsVx9m0NulSsY5x6-UY2e80bFuuPVCaamVCZeCXTg20p0NnpIHm5DShNRMm2QfxZKdjZThlXJNU83DvxyggFXReLy-llUw9u1LGYWcTwrC0N8uXLyt9G89NGlGBR', 'android', 0, '2020-01-27 16:00:39', '2020-01-27 16:00:39', NULL),
(211, 124, 'eohuuv_ubmw:APA91bHN2d1H8wIX-8YQKRhvm-f3ez5NHH8Wc0lPNXyBQkSxf3dt1T7QLp6Bvx1McXlwPBzbuddC-HJhiFrezs84rw3I67nlYFmfzxn2oeS2Q22KxiJaWLTlcR_2DalexQ3yt2uVGuyD', 'android', 0, '2020-01-27 16:06:52', '2020-01-27 16:06:52', NULL);
INSERT INTO `tokens` (`id`, `user_id`, `fcm_token`, `device_type`, `accept`, `created_at`, `updated_at`, `deleted_at`) VALUES
(212, 125, 'fVSQFHEr_Yk:APA91bEpCyKSfkAmGsDOlCsYBdGCtlL4myxhvyNs1IvAI1lghEj-6FU5WKfY-7YfOHXYTToK19bBXd2QkQU4fYohyxThkceSAdm25XGjHdvCypqbqlAb9WD6K1d641TqUIfLZSqzsoqu', 'ios', 0, '2020-01-27 16:28:23', '2020-01-27 16:28:23', NULL),
(213, 126, 'fVjtjMOf5-s:APA91bFxIvB07UHs4avsti-56y_A9LMJgONEc-1aPIVGDlr9GmvMaYpJWqt5e5s6GoiKVkxfzpESCx6d29v_dDyxSny0KZtosnYt1D8QVvhVxDDNgp6-iwF1LpvzJVTDCKJGQt6NAv6J', 'android', 0, '2020-01-27 16:36:35', '2020-01-27 16:36:35', NULL),
(214, 127, 'czcYrUU2OZA:APA91bFgkiEc6LPlNxkne-58_oErAOJ8JB6GXQ4vttSUcWTeZ-ExV7P51aDy2xy-J9Akz_cOyTkb0p5N3r59FkCoKaYqMHMlIzDd6PL6kYQez5tZP4qIs1DqrqZcLHSdaDt38DagjaYj', 'android', 0, '2020-01-27 16:38:04', '2020-01-27 16:38:04', NULL),
(215, 128, 'dRGIxZWd-4I:APA91bEBqXTu4Vw8Eg1D77pM-HdBmDhAf2gjag9GsIg4kOPKmlkdHVdQpNxDhFAp7SKZv51iGb6FJ7mI_2XKc75VvftpXr1hAWQN6vXBCVsVlVdm7tEROUvZ_RCs9RgYCfnWcLEMHr7a', 'android', 0, '2020-01-27 16:42:42', '2020-01-27 16:42:42', NULL),
(216, 129, 'dTB72R_ZTpY:APA91bGhOVs9QBO8VnEIAOMC9B9s3cCppEo_syj9bKmdHn17l3ukc_faf2xazJyqpc7Ht3C7KGVIazlFpHkM8yLHx2tkuPZ_CNxGn4kehGLP0rAI5bU3Dr_W60XkVwWXsmgJrFi3d_SR', 'android', 0, '2020-01-27 16:44:33', '2020-01-27 16:44:33', NULL),
(217, 130, 'dQUdh0v7pXk:APA91bFRWG0qGJ9tGIAD_hoJhL7wWMwXYNs690j35I_UaUt_ktkKcNK8Jv1T8JRNhquzTGN3u9Zhjewc42JKGks18tQaoXV2Fa_ODf-76Ey5ndgZZNIq3A0z5qT9ehHydjDz1JshTH0M', 'android', 0, '2020-01-27 16:46:25', '2020-01-27 16:46:25', NULL),
(218, 131, 'cd-gA9xnPw8:APA91bFwpV3Jhh9ahS242fs7hO1J-a8ecSWQmdlubPlXVVEJsQYeR8Yni_znYrjNwUKlU1H_I1GmVlZkHKn-rInQRftV0P7Ozk3aNqr2Fs13nC0Zs5sm4YDwrNTu2MHNU24Kqt8Po2g8', 'android', 0, '2020-01-27 16:54:17', '2020-01-27 16:54:17', NULL),
(219, 132, 'eXm9CVcnluA:APA91bFtabpaN2MiwuL8StespfeYtUzpEOmd1iCHQngLEj-H-CZdWdFPqnk3KxdyzrAmLOxrCvtCfEo1ZDFn3VimHHhPPs3NlVlS1ncg_uHOFQI2oITM_Tyd4AdyKlz1EgB6ERUyYTOq', 'android', 0, '2020-01-27 17:04:27', '2020-01-27 17:04:27', NULL),
(220, 133, 'f_D6nsM0A7M:APA91bG75_w1Y0WkR_Naa0ZM64PWXUmZu_Gy54Gw9NQqxgN4otfWc7mzf3DnM-H3pR8mZFBl3Y6-nJzplzdos4SEvD41aE-oP6mlbAZiIxKDYt9HfG9x8PR5JHIpuIoaKFvdRxV_Qbdt', 'android', 0, '2020-01-27 17:05:35', '2020-01-28 01:10:03', '2020-01-28 01:10:03'),
(221, 134, 'cPStaUJJSbI:APA91bH9GKpop3HE0LVoQyuYFG_-Kiv2ICt2Gr5O9df3lmR9sDUDaUk90box1sCui7_9t6k1InQHJyzTd9LHbZymhEamMV0ErLi0npRpwt8O0H-iCiN80VRY92P4kSVeQyHCRKoZqiz0', 'android', 0, '2020-01-27 17:08:32', '2020-01-27 17:08:32', NULL),
(222, 135, 'dW-YKys9m3g:APA91bF1gx6_VgH2cMy2XgfF9lrL68AKsluWosyOdg6vznZcPgCJ0ryqODjFOsVGAJVh038hElBA3bKLV_JcTqCQYsjEigSBvCsJU6fS-OURDEHYxc2aA_Lo_vHDJ5wscW3px_cNDPGW', 'android', 0, '2020-01-27 17:24:12', '2020-01-27 17:24:12', NULL),
(223, 136, 'cFldzgYQ5bM:APA91bF7kIFA1y7yhuOZ1tsHK-9pAhduw3IboU0O2GjLd4j81-hOEEnDcCiqtw_xbjg0cowwcZIYiJ1bzNNg1YcdJMCdXSvit9_Bcg7qp4FurWQayW7s1g5H7BZngL4xe7oiP55wnqUC', 'android', 0, '2020-01-27 17:26:05', '2020-01-27 17:26:05', NULL),
(224, 137, 'eWWGk8BIfMs:APA91bE4Zvy_I6PDvWB913IRUVzZVLYPDopEglGC7_gIr3ZkWuzx4fOIpnoc2Kmj3kYGSfjAjxmOuraUjMNeTyafYSAMhpcRiNOaWoe3fARIGqV6v9BB-gTbY5U3QXQRJnMaMSje4192', 'android', 0, '2020-01-27 17:32:38', '2020-01-27 17:32:38', NULL),
(225, 138, 'doeEMinGIR8:APA91bHXfQbHPWn_QMBSUpvM_GfYcCgnxtx35-aL9aS73SO7EgbqrJb29K9vNgofW8PJbuDKXSeZVnAqBmO1Q6mHFj5ulJhmF_bfyKR_yycl2ArTa-Ro8AcX-iyrGluHf4lRgtgc9dg4', 'android', 0, '2020-01-27 18:00:44', '2020-01-27 18:00:44', NULL),
(226, 139, 'cxQzp6YayHQ:APA91bEVV8eA6tfzhgXdXSxL2R8AlWZQJKWAoaSCgNQDiLrVdd74J0GQXFfjwAkmNNGclAgEobszgnCL7LyUol7LJY2JOPOFI6n3wpsAjHBFGczXT8vxtNhJ9FNo9CLyJfjiFxNNwSW0', 'android', 0, '2020-01-27 18:04:43', '2020-01-27 18:04:43', NULL),
(227, 140, 'er7RX6oAQdY:APA91bG0V3N4dOZp8-Au8X2TK8sETU0WWfkDyK0pAjRJnbqpdWLzusXRlcJ7OecWgAHd8rSG2Y52uihdScfczwn8RaKm7gS95Ik_S-uCUL8GOsqR1pHuvdQHZRBnWKpqddluWp70jCQ2', 'android', 0, '2020-01-27 18:14:26', '2020-01-27 18:14:26', NULL),
(228, 141, 'e6W4VSHWSQk:APA91bFC5iA3gmkyS90MI4sdjkeLKmF09kGcwltC01ZweciMpf69MUoyX9W79vw0zWg_ajctbvwiJwswp0D8NWyM9W91IgeRrLS0eMJXj8FG93ATwuBemZQPCcRmib8fUzT5qIuR_ERW', 'android', 0, '2020-01-27 18:18:51', '2020-01-27 18:18:51', NULL),
(229, 142, 'eU6lbNG0oBc:APA91bHwhOuWIUeHuLPkXCGTPMzkKeNKC3CyeR3oRr-Ij3y-6fN0LZprq8T569dm4xfOb7OpqUvmftrzFyKfoEVKCyWmMp6WjfeJZ5C1UbNg7puhwqcMVm1an3-KiuiDiqyuUeBnK3WR', 'android', 0, '2020-01-27 18:33:15', '2020-01-27 18:33:15', NULL),
(230, 143, 'c8Fa8gZnlyE:APA91bEncyGcj6Q4JIW568T5-JlJpyrNsVgWrMeFMWbMeHhv1grZenXf42O7L7MiFyNFP0UlM8DMq0JQfOldjepmcDTqvk4jY4iB46IxZgvZVjlGVLhljtHd1-guhHNgKpFkhc2RPAbr', 'android', 0, '2020-01-27 18:48:01', '2020-01-27 18:48:01', NULL),
(231, 144, 'f-6o5anz_Vs:APA91bHlYfty1qPBaDLTMzrHiYWCFF5lEzadewLX_Bqoawk4OwRg0kqf7TD3TckPRpBby4z4HC44AtfaLW857KnMhXjyh8Hf5NnIw-3xk3UQTNUN0m2QIYjn4puHDzrsNTOsckPzOw-b', 'android', 0, '2020-01-27 18:57:44', '2020-01-27 18:57:44', NULL),
(232, 145, 'f0uvO9dzhk8:APA91bFWoCFaf32EX2_yZJY2Iv3LKpjGOSocyAJnt3wjxqC_N2N2jI7u_Lvj0Ig-AZmiA9CABXo5ulKMEWwJXaEnBNoiDnAe58Uly6oPNW4NH3qcUGXw9TINLYJh89GbkJIrC1kLy-dp', 'android', 0, '2020-01-27 19:01:07', '2020-01-27 19:01:07', NULL),
(233, 146, 'f7XOZLYQRrA:APA91bG2ADnfVLexN3uGSwoedoY-WiWqPGELUjEM6grCU-p9jJUr31n2WpYIhbqgGhxUhGKHdxAAY7-IYTeTtVCLr7Qet_Xo95l-tKY_W5kKPIOh_ZZMDZEe3jWyBju2-4QwF1Bm5Vw3', 'ios', 0, '2020-01-27 19:03:51', '2020-01-27 19:03:51', NULL),
(234, 147, 'fS3kBC0haFc:APA91bG-0e6DFbSUFsVsH2ycGBVyQSljq8NcrU7zOW8j-ClrlTG31DZXnZ_2odUtxBShzWC2piVzdzf2zT3_Vo9uBoSuyE-QgsbUtaoxd4QyQ48Wd1NbWbkDKZ081-DOJTZTEXJ9w1_T', 'android', 0, '2020-01-27 19:05:01', '2020-01-27 19:05:01', NULL),
(235, 148, 'di0XVqyQbcE:APA91bFfA_f9bSnwSoUs1opU_jwKoX5BXkyCujzrnTjmd7vd8-ssvO87NuCSZItaXoqFp38pk3qrhhNAnl_MlW1oLmaD_KE8lafdnzPP8Z0ilMxeRkIa_uLiq36eUp91wnCNi040WwtG', 'android', 0, '2020-01-27 19:25:58', '2020-01-27 19:25:58', NULL),
(236, 149, 'cBboIZmQRKo:APA91bErSMx3tmXfQBbUBQ7tURTDKAHaUW-Cm9vMVV2LxFdLZB5bBRhOa04lYK1SOm-LoXJQpiiXkwBnnInMGelwDWQwkGDnnmP2KaOiDOXaZFYFOUToV2J6yWIiO2qyymaf1rqVX6ZA', 'android', 0, '2020-01-27 19:45:47', '2020-01-27 19:45:47', NULL),
(237, 150, 'cqDodS8RxhA:APA91bG8aCyuN7NGZXnZitmdfWoINCwNyDd5dbwEm0iqj7CNS2OhKVS6Aei6llCDVXo3HzFq9xoeZvCMPdyLQaD5u5NVozh8t9pUXhnB1LVgpJj9F53-m7ROX7WfNHGor1k_bNFhu8HX', 'ios', 0, '2020-01-27 19:53:18', '2020-01-27 19:53:18', NULL),
(238, 151, 'dx3rwV-vwEU:APA91bGHgW45ZpK4tuTh5G-Ucru1QcoGfqGmoqlBPsSpFinzAFk-pccMnf0xDL69tlu2l2nzUEqklAx7njFwdpsWEi6ccCo1FT9GHSxJfR3FnN4D05GS1tDG45YtP7kDnyeaja44OrRp', 'android', 0, '2020-01-27 19:53:23', '2020-01-27 19:53:23', NULL),
(239, 152, 'eDHTzcFnaoc:APA91bHuuT9BTIOm791P7l5vpt0dZpgwmm35OuTFJUgniY6tvYFro5jf0VqlKPXLRMC69SxyencI0gtUHcHD5MvrEVGLqU62-XwaXt2bcdjfCu_cBXE1qo0e96QjQHCAugS4uVpnIlmJ', 'android', 0, '2020-01-27 20:27:02', '2020-01-27 20:27:02', NULL),
(240, 153, 'fGc6Skv6Kpg:APA91bHZqS1rbpd-KufnGHC9pwo93tcX9HViqzmqtm54ojrrUP6zR-qUgiR2k3jyZWm_lyS0dnTd9KS_Qsp6-QsyDT5EmePksUr2UbeG3H2luapXZcqS5KoJqB1pewl5UWrlc-qPaYi_', 'android', 0, '2020-01-27 22:22:19', '2020-01-27 22:22:19', NULL),
(241, 154, 'c8XXG0kzqrQ:APA91bEXZ1hhHYLc_lBQIxwR33GcPVix5zkTTA-9JvP05BekU2YcFqv2uF1waO3znhlort41mCSH6LWMEVnY-tBC_XTm7l0wuFBWYKM-HuSoOVSQZ3wrYvFY317FySA_KI4Iom9gStYj', 'ios', 0, '2020-01-27 22:27:53', '2020-01-27 22:27:53', NULL),
(242, 155, 'f-PEadkiDIk:APA91bHv1RgXPau7dR0mIL7FMnuMVh2r6_9AQ-T2RhfO8mttakJrWq2iRLTIWOPCpWj1zVVpiCetEbLpeNqmFZdWYrqJCSsVsg9DiZSp4c0TpNd0iPwnpjWS30XdBYqPostkqxQiAXuE', 'ios', 0, '2020-01-27 23:29:48', '2020-01-27 23:29:48', NULL),
(243, 156, 'eCHflS0L9o8:APA91bFd4PCfVepoGxiwoDFr8tkMEVBa8aFNZhyKkOzrx9EZPuRvTPfo8LuBYv3XjtL0Z1NEQiXA_wTgI0W7x6_6cgp5zWyCRtydH6Qgj29MHkC6Mow9Bzif2aQMm4pdZgfH9XByGu4O', 'android', 0, '2020-01-27 23:44:29', '2020-01-27 23:44:29', NULL),
(244, 157, 'fsUvRYOuNME:APA91bGRz5Ane2TjaEPoZ00QThR2s9ogLpuaYmajgidfGMDvLxBmrknTOvhNoYdGjOeDWZM5YHPi0IYDHuIErTtR-R96KwX6QpeLCB80EWCG60CfRR4Qar7NEQgGBylffti8U7QE9G6a', 'android', 0, '2020-01-27 23:57:21', '2020-01-27 23:57:21', NULL),
(245, 158, 'fIHGGWUrrS0:APA91bFecXB2jM3rlAMGNrO32RvPVIZfYKKz7marQZdnNPn6tBvROojUsfd-jqWkhU5k5frRNktFGAZTksc3jvkCzByxV5R78ZE4cyOocJmyGjO7g3Rz2EpPQfOQG8ikQGdyizdvb_KH', 'android', 0, '2020-01-28 00:01:33', '2020-01-28 00:01:33', NULL),
(246, 159, 'eej3Nb6iVWY:APA91bGMLIJmlef4FdTY4HKby3n-VG1w-KPmHRlFAdSmv2Ur3LKGajk6NSDRx2IU6wqQ2Maje5gyPRP9bF0Cz36VBpt5GHMpdmFCoKshnhh1k4xFgSAPBpc1lHYMK-seIahrO3pz1Jko', 'android', 0, '2020-01-28 00:37:20', '2020-01-28 00:37:20', NULL),
(247, 160, 'e2F7A4h99fc:APA91bExIINuUI_bx37rqZsMQBM6cmxeB2f6bPNmoD6mF6HhUIEYsZKDmizl3fDIC9Nn_BaLDbKKoqiUiaIIyWYMnT5jSA-3BeCbhaFxRMY2NxIZOicFbmHYMGheoBYEZ5isxInj54FF', 'android', 0, '2020-01-28 02:19:57', '2020-01-28 02:19:57', NULL),
(248, 161, 'fEhJDFqy6_Q:APA91bHA7-fBW_TrXa31Pdwq8UR1nWC6jExGVdYIC6K5KYLW52SfB6NVM0_XMTpx0FjtGjd2qHaelLkIg9TcOfZaUtUnOamlXLUs9vg14T57TjsSZR3F8YhQLvNLHpMJNuO5jDUTWQev', 'android', 0, '2020-01-28 02:39:46', '2020-01-28 02:39:46', NULL),
(249, 162, 'dOVXBjL2hec:APA91bFgVFLgU7XHyL0ucNHmFYZqyJae10fhuUoVZd5EAWo9iVMFGOiwMV18U6hX8F4Ok2tTGAOTIku91XP4Ytk_T4En4bPY3nPFksQAYWLF__t0kF41jz68F1B_2Kj6Y9IN_6_FM4Dg', 'android', 0, '2020-01-28 02:59:14', '2020-01-28 02:59:14', NULL),
(250, 163, 'fS-t-qlnkwo:APA91bFSyo4vfdkCpB0d9F0ZDgQZhXLYCW1djyPcYAw04nsGOp08z6TP_fajtJwpwzZDWlyUULvFadInZwnFzLnykaTaV8258InAnscivJhfBZ4HJT-OeH2RRZrL8xLbg9fTdl4AUgwD', 'android', 0, '2020-01-28 03:11:30', '2020-01-28 03:11:30', NULL),
(251, 164, 'fm-Uy_mX3vk:APA91bFlCnksSY48byy1PctRCSnCAGFIrHKKieQze4DNqv6gRhAIG1OtEdk0nG1lqZjEkV479HZE1qLSy2qlEjeAxikzrqcaMMVHCTU75Z1m3X6-SZ3n7ndPzFkQJ6YkCzECUFKYPG8T', 'android', 0, '2020-01-28 03:12:56', '2020-01-28 03:12:56', NULL),
(252, 165, 'cgzrsQ20p7s:APA91bGanp2lKJKlFUbo0kKGvYs-4cd7wLnmJ5NHY8dnN81fVrAz6qj13t3QGSTWIwb46nRqI_4rQxNBLmtQWs0MhPbyT0wyKMEb8CnlViYawAfzSSGmMpBHoSvXoiVyNB3LEjoC6Jvs', 'android', 0, '2020-01-28 04:00:56', '2020-01-28 04:00:56', NULL),
(253, 166, 'cgj-AlPIvo4:APA91bEj7g1aE3Az-Zq0yu7pnX-t5bpHQ_Qw2GrtcVrEM-qiTJUSut54MV_mEa8p5p3_rnSFJz0wQM90HghVU_Kz3dvxoucWMWB8FYwiCJavVTy-caNxpzus_Az5JW71lhVy4u0P3Q-C', 'android', 0, '2020-01-28 04:38:36', '2020-01-28 04:38:36', NULL),
(254, 167, 'fFBwJre5R_8:APA91bFjXYl_oUzXtzuVXzzL3vqPbXeqM7qSdB2pO52ye_llmGeyK1Vuqipv_ODpEH0uM_rm2CY0F-VOKN1a7pU8hDdmx8PdWww7cx91cc92AUOtr_bJSl6WxBcrKpf_7KAX_VR3KUVz', 'android', 0, '2020-01-28 04:50:10', '2020-01-28 04:50:10', NULL),
(255, 168, 'ffLop9UG_bE:APA91bGnxCYhEjDiVWKsknP5Oy-n5l_2ytQkURkwUFwZ6i-G3eCyoXEq5vtDpsWneqGuGnhzTvjHAL6pHa8e5ikNalQFxQNFDOGthSeNxatwLvo3ykNUeIjM1BTIrM7EdlMybMGSpsBt', 'android', 0, '2020-01-28 04:50:48', '2020-01-28 04:50:48', NULL),
(256, 169, 'du4Z6eA3D5w:APA91bHUkNTqS907dABgFfgWb48aBMbpJkb3wvuMpe_h5eYvGG9euG0EdcLM--q9PUJI_qK5phAg6OLV6RL7u33GxLqSS7J24AMQ5jDM-g1F4YgH53-Tx0_EOIQRBIuGCD4ZaHgiKL9f', 'android', 0, '2020-01-28 04:56:30', '2020-01-28 04:56:30', NULL),
(257, 170, 'e-DFGuzFu9E:APA91bHqoKIzb_5ZhmU5hhXRXq5t-7K5bCN0pHisSNf0RJd0mwVoOV_up5XhpvZMoVYy_EmKKsERKWck0Io1PXZz6xclN44xPX13oaTn768pEVCtfQHrho68AWNqS5TTfnJXpxKh6beI', 'android', 0, '2020-01-28 05:20:34', '2020-01-28 05:20:34', NULL),
(258, 171, 'evoTKKfB7fY:APA91bEhL7sKtDTC6J5-8GZELCpolJQtXhDjMTNKNkQzJARAm5uoCdXRg0xCtJOcQofZkRLn1ZYiD690gur74tjrKxtUvvyT3LbmNA9oSJlyPMlvwE9jILXJOpTr_SaXX6wBDj67BCol', 'android', 0, '2020-01-28 05:26:37', '2020-01-28 05:26:37', NULL),
(259, 169, 'fUpfbSgwrs4:APA91bHHoTSWH6dSjSu9YHbmNhTkxFRrIDaEoZXgkG2-8D_uj0U_cfLJb94feZ0s9Fk8msUoV_6Ioo_pqJO89Wo1HzixFMILQTZjum75FBKmohqW6nm9FMBNCxJlgdzSEBQGdylNWojI', 'android', 0, '2020-01-28 05:31:42', '2020-01-28 05:31:42', NULL),
(260, 172, 'cSj9tZUiIXA:APA91bE3H6q3Ckz_v-Xc99PL9R18IO8vtzHj6kfDIDrdhGpa3S5tmENokWPoLieuFZWa1AHIRowR5BmA3wxxM6logXVdLcc0hwQhT6_GzQq9i4GcVRx-rOUc2FXupFeYSCHeL2HaHS-G', 'android', 0, '2020-01-28 05:41:36', '2020-01-28 05:41:36', NULL),
(261, 173, 'eq1wezwFAQw:APA91bHsbqK1YhVJYh4cAMyBPzXFKZA1n_kXrqAVDBl5IxXj_mS-eiO3ex1tsDjJaHHB50ENNQS76U6JxEzDbhgZOk7cXSH1o56lPy7Edo68wzDrKZHPO5Dk1i0LxsvqlsfA96Op1faI', 'android', 0, '2020-01-28 05:50:58', '2020-01-28 05:50:58', NULL),
(262, 174, 'fBkb7d4VKgU:APA91bF7nBp9KgciljtwerD2wKHBAX566NB9HDovJ37C0KJ8Uw4oyKVH6R51_LGo-LGpTCDPWI3ZuY9fej_Dgrh4pe3Dvwvu3mjhrHG4k2kLFNl-tu2Bg0zJ6tZ83Xp-wMV8zujjU-yD', 'android', 0, '2020-01-28 05:59:16', '2020-01-28 05:59:16', NULL),
(263, 175, 'eogC8szcPWA:APA91bEcI6NrCsbA00rpf-Ul5K06CJ7WLCwXTVENtXMNvVD89kcmSMEGt09bVEd9gatg_qpMqS0A-uWhQMqadnI8ChulGo48SIjaU-FStGP69gZuboDTLrGXhzvsFNtf-mbPrnVRgU-Z', 'ios', 0, '2020-01-28 06:18:17', '2020-01-28 06:18:17', NULL),
(264, 176, 'fIV8Ere0B68:APA91bFT3_jNlmoQajDItFAikPRmZ2-S31jn0iaPkgJas18r4P9evSiVEpdyK88pihbi2Ni97B6EeGsxpnS_Cy6RSxIUUKFzYHvkSpZNt8h9a0nVZYa135ohHC0Cbdpn7PcoL_0Tkle_', 'android', 0, '2020-01-28 07:52:14', '2020-01-28 07:52:14', NULL),
(265, 177, 'cHVw9jb-gBc:APA91bEZk3uV9Xz-X4ZZ9D74jwrhPST59TOrKA8Kz-7ji3_3oK5eNlEUEyq8Q48qqf5ygVTzaZXQekrnj8_rwRxyCO1sAfQZ6YC5oKwo0H6C_uc_IIpDwY_7tv-rLx6WI13fnxjzsfYR', 'android', 0, '2020-01-28 12:03:37', '2020-01-28 12:03:37', NULL),
(266, 178, 'dEMcN3qGgU4:APA91bGe-z_CghGyUtqxcUgTbrWYnDQiAD5KOLKntezMCrohEWHGagJqM7Hn-JZbviMlyG7n8OHg9CmCgAE0yTcLjA6eZDEbo__zIKa_DHAwXxiSYGeueef9TitBPoAVtORiR5zBGbWX', 'android', 0, '2020-01-28 16:27:14', '2020-01-28 16:27:14', NULL),
(267, 179, 'cSOSPyubmtg:APA91bHlnjAbyIbnKKplEmx569SUL_7RkQAhJcCI5hC82qyTQ5H00pWs3nDgvdE0CnK-fPz_o942_IbaImGnQBq_1B-43rqRMUbIfKQyPIazba1SH-kIcHzFqffwFa-W11VGNqKlaVnV', 'android', 0, '2020-01-28 16:31:15', '2020-01-28 16:31:15', NULL),
(268, 180, 'eOS7ApQ5HXo:APA91bG8lts_Uk2r4zzjo6dwRlTi4wHPs-qGGmk54R_-pLGZj44isNac2wJ_UXInumMb4VKmyiVIGu6IwI8adUQQxZUC4I8F9Zr9M93TMBulxvVB28WhZYjO8iXQJl01q6hdHdp6h6qq', 'android', 0, '2020-01-28 16:57:07', '2020-01-28 16:57:07', NULL),
(269, 181, 'fBc8xSkGdzE:APA91bEncsFkxhKcZ4qsHtxWKBw0wXp0p6pIJ34rhsfhsMTr1vnxATN9QmdjhW9L3XgFZpuxzx25TQxB8VtHjcsPW3DiUw92d9fMtbTqOzwlT9fiasKCqlRIL06gZJ3D_JY3gYb2VMs_', 'ios', 0, '2020-01-28 17:25:56', '2020-01-28 17:25:56', NULL),
(270, 182, 'e-LGwiOnWds:APA91bED7h06KPvhxSZnw_Qnq7T6KpI1_q9AklOnIdsOXPi5uiFHxcpOG-8EtmUMhjYIRl7Rp483jFf8WgWClz-fQVRTE8cXYW3vmC7yGZz_ulw5f3-jUt22GB9I6qMKQYW6OovC1WUR', 'android', 0, '2020-01-28 17:34:40', '2020-01-28 17:34:40', NULL),
(271, 8, 'eqf8Z1mVW4c:APA91bEy59F1jvjmhdblyfvgcYPwfNWIChjzlCaMo8nMqDFgEVk3WbeShvXky-bxvKxDWLs-IZdL_GPJ6a408WBaA_ugd2knVIeZxPWoeCo5K5HyqioAeRPJTM4gF5eLp-Iw_QESTJUP', 'ios', 0, '2020-01-28 18:22:55', '2020-01-28 18:25:13', '2020-01-28 18:25:13'),
(272, 8, 'fb8eutwRbeQ:APA91bGBKeCze3pCn4u33qV8in2tk0lgW-HeYYq57N5EV310jeGadDmN6Mu5tgqPjVXredX6kyWvNCmTO1HWrfnrqeRTOiJmloYKrWuwSV-TTUypxzqmqTeFUXBOoXmMoaGN53Cex2It', 'android', 0, '2020-01-28 18:24:06', '2020-01-28 18:25:13', '2020-01-28 18:25:13'),
(273, 183, 'dpzATqRf6iQ:APA91bF85aJXwqzEs6nf1VTcQBTZJ_-9zJiFEm1YIRCBpnZN92lq51ExfrgM4K9ZzQzTCkJXfK9ILRIecG4VGUVR2XDNypESu3mtUvNXyZi2FMfj9BCmQdZ9KZBsO8rWyEuSTsvw_wt5', 'android', 0, '2020-01-28 18:24:52', '2020-01-28 18:24:52', NULL),
(274, 184, 'ex-fHjl88wY:APA91bGLhj-s_davM3ZtGube6hMnuc5yAk5XRV9n1ejWqxCY4kjBC1t_Vphl2b8xbHU3f5hqSj2dICkQvFh0R4Rzzx-37hEcX4likTtMg44y3YxJ3UNekeChVUGuxq-6RwgvmfQXSl0v', 'ios', 0, '2020-01-28 18:50:10', '2020-01-28 18:50:10', NULL),
(275, 8, 'elDel4thnbY:APA91bFgARJVZ3KHbfvt8emVsxIICVCnFEzV5bLQ_4-57U_SwJU0GiW9jIEQNxCHA-KSRDxxoRnyMDbk5t3jorj7N5b7iQK5AAv-kEQqFDZYX8wreH5d9uREjjfcw1XQncrz3p3fuWVv', 'android', 0, '2020-01-28 19:09:28', '2020-01-28 19:09:28', NULL),
(276, 185, 'eR04xq07Ig4:APA91bH9Z665on_4EAJ_YFvtw2fXi2WW8bzpDoAudSaDC4SW1QsQUQwTQ8REUHohK0yQXYKvzQ_Ea0hnUitkQQehs9MLQZ23e_UhjZ-z4PD1SfDtzuBLCNbI2KEb9rEQY6rHqC4no5_7', 'android', 0, '2020-01-28 19:55:14', '2020-01-28 19:55:14', NULL),
(277, 186, 'cnmQidarUrY:APA91bEt5uP9UzaWgzoubAKeF5QEb1pYukdlr0gZCWlzp8U_L9tOqBaI7iPHo4zFX-1abc3vP08k6QM_ywN2HS-oCuyxOSC-Z9Gyg9y5oT-7WRQTTiLiP4pMMs1jn6tQ_JjnT6iBTGsb', 'android', 0, '2020-01-28 20:35:07', '2020-01-28 20:35:07', NULL),
(278, 187, 'eu37zgIAH8Y:APA91bGEg1wXHHMPhLdur8V-4kvkvccaOb8dEAPZP8tdH79l2E5vnSXs4zVoOm6Er-SZLJsBysogsBD9yhPGCTi_88W5Y5wN-AhYoqhaqEnBQRkRX1_9J3rv37RZfsljmrHWLDkHIzfO', 'android', 0, '2020-01-28 20:37:33', '2020-01-28 20:37:33', NULL),
(279, 188, 'dYV7qMPo7pE:APA91bFGj59VrZY8xHOIv-RZ98fIoG0LbS9enrXtoQSqyhM6hEZCXmpde5x-MtQ_lmfyBwxA_4yga5OQfCacen2YFfL_-xgdMFHKiQzaKr26ZQNkjtmdbxw6ZiJYNwBHj4iBaHrMXQMo', 'android', 0, '2020-01-28 21:24:19', '2020-01-28 21:24:19', NULL),
(280, 189, 'crQhTMqecS4:APA91bHI-K5oNd8ohWbzQfAnIEsZe4RP_ODhifhMRjzpwv7q_m2OlEu2b9FdbjIgV6u3kaUApyJwg1PUYlr6ji1qwEImjS44NBdttnAFh8FAXcI8fQQoMoljyhqihETElPchd9ev7Knw', 'android', 0, '2020-01-28 21:43:41', '2020-01-28 21:43:41', NULL),
(281, 190, 'ejv9ZnzssQo:APA91bEwNIoe7oHGxEafaAWbepl_3TTF1UhDRgzZum8URLBofrmVY1uckHmDuAhhMu5JiEqx7xxKpANdiloQAJwM0T3cWQzGvuOe_2yTSZ7YosBajaYT8JZbJoqJAJUBFncY_ES9TRG4', 'android', 0, '2020-01-28 22:08:08', '2020-01-28 22:08:08', NULL),
(282, 191, 'el-MyEMbgbw:APA91bE-CrOz1R_64_p9e5bUoEk_nn0_HDpNMvUBSZ0vu92wsMQYipm2po9Mg8NXmLx6H-y7qXppvfXvkEwwZ5yc019hp0xORTFhQfqCtFD46E5CWooSDxfAR7csXPd0H7mjiHqpbIAk', 'android', 0, '2020-01-28 22:52:13', '2020-01-28 22:52:13', NULL),
(283, 192, 'cXsu0xvm94U:APA91bERd3SY46u0hv-gACqb67aA1RunqmWN1cY4VcTQJuvSyG3wHhEohmP_S1lXuE_OGyV9spzx4Y5XW5cMq2gB5kTBWfrVD3I89J-JzMndxEKtKlYtCHe2-i9l7wQl59ulnvysTHSz', 'ios', 0, '2020-01-28 23:19:52', '2020-01-28 23:19:52', NULL),
(284, 193, 'erNpurlqEo8:APA91bEujY3ZLjPcH3M7mHXBGxIvOosjnutFo-HA9xsx4hAu_HnhqkGdpZyGax2wTXlg1aArf8w7IuyG94c8ejPqYWwoCz165p-HSVh0qapbeTtU8P5lwpxoySHFB015Uypxa23swqnL', 'android', 0, '2020-01-29 00:53:40', '2020-01-29 00:53:40', NULL),
(285, 194, 'ddCji4TA0ho:APA91bHCRo2cSFbxkXTpSQgdXidoGrxCf8tJivSAyyV6TvCt3odU9XOPEGxfrWN6Y3KMFZ_gIRYl5aIwVywoLTj7eYhMmgmASwx7dC6HtdqUF4tNa_ZPskYpzM4tt9mepY1aCZdIIVtD', 'ios', 0, '2020-01-29 01:31:44', '2020-01-29 01:31:44', NULL),
(286, 195, 'e6VwIIumjb0:APA91bF1tPkeMV0eSG5EGdKlRvUJiICxAZfEXpQfNMwWcPLll316mJCUbCmQOi13GtgbGhwlj5NuBt00WpDsIYSfhpKVaEFPaHXyQy5z9s-I3ipYSInyYtZnil0QH4MwUx1pzwizGVEP', 'android', 0, '2020-01-29 01:52:46', '2020-01-29 01:52:46', NULL),
(287, 196, 'eFddqKdrUJQ:APA91bHu553B1UJbDi9EA6cYHAztPm-AZyhqlqLNf_C3Ep7kZEsLtWQCj_kaJLphKX6y3k1MUbdPmlmZSBuhEhQ1b87kbkr3xf5MUdIyWvbdYI7hVWWv9QigVtFvva5jf7Ome6isNlYB', 'ios', 0, '2020-01-29 02:23:02', '2020-01-29 02:23:02', NULL),
(288, 197, 'dvDQXwAHC_M:APA91bG6j5AQlro-q70ZrYwzQhTytJJZq23u-mgtm-CNguTXgC5reraqsHsTiNx5Zuli2EYbrJ8NafoAOiGOXUNknQbqj_5wkgaphbdJlynGNotXq-j7gwcYnUzouaUoPLstwixjVSzt', 'android', 0, '2020-01-29 03:19:29', '2020-01-29 03:19:29', NULL),
(289, 198, 'ezH9W_3xNcs:APA91bEfdKF_CcDjeo3Jzg2DGYE3DW24TC_nxDerjq-qZunyobytzZnFs-9lGBsOyrfoWSRma_Xbw-GT8Bu9kSIJNwfKJFjQde1wDAXMaHJntGLeTMODP_kdDVwFsTZA1XfjI7yUwh1q', 'android', 0, '2020-01-29 03:25:50', '2020-01-29 03:25:50', NULL),
(290, 199, 'f39zLM0FcXk:APA91bGwhYVwadgPt-D8kt1Fq7FsjYZZ5nww9N-1t-XPGxul_ibb4gP4mXiSLSvzNzGo7M4dXpzP9mhBKFJ8UzYphlUp4O92Pb181bYp-Y5WGm8ErGh3lygQZDQithUor3yrV2AzSoJZ', 'android', 0, '2020-01-29 03:35:18', '2020-01-29 03:35:18', NULL),
(291, 200, 'cEL_RyBEkPE:APA91bFiFIFsZmnoch2FxK9CPrzUPKCZ1HQSgECiAQ-WZ7lUnWMZ6EawMJFgdtLme6WWS3--XS4lvOZnxZVbKxjlDbEXL7yhFY5q2BNDGmjBvHRw3xZJx9YlHHBgR8mQRJXYiQXAuS0s', 'android', 0, '2020-01-29 03:39:47', '2020-01-29 03:39:47', NULL),
(292, 187, 'd6gg5ifeKac:APA91bErDze-dAWtfthnTPFyil-ka8UZ9e50V8yid1qgI_UWmz80e3z_72oBNWRQhLj00pmyvG7iEUlsaJPEmSg7P-517hQ7yBvgPyZU5_GIAyr_yqhdRbazq6SOwyjWveNzUxqBSV_G', 'ios', 0, '2020-01-29 04:28:38', '2020-01-29 04:28:38', NULL),
(293, 201, 'dc2RPuT_cN4:APA91bGPiZdJYu5V0TPZRxgVL4MoZ0YGvkqsNjv1orARrDT3wBmS8lSjVzG4SL1hSxpg_hdrr63NIucgljCTBYvmA117NBpeJL0fyDlXdScYhtim058ZCmPbUanYqOM3kS9Hc3_1N3OJ', 'android', 0, '2020-01-29 04:37:38', '2020-01-29 04:37:38', NULL),
(294, 202, 'dIbJjHgyces:APA91bHFJE0aHTotfbXc0krlq9dGio6M_nPG_rrOHJJUGzq05gFWoIqib4SP-T3wYVzavwsNuIpD53f0ii5Sm0jCi8qEEyWf-t6NJLELRF2e_RGkfYMieX6vGeVzIO6X3WBrfC4LTSlf', 'android', 0, '2020-01-29 04:50:22', '2020-01-29 04:50:22', NULL),
(295, 203, 'd_jizuv3F6g:APA91bE53varNInobagvNTyqjlC1ea0RTCQyD2ZZroSiJz6wGVuGv1vylDEMjreSiw9DM2ZKMW5jceUj7YJxLa8pFy9k4LAkEZ9E_4PLJ-WajzJN8UILYGVm8R2hVqsDfXv40rl_Uldh', 'android', 0, '2020-01-29 04:59:19', '2020-01-29 04:59:19', NULL),
(296, 204, 'eykid291Qdk:APA91bH0mwlmKfsTdvxWuu-UpuHgBCoZ8DAL3Vrx6wQzyu_BOyqkg3Qp7-2mnRD_teURe3wspa1FgdHe-Tls8aT_zM3yDHBy1_sj1iWi5OJUlF4ehsy5sQIozWrgnTHm3U7c7OX-wBoD', 'android', 0, '2020-01-29 05:07:30', '2020-01-29 05:07:30', NULL),
(297, 205, 'f8Yd5tmWG3w:APA91bEfPQKx-nWNpkFWScIxzkfCHr_YQcoACbp7VolBehmYH3zhZsWROQ7z0pVJ6jik6p70WOt9HmJerD30C_gpON81fd9rh3uexftzHKW1rvUtegrd0JlaVeFjvsBABGgTFaFbmCwi', 'android', 0, '2020-01-29 05:08:15', '2020-01-29 05:11:29', '2020-01-29 05:11:29'),
(298, 206, 'dDIiqjXkXt0:APA91bG5_mUkoZqL9dqPrjmUVABnXooiXOQmejZdmtno54MEfxBu7wWYRRU3OoiQYjE_zcdbwZIQ5-fnwtSzyYWP6hDa6eNri5QtPAIeqkDJVmfoJPApdZ73czf_umCztE0FOBWZ-uSp', 'android', 0, '2020-01-29 05:22:35', '2020-01-29 05:22:35', NULL),
(299, 207, 'e17bXu7UJ4k:APA91bFxotvTu5MpFxq3NrHXrdEyuqbqWRypI8xKwaI1M1mpDcWJYhH7Z1kjJW6qzNhurEamQ-mW_AiDZLFokM9VqdUEF-7Yb0lwXWhduUXrk9aSTQHqsGCdEBYzYfnNMTZALq8C6kVl', 'android', 0, '2020-01-29 05:34:08', '2020-01-29 05:34:08', NULL),
(300, 208, 'c511NepAG8I:APA91bHEUfuChQtmVuNVzho9mW7XKysBElFBymEpB-Ol1u6nFt5jTlCwbNhi_uhkDaY7zD-8XSKagfvtFPPakl2x8XQrQEI6XDC7G65E-kjj7vyZS5oi5XXuPoSJIrv5SRVHkOw0_sk4', 'android', 0, '2020-01-29 06:01:04', '2020-01-29 06:01:04', NULL),
(301, 209, 'ddHjGfrsUDE:APA91bGjBK75jvSWgjetr10LMXC_sfmngdsfW72M3yL919FkQsgKCIOVbwwZwrs9emK-KyebdujoNok9QPccavDc9L-z-McbwUShbEjrizKSKd3SYsvRVYWI_M0ArLf9i3yxPSIUKeSo', 'android', 0, '2020-01-29 06:11:32', '2020-01-29 06:11:32', NULL),
(302, 210, 'dwon6e7cTOQ:APA91bGzY-pZBJdYQ1vn6qjp1VYHxbKTPSoGiC2QX-oJF0dsKOq5927H5bOo0HHJS0jXrGHX4M80_IMQ2NcA1TLusM43rIkHYF6-A9DDw5qjPOuF16Z5F_QhhdszSG61m-VupCDcum6_', 'android', 0, '2020-01-29 08:21:18', '2020-01-29 08:21:18', NULL),
(303, 211, 'cDTMqu9YHa0:APA91bEgwV9baqWeCpGHvysm51_cJ3Rs1M5RCGLsJPCQebQvPmkn2HdSKTZdIhV1LbDnt2DhXV86n_oLfJMjZtas129KhMuVJOBnPXLY3oPb0esgAExqpi-4Eqn1ID9XX7U0FfWDCA4u', 'ios', 0, '2020-01-29 10:15:45', '2020-01-29 10:15:45', NULL),
(304, 212, 'coypjTiRMWc:APA91bHPiu1x_w6VHN9MMFmqXVhLu0ZDvdH_kt4jbF36FGr0BIZP2gJ8-KVmly3NQ5WBpXQ9WnAN6KzgV7j2JF7Y2ZbUdW5BevYWhN9AfNun_LYQAX8zIspP5rAz9IzBPL3Pya7ftooH', 'android', 0, '2020-01-29 11:02:31', '2020-01-29 11:02:31', NULL),
(305, 213, 'f9QanT0j0zY:APA91bFsmMFxX0doweqbE_isep1zNJxHSYQGjztTyj09pqwvF_USerlC_vdG5Jh30gBnnmUmV_E9Z29URW3Y5TAd_jeKVhy9exf5zQY20fm1L-ATz2o-PvsGZuyfXoi0SfCiW4yk-KL7', 'android', 0, '2020-01-29 11:58:06', '2020-01-29 11:58:06', NULL),
(306, 214, 'cZbuLrSDOcM:APA91bFBN4bT5IJ-WRfNifT1k_utdXTXMYJDzBN-Jbn1_2K-tTRjssoFIcB5k2jGYshgsXK7HMIYPEGOHv77aje6AxuVOg1-hFGjcED62uMBVWffncBKJV8pdKeOcQ0oHXJ9oOR97XKD', 'android', 0, '2020-01-29 12:01:21', '2020-01-29 12:01:21', NULL),
(307, 215, 'eei1KaLvkv0:APA91bF77UlqXyW8FISWcSAMV40x8AM00vM-PxYWcDMilP1UL5m8TLHAbNGydkg7Jf3zNIr-l9S5VsH4QST-R6eohEwPjKXfMbUf__ZS4kamCcThuXICGWkCuV3jIb5RqY1REcZyucDn', 'ios', 0, '2020-01-29 13:57:12', '2020-01-29 13:57:12', NULL),
(308, 216, 'dcXByAttvi8:APA91bH3GK_TLSpY1iXMQBQpCtWp5UAyie2KaEsWVYP5J9bJmOZdxP-XJ3Wn7NJgyddS__6EELc-3g5AyloRRkwyZoUyhnLCvDzZMbVSPvS5oj1eu5HdR0V765u9J-VrenAccErjvFVE', 'android', 0, '2020-01-29 16:37:49', '2020-01-29 16:37:49', NULL),
(309, 217, 'f_hQGrkQ5vI:APA91bHOIBrUTJty_RQtbHaqGUJwSKpV0F9oU47FjnuMbfru4XC4AUNiywlnI-ci2eWdQaNf0F1Y3AnB8PtHeU4wsnRgP69Wq08QpsDSjckfXHEZouwi8mfzs4Ps183a6xxaJcIrVSX7', 'android', 0, '2020-01-29 17:29:11', '2020-01-29 17:29:11', NULL),
(310, 218, 'dhGU5c0EuE0:APA91bG1Xbg2bwX06C_cQHI0rr-snuXGc7jZGy0zDDlKbAFuO0BqgiSR9LXpJh415GF7IMk3QXCDD8x_DdBPgT5i8qhm5LcHKWw9y-N3ho2xOS07oZVDKQ6dx8B6NcV-b_tKrQMUaUnK', 'android', 0, '2020-01-29 17:31:23', '2020-01-29 17:31:23', NULL),
(311, 219, 'e619ckGvkyM:APA91bEMj373SHLr67l3dsl5ZEVNDKK3_hTc0pLDtyYzQsrAU5hatffId7QzgZBP3WIA28KRATIzE9LukyjD_9nBAIi8Z57qPSMt-Ar9WAh06fCjMh_MBcFofpuI76cDJ3x2lIrZEUpz', 'android', 0, '2020-01-29 17:42:28', '2020-01-29 17:42:28', NULL),
(312, 220, 'cYT2MyFjspo:APA91bFl7Wvd2VSakM8h8aiw3FYc-dLFNMbPKYehIt59MOcW8tLaEyp14T1jWFn1vZPMMcJkFC6Dhe7gOMYRkBwVhUWb6AcGMofAkY8Zj68-Jx80ofclefNvnerCQFgQTYjrgClg7FAH', 'ios', 0, '2020-01-29 18:00:01', '2020-01-29 18:00:01', NULL),
(313, 221, 'cr4ltStYmm8:APA91bHJ2Ud-eLt8gqPsC7tafl5C4tYFvCkghgqzzr6Ki7f1Fi2GwrdwYEGQ41zpDAb5Q_g0UHHRXholGq-vRtxd3PhZgWAF0654XLq1hxMwQ7p5myvLY_93XVilxUvA83iRnXQBVxxe', 'android', 0, '2020-01-29 18:34:46', '2020-01-29 18:34:46', NULL),
(314, 222, 'fYYjzx7CTQI:APA91bG1tLxbv8FHTWo3DmWXaqB8E5UJNlC0XC2L1P3l1MhNL_uboOb1ZpNYQI45CNRuqqTtbvBdOHhEG6Aa1biV3tVCTXRuw25yLgV_pFwkUBjjTfm4zwg2bLUtFyo6kSF3-CQHBzr7', 'ios', 0, '2020-01-29 18:38:03', '2020-01-29 18:38:03', NULL),
(315, 223, 'e6m0ytc_w44:APA91bHe5IiGYfLXZVmSQe3vdL0NIV6JqkipAUE-5Lg-10P5Q7xgyKX_zsZM_DNHI2yNxaD-SSTCAx5J1NGImCu1CClmQgdmQsKS9uiBFDftfKU3xh947wGMsaZbkAuYxVkK9Hr1jb7W', 'android', 0, '2020-01-29 18:40:02', '2020-01-29 18:40:02', NULL),
(316, 224, 'eN2YzhRA90Y:APA91bG-zv7VzM7N4TFDS6g7QQp4BUQk6eSYeh-xLsHL3_lFa2m__2cbjB7AgckQChIf7rHg3SfK6I7540v13Zy0vPwP-uTuO0kBNmT1e8xBj7W-ZPvcxIUMV210TcROUvsKkBMYNQ_M', 'android', 0, '2020-01-29 18:46:34', '2020-01-29 18:46:34', NULL),
(317, 225, 'eGWkdFojXfY:APA91bGJDPAc1iXI54yRwFvqP1aY1etyLO7rn009_QGokpdTO88xzjj5nwiwPJ1GzEIAi_Hjr3UHXExQAQRYGY2rLUIXvk4lUYdlZpKeOa4fJSQ1w_oQKedLrQuHfFeK0BPJQFYh_lHb', 'android', 0, '2020-01-29 18:50:36', '2020-01-29 18:50:36', NULL),
(318, 226, 'djeRjx9v2bA:APA91bF9hfGYR5AHSjSXiH7Lj1ix_cKcm0mAmh6ZVxBNVJl8Z_rzoY6TG1nwoeHe9kmSSWsAV9G3AnqINYo92IfBnOwx1pzz19NBwu2J6kMza3IIZ67HIFmdVe5MCpT0GdpIF5dUUoGr', 'ios', 0, '2020-01-29 19:13:54', '2020-01-29 19:13:54', NULL),
(319, 227, 'cX-Y1AJ_8kA:APA91bG3jmlBYZ0n09qLvWYvSdfV9RrU-2UNWx5Y6zrXUHrRV4Z_Cz5MT4PPBDoZJapCBXaLsXx_aqcykGZxRS8ma4CzrE0hQeHrnq9enTSjQrLVtj27u1G9N3mtwkKi4muz2hcPQUkn', 'ios', 0, '2020-01-29 19:21:39', '2020-01-29 19:21:39', NULL),
(320, 228, 'cprCMl-2aUg:APA91bGJj3f_0HjEcGFmR17ndKXwknWdFFKuhFyLPQ4-aaFddAH36ruopbnD6EPGfVbAkG6OxEkuSiIPhXPZgV9psTnEEJ6QxdPT_z8kKMz02HyJ04Z_VyvZVBevq6wp8TZVaPPkNV89', 'android', 0, '2020-01-29 19:27:50', '2020-01-29 19:27:50', NULL),
(321, 229, 'd8tS3EN6dBo:APA91bFlPBQiZFnbMM-xnF3pfGc1WS9QrLmVpWT2LzyvSzdoBLalCM22_Fk6hiMRs8JH6IrekrVAGqoh9JkM964thpdRjdxl-aFZ92QNBoYCmrko_gQ7N_FGMppx_Srj_rY7krepEGB5', 'ios', 0, '2020-01-29 19:29:01', '2020-01-29 19:29:01', NULL),
(322, 230, 'cfoR0453Ewc:APA91bEk6fmLW3xOeO_YpWUhRBnR3k2MFquFx4xXIt_HJo3l-hFjPgVv5LaEWmzRr6PvpcmPTM5CudmoXknFLYvB1X_MeVgBHkxM7qrdbKe1JwTmDjz_7xpbSKGhw7sgo5awGcfgN8f4', 'ios', 0, '2020-01-29 21:44:21', '2020-01-29 21:44:21', NULL),
(323, 231, 'f7sqdEwkcVw:APA91bHflujfyRu1zOp5wU_hhGsI2qZn-HbP0IcC_xfqvcuZZSd6bymeHsZaQ9XSp02gNKtBv9sxnC3tdXyJvEc-fwONp2fBI9i66v1VLb-ealQ7vKGk9kXv72YQ0t5IHrSJvKjt8si-', 'android', 0, '2020-01-29 21:46:43', '2020-01-29 21:46:43', NULL),
(324, 232, 'f3GUjUlskdQ:APA91bEeV0fzqgAXw54pMR1fvgNxS6fhrp-MJ0JTgR7SjgTKA7RUJmdZ0w6iX7lSojOQdYWIz8GV8USJYKDQh1qfAI8T8EAYrrvQG8tjMI88eEjdkpHFhJkdN_G6m3S1yY7GNBz3kTsz', 'android', 0, '2020-01-29 21:47:22', '2020-01-29 21:47:22', NULL),
(325, 233, 'daqZTQI6_vk:APA91bHeTFHf_xzUCxsXWv4yHjBZr7Dc_IketcV6WsuX_7zZFQXfXd4v4lDo7kLDydpxCiMsfSFQlkbVSLQApYNkf5SkTFP419-K2dhO8FvIT3ZkNLaN-ztSTLzmbjjFbEBNDK1-LZo0', 'ios', 0, '2020-01-29 21:58:14', '2020-01-29 21:58:14', NULL),
(326, 234, 'eNmp2K6dOa4:APA91bF4ZoWex8FjdN7CJ2cDPTx3ZBkzMgsXVYMkJ3o71C4E-0PpEYWGOluqwIwmoBtoTnw6zeXm2Uo4bzSVV_B8qZRYo5k2DcK8xXmn61jPG7ZNajs5LqpshJJ5ASz-YPZTIU5JsCgv', 'android', 0, '2020-01-29 23:11:29', '2020-01-29 23:11:29', NULL),
(327, 235, 'dRr9-qxLDMU:APA91bFmWxVcZPM3A6ATOSeSY7GvWivTNdOSZCHErroGV35f6-E0VbhfD142JB6XXswlU3pCq9WFF1FQaUE5W-khLP-swFBPKY1YVWIMNnl4Bo2bQrWTg1dGHDGqjcKYHVUY86vj9aX2', 'android', 0, '2020-01-29 23:13:58', '2020-01-29 23:13:58', NULL),
(328, 236, 'eCtLV2MTc08:APA91bEvVyTb3kZcuQPZ-sKDWFk7TavG7XwKDZ4hXH6RkzZojofvGGhxAQGDlqKzi00TIv26QNbOxeL7U1pRrxSeB-iJevvsUVjOYce7dpFxR13THNoHlYAt4R-7nmlMnyTw84HdA0hQ', 'android', 0, '2020-01-29 23:22:03', '2020-01-29 23:22:03', NULL),
(329, 237, 'eEPFgCdC4T4:APA91bEsiISwOOagALlU4WjQt1vX-EOYwhnIlr38G2vzG0B2LuF7-ZZi_wBPU96PZO-7Cx_hDdhdGg3XRLaPoPUQTapke30Vzu66HaSN2TPtoEnjwDgcqI_x8KeLpyqzHaAbsX43_gAt', 'android', 0, '2020-01-29 23:27:45', '2020-01-29 23:27:45', NULL),
(330, 238, 'fh2WCQ72DPA:APA91bGiT2weJMkt7ZgG88wF0CFi9wvLBpxuSnDCfmgNPTgOiJ89ggmNJHb8Yp-PlpQEZGX86Q-jV_ImDS2amlKDvziFuPWBcXtwI7ISTMI_Ojwi3zk7P3gK2gWCTKwXq1vONKVlbZwB', 'android', 0, '2020-01-29 23:29:37', '2020-01-29 23:29:37', NULL),
(331, 239, 'du64h-uWkrk:APA91bEbT6jjTq3HmxBUvNN1kF_7Usd32oNqxPqyYke4uHyGhnIloKv3NoGdwf-G5OX1ldBaZ_mZjfNT_ErEI8X5MaFbyXcJCs13XCGhdw0HA_0C6GLJYjZf0WyrSyzYamcOTGmvehao', 'android', 0, '2020-01-29 23:33:47', '2020-01-29 23:33:47', NULL),
(332, 240, 'elwUSC5XRtU:APA91bGecQYtFXSetbBHHLDcb8JZP-BZgyet_Y8Rv54fxIQuVRc2IAmkLQ3W5urc9I9CwIvKeMcEzKHLJjMgFqiJSIfdg0S_qKleDNGeyH3inZYHqz1WsN6eIdYUyP7-Rld68yrRJLzb', 'android', 0, '2020-01-29 23:54:38', '2020-01-30 00:02:25', '2020-01-30 00:02:25'),
(333, 1, 'elwUSC5XRtU:APA91bGecQYtFXSetbBHHLDcb8JZP-BZgyet_Y8Rv54fxIQuVRc2IAmkLQ3W5urc9I9CwIvKeMcEzKHLJjMgFqiJSIfdg0S_qKleDNGeyH3inZYHqz1WsN6eIdYUyP7-Rld68yrRJLzb', 'android', 0, '2020-01-30 00:03:08', '2020-03-08 17:42:34', '2020-03-08 17:42:34'),
(334, 241, 'dXKWUoOiOdM:APA91bEKxk20bwoMaL8ock7JL5Riv2sCeTr4PEJ8hlp9VF9EGlEWjm6bF7yFY-llYCtlXLgRqGQDxeQ-loJrCGVdU78xIf2qisdb0v5e67PKKrIo8oOZhD7m382PbxwLJMIhzuPTVf1k', 'android', 0, '2020-01-30 00:11:22', '2020-01-30 00:11:22', NULL),
(335, 242, 'c-BtRJ1sTRU:APA91bFYb4HRquxg5WVOzv2WLbmgLHPZdx-LUD1a4-BkmhTpOVWggIXJdOLlVizIov9YzrCg7SbEsnz7aDeSHfSq_YHGtQZrM4lQenInmKFgK7Hu8Nj_NooCdMY0q9D-PKIgHA8KX2a-', 'ios', 0, '2020-01-30 01:41:52', '2020-01-30 01:41:52', NULL),
(336, 243, 'fxZiXkNIano:APA91bHj0Q4O-lLfAfpWQYs39Hl9SoFk2xKXAf3wlWnsREkJiwQl4gQ3glQc57P8p-LfYkgnynYdhIipF_2Ggjt-98ILxtmat6o12yP3mxgr4anENNpopkYn0n380E3z6OjMHODDZE2T', 'ios', 0, '2020-01-30 01:52:15', '2020-01-30 01:52:15', NULL),
(337, 244, 'cZwWkB0j4e8:APA91bFtRf4Fg5HMskycFgJlFem_nfPygUFEOCrp8xURbtReudm9t_b7wJu-2abMC8uLPBkKwAE0Wc3sSx5CEuvu7qbJlqbTr83E0dJlsKpJ2hHGJh23PKwfXGnyYzVI23iRI2EA0VEx', 'android', 0, '2020-01-30 01:59:26', '2020-01-30 01:59:26', NULL),
(338, 245, 'cTs1WxmXYxE:APA91bGZlBm2wvAe5yzeZUh2cvh_hRUGU89YpieRYMH9pXxE6DfTHAOUr3HxFaLUfxaFVwUPV9OR8LW5tDcbRDy2LawW7r8U3xKmGiYPAGgL9JVqKd1-prnlbFU_Rj3IY7V_dtlIqR8y', 'ios', 0, '2020-01-30 02:07:03', '2020-01-30 02:07:03', NULL),
(339, 246, 'ewmhmtK-Vcs:APA91bG7krjfbN-7lPT4-deeUD5qeyJSw1OPxzCf3vdxwIXzpJqHYCJM_wJby92g5AK1ymzqIuAd65_nmx35PiK76aRm4fxEIhy6LAnneue1tSozwiN-xAIpM5kheylFh8whi6z0lRhJ', 'android', 0, '2020-01-30 02:10:42', '2020-01-30 02:10:42', NULL),
(340, 247, 'f2dMJeX7SYQ:APA91bHi2tFuba6qELQ6eHwRGsauafZWBzP2hasILzCJLy4FWZOC8cxiwlAqFZTsmWRUJlMsQ3NzyvSeSGWmBLtCl0AD4XBwwzo1hkN50UI4tfNcs6Fy1QGknbbh_-jUnVAfjq7D47-6', 'android', 0, '2020-01-30 02:32:46', '2020-01-30 02:32:46', NULL),
(341, 248, 'fEZ48jlUUJ8:APA91bGyVslwJK3QNM_hIW8e4vmw3SeXRCf90dZYohfeokAzqTErTH2Ax9r9rbuEBF7TCP0UiV32UfXGbX8Qa9EXHekES-DVJzwvLSkG7vP8zpbysMOd7lWmvgt89DNkcPx-L13_dSuI', 'android', 0, '2020-01-30 02:39:15', '2020-01-30 02:39:15', NULL),
(342, 249, 'ci4Q_-drY70:APA91bFIZaqdvvypdL-lAHiYLAnCVMtIbB0PjzDK86t2s-m-CHJRMOTWWse_FrukkBRaHrqhwjzMU_UtKkVRyt6hmRJrt8n48o4cSkWZYPS6noMOVV3uP5hrue9z9tl5yw7KW5FcFthg', 'android', 0, '2020-01-30 02:54:51', '2020-01-30 02:54:51', NULL),
(343, 250, 'fsWya1QykJI:APA91bFL9_U12G37IU_zFY0twh1JEpPFCg4x7njaiEujRLF29O6_iNT4Vui8D6Udr49syoUF_IsDfIBVJh-HZLsYFCtXs7JgnqGC2l3yFd3is9FoBNpT7DQN-rK7rSwKb5vOsBofahwj', 'android', 0, '2020-01-30 03:02:35', '2020-01-30 03:02:35', NULL),
(344, 251, 'c4R5t2H4RvQ:APA91bGP98zUEeVs7Z62fU2AhjGITy0O4bZNZ2XtmKT5IrCH6eMbKuCYhOgEGerbAPL7dphCyV4-5hNHdlvU1Ij6n-t2HVx4FuF_XXoOgp9VPcH3F1vmeqL8Jt3ZgI2AzMAKhbfdvzoW', 'android', 0, '2020-01-30 03:06:55', '2020-01-30 03:06:55', NULL),
(345, 252, 'fQ2xBdmeVmU:APA91bEIB-hUzxiLLSQbCdr7xt6907vdg9UwVuQ45_rNifX5iAysnquNf_21FruPoBEr7qdtXErvCtXEc6a4il7WeqiMYUVZvzLx3ZiRy8ZNn8akKG2tRJ-X8-fWJqIvGcHDcQeiOXl6', 'ios', 0, '2020-01-30 03:11:19', '2020-01-30 03:11:19', NULL),
(346, 253, 'cPhoXBI1It0:APA91bGc5rjHDeBLTWSErVB6KLka84eOzXam93KWwWyVOpNiSciVN_Xlx8CZV6NpJwDxq7RdLPCDfYzCsiCh0yoPNjzjeSq3WAKY3AlutRqmpLCOHQJ-G0N_k2L95VlTzZ2VclrSpXzT', 'android', 0, '2020-01-30 03:29:33', '2020-01-30 03:29:33', NULL),
(347, 254, 'fj8e6xYgex0:APA91bFhU7IDNKv0Lfd8WSF-6MNgvSbdhjNzvpGK1MfcBhmeMTQkmyt1McC9coO8d-arARnUNTZzzjFioIq7wG8GJtvIImyUqsMiG2qHih2D2qVku2FsP99vLgXekeW3flmc0TMA7zSa', 'android', 0, '2020-01-30 03:40:56', '2020-01-30 03:40:56', NULL),
(348, 255, 'fzrxT7Xi7RM:APA91bEcdok77yS9MISN9oY0As_Z0za1ac2x6l3TU_7-IC6plJH8XlInOt5ihz8nzdZTpGSfpBTUPzFO0gM__HmA8CRm4bzWacv_DAJnZTHXmeUi2nVu0ar0ZI4mk3bBKUY7ZTfeM1Hn', 'ios', 0, '2020-01-30 03:42:28', '2020-01-30 03:42:28', NULL),
(349, 256, 'evlrhp-OYgQ:APA91bFRZ_3FTXf-jFHElsF1b6-Px5g89vdOxuVUgQNYqOJFSAo2SlpWutKfUUJyh7D0KsIxUrdFHO_d-niQ6Mp2QBMjxiZ1_RYZylEKwcp5RFPNgSWgExNjEZBXZF6y8ghhEV56xyUO', 'ios', 0, '2020-01-30 03:42:49', '2020-01-30 03:42:49', NULL),
(350, 257, 'dsUhhiQt1KI:APA91bEeu7waRdkXU1FQLDHCJwL8t6N_AlMSH-ELyIiV_aU-A8DSZ9tWvdjJ2QiDVt1SiivFR5SZ9NKfQFHGrfBpQc8MegnLDSfrYcDbp0Ebrt3vWU1AtE1H-FnWB2eurB6EJWILFWZ4', 'ios', 0, '2020-01-30 03:49:13', '2020-01-30 03:49:13', NULL),
(351, 258, 'eQpzZ6DQWD0:APA91bE0AWUrraNEKhVWdXR56Acohyvul3G8VSAT4ktGav3YQ8vs21CGYwxl9l1OBzUhVGPG-qS11lGIn8Tzt5mpBH4uTmcr3xAAC65DxsSrtbJOAVKPm_PAGsLKpvSp9pPqlwGTk9it', 'android', 0, '2020-01-30 04:00:12', '2020-01-30 04:00:12', NULL),
(352, 259, 'dJy5qwKx1mQ:APA91bEoQ7-38D4lRAn7X9vekBvnccYBAt0CzddnJz1QUJWLB_h4o49kLm_2p4e_cyBgdzL3O4II4uedUvDOuDG5OQ7f1HpHNlM3AoijoYkhij-m2VuoIIEcSIBw8vCYKl9bfBcfN0pd', 'android', 0, '2020-01-30 04:05:38', '2020-01-30 04:05:38', NULL),
(353, 260, 'ee-NSnWvvhs:APA91bFGQ20mG2V4RX1vNIF-sXuPh9McUivjIrFnaxf2PzsZxvEuTTivINq4pz_a3T5ZbwhGdSERNfjcZnEywibgv8EFN2aDVrdVtumrpRmZaGHW4C81BOa-X2Uu2mrcMb8T9x4kQssI', 'android', 0, '2020-01-30 04:06:27', '2020-01-30 04:06:27', NULL),
(354, 261, 'dOj2-ZNSH5U:APA91bGqDCgnlDsiqyDm8EgNbfueHTEDs6gcZCTr9bFP6lImgxVBn5AQweCksXdCqNUYzyOZiZWxZVGZ8EHBMPrpJNv5cFV2d90H7Ytfrt9wJ6X7e02WN2vOUuMeeaLHcGEzlSh-qW75', 'android', 0, '2020-01-30 04:06:37', '2020-01-30 04:06:37', NULL),
(355, 262, 'coWYXDGDR5U:APA91bGGJ0f4FKYkOFLT7ht7hlQuNfT96cVwsUcDA7P-NhFbHaqtF6wVXj1xIIHFHTkvdkQ1fXVyYNeVL3PJjnrquB78jVUNjnAMD3zyERyNIv_VRpBl4C-uJIhH-_Gjj_SnY2EaOTO6', 'android', 0, '2020-01-30 04:10:29', '2020-01-30 04:10:29', NULL),
(356, 263, 'e8z_P0HZ8ac:APA91bFTWAoES1ZB3pxx1we90d7Q4NKL9XsMOHOoP_s31KcNBxL4Eg5VBLUm13nCKQEgX5u0sLcwxKXbpU8OAyq_twn_UEESG3rafs4vlwMkpsaMkPjUhFzJ5qeRW2HN7gPchPTfXyBv', 'ios', 0, '2020-01-30 04:12:17', '2020-01-30 04:12:17', NULL),
(357, 264, 'cXgwL-Fnk6Y:APA91bGRe5sViDvDcnmcKyLOrXowjcCErDDI9HEN5WbTY0NQ7m0dDVKb0gfFdjwojZBzHLtWuD4DLHJBwKmH8dDOQ5JQ7kjz0sbS0SoTzsd5TST9Jz3BnL71zB3HypKC-uLUQejHRiBP', 'android', 0, '2020-01-30 04:16:19', '2020-01-30 04:16:19', NULL),
(358, 265, 'd_elSZVKRn0:APA91bHvJ-uYL6RTnMhG3blDNa3psdfmDZd-ttVV1iRMBousyFeXFU6UwfCa1ocnhgARTEh29lQXkbt2uttrz81te72eBv_nAJ9X0omT2L_YzPCu9Kc_bfLML4L3R1ZUupwXdMZvpSK_', 'android', 0, '2020-01-30 04:21:41', '2020-01-30 04:21:41', NULL),
(359, 266, 'fAsLLw8WtSA:APA91bHw1kItfiJzPRwRPuDLmIdSSt1YxITk2IOu9kBP8XAGUF7PxCJkKJPSmwQSKxMDUGG5lxaiKFQ6efs4TlHSb-6wXkA9ByMF9TJtsLM46U0CWOBLdASfXxme1tCw1jyqufPqYHq8', 'android', 0, '2020-01-30 04:23:52', '2020-01-30 04:23:52', NULL),
(360, 267, 'eqYLdHxQj0Y:APA91bFHCFTmBpba3YJ0eDRhiUb96awAv-cReph8j5kenUuT3BfvWWA9yk8I3YciaOKnjZriOY0l_E5qiIXwxxMYxpENPo332ymrd4diBQEe7RQKpfJUzDWf_xw3OLcOwUxFCf2QgI_o', 'android', 0, '2020-01-30 04:29:42', '2020-01-30 04:29:42', NULL),
(361, 268, 'fN1eu4ytf0Q:APA91bH-qYOsJ8dteTD2WJr03iQh_8gjf_imD6_T0_OmkNaFYK_4oFqQORnWjX3UueAES7Y9oxNRmeNfiDKxjhKy10clgIsSCJvvXk4Vzql7xvRL28_xxScQDmVHw0N6iFpppqmlZmWT', 'android', 0, '2020-01-30 04:44:28', '2020-01-30 04:44:28', NULL),
(362, 269, 'eCztVOF8GNI:APA91bEVj_fzYu5vyTlXDJ99Dob44esUhPqT2xwHZ8OvWLYyIo8gNASO-My2bojlfKNsiACCVV6ouDW6ylkSVZRi7XrhlB4essfMYwrfv879Lsk_V26ddf0ueLFNxBbVohgXTNTUM4su', 'android', 0, '2020-01-30 04:47:47', '2020-01-30 04:47:47', NULL),
(363, 270, 'eWHO2ROD33I:APA91bE_CjtkQ0b-PzqKGwvdt5YWWyRaJOZ8AqoO-COugStJxuIw7d82gJH-4X6b-4sYkZ--a8kqL-K6cG6fbJgDL7blNGPrmTHlKKiPEGwDyz58krGjXiAVeT6ySSWG3MHGLoRXIiEJ', 'android', 0, '2020-01-30 04:50:18', '2020-01-30 04:50:18', NULL),
(364, 271, 'ftJf2qVuUjE:APA91bGqiI8qzY9H9G7KtjNb_QmftmUogZFlsdijnmD2I2VF-efzj_PQOlF_iumR7Lkvcj557lVOCbMDRwH3BHAbgR_gsKMKE6qgU85hyygrq-mm2impHjpdA9OB3qkkH6IA6fJzoL6Y', 'ios', 0, '2020-01-30 04:58:18', '2020-01-30 04:58:18', NULL),
(365, 272, 'cQnrNgL5lFE:APA91bEv-N8J_aOieNFYR3KEYo0gTUNxHZWEdo4u1P2qvRq-P94dxQoLwZ8VYQgydR6Te1sWdDxDcvJ-t05u_BfUnL_co43fOCi9LYm4mwZKweBhOxsUKoCCcA7qFiA40ifmfJnf4X8x', 'android', 0, '2020-01-30 04:59:34', '2020-01-30 04:59:34', NULL),
(366, 273, 'dGnO3SwnHQQ:APA91bG9MOnhTON3lfEsXRsnlCvDBKJ77BOhJURzXlI1mwwRenNbjVJ4BvLwBO0fBFNfnPiB37DNSaXhXTUyCzXsjN5-n-JY027yr_Ro_DyUtZtrj9e8b6r3dwodOknpUiPr1Yg6p5va', 'android', 0, '2020-01-30 05:35:18', '2020-01-30 05:35:18', NULL),
(367, 274, 'cX2126WX4LE:APA91bF3OgVdCM4ncrIYVX5UsOlBaLiCO89rT5Ug9rHOCyhaTgZcE-lde3TaJAkH-jatgA3GQVeINSIVdyCjIYyFjPRd8V-Vhqkt0mfjWgLOXuA8JzMi3R6KN_S2cTTZc9dDdeoLmtr7', 'android', 0, '2020-01-30 05:38:30', '2020-01-30 05:38:30', NULL),
(368, 275, 'ddx9RiotPQs:APA91bEd4zEUYm4Ftb-bZmuzNU6Vh3HH5z08u0m61AipqdcYyXmZWXIejMm0_FatM2iNuxazFHEWN4YtVvf_39-PCopB_wnToHXTv_9QEHshknTyLtyHq4VtOZ1YnqeTpNLDSiUNyPQR', 'android', 0, '2020-01-30 05:44:18', '2020-01-30 05:44:18', NULL),
(369, 276, 'fBTrYIAHKQU:APA91bHWuFcm_WYVvlT_Kpb21mZGFjiE6UBmvoX5tdvk68p0a6R5Jri3RW-nkYgnbe_zuxqxcc0rcDJ1XLJX89U6F9fdbiA8u8I48G3pf3QIBKI__tOetBLn-7cZ04O3GN2C9gX4vwDo', 'android', 0, '2020-01-30 05:48:09', '2020-01-30 05:48:09', NULL),
(370, 277, 'cCXCHevuxyM:APA91bEDS_EOy5kMy5Pj_V4k3cSiXNit_9WT3ekor28IFKKvKqrMViAB84qQLF8TSOi_zlNvcJQygT_46KbViwVjI9JH0sTRsnAaZ8YoDE5ApuQAEeNC-t-VdpVLQB8kqiRuaRtRCoJs', 'android', 0, '2020-01-30 05:59:05', '2020-01-30 05:59:05', NULL),
(371, 278, 'eD6LWqxrv7E:APA91bHOYfihstSkIGHODI5BGvE1Vs8uFgr2aPN1AzdwkuBmZMPz3uwRcoXVKwSvQEGynzno6aHBzygeDAt0c7Fo2E0TqlYQ1rXft49cARKhYI3pNCxQsLuourJkzFndOyoNBZOln3j-', 'android', 0, '2020-01-30 06:02:08', '2020-01-30 06:02:08', NULL),
(372, 279, 'dGYocAFQ_jA:APA91bHIEahW3KGnlCpmRFA7rX08Pz3xmJaoRHsPXTEcuje-CwQ_Tkl6qL3E9T1RB5azI7pKPFhTxRBVusNXp2H24LMPuEKY-C4gk9B89OEBlozFx5yZgqEG4r9yt7tn_EhyJnx2Y1OO', 'android', 0, '2020-01-30 06:08:26', '2020-01-30 06:08:26', NULL),
(373, 280, 'eqXtwTHw00M:APA91bGk6l1cj6TSvPl-EG1Mv82OmsrYoEi_MzBCKshx3IeJnYG_1-mcrFlKn_77Sw8M4IT602t_4CowPHMerWWEMiQpmMyfpvSYmiRdyOrG8JXjVzIHJDPCRq1sXr3AlziyBwzL8hCV', 'android', 0, '2020-01-30 06:08:31', '2020-01-30 06:08:31', NULL),
(374, 281, 'cA-aI4S8W6g:APA91bE4tdZpc8yFsY3uG0_N7qrFjWwgBplpEj-U3arqSDPh7CxJV4d9X1udEYMU52QGxuH8HCNKTvdzO3GfCVRMHN2aWOgnCA0Q20enTRis0-a9g6ETZiwmOz4JqGl0j3DO8jJTz3lq', 'ios', 0, '2020-01-30 06:12:09', '2020-01-30 06:12:09', NULL),
(375, 282, 'fXCz_UnwnrE:APA91bF-jESeqzLkZiOwcwohIJKO2-5mEMBJd7gNlgnuzq5AIKH1EKTI1k0f62esR2RQ7uLNhqtNsYV2czazg-sgmkVtRuwjIUBi3zKfzhZSvjHWWNkgZlyFKY4jBqgdzUD8HPsyplBd', 'android', 0, '2020-01-30 06:14:35', '2020-01-30 06:14:35', NULL),
(376, 283, 'cZqQsFZvQj8:APA91bEw7tZV9L8U8q2tH7B2nmxj-Ea7wlWhMsCFDOeoQCxHFe-LRiiJs_l0cCL57TjNsnv-vUax0N7Eq0Fk1Y6-zUUakmzGTX2HApFVHLeJd82kD2oxyhDj3G_YGE226XFguyJO7Vr5', 'ios', 0, '2020-01-30 06:18:12', '2020-01-30 06:18:12', NULL),
(377, 284, 'c-K1U6Evn38:APA91bEDiQDDAuMevfKzZT5W_68sLU055aJ4ZjHxWd4_PVRUmr81UIrzN1Nvv2-Qmf2GFFAkgDlyEW_kzUArgHOr3xTwzsEbuQkz_Zr5uwaVWfoRG2meWBSeZtJPKcwvHFQN79UHL06j', 'android', 0, '2020-01-30 06:23:27', '2020-01-30 06:23:27', NULL),
(378, 285, 'cB1G6qU-kLI:APA91bH0wddl_CbddKCVoA4EfrBKL0aYQu1jlmgokLd7b1eJdX_3FLm_TIH9td6K38OD5xTXE9woGgYCvTSh6SPFGO381D3xOCJiHFwy9xDUut9D-bX5qvuzkLUhK3ZK5j7sEhlMTI1D', 'android', 0, '2020-01-30 06:28:30', '2020-01-30 06:28:30', NULL),
(379, 286, 'cJMEjaZiXNk:APA91bFQM5FgULcYX5c7twENmpPm_sDaOz8MP-pH7zdY_3XT_JKxpbSEsoe5ObwIremNbF1doaZRJ01nTGFNv_OeXprEN0a1CP7jE2bIdIcMBub-Gfmgu-HsFcSD9N2NGrWj5RL1fYoG', 'android', 0, '2020-01-30 06:30:16', '2020-01-30 06:30:16', NULL),
(380, 287, 'daHaeK72oyU:APA91bGScmMf7dIWTytkbT0pqYdTl6haHvQrafr385YOlCPkDdMaiMK_MvrfBUooOiIub5B5urgoJjeB2vmgRDT49tXNKf5Udtpzaza3poE7Eb1_-aOsDo6yC08quyLX7R-T0zuKk73j', 'android', 0, '2020-01-30 06:46:36', '2020-01-30 06:46:36', NULL),
(381, 288, 'edrKeEBf2_E:APA91bFXCPXmFMJj73eJ0JfrEMBIGtHwS5eZgRdMSF-9fxPIGG7zyz6GAH2KEhH-8G-O_OeUkCD5dAEsdTk0UjLDDwCRSXar9c0fYcd_bTkPRudLsi8rCaT5MIZK0N1F6055cGsx4mXC', 'android', 0, '2020-01-30 06:46:56', '2020-01-30 06:46:56', NULL),
(382, 289, 'dlWNYcxAcLA:APA91bGr8y5ymIbywncHXuVSWaEj4q3z__AWQRXERmNcC2p_I34nAQ5jZahHplXjwb5PzHV8PR0BvyyVq_gCVDVPwQBU-Gq53vaKS7u9fQNKgT-o-LFaDbnCc8FCW13BblmAk73aaYkE', 'ios', 0, '2020-01-30 06:51:26', '2020-01-30 06:51:26', NULL),
(383, 290, 'etUNxHIt6E4:APA91bHZyHxUqprEUHY5gHEXk2ior7lu8EVIm_S96BSCh6dv8Z2TZPfZGD1yiDa5ZCID89gXO6co058VUYUwQ2cJvfuEk14dTdlp7ApMSdIzSvUmOvlGwRaAa3ynmhPpMEFQTpd9IGip', 'android', 0, '2020-01-30 06:58:35', '2020-01-30 06:58:35', NULL),
(384, 291, 'elRKSm5HzUc:APA91bEUMvvHKC69qsDEmhPBA2LYCmJ0IHLdfU0z5uPOp9kao0CwdPoPlVpS0NzVu-pff0Dn_yWyurbcnCx-MAlr4f9Bq-cs5XdBy-OzuF3zQz5VuiwsfLV0jh0zaT3OE_R8SIZSSeak', 'android', 0, '2020-01-30 06:58:50', '2020-01-30 06:58:50', NULL),
(385, 292, 'e6cK0bE3Vu0:APA91bH8LhdOa8RtTc3v1_Bzwe-FkaxehWytHioD74DmuilKj8pCPW7_IPgAT6ByOBc3nVhJc9lkrtrSWjG5mRysnQoCiHcVdPTTD-L-cVfDVcCEHwmOH7eRvp0KoBjZRdQ6x4paEdGm', 'android', 0, '2020-01-30 07:07:16', '2020-01-30 07:07:16', NULL),
(386, 293, 'fFUvJjowehk:APA91bE9Popqa9cil0m2ORplSaoD9oq4_7KzzG6e3vrgcDEnoK-oqlY8B4wztwvQFmxQ2pakUDadJh714da2xbOr7ac0kkO_fs8Csiw27wi5lx67gjUrtQgCCgFDDTr6UXtyMqfD_9ZT', 'android', 0, '2020-01-30 07:16:03', '2020-01-30 07:16:03', NULL),
(387, 294, 'cGcQirCXWlU:APA91bFR_Ml3rg9AwxnEu6WMTH6KPWpxYvvEs8kUrJWPD77pBiqKaWWSx0M6CExNivi1DaMBZ1heoK07cN9HRY-lwEM8bf819tCs50zvcrcxFbhOrH_4mvAmeEwevfZuB_0pvSuOiY3j', 'android', 0, '2020-01-30 07:17:56', '2020-01-30 07:17:56', NULL),
(388, 295, 'd7_pe3vMbQE:APA91bG21gplHJTYhhbMdGnHGnX5Du0rTebqHdnj7NOWmftQ0zENqftiYOwxnhuEFNOm24CJR6NUPcjvVR_t_JecwCtCccgnWTH4ydHCsOOVOZNJ1Gun3kWJErI_5ZtQcusmHiYAhkZa', 'android', 0, '2020-01-30 07:20:33', '2020-01-30 07:20:33', NULL),
(389, 296, 'c4BuVazB6YI:APA91bFn3_6bk7Tm91Pz5yBz_nTmQOjIrEWEYDBZGGUtF_W70djGMP7pHkrvMarW3kvMLEZDRA3UeN-XxQ-LDorxSqkq27tGnrzVQpQDYW4qMwprjo1XXHY3IytoLwIH4rWrU9DQci-Q', 'android', 0, '2020-01-30 07:24:41', '2020-01-30 07:24:41', NULL),
(390, 297, 'eX9lyoc3VLU:APA91bGWymhZH2IOa5hASI7tE4MTgul8mYEq96CbCNPORuwKcdH1CUn596oSD2iSzFayzuQE7NyGVluJDIwE64EgoW-heUMxnPk-ghzqUdxQoiqplNYYNcuieckYv6SQBxKXtLPzeVJk', 'android', 0, '2020-01-30 07:38:56', '2020-01-30 07:38:56', NULL),
(391, 298, 'fzwTxzme288:APA91bGUIRPMe6W5DSfcaSvH-9rTpzY9pNlAb-N8yyy-px8p_9fWM6WZuP8z0a7xd-yGJNKca07RnH8GjCYmq7PI4TCvMdft6wOQs1YVn2R51cc4hM2gQn5GKCi4DOl_4nVQiAnsc1Nh', 'ios', 0, '2020-01-30 08:06:31', '2020-01-30 08:06:31', NULL),
(392, 299, 'c1Cpa7EqezQ:APA91bEt-0rO2sQGCZjUJCf2tCx9RofhR2oz7AwhD3k48W7yV1IWUtlv4YWwaA_uXTANhMlhGauGbyEMwO4NNiWs03DLMZp4MbdkwULoryjlPPHNyW9XpgtLL1Oq-jblc4b5JI7m3wX9', 'ios', 0, '2020-01-30 08:30:47', '2020-01-30 08:30:47', NULL),
(393, 300, 'fiMY0dsdVoE:APA91bE53ISf6-MEsExp8rqtF0mJQcLfJtYNP7U2aFW9h9PSBeqCeyv2-ENA9MS8PmQPonErasCIj6WmevPUILRHoGtjCjLQaKS8oXEcb6nxrkw7CSCyMEcMfkNdxJPwK26H3tbfnaqN', 'android', 0, '2020-01-30 08:33:59', '2020-01-30 08:45:54', '2020-01-30 08:45:54'),
(394, 301, 'dXOFsgglmKg:APA91bECstAcaNgLU0yHausg2uO5XSE6N7qHaE2j5P9PUmbWMd2nusRbCCB-mYK2PVJODxKeCUZJHd0gd4mUy2XvCD1rxTPVJvbidZMGtZ3SDAjZZ_Py4hBtTF2VApgHw3VAC7B2jMxG', 'ios', 0, '2020-01-30 10:14:07', '2020-01-30 10:14:07', NULL),
(395, 302, 'emVvT21ty8I:APA91bGZ2iN9b2YUr0fZpcZvInYnAc7his9AbriA6pbEWvx6l5zfdIL0SX3Dyy1WnKh-Gc6i8g5K8au6b7XE84yaIP616J7xPBY6X_PcP5nskWK392e0rW5Aja5ICcDrljn0r-zlMuTe', 'android', 0, '2020-01-30 10:48:19', '2020-01-30 10:48:19', NULL),
(396, 303, 'dIItamM0ces:APA91bFidAEmRJ3zswyXsvNwdIMGUCIfzSs28H0j1keqRInT9SqYmHL2_0y0sP_HUMKcmfAe5wXQ1Nx7GKo7qyRDrdWCFM32VgoNJvqo-dgp-N66ff1bCEX8Mf_dQAz6X9UA_4gh3dux', 'ios', 0, '2020-01-30 12:59:46', '2020-01-30 12:59:46', NULL),
(397, 304, 'dViR0v2YvMs:APA91bH6UBLmgHvd3vLtk5dHcnxxKqUtdDu-HizJ6F6civPEsii-OJm2pMnmgMQsYoyAycSWOr3zYqkCbfW4bS5RxrafE06UnpHdlRpsWGePgW4FG_BPK5nGOwy9hjmiXPatgbq9IXVf', 'android', 0, '2020-01-30 13:03:29', '2020-01-30 13:03:29', NULL),
(398, 305, 'c-JGbf0HPcs:APA91bErGY2UMFnl4GK9gD-ir-DnbqVr0GZkfKdZwOwAID8xfmZGDWtaUukPThKFTBjerIvfsq2bXHW5nGjcmRRbIZ4kYVsmbU9K0RY5GNuKgDWaoGtA8TfWddWgxuz9gGZQPhjajG7N', 'android', 0, '2020-01-30 13:14:14', '2020-01-30 13:14:14', NULL),
(399, 306, 'cVhMGoaLTn0:APA91bESrqy3I2siJpkH0UQ0CfnBahp0jRg9-PM-WzYxKrDyjrBR0YKsT3UpevsWPcST1Bg4ZbSOm3M86K8P8M-2Bjr4p5jHzunByzqHz4M5MlW2Sx65v9qPRshxtXHB1dox3wuyp8h-', 'android', 0, '2020-01-30 13:33:34', '2020-01-30 13:33:34', NULL),
(400, 307, 'e2v8j_SKu28:APA91bGLczqlVO13e4utUq0_3e3SbqpK6vQ7vFDHnUn5G01iFiznyz-13wg-uqfyX-8hqxE5SltqhzqS5EAVDavyJZUTCR-fxrWK3jBk_4VZLY4zLIU8sbmpvUzcJ5wcqdFxyLancdL6', 'android', 0, '2020-01-30 13:50:53', '2020-01-30 13:50:53', NULL),
(401, 308, 'fFhnmjHsWeM:APA91bH-92s74u_BB2KX6qp85jnuhQk30Qi4P7aiYgJ_aEWxWpex7dMcGuYOyprOfjmqXvZHwvkRKw_6MZ9yEP0XyVpwl6hVM_D6nF30aYpgWfPMjzNK6CfR-Q-jhyaJSN9erkx97oto', 'android', 0, '2020-01-30 13:51:21', '2020-01-30 13:51:21', NULL),
(402, 309, 'cD1MqKRT8B4:APA91bFk6p7k8VfmtZfBKeFZ1Z1pfzr5UzbFrpmkWDoFTQW0dcTHNQMV12hcvyRMYHEWFnquHHCn45dQuaStNt6Y5yQJhL06KAIKpdeWQ_7jf0FsVUBib0zhgPTEwfqBZIyEeA5ISjuK', 'android', 0, '2020-01-30 13:53:31', '2020-01-30 13:53:31', NULL),
(403, 310, 'cf5N8k8N5uM:APA91bGHrVNclMbZdOiyn1EYL7Jb6BadXZCNIK61h8znQRfI3NFHRi1s_QvE3V-d_XXswAbX5UasI6dfy14Hq-dMOEhfV8ok4dDwHLPvH0lU7b3l1RxGuWNB9g9tgedT2bHSXX4p8X0K', 'ios', 0, '2020-01-30 14:14:15', '2020-01-30 14:14:15', NULL),
(404, 311, 'cBe6iPYEHSo:APA91bGGSdItonJUtiFwrQ0siJMVOz9SUyELqsq011ana5uSn02Kum75uQwnj4zcKY6ik6236fmWdlUoUyHyDIjsnUTvLNVUqTI-uEZCwSyXKAY5bwGiU9n9W_OG1SIoaGTZkf4-0gUs', 'android', 0, '2020-01-30 14:38:52', '2020-01-30 14:38:52', NULL),
(405, 312, 'fruaCT5vgfQ:APA91bE9zXrSHQYaJ68TuovME5n5Jwmq6sl7oUdOT6aOebZefbnp0YAU_9atGGPU6wVIQFZWMdJI939PIgX-aBhv9ds8_9OrH9csItk1-ruqL9ZTCHiUoufFQNsLQK0pVtHeQYWIY8Jj', 'android', 0, '2020-01-30 14:46:57', '2020-01-30 14:46:57', NULL),
(406, 313, 'eiYfzWHTsg8:APA91bHF_R4z1kYsx8RLscDMUB8VlHwsCdcU_QCTcDCZe0SSJ9Ot100RhnfiWvyBzN-BGmsHMC7TL1xx3yocfQfV6qkR6bkaENyoW1Rf81TSF_dsmIrr5jahSppevdSlqMt-1JaLE9hY', 'android', 0, '2020-01-30 14:53:59', '2020-01-30 14:53:59', NULL),
(407, 314, 'emh7CKPp5oU:APA91bFaYDQxDewI4tIzzIxhJMlZuo9PrnTUUI6yMRo4zr_opRbsaWmEi00iJp7N5bkxz0PGCU-WW1E3dnUzBFribypimHu-Wk-wcsY1sYlUj8hJulatQ6HMHcwPEXRAqoLdnFT88UIP', 'android', 0, '2020-01-30 15:17:45', '2020-01-30 15:17:45', NULL),
(408, 315, 'cg7AIZtYsmM:APA91bE0vr9E2qWXU5A1hUBVtIQupN6LQjAtU4u85qWCFyateWH7f2lZamowHmoxlHiBMCshkvMg8jUto0CLQZLTt_KkaejSDwVebZ_x14UqD8GY2gIT6pJBxnYYg4Th8mUy8wRjh4p7', 'android', 0, '2020-01-30 15:18:41', '2020-01-30 15:18:41', NULL),
(409, 316, 'efYQ2pr9Rnc:APA91bFwKvqIWRuwhj4AsTafpMn7ZyMk0tf-W5PEEoQxtCJovbpNcE94qJZdApqKK8hCE674kB5HD07v6lwjKY6M4s_sP8HO8xWfcPA8Uq2rY1NWDuqOGfkXJRSbUKPPUhaiSElTJ4RG', 'android', 0, '2020-01-30 15:19:07', '2020-01-30 15:19:07', NULL),
(410, 317, 'fS1Zn-fyUEs:APA91bGHbApUTb9k07z3A5Ifu5_RO7-2KeX4rLFZ1ofUW5Z2c3E5_VotQnfpqaNRiEW4Y95zChYgqLjUMGjbBIGcB02N-ibJqH6eWutpWlfCWZAaGCNeNJYQkMNi_MOc8-zx3dXgxroN', 'ios', 0, '2020-01-30 15:28:13', '2020-01-30 15:28:13', NULL),
(411, 318, 'fkmKwfTK9fY:APA91bGJdNlshvkoSrw6feAcv2TeejHGa54WoxZdKwbNtxIWzMkTcDJiHYBjqgFBNoys0pCHJPLbaTDRVCE-YJA9zfGLZdN7vw0pIOAbvxBI75n4PPdoFFdOasfVR6pWGx0q8coSEt4O', 'android', 0, '2020-01-30 15:36:09', '2020-01-30 15:36:09', NULL),
(412, 319, 'cNLoMA6BqtQ:APA91bFusRHRZ3YnNxdNIn0NkVeLAQkHKcw8JhkrRYDk_UuG4zZThQmb4Zs-9OrTyrco2tK3gT3VAqI0PLGl9SZi0qu-KfK049scMiwAUG29VEvQxm2U-7gLjfa5pguFxmuC99CP_NhA', 'android', 0, '2020-01-30 16:35:02', '2020-01-30 16:35:02', NULL),
(413, 320, 'fc-iFdSARis:APA91bEbx12uprtdsLQnzSpFvrRx8bz6y8LqOEBnBpcgPdnuWyBEPSQA5sq2V8NblBiQRUkPudukfI87_rheqa--RFf5hVv37rPgakFtAwe0DwqxrL8wmxpDFBRHDvL5rvqRui-lGlum', 'android', 0, '2020-01-30 17:30:20', '2020-01-30 17:30:20', NULL),
(414, 321, 'ex6j9cXjSLs:APA91bHkJbuOQQg12xrD9srPFYKaoxQxBvtFuh12CbQ46vTI3jtkTJk32Ac2XEREq_0T-Qdj2jIneL4eo7s9EPg8rA8LnEVsDmafmLn-jVXDEu1UJoZm_jI_nwa2bXKtK6XCV0iihQLs', 'android', 0, '2020-01-30 17:38:07', '2020-01-30 17:38:07', NULL),
(415, 322, 'exJBElC4V1w:APA91bGR1XZq8OCGUzNwqsvvyqSElejcrQ7wiWomqh6f4V86ejdePUFc6DBzMV4okYfm9WC4ql3nEMebsF7zZZ2ZMjbsWqnlk4Z1Az6RucOgT1WeL5XQV0nPpZ5gA552x9gdKfgjYXxT', 'ios', 0, '2020-01-30 17:38:55', '2020-01-30 17:38:55', NULL),
(416, 323, 'dEbgTCduAmg:APA91bFDpExcZpfqURJjnQDt1SLzp3juNjhDkI-oMhas_3Q-zSia_wwmisVaQAW3-6qfsHizkQWE0XIiC9JorusUioOmSdmbXAMXHsnXXzak8MwrjBIpTe_cjdyDEl3JkkUhykN8tkL2', 'ios', 0, '2020-01-30 19:04:51', '2020-01-30 19:04:51', NULL),
(417, 324, 'dqG_rbZ5u0Q:APA91bGNM5MFebTvWgwad70UsfNasmBQpZU0-Jr9NGRhDgi9sK04IuFBpzHHH88ZiHR4VlvapP4i9lnxzUEMYTb1NLvy9oF2fny8OncutGDnUmzxyQLZ7ri5JPBT8525Mmv062MfjEUr', 'android', 0, '2020-01-30 19:31:08', '2020-01-30 19:31:08', NULL),
(418, 325, 'fuZ-hR8kwg4:APA91bGhSonaBrZgNuR9AT_cvfuTcrxCfTnxpqYOD3XgMKBh6BoYdx-ZkfCcF3bCfVEOJMf8vLsJXC4SIN9znik_PoOhzikO3mjlMCHTnROlnbbGBh9q5Ou55rqxPpNyA2MXSDooJAFz', 'ios', 0, '2020-01-30 19:35:47', '2020-01-30 19:35:47', NULL),
(419, 326, 'cE819bpe1_Y:APA91bHVUvQfJqb0Ctl7zN-uem7aHql_qBhDZysSH9boD3Jh_FeSzkY1wz4-i--uhzWB6KuV0lNgD8J8fDvEh4UVq3gFVC7q97hsSSiMMkjY9zr7Rr1HYbp9r8EckLINaGN6ZGCInviL', 'android', 0, '2020-01-30 19:55:19', '2020-01-30 19:55:19', NULL),
(420, 327, 'e1MjgAZgeqc:APA91bHdE3ciGSVClJF0CxRTTPGvon0nfiVi8_X6SlL-Gh-PsJBSYXgWxFZXAooySjrYqNa8YsPfbfFHX_N5R7nNmrwkTK7nzcGHMwDaBY8T1kLZrs6_WeoeUIJTupbY_w0Mqn46K_31', 'ios', 0, '2020-01-30 20:02:19', '2020-01-30 20:02:19', NULL),
(421, 328, 'eLIl0QmBkms:APA91bEIJwQovcRBqEysWPvxsvZUc1DdOq4NvAUuHT9qH6trwK8fcLWM_27Gx074AAb-1YE9fc4zDfzzLgQ-7YIbHXz8i1qBRELhHeK6jnAISd4whVf-ttI9zZtLUYo781qnHKq5B5O-', 'ios', 0, '2020-01-30 20:03:53', '2020-01-30 20:03:53', NULL),
(422, 329, 'dR991tQJjtE:APA91bHpC2TOtiwmYPLbIps9Pcf3pt4tuopdEsAhlJ5fMNC_yQrlYUPuewE9sIE3YKUz05R5grCxvklAeI_cladIN1BLQoCmLW_bysPBpAmi2B1lEznLPdjpOY_K9AfgrbHgyNsY1p94', 'android', 0, '2020-01-30 20:13:17', '2020-01-30 20:13:17', NULL),
(423, 330, 'eYvWKc_gmnI:APA91bFSeaWPnl2IjaUVelXuBT3ywsBb0uI4wpZEWhHqdt_uhlSGiEAcSeGkTXtR47oHGLojVbjwAK30UR_mhXJeaJt6TrGndPABzwovDgYpsyV0n5GpbPsJwpNa6FQKOtDgAmFzS0Yp', 'android', 0, '2020-01-30 20:27:04', '2020-01-30 20:27:04', NULL),
(424, 331, 'efyn9XkE0E0:APA91bEiRUuUnnybhWkG0sscQ4aDzRnGqNI2Hu-O8-lG0sIN_6Pvhkusg5fJX8LqpO5J0FTYYpejoIArCo9lsgdi1GaV5zjChN41wS7qg7E8jBJPmi4p2Jmx44bSRQeCoW-RMvnjQu49', 'android', 0, '2020-01-30 20:39:07', '2020-01-30 20:39:07', NULL),
(425, 332, 'ckt5OZ0AB98:APA91bFYBBDiG5s19vkpVQUdwkG_0VMB4AT33mtsy4lE3VM8cnp8cdH5dPxLYf2ZIrZSAR8S_xRwK7OvpE_4EFkmEmMsvxeZ0jsYB206PrBir0jU_UyGzRjHs3FF3lFNn1t84qbCugHu', 'ios', 0, '2020-01-30 20:43:55', '2020-01-30 20:43:55', NULL),
(426, 333, 'cX_vPFqgrjo:APA91bE_NDB4-kL_BmpbokWmoEzLYF15xGLJ7lELr5VW64pvUf92j-CW_ZaE3H9klDuQay5qtIYF4URofCqhgP4PWUtoE3_3G18T3KHZ7ApWp276yxwOPsu0elXUW-xgOQo58qqKGF86', 'android', 0, '2020-01-30 20:47:45', '2020-01-30 20:47:45', NULL);
INSERT INTO `tokens` (`id`, `user_id`, `fcm_token`, `device_type`, `accept`, `created_at`, `updated_at`, `deleted_at`) VALUES
(427, 334, 'dSrc1cpy9J8:APA91bEFRVNb05GrOH0_s1JzhfWSkDDjmhw9DDslRtjYJD-opkmfGYhRD4RG0WCflz5oJtVFXfvJjS_BGSDIKFjW_5rp_sKAr1RUMsUL8n0hKft4gI8h1E7zjmGHG8HQzCaehX4UwWtt', 'ios', 0, '2020-01-30 21:04:00', '2020-01-30 21:04:00', NULL),
(428, 335, 'fddAajuk0e4:APA91bElnUE0qVd5iox7SNirFsI374WnFGOFnenV8ne-HEmciYaXIXtI6_4GVXbIG_Pyqs2IXIi3Utgk2ZoBU4ut8nDGQCVvv48XnW9QzruVdFKFtbarTV01WtIMQMNijKoKYw1vZQMJ', 'android', 0, '2020-01-30 21:06:30', '2020-01-30 21:06:30', NULL),
(429, 336, 'cUPHk-UVlnU:APA91bG9zvd9N4nDVnaSyMu83EqD-8H-a_Df92ekIqXrBSneK5b_c_f3VE-NP_f13bpAfmIb_gOl07qqrJ2E6P8irB8Xyr2gZErHbqnuPjvlBYAxSWl6JQgyB-hSv_k_sDAKdDNrvAyE', 'android', 0, '2020-01-30 21:08:28', '2020-01-30 21:08:28', NULL),
(430, 337, 'dJXOa50Px84:APA91bHNTCQnrYrKkWDTnmdUvTWxuXC9WgLa6-aqOWCcL8rry26d97sRxNSdlGBF5HdELsfagLIDBUYUH9fWvzP8UsPazt_fm87VMgdCDzTypU-okDPw4LlEjPF-mOJ0FJDrkUheaApa', 'ios', 0, '2020-01-30 21:11:56', '2020-01-30 21:11:56', NULL),
(431, 338, 'cocMF81vbeU:APA91bHNvDidYMm8pCPJ5odPcz8NGOZIO-RHR6eCVETvoWOrEhoGH-yYRDeFmpEgUHcutHLic516-dFzbT1nHuuCBbxiEwgqQyEWoXUkcbtr9vs7_sh4Lr3c_I_SvtjZ_TtjdihSbUmL', 'android', 0, '2020-01-30 21:26:17', '2020-01-30 21:26:17', NULL),
(432, 339, 'ccHNwMPFaJg:APA91bGDSR3Pw8_8sAkfuM-uD-uitk4XpbPN2BGLg41tdLI72K-YEwduP6sXI4ZHEvG3e6CTOcXmb85izBqekb2LOTXOcJV5RenYyfMkXb5hfsEgpJMoe28zbWJ-fuR0i6NEDHhdN0nk', 'android', 0, '2020-01-30 21:27:44', '2020-01-30 21:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `type` int(11) DEFAULT 0 COMMENT '0=subAdmon 1=user , 2=employee 3=Supplier',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `image_profile`, `password`, `remember_token`, `status`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ali', 'user@gmail.com', '0595000', 'TAz8VbsqANOiyaK15102011588672889_6271255.jpg', '$2y$10$Vbtvl8V6a1.QAoQ/qbIPCeSqUZsNofqJuGtbsb5pw6aBC/QHfyzTa', NULL, 'active', 2, NULL, '2020-05-05 20:01:30', NULL),
(2, 'موظف رقم 1', 'emp@gmail.com', '1122365969', NULL, '$2y$10$g7QLmlghGEFSXyy1tMG8MexwQm5KgfsBbCk2HXhV4ZmlD.77F0WgG', NULL, 'active', 1, NULL, '2020-03-12 16:26:23', NULL),
(3, 'موظف رقم 2', 'employee@gmail.com', '112236588969', NULL, '$2y$10$g7QLmlghGEFSXyy1tMG8MexwQm5KgfsBbCk2HXhV4ZmlD.77F0WgG', NULL, 'active', 1, NULL, '2020-03-12 16:26:05', NULL),
(4, 'راغب', 'executive@number1.com', '500500500', 'A8VIXuR0OLMMS1u82055771583997927_9595162.png', '$2y$10$Y5Jg6LQR/SlXISCLvca1P.mB.ILyHiV1ZgB6i0EzJFsPWmbe1OIvq', NULL, 'active', 2, '2020-03-12 16:25:28', '2020-05-06 10:05:59', NULL),
(5, 'Nizar', 'Nizar@number1.com', '0796966998', 'Q8xbi7RjJDJ2gbU96787781584029408_7123185.jpg', '$2y$10$v1fKJaD0qNViZ4W1rA9ujuIhx2Bsh3z1AdRAX0Cr8LThNEgHrbfpS', NULL, 'active', 2, '2020-03-13 01:10:08', '2020-05-07 09:53:54', NULL),
(6, 'Abdullah', 'Abdullah@number1.com', '0785444418', 'N4CqHnvWtW0IU9N82641891584029475_2910795.jpg', '$2y$10$hlCstDKyRjaoATdT8m9qUux5qcx4c.9Hz1MSiMPZxBobo645FLRHK', NULL, 'active', 2, '2020-03-13 01:11:16', '2020-03-13 01:11:16', NULL),
(7, 'Mohammad', 'Mohammad111@number1.com', '079566070', 'PLR6fAV1VQefISf19261791584307863_5219265.jpg', '$2y$10$OXo0UPxawpckbhkFZ9UHTOU3esGcXRwydRKKyluk23dBmJZGCkpjy', NULL, 'active', 2, '2020-03-16 06:31:03', '2020-03-16 06:31:03', NULL),
(8, 'Saed', 'Saed@Number1.com', '0799999999', 'Hv4ozCAujLv0gyg85578671584307926_4083631.jpg', '$2y$10$86hljV4Dy6FlOHwK/WEW4uAeVIBY96lsWAG32umT5/Af42Ev0w1eS', NULL, 'active', 2, '2020-03-16 06:32:06', '2020-03-16 06:32:06', NULL),
(9, 'Hamzah', 'Hamzah@number1.com', '0777777777', 'TL144pm2watlfio19177351584307968_4637691.jpg', '$2y$10$Ot8Uw6lyTV/JfEQw24sGD.kY.aCOS0YWLZYc6xkWsGSKlp7jHQU/C', NULL, 'active', 2, '2020-03-16 06:32:48', '2020-03-16 06:32:48', NULL),
(10, 'صاحب المكان', 'Yousef@number1.com', '0544999967', 'Q1x6ZxOTDl1bTCr88466891584308046_2066195.jpeg', '$2y$10$YZGACzHghecSEl3TmkRC.uFUf49Ytkim.JzZ.VuQn0f1D2Af6QKAO', NULL, 'active', 3, '2020-03-16 06:34:06', '2020-05-28 19:45:56', NULL),
(11, 'Ali', 'ali99@gmail.com', '5566998877', NULL, '$2y$10$6de2MaWaEmrRm4gExUDYv.ztq/snxKjhgsAlyBFHkv/4jUA3dxu5W', NULL, 'active', 0, '2020-03-17 22:13:20', '2020-03-17 22:13:20', NULL),
(12, 'Ali', 'ali999@gmail.com', '556699887700', NULL, '$2y$10$UWgB8DK1GwCAnFdeRlg7VObo82u5J3foPBvtwVoZlUXxIn6KViIVS', NULL, 'active', 0, '2020-03-17 22:13:55', '2020-03-17 22:13:55', NULL),
(13, 'مورد زيت', 'oil@oil.oil', '321456987', 'DmRJpk9OaKuGaY111082111590574055_7170595.png', '$2y$10$wNopFgYdRUdT1AOnTGbbPedh51QbrcXnQ51Vt4BBvwp2dYrteQG2e', NULL, 'active', 3, '2020-05-27 20:07:35', '2020-05-27 20:07:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `permission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'users,categories,products,orders,cities', '2019-12-03 13:59:28', '2019-12-03 13:59:28', NULL),
(2, 3, 'users,orders', '2019-12-03 14:04:56', '2019-12-03 14:04:56', NULL),
(3, 4, 'users,categories,products,orders,contact-us', '2019-12-04 11:43:29', '2019-12-04 11:45:38', '2019-12-04 11:45:38'),
(4, 4, 'users,categories,products,orders,coupons,contact-us', '2019-12-04 11:45:38', '2019-12-04 11:46:26', '2019-12-04 11:46:26'),
(5, 4, 'categories,products,orders,coupons,contact-us', '2019-12-04 11:46:26', '2019-12-04 11:47:43', '2019-12-04 11:47:43'),
(6, 4, 'categories,products,orders,contact-us', '2019-12-04 11:47:43', '2019-12-04 11:48:49', '2019-12-04 11:48:49'),
(7, 4, 'users,categories,products,orders,contact-us', '2019-12-04 11:48:49', '2019-12-04 11:49:38', '2019-12-04 11:49:38'),
(8, 4, 'categories,products,orders', '2019-12-04 11:49:38', '2019-12-04 11:51:21', '2019-12-04 11:51:21'),
(9, 4, 'categories,products,orders,cities,coupons', '2019-12-04 11:51:21', '2019-12-04 11:52:21', '2019-12-04 11:52:21'),
(10, 4, 'categories,products,orders', '2019-12-04 11:52:21', '2019-12-04 11:52:21', NULL),
(11, 5, 'users,categories,products,orders', '2019-12-04 11:53:08', '2019-12-04 11:54:11', '2019-12-04 11:54:11'),
(12, 5, 'orders', '2019-12-04 11:54:11', '2019-12-04 11:54:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_translations`
--
ALTER TABLE `ad_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calibers`
--
ALTER TABLE `calibers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languge_translations`
--
ALTER TABLE `languge_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `oils`
--
ALTER TABLE `oils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_translations`
--
ALTER TABLE `permission_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_translations`
--
ALTER TABLE `question_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
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
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ad_translations`
--
ALTER TABLE `ad_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calibers`
--
ALTER TABLE `calibers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languge_translations`
--
ALTER TABLE `languge_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oils`
--
ALTER TABLE `oils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permission_translations`
--
ALTER TABLE `permission_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_translations`
--
ALTER TABLE `question_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
