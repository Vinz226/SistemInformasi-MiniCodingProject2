-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 08:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasminicoding2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-05-24 20:55:12', '2024-05-24 20:55:12'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-05-24 20:55:12', '2024-05-24 20:55:12'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-05-24 20:55:12', '2024-05-24 20:55:12'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-05-24 20:55:12', '2024-05-24 20:55:12'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-05-24 20:55:12', '2024-05-24 20:55:12'),
(13, 0, 11, 'Karyawans', 'icon-file', 'karyawans', NULL, '2024-05-24 20:56:27', '2024-05-24 20:56:27'),
(14, 0, 11, 'Users', 'icon-file', 'users', NULL, '2024-05-24 21:13:49', '2024-05-24 21:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 20:53:58', '2024-05-24 20:53:58'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 20:54:08', '2024-05-24 20:54:08'),
(3, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-05-24 20:54:13', '2024-05-24 20:54:13'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 20:54:17', '2024-05-24 20:54:17'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 20:55:01', '2024-05-24 20:55:01'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 20:55:15', '2024-05-24 20:55:15'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 20:55:18', '2024-05-24 20:55:18'),
(8, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Karyawan\",\"model_name\":\"App\\\\Models\\\\Karyawan\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\KaryawanController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Pangkat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Telepon\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"ID\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\"}', '2024-05-24 20:56:26', '2024-05-24 20:56:26'),
(9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 20:56:27', '2024-05-24 20:56:27'),
(10, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 20:57:20', '2024-05-24 20:57:20'),
(11, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 20:57:23', '2024-05-24 20:57:23'),
(12, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:01:34', '2024-05-24 21:01:34'),
(13, 1, 'admin/karyawans/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:01:44', '2024-05-24 21:01:44'),
(14, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:03:38', '2024-05-24 21:03:38'),
(15, 1, 'admin/karyawans/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:03:44', '2024-05-24 21:03:44'),
(16, 1, 'admin/karyawans/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:05:08', '2024-05-24 21:05:08'),
(17, 1, 'admin/karyawans', 'POST', '127.0.0.1', '{\"Nama\":\"Sandy Eka\",\"Pangkat\":\"CEO\",\"Telepon\":\"0838348385\",\"Email\":\"sandy@gmail.com\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/karyawans\"}', '2024-05-24 21:06:10', '2024-05-24 21:06:10'),
(18, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:06:10', '2024-05-24 21:06:10'),
(19, 1, 'admin/karyawans/2218123/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 21:06:24', '2024-05-24 21:06:24'),
(20, 1, 'admin/karyawans/2218123', 'PUT', '127.0.0.1', '{\"Nama\":\"Sandy Eka\",\"Pangkat\":\"CEO\",\"Telepon\":\"0838348387\",\"Email\":\"sandy@gmail.com\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\",\"_method\":\"PUT\"}', '2024-05-24 21:06:36', '2024-05-24 21:06:36'),
(21, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:06:36', '2024-05-24 21:06:36'),
(22, 1, 'admin/karyawans/2218123/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 21:06:58', '2024-05-24 21:06:58'),
(23, 1, 'admin/karyawans/2218123/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 21:07:38', '2024-05-24 21:07:38'),
(24, 1, 'admin/karyawans/2218123', 'PUT', '127.0.0.1', '{\"Nama\":\"Sandy Eka\",\"Pangkat\":\"CEO\",\"Telepon\":\"0838348385\",\"Email\":\"sandy@gmail.com\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/karyawans\\/create\"}', '2024-05-24 21:07:44', '2024-05-24 21:07:44'),
(25, 1, 'admin/karyawans/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:07:45', '2024-05-24 21:07:45'),
(26, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:07:49', '2024-05-24 21:07:49'),
(27, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:09:14', '2024-05-24 21:09:14'),
(28, 1, 'admin/karyawans/2218122/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 21:09:20', '2024-05-24 21:09:20'),
(29, 1, 'admin/karyawans/2218122', 'PUT', '127.0.0.1', '{\"Nama\":\"Kevin\",\"Pangkat\":\"Manager\",\"Telepon\":\"083834830794\",\"Email\":\"kevin@gmail.com\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\",\"_method\":\"PUT\"}', '2024-05-24 21:12:26', '2024-05-24 21:12:26'),
(30, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:12:26', '2024-05-24 21:12:26'),
(31, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 21:12:40', '2024-05-24 21:12:40'),
(32, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"User\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"ID\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\"}', '2024-05-24 21:13:49', '2024-05-24 21:13:49'),
(33, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 21:13:50', '2024-05-24 21:13:50'),
(34, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 21:14:29', '2024-05-24 21:14:29'),
(35, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:14:30', '2024-05-24 21:14:30'),
(36, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:14:41', '2024-05-24 21:14:41'),
(37, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"Kevin\",\"email\":\"kevin@gmail.com\",\"email_verified_at\":\"2024-05-25 04:14:41\",\"password\":\"*****-filtered-out-*****\",\"remember_token\":\"ee\",\"_token\":\"Q3puVCNHqGDDDddnr1w0zBF5GbhENJjH9Jn95Ar3\"}', '2024-05-24 21:15:03', '2024-05-24 21:15:03'),
(38, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:04', '2024-05-24 21:15:04'),
(39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:26', '2024-05-24 21:15:26'),
(40, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:28', '2024-05-24 21:15:28'),
(41, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:30', '2024-05-24 21:15:30'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:33', '2024-05-24 21:15:33'),
(43, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:34', '2024-05-24 21:15:34'),
(44, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:37', '2024-05-24 21:15:37'),
(45, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:15:39', '2024-05-24 21:15:39'),
(46, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-05-24 21:16:01', '2024-05-24 21:16:01'),
(47, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:16:34', '2024-05-24 21:16:34'),
(48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:20:00', '2024-05-24 21:20:00'),
(49, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-05-24 21:20:08', '2024-05-24 21:20:08'),
(50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:20:18', '2024-05-24 21:20:18'),
(51, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:20:23', '2024-05-24 21:20:23'),
(52, 1, 'admin/karyawans', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-05-24 21:20:25', '2024-05-24 21:20:25'),
(53, 1, 'admin/karyawans', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2024-05-24 21:20:43', '2024-05-24 21:20:43'),
(54, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:20:48', '2024-05-24 21:20:48'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:22:43', '2024-05-24 21:22:43'),
(56, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-05-24 21:23:33', '2024-05-24 21:23:33'),
(57, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-05-24 21:23:35', '2024-05-24 21:23:35'),
(58, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"action\":\"open admin\",\"uri\":null}', '2024-05-24 21:24:15', '2024-05-24 21:24:15'),
(59, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"action\":\"admin\",\"uri\":null}', '2024-05-24 21:24:22', '2024-05-24 21:24:22'),
(60, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"action\":null,\"uri\":\"admin\"}', '2024-05-24 21:24:27', '2024-05-24 21:24:27'),
(61, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"action\":null,\"uri\":\"indes\\\\x\"}', '2024-05-24 21:24:40', '2024-05-24 21:24:40'),
(62, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"action\":null,\"uri\":\"index\"}', '2024-05-24 21:24:46', '2024-05-24 21:24:46'),
(63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:24:51', '2024-05-24 21:24:51'),
(64, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:28:43', '2024-05-24 21:28:43'),
(65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:32:48', '2024-05-24 21:32:48'),
(66, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 21:39:25', '2024-05-24 21:39:25'),
(67, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:54:37', '2024-05-24 21:54:37'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 21:54:38', '2024-05-24 21:54:38'),
(69, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 21:54:41', '2024-05-24 21:54:41'),
(70, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-24 21:54:47', '2024-05-24 21:54:47'),
(71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 21:54:49', '2024-05-24 21:54:49'),
(72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 21:55:00', '2024-05-24 21:55:00'),
(73, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 21:55:08', '2024-05-24 21:55:08'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:55:18', '2024-05-24 21:55:18'),
(75, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 21:55:40', '2024-05-24 21:55:40'),
(76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:55:44', '2024-05-24 21:55:44'),
(77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:58:54', '2024-05-24 21:58:54'),
(78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 21:59:01', '2024-05-24 21:59:01'),
(79, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 22:06:03', '2024-05-24 22:06:03'),
(80, 1, 'admin/karyawans', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-05-24 22:17:45', '2024-05-24 22:17:45'),
(81, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 22:22:07', '2024-05-24 22:22:07'),
(82, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 22:26:44', '2024-05-24 22:26:44'),
(83, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:05', '2024-05-24 23:10:05'),
(84, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:09', '2024-05-24 23:10:09'),
(85, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:12', '2024-05-24 23:10:12'),
(86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:13', '2024-05-24 23:10:13'),
(87, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:14', '2024-05-24 23:10:14'),
(88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:20', '2024-05-24 23:10:20'),
(89, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:24', '2024-05-24 23:10:24'),
(90, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:26', '2024-05-24 23:10:26'),
(91, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 23:10:30', '2024-05-24 23:10:30'),
(92, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 23:14:48', '2024-05-24 23:14:48'),
(93, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-05-24 23:14:53', '2024-05-24 23:14:53'),
(94, 1, 'admin/karyawans', 'GET', '127.0.0.1', '[]', '2024-05-24 23:16:20', '2024-05-24 23:16:20'),
(95, 1, 'admin/karyawans', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-05-24 23:16:23', '2024-05-24 23:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-05-24 20:55:12', '2024-05-24 20:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-05-24 20:53:29', '2024-05-24 20:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$IxUL5opExqND43Nmqw94Y.H1SF9nRVDF9WWFVotzOxtObI0xXzCzK', 'Administrator', NULL, NULL, '2024-05-24 20:53:29', '2024-05-24 20:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `ID` int UNSIGNED NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pangkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID`, `Nama`, `Pangkat`, `Telepon`, `Email`, `Foto`, `created_at`, `updated_at`) VALUES
(2218122, 'Kevin', 'Manager', '083834830794', 'kevin@gmail.com', 'images/WhatsApp Image 2024-05-17 at 08.46.00.jpeg', NULL, '2024-05-24 21:12:26'),
(2218123, 'Sandy Eka', 'CEO', '0838348385', 'sandy@gmail.com', 'images/persia.png', '2024-05-24 21:06:10', '2024-05-24 21:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_05_25_035626_create_Karyawan_table', 3);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kevin', 'kevin@gmail.com', '2024-05-24 21:14:41', '$2y$12$EeK00iVctKPm/3zvkmnqfOz0EzXpcgh1sPkTiEPl7hAX9Tae.BQ.y', 'ee', '2024-05-24 21:15:04', '2024-05-24 21:15:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2218124;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
