-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2023 at 01:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayyemek`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(6, 'Ana Yemək\r\n', '2023-07-15 01:04:02', '2023-07-15 01:04:02'),
(7, 'Qarnir', '2023-07-15 01:04:59', '2023-07-15 01:04:59'),
(8, 'Salat\r\n', '2023-07-15 01:05:04', '2023-07-15 01:05:04'),
(9, 'Içki', '2023-07-15 01:05:08', '2023-07-15 01:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food_img` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `kcal` int(22) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `plan_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_img`, `title`, `description`, `kcal`, `category_id`, `plan_id`) VALUES
(7, 'salmonfood.png', 'Salmon Salat Ilə', 'With only 5 ingredients, these black bean tostadas are the easiest and fastes You can always include additional toppings like corn salsa, avocado ranch\r\n', 500, 6, 4),
(8, 'salmonfood.png', 'Salmon Salat Ilə', 'With only 5 ingredients, these black bean tostadas are the easiest and fastes You can always include additional toppings like corn salsa, avocado ranch\r\n', 329, 7, 5),
(9, 'harika.jpg', 'Harika 250ML MANQO', '250 ML', 125, 9, 6),
(10, 'sezar.jpg', 'Sezar Salatı', 'ləziz sezar salatı', 600, 8, 4),
(11, 'zucchini.jpg', 'Zucchini ', 'ləziz Koreya mətbəxinə aid qarnir', 222, 7, 6),
(12, 'dolma.jpg', 'Dolma', 'delicious Azerbaijani food', 203, 6, 5);

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
(5, '2023_07_05_215754_plans', 2);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `plan_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `price`, `plan_id`, `created_at`, `updated_at`) VALUES
(1, '3 günlük menyu', '30', 4, '2023-07-21 14:49:23', '2023-07-21 14:49:23'),
(2, '10 günlük menyu', '50', 4, '2023-07-21 14:53:36', '2023-07-21 14:53:36'),
(3, '30 günlük menyu', '120', 4, '2023-07-21 14:54:07', '2023-07-21 14:54:07'),
(4, '3 günlük menyu', '999', 5, '2023-07-21 14:54:38', '2023-07-21 14:54:38');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'API tokenRaul', '70b1b0b0eb9b3c712a45c600c352f5d3289dba6cf92feba2905d12a50e0518b4', '[\"*\"]', NULL, NULL, '2023-07-06 18:44:56', '2023-07-06 18:44:56'),
(2, 'App\\Models\\User', 4, 'API tokenRaul', '636bcb72a0b929b9c93bf326461ced0a14641f6b356af7736bf19b97dd578b5a', '[\"*\"]', NULL, NULL, '2023-07-06 18:46:08', '2023-07-06 18:46:08'),
(3, 'App\\Models\\User', 5, 'API tokenRaul', 'e2f08d9e807c4f875ea3aefd497a27e595ecf141fd8b6ff65fdcf09ef8a934f6', '[\"*\"]', NULL, NULL, '2023-07-06 18:46:42', '2023-07-06 18:46:42'),
(4, 'App\\Models\\User', 6, 'API tokenRaul', 'd3b27d98d74f0bffe28fe98a98beaaa292248a30335efdb600f658d5f481cd9b', '[\"*\"]', NULL, NULL, '2023-07-06 18:47:08', '2023-07-06 18:47:08'),
(5, 'App\\Models\\User', 7, 'API tokenRaul', 'ad0d00691535bb88b6614dfced16ae2d009d47688fca643015c177aa69187180', '[\"*\"]', NULL, NULL, '2023-07-06 18:48:16', '2023-07-06 18:48:16'),
(6, 'App\\Models\\User', 8, 'API tokenRaul', '5515cc8ad017f158c20cd5d157c739e27037ade0086c744ae17169be00b7f747', '[\"*\"]', NULL, NULL, '2023-07-06 18:50:00', '2023-07-06 18:50:00'),
(7, 'App\\Models\\User', 9, 'API tokenRaul', 'dde6b27b43e2afdaaa33849237e77807f0aed7968458d4ba51b622bfb6caf86a', '[\"*\"]', NULL, NULL, '2023-07-06 18:50:29', '2023-07-06 18:50:29'),
(8, 'App\\Models\\User', 10, 'API tokenRaul', 'bb14fa0468bc3d0cb52948ef808bed6bb342b240db5c01d8aee4d282ee3e2d87', '[\"*\"]', NULL, NULL, '2023-07-06 18:52:34', '2023-07-06 18:52:34'),
(9, 'App\\Models\\User', 12, 'appToken', '4cc4f065db00393926879619ffe560b1491db84cdf0b4e00555aff7d81762c24', '[\"*\"]', NULL, NULL, '2023-07-07 10:27:07', '2023-07-07 10:27:07'),
(10, 'App\\Models\\User', 13, 'appToken', '3300e2e28984ae952bf05b044117445bdfc476959a1c8590660cf802577e2609', '[\"*\"]', NULL, NULL, '2023-07-07 10:28:46', '2023-07-07 10:28:46'),
(16, 'App\\Models\\User', 16, 'appToken', 'a9c7f5637901211f84d9658a8312bd27e11717e93286a8ecfa5f18872c8e5e89', '[\"*\"]', NULL, NULL, '2023-07-07 13:00:22', '2023-07-07 13:00:22'),
(17, 'App\\Models\\User', 17, 'appToken', 'ffcad63f51840aed0a7a8f519597382c7afe2e8c15e0bd7a0ee2eb2120fe2439', '[\"*\"]', NULL, NULL, '2023-07-07 13:05:43', '2023-07-07 13:05:43'),
(18, 'App\\Models\\User', 19, 'appToken', 'f042d0e1cd0eb93fc95c8cbb91064225fccec83b02a5df162f5bc4f30fbd3d17', '[\"*\"]', NULL, NULL, '2023-07-07 13:05:59', '2023-07-07 13:05:59'),
(19, 'App\\Models\\User', 21, 'appToken', 'ed5b3e899030a90e2c39685f27aa4e329d37ec6db28ccec4e94a24068801e77c', '[\"*\"]', NULL, NULL, '2023-07-07 13:06:14', '2023-07-07 13:06:14'),
(20, 'App\\Models\\User', 23, 'appToken', 'c7a755030daa6ca292f20041eab559fbb4c69d7e336ae6535b675e7a8df0864d', '[\"*\"]', NULL, NULL, '2023-07-07 13:11:19', '2023-07-07 13:11:19'),
(21, 'App\\Models\\User', 25, 'appToken', '9de5ace5126ba6371f38f9f3296e2c0efb728bc276c360edcd7a4e8253062cff', '[\"*\"]', NULL, NULL, '2023-07-07 13:11:39', '2023-07-07 13:11:39'),
(22, 'App\\Models\\User', 26, 'appToken', '0d976e11034685b3410264e8ceb461be5615c90ea42a8e875cb158502fd44b7d', '[\"*\"]', NULL, NULL, '2023-07-07 13:15:34', '2023-07-07 13:15:34'),
(23, 'App\\Models\\User', 28, 'appToken', '98eff790d78ffe81fce66c7dd5b487e7984e77ec6b2cba86d688898e2a307da0', '[\"*\"]', NULL, NULL, '2023-07-07 13:20:24', '2023-07-07 13:20:24'),
(24, 'App\\Models\\User', 14, 'appToken', '9ee7f39d093ac4cd8e91a4f06d4d0fe69ca4bdc88cc8ae9fe65024dec64226cd', '[\"*\"]', NULL, NULL, '2023-07-07 13:29:02', '2023-07-07 13:29:02'),
(25, 'App\\Models\\User', 14, 'appToken', '35bdcfee59ca2ffcc459a3688bf83c977c590ba1ca32cf1b23d399e17a304a41', '[\"*\"]', NULL, NULL, '2023-07-07 14:43:11', '2023-07-07 14:43:11'),
(26, 'App\\Models\\User', 29, 'appToken', 'ae47936e80ba0f8f21fd06248a34509fb782a730d2b6af5af3c1ab189608ffcb', '[\"*\"]', NULL, NULL, '2023-07-07 14:57:15', '2023-07-07 14:57:15'),
(27, 'App\\Models\\User', 29, 'appToken', 'bc802d1348f20011ab4a4332cee75531761305ac82e5e5c318022c4a6f4d785a', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:35', '2023-07-07 14:59:35'),
(28, 'App\\Models\\User', 29, 'appToken', 'b7524cb9a719f0536f7d0c9339c081c3b911c0c276791045c2d0223f3eabe31b', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:38', '2023-07-07 14:59:38'),
(29, 'App\\Models\\User', 29, 'appToken', '4727d59e4ceae62500725c630df62c6a45d22385d0d5e40c473160ffab6afce7', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(30, 'App\\Models\\User', 29, 'appToken', '5b2ee3526483c15ab078337059e40dde69ac0e17608fa9c7966eb3d694736a63', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(31, 'App\\Models\\User', 29, 'appToken', '9a2be0fc217f9802d93750c7becec3db97fa4f03075edd9ba4418bae88fb5e24', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(32, 'App\\Models\\User', 29, 'appToken', '65240e7093990474a4eebd5befde32d95abc634ce637ce2428063b728a35e08a', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(33, 'App\\Models\\User', 29, 'appToken', 'b875b0aede4ab82dd358a8a05881119a75e4245225297cbb13280c32fbc01139', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(34, 'App\\Models\\User', 29, 'appToken', '10360ae29d41c53527e6167f42f754aea84fda1a30c5764ea69fc838a76fcf33', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(35, 'App\\Models\\User', 29, 'appToken', '6ba75dd497d39bd877c043cd384966506961ad3fb296cf6dcd09103db9d3e446', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:47', '2023-07-07 14:59:47'),
(36, 'App\\Models\\User', 29, 'appToken', 'a6cb5487d39257fd0d55b51d549c121714d2fc77e7dd5b24516b65099b20450c', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(37, 'App\\Models\\User', 29, 'appToken', 'f50ca66f87a3a6f4b296177a49ac4440aedba4d16958d5f5869f098598e9c402', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(38, 'App\\Models\\User', 29, 'appToken', 'f5f9e343f82e70bdc0b0bc8baf5f8e908cddcc2ab025d3c62b15b792ec081576', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(39, 'App\\Models\\User', 29, 'appToken', '28588b873c45a2bba26e557e70f0a5ea1dc4bdbd88f0a1676aa7aff684055bac', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(40, 'App\\Models\\User', 29, 'appToken', '144c000582fe9f104a01040ed946ef96a567fccdd0ab6eff281b5948d89849da', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(41, 'App\\Models\\User', 29, 'appToken', '5203acdcdfbeda941afa189f2b8b6d60deac512962601e9d48c8ef28422f0b1e', '[\"*\"]', NULL, NULL, '2023-07-07 14:59:48', '2023-07-07 14:59:48'),
(42, 'App\\Models\\User', 29, 'appToken', '7f63a2fe67570db867b1cd98ae58c38189030d382dd1441d650541ee23fca156', '[\"*\"]', NULL, NULL, '2023-07-07 15:01:16', '2023-07-07 15:01:16'),
(43, 'App\\Models\\User', 29, 'appToken', '12e8ba494d70c9b9589b71e5370322d264d716d10c8d1fe92ee0629e2cb0fad6', '[\"*\"]', NULL, NULL, '2023-07-07 15:01:17', '2023-07-07 15:01:17'),
(44, 'App\\Models\\User', 29, 'appToken', '067a97fc297045d254ddd3e9966967ece8df36761ab6fbe7bb715164adc248ea', '[\"*\"]', NULL, NULL, '2023-07-07 15:01:37', '2023-07-07 15:01:37'),
(45, 'App\\Models\\User', 29, 'appToken', '155549ceea877bd792a345edce32a22e82eea7ed73ed5a19a49b0142b0c5913a', '[\"*\"]', NULL, NULL, '2023-07-07 15:03:18', '2023-07-07 15:03:18'),
(46, 'App\\Models\\User', 29, 'appToken', 'dfc38ef2f98303ed0e9d3a73b32357be0d8b6fd8ab361da9204166e95f9dc1c8', '[\"*\"]', NULL, NULL, '2023-07-07 16:21:53', '2023-07-07 16:21:53'),
(47, 'App\\Models\\User', 29, 'appToken', 'cdef6559514b78b06cf81b0cd2a4bacfbc8068680f9d2c8ede375916b58b60b1', '[\"*\"]', NULL, NULL, '2023-07-07 16:26:30', '2023-07-07 16:26:30'),
(48, 'App\\Models\\User', 29, 'appToken', 'e0e55e90d3ee4853b084ee56b5643603bcce7b3c87bac1e37b1223a899a5ff68', '[\"*\"]', NULL, NULL, '2023-07-07 16:27:16', '2023-07-07 16:27:16'),
(49, 'App\\Models\\User', 29, 'appToken', '583bd02b858b35b0a8a92a001c5118b6d7236755a962ed53778c9b9eff1162ac', '[\"*\"]', NULL, NULL, '2023-07-07 16:27:41', '2023-07-07 16:27:41'),
(50, 'App\\Models\\User', 29, 'appToken', 'a4661f2e3745d7f238e44919da820f5b7b1d2131316ee63aeec3e9d18e1c8632', '[\"*\"]', '2023-07-07 16:28:45', NULL, '2023-07-07 16:28:17', '2023-07-07 16:28:45'),
(51, 'App\\Models\\User', 29, 'appToken', '459d207b22d6e09fcb41804d01e222c6210c12a2221fb8859bebfd354534c0c6', '[\"*\"]', NULL, NULL, '2023-07-07 18:19:26', '2023-07-07 18:19:26'),
(52, 'App\\Models\\User', 29, 'appToken', 'a77e82c6bb5522f64b52f93ee2f67a0362aa691bf91fcb8a3bcb2dbb4e614ab5', '[\"*\"]', '2023-07-07 18:21:18', NULL, '2023-07-07 18:20:42', '2023-07-07 18:21:18'),
(55, 'App\\Models\\User', 29, 'appToken', '45cffc1613e337249d9b1a4e6b4ba1dcf83b2b3044b7579deb7d25a24f9c397e', '[\"*\"]', NULL, NULL, '2023-07-16 06:32:09', '2023-07-16 06:32:09'),
(56, 'App\\Models\\User', 29, 'appToken', '20a557a0532ee201627c54f5e6a63df1e08dc5d857ec3d7bf509b0736981f33f', '[\"*\"]', NULL, NULL, '2023-07-16 06:32:16', '2023-07-16 06:32:16'),
(57, 'App\\Models\\User', 29, 'authToken', 'd3b6ca3217d4585fba52c56403c04528e7a510faa273fd6549d901743dfd508b', '[\"*\"]', NULL, NULL, '2023-07-16 06:41:53', '2023-07-16 06:41:53'),
(58, 'App\\Models\\User', 29, 'authToken', '2639c763430b9d4e5630810c4540d98dc86ac72c5f0410fb26028841ea945e53', '[\"*\"]', NULL, NULL, '2023-07-16 06:42:02', '2023-07-16 06:42:02'),
(59, 'App\\Models\\User', 29, 'authToken', '997b193562eed05ea17c057c07b878976af5fa4ca00ecef5cc06c5229f5b78bd', '[\"*\"]', NULL, NULL, '2023-07-16 06:44:07', '2023-07-16 06:44:07'),
(60, 'App\\Models\\User', 29, 'authToken', '567a2e39b1126fff103f99c5d8720193386deea6a6ce7c34ab2062a95766fa2b', '[\"*\"]', NULL, NULL, '2023-07-16 06:45:44', '2023-07-16 06:45:44'),
(61, 'App\\Models\\User', 29, 'authToken', 'c0de4e8cfe3840b8246c263bc5d76ca2b5698a1ec704634f757448afdfe8aba6', '[\"*\"]', '2023-07-16 07:01:25', NULL, '2023-07-16 06:47:51', '2023-07-16 07:01:25'),
(62, 'App\\Models\\User', 2, 'authToken', '13e3827fdde03cb1e0eebd43bd0ed90b62d1bef50318e3f12d435a911ff54f09', '[\"*\"]', '2023-07-16 07:04:02', NULL, '2023-07-16 07:04:02', '2023-07-16 07:04:02'),
(63, 'App\\Models\\User', 2, 'authToken', '90de9bbf3c6989b92b0da2f72c575d351d01086c292c3808e2cd37a958c534c7', '[\"*\"]', '2023-07-16 07:05:11', NULL, '2023-07-16 07:05:11', '2023-07-16 07:05:11'),
(64, 'App\\Models\\User', 2, 'authToken', '81b66d26258c4f3e8192e69de86edf2c0f589f3d2377073cca5dbe432607c529', '[\"*\"]', '2023-07-16 07:05:50', NULL, '2023-07-16 07:05:49', '2023-07-16 07:05:50'),
(65, 'App\\Models\\User', 2, 'authToken', 'bf6f94175939d4d14e1b0918ad3e14a57735847a552e2da57c985ee7de7c7e10', '[\"*\"]', '2023-07-16 07:07:43', NULL, '2023-07-16 07:07:43', '2023-07-16 07:07:43'),
(66, 'App\\Models\\User', 2, 'authToken', '36b4bf009179aed6b0f599824f9ad11c8a095c8f4a3157e0bea5b392c671aa7e', '[\"*\"]', '2023-07-16 07:10:49', NULL, '2023-07-16 07:10:48', '2023-07-16 07:10:49'),
(67, 'App\\Models\\User', 2, 'authToken', '88576c4083d58ee258f2076329894e5594b80c96f01dcd37712a331d5dc2b1ec', '[\"*\"]', '2023-07-16 07:11:05', NULL, '2023-07-16 07:11:05', '2023-07-16 07:11:05'),
(68, 'App\\Models\\User', 2, 'authToken', 'd7a84afe0f05afb67413fcdf6b59993742ea7677f4518bdcb9fa98d77b34b955', '[\"*\"]', '2023-07-16 07:11:36', NULL, '2023-07-16 07:11:16', '2023-07-16 07:11:36'),
(69, 'App\\Models\\User', 2, 'authToken', '93b210d1feabbdc119d0fe2ac21c1d47291a749e4c8c120acee5c75b28c94310', '[\"*\"]', '2023-07-16 07:37:14', NULL, '2023-07-16 07:11:40', '2023-07-16 07:37:14'),
(70, 'App\\Models\\User', 2, 'authToken', 'f9ef47303279dbe20ff4a6a9e2f2099c869f7f761bd851e06b5fc3d23f4d03a0', '[\"*\"]', '2023-07-16 07:12:58', NULL, '2023-07-16 07:12:58', '2023-07-16 07:12:58'),
(71, 'App\\Models\\User', 2, 'authToken', '80a9c02f398a7b33e419d25f9dd134cc9da264cd8c2d9f25fd19a5c8d5483d7c', '[\"*\"]', '2023-07-16 07:31:06', NULL, '2023-07-16 07:31:06', '2023-07-16 07:31:06'),
(72, 'App\\Models\\User', 2, 'authToken', 'f24f554946f241976d6dbdd52a8c1a05289e939000816bfd5549e757228e8126', '[\"*\"]', '2023-07-16 07:37:12', NULL, '2023-07-16 07:31:19', '2023-07-16 07:37:12'),
(73, 'App\\Models\\User', 2, 'authToken', '2926de4a863ff6b0949f4143857a1ae9da2911b58dbfc45badb3072f6e41875d', '[\"*\"]', '2023-07-16 15:17:43', NULL, '2023-07-16 07:37:33', '2023-07-16 15:17:43'),
(74, 'App\\Models\\User', 2, 'authToken', 'b96b56e38ce9ce96714ed3d5fd703647fdf7c7a7460ddb9be78f878e03d2cc43', '[\"*\"]', '2023-07-16 08:03:08', NULL, '2023-07-16 07:40:15', '2023-07-16 08:03:08'),
(75, 'App\\Models\\User', 2, 'authToken', 'ed8891fb1245a26ac977616d5f76b2cd6f510d21fe5b10e4cd989aad1fb9a623', '[\"*\"]', '2023-07-16 07:42:13', NULL, '2023-07-16 07:42:07', '2023-07-16 07:42:13'),
(76, 'App\\Models\\User', 2, 'authToken', 'b42e579c4c64d29778b782057f39a413684345dc4daa0bb4d6428f54914971a0', '[\"*\"]', '2023-07-16 07:47:27', NULL, '2023-07-16 07:43:31', '2023-07-16 07:47:27'),
(77, 'App\\Models\\User', 2, 'authToken', 'bbb29b90bd8503c34f0994cbb46da05667b9bd18c599137b79c22e986b0d0965', '[\"*\"]', NULL, NULL, '2023-07-16 07:47:44', '2023-07-16 07:47:44'),
(78, 'App\\Models\\User', 2, 'authToken', '98b93b85a7ef8b28c97d30b30a528f5c02e488a792ca015590194c904a475a40', '[\"*\"]', '2023-07-16 07:58:28', NULL, '2023-07-16 07:48:07', '2023-07-16 07:58:28'),
(79, 'App\\Models\\User', 2, 'authToken', '674ca217021554d677cf336a3a1807cbc67efc3e6123e35c31b9bbf003f79623', '[\"*\"]', NULL, NULL, '2023-07-16 07:59:11', '2023-07-16 07:59:11'),
(80, 'App\\Models\\User', 2, 'authToken', '398603a59c5e8ce530f04d7b0b97f42ba608ab20712fa80cf2985cac0900fff4', '[\"*\"]', '2023-07-16 07:59:19', NULL, '2023-07-16 07:59:19', '2023-07-16 07:59:19'),
(81, 'App\\Models\\User', 2, 'authToken', 'b4ec80c6280dfa11de8ef472007cd124c43c387fece1378dd8b3a190b46f2ee2', '[\"*\"]', '2023-07-16 08:05:28', NULL, '2023-07-16 08:05:28', '2023-07-16 08:05:28'),
(82, 'App\\Models\\User', 2, 'authToken', '174057234663b02a5295aac0ad8412dfee7f0bdd209e41fc5352f29678ce78a3', '[\"*\"]', '2023-07-16 10:36:15', NULL, '2023-07-16 08:07:36', '2023-07-16 10:36:15'),
(83, 'App\\Models\\User', 2, 'authToken', 'dbf23be98927504ba37587219886537e71d14f9789de479bd296e6cf70c3bf11', '[\"*\"]', '2023-07-16 10:42:41', NULL, '2023-07-16 10:42:30', '2023-07-16 10:42:41'),
(84, 'App\\Models\\User', 2, 'authToken', '422b09a6aef93d9dc58dba01f6c68f95ab42fe4bfb8f5ac97957c8dc0f5e1bbe', '[\"*\"]', '2023-07-16 14:29:13', NULL, '2023-07-16 14:03:58', '2023-07-16 14:29:13'),
(85, 'App\\Models\\User', 2, 'authToken', '5a74748909c31efdfdaa47d47b2fd05afcc012ae68d22c9b85c49fd6c7405dd3', '[\"*\"]', '2023-07-16 14:29:28', NULL, '2023-07-16 14:29:27', '2023-07-16 14:29:28'),
(86, 'App\\Models\\User', 2, 'authToken', '3228d5255f7b3558822146d2a5d4bc33e6451c7d4c5468304c3153912dbb9d81', '[\"*\"]', '2023-07-16 14:30:30', NULL, '2023-07-16 14:30:29', '2023-07-16 14:30:30'),
(87, 'App\\Models\\User', 2, 'authToken', '74d623845b7a927df85806a7ad84edb928e62b5b91c4eb61635c147149bae5e0', '[\"*\"]', '2023-07-16 14:30:47', NULL, '2023-07-16 14:30:47', '2023-07-16 14:30:47'),
(88, 'App\\Models\\User', 2, 'authToken', '96e52058eb42c8fc36cdb93519d123888fade4f569794c09f237cd2e0f8df27f', '[\"*\"]', '2023-07-16 14:35:51', NULL, '2023-07-16 14:31:33', '2023-07-16 14:35:51'),
(89, 'App\\Models\\User', 2, 'authToken', '2498133393f1afd20c981cc00ba2b0f86366b2c6f65c7d902eebda7f7e75bd61', '[\"*\"]', '2023-07-16 14:46:54', NULL, '2023-07-16 14:37:04', '2023-07-16 14:46:54'),
(90, 'App\\Models\\User', 2, 'authToken', '56f78fa8ed36fd76a595a9700f3f7692a9378024d05e5ed4a4d168293f5fc8c8', '[\"*\"]', '2023-07-16 15:23:05', NULL, '2023-07-16 14:47:13', '2023-07-16 15:23:05'),
(91, 'App\\Models\\User', 2, 'authToken', '23e3a5f87df86ba020b843703c4c903a8bd676fa547700a06a4fb98940758ac4', '[\"*\"]', NULL, NULL, '2023-07-16 15:00:48', '2023-07-16 15:00:48'),
(92, 'App\\Models\\User', 2, 'authToken', 'efbdac0651e3ac33f227a2472e74d799d0d85f2b31e798553f162966c3d43992', '[\"*\"]', NULL, NULL, '2023-07-16 15:02:10', '2023-07-16 15:02:10'),
(93, 'App\\Models\\User', 2, 'authToken', '9b9277878fd00236505245fe9a2f3f03013c41e3b23cce22b4d08fce2d985529', '[\"*\"]', NULL, NULL, '2023-07-16 15:04:12', '2023-07-16 15:04:12'),
(94, 'App\\Models\\User', 2, 'authToken', 'c1aacae4e347165ca78d38bf5611d4283c3a4e6b66d30977c131187cfb3fba81', '[\"*\"]', NULL, NULL, '2023-07-16 15:09:02', '2023-07-16 15:09:02'),
(95, 'App\\Models\\User', 2, 'authToken', 'e1b3bf463c1bf9b4a53874c9beb8b768ecd8cc8a1569e92db6cfefd7a3d485e1', '[\"*\"]', NULL, NULL, '2023-07-16 15:11:52', '2023-07-16 15:11:52'),
(96, 'App\\Models\\User', 2, 'authToken', '1a1e38a1c61d34c639ab5410526056ed22737c2e2efddfe9772c8d9dc29b673a', '[\"*\"]', NULL, NULL, '2023-07-16 15:17:12', '2023-07-16 15:17:12'),
(97, 'App\\Models\\User', 2, 'authToken', 'b537606783454386ca09153f97bcdebdbad6225abbfe0dce31ecce75e1c82402', '[\"*\"]', NULL, NULL, '2023-07-16 15:17:18', '2023-07-16 15:17:18'),
(98, 'App\\Models\\User', 2, 'authToken', '9c3cf3fa5be4ad01b473eb0a61b4e467607c9691c9ae348da084cec4adb6b422', '[\"*\"]', NULL, NULL, '2023-07-16 15:17:22', '2023-07-16 15:17:22'),
(99, 'App\\Models\\User', 2, 'authToken', '2839d1260da41a1a3d8fdf6d732f51304d20eef8873a7ec713a0738cbf826df9', '[\"*\"]', NULL, NULL, '2023-07-16 15:17:22', '2023-07-16 15:17:22'),
(100, 'App\\Models\\User', 2, 'authToken', '495738894b901439321488eb52d0a927ee468f3667831a0e2937a96b30cc9d2e', '[\"*\"]', NULL, NULL, '2023-07-16 15:17:22', '2023-07-16 15:17:22'),
(101, 'App\\Models\\User', 2, 'authToken', '06cd44fc77615b392ca08796483c303e8ae9b25952cce8aa69626044dc275ac4', '[\"*\"]', '2023-07-16 15:23:08', NULL, '2023-07-16 15:23:08', '2023-07-16 15:23:08'),
(102, 'App\\Models\\User', 2, 'authToken', '5c0ccbdc3cb40af764995a3dcee427c85c27aa573e4d32b4e805c6bbce1e05cc', '[\"*\"]', '2023-07-16 15:23:13', NULL, '2023-07-16 15:23:13', '2023-07-16 15:23:13'),
(103, 'App\\Models\\User', 2, 'authToken', 'a6ae3914ac41643cd889198d4c62b1c321c09a394f5b5a9696bbee2a142429e6', '[\"*\"]', '2023-07-16 15:23:16', NULL, '2023-07-16 15:23:16', '2023-07-16 15:23:16'),
(104, 'App\\Models\\User', 2, 'authToken', '445353883d8df6e5aeea5aad6de14d63f1b2f64dde50ba4c304c49779560d818', '[\"*\"]', '2023-07-16 15:23:18', NULL, '2023-07-16 15:23:18', '2023-07-16 15:23:18'),
(105, 'App\\Models\\User', 2, 'authToken', '69e630cb4ad1ef481a0509c8a41027875b796ccd98a56226725b7c94cf0bd112', '[\"*\"]', '2023-07-16 15:25:32', NULL, '2023-07-16 15:23:18', '2023-07-16 15:25:32'),
(106, 'App\\Models\\User', 2, 'authToken', '9fe2fba6cb57816c96d59f028701e589042c58a34ff091820b1e93ba45f0d740', '[\"*\"]', '2023-07-16 15:28:21', NULL, '2023-07-16 15:27:36', '2023-07-16 15:28:21'),
(107, 'App\\Models\\User', 2, 'authToken', '2eb87878ed7fdfc0c9234015dde7e258369c9c4a369b670ac1c5b8aa88c23c2b', '[\"*\"]', '2023-07-16 15:28:25', NULL, '2023-07-16 15:28:25', '2023-07-16 15:28:25'),
(108, 'App\\Models\\User', 2, 'authToken', 'd04f4cb802c3069f3f1629a9f1d1f554cbda37d5fb154cdc9c8bf133310b72ea', '[\"*\"]', '2023-07-16 15:32:43', NULL, '2023-07-16 15:28:27', '2023-07-16 15:32:43'),
(109, 'App\\Models\\User', 2, 'authToken', '3e0be26b7f116860a698c4051c7d2d7105167db78361ca1c465a4f55af5f603c', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:32', '2023-07-16 15:33:32'),
(110, 'App\\Models\\User', 2, 'authToken', 'b1bacf2e2f2f8ad2e7f58177db81918dfee45a67b019d2bed772554e34f092e9', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:33', '2023-07-16 15:33:33'),
(111, 'App\\Models\\User', 2, 'authToken', '876f44d88e018de54b5f41ffaa4806708a5bb9bd1ca9953321fe126850161c6e', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:42', '2023-07-16 15:33:42'),
(112, 'App\\Models\\User', 2, 'authToken', 'bcf1b8923ef5b15001d0e1a1fa77743fc209ae7f9d6536da88d863a2c419f27f', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:42', '2023-07-16 15:33:42'),
(113, 'App\\Models\\User', 2, 'authToken', '65754ad2cf1e58082d47bf48f43c42478e7bed466f0d680771ee83723a373d6b', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:44', '2023-07-16 15:33:44'),
(114, 'App\\Models\\User', 2, 'authToken', 'c99a0db6653d77bafcb46c87d8e4cc3e63ff2f3d8cef36e8758bf2e7e0186ec5', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:45', '2023-07-16 15:33:45'),
(115, 'App\\Models\\User', 2, 'authToken', '615f17328a155c5ed928350a4f7954c7dd8d5b10a2e2a75c64698586a48de7e0', '[\"*\"]', NULL, NULL, '2023-07-16 15:33:56', '2023-07-16 15:33:56'),
(116, 'App\\Models\\User', 31, 'appToken', '09a4b49526947af3a5d6256b86f64d271d54114657b7174d5442dd317deff432', '[\"*\"]', NULL, NULL, '2023-07-16 19:33:28', '2023-07-16 19:33:28'),
(117, 'App\\Models\\User', 2, 'authToken', '9578dd9be841dcdae1edf425e9dcd7f3ff771b74ed9bd812bf2b8a1fb27986d9', '[\"*\"]', NULL, NULL, '2023-07-16 19:38:30', '2023-07-16 19:38:30'),
(118, 'App\\Models\\User', 31, 'authToken', '37369382e5bbc575388af5bafdd70bbd2d6af413e17a0a2cc759d5c167599dbb', '[\"*\"]', NULL, NULL, '2023-07-16 19:41:31', '2023-07-16 19:41:31'),
(119, 'App\\Models\\User', 31, 'authToken', '2dbd88fc11d180f64d9ed13a079eacef03ef12930b22c61966c25ce065b8042f', '[\"*\"]', NULL, NULL, '2023-07-16 19:44:58', '2023-07-16 19:44:58'),
(120, 'App\\Models\\User', 31, 'authToken', 'e6e448ff531d9a739a90b7275a789292b240d3d2ca9521b42636ecb98572192a', '[\"*\"]', NULL, NULL, '2023-07-16 19:48:48', '2023-07-16 19:48:48'),
(121, 'App\\Models\\User', 31, 'authToken', '114e98a43087331b6d2fd86f17a9c0c6db6b0c00e7fb5d354d0696e61b179984', '[\"*\"]', NULL, NULL, '2023-07-16 19:52:38', '2023-07-16 19:52:38'),
(122, 'App\\Models\\User', 31, 'authToken', '2a26524649b54f0f7e08491e261258c56b2c465d651f269d5db447d48397b10f', '[\"*\"]', NULL, NULL, '2023-07-16 19:54:13', '2023-07-16 19:54:13'),
(123, 'App\\Models\\User', 31, 'authToken', 'a9db3c0f99049a66bdc80500c8156d512a4fef9fafcb454ba66e9c69cbb84fc5', '[\"*\"]', NULL, NULL, '2023-07-16 19:54:55', '2023-07-16 19:54:55'),
(124, 'App\\Models\\User', 31, 'authToken', 'c16b8fa9e49af9d1af5c1180257d5bfc17e484ac15ea90c7509298f6b4c2f343', '[\"*\"]', NULL, NULL, '2023-07-16 19:57:35', '2023-07-16 19:57:35'),
(125, 'App\\Models\\User', 31, 'authToken', 'a39e000a9e52ab12d6b55f20ba20c6c7986c7377cb8b7bae69cc19b327f52352', '[\"*\"]', NULL, NULL, '2023-07-16 19:59:06', '2023-07-16 19:59:06'),
(126, 'App\\Models\\User', 31, 'authToken', '7cb533b9cc5ec6981f7a5cd1cc9cce07cb6ed0c7b12e23c9e6ced5ac1303fd4d', '[\"*\"]', NULL, NULL, '2023-07-16 19:59:53', '2023-07-16 19:59:53'),
(127, 'App\\Models\\User', 31, 'authToken', '21e7cfe5ebbc4fb58a1757f25e63c0a2416f126f83ad34c29c9d8c45e03b3f1b', '[\"*\"]', NULL, NULL, '2023-07-16 20:00:44', '2023-07-16 20:00:44'),
(128, 'App\\Models\\User', 31, 'authToken', '1496240fb25d42fad1a7871dbe743de8d8e465bcea58f17ac869a135b0cb070b', '[\"*\"]', '2023-07-17 21:15:50', NULL, '2023-07-16 20:01:45', '2023-07-17 21:15:50'),
(129, 'App\\Models\\User', 29, 'authToken', '2b8a3932c415fcfcff4fd1b5d9d4eff509c6066ffd68b4443f3a6f521e0b77b4', '[\"*\"]', NULL, NULL, '2023-07-16 20:01:57', '2023-07-16 20:01:57'),
(130, 'App\\Models\\User', 29, 'authToken', '03d4e0158d896c7507c3dc05a7513cb8fec21be3f2a2bc73bdfdd0a717dc3164', '[\"*\"]', NULL, NULL, '2023-07-16 20:02:00', '2023-07-16 20:02:00'),
(131, 'App\\Models\\User', 29, 'authToken', '4170e5d3a3224dd0f5f5ff7b4131027726d5394a8c97c51bbf75e979e20b65cc', '[\"*\"]', NULL, NULL, '2023-07-16 20:02:04', '2023-07-16 20:02:04'),
(132, 'App\\Models\\User', 29, 'authToken', '4675f16846316d0b80620526655f41b0369178a71645a9dba045a11bc924f292', '[\"*\"]', NULL, NULL, '2023-07-16 20:02:07', '2023-07-16 20:02:07'),
(133, 'App\\Models\\User', 29, 'authToken', 'd41aa963a40f6e69fd4b6f6a0f452eb88e3e399fe15bc20537927d9edbf99ccb', '[\"*\"]', NULL, NULL, '2023-07-16 20:02:45', '2023-07-16 20:02:45'),
(134, 'App\\Models\\User', 31, 'authToken', '521abf596825dd7ea20a9f8de596aa117219491fc2728dc68f4ad25dd851548e', '[\"*\"]', NULL, NULL, '2023-07-16 20:03:01', '2023-07-16 20:03:01'),
(135, 'App\\Models\\User', 2, 'authToken', '0943181ff373e8668df7372ea7be2cc5d7adc4a9a5583975c39b6e05ee38ab1b', '[\"*\"]', NULL, NULL, '2023-07-17 08:38:10', '2023-07-17 08:38:10'),
(136, 'App\\Models\\User', 2, 'authToken', '2aa5cefabda6191aaf8c6e847b6981adba2fcc5d100074dfdc1384fc671a61a9', '[\"*\"]', NULL, NULL, '2023-07-17 08:40:03', '2023-07-17 08:40:03'),
(137, 'App\\Models\\User', 2, 'authToken', 'cf37e1f199ae6e83f760caa8020b639eafdae951e78455716e2e28426722dc22', '[\"*\"]', NULL, NULL, '2023-07-17 08:40:58', '2023-07-17 08:40:58'),
(138, 'App\\Models\\User', 2, 'authToken', '352b529f5d141f27ac5815cb87ec9288f72c33196ab86370f074a7f5f108ceca', '[\"*\"]', NULL, NULL, '2023-07-17 09:02:52', '2023-07-17 09:02:52'),
(139, 'App\\Models\\User', 2, 'authToken', '9f2910fe4bab63c8e6d0b70846ef13df9ecb0039f8316fa5a60c1c5d8c0674f6', '[\"*\"]', NULL, NULL, '2023-07-17 09:04:34', '2023-07-17 09:04:34'),
(140, 'App\\Models\\User', 2, 'authToken', '9656c4b35c053c1d031a095449d1b7e8fb02922b3a51e9f48de09df0f7002a3c', '[\"*\"]', NULL, NULL, '2023-07-17 09:05:11', '2023-07-17 09:05:11'),
(141, 'App\\Models\\User', 2, 'authToken', '0c2d12e2b05636c6c7370676f6ca5650015a7becb097780b1b1057615f39e4c4', '[\"*\"]', NULL, NULL, '2023-07-17 09:09:08', '2023-07-17 09:09:08'),
(142, 'App\\Models\\User', 2, 'authToken', '62cfe431af5ef90bd497c6edda85f0ccc2f46ad0d3fe50ee3b2dc6432dfe556c', '[\"*\"]', NULL, NULL, '2023-07-17 09:10:45', '2023-07-17 09:10:45'),
(143, 'App\\Models\\User', 2, 'authToken', 'd40c56c304b7d42c284f221212d11d422bdd85e7ad46200946c30ff9b85cfd8d', '[\"*\"]', NULL, NULL, '2023-07-17 09:12:08', '2023-07-17 09:12:08'),
(144, 'App\\Models\\User', 2, 'authToken', '56a7fb670818c7e110c5a91bbc8b16b52b044a8ed5120eb9f94093378fdacdea', '[\"*\"]', NULL, NULL, '2023-07-17 09:16:38', '2023-07-17 09:16:38'),
(145, 'App\\Models\\User', 29, 'authToken', '91eb307c714d01366b1ba48b353258bbad1e83e8e377cd844fecd36aa01f75ce', '[\"*\"]', NULL, NULL, '2023-07-17 09:34:22', '2023-07-17 09:34:22'),
(146, 'App\\Models\\User', 2, 'authToken', 'e6105e4da1f73db66946bbd605dca6163f99af02036a5f859ab0aa1c2643feb7', '[\"*\"]', NULL, NULL, '2023-07-17 09:42:17', '2023-07-17 09:42:17'),
(147, 'App\\Models\\User', 2, 'authToken', 'cf158c5ff2c2eb5f53e0c1a719cba19e70453fb59b059964aaed23a238df80f3', '[\"*\"]', NULL, NULL, '2023-07-17 10:01:50', '2023-07-17 10:01:50'),
(148, 'App\\Models\\User', 32, 'appToken', 'cee3ec0e156ca2d337fe106ab0628636af74b8f74e47289879fb1ebf74e40562', '[\"*\"]', NULL, NULL, '2023-07-17 10:17:15', '2023-07-17 10:17:15'),
(149, 'App\\Models\\User', 33, 'appToken', '4d98c2fac5e0c97694ba0a1738a20fb3d7e62b69186482754d0422a5f9b4e611', '[\"*\"]', NULL, NULL, '2023-07-17 10:18:09', '2023-07-17 10:18:09'),
(150, 'App\\Models\\User', 33, 'authToken', 'a788d1785c7aaab0bb84e7b3c23fe5ff2db8e73eeda4ffcfe9e1ca2695559594', '[\"*\"]', NULL, NULL, '2023-07-17 10:19:52', '2023-07-17 10:19:52'),
(151, 'App\\Models\\User', 34, 'appToken', '9ab8b425349bf76f35745378e178cb9fed2553ece0a5988319fe5153885dd348', '[\"*\"]', NULL, NULL, '2023-07-17 10:21:31', '2023-07-17 10:21:31'),
(152, 'App\\Models\\User', 35, 'appToken', '4f1ec288771f73afb301f5d7fde79e2f7b4b00fea86cbff32536cd7250ab3de4', '[\"*\"]', NULL, NULL, '2023-07-17 10:21:38', '2023-07-17 10:21:38'),
(153, 'App\\Models\\User', 36, 'appToken', 'd09e57125cd4a04b4c66436d8873b4629cad04c6c367ab61247913b08603e2bf', '[\"*\"]', NULL, NULL, '2023-07-17 10:21:42', '2023-07-17 10:21:42'),
(154, 'App\\Models\\User', 37, 'appToken', '5bbc067843c7141c1086cdec8252a9145fa8e5199bf7680b7237e1ce4f0c0d96', '[\"*\"]', NULL, NULL, '2023-07-17 10:24:16', '2023-07-17 10:24:16'),
(155, 'App\\Models\\User', 38, 'appToken', '7e6f6a2ea1294bd4732788320c7070a209d5d652182f637f579b02826d1474e8', '[\"*\"]', NULL, NULL, '2023-07-17 10:25:55', '2023-07-17 10:25:55'),
(156, 'App\\Models\\User', 39, 'appToken', '03c2e61a6e7e06a9aef91e2bb1b03ad907b809d9218a38db6e5570429d38e667', '[\"*\"]', NULL, NULL, '2023-07-17 10:26:40', '2023-07-17 10:26:40'),
(157, 'App\\Models\\User', 40, 'appToken', '64c9b3587c5b5d457061add363edbcc667ed3a9b6f5246b583c189ad648ca566', '[\"*\"]', NULL, NULL, '2023-07-17 10:26:48', '2023-07-17 10:26:48'),
(158, 'App\\Models\\User', 41, 'appToken', '8645d84904e2c1db9877d478202ef3092bac51489cd19ce33e964ea878d342f6', '[\"*\"]', NULL, NULL, '2023-07-17 10:27:09', '2023-07-17 10:27:09'),
(159, 'App\\Models\\User', 42, 'appToken', '59c795125071381024d93845ef00483a50f26d2783d5b598d18061d9edf9bb35', '[\"*\"]', NULL, NULL, '2023-07-17 10:27:09', '2023-07-17 10:27:09'),
(160, 'App\\Models\\User', 43, 'appToken', 'b9071fa6b98e44ed51804ce1df945559d938585b24dc7aa3dce253ad6d759cb2', '[\"*\"]', NULL, NULL, '2023-07-17 10:27:34', '2023-07-17 10:27:34'),
(161, 'App\\Models\\User', 44, 'appToken', 'a93a60cbf1427665f0e38d079901606c09b149eacf8f57c44ad96ba53df86ff3', '[\"*\"]', NULL, NULL, '2023-07-17 10:27:35', '2023-07-17 10:27:35'),
(162, 'App\\Models\\User', 45, 'appToken', '90db9cb483ce68102d48d6c699ec59d4ebd98613689127386bd74a085914ead6', '[\"*\"]', NULL, NULL, '2023-07-17 10:27:37', '2023-07-17 10:27:37'),
(163, 'App\\Models\\User', 46, 'appToken', '5a49df384e30e73a21e8212bd214509c781f52d45a51906e9106f41761217a34', '[\"*\"]', NULL, NULL, '2023-07-17 10:29:02', '2023-07-17 10:29:02'),
(164, 'App\\Models\\User', 47, 'appToken', '4a60a301edcbe3b59d543b82d26df0144179823300fece11f7f5d894a0af551f', '[\"*\"]', NULL, NULL, '2023-07-17 10:29:11', '2023-07-17 10:29:11'),
(165, 'App\\Models\\User', 48, 'appToken', 'fd1f519ea1329ea46d7d66d6c8b01f3e6063b2e03de97221a7c79ffdcef1d767', '[\"*\"]', NULL, NULL, '2023-07-17 10:29:44', '2023-07-17 10:29:44'),
(166, 'App\\Models\\User', 49, 'appToken', '009d7be34bc1bc6eee7c622b9943199891c5a77bf5e00fb23fb75d4f942fc012', '[\"*\"]', NULL, NULL, '2023-07-17 10:30:34', '2023-07-17 10:30:34'),
(167, 'App\\Models\\User', 50, 'appToken', '5a55df53edefac52ec44ef0a401ffe854b17a32582fa1e871e4296e6ba817550', '[\"*\"]', NULL, NULL, '2023-07-17 10:31:26', '2023-07-17 10:31:26'),
(168, 'App\\Models\\User', 51, 'appToken', '549ebdd923a01f239124b470ee35155ba6b2c2675a37d6128ba213797ae74e39', '[\"*\"]', NULL, NULL, '2023-07-17 10:33:17', '2023-07-17 10:33:17'),
(169, 'App\\Models\\User', 52, 'appToken', '8f6018d278888317bb9b98a39baf98a8cc29456e7893cfe4f3d097c6bacdcc7b', '[\"*\"]', NULL, NULL, '2023-07-17 10:33:31', '2023-07-17 10:33:31'),
(170, 'App\\Models\\User', 53, 'appToken', '3e93f96f23b97fc322f489b83d73ad049954cef4ee7c257198b36d0b6bd12a75', '[\"*\"]', NULL, NULL, '2023-07-17 10:33:41', '2023-07-17 10:33:41'),
(171, 'App\\Models\\User', 54, 'appToken', 'bb2d2e7ddfbcf93cf4dea5ef9c6f9a3fc5caec0548b999d995b8bd8d9176a8d0', '[\"*\"]', NULL, NULL, '2023-07-17 10:33:59', '2023-07-17 10:33:59'),
(172, 'App\\Models\\User', 54, 'authToken', '608332e1b94553f4d223019adf9b5ba3f365f50bb15bfe8f455df9272504cf8f', '[\"*\"]', NULL, NULL, '2023-07-17 10:34:31', '2023-07-17 10:34:31'),
(173, 'App\\Models\\User', 2, 'authToken', 'fcf4c45667e2eec537ae94aded266833a460df98cb5ca9030b640ba67d7b88db', '[\"*\"]', NULL, NULL, '2023-07-17 19:42:50', '2023-07-17 19:42:50'),
(174, 'App\\Models\\User', 2, 'authToken', 'd7c9a9936c67894457a3b2764219ed27cae2b750715d6b8abe4cebec534d304d', '[\"*\"]', NULL, NULL, '2023-07-17 19:42:52', '2023-07-17 19:42:52'),
(175, 'App\\Models\\User', 2, 'authToken', '443802fc69aa40a1f3a38e9a00fbde6684b1033cd5e0572d4c19781db4266892', '[\"*\"]', NULL, NULL, '2023-07-17 19:47:30', '2023-07-17 19:47:30'),
(176, 'App\\Models\\User', 2, 'authToken', '3a68dd556c22bbdedfb84a1a78339f4a75b46144d05aa8a461476e050f4d3d2e', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:23', '2023-07-17 19:48:23'),
(177, 'App\\Models\\User', 2, 'authToken', '3f15ee995fb07d3bfa0848e9e742454a3e647e3907255e3f9cc26f300fc33996', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:24', '2023-07-17 19:48:24'),
(178, 'App\\Models\\User', 2, 'authToken', '3f9e0180cad50ab139aa1521d4b8b248c900acf5eee8f09700dbbbabdddb2d6f', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:46', '2023-07-17 19:48:46'),
(179, 'App\\Models\\User', 2, 'authToken', 'e82fb1ca55bf63f29c1770ab2ded218d4a25915779a245ef0b8607e8e79d3fd0', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:50', '2023-07-17 19:48:50'),
(180, 'App\\Models\\User', 2, 'authToken', '30921aded75e6fa29755db801f8f9b4d7eec9712e794ad4583d28bedb00ba9c5', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:51', '2023-07-17 19:48:51'),
(181, 'App\\Models\\User', 2, 'authToken', '687c46b19391d5666b83777a7e570bd2ac3fec8ed1fa2ad45fec25f3b351f720', '[\"*\"]', NULL, NULL, '2023-07-17 19:48:54', '2023-07-17 19:48:54'),
(182, 'App\\Models\\User', 2, 'authToken', '045891b6f2489e03d6fa1d2b767019c686dbc135bb3ee4a6135dd33eb9f46fb7', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:03', '2023-07-17 19:49:03'),
(183, 'App\\Models\\User', 2, 'authToken', '6cb315062a7b7e871b41d0c3e1bff83d5008b48b3e3d19881461c9a0779e1a00', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:11', '2023-07-17 19:49:11'),
(184, 'App\\Models\\User', 2, 'authToken', 'c578b97248e8ac60095da1ea85ce94735a47b55aaa78a9bea24e0ef0be33c19c', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:17', '2023-07-17 19:49:17'),
(185, 'App\\Models\\User', 2, 'authToken', '4c8e26d1db48f37ab68b29de8e84419484fc8c62a922d1c870323e621634e64d', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:25', '2023-07-17 19:49:25'),
(186, 'App\\Models\\User', 2, 'authToken', '8d3f7af216a1c1641de5fef847bc28c922ca3546ac6d74d7f455adaf99a8b370', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:27', '2023-07-17 19:49:27'),
(187, 'App\\Models\\User', 2, 'authToken', '982e378e40c1b6a5e8597c6c18b161fd77fcdfe0170a27fd40f0e3bfe23e95d1', '[\"*\"]', NULL, NULL, '2023-07-17 19:49:31', '2023-07-17 19:49:31'),
(188, 'App\\Models\\User', 2, 'authToken', '03535d43a300caf7616631f01dcb5a60391af4fd396dcde886b0ef1e78b1d4be', '[\"*\"]', NULL, NULL, '2023-07-17 19:51:38', '2023-07-17 19:51:38'),
(189, 'App\\Models\\User', 2, 'authToken', 'd43f2489df424558072a599ee08f74d48c0ad6d0b909cdb0015dc8c29ad16ecb', '[\"*\"]', '2023-07-17 19:52:02', NULL, '2023-07-17 19:52:02', '2023-07-17 19:52:02'),
(190, 'App\\Models\\User', 2, 'authToken', '2fb01e096e01cf175337ee5737329e4365c350608ab1376408fb5a72e07b4f4c', '[\"*\"]', '2023-07-17 19:53:38', NULL, '2023-07-17 19:53:38', '2023-07-17 19:53:38'),
(191, 'App\\Models\\User', 29, 'authToken', '7b5b964a3526248f916fb5250f4b18dbdc8b08c1b847aeee37c8e86e28aea2fe', '[\"*\"]', NULL, NULL, '2023-07-17 20:01:21', '2023-07-17 20:01:21'),
(192, 'App\\Models\\User', 29, 'authToken', '89b7da67d7636d3a0d247da48fe4bb23713f544c7d821e9cef3dc9885295c173', '[\"*\"]', NULL, NULL, '2023-07-17 20:01:31', '2023-07-17 20:01:31'),
(193, 'App\\Models\\User', 2, 'authToken', '7bac9db5d08125c748727a984bebf5d94e50c843805425dc5302697f721cf1aa', '[\"*\"]', NULL, NULL, '2023-07-17 20:05:17', '2023-07-17 20:05:17'),
(194, 'App\\Models\\User', 2, 'authToken', 'c2aa2611e544a191ef8e7a9d6e4643990d754fd9872237223afa9091eac82eb8', '[\"*\"]', NULL, NULL, '2023-07-17 20:06:16', '2023-07-17 20:06:16'),
(195, 'App\\Models\\User', 29, 'authToken', 'a067d2590d1c83d5775cd1bef9de87a2f7593fdf7e31bde0a75378457f980817', '[\"*\"]', NULL, NULL, '2023-07-17 20:06:21', '2023-07-17 20:06:21'),
(196, 'App\\Models\\User', 2, 'authToken', '6eb1b63a23619ad307e9fb0d96a043c446b3e49df5d0681f5ccd71e4cdbed360', '[\"*\"]', NULL, NULL, '2023-07-17 20:07:29', '2023-07-17 20:07:29'),
(197, 'App\\Models\\User', 2, 'authToken', 'a0707f0f656cc7fb6463e26a97810550cbfe77667116222baf7078bbbd0acf60', '[\"*\"]', NULL, NULL, '2023-07-17 20:07:39', '2023-07-17 20:07:39'),
(198, 'App\\Models\\User', 2, 'authToken', '73a2903036196ab48152c0f4da99d9585014b9cc6e2eeb83e6a1fb322827f26a', '[\"*\"]', NULL, NULL, '2023-07-17 20:08:19', '2023-07-17 20:08:19'),
(199, 'App\\Models\\User', 2, 'authToken', '44794f9d3fc432c280a63bc27b8a40d4ea76d0335f4601a851e9c58edb97d38d', '[\"*\"]', NULL, NULL, '2023-07-17 20:10:50', '2023-07-17 20:10:50'),
(200, 'App\\Models\\User', 29, 'authToken', '4f6cb5611aae437768696545388a1f2904a6d9d5206d7a4e35d1ed235e062207', '[\"*\"]', NULL, NULL, '2023-07-17 20:11:36', '2023-07-17 20:11:36'),
(201, 'App\\Models\\User', 29, 'authToken', '7ca4992b4470fa780b8773a9d19e461c4aef1a4aa94b50bb4aa440f6fb59ca03', '[\"*\"]', NULL, NULL, '2023-07-17 20:11:37', '2023-07-17 20:11:37'),
(202, 'App\\Models\\User', 29, 'authToken', 'a5e5e73cdb916e60d58ac7eb9a7d165919eb7ad1340be45321a855ccfd4f641e', '[\"*\"]', NULL, NULL, '2023-07-17 20:11:38', '2023-07-17 20:11:38'),
(203, 'App\\Models\\User', 29, 'authToken', '9c9869f51ab863c9437667c20492c6151512aa49976fab27dccdd7879b26d9b1', '[\"*\"]', NULL, NULL, '2023-07-17 20:11:52', '2023-07-17 20:11:52'),
(204, 'App\\Models\\User', 2, 'authToken', '5248cde4c9f750a02753ae72888d4719c1925f519dc107987fb8c1b9fc65875b', '[\"*\"]', NULL, NULL, '2023-07-17 20:13:02', '2023-07-17 20:13:02'),
(205, 'App\\Models\\User', 2, 'authToken', 'f710bd0d7d60fe3fbe3b6424d53cd221e852cb0fe88aa821c065baaa23f2ea3e', '[\"*\"]', NULL, NULL, '2023-07-17 20:15:15', '2023-07-17 20:15:15'),
(206, 'App\\Models\\User', 2, 'authToken', '136b3239000f10ce5157454e033dff69a20398d19b64d46f1f42f1b0ff715b9f', '[\"*\"]', NULL, NULL, '2023-07-17 20:20:11', '2023-07-17 20:20:11'),
(207, 'App\\Models\\User', 29, 'authToken', 'a8246f9bde3a36d587b9066137270b428bbada4a7b9e8187f9c4c854ff63cb87', '[\"*\"]', NULL, NULL, '2023-07-17 20:20:19', '2023-07-17 20:20:19'),
(208, 'App\\Models\\User', 29, 'authToken', 'ed2db2a65245c274dd925e3b95f63b674797734bf7d13fc3d9f66b056b97451b', '[\"*\"]', NULL, NULL, '2023-07-17 20:20:20', '2023-07-17 20:20:20'),
(209, 'App\\Models\\User', 2, 'authToken', '97f271aa1e59443576a389b5a424ffb249f0dec2420c7fc06196385181f7ff53', '[\"*\"]', NULL, NULL, '2023-07-17 20:22:25', '2023-07-17 20:22:25'),
(210, 'App\\Models\\User', 29, 'authToken', '8ee1518a4cfcccdcd4288c59fdd8f4f5da197a5416ea006b16245b38bda86625', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:44', '2023-07-17 20:46:44'),
(211, 'App\\Models\\User', 29, 'authToken', '169eed063704fc58094f46a4c52c70e45173b3454b0446dc826a48f8804a08d3', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:45', '2023-07-17 20:46:45'),
(212, 'App\\Models\\User', 29, 'authToken', 'f0b7bb406f21159d662c4b834f0bb0d4ff45de99147a78f42ec248882eaf813a', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:45', '2023-07-17 20:46:45'),
(213, 'App\\Models\\User', 29, 'authToken', 'f5ee223d8a33d0f8f7b20d73dda3fd7566e7b1ee1f65a76c052148a6db885100', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:46', '2023-07-17 20:46:46'),
(214, 'App\\Models\\User', 29, 'authToken', '54652d3452e08987a1e0fe42f813e2d32e3604580e0123671e847071e39ebc9a', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:47', '2023-07-17 20:46:47'),
(215, 'App\\Models\\User', 29, 'authToken', '62e55c2d047005852541ad98b4ed9a84593a8fa92880c7257e2fe3ddec9a5935', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:47', '2023-07-17 20:46:47'),
(216, 'App\\Models\\User', 29, 'authToken', '76e45da00825047a5879d202b985317326c486f47090bb275ed66764b4f1fe13', '[\"*\"]', NULL, NULL, '2023-07-17 20:46:48', '2023-07-17 20:46:48'),
(217, 'App\\Models\\User', 29, 'authToken', '9b49e7f182ce7ce41a5f1a9cee5e9c97cb35350ca2c21a9f1aabc012bcb78083', '[\"*\"]', '2023-07-17 21:05:08', NULL, '2023-07-17 20:49:25', '2023-07-17 21:05:08'),
(218, 'App\\Models\\User', 2, 'token-name', 'a2510d6ddf7db3c17d6dae38a9515120eabf1602a672186f462ee1a8cb6ed83d', '[\"*\"]', '2023-07-17 21:12:20', NULL, '2023-07-17 21:09:41', '2023-07-17 21:12:20'),
(219, 'App\\Models\\User', 29, 'token-name', '329253ddbb0ea4982069596b6da608690eb8b2e3d784533948d12c28b222c73a', '[\"*\"]', NULL, NULL, '2023-07-17 21:12:37', '2023-07-17 21:12:37'),
(220, 'App\\Models\\User', 29, 'token-name', '3a400cc17501ecf2052eda6012ef7f24ae1ac9f9d07cab19ae0dd64e32d666a5', '[\"*\"]', NULL, NULL, '2023-07-17 21:12:38', '2023-07-17 21:12:38'),
(221, 'App\\Models\\User', 2, 'token', '3caf5899692fdeaa2c0ba94771c0078ccc27553345b89276b52c0756f21231e4', '[\"*\"]', NULL, NULL, '2023-07-19 17:43:09', '2023-07-19 17:43:09'),
(222, 'App\\Models\\User', 2, 'token', '3b61621416868f7859aa313bf48348f3f43e75af70414df67d9980b2410df22b', '[\"*\"]', NULL, NULL, '2023-07-19 17:43:23', '2023-07-19 17:43:23'),
(223, 'App\\Models\\User', 2, 'token', 'b9211e0975e9ff69bf88d863ef08c7ea0968574e2954721e6c4545ed8f272022', '[\"*\"]', NULL, NULL, '2023-07-19 17:43:55', '2023-07-19 17:43:55'),
(224, 'App\\Models\\User', 2, 'token', '8e2ba40224cd1fcdf916d41e26afce9878dee014c65f93d1878215d7aa2f443d', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:35', '2023-07-19 17:45:35'),
(225, 'App\\Models\\User', 2, 'token', '5675d71929aa5fb3b582db5296caf109d8aadb16de0f3c7055ef263a465585c9', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:52', '2023-07-19 17:45:52'),
(226, 'App\\Models\\User', 2, 'token', '3065efc35efc0b3de323f10369de1b1b974ef6402a6eb7c2b4559bd77f9b5f81', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:53', '2023-07-19 17:45:53'),
(227, 'App\\Models\\User', 2, 'token', 'c2a1842cd617c9b2dfa6e555319e29f61aa52bfb714ee0f7d495c3270c597068', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:53', '2023-07-19 17:45:53'),
(228, 'App\\Models\\User', 2, 'token', '0d16cb6f502c99a3b261a2fb76ad9fe8c6e4716be715c8570fb441f6d0f766a4', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:53', '2023-07-19 17:45:53'),
(229, 'App\\Models\\User', 2, 'token', '0807cd112a88db2ebdce032b34a8b709ed3c2a85c8540fab680ec8c397fe9f69', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:54', '2023-07-19 17:45:54'),
(230, 'App\\Models\\User', 2, 'token', 'a8589c4a9534243c23678c67814ae3b3d125383501dc4e69c8f914454e655e27', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:54', '2023-07-19 17:45:54'),
(231, 'App\\Models\\User', 2, 'token', '9af0d78ce466df72e040f4c7e7060e0fd5cd341cdfa52fcc04b76bf926e4f6f0', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:54', '2023-07-19 17:45:54'),
(232, 'App\\Models\\User', 2, 'token', '8e308958ff4aee6c8b6932668a92ee3673c9f5b7495a88b2daa1a96cf36ec241', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:55', '2023-07-19 17:45:55'),
(233, 'App\\Models\\User', 2, 'token', '50fcfd06e3b43bdff525f7b05bde73e540b8045ee377dab6635cff34d3c6b5f0', '[\"*\"]', NULL, NULL, '2023-07-19 17:45:55', '2023-07-19 17:45:55'),
(234, 'App\\Models\\User', 2, 'token', '89e5a1e12ac669a1609c13388b476af9a1fc9981bae41b93b9e322fa9e2fb4f7', '[\"*\"]', NULL, NULL, '2023-07-19 17:46:06', '2023-07-19 17:46:06'),
(235, 'App\\Models\\User', 2, 'token', 'b03ff2afa1b7dcf0807568dcdc06217aac9893ea33c657cfc7050ff0d9cfdd61', '[\"*\"]', NULL, NULL, '2023-07-19 17:46:17', '2023-07-19 17:46:17'),
(236, 'App\\Models\\User', 2, 'token', '90496163da771106e14a809ece1f60ca050951c3f1731f629cfaf1b5540be85d', '[\"*\"]', NULL, NULL, '2023-07-19 17:46:24', '2023-07-19 17:46:24'),
(237, 'App\\Models\\User', 2, 'token', '1d92e5e24c365c611e7a676ab10c1e0e580b3d902bf73d16c2fa96d8033f6d22', '[\"*\"]', NULL, NULL, '2023-07-19 17:46:55', '2023-07-19 17:46:55'),
(238, 'App\\Models\\User', 2, 'token', 'e086ab0ec5c6aee56b0b97824d63fdf67c9255a5f008e800af73d16f4e4d761c', '[\"*\"]', NULL, NULL, '2023-07-19 17:47:28', '2023-07-19 17:47:28'),
(239, 'App\\Models\\User', 2, 'token', '2f224dc223b8f0f22888e8793dbbe4f25399eaadf11cbc7b0617e32e646515b2', '[\"*\"]', NULL, NULL, '2023-07-19 17:47:38', '2023-07-19 17:47:38'),
(240, 'App\\Models\\User', 2, 'token', '308a4db45c917c465bae36e4a8c984dda946a7b3f2ced40ad071d2b779076f30', '[\"*\"]', NULL, NULL, '2023-07-19 17:47:51', '2023-07-19 17:47:51'),
(241, 'App\\Models\\User', 2, 'token', '93dc8b4c08e259020c7bcbe6d0842f77beb29ff9ac7b8f1380ea522ced9dd309', '[\"*\"]', NULL, NULL, '2023-07-19 17:48:00', '2023-07-19 17:48:00'),
(242, 'App\\Models\\User', 2, 'token', '15caa5439e45616bf5309f851aaada10c0b41832f52cd8ff4df99e64d78a7fb1', '[\"*\"]', NULL, NULL, '2023-07-19 17:48:25', '2023-07-19 17:48:25'),
(243, 'App\\Models\\User', 2, 'token', '940e07a49c5b71917121a1a9502fca78faed3d52dabfbb58ffd777a0036769d6', '[\"*\"]', NULL, NULL, '2023-07-19 17:50:52', '2023-07-19 17:50:52'),
(244, 'App\\Models\\User', 2, 'token', '6eda3516304c982a8f6238fd977a0e31534362d26fb5a7b6fe7ad70470b7560d', '[\"*\"]', NULL, NULL, '2023-07-19 17:51:16', '2023-07-19 17:51:16'),
(245, 'App\\Models\\User', 2, 'token', 'e348e337a627e636b1fc2ff60389e722b7ac11c4ca1a2dcb066f63f6b5d27469', '[\"*\"]', NULL, NULL, '2023-07-19 17:56:06', '2023-07-19 17:56:06'),
(246, 'App\\Models\\User', 2, 'token', 'cba0a9ce28a978d8768b50b818472719e4732ed22036538d08868cb8ca6fb93a', '[\"*\"]', NULL, NULL, '2023-07-19 18:00:25', '2023-07-19 18:00:25'),
(247, 'App\\Models\\User', 2, 'token', '6bea373e29bec141b0743eb3c60e3001de22cc4370b33d293861bccb4482ea58', '[\"*\"]', NULL, NULL, '2023-07-19 18:00:54', '2023-07-19 18:00:54'),
(248, 'App\\Models\\User', 2, 'token', 'a8c9ffb46099e479088c45b1e1a19e3c57237bc3faa790e8000278c2d751f1d3', '[\"*\"]', NULL, NULL, '2023-07-19 18:00:59', '2023-07-19 18:00:59'),
(249, 'App\\Models\\User', 2, 'token', '97c859581a23eb39483735b77168c6841e0f85c92dda3198e9201d1a06c2b6bb', '[\"*\"]', NULL, NULL, '2023-07-19 18:01:08', '2023-07-19 18:01:08'),
(250, 'App\\Models\\User', 2, 'token', '9d38a72de24bedb188e2f226f0e262db976917a556a497aa63d36bbb55372ba4', '[\"*\"]', NULL, NULL, '2023-07-19 18:02:08', '2023-07-19 18:02:08'),
(251, 'App\\Models\\User', 2, 'token', '2543437471546599c04b28bf1d923b137f6790e69c7adf11a88c76a5161f25d4', '[\"*\"]', NULL, NULL, '2023-07-19 18:03:27', '2023-07-19 18:03:27'),
(252, 'App\\Models\\User', 2, 'token', '988e7b989e9f2e6c8d764d8278c96102055fbfc22363a7ff20f9870054976c13', '[\"*\"]', NULL, NULL, '2023-07-19 18:05:04', '2023-07-19 18:05:04'),
(253, 'App\\Models\\User', 2, 'token', 'd66fac8ba4aa4682a7e5b79e4c73c3737d2adbbd134f6164b1b90d752aa2f802', '[\"*\"]', NULL, NULL, '2023-07-19 18:05:29', '2023-07-19 18:05:29'),
(254, 'App\\Models\\User', 2, 'token', 'e389690cd4cc60ed75540c275da6a85a99fe7acc7df27fdadc551fdd332108b8', '[\"*\"]', NULL, NULL, '2023-07-19 18:05:39', '2023-07-19 18:05:39'),
(255, 'App\\Models\\User', 2, 'token', '429bf2be5739915815e5dd7f2e3646a3e6d76eff21bb900b5a5d81a5ca13caa9', '[\"*\"]', NULL, NULL, '2023-07-19 18:07:43', '2023-07-19 18:07:43'),
(256, 'App\\Models\\User', 2, 'token', 'e5e303c0cee45e42ce37c7bfd15fd1bf7101968a604115f34853fce958699c5b', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:05', '2023-07-19 18:08:05'),
(257, 'App\\Models\\User', 2, 'token', '5a0464df7a0443937077e2b111c4d944078eb3e1d254b754251cb8517c8cbce0', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:33', '2023-07-19 18:08:33'),
(258, 'App\\Models\\User', 2, 'token', 'b0fd68bcd6e3d515124428c63f70fc99796fadad79b0d2928ec2299a89b34f5d', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:39', '2023-07-19 18:08:39'),
(259, 'App\\Models\\User', 2, 'token', '7d5c2a94054ae8494ba2b13d6f83f3033dac753acc0b8b53324a1397ea025ed5', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:40', '2023-07-19 18:08:40'),
(260, 'App\\Models\\User', 2, 'token', '077f0ea308778fa441f879aac2449921907a36217c4aa34c58f8116d73b20aa7', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:40', '2023-07-19 18:08:40'),
(261, 'App\\Models\\User', 2, 'token', '747862d9e291b8b97cd3c966c7f58a1b8ec6fee8f80225bd56e50b973fb0dfbc', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:41', '2023-07-19 18:08:41'),
(262, 'App\\Models\\User', 2, 'token', 'e4f23aeba7eacac77f02215539d1e10e6d937265011e79c7ee84e8fa8cc0a2a2', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:41', '2023-07-19 18:08:41'),
(263, 'App\\Models\\User', 2, 'token', '49b655b88079852ca359a78e1b4e338ca74802b25c95f52fd26b8843b7cd2a80', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:44', '2023-07-19 18:08:44'),
(264, 'App\\Models\\User', 2, 'token', '0f5be9e730c9f5cab73d16cc5997989d349afeb9d46aa0dd1abe0a41775f10c9', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:45', '2023-07-19 18:08:45'),
(265, 'App\\Models\\User', 2, 'token', 'a5de31c9ae86fb38fa5e08baac601c0dfe2497ec0a9d229a401f22d9251e6fe3', '[\"*\"]', NULL, NULL, '2023-07-19 18:08:46', '2023-07-19 18:08:46'),
(266, 'App\\Models\\User', 2, 'token', 'cf0e52a5d049990247a61b518fe3fa6ae1eda4e625976decfe51c1a4b055a2fa', '[\"*\"]', NULL, NULL, '2023-07-19 18:11:52', '2023-07-19 18:11:52'),
(267, 'App\\Models\\User', 2, 'token', '4917c5ce70b56c96c1ca96446d048da2a9dfd1ebfab04c8a0fec0458327cc495', '[\"*\"]', NULL, NULL, '2023-07-19 18:12:11', '2023-07-19 18:12:11'),
(268, 'App\\Models\\User', 2, 'token', 'a63e98c7aa028439cbe33720e3ed00371640aa159d69e5056866674749a4528a', '[\"*\"]', NULL, NULL, '2023-07-19 18:13:32', '2023-07-19 18:13:32'),
(269, 'App\\Models\\User', 2, 'token', '55440ef199e0edd130fdfb0069e74a019436c2972ef1d95c533559e8a904b304', '[\"*\"]', NULL, NULL, '2023-07-19 18:13:41', '2023-07-19 18:13:41'),
(270, 'App\\Models\\User', 2, 'token', '33ebd7b67b5bf1c03b272d19d89bc0e95627082c5497cee26d9ce3edf585c5c4', '[\"*\"]', NULL, NULL, '2023-07-19 18:13:57', '2023-07-19 18:13:57'),
(271, 'App\\Models\\User', 2, 'token', '0f71f356983780c81e9967fb1bd7cbf48d8be52d9c7a3bd04bea9324f6c264da', '[\"*\"]', NULL, NULL, '2023-07-19 18:14:45', '2023-07-19 18:14:45'),
(272, 'App\\Models\\User', 2, 'token', '777d3c915e8062d386a2a7e9cf9b814f393bae71d35a9b9deecbb927e9bf05b1', '[\"*\"]', NULL, NULL, '2023-07-19 18:14:55', '2023-07-19 18:14:55'),
(273, 'App\\Models\\User', 2, 'token', 'ac0677275910086c75240e57e7fd00221ae09f289f9649b8d554ebf03c19648a', '[\"*\"]', NULL, NULL, '2023-07-19 18:15:02', '2023-07-19 18:15:02'),
(274, 'App\\Models\\User', 2, 'token', '890ecfc7aa71be4822e0855ca14de38f6dca7fdde4baeb3d912c6cf44b5e6522', '[\"*\"]', NULL, NULL, '2023-07-19 18:17:05', '2023-07-19 18:17:05'),
(275, 'App\\Models\\User', 2, 'token', '826e073cf555bfad82e57dee7f2812b4b956a35d5f6e354fa75f9fac60898c47', '[\"*\"]', NULL, NULL, '2023-07-19 18:17:06', '2023-07-19 18:17:06'),
(276, 'App\\Models\\User', 2, 'token', 'c8d209681ea2fa8529748cb4b49b31ae8b416a51871a10722e31043bc6416a73', '[\"*\"]', NULL, NULL, '2023-07-19 18:17:23', '2023-07-19 18:17:23'),
(277, 'App\\Models\\User', 2, 'token', 'dfdf663e1d3f3a8aad5ee843ad7468b8f6a06dc09c84ec8eb546337e6ca9ec11', '[\"*\"]', NULL, NULL, '2023-07-19 18:19:04', '2023-07-19 18:19:04'),
(278, 'App\\Models\\User', 2, 'token', '012d1046b6289fac325054d43b7f59c428eecd928c1c31309373b9e2413afd1e', '[\"*\"]', NULL, NULL, '2023-07-19 18:22:02', '2023-07-19 18:22:02'),
(279, 'App\\Models\\User', 2, 'token', 'e657ca9cf27e64a6b56f8c10a137844d1729ff44671d79574f93f827b4f4e437', '[\"*\"]', NULL, NULL, '2023-07-19 18:22:05', '2023-07-19 18:22:05'),
(280, 'App\\Models\\User', 2, 'token', '9800df55f4f8fe2c827c1d51c7b6d5d844e5600450dc7bd388ced5e6f5807828', '[\"*\"]', NULL, NULL, '2023-07-19 18:23:30', '2023-07-19 18:23:30'),
(281, 'App\\Models\\User', 2, 'token', '750dafc7959ec5d9d1e27659a910458746cc37d1e8601e3f746a5abcd26972b5', '[\"*\"]', NULL, NULL, '2023-07-19 18:24:34', '2023-07-19 18:24:34'),
(282, 'App\\Models\\User', 2, 'token', '7fe15470d06e2ede6b88c53d658fc8eff763926fba576a0c0ea20cb6457574ee', '[\"*\"]', NULL, NULL, '2023-07-19 18:25:55', '2023-07-19 18:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(20) UNSIGNED NOT NULL,
  `plan_img` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_img`, `title`, `description`, `price`, `created_at`, `updated_at`) VALUES
(4, 'plan.png', 'Ekonom', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ', '30', '2023-07-07 15:07:04', '2023-07-07 15:07:04'),
(5, 'plan.png', 'Gold', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ', '60', '2023-07-07 15:07:20', '2023-07-07 15:07:20'),
(6, 'plan.png', 'Premium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ', '90', '2023-07-07 15:07:40', '2023-07-07 15:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `birthday`, `phone`, `address`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Fidan', 'Valiyeva', 'valiyeva@gmail.com', '2023-07-07', '994703240181', 'M.Axundov 9999', '$2y$10$3UWCNfNMYzMuFDNmoxvN/.qNM6fDIi5e2ZIEyVcvpRiJPoBXGt.0O', NULL, '2023-07-06 22:33:40', '2023-07-21 10:41:20'),
(26, 'Hillary Hendricks', 'Marshall', 'vofy@mailinator.com', '2005-08-17', '+1 (657) 119-7156', 'Minima hic non sit i', '$2y$10$FRYg0Q27.h/lZym5oSMOuOhtK6UwisK90WkYLvX5E.CPyphNpAA9u', NULL, '2023-07-07 13:15:34', '2023-07-07 13:15:34'),
(28, 'Rowan Ayala', 'Charles', 'rabi@mailinator.com', '2016-09-10', '+1 (444) 451-2916', 'Esse et deleniti qu', '$2y$10$Da0dIJobEieciln5NSKROO0EyDKLVcsyNzNQJb2wGK3SeXA3aSDgy', NULL, '2023-07-07 13:20:24', '2023-07-07 13:20:24'),
(29, 'admin', 'admin', 'admin@admin.com', '2023-07-23', '12412949124', 'Gənclər Evi 2', '$2y$10$xQqI625CnPzJpvmi8.dop.Ol.CXOMzfRK1VmjbcQ/Mhh8eA45gbkS', NULL, '2023-07-07 14:57:15', '2023-07-19 17:27:17'),
(30, 'Abra Larson', 'Tyler', 'sadotavuxe@mailinator.com', '2011-10-25', '8031938451', 'Aut perspiciatis in', '$2y$10$Beqdx6XyKfKTtge0yRtL7OYQytYGBdB1AIAShb1huh08sX8/CzvRm', NULL, '2023-07-07 18:24:00', '2023-07-07 18:24:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

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
-- Indexes for table `plans`
--
ALTER TABLE `plans`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `foods_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
