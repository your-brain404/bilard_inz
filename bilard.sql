-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Paź 2020, 19:41
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bilard`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `subtitle`, `short_description`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`) VALUES
(1, 'O klubie', 'W skrócie', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Esse eveniet doloribus cumque quisquam quaerat eius excepturi, fugiat eos, quam omnis quis veritatis maxime saepe tenetur ipsum hic nisi. Nisi, laborum.', '2020-09-03/klub_1599149969.jpg', 'O klubie', NULL, '2020-09-12 07:39:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cups`
--

CREATE TABLE `cups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `live_broadcasts`
--

CREATE TABLE `live_broadcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `media`
--

INSERT INTO `media` (`id`, `type`, `name`, `path`, `size`, `created_at`, `updated_at`) VALUES
(25, 'image/jpeg', 'dart', '2020-09-03/dart_1599145340.jpg', 161142, '2020-09-03 13:02:20', '2020-09-03 13:02:20'),
(26, 'image/jpeg', 'mlodzi_ludzie', '2020-09-03/mlodzi_ludzie_1599145340.jpg', 772455, '2020-09-03 13:02:21', '2020-09-03 13:02:21'),
(27, 'image/jpeg', 'tenis_stolowy', '2020-09-03/tenis_stolowy_1599145342.jpg', 755302, '2020-09-03 13:02:23', '2020-09-03 13:02:23'),
(28, 'image/jpeg', 'klub', '2020-09-03/klub_1599149969.jpg', 49868, '2020-09-03 14:19:29', '2020-09-03 14:19:29'),
(57, 'image/jpeg', 'bilard', '2020-09-12/bilard_1599903006.jpg', 60380, '2020-09-12 07:30:06', '2020-09-12 07:30:06'),
(58, 'image/jpeg', 'ping_pong', '2020-09-12/ping_pong_1599903239.jpg', 677578, '2020-09-12 07:34:01', '2020-09-12 07:34:01'),
(59, 'image/jpeg', 'rzutki', '2020-09-12/rzutki_1599906429.jpg', 286822, '2020-09-12 08:27:10', '2020-09-12 08:27:10'),
(60, 'image/jpeg', '2912522', '2020-09-15/2912522_1600184875.jpg', 282818, '2020-09-15 13:47:55', '2020-09-15 13:47:55');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_23_103958_create_about_us_table', 1),
(5, '2020_05_23_104037_create_contact_table', 1),
(6, '2020_05_23_104105_create_cups_table', 1),
(7, '2020_05_23_104119_create_gallery_table', 1),
(8, '2020_05_23_104140_create_live_broadcasts_table', 1),
(9, '2020_05_23_104227_create_news_table', 1),
(10, '2020_05_23_104343_create_offers_table', 1),
(11, '2020_05_23_104400_create_partners_table', 1),
(12, '2020_05_23_104413_create_players_table', 1),
(13, '2020_05_23_104459_create_pool_history_table', 1),
(14, '2020_05_23_104514_create_price_list_table', 1),
(15, '2020_05_23_104530_create_reservations_table', 1),
(16, '2020_05_23_104552_create_settings_table', 1),
(17, '2020_05_23_104621_create_shop_categories_table', 1),
(18, '2020_05_23_104637_create_shop_items_table', 1),
(19, '2020_05_23_104700_create_shop_items_opinions_table', 1),
(20, '2020_05_23_104731_create_subpages_table', 1),
(21, '2020_05_23_104748_create_trainers_table', 1),
(22, '2020_05_23_112712_create_blogs_table', 1),
(23, '2020_05_23_113716_create_shop_products_table', 1),
(24, '2020_05_23_113801_add_foreign_keys_to_shop_items', 1),
(25, '2020_07_01_155730_create_slider_table', 1),
(26, '2020_07_08_154907_create_media_table', 1),
(27, '2020_09_15_155623_add_category_column_to_news_table', 2),
(28, '2020_09_15_160027_add_tags_column_to_news_table', 3),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(32, '2016_06_01_000004_create_oauth_clients_table', 4),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(35, '2020_09_27_134628_add_photo_column_to_users_table', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `category`, `button_name`, `short_description`, `description`, `photo`, `photo_alt`, `banner_photo`, `banner_photo_alt`, `created_at`, `updated_at`, `tags`) VALUES
(4, 'Turniej amatorski 8-bil', 'Turniej', 'CZYTAJ WIĘCEJ', 'Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil. Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil', 'Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil. Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil\n\nLorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil. Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil\n\nLorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil. Lorem ipsum dolor sit, amet consectetur adipisicing, elit. Libero ex cumque eius perferendis, repellat quos, atque aperiam commodi perspiciatis natus minima doloribus porro sint nisi voluptatum praesentium vel labore nihil', '2020-09-15/2912522_1600184875.jpg', NULL, '2020-09-03/mlodzi_ludzie_1599145340.jpg', NULL, '2020-09-15 13:48:11', '2020-09-17 14:33:13', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00ee1dc71d34bcd4be0bfd21540ddae598373b01debea7c1fa4a1c93a24bfc26c0594660a0a2600c', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:13:46', '2020-10-03 14:13:46', '2021-10-03 16:13:46'),
('01ad40b5558ffcd8e57ae3e8bccdb8f5b6c8762b544bb3bcbd04101c0ab41cef53b2a4bed0afd37a', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:30:48', '2020-10-06 15:30:48', '2021-10-06 17:30:48'),
('022feee47618a159e42b957ffef00962a6e2d065efee9a6ed88894a0493a3aebe335eb9cecf177d7', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:55:08', '2020-10-03 12:55:08', '2021-10-03 14:55:08'),
('027e3e6e79b2ea1347163038b895c8d3a29173c01c86cacd0d17b358935fd06394a2577c52064017', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:51:49', '2020-09-27 10:51:49', '2021-09-27 12:51:49'),
('036512602bfc3085a6e107fe4551e1c5c05a2eb79d7741ddf17e6083defa70c965682e63cb6e1c2e', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:35:18', '2020-09-27 10:35:18', '2021-09-27 12:35:18'),
('03b6d97f94d415ffb98fe0f367132b4c1681459a5f52deeb9259521b3cedda5c95cbd2ddc183d119', 17, 1, 'authToken', '[]', 0, '2020-09-26 08:14:51', '2020-09-26 08:14:51', '2021-09-26 10:14:51'),
('04a0b9bd1dc017c333693bc4904a4ceb395bb9cfa9be7900b0cc7c7b542d6aed49a1b42aaa55018d', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:29:33', '2020-09-27 12:29:33', '2021-09-27 14:29:33'),
('05f8ef3e227338349cd710b985ffbb47504bc4ec2e18ae9a0489ce9b1bd771f53a756e219e9b3174', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:12:04', '2020-10-03 13:12:04', '2021-10-03 15:12:04'),
('0850500bd6acd312faff8e3c865e3b86a4c13457b5ccf451f8cd3098e14ff3350b4665859d385227', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:53', '2020-10-03 13:41:53', '2021-10-03 15:41:53'),
('0b4a33730cc6a775608cbbdfcd427085f438846dc3aed6549b11d4c00a32c6c0678ebaa15a1612c3', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:46:53', '2020-10-03 12:46:53', '2021-10-03 14:46:53'),
('0c516284c819f4a175e562c66781bb93dbca5dfbad33e5fc8726b14804be2eae9990d776b0d9e86f', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:17', '2020-10-03 13:10:17', '2021-10-03 15:10:17'),
('0cd6c41a09cab93aac87bcd992513e36a9024e18f66786b7e199e0b899dbee3da891cdf6f8d5206c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:47', '2020-10-05 16:54:47', '2021-10-05 18:54:47'),
('0cf8d8338a0a9a1d64c3d4292e963b4f3af44609f87f9f3de053bd004419157fb7f1939479ea029a', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:42:41', '2020-10-03 12:42:41', '2021-10-03 14:42:41'),
('0d4826660baf7e144dfb61c364178c827d2b2126e2a35a54830270f5b3dea17f0c0365014a13e4ff', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:17', '2020-10-03 14:27:17', '2021-10-03 16:27:17'),
('0da8f1de1bcac0c3ca6e0ee1fd3080f013d75454708999cc6b9a0fe8bf1e731b8bebf75b92ee3cc7', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:05', '2020-10-03 13:41:05', '2021-10-03 15:41:05'),
('0dd5249503cfd8efb8875af9a26cd389c78b93d171eeba57327b31a65e9b91228f6bc05ab425cea7', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:40:24', '2020-09-27 10:40:24', '2021-09-27 12:40:24'),
('0ee367628200b373e59a4c948c2c76fb9a0ff9cfeff3e846771fc1eecadeb9471a464e4acc340244', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:26:55', '2020-09-26 09:26:55', '2021-09-26 11:26:55'),
('1017611c457d8fda4764283ea7eade52a73088c6941ba79cc53037a7d416d9178a68f458fc7a5e79', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:48:32', '2020-10-03 12:48:32', '2021-10-03 14:48:32'),
('1240b2d4b428f19bb90329e6f72c6da6c169db4c71595c0a209d3c53dde38c607c9a87d39d232324', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:10:20', '2020-09-27 10:10:20', '2021-09-27 12:10:20'),
('146315ef4810a5274cbe76a53db7b836d3c2b6e7afa159c24935284a360e6db29d27dc933d2bd09f', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:43:35', '2020-10-03 11:43:35', '2021-10-03 13:43:35'),
('1472e6ffc025cc5d6496f681aff5454d478866e801e15fb47b6d3c1745e603991022f420b05b8441', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:53', '2020-10-03 14:16:53', '2021-10-03 16:16:53'),
('14b54412087f1bb8a124983ce2b45a49ebe526e160a79094ab792909f6489a26399b03851ec496cb', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:05:56', '2020-09-27 10:05:56', '2021-09-27 12:05:56'),
('1692fe688c033bae783f2195042e6b4fd6bd1d329e4c63f41857af2194923d8b04371793969eae38', 19, 1, 'authToken', '[]', 0, '2020-09-26 08:39:58', '2020-09-26 08:39:58', '2021-09-26 10:39:58'),
('16f1655b27d5294bf14de196a84aa66f1599f69676746ab244a6658f7ab82f1624834c1ebff91397', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:08:10', '2020-10-03 13:08:10', '2021-10-03 15:08:10'),
('16f32c2f731c39e302cc22718b45b4ad23a93441e8a829b55ce33020d2a5182e184a96f62ab5d32b', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:07:33', '2020-09-27 10:07:33', '2021-09-27 12:07:33'),
('19cb02a0a78e588c5fffcc2ba760b09a4c49b8a3883eeee4de6525edc6054eace7840971af44bb7f', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:56:18', '2020-10-03 11:56:18', '2021-10-03 13:56:18'),
('1c291dc17df54b6be345485ecb313e40f19526e918c97117a337ebfac8527fe87cde05fe5e4b1462', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:52:05', '2020-10-03 13:52:05', '2021-10-03 15:52:05'),
('1e9f324e8fcfa511622a9db8167e6defe1419b23124613aea956bc5b2e051b677b4d1204681fd08d', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:02:35', '2020-10-05 17:02:35', '2021-10-05 19:02:35'),
('211b8ddfa29fcf0c7467ee3188ec821ce72d1d723cef9ab3c51dff8cc6ef10528cfb9288cd265357', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:44', '2020-09-26 09:38:44', '2021-09-26 11:38:44'),
('23e004e6cd0cfb5000822e4293c4ed8254879f6a6a787fe2e1ef9a6d99115510467fdff7ab516949', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:10:38', '2020-09-27 10:10:38', '2021-09-27 12:10:38'),
('253a5502ecd9cbd24f50bb32f1318658dae5635a7a2942198d6262c4b29dedce1a2d2be91406df33', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:39:29', '2020-10-05 17:39:29', '2021-10-05 19:39:29'),
('25fcd85e9cec630b23d3db56714da78b6c3f53573c633a8ccb69305a025cb3b16d9616a649c13319', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:35:16', '2020-10-03 13:35:16', '2021-10-03 15:35:16'),
('264ecf98eaf4956a52fdd13302a4d8bc4296fd43101ce9cf96611d601128ba7460690d1cbc371779', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:25:48', '2020-10-03 13:25:48', '2021-10-03 15:25:48'),
('287766d659c3cfbb5fdda49793c3cc3f63334db2d8bfd15f9728178444baa472991d67df4e8f6be7', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:30:09', '2020-10-06 15:30:09', '2021-10-06 17:30:09'),
('2880ba1955e5a46274c351e1a54ca25a60aac0fdb0fbd38152c5cfc17bb401d77963617077a09cf7', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:00:10', '2020-10-03 13:00:10', '2021-10-03 15:00:10'),
('2943a5a5ec6455303b7b8ff3de2a6432b5b4d9687844889f01c6605db813b44ad66e87828a7ea863', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:09:49', '2020-09-27 10:09:49', '2021-09-27 12:09:49'),
('2a13c018a47313ca24c8d1cfaab720d002987c080fe64a17181a32969cf725df82ffdf55fb7c9abb', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:44:18', '2020-09-27 09:44:18', '2021-09-27 11:44:18'),
('2acb13e567c3235959b3be7b0aeea27314d4c6fc84cf6c3af99e2bd08e7bbd05a333c028308f6ce2', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:04:30', '2020-10-05 17:04:30', '2021-10-05 19:04:30'),
('2c535a374edc15061ec9d032669ba60346259cf1b7cf1f44378204700adc3a5e49a0a11eb9c2c022', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:38:31', '2020-10-03 11:38:31', '2021-10-03 13:38:31'),
('303ee5acc2ba552aa1a2ebed4b04fbc4cdd857987d0b32ddde25d7afe8f683de70e2a428ce431ece', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:24:10', '2020-10-03 13:24:10', '2021-10-03 15:24:10'),
('315da71269c730c3931255d90606be8f6a734181cab7f5991368ceae2839c6af0bd147404aa42be4', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:22', '2020-10-03 12:56:22', '2021-10-03 14:56:22'),
('31c8b1543cf46f75c16b3bbbd15f719bfb0d0e5cafc2daaff594405fc829c35f2550636b8b86cf14', 33, 1, 'authToken', '[]', 0, '2020-09-27 11:55:33', '2020-09-27 11:55:33', '2021-09-27 13:55:33'),
('31ccf40ece5e1733281c88b2392d97e93ebe1e8c0a36e3019e2b21dc4e12d3b40275f202ccd9ebc7', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:10:20', '2020-09-27 12:10:20', '2021-09-27 14:10:20'),
('31d430d9e1225cc69b3a344ada60252971bd89b7d171b49b9e48660771caa069aca715da2f3af4e5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:23', '2020-10-03 14:10:23', '2021-10-03 16:10:23'),
('324325067b8c36f2f00326c50724e827a7082c2becb385189b97464dbea324f3d14d8194ad23c751', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:53:00', '2020-10-03 12:53:00', '2021-10-03 14:53:00'),
('34074620e134e6d56cfbee967144305a1cc6bd6c45d2235715bf614509777a825ced7660574055ca', 12, 1, 'authToken', '[]', 0, '2020-09-26 08:00:16', '2020-09-26 08:00:16', '2021-09-26 10:00:16'),
('344aff6a5a1c39dbf4f2db4e6e8485323c5d1bfa5440d2918fc9adb390f45d58037dc5a3be253d4f', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:05', '2020-10-03 13:45:05', '2021-10-03 15:45:05'),
('35bac6e16df5b8635f98782b2cec1f58dfc52ee92b23b23befca5a42efa75175483882da9e6344d1', 9, 1, 'authToken', '[]', 0, '2020-09-26 07:45:14', '2020-09-26 07:45:14', '2021-09-26 09:45:14'),
('37eb8121089414c389d8b178d57c0911c59c5b0af676a1b97a64905ea9d7f26eecbc38d0dd0c8979', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:01:44', '2020-10-05 17:01:44', '2021-10-05 19:01:44'),
('38f0e928b147d31a7eee85995adee87071dd53ac3425635f5cb6e8edb0fcfc44241988afb7612ebf', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:36:55', '2020-10-05 17:36:55', '2021-10-05 19:36:55'),
('3917e0f65693ea1cbc9f5d8f109404a47db042e193c56ad1ee081bea9eaaf3da3152413a2b51f8a4', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:19:14', '2020-10-03 14:19:14', '2021-10-03 16:19:14'),
('3f2361762d83485d585a06ba4187f38e3a87e900995b2520947fa9310a1b895e007f467d6b34fa4b', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:52:41', '2020-10-05 16:52:41', '2021-10-05 18:52:41'),
('3f90b579d36167caf7e075c3d84758bb1a9e9f28582aa2891ad540d2ea1ee57787ae0e55b17ebca1', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:24:00', '2020-09-27 10:24:00', '2021-09-27 12:24:00'),
('3fa01de4151d3ac0c010980c4c478a5885699d93336f12ec55d4eccad3671f6147c88ac63e13d183', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:38:41', '2020-09-27 10:38:41', '2021-09-27 12:38:41'),
('411707da2191dd8d7bbe31e5599c73b439f2f7172310b33e8076803a9d2fbb8ce39781c16237c687', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:52:17', '2020-10-03 13:52:17', '2021-10-03 15:52:17'),
('41fe45f529c8ee339065b2a2e7d13fb4981afa820908d498f18cf48787f0d7e0e54e749cd02fdc76', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:11:05', '2020-09-27 10:11:05', '2021-09-27 12:11:05'),
('4230b2ca63bf955c097938f317852f90c14bb81e12145a1d3d231223967470f2eb5054a862bb4cca', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:17:04', '2020-10-03 13:17:04', '2021-10-03 15:17:04'),
('424a6d4d3830c6df0001a5def8e1f480fa91ab136101d540422fd5604178439f8113166ab30e2e67', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:09', '2020-10-03 12:56:09', '2021-10-03 14:56:09'),
('43efd7fb04d2d4ccd323145c7db93c3bba933a19f78332d2f4b8ebdca261091d235aede1f9102bc3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:43:06', '2020-10-05 17:43:06', '2021-10-05 19:43:06'),
('4431965a70c45b05281bf157a486606b776952bee9f510722b1e33e305a5979f063f93c5ff67c662', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:38:55', '2020-10-03 13:38:55', '2021-10-03 15:38:55'),
('48b84743943fab941aa0083433cf8dcc1513c604b0c85f727ca6e5c0aa3dc4ee1d4d8f9078852f03', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:36:23', '2020-10-03 14:36:23', '2021-10-03 16:36:23'),
('49c415fcf521b31aaae90d92f879a20bf24c672eb0ab1f2e5153d46f76c2d4a9e606c954a1c173bd', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:26:37', '2020-10-05 17:26:37', '2021-10-05 19:26:37'),
('4a59535fca0a9e7e3c522b897f78cefa20f85274fc9e0be6cfc9915fba527cb71902a6866e8df85e', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:40:01', '2020-10-05 16:40:01', '2021-10-05 18:40:01'),
('4bbf3cd3ae10740df6ab0f35f6aed54bb9859b05621897247f1e00e9dc2c649d5b786e5439d91bf3', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:37:38', '2020-10-03 14:37:38', '2021-10-03 16:37:38'),
('4f1250dec42f8d605ca2da746b0ce12e176d72a3d3c0e5252d9af559f889653672f94d088cef180c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:54:23', '2020-10-03 13:54:23', '2021-10-03 15:54:23'),
('4f355990bd6254043831bf415b90290f60298b914e82979a2c180e6658b411ec2f01dd2438752aa2', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:08:55', '2020-09-27 10:08:55', '2021-09-27 12:08:55'),
('50d1fdbc43ac9093e0e9c065f5e30fba695d37eb6fb2f4c27c1535242ff10b046e05949c89025585', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:11:41', '2020-10-03 14:11:41', '2021-10-03 16:11:41'),
('5107c81e672660f8a0dad8c317d8508015c10dbf546ae832dab598c537c71a1e382f61292738f568', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:44:20', '2020-10-05 16:44:20', '2021-10-05 18:44:20'),
('51168d9c2dcf6e7f819e50b6869785486cd642de7d061880ae89304c0e8a308c64a05c7100a501c5', 21, 1, 'authToken', '[]', 0, '2020-09-26 08:45:26', '2020-09-26 08:45:26', '2021-09-26 10:45:26'),
('5199e1745364748e621b8a08edaa739ab6876277c3d0514898cdab5d6bab90a90042a7a2ab9f6565', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:24:35', '2020-09-27 10:24:35', '2021-09-27 12:24:35'),
('51d1c8115ad4d9109f6a51bd84172b5b98a25fb108315ad5eb41ef9d35e47d0ee5278761c2463ef3', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:39:05', '2020-10-05 16:39:05', '2021-10-05 18:39:05'),
('5393d711b7ab9defa55869262cf673441f73034a07ffd168d956e0a3a16c8c603c3e1d764ef953b6', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:31:14', '2020-10-05 17:31:14', '2021-10-05 19:31:14'),
('5799a812dc1be2aee43e6057e04fea5b5237a05f60d714d086a66e0473b7daa1f5c7eb23600567ee', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:47:27', '2020-09-27 10:47:27', '2021-09-27 12:47:27'),
('591b645b05297a9e008bf7c2b8ce08a5f153240504c4f4950d1f78e14e933f9a8abe09610f214449', 22, 1, 'authToken', '[]', 0, '2020-09-27 05:47:12', '2020-09-27 05:47:12', '2021-09-27 07:47:12'),
('594c288eec468d0af0d4dbfaf2fa5746a57cd0439ffa3680a2cf6214b0c44535d80bfa925aba4a9f', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:36:57', '2020-10-05 16:36:57', '2021-10-05 18:36:57'),
('5a555cf27b84821e1745ec37c059b229abb2e69576819e62add23321672cc0e9cb26ff5f096ad38c', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:53:27', '2020-10-03 12:53:27', '2021-10-03 14:53:27'),
('5a9c12bf2d6f3ae6ddc5b0935d6a17e07bf73372af5de770e020506568b702ec4bd57f571d520e74', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:26', '2020-10-03 11:39:26', '2021-10-03 13:39:26'),
('5e3048663e5f919463c16cb07bc1637eb648a6f509184bbaff107959ee04cfe128fa1d57925a0d41', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:57:29', '2020-10-03 12:57:29', '2021-10-03 14:57:29'),
('622c0116c39980303648e91472f03b7267abe50861eb880ae4b17bfe4ccb8417f871071dcc55bd27', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:08:08', '2020-09-27 10:08:08', '2021-09-27 12:08:08'),
('62f7ffb42eab7d7a882bc6defab94582a38cd5f18bdd3d339c0890e2a549d747b1d7873b75b99ee6', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:27:26', '2020-10-06 15:27:26', '2021-10-06 17:27:26'),
('684fbb3855d8d5c6054660fc11d7b81558e67ebb29145646426f2aec7fb4c71926624f1a8e1b73b7', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:47:04', '2020-09-27 10:47:04', '2021-09-27 12:47:04'),
('6902ab1e7a62233f0ed96dc4296e5bb748de961b31ea24b5768661d16124d10e19866271839eae32', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:11:55', '2020-10-03 13:11:55', '2021-10-03 15:11:55'),
('69935a14d56f8eb9f74078550dbf753176736058baa21741c3cbebc7d3620b030b9c7edc5485842f', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:13:07', '2020-10-03 12:13:07', '2021-10-03 14:13:07'),
('6be1de142260631b2d65366cfd2fc03f623c7603cf2ef104770d9740df31b1830ad767536b22f93a', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:47:13', '2020-10-03 13:47:13', '2021-10-03 15:47:13'),
('6c7ecc5a0049644333572fd0155cc4e5ec72021be1d7898edcbcee3133491a57a84c32829358231f', 22, 1, 'authToken', '[]', 0, '2020-10-05 17:43:47', '2020-10-05 17:43:47', '2021-10-05 19:43:47'),
('6f61ed0731079b7aa880be86557b5701d9c084579c75468e74f4ffd5bd3366196a14c8c3bd15877b', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:59', '2020-10-03 13:10:59', '2021-10-03 15:10:59'),
('72cade2c9c3fe17ac8f2fa92d96ad8821afd305e3460a2b8b843cc4dcdba77afd563d1b01a94da82', 30, 1, 'authToken', '[]', 0, '2020-09-27 11:50:56', '2020-09-27 11:50:56', '2021-09-27 13:50:56'),
('72e5b194290d45719e8881cb71629ccc7431e7ca912c0f11d91d7e2014e9ac4d753fc50877774463', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:32:10', '2020-10-05 17:32:10', '2021-10-05 19:32:10'),
('73869e294bed5e5268e1dfd13e3805822cb9d84594598610dd0dbccd574517dcb5f727317b60a108', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:09:18', '2020-09-27 12:09:18', '2021-09-27 14:09:18'),
('779204fbca72dc823defcd477c718b32416a1987d4a3bf7c2fb96f9b76412bca00e6dae8a2d8c4a2', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:06:54', '2020-09-27 10:06:54', '2021-09-27 12:06:54'),
('77e3b6300a74d784baa0dae5c5f0adb498f73a93f640d24daa55fbaa13cfcf81a83280de54950bc5', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:46:25', '2020-09-27 09:46:25', '2021-09-27 11:46:25'),
('7872942ef79c4b67de74f79bc806d31a57f349ec06fb5dffb0aa341496636824cbde8136acde4107', 20, 1, 'authToken', '[]', 0, '2020-09-26 08:41:39', '2020-09-26 08:41:39', '2021-09-26 10:41:39'),
('7c63c65028a7b49e0b8fef9de6c57e113b48b31ecdcc35c4ef363335740455c849f8306c7272e07e', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:14:43', '2020-10-03 14:14:43', '2021-10-03 16:14:43'),
('7d42ed499080feae3345d009ae74d34245d1802833e68421dca5fe34b52ad7c41dbab1aa4ba71176', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:06:44', '2020-10-05 17:06:44', '2021-10-05 19:06:44'),
('7e1d622e7bf8071524732daa245a678099548b631c8e65017aa529e235af44886637689976142584', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:51:57', '2020-09-27 09:51:57', '2021-09-27 11:51:57'),
('7f2d58771b239a8a31ad3e98e8fec06fd933bedd41b6ae430ccd1f1b0f5b3087f8c10ee9fd6d3f81', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:43', '2020-10-03 13:13:43', '2021-10-03 15:13:43'),
('800fe1c91f38f618903236659106ee755c75baca0b11249803debead9e5fddf80e0d70412aadbe68', 27, 1, 'authToken', '[]', 0, '2020-09-27 11:01:43', '2020-09-27 11:01:43', '2021-09-27 13:01:43'),
('8025a309935832908f9807e0b3bfdbbb8a0a5af7e01de7ad321a4b0fad7ca70192ef9e5d29570f5c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:49', '2020-10-03 13:10:49', '2021-10-03 15:10:49'),
('83f976bfec44c4010567ea598137e4af38a48047e21ec4acdc50d17a01da0e014b30317cec5fe537', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:01:19', '2020-10-05 17:01:19', '2021-10-05 19:01:19'),
('83fddd659ea29be1efaafbe0584899797f9a8bccae35db58c19331bfcc2e5e79fe726f7473ed4452', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:34', '2020-10-03 13:41:34', '2021-10-03 15:41:34'),
('84f4400cd3b53616cfb36002a8d9b9b8380ee5c32da4e084d969c44237c326968950cff579848d59', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:53', '2020-09-26 09:38:53', '2021-09-26 11:38:53'),
('854fbf965c9b14c257e2d7813a3f44eb26c6350781d7f701dca9a43d80b861aca4a83f737221a9f5', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:29:50', '2020-10-05 17:29:50', '2021-10-05 19:29:50'),
('85e7759f0445720348f2257553e492a866d9ad657ba17b64933c3561242df1543a0a59e307ba66c3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:29', '2020-10-05 17:40:29', '2021-10-05 19:40:29'),
('865b8a8df83266e6639378b356c7ceacc8434b63b7d87ea336aa2cf309fdf6cba7d0a75412e79313', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:55', '2020-10-05 16:54:55', '2021-10-05 18:54:55'),
('866a683ca2052b464897e4559d054c1ea61f8bcf8b2b081a7670febc847ada3dab4acee517ed1650', 10, 1, 'authToken', '[]', 0, '2020-09-26 07:47:46', '2020-09-26 07:47:46', '2021-09-26 09:47:46'),
('86cc9294c9e099f76fa96ee514e113365dd5ee2f769b01cff9234aee3a2c45a3820c1a5773ae0ff0', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:17:04', '2020-09-27 09:17:04', '2021-09-27 11:17:04'),
('86f294b1d693ae240e18b420d350f8d9c06f0a0c8fafc8bd029f2219e01d5c504687b1c12838d1e5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:12:52', '2020-10-03 14:12:52', '2021-10-03 16:12:52'),
('88fed1954b365ee686e228bb5c42709eac815372a0093ed4ab21b0ebfcacb322fda5e4afcc37e81c', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:04:22', '2020-09-27 10:04:22', '2021-09-27 12:04:22'),
('8a42198b533729cbbef6c705d577fdd59de780ba329b39bb898ea4b6e0e229b5f616ec713938efd8', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:36:27', '2020-10-05 17:36:27', '2021-10-05 19:36:27'),
('8ad0befd77cb2cf21fdb18492fdc2f6ad2bd1f3be6bfb5e39b61132a542f99e494a9c9565b5b9978', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:09:28', '2020-09-27 10:09:28', '2021-09-27 12:09:28'),
('8d06a23cea118920fdc4eb9df9f16b9f6f72a2df3229a4e29f73ea60e8522134475f235eb5001735', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:14', '2020-10-03 12:54:14', '2021-10-03 14:54:14'),
('8da09f5eddccfb193c4e670969e09f4ae803795afe89693adda6da4472a2bda6be5ca6fb74b2febb', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:53', '2020-10-03 13:16:53', '2021-10-03 15:16:53'),
('8e5fd5735e7545bff7f94ff79506c7fe6bfe9a7fe2c50b7d2a72f476a620932a1291f5a238161046', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:20:32', '2020-10-06 15:20:32', '2021-10-06 17:20:32'),
('8eb0ee6fb58332891a9f649f2498b47f07ee0a8b9ec16760de67cee314ad3cd2e705fb40c629a386', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:55:29', '2020-10-03 12:55:29', '2021-10-03 14:55:29'),
('8f6c3c5fb090b07dd9a76e9b6a428010b9f1de91722ce7f1c9ef5299afd94c5e677fbe32a518586c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:47:54', '2020-10-05 16:47:54', '2021-10-05 18:47:54'),
('9393b95ff177ed194608b2e48e5f178222c5ea70aba6be0870c5624b0d250b099d543214d8c1d1bd', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:03', '2020-10-05 17:40:03', '2021-10-05 19:40:03'),
('945cb361d2f72495023e1c2dfdd50cd56c19e0228c7b13665cce9611e2e56657f40b1e0eec748ab1', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:18:29', '2020-10-03 13:18:29', '2021-10-03 15:18:29'),
('96a457b8fb22f50a0e662e06eb431bebf38e01dfd773cb36a9d9520d7fa8b29948f771787f50e889', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:49:31', '2020-09-27 10:49:31', '2021-09-27 12:49:31'),
('96a9db31f42394a0a662873623575339d7f8c2a54c82b891ef6b4c4c0f48655dda22a8f1b1a1f41c', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:52:16', '2020-09-27 10:52:16', '2021-09-27 12:52:16'),
('97066774790133d5c03c6bef60b01ece71a14692dcc7a0127376265bcf514a8c3106ea1cbea403bf', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:13', '2020-09-26 09:38:13', '2021-09-26 11:38:13'),
('9be3e80da84a4585c2f1178ced7be29b19279c8dda61b796f9d803a947e6ed20cc636e029bf52599', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:45', '2020-10-03 13:45:45', '2021-10-03 15:45:45'),
('9d65789d62065b556086ead2e77971846f2608e55c55a3b807d31a643bf89964b57ed6570273932d', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:57:49', '2020-10-05 16:57:49', '2021-10-05 18:57:49'),
('9e17af4474691f616fa84e13c076a9365f01d304ba4bc3db2cab65fc6b426eeab51b4181d3598960', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:43:22', '2020-10-03 11:43:22', '2021-10-03 13:43:22'),
('9eebd915fd1e9e240dea261e13367bc6f5d16b55ca3139119ab4a32ec2748843cd5efebfa34f98f9', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:52:02', '2020-10-03 12:52:02', '2021-10-03 14:52:02'),
('9f4c31abe5361634b3346d2f3c272fc808dadd9fc4e1d2c5b3b6afe8bcdec840218528ef7d9bdc7f', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:53', '2020-10-03 14:27:53', '2021-10-03 16:27:53'),
('a06bce57ea8e720f47e3f6f08a0cf67dc63b8abbd11a26c4f4e4f6d8042b7829e27aa4f20675c9fa', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:27', '2020-10-05 16:54:27', '2021-10-05 18:54:27'),
('a095b72dd2338665f8e342154421321514ea77b2d100de1b2b3e55957c48cacb7644641943c6bbdf', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:44:49', '2020-10-03 13:44:49', '2021-10-03 15:44:49'),
('a103f0b595628f1dc72af385b43cc3d6d7fccdc337e147edcb22cd8d3659d04b06b01533680fb425', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:22:55', '2020-10-03 14:22:55', '2021-10-03 16:22:55'),
('a1256b4651c994e23f996a08fe38692b6263f9c14b8794412488474658f9b75ed8c7fc078487cb38', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:13:17', '2020-10-03 14:13:17', '2021-10-03 16:13:17'),
('a1c4eaa81ac1a0fc4f0d5d5b6145e9b0956fd094c7a50cb0079bbda99edd8fa87196b6acd78162e5', 34, 1, 'authToken', '[]', 0, '2020-09-27 11:56:58', '2020-09-27 11:56:58', '2021-09-27 13:56:58'),
('a26786d1455791f195da5bd6113626803828e5dcbcb8950918149d031fd5af58a72a09056c17c2ed', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:11:29', '2020-09-27 10:11:29', '2021-09-27 12:11:29'),
('a47b22dc6467526d3b5ffac8b5b8888106b0ee9a8487b0d8781d158dcb2ddbf13aa9c4bfc2e34143', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:42:23', '2020-10-03 11:42:23', '2021-10-03 13:42:23'),
('a595df10c3fddc4e9f08b4cf2107b72cd5510e80c075e43814ccbba6bc3c530d1a284ab6b51cd26d', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:42:57', '2020-10-03 11:42:57', '2021-10-03 13:42:57'),
('a6b5ca043bcdc3bda64a3aa84e24866e8504fd90fc3cff0d3b9e3a5469908b44667cfa092883bbb6', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:39:17', '2020-09-26 09:39:17', '2021-09-26 11:39:17'),
('a6fb62e2b748a70847dcee9b449bba14a3361c0f9d297a1702755046f4c2555d0016c161d3725bf5', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:59:02', '2020-10-03 12:59:02', '2021-10-03 14:59:02'),
('a913a53b3ab3d0ef47ff486f9b6d1e547ac36065c4051617f177e4be2b954930ba0045497689f753', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:42:31', '2020-09-27 09:42:31', '2021-09-27 11:42:31'),
('aa4cf7aa268f0e9d49c1b94dcb1e6c4eaa0f40b50562a2242daa0026939293ec5f035c01407c7d5c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:22', '2020-10-03 13:10:22', '2021-10-03 15:10:22'),
('ad83682a5207e3dd1512eaf48bf18ae45e853515c29fe26bd7b3055914ecfad99e3610ccef1e5dbe', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:16', '2020-10-03 13:16:16', '2021-10-03 15:16:16'),
('b1b0e8583f08e127e2cbf08226e1b1230f884e562aea51f1014e1b62bd9810e8098e9a79c6053260', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:00:17', '2020-10-03 14:00:17', '2021-10-03 16:00:17'),
('b2aabaa42085b9cd980d17dace5dc2529a2aa1041da06651155d95b79b5234fa3904a1efa3f6ead1', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:31:37', '2020-10-05 17:31:37', '2021-10-05 19:31:37'),
('b2b877d16e154c8246516061cfc834900a80dfe8bb9e358625031a44eb88fc586164544e217e4ee5', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:47:38', '2020-10-03 11:47:38', '2021-10-03 13:47:38'),
('b34a10b9cf507eb53bda56f970a68f27627f2056a4278bcccfa08eba677c857be9a47e7baa2a3a16', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:14', '2020-10-03 11:39:14', '2021-10-03 13:39:14'),
('b400517703040a5c4c1b06a4b9078c3a1a0dd6216ac17c4bfc6813ed1dfd3cae1891baa43e4f6088', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:40:16', '2020-10-03 13:40:16', '2021-10-03 15:40:16'),
('b4daac13644d0f8b738c165567c9bae1e35307f164acf12ff08ec386f96974ef36095eac5136ebc1', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:32:56', '2020-09-27 09:32:56', '2021-09-27 11:32:56'),
('b5cca486702b806c59c375c2ef5f2e3fd0d19bf7ff55a0d07974539df3dabe6c2daeb88670583aee', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:05:23', '2020-09-27 10:05:23', '2021-09-27 12:05:23'),
('b69da09f1dec2f070657b5fab7dd3ec78d26641b4a356954bd050111d085b23eb5484018ef5c2068', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:44:51', '2020-09-27 09:44:51', '2021-09-27 11:44:51'),
('b804bc2753d3e2e0eae74a8ed663167a5f8f0b4641343f1cca86d6dd1d9c5f394368afba782a57dc', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:55:40', '2020-10-05 16:55:40', '2021-10-05 18:55:40'),
('b82e8471e797d15b80acc2a38b7cfd3e3845075949ddbbf826af627b5bedbb5e00f700aa7aaa69e9', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:15:14', '2020-10-05 17:15:14', '2021-10-05 19:15:14'),
('b84fe97a7fda5c0c031d03dd5fa873f90df01ba8676eaee134e1a6650a85f7e906b6b776ea5d1fbc', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:02', '2020-10-03 14:27:02', '2021-10-03 16:27:02'),
('b89f0af0c8b20f3a6d5ab30727019a152b1df6d5eefe0c6715d661435346cc3eacd27f518fe12e15', 29, 1, 'authToken', '[]', 0, '2020-09-27 11:41:42', '2020-09-27 11:41:42', '2021-09-27 13:41:42'),
('b8a47a312a7ec581ed32ce18eecf2066eca330c479a604c2ac839dda4f295d23c699312b887e0ed4', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:05:03', '2020-10-03 14:05:03', '2021-10-03 16:05:03'),
('b8a4a81a33df1fd0dcc3e94e114a4ec8344433392d95eaebbad31714d99bf9739fc754b1e8c10653', 32, 1, 'authToken', '[]', 0, '2020-09-27 11:55:09', '2020-09-27 11:55:09', '2021-09-27 13:55:09'),
('b9284b876763e54991b7ef7ce9447eec428fdd8b27f8ef257056bd09a96eb087704dcddae67c38fa', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:28:26', '2020-10-03 14:28:26', '2021-10-03 16:28:26'),
('bc2d4dd29c60a684b996f68eea2b617ef27e3621b52a3d04adee19e63a55e79f11a5225a8fdf136d', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:40', '2020-10-03 14:10:40', '2021-10-03 16:10:40'),
('bc73a5174e1983c1ce9f4754fcddcc5f257e72533235c290df892f4ad258a5b89bb7f40e88151ef7', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:51', '2020-10-05 17:40:51', '2021-10-05 19:40:51'),
('bcdc5def9c86b25d1417e59995023da54b0a3accb9950f84fcbf1ea95fec257516d5edb5bc3e98fa', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:25', '2020-10-03 12:54:25', '2021-10-03 14:54:25'),
('bcf439c577f5957f73a93f0a10c562d6f001e65c30a242f57650b14a14f8db79f1d39df9442d30e0', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:50:48', '2020-10-03 13:50:48', '2021-10-03 15:50:48'),
('befc2e682b48f669c162034cbbf867db4c1f9f902d5c52abaca4d782f598a075c7268e7d688636da', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:00:33', '2020-10-05 17:00:33', '2021-10-05 19:00:33'),
('bf5f8ea61e1755ee1393b832cf518166ca3ccd1eec7490f09edcb77dd03bee0383715f6c8eee8c9b', 11, 1, 'authToken', '[]', 0, '2020-09-26 07:49:41', '2020-09-26 07:49:41', '2021-09-26 09:49:41'),
('c38b367f3f7e3d33e07be4f6d751ec332c5d7ef6b08e63608831b4d687822570b4920b8e0adb4c34', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:26:54', '2020-09-27 09:26:54', '2021-09-27 11:26:54'),
('c3dbc5a6dcaa017c6da95e03f5a9d8d294c21b88e8674712b39c98ba9485504ebe8169403864bb3c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:43:57', '2020-10-05 16:43:57', '2021-10-05 18:43:57'),
('c55dbd1d6bca197bdb24734eb94052659698b8651fa948af79e3a6b65ec56fca74a2f4408a915c62', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:14:02', '2020-10-03 12:14:02', '2021-10-03 14:14:02'),
('c7006c5acb1c6d41cf941adedd9aa9fa654b7fa752988db72eb7671c38187aa85980874da4978453', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:34:59', '2020-10-03 13:34:59', '2021-10-03 15:34:59'),
('cab2df1a715e710b13e5d538c8ba000f56dc3aefa7e3128180347312a0436594b91ffdb51dbbb9bc', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:24:06', '2020-10-06 15:24:06', '2021-10-06 17:24:06'),
('cb35e7862d3727eea44f6a1fe5ed6c0acc3d4f0764612cd495082812adce9679be8a966fc974edea', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:39', '2020-10-03 12:56:39', '2021-10-03 14:56:39'),
('cba963a9dcba56127c6cd9b05a9dfb6ab6b5ea4938cff5427557e334209f920797454b06c81be0a1', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:47:35', '2020-10-03 12:47:35', '2021-10-03 14:47:35'),
('ce37ea9d5df439475f720db53a9d619b4abfa9e68667b35b76d23ba3cbca19d388800310c4d0bff5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:34', '2020-10-03 14:16:34', '2021-10-03 16:16:34'),
('d0f3eb6d57913bd623811b57ddff18ec3564bd402f7c54a8ccf1ea53f09d577395f8ad9c45d6f980', 8, 1, 'authToken', '[]', 0, '2020-09-26 07:44:30', '2020-09-26 07:44:30', '2021-09-26 09:44:30'),
('d2509ee036a754389c8d1d51eb5e66f2fdd9e8e44c46721edc3657422e0f25ee57a9ce91f7058b02', 31, 1, 'authToken', '[]', 0, '2020-09-27 11:52:04', '2020-09-27 11:52:04', '2021-09-27 13:52:04'),
('d4c123f58de67e0401aad7886fed6e6c7f774f7b7a7a4e38f42da776880a8591f8bf61b7fbd3f25f', 14, 1, 'authToken', '[]', 0, '2020-09-26 08:03:09', '2020-09-26 08:03:09', '2021-09-26 10:03:09'),
('d64852bca137cb3b5a0cc88e6d5bc45fcdf9366fd7faff8a60fe35418ae8f509be4a04efdfaaafde', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:35:38', '2020-10-03 11:35:38', '2021-10-03 13:35:38'),
('d6d57f0520a803a4a97423f02bcb3b5e9d8b7fa7d5a70a49c5ae5b95237b44a0163451d94ba39163', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:31', '2020-10-03 13:13:31', '2021-10-03 15:13:31'),
('d7117c67e70388a5f0ff87505613c7b051ce22f6d98846d3ed50e2836e6f2671c8cc5a031f0f52e3', 32, 1, 'authToken', '[]', 0, '2020-09-27 11:54:23', '2020-09-27 11:54:23', '2021-09-27 13:54:23'),
('d7e8182b546ecd03dbd4e54f6f8078f2afbe758df54676aa77f1f950429a2ba33f30f786950b164b', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:16:31', '2020-09-27 09:16:31', '2021-09-27 11:16:31'),
('d8c4832e33d5123f7d1ea1092f8e0f7786aa58459f4ed70e55a99c667ee64b061426f1fc16fda2cb', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:41:56', '2020-10-03 11:41:56', '2021-10-03 13:41:56'),
('d8c7a3518a411b640c37076883d8af2fa30ece2fb29cf6c07e802d9385285f707802c0a1f20f236a', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:04:40', '2020-10-03 14:04:40', '2021-10-03 16:04:40'),
('d9a295c2b050e60badb28d4fd3902aabfe3b6a17d418aad322ffefefffd82c2ee057477a95e11dc2', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:06', '2020-10-05 16:54:06', '2021-10-05 18:54:06'),
('d9ecb4a0010eebd5c42606ed7aa5c8b75b8eb06cb310850daf4f294a9f11c47909e6f7017a036300', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:38:17', '2020-10-05 17:38:17', '2021-10-05 19:38:17'),
('daec71a729f1c08f466402adcd5ee0c6dffbb2caa3cc9645ee4b73384fbd0cdc7ba14e22afcff1bb', 2, 1, 'authToken', '[]', 0, '2020-09-23 15:24:30', '2020-09-23 15:24:30', '2021-09-23 17:24:30'),
('db7c5708056f053464a9305fe82f11971e6c52e03229bf0104b416034426e72ca2b5335e566b75c6', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:56', '2020-10-03 13:45:56', '2021-10-03 15:45:56'),
('dba3f7a50ba905271c853e6bce1f1de69803cebd8df149e4b3939ec7f72b724c54bd3f977e4a0c9e', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:44', '2020-10-03 13:41:44', '2021-10-03 15:41:44'),
('dd4b90c164de144f36a62e87d048cf9864af4dda2a46bc8a7b72e13b0f863b5fb882eb924f9cdcc2', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:15:58', '2020-09-27 09:15:58', '2021-09-27 11:15:58'),
('ddad3478aa901a57e3847826d14ae7353e6bbb4f2ba45e07e9877af6d3a06f08dc97dd193f36c4bf', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:37:54', '2020-09-26 09:37:54', '2021-09-26 11:37:54'),
('de4dff6d31a31a3aad28c92e608438cb03095e53a7768d86d8cb7ac1ab35fe1fccaba12df1828a88', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:04', '2020-10-03 12:54:04', '2021-10-03 14:54:04'),
('dee0e96343d54f4ffabff3c8fd0faaf2de6d65d52f23f899ee61f917007f893025ff959019589d8f', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:20:31', '2020-09-27 10:20:31', '2021-09-27 12:20:31'),
('e0bb1fbe0d5d6d6b26795791662969e3a3ec995d2505bc50f0c1804b5af37ba4413c28668f915f3a', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:42:23', '2020-10-05 16:42:23', '2021-10-05 18:42:23'),
('e1ca27394a1ba7f50b212f9511731701451d978a35efd2fe5597bf3433904a9faea689475b674853', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:11:21', '2020-10-03 14:11:21', '2021-10-03 16:11:21'),
('e2b5eea4f5e1087434bd4fbac859a7cd3c826b5944830bd3a8beb35666039f06075f196d6be6e604', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:38:26', '2020-10-05 17:38:26', '2021-10-05 19:38:26'),
('e422541038ea1bd86ce491268e475c04a3d185b6e6adad7e4e58a233e70dd78ad3e89b71a95def28', 15, 1, 'authToken', '[]', 0, '2020-09-26 08:04:16', '2020-09-26 08:04:16', '2021-09-26 10:04:16'),
('e928f935c01243ffbd2daa339365ad024cb3fb930ca8c8e887f3409549e585ca90e217c2c89c6a29', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:17', '2020-10-03 13:13:17', '2021-10-03 15:13:17'),
('eb3aea24641202430ef83cd0b6aa5dffc41ba1fc51865d31660e22cc61f0c79e67d66f85d0591e1f', 13, 1, 'authToken', '[]', 0, '2020-09-26 08:02:51', '2020-09-26 08:02:51', '2021-09-26 10:02:51'),
('eb68a63066821e5e400704a25871db396228289a7c2b9e6d4d45e63ee8f3eb8d3e39bd0c25c07364', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:39:37', '2020-10-03 13:39:37', '2021-10-03 15:39:37'),
('ed5cbf4eff3384754a828c601fd53c7db8d61c3b84fb3a4e6f15e136a84d29db47ae1b567b4c7726', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:32:40', '2020-10-03 13:32:40', '2021-10-03 15:32:40'),
('ed797b349824459c1116c974311d28c788cca7cda91fec5cd8eeca183937d0c0acefcab75333ddc5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:05:39', '2020-10-03 14:05:39', '2021-10-03 16:05:39'),
('ee7d4869f1d23a0bdb5afd10d84352ba949a88346a497d55da760812e9efeee3ab016fbcdfea8354', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:50:10', '2020-10-03 13:50:10', '2021-10-03 15:50:10'),
('ee913cbdab0d8542b6050845dc023660b4a5717366566c2fd217d9b54b08ff4be0df7e8307b0f8ea', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:07:22', '2020-10-05 17:07:22', '2021-10-05 19:07:22'),
('ee9d3a2a2fa7c4b4d165180d5173e6e077d949cc6beace6758ad14a8537d94036c42d4446a3d368a', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:35:55', '2020-10-03 13:35:55', '2021-10-03 15:35:55'),
('eecd7c25c03b3d63f174b08372ac492e2d3e7e703f5ac64396d1776383f6087ecd75c51b69b42cb3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:27:55', '2020-10-05 17:27:55', '2021-10-05 19:27:55'),
('ef635d5cde4df5ece0fee7523adb929028063b1b2669c9895bad6f1545132ea75b708f59976243b2', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:45:29', '2020-10-03 12:45:29', '2021-10-03 14:45:29'),
('f34c4faf5ce83b304264ffbbcb7be40d8b8aba7bd4d33bd4febe5f810203a43f0295eb3259b79d96', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:53', '2020-10-03 14:10:53', '2021-10-03 16:10:53'),
('f36d23ac0baf77237cd30937e196aa890a06975378429c0107fed322156a9101baa73723130a6667', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:41', '2020-10-03 11:39:41', '2021-10-03 13:39:41'),
('f479348b16f7a554ef7046587b9009d321a9d4ba3213dfd56270fdd18d660bed8546619d6212c5fa', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:18:57', '2020-09-27 10:18:57', '2021-09-27 12:18:57'),
('f57bd93ca49e55408a9a8c3a914f6d4d2e2528fa5a7145a0782c74494b0cce48ac5ecc781f03f4a2', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:01:57', '2020-10-03 13:01:57', '2021-10-03 15:01:57'),
('f71d8c8915b47d15bfca3ea836e322eaa0e8b25f0af45a42e6ccb2fec1c0f1029cc55ee7f36f758e', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:24:32', '2020-10-03 13:24:32', '2021-10-03 15:24:32'),
('f8a93a0a94d1acc56d7c5317c85e1f52ad95f871847d31e239cb015a63dceba381199e39a37f590b', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:38:23', '2020-10-03 14:38:23', '2021-10-03 16:38:23'),
('f92b7a50ee61e53a8dfdd99a1519a36254502c656bc0b523e6cff2d37ab5b02092a427acdd542a8e', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:35', '2020-10-03 14:10:35', '2021-10-03 16:10:35'),
('f9c000daa1d033616bf794e5bd40aac08a09eef923ed4393068b2a2c56b352a9086a52af7a41b262', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:12:42', '2020-10-03 13:12:42', '2021-10-03 15:12:42'),
('fedc1a5a0f8b4efc4d05d9ab57861656aa36af137ab54d6fcd4fb0333848b7d782edef14358630c5', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:27', '2020-10-03 13:16:27', '2021-10-03 15:16:27'),
('ff2b8e4ad256287c021b389b287170585fc71bedfdb0a972cad9d8d587aa14c826ff708a7a980513', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:09', '2020-10-03 14:16:09', '2021-10-03 16:16:09'),
('ff5b3192a4aa409caf3ec13f30be0b0ea01a7a616112845c601ab3b107dd902f483a89f9e0941eaa', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:36:38', '2020-09-27 10:36:38', '2021-09-27 12:36:38'),
('ff847a6e32320163d2b9f7aa45e30aa7f566211df07ad74a5961598990e69f3096974d5bd18d9b43', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:40:42', '2020-10-05 16:40:42', '2021-10-05 18:40:42'),
('ffbcbc2b687cfb6e9af084de5dd47a1c383a35da808ff391592e0ae7d4555183b13999af9d35adec', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:37:54', '2020-10-03 14:37:54', '2021-10-03 16:37:54');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
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
-- Zrzut danych tabeli `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'UGN00a5Oo0ezfIvJmUCFHd8N0cGgbfX2x3HpnBar', 'http://localhost', 1, 0, 0, '2020-09-23 13:48:38', '2020-09-23 13:48:38'),
(2, NULL, 'Laravel Password Grant Client', '2rcCMRBg7dxhY9FoTIU0EAZi1lQ7r4JgLikc7Mnb', 'http://localhost', 0, 1, 0, '2020-09-23 13:48:38', '2020-09-23 13:48:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-23 13:48:38', '2020-09-23 13:48:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `offers`
--

INSERT INTO `offers` (`id`, `title`, `subtitle`, `short_description`, `description`, `photo`, `photo_alt`, `banner_photo`, `banner_photo_alt`, `created_at`, `updated_at`) VALUES
(1, 'Bilard', 'Wysoka jakość stołów bilardowych', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', '2020-09-12/bilard_1599903006.jpg', 'bilard', NULL, NULL, '2020-09-12 07:27:44', '2020-09-12 07:39:31'),
(2, 'Tenis Stołowy', 'Stół do gry amatorskiej jak i profesjonalnej', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', '2020-09-12/ping_pong_1599903239.jpg', NULL, NULL, NULL, '2020-09-12 07:34:11', '2020-09-12 07:34:11'),
(3, 'Darty', 'Maszyna do gry w rzutki', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', '2020-09-12/rzutki_1599906429.jpg', NULL, NULL, NULL, '2020-09-12 08:27:18', '2020-09-12 08:27:18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `league` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pool_history`
--

CREATE TABLE `pool_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `price_list`
--

CREATE TABLE `price_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry` datetime DEFAULT NULL,
  `leave` datetime DEFAULT NULL,
  `earnings` int(11) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rodo_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rodo_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_site_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privace_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_items`
--

CREATE TABLE `shop_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `brand` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opinion` int(11) DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_items_opinions`
--

CREATE TABLE `shop_items_opinions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `opinion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_products`
--

CREATE TABLE `shop_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `slider`
--

INSERT INTO `slider` (`id`, `title`, `subtitle`, `photo`, `photo_alt`, `created_at`, `updated_at`) VALUES
(24, 'Bilard', 'Oferujemy wysokiej jakości stoły bilardowe', '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'bilard', '2020-09-03 13:02:33', '2020-09-12 07:38:42'),
(25, 'Tenis stołowy', 'Posiadamy także stół do tenisa stołowego', '2020-09-03/tenis_stolowy_1599145342.jpg', 'tenis stołowy', '2020-09-03 13:02:55', '2020-09-12 07:38:59'),
(26, 'Dart', 'W ofercie także maszyna do gry w Dart', '2020-09-03/dart_1599145340.jpg', 'dart', '2020-09-03 13:03:14', '2020-09-12 07:39:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subpages`
--

CREATE TABLE `subpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(22, 'Daniel Lewicki', 'dany979712@gmail.com', NULL, '$2y$10$spp8yZ594vI9khPfxGW.ee2zZy2c0EczRMtUZZsflHZXqIn/RkkK.', 'Zawodnik', NULL, '2020-09-26 09:26:55', '2020-09-26 09:26:55', NULL),
(27, 'Daniel Lxwy Lewicki', 'dany97971@gmail.com', '2020-09-27 08:46:39', '$2y$10$GXOdulvtf7XWaOsTbyVorORn6LF1Sj7YB9c1pM9prEwU7Rg/H1AO.', 'Zawodnik', 'EfTdygXp8YPcbmUqfAtt3tZ9NCbCaVoqGgst8CLhc7xpPY8TVBH4II79jqNb', '2020-09-27 08:46:39', '2020-09-27 08:46:39', '2020-09-03/klub_1599149969.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cups`
--
ALTER TABLE `cups`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `live_broadcasts`
--
ALTER TABLE `live_broadcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeksy dla tabeli `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeksy dla tabeli `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `pool_history`
--
ALTER TABLE `pool_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_items_category_id_foreign` (`category_id`),
  ADD KEY `shop_items_product_id_foreign` (`product_id`);

--
-- Indeksy dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_items_opinions_item_id_foreign` (`item_id`),
  ADD KEY `shop_items_opinions_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_products_category_id_foreign` (`category_id`);

--
-- Indeksy dla tabeli `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `subpages`
--
ALTER TABLE `subpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainers_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cups`
--
ALTER TABLE `cups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `live_broadcasts`
--
ALTER TABLE `live_broadcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pool_history`
--
ALTER TABLE `pool_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `subpages`
--
ALTER TABLE `subpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  ADD CONSTRAINT `shop_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  ADD CONSTRAINT `shop_items_opinions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `shop_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_items_opinions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `trainers`
--
ALTER TABLE `trainers`
  ADD CONSTRAINT `trainers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
