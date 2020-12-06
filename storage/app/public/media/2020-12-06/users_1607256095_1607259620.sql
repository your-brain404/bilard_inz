-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Gru 2020, 17:40
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
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `blocked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`, `photo`, `active`, `blocked`) VALUES
(27, 'Daniel Lewicki', 'dany97971@gmail.com', '2020-09-27 08:46:39', '$2y$10$GXOdulvtf7XWaOsTbyVorORn6LF1Sj7YB9c1pM9prEwU7Rg/H1AO.', 'Moderator', 'EfTdygXp8YPcbmUqfAtt3tZ9NCbCaVoqGgst8CLhc7xpPY8TVBH4II79jqNb', '2020-09-27 08:46:39', '2020-10-29 11:11:08', '2020-10-29/8779_1603969867.png', 1, 0),
(36, 'Daniel adw', 'd.lewicki@adawards.pl', NULL, '$2y$10$JiHCfBItfs242f/5JCY1Re0rssx2l0KicahUzLxVXusU1IZeo/ouy', 'Klient', NULL, '2020-10-29 09:15:19', '2020-10-30 11:27:43', NULL, 1, 0),
(37, 'd lewicki97', 'd.lewicki97@gmail.com', NULL, '$2y$10$Cx5J5UXtLf8g1w.K4kqnwubs50gIqALLfF36ebaX3ui803pN3NJY6', 'Klient', NULL, '2020-10-30 11:24:15', '2020-10-30 11:24:34', NULL, 1, 0),
(38, 'student daniel', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', NULL, '$2y$10$pfuWtbl9aMOrmTXh4oY/zeGO2wou4DToQXs22Ty50/iYaKkv7WypW', 'Klient', NULL, '2020-10-30 11:25:23', '2020-10-30 11:25:51', NULL, 1, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
