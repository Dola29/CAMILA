-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-12-2020 a las 02:35:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `camila_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_referencia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nombre`, `cedula`, `telefono_referencia`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(6, 'Juan Palotes', '42270681209', '8095645149', 1, 1, '2020-12-17 16:08:59', '2020-12-17 16:12:41', NULL, 'ce0080ca4092ee61ca0a54ed2ebc5886'),
(7, 'Maria Montero', '15400947546', '8097857471', 1, NULL, '2020-12-17 16:12:29', '2020-12-17 16:12:45', '2020-12-17 16:12:45', '2bff8a690075de52e1c82e5f090c971e'),
(8, 'Josue Alcantara', '40255957857', '1809457458', 1, NULL, '2020-12-18 04:09:22', '2020-12-18 04:09:22', NULL, 'fcb30a42d7b3061aa34dc3422b6f9081');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `line_inventories`
--

CREATE TABLE `line_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supply_line_id` int(11) NOT NULL,
  `cantidad_existencia` int(11) DEFAULT NULL,
  `costo_total` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `line_inventories`
--

INSERT INTO `line_inventories` (`id`, `tipo`, `supply_line_id`, `cantidad_existencia`, `costo_total`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(2, 'PREPAGO', 27, 2, '400.00', 1, NULL, '2020-12-17 22:52:20', '2020-12-17 23:39:46', NULL, '5ebb46222cc2106e7c4b984631237f72'),
(3, 'PREPAGO', 28, 2, '400.00', 1, NULL, '2020-12-19 04:57:12', '2020-12-19 19:02:16', NULL, 'fbf33d2281cb6f78ac9f265215069d47'),
(4, 'PREPAGO', 29, NULL, '0.00', 1, NULL, '2020-12-19 18:28:26', '2020-12-19 18:28:26', NULL, '881ac1d90dfe3dd3bfca6af0895a37e7'),
(5, 'PREPAGO', 30, NULL, '0.00', 1, NULL, '2020-12-19 18:28:44', '2020-12-19 18:28:44', NULL, '864e4424d2d60d58fb50fad897364549');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `line_inventory_details`
--

CREATE TABLE `line_inventory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `line_inventory_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(11,2) NOT NULL,
  `tipo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_serie` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `line_inventory_details`
--

INSERT INTO `line_inventory_details` (`id`, `line_inventory_id`, `cantidad`, `costo`, `tipo`, `numero_serie`, `orden_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(1, 2, 1, '200.00', 'E', '5HR4QZGd', NULL, 1, NULL, '2020-12-17 23:36:04', '2020-12-17 23:36:04', NULL, '765c7793da719dfa35b5c778588a8720'),
(2, 2, 1, '200.00', 'E', 'w4PbiaEJ', NULL, 1, NULL, '2020-12-17 23:39:46', '2020-12-17 23:39:46', NULL, 'e6fd4fe5ea88ced36831e1ff100e7ae7'),
(3, 3, 1, '250.00', 'E', '215313513513', NULL, 1, NULL, '2020-12-19 04:57:37', '2020-12-19 04:57:37', NULL, 'd64068bf14c59ce2b3fe9768829f6d50'),
(4, 3, 1, '150.00', 'E', '5313513513', NULL, 1, NULL, '2020-12-19 19:02:16', '2020-12-19 19:02:16', NULL, '935d0ebd9c3af25b5706177ca965cf7c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'teZXKj1QPy5dyCmQtyMr6m4s57YJO7zTGGF8I5zf', NULL, 'http://localhost', 1, 0, 0, '2020-08-21 02:15:50', '2020-08-21 02:15:50'),
(2, NULL, 'Laravel Password Grant Client', 'sBReA3uW6bLbN7u5XdwYa9rycO6KvD3QoRWs5BrP', 'users', 'http://localhost', 0, 1, 0, '2020-08-21 02:15:50', '2020-08-21 02:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-21 02:15:50', '2020-08-21 02:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `monto_total` decimal(11,2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `status_id`, `client_id`, `monto_total`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(5, 7, 6, '2550.00', 1, NULL, '2020-12-18 05:09:22', '2020-12-19 20:29:40', NULL, '8abf80bcf2c801c7a2595f4e2309f0f7'),
(6, 7, 6, '0.00', 1, NULL, '2020-12-19 18:25:45', '2020-12-19 18:25:45', NULL, 'ebeb3414aff0183e397c06b5b2ff563f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suplidor` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `nombre`, `suplidor`, `cantidad`, `tipo`, `precio`, `key_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 5, 27, 'PREPAGO', '', 1, 'L', '0.00', '89d7bb1065d936e67e18a78a48ccb0f5', '2020-12-18 19:24:30', '2020-12-18 20:03:37', '2020-12-18 20:03:37'),
(2, 5, 21, 'lumia 4 - 1234', '', 1, 'C', '0.00', 'cafb010745ce8987d499156e40637cf8', '2020-12-18 19:41:27', '2020-12-18 20:03:41', '2020-12-18 20:03:41'),
(3, 5, 27, 'PREPAGO - Claro', '', 1, 'L', '0.00', '7632e4400a3f26cae0b3b0721de8d320', '2020-12-18 19:43:30', '2020-12-18 20:03:45', '2020-12-18 20:03:45'),
(4, 5, 21, 'lumia 4 - 1234', '', 1, 'C', '5500.00', 'eb93245c9e475806b9251a84468b3386', '2020-12-18 19:59:33', '2020-12-18 20:15:18', '2020-12-18 20:15:18'),
(5, 5, 27, 'PREPAGO - Claro', 'Claro', 1, 'L', '250.00', '1b651139e1e3c7ad1dca65440649f22a', '2020-12-18 20:15:36', '2020-12-18 20:29:26', '2020-12-18 20:29:26'),
(6, 5, 21, 'lumia 4 - 1234', 'Nokia', 1, 'C', '250.00', '400daec77c6d6a74bf88aa8ac8244859', '2020-12-18 20:16:47', '2020-12-18 20:29:22', '2020-12-18 20:29:22'),
(7, 5, 21, 'lumia 4 - 1234', 'Nokia', 1, 'C', '200.00', 'a2249ff3fd560a2eee63e31fb27219e0', '2020-12-18 20:30:58', '2020-12-18 20:31:29', '2020-12-18 20:31:29'),
(8, 5, 27, 'PREPAGO - Claro', 'Claro', 1, 'L', '300.00', '623e7fbad282c6519ce707096c9ab7e6', '2020-12-18 20:31:18', '2020-12-18 20:32:23', '2020-12-18 20:32:23'),
(9, 5, 27, 'PREPAGO - Claro', 'Claro', 1, 'L', '2000.00', 'e6cbf2f32c011fdc7739c14a0209901a', '2020-12-18 20:32:48', '2020-12-18 20:33:01', '2020-12-18 20:33:01'),
(10, 5, 27, 'PREPAGO - Claro', 'Claro', 1, 'L', '250.00', 'cd573e6c7868a6ae2faf0245b92748c6', '2020-12-18 20:35:16', '2020-12-19 04:56:14', '2020-12-19 04:56:14'),
(11, 5, 21, 'lumia 4 - 1234', 'Nokia', 1, 'C', '2000.00', '4a3884128c2a0bcfbb07742cc970efb1', '2020-12-18 20:39:50', '2020-12-18 20:39:57', '2020-12-18 20:39:57'),
(12, 5, 21, 'lumia 4 - 1234', 'Nokia', 1, 'C', '5000.00', 'c5bafe43aa7e7d89d4dbfde6fbed1a51', '2020-12-19 04:34:11', '2020-12-19 04:56:08', '2020-12-19 04:56:08'),
(13, 5, 21, 'lumia 4 - 1234', 'Nokia', 1, 'C', '2500.00', '13375bdf2dea3a980305c87d83ab1c7d', '2020-12-19 18:23:31', NULL, '2020-12-19 18:23:31'),
(14, 5, 28, 'PREPAGO - Altice', 'Claro', 1, 'L', '50.00', '1954d28b69e9aba9b8093877bfafdd33', '2020-12-19 20:29:39', NULL, '2020-12-19 20:29:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_inventories`
--

CREATE TABLE `phone_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supply_id` int(11) NOT NULL,
  `cantidad_existencia` int(11) DEFAULT NULL,
  `costo_total` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `phone_inventories`
--

INSERT INTO `phone_inventories` (`id`, `nombre`, `supply_id`, `cantidad_existencia`, `costo_total`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(19, 'lumia 4 - lumia 4', 21, 1, '500.00', 1, NULL, '2020-12-17 18:49:07', '2020-12-17 19:52:48', NULL, '3a6348ed57f3dca66023a89f9f3c60a5'),
(20, 'Galaxy - Note 8', 22, 2, '12100.00', 1, NULL, '2020-12-19 18:31:58', '2020-12-19 18:36:56', NULL, '95247b93e61aafbd0cf8634ac8ac5c5b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_inventory_details`
--

CREATE TABLE `phone_inventory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_inventory_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(11,2) NOT NULL,
  `tipo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `phone_inventory_details`
--

INSERT INTO `phone_inventory_details` (`id`, `phone_inventory_id`, `cantidad`, `costo`, `tipo`, `imei`, `orden_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(55, 19, 1, '500.00', 'E', '540917012100303', NULL, 1, NULL, '2020-12-17 19:47:34', '2020-12-17 19:47:34', NULL, 'ea1f57f35165080090bf20cc571f8222'),
(56, 19, 1, '358.36', 'E', '018437679212328', NULL, 1, NULL, '2020-12-17 19:51:57', '2020-12-17 19:52:48', '2020-12-17 19:52:48', '6822d3d9ae4fd91a685ca8f61cdf161b'),
(57, 20, 1, '6000.00', 'E', '339736566262300', NULL, 1, NULL, '2020-12-19 18:35:18', '2020-12-19 18:35:18', NULL, 'b21689f5d0a3925dcec579a387d9f001'),
(58, 20, 1, '6100.00', 'E', '985830792778234', NULL, 1, NULL, '2020-12-19 18:36:56', '2020-12-19 18:36:56', NULL, '41d61012f24f4f2af8e77d8d610f41e6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `nombre`, `code`, `default`, `activo`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(7, 'Creada', 'creada', 'si', 'si', 1, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suplidores`
--

CREATE TABLE `suplidores` (
  `COL 1` int(2) DEFAULT NULL,
  `COL 2` varchar(31) DEFAULT NULL,
  `COL 3` varchar(32) DEFAULT NULL,
  `COL 4` varchar(29) DEFAULT NULL,
  `COL 5` varchar(16) DEFAULT NULL,
  `COL 6` varchar(16) DEFAULT NULL,
  `COL 7` varchar(28) DEFAULT NULL,
  `COL 8` varchar(40) DEFAULT NULL,
  `COL 9` varchar(3) DEFAULT NULL,
  `COL 10` varchar(41) DEFAULT NULL,
  `COL 11` varchar(2) DEFAULT NULL,
  `COL 12` varchar(10) DEFAULT NULL,
  `COL 13` int(1) DEFAULT NULL,
  `COL 14` varchar(15) DEFAULT NULL,
  `COL 15` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enlace` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `empresa`, `correo`, `telefono`, `enlace`, `activo`, `comentario`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(20, 'Nokia', 'vendedor@nokia.com', '1 (809) 243-5565', 'www.nokiard.com.do', 'si', 'un comentario', 1, 1, '2020-12-17 16:49:03', '2020-12-19 04:45:00', NULL, '2594524b1bff4327c7b71602ba514d65'),
(21, 'Claro', 'ventas@claro.com.do', '1 (809) 844-5544', 'claro.com.do', 'si', 'un comentario', 1, NULL, '2020-12-17 20:50:28', '2020-12-17 20:50:28', NULL, '9d0b0fb4abf2e85cb54cdd44b60224df'),
(22, 'Altice', 'ventas@altice.com.do', '1 (809) 254-4145', NULL, 'si', 'un comentario', 1, NULL, '2020-12-19 18:26:55', '2020-12-19 18:26:55', NULL, '14bd70e9cdb147181a13cada0cfd3a31'),
(23, 'Viva', 'ventas@viva.com.do', '1 (809) 243-5565', NULL, 'si', 'un comentario', 1, NULL, '2020-12-19 18:27:55', '2020-12-19 18:27:55', NULL, '76c0e098dbbd184d214bb0045ac7944c'),
(24, 'Samsung', 'ventas@samsung.com.do', '1 (826) 468-4848', NULL, 'si', 'aksldakdlmlkmsad', 1, NULL, '2020-12-19 18:30:33', '2020-12-19 18:30:33', NULL, 'f5a3d990337a6eea963ab9ecd7283078');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `suplidor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modelo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `supplies`
--

INSERT INTO `supplies` (`id`, `nombre`, `supplier_id`, `suplidor`, `modelo`, `activo`, `comentario`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(18, 'lumia', 20, 'Nokia', '1234', 'si', 'la descripcion', 1, NULL, '2020-12-17 18:17:31', '2020-12-17 18:29:27', '2020-12-17 18:29:27', '002bdbf995ae51e573bd3634f3431c93'),
(19, 'lumia 2', 20, 'Nokia', '1234', 'si', 'sadasdadadasdads', 1, NULL, '2020-12-17 18:45:26', '2020-12-17 18:49:12', '2020-12-17 18:49:12', '7b7312b79604f6ef65008030952f204b'),
(20, 'lumia 3', 20, 'Nokia', '1234', 'si', 'sadasdadadasdads', 1, NULL, '2020-12-17 18:46:48', '2020-12-17 18:49:15', '2020-12-17 18:49:15', 'cef2e0fef0237894df9f19cdb3e425cf'),
(21, 'lumia 4', 20, 'Nokia', '1234', 'si', 'sadasdadadasdads', 1, NULL, '2020-12-17 18:49:07', '2020-12-17 18:49:07', NULL, '3a6348ed57f3dca66023a89f9f3c60a5'),
(22, 'Galaxy', 24, 'Samsung', 'Note 8', 'si', 'una descripcion del cel.', 1, 1, '2020-12-19 18:31:58', '2020-12-19 18:33:59', NULL, '95247b93e61aafbd0cf8634ac8ac5c5b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supply_lines`
--

CREATE TABLE `supply_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `suplidor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `supply_lines`
--

INSERT INTO `supply_lines` (`id`, `tipo`, `supplier_id`, `suplidor`, `activo`, `comentario`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `key_id`) VALUES
(22, 'PREPAGO', 21, 'Claro', 'si', 'una linea prepago', 1, NULL, '2020-12-17 21:17:01', '2020-12-17 22:39:07', '2020-12-17 22:39:07', 'bb8ef7545b3b7b37335124a9c74c7e02'),
(23, 'PREPAGO', 21, 'Claro', 'si', 'linea telefonica prepago', 1, NULL, '2020-12-17 22:40:54', '2020-12-17 22:51:50', '2020-12-17 22:51:50', '5bb0946ca589124ff4b6011507fe6bfd'),
(24, 'PREPAGO', 21, 'Claro', 'si', 'linea telefonica prepago', 1, NULL, '2020-12-17 22:41:52', '2020-12-17 22:51:44', '2020-12-17 22:51:44', '058dc736ad854c66b5e513a2f30044bb'),
(25, 'PREPAGO', 21, 'Claro', 'si', 'linea telefonica prepago', 1, NULL, '2020-12-17 22:42:52', '2020-12-17 22:51:40', '2020-12-17 22:51:40', '297f7763b93ab76c4545bd814015c391'),
(26, 'PREPAGO', 21, 'Claro', 'si', 'linea telefonica prepago', 1, NULL, '2020-12-17 22:51:12', '2020-12-17 22:51:37', '2020-12-17 22:51:37', 'a4eb186ee9f2fea3be09bb0b243709f1'),
(27, 'PREPAGO', 21, 'Claro', 'si', 'Una linea prepago', 1, 1, '2020-12-17 22:52:20', '2020-12-19 04:56:29', '2020-12-19 04:56:29', '5ebb46222cc2106e7c4b984631237f72'),
(28, 'PREPAGO', 21, 'Claro', 'si', 'la descripcion de la linea', 1, NULL, '2020-12-19 04:57:12', '2020-12-19 04:57:12', NULL, 'fbf33d2281cb6f78ac9f265215069d47'),
(29, 'PREPAGO', 23, 'Viva', 'si', 'linea prepago de viva', 1, NULL, '2020-12-19 18:28:26', '2020-12-19 18:28:26', NULL, '881ac1d90dfe3dd3bfca6af0895a37e7'),
(30, 'PREPAGO', 22, 'Altice', 'si', 'linea prepago de altice', 1, NULL, '2020-12-19 18:28:44', '2020-12-19 18:28:44', NULL, '864e4424d2d60d58fb50fad897364549');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin', 'admin@camila.do', NULL, '$2y$10$O9FCxKKFHSTJ47XDAQk2.uQdm05nPkt6mTMQZ9K7PUnwAQUVpScIC', NULL, '2020-08-13 19:03:46', '2020-08-13 19:03:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `line_inventories`
--
ALTER TABLE `line_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `line_inventory_details`
--
ALTER TABLE `line_inventory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `phone_inventories`
--
ALTER TABLE `phone_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_inventory_details`
--
ALTER TABLE `phone_inventory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supply_lines`
--
ALTER TABLE `supply_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `line_inventories`
--
ALTER TABLE `line_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `line_inventory_details`
--
ALTER TABLE `line_inventory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `phone_inventories`
--
ALTER TABLE `phone_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `phone_inventory_details`
--
ALTER TABLE `phone_inventory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `supply_lines`
--
ALTER TABLE `supply_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
